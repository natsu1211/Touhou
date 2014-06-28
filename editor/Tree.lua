Tree={data={},watch={},imageIndex={}}

function Tree.Children(TreeCtrl,Node)
	local n=TreeCtrl:GetChildrenCount(Node,false)
	local i=1
	local CurNode
	local First=true
	return function()
		if i>n then return nil end
		if First then CurNode=TreeCtrl:GetFirstChild(Node) First=false
		else CurNode=TreeCtrl:GetNextSibling(CurNode) end
		i=i+1
		return CurNode
	end
end

function Tree.Data2Ctrl(TreeCtrl,Parent,pos,Data)
	local ret=TreeCtrl:InsertItem(Parent,pos,"",Tree.imageIndex[Data.type])
	Tree.data[ret:GetValue()]={['type']=Data.type,attr={}}
	for i=1,#(nodeType[Data.type]) do
		Tree.data[ret:GetValue()].attr[i]=Data.attr[i] or nodeType[Data.type][i][4] or enumType[nodeType[Data.type][i][2]][1] or ''
	end
	TreeCtrl:SetItemText(ret,(nodeType[Data.type].totext)(Tree.data[ret:GetValue()]))
	if nodeType[Data.type].watch then Tree.watch[nodeType[Data.type].watch][ret:GetValue()]=true end
	if Data.child then
		for i=1,#Data.child do
			Tree.Data2Ctrl(TreeCtrl,ret,-1,Data.child[i])
		end
	end
	if Data.expand then TreeCtrl:Expand(ret) end
	if Data.select then TreeCtrl:SelectItem(ret) end
	local color=nodeColor[Data.type]
	if color then
		TreeCtrl:SetItemTextColour(ret,wx.wxColour(color[1],color[2],color[3],color[4]))
		if color[5] then TreeCtrl:SetItemBold(ret) end
	end
	return ret
end

function Tree.Ctrl2Data(TreeCtrl,Node)
	local ret={['type']=Tree.data[Node:GetValue()]['type'],attr={},expand=TreeCtrl:IsExpanded(Node),child={}}
	if TreeCtrl:IsSelected(Node) then ret.select=true end
	for i=1,#(Tree.data[Node:GetValue()].attr) do
		ret.attr[i]=Tree.data[Node:GetValue()].attr[i]
	end
	for CurNode in Tree.Children(TreeCtrl,Node) do
		table.insert(ret.child,Tree.Ctrl2Data(TreeCtrl,CurNode))
	end
	return ret
end

function Tree.Clone(Node)
	if type(Node)~='table' then return Node
	else
		local ret={}
		for k,v in pairs(Node) do ret[k]=Tree.Clone(v) end
		return ret
	end
end

function Tree.Serialize (o,tab)
	tab=tab or 0
	if type(o)=='number' then
		return tostring(o)
	elseif type(o)=='string' then
		return string.format('%q',o)
	elseif type(o)=='boolean' then
		return tostring(o)
	elseif type(o)=='nil' then
		return 'nil'
	elseif type(o)=='table' then
		local r='{\n'
		for k,v in pairs(o) do
			if type(k)=='number' then k='['..k..']'
			elseif type(k)=='string' then k=string.format('[%q]',k)
			else error('cannot serialize a ' .. type(k)..' key')
			end
			r=r..string.rep('\t',tab+1)..k..'='..Tree.Serialize(v,tab+1)..',\n'
		end
		return r..string.rep('\t',tab)..'}'
	else
		error('cannot serialize a ' .. type(o))
	end
end

function Tree.DeSerialize(s)
	return assert(loadstring('return '..s))()
end
