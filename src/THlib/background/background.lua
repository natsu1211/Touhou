background=Class(object)

function background:init(is_sc_bg)
	self.group=GROUP_GHOST
	if is_sc_bg then
		self.layer=LAYER_BG
		self.alpha=0
	else
		self.layer=LAYER_BG-0.1
		self.alpha=1
		lstg.tmpvar.bg=self
	end
end

function background:render()
	SetViewMode'world'
	RenderClear(Color(0x00000000))
end

camera_setter=Class(object)

function camera_setter:init()
	self.hide=true
	self.group=GROUP_GHOST
end

function camera_setter:frame()
	if KeyIsDown'shoot' then
		if KeyIsDown'up'    then lstg.view3d.eye[3]=lstg.view3d.eye[3]+0.01 end
		if KeyIsDown'down'  then lstg.view3d.eye[3]=lstg.view3d.eye[3]-0.01 end
	elseif KeyIsDown'spell' then
	
	else
		if KeyIsDown'up'    then lstg.view3d.eye[2]=lstg.view3d.eye[2]+0.01 end
		if KeyIsDown'down'  then lstg.view3d.eye[2]=lstg.view3d.eye[2]-0.01 end
		if KeyIsDown'left'  then lstg.view3d.eye[1]=lstg.view3d.eye[1]+0.01 end
		if KeyIsDown'right' then lstg.view3d.eye[1]=lstg.view3d.eye[1]-0.01 end
	end
	if KeyIsPressed'special' then print(string.format('Set3D(\'eye\',%f,%f,%f)',lstg.view3d.eye[1],lstg.view3d.eye[2],lstg.view3d.eye[3])) end
end

Include'THlib\\background\\bamboo\\bamboo.lua'
Include'THlib\\background\\magic_forest\\magic_forest.lua'
Include'THlib\\background\\temple\\temple.lua'
Include'THlib\\background\\misty_lake\\misty_lake.lua'
Include'THlib\\background\\scarlet_mansion\\scarlet_mansion.lua'
Include'THlib\\background\\gate\\gate.lua'
Include'THlib\\background\\spellcard\\spellcard.lua'