scarlet_mansion_background=Class(object)

function scarlet_mansion_background:init()
	--
	background.init(self,false)
	--resource
	LoadImageFromFile('scarlet_mansion_ground','THlib\\background\\scarlet_mansion\\ground.png')
	LoadImageFromFile('scarlet_mansion_dec1','THlib\\background\\scarlet_mansion\\dec1.png')
	LoadImageFromFile('scarlet_mansion_dec2','THlib\\background\\scarlet_mansion\\dec2.png')
	--set 3d camera and fog
	Set3D('eye',0.1,2.5,-4)
	Set3D('at',0,0,0)
	Set3D('up',-0.05,0.5,0)
	Set3D('z',1,10)
	Set3D('fovy',0.6)
	Set3D('fog',2,10,Color(0xFF000000))
	--
	self.speed=0.005
	self.z=0
end

function scarlet_mansion_background:frame()
	self.z=self.z+self.speed
end

function scarlet_mansion_background:render()
	SetViewMode'3d'
	for j=0,4 do
		local dz=j*2-math.mod(self.z,2)
		Render4V('scarlet_mansion_ground', 1,0,dz, 3,0,dz, 3,0,-2+dz, 1,0,-2+dz)
		Render4V('scarlet_mansion_ground',-1,0,dz,-3,0,dz,-3,0,-2+dz,-1,0,-2+dz)
		Render4V('scarlet_mansion_ground',-1,0,dz, 1,0,dz, 1,0,-2+dz,-1,0,-2+dz)
	end
	for k=-4,12 do
		local dz=k/2-math.mod(self.z,0.5)
		Render4V('scarlet_mansion_dec1', -1.5,0,dz, -1,0,dz, -1,0,-0.5+dz, -1.5,0,-0.5+dz)
	end
	for k=-2,4 do
		local dz=k*2-math.mod(self.z,2)
		Render4V('scarlet_mansion_dec2', 0.25,0,dz, 1.75,0,dz, 1.75,0,-1.5+dz, 0.25,0,-1.5+dz)
	end
	SetViewMode'world'
end

