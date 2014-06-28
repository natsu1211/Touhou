_spellcard_background=Class(background)
function _spellcard_background:init()
	background.init(self,true)
	self.layers={}
end
function _spellcard_background:AddLayer(img,tile,x,y,rot,vx,vy,omiga,blend,hscale,vscale,init,frame)
	table.insert(self.layers,{img=img,tile=tile,x=x,y=y,rot=rot,vx=vx,vy=vy,omiga=omiga,blend=blend,a=255,r=255,g=255,b=255,frame=frame,timer=0,hscale=hscale,vscale=vscale})
	if init then init(self.layers[#self.layers]) end
end
function _spellcard_background:frame()
	for _,l in ipairs(self.layers) do
		l.x=l.x+l.vx
		l.y=l.y+l.vy
		l.rot=l.rot+l.omiga
		l.timer=l.timer+1
		if l.frame then l.frame(l) end
	end
end
function _spellcard_background:render()
	SetViewMode'world'
	for i=#(self.layers),1,-1 do
		local l=self.layers[i]
		SetImageState(l.img,l.blend,Color(l.a*self.alpha,l.r,l.g,l.b))
		if l.tile then
			local w,h=GetTextureSize(l.img)
			for i=-int((208+l.x)/w+0.5),int((208-l.x)/w+0.5) do
				for j=-int((240+l.y)/h+0.5),int((240-l.y)/h+0.5) do
					Render(l.img,l.x+i*w,l.y+j*h)
				end
			end
		else
			Render(l.img,l.x,l.y,l.rot,l.hscale,l.vscale)
		end
	end
end

LoadImageFromFile("_scbg","THlib\\background\\spellcard\\background.png",true,0,0,false)
LoadImageFromFile("_scbg_mask","THlib\\background\\spellcard\\mask.png",true,0,0,false)
spellcard_background=Class(_spellcard_background)
spellcard_background.init=function(self)
    _spellcard_background.init(self)
    _spellcard_background.AddLayer(self,"_scbg_mask",true,0,0,0,1,1,0,"",1,1,nil,nil)
    _spellcard_background.AddLayer(self,"_scbg",false,0,0,0,0,0,0,"",1,1,nil,nil)
end