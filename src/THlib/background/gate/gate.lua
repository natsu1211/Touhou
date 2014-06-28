gate_background=Class(object)

function gate_background:init()
	--
	background.init(self,false)
	--resource
	LoadImageFromFile('ground','THlib\\background\\gate\\ground.png')
	--set 3d camera and fog
	Set3D('eye',0,2.5,-4)
	Set3D('at',0,0,0)
	Set3D('z',1,10)
	Set3D('fovy',0.6)
	Set3D('fog',5,10,Color(0xFFC0C0C0))
	--
	self.speed=0.02
	self.z=0
end

function gate_background:frame()
	self.z=self.z+self.speed
end

function gate_background:render()
	SetViewMode'3d'
	for j=0,4 do
		local dz=j*2-math.mod(self.z,2)
		Render4V('ground', 0.5,0,dz, 2.5,0,dz, 2.5,0,-2+dz, 0.5,0,-2+dz)
		Render4V('ground',-0.5,0,dz,-2.5,0,dz,-2.5,0,-2+dz,-0.5,0,-2+dz)
		Render4V('ground',-1,0,dz,1,0,dz,1,0,-2+dz,-1,0,-2+dz)
	end
	SetViewMode'world'
end