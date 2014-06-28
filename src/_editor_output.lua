-- 2013.01 Created
-- Mod name: TouHou_Infinite_Dream
_author="mnkjoilhk"
_mod_version=30
_allow_practice=true
_allow_sc_practice=true

_LoadImageFromFile('image:'.."reimu_face_1","reimu_face_1.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_2","reimu_face_2.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_3","reimu_face_3.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_4","reimu_face_4.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_5","reimu_face_5.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_6","reimu_face_6.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_7","reimu_face_7.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."reimu_face_8","reimu_face_8.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_1","marisa_face_1.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_2","marisa_face_2.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_3","marisa_face_3.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_4","marisa_face_4.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_5","marisa_face_5.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_6","marisa_face_6.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_7","marisa_face_7.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."marisa_face_8","marisa_face_8.png",true,0,0,false,1)
_editor_class["s1e1"]=Class(enemy)
_editor_class["s1e1"].init=function(self,x,y,diff)
    enemy.init(self,1,2,false,true)
    self.x,self.y=x,260
    self.drop={1,0,0}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        if diff == 0 then
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,0,true,0,true,true)
            task._Wait(60)
        else
        end
        task.MoveTo(x,y,30,MOVE_NORMAL)
        if diff == 1 then
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,0,true,0,true,true)
            task._Wait(60)
        else
        end
        if diff == 2 then
            do for _=1,5 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2,0,true,0,true,true)
                task._Wait(5)
            end end
            task._Wait(35)
        else
        end
        if diff == 3 then
            do for _=1,5 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,0,true,0,true,true)
                task._Wait(5)
            end end
            task._Wait(35)
        else
        end
        task.MoveTo(x+384,y,180,MOVE_NORMAL)
    end)
end
_editor_class["s1e2"]=Class(enemy)
_editor_class["s1e2"].init=function(self,x,y,diff)
    enemy.init(self,3,2,false,true)
    self.x,self.y=x,260
    self.drop={0,0,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,30,MOVE_NORMAL)
        if diff == 0 then
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,0,true,0,true,true)
            task._Wait(60)
        else
        end
        if diff == 1 then
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,0,true,0,true,true)
            task._Wait(60)
        else
        end
        if diff == 2 then
            do for _=1,5 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2,0,true,0,true,true)
                task._Wait(5)
            end end
            task._Wait(35)
        else
        end
        if diff == 3 then
            do for _=1,5 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,0,true,0,true,true)
                task._Wait(5)
            end end
            task._Wait(35)
        else
        end
        task.MoveTo(x-384,y,180,MOVE_NORMAL)
    end)
end
_editor_class["s1e3"]=Class(enemy)
_editor_class["s1e3"].init=function(self,y,diff)
    enemy.init(self,1,2,false,true)
    self.x,self.y=212,y
    self.drop={1,0,0}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(-230,y-30,180,MOVE_ACC_DEC)
    end)
    task.New(self,function()
        task._Wait(30)
        if diff == 1 then
            do local a,_d_a=(-20),(40) for _=1,2 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 2 then
            do for _=1,3 do
                do local a,_d_a=(-10),(20) for _=1,2 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.2,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
        else
        end
        if diff ==3 then
            do for _=1,5 do
                do local a,_d_a=(-6),(12) for _=1,2 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
        else
        end
    end)
end
_editor_class["s1e4"]=Class(enemy)
_editor_class["s1e4"].init=function(self,y,diff)
    enemy.init(self,3,2,false,true)
    self.x,self.y=-212,y
    self.drop={0,0,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(230,y-30,180,MOVE_ACC_DEC)
    end)
    task.New(self,function()
        task._Wait(30)
        if diff == 1 then
            do local a,_d_a=(-20),(40) for _=1,2 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 2 then
            do for _=1,3 do
                do local a,_d_a=(-10),(20) for _=1,2 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.2,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
        else
        end
        if diff ==3 then
            do for _=1,5 do
                do local a,_d_a=(-6),(12) for _=1,2 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
        else
        end
    end)
end
_editor_class["s1e5"]=Class(enemy)
_editor_class["s1e5"].init=function(self,x,y,diff)
    enemy.init(self,7,60,false,true)
    self.x,self.y=x,260
    self.drop={3,3,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,60,MOVE_NORMAL)
        if diff == 0 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(36) for _=1,10 do
                    do local a,_d_a=(0),(180) for _=1,2 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,3,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(24)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(24) for _=1,15 do
                    do local a,_d_a=(0),(180) for _=1,2 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,3,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(20)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(12) for _=1,30 do
                    do local a,_d_a=(0),(120) for _=1,3 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,4,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(10)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(10) for _=1,36 do
                    do local a,_d_a=(0),(60) for _=1,6 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,4,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(10)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
    end)
    task.New(self,function()
        task._Wait(480)
        task.MoveTo(x,260,60,MOVE_NORMAL)
    end)
end
_editor_class["s1e5b"]=Class(enemy)
_editor_class["s1e5b"].init=function(self,x,y,diff)
    enemy.init(self,7,60,false,true)
    self.x,self.y=x,260
    self.drop={3,3,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,60,MOVE_NORMAL)
        if diff == 0 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(-36) for _=1,10 do
                    do local a,_d_a=(0),(-180) for _=1,2 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,3,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(24)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(-24) for _=1,15 do
                    do local a,_d_a=(0),(-180) for _=1,2 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,3,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(20)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(-12) for _=1,30 do
                    do local a,_d_a=(0),(-120) for _=1,3 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,3,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(10)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local angle,_d_angle=(0),(-10) for _=1,36 do
                    do local a,_d_a=(0),(-60) for _=1,6 do
                        last=New(_straight,arrow_small,COLOR_PURPLE,self.x,self.y,4,angle+a,false,0,true,true)
                        PlaySound("kira02",0.5,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                    task._Wait(10)
                angle=angle+_d_angle end end
                task._Wait(60)
            end end
        else
        end
    end)
    task.New(self,function()
        task._Wait(480)
        task.MoveTo(x,260,60,MOVE_NORMAL)
    end)
end
_editor_class["s1e6"]=Class(enemy)
_editor_class["s1e6"].init=function(self,x,y,v,angle,va,diff)
    enemy.init(self,19,5,false,true)
    self.x,self.y=x,y
    self.drop={0,0,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    self.angle = angle
    self.va = va
    task.New(self,function()
        task.MoveTo(x*1/3,y,45,MOVE_NORMAL)
        do for _=1,math.abs(180/self.va) do
            SetV2(self,v,self.angle,true,false)
            self.angle = self.angle + self.va
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(45)
        do for _=1,180 do
            self.vx = v*cos(self.angle)
            self.vy = v*sin(self.angle)
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        if diff == 1 then
            task._Wait(75)
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,ran:Int(0,360),true,0,true,true)
            PlaySound("graze",0.2,self.x/256)
        else
        end
        if diff == 2 then
            task._Wait(75)
            do for _=1,3 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2,ran:Int(0,360),true,0,true,true)
                PlaySound("graze",0.2,self.x/256)
                task._Wait(0)
            end end
        else
        end
        if diff == 3 then
            task._Wait(45)
            do for _=1,3 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,ran:Int(0,360),true,0,true,true)
                PlaySound("graze",0.2,self.x/256)
                task._Wait(0)
            end end
        else
        end
    end)
end
_editor_class["s1e7"]=Class(enemy)
_editor_class["s1e7"].init=function(self,x1,y1,x2,y2,x3,y3,diff)
    enemy.init(self,8,85,false,true)
    self.x,self.y=x1,y1
    self.drop={5,1,3}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x2,y2,120,MOVE_DECEL)
        task._Wait(90)
        task.MoveTo(x3,y3,120,MOVE_ACCEL)
    end)
    task.New(self,function()
        task._Wait(120)
        if diff == 0 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,60)),(60) for _=1,3 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2,a,false,0,true,true)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(90)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,72)),(72) for _=1,5 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2,a,false,0,true,true)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(60)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,72)),(18) for _=1,20 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2,a,false,0,true,true)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(45)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,72)),(12) for _=1,30 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2,a,false,0,true,true)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(20)
                do local a,_d_a=(ran:Int(0,72)),(12) for _=1,30 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2,a,false,0,true,true)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(30)
            end end
        else
        end
    end)
end
_editor_class["s1e8"]=Class(enemy)
_editor_class["s1e8"].init=function(self,x,y,diff)
    enemy.init(self,1,8,false,true)
    self.x,self.y=x,260
    self.drop={1,0,0}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,120,MOVE_DECEL)
        if diff == 0 then
            task._Wait(25)
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,0,true,0,true,true)
            task._Wait(45)
        else
        end
        if diff == 1 then
            task._Wait(25)
            do local a,_d_a=(-5),(5) for _=1,3 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
        else
        end
        if diff == 2 then
            task._Wait(15)
            do for _=1,6 do
                do local a,_d_a=(-10),(5) for _=1,5 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2.5,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(40)
        else
        end
        if diff == 3 then
            task._Wait(15)
            do for _=1,6 do
                do local a,_d_a=(-10),(5) for _=1,5 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(3)
            end end
            task._Wait(40)
        else
        end
        task.MoveTo(x,260,120,MOVE_ACCEL)
    end)
end
_editor_class["s1e9"]=Class(enemy)
_editor_class["s1e9"].init=function(self,x,y,diff)
    enemy.init(self,3,8,false,true)
    self.x,self.y=x,260
    self.drop={0,0,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,120,MOVE_DECEL)
        if diff == 0 then
            task._Wait(25)
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1,0,true,0,true,true)
            task._Wait(45)
        else
        end
        if diff == 1 then
            task._Wait(25)
            do local a,_d_a=(-5),(5) for _=1,3 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
        else
        end
        if diff == 2 then
            task._Wait(15)
            do for _=1,6 do
                do local a,_d_a=(-10),(5) for _=1,5 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2.5,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(40)
        else
        end
        if diff == 3 then
            task._Wait(15)
            do for _=1,6 do
                do local a,_d_a=(-10),(5) for _=1,5 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(3)
            end end
            task._Wait(40)
        else
        end
        task.MoveTo(x,260,120,MOVE_ACCEL)
    end)
end
_LoadImageFromFile('image:'.."Letty_bg_mask","Letty_bg_mask.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."letty_face","letty_face.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."letty_face_1","letty_face_1.png",true,0,0,false,1)
LoadImageGroupFromFile('anonymous:'.."Letty.png","Letty.png",false,4,3,16,16)
_editor_class["蕾蒂 -Easy-"]=Class(boss)
_editor_class["蕾蒂 -Easy-"].cards={}
_editor_class["蕾蒂 -Easy-"].init=function(self)
    boss.init(self,240,384,"Letty Whiterock",self.class.cards,New(_editor_class["Letty bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Letty.png"..i end
	self.ani_intv=8
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_6","left","weird, why it's getting so cold?",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_6","left","so cold, I shouldn't be coming out",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Easy-"].cards,_tmp_sc)
table.insert(_editor_class["蕾蒂 -Easy-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:letty_face_1","right","Excuse me",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","It's rare to see you in this season",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","I have no idea cause someone asked me to stop you",nil)
            boss.dialog.sentence(self,"image:reimu_face_2","left","Seems like I have no way but beat you",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","Letty, It's you. How about your hibernation",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Sometimes I also like to move my body",nil)
            boss.dialog.sentence(self,"image:marisa_face_4","left","hmm, then let's battle",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Okay",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,25,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            PlaySound("kira00",0.5,self.x/256)
            do local angle,_d_angle=(0),(60) for _=1,6 do
                do local v,_d_v=(1),(0.75) for _=1,3 do
                    last=New(_editor_class["雪花回归弹"],self.x,self.y,v,angle)
                    task._Wait(0)
                v=v+_d_v end end
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local angle,_d_angle=(ran:Float(0,20)),(36) for _=1,10 do
                last=New(_editor_class["小雪花"],self.x,self.y,3,angle,1,-0.05)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(20)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("冬符「Avalanche 大瀑雪 -Easy-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["蕾蒂face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        local inc = 0
        do for _=1,_infinite do
            inc = ran:Int(0,50)
            task.MoveToPlayer(30)
            self.cast = 32
            do local angle,_d_angle=(30+inc),(120-2*inc) for _=1,2 do
                last=New(_editor_class["雪球弹"],self.x,self.y,3,angle,-0.03,-5,0)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Easy-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Letty.png","Letty.png",false,4,3,16,16)
_editor_class["蕾蒂 -Normal-"]=Class(boss)
_editor_class["蕾蒂 -Normal-"].cards={}
_editor_class["蕾蒂 -Normal-"].init=function(self)
    boss.init(self,240,384,"Letty Whiterock",self.class.cards,New(_editor_class["Letty bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Letty.png"..i end
	self.ani_intv=8
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_6","left","weird, why it's getting so cold?",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_6","left","so cold, I shouldn't be coming out",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Normal-"].cards,_tmp_sc)
table.insert(_editor_class["蕾蒂 -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:letty_face_1","right","Excuse me",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","It's rare to see you in this season",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","I have no idea cause someone asked me to stop you",nil)
            boss.dialog.sentence(self,"image:reimu_face_2","left","Seems like I have no way but beat you",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","Letty, It's you. How about your hibernation",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Sometimes I also like to move my body",nil)
            boss.dialog.sentence(self,"image:marisa_face_4","left","hmm, then let's battle",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Okay",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,25,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            PlaySound("kira00",0.5,self.x/256)
            do local angle,_d_angle=(0),(30) for _=1,12 do
                do local v,_d_v=(1),(0.75) for _=1,4 do
                    last=New(_editor_class["雪花回归弹"],self.x,self.y,v,angle)
                    task._Wait(0)
                v=v+_d_v end end
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local angle,_d_angle=(ran:Float(0,20)),(18) for _=1,20 do
                last=New(_editor_class["小雪花"],self.x,self.y,3,angle,1,-0.05)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(20)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("冬符「Avalanche 大瀑雪 -Normal-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["蕾蒂face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        local inc = 0
        do for _=1,_infinite do
            inc = ran:Int(0,50)
            task.MoveToPlayer(30)
            self.cast = 32
            do local angle,_d_angle=(30+inc),(120-2*inc) for _=1,2 do
                last=New(_editor_class["雪球弹"],self.x,self.y,3,angle,-0.03,-5,1)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(90)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Normal-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Letty.png","Letty.png",false,4,3,16,16)
_editor_class["蕾蒂 -Hard-"]=Class(boss)
_editor_class["蕾蒂 -Hard-"].cards={}
_editor_class["蕾蒂 -Hard-"].init=function(self)
    boss.init(self,240,384,"Letty Whiterock",self.class.cards,New(_editor_class["Letty bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Letty.png"..i end
	self.ani_intv=8
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_6","left","weird, why it's getting so cold?",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_6","left","so cold, I shouldn't be coming out",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Hard-"].cards,_tmp_sc)
table.insert(_editor_class["蕾蒂 -Hard-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:letty_face_1","right","Excuse me",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","It's rare to see you in this season",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","I have no idea cause someone asked me to stop you",nil)
            boss.dialog.sentence(self,"image:reimu_face_2","left","Seems like I have no way but beat you",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","Letty, It's you. How about your hibernation",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Sometimes I also like to move my body",nil)
            boss.dialog.sentence(self,"image:marisa_face_4","left","hmm, then let's battle",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Okay",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,25,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            PlaySound("kira00",0.5,self.x/256)
            do local angle,_d_angle=(0),(24) for _=1,15 do
                do local v,_d_v=(1),(0.75) for _=1,5 do
                    last=New(_editor_class["雪花回归弹"],self.x,self.y,v,angle)
                    task._Wait(0)
                v=v+_d_v end end
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local angle,_d_angle=(ran:Float(0,20)),(9) for _=1,40 do
                last=New(_editor_class["小雪花"],self.x,self.y,3,angle,1,-0.05)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(20)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("冬符「Avalanche 大瀑雪 -Hard」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["蕾蒂face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        local inc = 0
        do for _=1,_infinite do
            inc = ran:Int(0,50)
            task.MoveToPlayer(30)
            self.cast = 32
            do local angle,_d_angle=(30+inc),(120-2*inc) for _=1,2 do
                last=New(_editor_class["雪球弹"],self.x,self.y,3,angle,-0.03,-5,2)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(90)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Hard-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Letty.png","Letty.png",false,4,3,16,16)
_editor_class["蕾蒂 -Lunatic-"]=Class(boss)
_editor_class["蕾蒂 -Lunatic-"].cards={}
_editor_class["蕾蒂 -Lunatic-"].init=function(self)
    boss.init(self,240,384,"Letty Whiterock",self.class.cards,New(_editor_class["Letty bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Letty.png"..i end
	self.ani_intv=8
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_6","left","weird, why it's getting so cold?",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_6","left","so cold, I shouldn't be coming out",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Lunatic-"].cards,_tmp_sc)
table.insert(_editor_class["蕾蒂 -Lunatic-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:letty_face_1","right","Excuse me",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","It's rare to see you in this season",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","I have no idea cause someone asked me to stop you",nil)
            boss.dialog.sentence(self,"image:reimu_face_2","left","Seems like I have no way but beat you",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","Letty, It's you. How about your hibernation",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Sometimes I also like to move my body",nil)
            boss.dialog.sentence(self,"image:marisa_face_4","left","hmm, then let's battle",nil)
            boss.dialog.sentence(self,"image:letty_face_1","right","Okay",nil)
        end
    end)
end
table.insert(_editor_class["蕾蒂 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,25,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            PlaySound("kira00",0.5,self.x/256)
            do local angle,_d_angle=(0),(18) for _=1,20 do
                do local v,_d_v=(1),(0.75) for _=1,7 do
                    last=New(_editor_class["雪花回归弹"],self.x,self.y,v,angle)
                    task._Wait(0)
                v=v+_d_v end end
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local angle,_d_angle=(ran:Float(0,20)),(6) for _=1,60 do
                last=New(_editor_class["小雪花"],self.x,self.y,3,angle,1,-0.05)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(20)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("冬符「Avalanche 大瀑雪 -Lunaticl-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["蕾蒂face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        local inc = 0
        do for _=1,_infinite do
            inc = ran:Int(0,50)
            task.MoveToPlayer(30)
            self.cast = 32
            do local angle,_d_angle=(30+inc),(120-2*inc) for _=1,2 do
                last=New(_editor_class["雪球弹"],self.x,self.y,3,angle,-0.03,-5,3)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["蕾蒂 -Lunatic-"].cards,_tmp_sc)
_editor_class["蕾蒂face"]=Class(_object)
_editor_class["蕾蒂face"].init=function(self,_x,_y,v,vs,hs)
    self.x,self.y=_x,_y
	self.img="image:letty_face"
	self.layer=LAYER_TOP
	self.group=GROUP_GHOST
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.vscale = vs
    self.hscale = hs
    self._a = 105
    SetV2(self,0,0,false,false)
    task.New(self,function()
        task._Wait(60)
        SetV2(self,v,90,false,false)
    end)
end
_editor_class["蕾蒂face"].render=function(self)
    SetImgState(self,"",self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["雪花回归弹"]=Class(bullet)
_editor_class["雪花回归弹"].init=function(self,_x,_y,v,angle)
    bullet.init(self,arrow_big,5,false,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.bound = false
    task.New(self,function()
        task._Wait(45)
        SetV2(self,v,180 + self.rot,true,false)
        task._Wait(180)
        self.bound = true
    end)
end
_editor_class["小雪花"]=Class(bullet)
_editor_class["小雪花"].init=function(self,_x,_y,v,angle,minvy,vyinc)
    bullet.init(self,grain_b,COLOR_GRAY,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.minvy = minvy
    self.vyinc = vyinc
end
_editor_class["小雪花"].frame=function(self)
    if self.vy > self.minvy then
        self.vy = self.vy + self.vyinc
    else
    end
end
_editor_class["雪花重力弹"]=Class(bullet)
_editor_class["雪花重力弹"].init=function(self,_x,_y,v,angle,g,minvy)
    bullet.init(self,arrow_big,5,false,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self.g = g
    self.minvy = minvy
end
_editor_class["雪花重力弹"].frame=function(self)
    if self.vy > self.minvy then
        self.vy = self.vy + self.g
    else
    end
end
_editor_class["雪球弹"]=Class(bullet)
_editor_class["雪球弹"].init=function(self,_x,_y,v,angle,g,minvy,diff)
    bullet.init(self,ball_huge,COLOR_BLUE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self.g = g
    self.minvy = minvy
    task.New(self,function()
        task._Wait(20)
        if diff == 0 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,30)),(180) for _=1,2 do
                    last=New(_editor_class["雪花重力弹"],self.x,self.y,1,a,-0.025,-5)
                    PlaySound("kira00",0.3,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(60)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,30)),(120) for _=1,3 do
                    last=New(_editor_class["雪花重力弹"],self.x,self.y,1,a,-0.025,-5)
                    PlaySound("kira00",0.3,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(60)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,30)),(90) for _=1,4 do
                    last=New(_editor_class["雪花重力弹"],self.x,self.y,1,a,-0.025,-5)
                    PlaySound("kira00",0.3,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(60)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,30)),(60) for _=1,6 do
                    last=New(_editor_class["雪花重力弹"],self.x,self.y,1,a,-0.025,-5)
                    PlaySound("kira00",0.3,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(60)
            end end
        else
        end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            if self.y > 224 then
                self.y = 448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.y < -224 then
                if diff == 1 then
                    do for _=1,20 do
                        last=New(_editor_class["米粒雪花重力弹"],self.x,self.y,ran:Float(2,3),ran:Int(0,180),-0.02,-2)
                        task._Wait(0)
                    end end
                    _kill(self,true)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                if diff == 2 then
                    do for _=1,40 do
                        last=New(_editor_class["米粒雪花重力弹"],self.x,self.y,ran:Float(2,3),ran:Int(0,180),-0.02,-2)
                        task._Wait(0)
                    end end
                    _kill(self,true)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                if diff == 3 then
                    do for _=1,60 do
                        last=New(_editor_class["米粒雪花重力弹"],self.x,self.y,ran:Float(2,3),ran:Int(0,180),-0.02,-2)
                        task._Wait(0)
                    end end
                    _kill(self,true)
                    PlaySound("kira00",0.1,self.x/256)
                else
                end
            else
            end
            if self.x > 192 then
                self.x = 384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
                if diff == 3 and self.y<0 then
                    do for _=1,30 do
                        last=New(_editor_class["米粒雪花重力弹"],self.x,self.y,ran:Float(2,3),ran:Int(0,180),-0.02,-2)
                        task._Wait(0)
                    end end
                    PlaySound("kira00",0.1,self.x/256)
                else
                end
            else
            end
            if self.x < -192 then
                self.x = -384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
                if diff == 3 and self.y<0 then
                    do for _=1,30 do
                        last=New(_editor_class["米粒雪花重力弹"],self.x,self.y,ran:Float(2,3),ran:Int(0,180),-0.02,-2)
                        task._Wait(0)
                    end end
                    PlaySound("kira00",0.1,self.x/256)
                else
                end
            else
            end
            if self.vy > self.minvy then
                self.vy = self.vy + self.g
            else
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["米粒雪花重力弹"]=Class(bullet)
_editor_class["米粒雪花重力弹"].init=function(self,_x,_y,v,angle,g,minvy)
    bullet.init(self,ball_small,COLOR_GRAY,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self.g = g
    self.minvy = minvy
end
_editor_class["米粒雪花重力弹"].frame=function(self)
    if self.vy > self.minvy then
        self.vy = self.vy + self.g
    else
    end
end
_editor_class["Letty bg"]=Class(_spellcard_background)
_editor_class["Letty bg"].init=function(self)
    _spellcard_background.init(self)
    _spellcard_background.AddLayer(self,"image:Letty_bg_mask",true,0,0,0,-1,-2,0,"mul+add",1,1,nil,nil)
end
_LoadImageFromFile('image:'.."Cirno_bg_mask","Cirno_bg_mask.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."cirno_face","cirno_face.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_1","cirno_face_1.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_2","cirno_face_2.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_3","cirno_face_3.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_4","cirno_face_4.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_5","cirno_face_5.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_6","cirno_face_6.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_7","cirno_face_7.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."cirno_face_8","cirno_face_8.png",true,0,0,false,1)
LoadPS('particle:'.."雾","fog.psi","parimg9",0,0,false)
LoadPS('particle:'.."雾分散","fog1.psi","parimg13",0,0,false)
LoadImageGroupFromFile('anonymous:'.."Cirno.png","Cirno.png",false,4,3,16,16)
_editor_class["琪露诺 -Easy-"]=Class(boss)
_editor_class["琪露诺 -Easy-"].cards={}
_editor_class["琪露诺 -Easy-"].init=function(self)
    boss.init(self,240,384,"Cirno",self.class.cards,New(_editor_class["Cirno bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Cirno.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:cirno_face_8","right","Miko at there, finally find you",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","oh, fool spirit",nil)
            boss.dialog.sentence(self,"image:cirno_face_5","right","Let's game",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:reimu_face_1","left","hmm, actually, I am in a hurry",nil)
        else
            boss.dialog.sentence(self,"image:cirno_face_8","right","hey! The black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_7","left","hmm? cirno",nil)
            boss.dialog.sentence(self,"image:cirno_face_2","right","Let's battle",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:marisa_face_2","left","you really don't learn a lesson, let's finish this",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,20,180,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*8),(16) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,2,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,3 do
                do local angle,_d_angle=(-(a-1)*8 + 40),(16) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,2,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,3 do
                do local angle,_d_angle=(-(a-1)*8 - 40),(16) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,2,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(45)
            do local angle,_d_angle=(-15),(30) for _=1,2 do
                last=New(_editor_class["氷"],self.x,self.y,4,angle)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(45)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("雹符「Hailstorm -Easy-」",2,5,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            do local a,_d_a=(-30),(120) for _=1,3 do
                last=New(_editor_class["氷雹弹"],self.x,self.y,2.5,a,2)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(210)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,104,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(0),(15) for _=1,24 do
                last=New(_editor_class["圈形追踪碎氷弹"],self.x,self.y,3,2,a,30)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
    task.New(self,function()
        task._Wait(75)
        do for _=1,_infinite do
            do local a,_d_a=(0),(18) for _=1,20 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,3,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
            do local a,_d_a=(0),(18) for _=1,20 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,3,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Icicle Fall -Easy-」",3,15,60,600,{8,0,10},true)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local diff2 = 0

    local lastunit1
    local lastunit2
    local lastunit
    local r = 120
    local vtheta = diff2 + 1
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y-r,0,diff2)
        lastunit1 = last
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y+r,180,diff2)
        lastunit2 = last
        local xs = self.x
        local ys = self.y
        do for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            do local a,_d_a=(1),(1) for _=1,2 do
                if a==1 then lastunit = lastunit1 else lastunit = lastunit2 end
                lastunit.vx = r * 2 * PI / 360 * cos(lastunit.angle) * vtheta
                lastunit.vy = r * 2 * PI / 360 * sin(lastunit.angle) * vtheta
                lastunit.x = lastunit.x + dx
                lastunit.y = lastunit.y + dy
                lastunit.angle =lastunit.angle + vtheta
            a=a+_d_a end end
            xs = self.x
            ys = self.y
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(player.x+ran:Int(-40,40),ran:Int(84,104),60,MOVE_NORMAL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(1) for _=1,3 do
                if math.mod(a,2) == 1 then
                    do local angle,_d_angle=(0),(12) for _=1,30 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,angle,true,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                else
                    do local angle,_d_angle=(ran:Int(0,6)),(12) for _=1,30 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,angle,false,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                end
                task._Wait(15)
            a=a+_d_a end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do for _=1,2 do
                do local angle,_d_angle=(ran:Int(0,4)),(10) for _=1,36 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1.75,angle,false,0,true,true)
                    PlaySound("kira00",0.1,self.x/256)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(20)
            end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Ice Tornado -Easy-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swticha = 0
    local swtichb = 0
    task.New(self,function()
        do local a,_d_a=(0),(1) for _=1,_infinite do
            last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
            PlaySound("tan00",0.1,self.x/256)
            if self.hp / self.maxhp < 0.33 or switcha ==1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if self.hp / self.maxhp < 0.10 or swtichb == 1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if math.mod(a,4) == 0 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                PlaySound("tan00",0.1,self.x/256)
                if self.hp / self.maxhp < 0.33 or swticha == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                if self.hp / self.maxhp < 0.10 or swtichb == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                a = a+1 if a==200 then a=0 end
            else
            end
            task._Wait(10)
        a=a+_d_a end end
    end)
    task.New(self,function()
        local a = 1
        local effect_orb
        do for _=1,_infinite do
            last=New(_editor_class["effect雾"],self.x,self.y,_)
            effect_orb = last
            PlaySound("ch00",1,self.x/256)
            for _,unit in ObjList(GROUP_ENEMY_BULLET) do
                if Dist(unit,effect_orb) < 150 and unit.turnon == 0 and unit.v ~= 0 then
                    unit.angle = Angle(unit,effect_orb)
                    unit.turnon = a
                else
                end
            end
            a = -a
            task._Wait(150)
        end end
    end)
    task.New(self,function()
        task._Wait(2400)
        swticha = 1
        task._Wait(1020)
        swtichb = 1
    end)
    task.New(self,function()
        task._Wait(200)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","keep going",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_3","left","jsut a warm-up",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Easy-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Cirno.png","Cirno.png",false,4,3,16,16)
_editor_class["琪露诺 -Normal-"]=Class(boss)
_editor_class["琪露诺 -Normal-"].cards={}
_editor_class["琪露诺 -Normal-"].init=function(self)
    boss.init(self,240,384,"Cirno",self.class.cards,New(_editor_class["Cirno bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Cirno.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:cirno_face_8","right","Miko at there, finally find you",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","oh, fool spirit",nil)
            boss.dialog.sentence(self,"image:cirno_face_5","right","Let's game",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:reimu_face_1","left","hmm, actually, I am in a hurry",nil)
        else
            boss.dialog.sentence(self,"image:cirno_face_8","right","hey! The black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_7","left","hmm? cirno",nil)
            boss.dialog.sentence(self,"image:cirno_face_2","right","Let's battle",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:marisa_face_2","left","you really don't learn a lesson, let's finish this",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,20,180,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,7 do
                do local angle,_d_angle=(-(a-1)*4),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,3,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*4 + 20),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,3.5,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*4 - 20),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,3.5,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(45)
            do local angle,_d_angle=(-10),(20) for _=1,2 do
                last=New(_editor_class["氷"],self.x,self.y,5,angle)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(45)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("雹符「Hailstorm -Normal-」",2,5,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(20)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(75)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            do local a,_d_a=(0),(60) for _=1,6 do
                last=New(_editor_class["氷雹弹"],self.x,self.y,2.5,a,2)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,104,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(0),(10) for _=1,36 do
                last=New(_editor_class["圈形追踪碎氷弹"],self.x,self.y,4,3,a,30)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
    task.New(self,function()
        task._Wait(75)
        do for _=1,_infinite do
            do local a,_d_a=(0),(15) for _=1,24 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,3,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(10)
            do local a,_d_a=(0),(15) for _=1,24 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,3,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
            task._Wait(90)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Icicle Fall -Normal-」",3,15,60,600,{8,0,10},true)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local diff2 = 1

    local lastunit1
    local lastunit2
    local lastunit
    local r = 120
    local vtheta = diff2 + 1
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y-r,0,diff2)
        lastunit1 = last
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y+r,180,diff2)
        lastunit2 = last
        local xs = self.x
        local ys = self.y
        do for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            do local a,_d_a=(1),(1) for _=1,2 do
                if a==1 then lastunit = lastunit1 else lastunit = lastunit2 end
                lastunit.vx = r * 2 * PI / 360 * cos(lastunit.angle) * vtheta
                lastunit.vy = r * 2 * PI / 360 * sin(lastunit.angle) * vtheta
                lastunit.x = lastunit.x + dx
                lastunit.y = lastunit.y + dy
                lastunit.angle =lastunit.angle + vtheta
            a=a+_d_a end end
            xs = self.x
            ys = self.y
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(player.x+ran:Int(-40,40),ran:Int(84,104),60,MOVE_NORMAL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(1) for _=1,3 do
                if math.mod(a,2) == 1 then
                    do local angle,_d_angle=(0),(6) for _=1,60 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,angle,true,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                else
                    do local angle,_d_angle=(ran:Int(0,6)),(6) for _=1,60 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,angle,false,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                end
                task._Wait(15)
            a=a+_d_a end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do for _=1,2 do
                do local angle,_d_angle=(ran:Int(0,4)),(5) for _=1,72 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1.75,angle,false,0,true,true)
                    PlaySound("kira00",0.1,self.x/256)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(20)
            end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Ice Tornado -Normal-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swticha = 0
    local swtichb = 0
    task.New(self,function()
        do local a,_d_a=(0),(1) for _=1,_infinite do
            last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
            PlaySound("tan00",0.1,self.x/256)
            if self.hp / self.maxhp < 0.33 or switcha ==1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if self.hp / self.maxhp < 0.10 or swtichb == 1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if math.mod(a,4) == 0 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                PlaySound("tan00",0.1,self.x/256)
                if self.hp / self.maxhp < 0.33 or swticha == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                if self.hp / self.maxhp < 0.10 or swtichb == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                a = a+1 if a==200 then a=0 end
            else
            end
            task._Wait(8)
        a=a+_d_a end end
    end)
    task.New(self,function()
        local a = 1
        local effect_orb
        do for _=1,_infinite do
            last=New(_editor_class["effect雾"],self.x,self.y,_)
            effect_orb = last
            PlaySound("ch00",1,self.x/256)
            for _,unit in ObjList(GROUP_ENEMY_BULLET) do
                if Dist(unit,effect_orb) < 150 and unit.turnon == 0 and unit.v ~= 0 then
                    unit.angle = Angle(unit,effect_orb)
                    unit.turnon = a
                else
                end
            end
            a = -a
            task._Wait(150)
        end end
    end)
    task.New(self,function()
        task._Wait(2400)
        swticha = 1
        task._Wait(1020)
        swtichb = 1
    end)
    task.New(self,function()
        task._Wait(200)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("凍符「MinusK -Normal-」",2,15,90,700,{10,0,20},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swtichb = 0
    task.New(self,function()
        task.MoveTo(0,44,120,MOVE_NORMAL)
        do local a,_d_a=(0),(5) for _=1,_infinite do
            do local angle,_d_angle=(a),(120) for _=1,3 do
                last=New(_editor_class["大氷雹"],self.x,self.y,7,angle,20,20)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(10)
        a=a+_d_a end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,45)),(45) for _=1,8 do
                last=New(_straight,grain_b,COLOR_BLUE,self.x,self.y,1,a,false,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(math.max(math.min(ran:Int(self.x-50,self.x+50),104),-104),math.max(math.min(ran:Int(self.y-50,self.y+50),104),-24),60,MOVE_ACC_DEC)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","keep going",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_3","left","just a warm-up",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Normal-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Cirno.png","Cirno.png",false,4,3,16,16)
_editor_class["琪露诺 -Hard-"]=Class(boss)
_editor_class["琪露诺 -Hard-"].cards={}
_editor_class["琪露诺 -Hard-"].init=function(self)
    boss.init(self,240,384,"Cirno",self.class.cards,New(_editor_class["Cirno bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Cirno.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:cirno_face_8","right","Miko at there, finally find you",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","oh, fool spirit",nil)
            boss.dialog.sentence(self,"image:cirno_face_5","right","Let's game",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:reimu_face_1","left","hmm, actually, I am in a hurry",nil)
        else
            boss.dialog.sentence(self,"image:cirno_face_8","right","hey! The black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_7","left","hmm? cirno",nil)
            boss.dialog.sentence(self,"image:cirno_face_2","right","Let's battle",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:marisa_face_2","left","you really don't learn a lesson, let's finish this",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,20,180,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,7 do
                do local angle,_d_angle=(-(a-1)*4),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,3.5,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*4 + 20),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,4,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*4 - 20),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,4,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(35)
            do local angle,_d_angle=(-5),(10) for _=1,2 do
                last=New(_editor_class["氷"],self.x,self.y,6,angle)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(35)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("雹符「Hailstorm -Hard-」",2,5,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹 -Hard-"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(20)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹 -Hard-"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            do local a,_d_a=(0),(60) for _=1,6 do
                last=New(_editor_class["氷雹弹 -Hard-"],self.x,self.y,2.5,a,1.75)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,104,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(0),(10) for _=1,36 do
                last=New(_editor_class["圈形追踪碎氷弹"],self.x,self.y,4,3,a,30)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(75)
        do for _=1,_infinite do
            do local a,_d_a=(0),(10) for _=1,36 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,4,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(10)
            do local a,_d_a=(0),(10) for _=1,36 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,4,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
            task._Wait(90)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Icicle Fall -Hard-」",3,15,60,600,{8,0,10},true)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local diff2 = 2

    local lastunit1
    local lastunit2
    local lastunit
    local r = 120
    local vtheta = diff2 + 1
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y-r,0,diff2)
        lastunit1 = last
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y+r,180,diff2)
        lastunit2 = last
        local xs = self.x
        local ys = self.y
        do for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            do local a,_d_a=(1),(1) for _=1,2 do
                if a==1 then lastunit = lastunit1 else lastunit = lastunit2 end
                lastunit.vx = r * 2 * PI / 360 * cos(lastunit.angle) * vtheta
                lastunit.vy = r * 2 * PI / 360 * sin(lastunit.angle) * vtheta
                lastunit.x = lastunit.x + dx
                lastunit.y = lastunit.y + dy
                lastunit.angle =lastunit.angle + vtheta
            a=a+_d_a end end
            xs = self.x
            ys = self.y
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(player.x+ran:Int(-40,40),ran:Int(84,104),60,MOVE_NORMAL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(1) for _=1,4 do
                if math.mod(a,2) == 1 then
                    do local angle,_d_angle=(0),(6) for _=1,60 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.75,angle,true,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                else
                    do local angle,_d_angle=(ran:Int(0,6)),(6) for _=1,60 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.75,angle,false,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do for _=1,3 do
                do local angle,_d_angle=(ran:Int(0,4)),(5) for _=1,72 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1.75,angle,false,0,true,true)
                    PlaySound("kira00",0.1,self.x/256)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(15)
            end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Ice Tornado -Hard-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swticha = 0
    local swtichb = 0
    task.New(self,function()
        do local a,_d_a=(0),(1) for _=1,_infinite do
            last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
            PlaySound("tan00",0.1,self.x/256)
            if self.hp / self.maxhp < 0.66 or switcha ==1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if self.hp / self.maxhp < 0.33 or swtichb == 1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if math.mod(a,4) == 0 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                PlaySound("tan00",0.1,self.x/256)
                if self.hp / self.maxhp < 0.66 or swticha == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                if self.hp / self.maxhp < 0.33 or swtichb == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                a = a+1 if a==200 then a=0 end
            else
            end
            task._Wait(6)
        a=a+_d_a end end
    end)
    task.New(self,function()
        local a = 1
        local effect_orb
        do for _=1,_infinite do
            last=New(_editor_class["effect雾"],self.x,self.y,_)
            effect_orb = last
            PlaySound("ch00",1,self.x/256)
            for _,unit in ObjList(GROUP_ENEMY_BULLET) do
                if Dist(unit,effect_orb) < 150 and unit.turnon == 0 and unit.v ~= 0 then
                    unit.angle = Angle(unit,effect_orb)
                    unit.turnon = a
                else
                end
            end
            a = -a
            task._Wait(150)
        end end
    end)
    task.New(self,function()
        task._Wait(1200)
        swticha = 1
        task._Wait(1200)
        swtichb = 1
    end)
    task.New(self,function()
        task._Wait(200)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("凍符「MinusK -Hard-」",2,15,90,700,{10,0,20},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swtichb = 0
    task.New(self,function()
        task.MoveTo(0,44,120,MOVE_NORMAL)
        do local a,_d_a=(0),(5) for _=1,_infinite do
            do local angle,_d_angle=(a),(120) for _=1,3 do
                last=New(_editor_class["大氷雹"],self.x,self.y,7,angle,15,20)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(10)
        a=a+_d_a end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            if  self.hp / self.maxhp < 0.6 or swtichb == 1 then
                if true then return end
            else
            end
            do local a,_d_a=(ran:Int(0,45)),(45) for _=1,8 do
                last=New(_straight,grain_b,COLOR_BLUE,self.x,self.y,1,a,false,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            if  self.hp / self.maxhp < 0.6 or swtichb == 1 then
                function func() while true do a = ran:Int(0,60) for i=1,6 do last=New(_straight, ball_big, COLOR_BLUE, self.x,self.y, 1, a, false, 0, true, true) a = a + 60 end task.Wait(25) end end
                task.New(func())
                if true then return end
            else
            end
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(1800)
        task._Wait(1800)
        swtichb = 1
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(math.max(math.min(ran:Int(self.x-50,self.x+50),104),-104),math.max(math.min(ran:Int(self.y-50,self.y+50),104),-24),60,MOVE_ACC_DEC)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","keep going",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_3","left","just a warm-up",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Hard-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Cirno.png","Cirno.png",false,4,3,16,16)
_editor_class["琪露诺 -Lunatic-"]=Class(boss)
_editor_class["琪露诺 -Lunatic-"].cards={}
_editor_class["琪露诺 -Lunatic-"].init=function(self)
    boss.init(self,240,384,"Cirno",self.class.cards,New(_editor_class["Cirno bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Cirno.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:cirno_face_8","right","Miko at there, finally find you",nil)
            boss.dialog.sentence(self,"image:reimu_face_1","left","oh, fool spirit",nil)
            boss.dialog.sentence(self,"image:cirno_face_5","right","Let's game",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:reimu_face_1","left","hmm, actually, I am in a hurry",nil)
        else
            boss.dialog.sentence(self,"image:cirno_face_8","right","hey! The black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_7","left","hmm? cirno",nil)
            boss.dialog.sentence(self,"image:cirno_face_2","right","Let's battle",nil)
            _stop_music()
            _play_music("Cirno_bgm")
            boss.dialog.sentence(self,"image:marisa_face_2","left","you really don't learn a lesson, let's finish this",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,20,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,7 do
                do local angle,_d_angle=(-(a-1)*4),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,4,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*4 + 20),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,5,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        task._Wait(25)
        do for _=1,_infinite do
            do local a,_d_a=(2),(1) for _=1,5 do
                do local angle,_d_angle=(-(a-1)*4 - 20),(8) for _=1,a do
                    last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,5,angle,true,0,true,true)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(5)
            a=a+_d_a end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(35)
            do local angle,_d_angle=(-3),(6) for _=1,2 do
                last=New(_editor_class["氷"],self.x,self.y,6,angle)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(35)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("雹符「Hailstorm -Lunatic-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(20)
        do for _=1,_infinite do
            last=New(_editor_class["氷雹弹"],ran:Int(-162,162),ran:Int(144,224),3,270,3)
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            do local a,_d_a=(0),(30) for _=1,12 do
                last=New(_editor_class["氷雹弹 -Hard-"],self.x,self.y,2.5,a,1.75)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,104,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(0),(10) for _=1,36 do
                last=New(_editor_class["圈形追踪碎氷弹"],self.x,self.y,4,3,a,30)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(75)
        do for _=1,_infinite do
            do local a,_d_a=(0),(5) for _=1,72 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,4,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(10)
            do local a,_d_a=(0),(5) for _=1,72 do
                last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,4,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
            task._Wait(90)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Icicle Fall -Lunatic-」",3,15,60,1000,{8,0,10},true)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local diff2 = 3
    --[[ 难度变量 --]]
    local lastunit1
    local lastunit2
    local lastunit
    local r = 120
    local vtheta = diff2 + 1
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y-r,0,diff2)
        lastunit1 = last
        last=New(_editor_class["effect雾分散-旋转"],self.x,self.y+r,180,diff2)
        lastunit2 = last
        local xs = self.x
        local ys = self.y
        do for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            do local a,_d_a=(1),(1) for _=1,2 do
                if a==1 then lastunit = lastunit1 else lastunit = lastunit2 end
                lastunit.vx = r * 2 * PI / 360 * cos(lastunit.angle) * vtheta
                lastunit.vy = r * 2 * PI / 360 * sin(lastunit.angle) * vtheta
                lastunit.x = lastunit.x + dx
                lastunit.y = lastunit.y + dy
                lastunit.angle =lastunit.angle + vtheta
            a=a+_d_a end end
            xs = self.x
            ys = self.y
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(player.x+ran:Int(-40,40),ran:Int(84,104),60,MOVE_NORMAL)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",0,15,30,240,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(1) for _=1,5 do
                if math.mod(a,2) == 1 then
                    do local angle,_d_angle=(0),(6) for _=1,60 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.75,angle,true,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                else
                    do local angle,_d_angle=(ran:Int(0,6)),(6) for _=1,60 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.75,angle,false,0,true,true)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    angle=angle+_d_angle end end
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(50)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do for _=1,4 do
                do local angle,_d_angle=(ran:Int(0,4)),(5) for _=1,72 do
                    last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,1.75,angle,false,0,true,true)
                    PlaySound("kira00",0.1,self.x/256)
                    task._Wait(0)
                angle=angle+_d_angle end end
                task._Wait(10)
            end end
            task._Wait(45)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            task.MoveToPlayer(30)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("氷符「Ice Tornado -Lunatic-」",2,15,60,600,{8,0,10},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swticha = 0
    local swtichb = 0
    task.New(self,function()
        do local a,_d_a=(0),(1) for _=1,_infinite do
            last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
            PlaySound("tan00",0.1,self.x/256)
            if self.hp / self.maxhp < 0.66 or switcha ==1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if self.hp / self.maxhp < 0.33 or swtichb == 1 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(200,230),2,-90,30,0,COLOR_PURPLE)
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if math.mod(a,4) == 0 then
                last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                PlaySound("tan00",0.1,self.x/256)
                if self.hp / self.maxhp < 0.66 or swticha == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                if self.hp / self.maxhp < 0.33 or swtichb == 1 then
                    last=New(_editor_class["氷棱引力弹"],ran:Int(-192,192),ran:Int(-230,-200),1,90,30,0,COLOR_BLUE)
                    PlaySound("tan00",0.1,self.x/256)
                else
                end
                a = a+1 if a==200 then a=0 end
            else
            end
            task._Wait(4)
        a=a+_d_a end end
    end)
    task.New(self,function()
        local a = 1
        local effect_orb
        do for _=1,_infinite do
            last=New(_editor_class["effect雾"],self.x,self.y,_)
            effect_orb = last
            PlaySound("ch00",1,self.x/256)
            for _,unit in ObjList(GROUP_ENEMY_BULLET) do
                if Dist(unit,effect_orb) < 150 and unit.turnon == 0 and unit.v ~= 0 then
                    unit.angle = Angle(unit,effect_orb)
                    unit.turnon = a
                else
                end
            end
            a = -a
            task._Wait(150)
        end end
    end)
    task.New(self,function()
        task._Wait(1200)
        swticha = 1
        task._Wait(1200)
        swtichb = 1
    end)
    task.New(self,function()
        task._Wait(200)
        do for _=1,_infinite do
            task.MoveTo(ran:Int(-104,104),ran:Int(84,104),60,MOVE_DECEL)
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("凍符「MinusK -Lunatic-」",2,15,90,700,{10,0,20},false)
function _tmp_sc:init()
    last=New(_editor_class["琪露诺face"],75,-75,2,0.75,0.75)
    local swtichb = 0
    task.New(self,function()
        task.MoveTo(0,44,120,MOVE_NORMAL)
        do local a,_d_a=(0),(8) for _=1,_infinite do
            do local angle,_d_angle=(a),(120) for _=1,3 do
                last=New(_editor_class["大氷雹"],self.x,self.y,7,angle,15,20)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            angle=angle+_d_angle end end
            task._Wait(10)
        a=a+_d_a end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            if  self.hp / self.maxhp < 0.6 or swtichb == 1 then
                if true then return end
            else
            end
            do local a,_d_a=(ran:Int(0,45)),(45) for _=1,8 do
                last=New(_straight,grain_b,COLOR_BLUE,self.x,self.y,1,a,false,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            if  self.hp / self.maxhp < 0.6 or swtichb == 1 then
                function func() while true do a = ran:Int(0,60) for i=1,6 do last=New(_straight, ball_big, COLOR_BLUE, self.x,self.y, 1, a, false, 0, true, true) a = a + 60 end task.Wait(25) end end
                task.New(func())
                if true then return end
            else
            end
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(1800)
        task._Wait(1800)
        swtichb = 1
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveTo(math.max(math.min(ran:Int(self.x-50,self.x+50),104),-104),math.max(math.min(ran:Int(self.y-50,self.y+50),104),-24),60,MOVE_ACC_DEC)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","keep going",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_3","left","just a warm-up",nil)
        end
    end)
end
table.insert(_editor_class["琪露诺 -Lunatic-"].cards,_tmp_sc)
_editor_class["琪露诺face"]=Class(_object)
_editor_class["琪露诺face"].init=function(self,_x,_y,v,vs,hs)
    self.x,self.y=_x,_y
	self.img="image:cirno_face"
	self.layer=LAYER_TOP
	self.group=GROUP_GHOST
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.vscale = vs
    self.hscale = hs
    self._a = 105
    SetV2(self,0,0,false,false)
    task.New(self,function()
        task._Wait(60)
        SetV2(self,v,90,false,false)
    end)
end
_editor_class["琪露诺face"].render=function(self)
    SetImgState(self,"",self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["氷"]=Class(laser)
_editor_class["氷"].init=function(self,_x,_y,v,angle)
    laser.init(self,COLOR_GRAY,_x,_y,0,0,128,0,4,0)
    SetV2(self,v,angle,true,true)
    task.New(self,function()
        laser._TurnOn(self,0,true,true)
    end)
end
_editor_class["圈形追踪碎氷弹"]=Class(bullet)
_editor_class["圈形追踪碎氷弹"].init=function(self,_x,_y,v1,v2,angle,t)
    bullet.init(self,grain_b,COLOR_BLUE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v1,angle,true,false)
    task.New(self,function()
        task._Wait(t)
        SetV2(self,v2,0,true,true)
    end)
end
_editor_class["氷雹弹"]=Class(bullet)
_editor_class["氷雹弹"].init=function(self,_x,_y,v,angle,v_small)
    bullet.init(self,ball_big,COLOR_PURPLE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(60),(60) for _=1,2 do
                last=New(_editor_class["小氷雹"],self.x,self.y,v_small,self.rot+90+a,60)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(6)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        _kill(self,true)
        last=New(_editor_class["effect雾分散"],self.x,self.y,_)
        do local a,_d_a=(0),(24) for _=1,15 do
            last=New(_editor_class["小氷雹"],self.x,self.y,ran:Float(1,3),a,0)
            task._Wait(0)
        a=a+_d_a end end
    end)
end
_editor_class["氷雹弹 -Hard-"]=Class(bullet)
_editor_class["氷雹弹 -Hard-"].init=function(self,_x,_y,v,angle,v_small)
    bullet.init(self,ball_big,COLOR_PURPLE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(60),(60) for _=1,2 do
                last=New(_editor_class["小氷雹"],self.x,self.y,v_small,self.rot+90+a,60)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(5)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        _kill(self,true)
        last=New(_editor_class["effect雾分散"],self.x,self.y,_)
        do local a,_d_a=(0),(12) for _=1,30 do
            last=New(_editor_class["小氷雹"],self.x,self.y,ran:Float(1,3),a,0)
            task._Wait(0)
        a=a+_d_a end end
    end)
end
_editor_class["小氷雹"]=Class(bullet)
_editor_class["小氷雹"].init=function(self,_x,_y,v,angle,wait)
    bullet.init(self,grain_b,COLOR_GRAY,true,true)
    self.x,self.y=_x,_y
    SetV2(self,0,angle,true,false)
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,v,angle,true,false)
    end)
end
_editor_class["effect雾分散"]=Class(_object)
_editor_class["effect雾分散"].init=function(self,_x,_y,_)
    self.x,self.y=_x,_y
	self.img="particle:雾分散"
	self.layer=LAYER_BG+1
	self.group=GROUP_ENEMY_BULLET
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.angle = 0
    task.New(self,function()
        task._Wait(20)
        _kill(self,true)
    end)
end
_editor_class["氷棱重力弹"]=Class(bullet)
_editor_class["氷棱重力弹"].init=function(self,_x,_y,v,angle,g,minvy)
    bullet.init(self,grain_b,COLOR_GRAY,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self.g = g
    self.minvy = minvy
end
_editor_class["氷棱重力弹"].frame=function(self)
    if self.vy > self.minvy then
        self.vy = self.vy + self.g
    else
    end
end
_editor_class["氷棱普通弹"]=Class(bullet)
_editor_class["氷棱普通弹"].init=function(self,_x,_y,v,angle,wait1,wait2)
    bullet.init(self,grain_b,COLOR_PURPLE,true,false)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        task._Wait(wait1)
        SetV2(self,0,angle,true,false)
        task._Wait(wait2)
        last=New(_editor_class["氷棱重力弹"],self.x,self.y,1,angle,-0.05,-2)
        _del(self,true)
    end)
end
_editor_class["effect雾分散-旋转"]=Class(_object)
_editor_class["effect雾分散-旋转"].init=function(self,_x,_y,angle,diff2)
    self.x,self.y=_x,_y
	self.img="particle:雾分散"
	self.layer=LAYER_BG+1
	self.group=GROUP_INDES
	self.hide=false
	self.bound=false
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.angle = angle
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(self.angle+120),(120) for _=1,2 do
                last=New(_editor_class["氷棱普通弹"],self.x,self.y,3,a,20,60)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(13-(diff2+1)*(diff2+2)/2)
        end end
    end)
end
_editor_class["氷棱引力弹"]=Class(bullet)
_editor_class["氷棱引力弹"].init=function(self,_x,_y,v,angle,wait,turnon,color)
    bullet.init(self,grain_b,color,true,true)
    self.x,self.y=_x,_y
    SetV2(self,0,angle,true,false)
    self.navi = true
    self.turnon = turnon
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,v,angle,true,false)
        do for _=1,_infinite do
            if self.turnon == 1 then
                self.vx =self.angle * PI / 360 *cos(self.angle)
                self.vy =self.angle * PI / 360 *sin(self.angle)
                self.angle = self.angle + 1
            else
            end
            if self.turnon == -1 then
                self.vx =-self.angle * PI / 360 *cos(self.angle)
                self.vy =self.angle * PI / 360 *sin(self.angle)
                self.angle = self.angle + 1
            else
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["effect雾"]=Class(_object)
_editor_class["effect雾"].init=function(self,_x,_y,_)
    self.x,self.y=_x,_y
	self.img="particle:雾"
	self.layer=LAYER_BG+1
	self.group=GROUP_ENEMY_BULLET
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.angle = 0
    task.New(self,function()
        task._Wait(60)
        _kill(self,true)
    end)
end
_editor_class["大氷雹"]=Class(bullet)
_editor_class["大氷雹"].init=function(self,_x,_y,v,angle,wait1,wait2)
    bullet.init(self,ellipse,COLOR_BLUE,true,false)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        task._Wait(wait1)
        SetV2(self,0,angle,true,false)
        task._Wait(wait2)
        do for _=1,10 do
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,ran:Float(1,3),ran:Int(angle-80,angle+80),false,0,true,true)
            last=New(_straight,grain_b,COLOR_BLUE,self.x,self.y,ran:Float(1,3),ran:Int(angle-80,angle+80),false,0,true,true)
            PlaySound("kira00",0.1,self.x/256)
            task._Wait(0)
        end end
        _del(self,true)
    end)
end
_editor_class["Cirno bg"]=Class(_spellcard_background)
_editor_class["Cirno bg"].init=function(self)
    _spellcard_background.init(self)
    _spellcard_background.AddLayer(self,"image:Cirno_bg_mask",true,0,0,0,0,-2,0,"mul+add",1,1,nil,nil)
end
_editor_class["s2e1"]=Class(enemy)
_editor_class["s2e1"].init=function(self,x,y,diff)
    enemy.init(self,6,10,false,true)
    self.x,self.y=x,260
    self.drop={2,1,0}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,90,MOVE_DECEL)
        if diff == 0 then
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,2,0,true,0,true,true)
            task._Wait(45)
        else
        end
        if diff == 1 then
            last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,0,true,0,true,true)
            task._Wait(45)
        else
        end
        if diff == 2 then
            do for _=1,5 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,3,0,true,0,true,true)
                task._Wait(5)
            end end
            task._Wait(20)
        else
        end
        if diff == 3 then
            do local v,_d_v=(4),(-0.3) for _=1,7 do
                last=New(_straight,ball_small,COLOR_GRAY,self.x,self.y,v,0,true,0,true,true)
                task._Wait(3)
            v=v+_d_v end end
        else
        end
        task.MoveTo(x,260,120,MOVE_ACCEL)
    end)
end
_editor_class["s2e2"]=Class(enemy)
_editor_class["s2e2"].init=function(self,x,v,g,vxmax,diff)
    enemy.init(self,5,30,false,true)
    self.x,self.y=x,260
    self.drop={0,1,2}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    self.g = g
    self.vxmax = vxmax
    SetV2(self,v,-90,true,false)
    self.rot = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if math.abs(self.vx) < math.abs(self.vxmax) then
                self.vx = self.vx + g
            else
            end
            if math.mod(inc,45) == 0 and self.y>-50 then
                if diff == 0 then
                    do local a,_d_a=(0),(60) for _=1,6 do
                        last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,3,a,true,0,true,true)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                end
                if diff == 1 then
                    do local a,_d_a=(0),(30) for _=1,12 do
                        last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,3,a,true,0,true,true)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                end
                if diff == 2 then
                    do local a,_d_a=(0),(20) for _=1,18 do
                        last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,3,a,true,0,true,true)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                end
                if diff == 3 then
                    do local a,_d_a=(0),(10) for _=1,36 do
                        last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,3,a,true,0,true,true)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["s2e3"]=Class(enemy)
_editor_class["s2e3"].init=function(self,x,diff)
    enemy.init(self,7,120,false,true)
    self.x,self.y=x,260
    self.drop={4,2,2}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,144,60,MOVE_DECEL)
        if diff == 0 then
            do for _=1,_infinite do
                do local a,_d_a=(-45),(15) for _=1,6 do
                    last=New(_straight,grain_a,COLOR_BLUE,self.x,self.y,2,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(30)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local a,_d_a=(-45),(7.5) for _=1,12 do
                    last=New(_straight,grain_a,COLOR_BLUE,self.x,self.y,2,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(30)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local a,_d_a=(-60),(6.67) for _=1,18 do
                    last=New(_straight,grain_a,COLOR_BLUE,self.x,self.y,2,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(30)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local a,_d_a=(-90),(5) for _=1,36 do
                    last=New(_straight,grain_a,COLOR_BLUE,self.x,self.y,2,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(30)
            end end
        else
        end
    end)
    task.New(self,function()
        task._Wait(480)
        task.MoveTo(x,260,60,MOVE_NORMAL)
    end)
end
_editor_class["s2e4"]=Class(enemy)
_editor_class["s2e4"].init=function(self,x,v,g,vymax,diff)
    enemy.init(self,6,10,false,true)
    self.x,self.y=x,260
    self.drop={2,1,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    self.g = g
    self.vymax = vymax
    SetV2(self,v,0,true,false)
    self.rot = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if math.abs(self.vy) < math.abs(self.vymax) then
                self.vy = self.vy + g
            else
            end
            if math.mod(inc,45) == 0 and self.y>-50 then
                if diff == 0 then
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,3,0,true,0,true,true)
                else
                end
                if diff == 1 then
                    do local v,_d_v=(3),(0.5) for _=1,3 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,v,0,true,0,true,true)
                        task._Wait(2)
                    v=v+_d_v end end
                else
                end
                if diff == 2 then
                    do local v,_d_v=(2.5),(0.5) for _=1,5 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,v,0,true,0,true,true)
                        task._Wait(1)
                    v=v+_d_v end end
                else
                end
                if diff == 3 then
                    do local v,_d_v=(2.5),(0.3) for _=1,8 do
                        last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,v,0,true,0,true,true)
                        task._Wait(1)
                    v=v+_d_v end end
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["s2e5"]=Class(enemy)
_editor_class["s2e5"].init=function(self,x1,y1,x2,y2,clock,diff)
    enemy.init(self,8,150,true,true)
    self.x,self.y=x1,y1
    self.drop={1,2,5}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x2,y2,60,MOVE_DECEL)
        if diff == 0 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(5*clock) for _=1,3 do
                    do local a2,_d_a2=(0),(24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(20)
                do local a1,_d_a1=(0),(-5*clock) for _=1,3 do
                    do local a2,_d_a2=(0),(-24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(20)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(5*clock) for _=1,5 do
                    do local a2,_d_a2=(0),(24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(15)
                do local a1,_d_a1=(0),(-5*clock) for _=1,5 do
                    do local a2,_d_a2=(0),(-24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(15)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(5*clock) for _=1,7 do
                    do local a2,_d_a2=(0),(24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(15)
                do local a1,_d_a1=(0),(-5*clock) for _=1,7 do
                    do local a2,_d_a2=(0),(-24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(15)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(5*clock) for _=1,9 do
                    do local a2,_d_a2=(0),(24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(4)
                a1=a1+_d_a1 end end
                task._Wait(10)
                do local a1,_d_a1=(0),(-5*clock) for _=1,9 do
                    do local a2,_d_a2=(0),(-24*clock) for _=1,15 do
                        last=New(_straight,square,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                        task._Wait(0)
                    a2=a2+_d_a2 end end
                    task._Wait(4)
                a1=a1+_d_a1 end end
                task._Wait(10)
            end end
        else
        end
    end)
    task.New(self,function()
        task._Wait(480)
        task.MoveTo(self.x,260,120,MOVE_NORMAL)
    end)
end
_editor_class["s2e6"]=Class(enemy)
_editor_class["s2e6"].init=function(self,x,y,vx,vy,g,diff)
    enemy.init(self,25,15,false,true)
    self.x,self.y=x,y
    self.drop={0,1,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    self.g = g
    self.vx = vx
    self.vy = vy
    self.rot = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            self.vy = self.vy + g
            if math.mod(inc,45) == 0 and math.abs(self.x)>50 and inc>60 then
                if diff == 0 then
                    last=New(_straight,ball_mid,COLOR_GRAY,self.x,self.y,3,0,true,0,true,true)
                else
                end
                if diff == 1 then
                    do local v,_d_v=(3),(0.5) for _=1,3 do
                        last=New(_straight,ball_mid,COLOR_GRAY,self.x,self.y,v,0,true,0,true,true)
                        task._Wait(2)
                    v=v+_d_v end end
                else
                end
                if diff == 2 then
                    do local v,_d_v=(3),(0.5) for _=1,5 do
                        last=New(_straight,ball_mid,COLOR_GRAY,self.x,self.y,v,0,true,0,true,true)
                        task._Wait(2)
                    v=v+_d_v end end
                else
                end
                if diff == 3 then
                    do local v,_d_v=(3),(0.3) for _=1,9 do
                        do local a,_d_a=(-5),(5) for _=1,3 do
                            last=New(_straight,ball_mid,COLOR_GRAY,self.x,self.y,v,a,true,0,true,true)
                            task._Wait(0)
                        a=a+_d_a end end
                        task._Wait(2)
                    v=v+_d_v end end
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["s2e7"]=Class(enemy)
_editor_class["s2e7"].init=function(self,x,y,diff)
    enemy.init(self,9,300,false,true)
    self.x,self.y=x,260
    self.drop={10,5,10}
    task.New(self,function() self.protect=true task.Wait(60) self.protect=false end)
    task.New(self,function()
        task.MoveTo(x,y,60,MOVE_DECEL)
        if diff == 0 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(20) for _=1,_infinite do
                    do local a2,_d_a2=(-90),(8) for _=1,3 do
                        do local a3,_d_a3=(0),(60) for _=1,6 do
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,a1+a2+a3,false,0,true,true)
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,180-(a1+a2+a3),false,0,true,true)
                            task._Wait(0)
                        a3=a3+_d_a3 end end
                        task._Wait(5)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(0)
            end end
        else
        end
        if diff == 1 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(20) for _=1,_infinite do
                    do local a2,_d_a2=(-90),(8) for _=1,5 do
                        do local a3,_d_a3=(0),(60) for _=1,6 do
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,a1+a2+a3,false,0,true,true)
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,180-(a1+a2+a3),false,0,true,true)
                            task._Wait(0)
                        a3=a3+_d_a3 end end
                        task._Wait(5)
                    a2=a2+_d_a2 end end
                    task._Wait(5)
                a1=a1+_d_a1 end end
                task._Wait(0)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(20) for _=1,_infinite do
                    do local a2,_d_a2=(-90),(6) for _=1,6 do
                        do local a3,_d_a3=(0),(60) for _=1,6 do
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,a1+a2+a3,false,0,true,true)
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,180-(a1+a2+a3),false,0,true,true)
                            task._Wait(0)
                        a3=a3+_d_a3 end end
                        task._Wait(4)
                    a2=a2+_d_a2 end end
                    task._Wait(3)
                a1=a1+_d_a1 end end
                task._Wait(0)
            end end
        else
        end
        if diff == 3 then
            do for _=1,_infinite do
                do local a1,_d_a1=(0),(20) for _=1,_infinite do
                    do local a2,_d_a2=(-90),(6) for _=1,6 do
                        do local a3,_d_a3=(0),(45) for _=1,8 do
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,a1+a2+a3,false,0,true,true)
                            last=New(_straight,square,COLOR_CYAN,self.x,self.y,1.5,180-(a1+a2+a3),false,0,true,true)
                            task._Wait(0)
                        a3=a3+_d_a3 end end
                        task._Wait(4)
                    a2=a2+_d_a2 end end
                    task._Wait(3)
                a1=a1+_d_a1 end end
                task._Wait(0)
            end end
        else
        end
    end)
    task.New(self,function()
        task._Wait(1200)
        task.MoveTo(x,260,60,MOVE_NORMAL)
    end)
end
_editor_class["s2e8"]=Class(enemy)
_editor_class["s2e8"].init=function(self,x,diff)
    enemy.init(self,5,15,false,true)
    self.x,self.y=x,260
    self.drop={0,1,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(ran:Float(-128,128),ran:Float(80,128),90,MOVE_DECEL)
        task._Wait(15)
        if diff == 1 then
            last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,2,0,true,0,true,true)
        else
        end
        if diff == 2 then
            do local v,_d_v=(4),(-0.5) for _=1,6 do
                last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,v,0,true,0,true,true)
                task._Wait(3)
            v=v+_d_v end end
        else
        end
        if diff == 3 then
            do local v,_d_v=(5),(-0.5) for _=1,9 do
                last=New(_straight,grain_b,COLOR_GRAY,self.x,self.y,v,0,true,0,true,true)
                task._Wait(3)
            v=v+_d_v end end
        else
        end
        task.MoveTo(self.x,-260,120,MOVE_NORMAL)
    end)
end
_editor_class["s2e9"]=Class(enemy)
_editor_class["s2e9"].init=function(self,x,diff)
    enemy.init(self,23,10,false,true)
    self.x,self.y=x,ran:Float(80,144)
    self.drop={1,1,1}
    task.New(self,function() self.protect=true task.Wait(1) self.protect=false end)
    task.New(self,function()
        task.MoveTo(-x,self.y,240,MOVE_ACC_DEC)
        _del(self,true)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            if diff == 2 then
                do for _=1,2 do
                    last=New(_straight,ball_big,COLOR_BLUE,self.x,self.y,2,0,true,0,true,true)
                    task._Wait(12)
                end end
            else
            end
            if diff == 3 then
                do for _=1,3 do
                    last=New(_straight,ball_big,COLOR_BLUE,self.x,self.y,2.5,0,true,0,true,true)
                    task._Wait(10)
                end end
            else
            end
            task._Wait(90)
        end end
    end)
end
_LoadImageFromFile('image:'.."Meirin_bg","Meirin_bg.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."Meirin_bg_mask","Meirin_bg_mask.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."meirin_face","meirin_face.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."meirin_face_1","meirin_face_1.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."meirin_face_2","meirin_face_2.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."meirin_face_3","meirin_face_3.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."meirin_face_4","meirin_face_4.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."美铃震波","shockwave.png",true,0,0,false,0)
LoadImageGroupFromFile('anonymous:'.."Meirin.png","Meirin.png",false,4,3,16,16)
_editor_class["美铃  -Easy-"]=Class(boss)
_editor_class["美铃  -Easy-"].cards={}
_editor_class["美铃  -Easy-"].init=function(self)
    boss.init(self,240,-384,"Hong Meirin",self.class.cards,New(_editor_class["Meirin bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Meirin.png"..i end
	self.ani_intv=16
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","Sakuya, Sakuya",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","I can feel the murderous look",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Easy-"].cards,_tmp_sc)
table.insert(_editor_class["美铃  -Easy-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_3","right","who's there, don't make a noise in the corridor",nil)
            boss.dialog.sentence(self,"image:reimu_face_7","left","errr...seems like I woke you up",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","according to the order of sakuya sama, today's KUMAKAN is closed",nil)
            boss.dialog.sentence(self,"image:reimu_face_6","left","looks like this has some relevant with KUMAKAN...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","say not beneficial more, Let's fight",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_3","right","the black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_6","left","hi",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","How did you come in?",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","errrr...that's because you were sleeping...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","Do not play the fool!",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,1.6,angle,20)
            do local a,_d_a=(ran:Float(0,18)),(18) for _=1,20 do
                last=New(_editor_class["小弹-美铃"],self.x,self.y,ran:Float(0.5,3.5),a,-0.02,-3,ran:Int(1,8)*2)
                task._Wait(0)
            a=a+_d_a end end
            if GetGlobal('player_name')=='reimu_player' then
                do local a,_d_a=(-30),(2) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(2,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            else
                do local a,_d_a=(-25),(0.5) for _=1,15 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(2,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                do local a,_d_a=(25),(-0.5) for _=1,15 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("光符「Brilliant Light Gem -Easy-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["美铃face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,2,angle,60)
            do local a,_d_a=(0),(0) for _=1,1 do
                last=New(_editor_class["华光玉-美铃"],self.x,self.y,1,angle+a,5,COLOR_YELLOW,60,30)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_4","right","um、sakuya sama",nil)
            boss.dialog.sentence(self,"image:reimu_face_8","left","wait, listen to me...",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_4","right","um, patchouli sama",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","take your time",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Easy-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Meirin.png","Meirin.png",false,4,3,16,16)
_editor_class["美铃  -Normal-"]=Class(boss)
_editor_class["美铃  -Normal-"].cards={}
_editor_class["美铃  -Normal-"].init=function(self)
    boss.init(self,240,-384,"Hong Meirin",self.class.cards,New(_editor_class["Meirin bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Meirin.png"..i end
	self.ani_intv=16
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","Sakuya, Sakuya",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","I can feel the murderous look",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Normal-"].cards,_tmp_sc)
table.insert(_editor_class["美铃  -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_3","right","who's there, don't make a noise in the corridor",nil)
            boss.dialog.sentence(self,"image:reimu_face_7","left","errr...seems like I woke you up",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","according to the order of sakuya sama, today's KUMAKAN is closed",nil)
            boss.dialog.sentence(self,"image:reimu_face_6","left","looks like this has some relevant with KUMAKAN...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","say not beneficial more, Let's fight",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_3","right","the black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_6","left","hi",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","How did you come in?",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","errrr...that's because you were sleeping...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","Do not play the fool!",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,1.6,angle,20)
            do local a,_d_a=(ran:Float(0,8)),(8) for _=1,45 do
                last=New(_editor_class["小弹-美铃"],self.x,self.y,ran:Float(0.5,3.5),a,-0.02,-3,ran:Int(1,8)*2)
                task._Wait(0)
            a=a+_d_a end end
            if GetGlobal('player_name')=='reimu_player' then
                --[[ 灵梦的情况 --]]
                do local a,_d_a=(-30),(60/60) for _=1,60 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            else
                --[[ 魔理沙的情况 --]]
                do local a,_d_a=(-25),(0.5) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                do local a,_d_a=(25),(-0.5) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("光符「Brilliant Light Gem -Normal-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["美铃face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,2,angle,60)
            do local a,_d_a=(0),(0) for _=1,1 do
                last=New(_editor_class["华光玉-美铃"],self.x,self.y,0.75,angle+a,7,COLOR_YELLOW,60,60)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_4","right","um、sakuya sama",nil)
            boss.dialog.sentence(self,"image:reimu_face_8","left","wait, listen to me...",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_4","right","um, patchouli sama",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","take your time",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Normal-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Meirin.png","Meirin.png",false,4,3,16,16)
_editor_class["美铃  -Hard-"]=Class(boss)
_editor_class["美铃  -Hard-"].cards={}
_editor_class["美铃  -Hard-"].init=function(self)
    boss.init(self,240,-384,"Hong Meirin",self.class.cards,New(_editor_class["Meirin bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Meirin.png"..i end
	self.ani_intv=16
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","Sakuya, Sakuya",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","I can feel the murderous look",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Hard-"].cards,_tmp_sc)
table.insert(_editor_class["美铃  -Hard-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_3","right","who's there, don't make a noise in the corridor",nil)
            boss.dialog.sentence(self,"image:reimu_face_7","left","errr...seems like I woke you up",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","according to the order of sakuya sama, today's KUMAKAN is closed",nil)
            boss.dialog.sentence(self,"image:reimu_face_6","left","looks like this has some relevant with KUMAKAN...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","say not beneficial more, let's fight",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_3","right","the black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_6","left","hi",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","How did you come in?",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","errrr...that's because you were sleeping...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","do not play the fool!",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,1.6,angle,20)
            do local a,_d_a=(ran:Float(0,4)),(4) for _=1,90 do
                last=New(_editor_class["小弹-美铃"],self.x,self.y,ran:Float(0.5,3.5),a,-0.02,-3,ran:Int(1,8)*2)
                task._Wait(0)
            a=a+_d_a end end
            if GetGlobal('player_name')=='reimu_player' then
                --[[ 灵梦的情况 --]]
                do local a,_d_a=(-30),(60/90) for _=1,90 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            else
                --[[ 魔理沙的情况 --]]
                do local a,_d_a=(-25),(0.5) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                do local a,_d_a=(25),(-0.5) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("光符「Brilliant Light Gem -Hard-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["美铃face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,2,angle,60)
            do local a,_d_a=(0),(0) for _=1,1 do
                last=New(_editor_class["华光玉-美铃"],self.x,self.y,0.75,angle+a,9,COLOR_YELLOW,60,90)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_4","right","um、sakuya sama",nil)
            boss.dialog.sentence(self,"image:reimu_face_8","left","wait, listen to me...",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_4","right","um, patchouli sama",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","take your time",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Hard-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Meirin.png","Meirin.png",false,4,3,16,16)
_editor_class["美铃  -Lunatic-"]=Class(boss)
_editor_class["美铃  -Lunatic-"].cards={}
_editor_class["美铃  -Lunatic-"].init=function(self)
    boss.init(self,240,-384,"Hong Meirin",self.class.cards,New(_editor_class["Meirin bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Meirin.png"..i end
	self.ani_intv=16
end
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:reimu_face_4","left","Sakuya, Sakuya",nil)
        else
            boss.dialog.sentence(self,"image:marisa_face_8","left","I can feel the murderous look",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Lunatic-"].cards,_tmp_sc)
table.insert(_editor_class["美铃  -Lunatic-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_3","right","who's there, don't make a noise in the corridor",nil)
            boss.dialog.sentence(self,"image:reimu_face_7","left","errr...seems like I woke you up",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","according to the order of sakuya sama, today's KUMAKAN is closed",nil)
            boss.dialog.sentence(self,"image:reimu_face_6","left","looks like this has some relevant with KUMAKAN...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","say not beneficial more, let's fight",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_3","right","the black one",nil)
            boss.dialog.sentence(self,"image:marisa_face_6","left","hi",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","How did you come in?",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","errrr...that's because you were sleeping...",nil)
            boss.dialog.sentence(self,"image:meirin_face_3","right","do not play the fool!",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,1.6,angle,20)
            do local a,_d_a=(ran:Float(0,3)),(3) for _=1,120 do
                last=New(_editor_class["小弹-美铃"],self.x,self.y,ran:Float(0.5,3.5),a,-0.02,-3,ran:Int(1,8)*2)
                task._Wait(0)
            a=a+_d_a end end
            if GetGlobal('player_name')=='reimu_player' then
                --[[ 灵梦的情况 --]]
                do local a,_d_a=(-30),(60/90) for _=1,90 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            else
                --[[ 魔理沙的情况 --]]
                do local a,_d_a=(-25),(0.5) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                do local a,_d_a=(25),(-0.5) for _=1,30 do
                    last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,5),a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
            end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("光符「Brilliant Light Gem -Lunatic-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["美铃face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        do for _=1,_infinite do
            angle = Angle(self,player)
            task.MoveTo(player.x-50*cos(angle),player.y-50*sin(angle),30,MOVE_NORMAL)
            last=New(_editor_class["震波-美铃"],self.x + 10*cos(angle),self.y + 10*sin(angle),0.5,2,angle,60)
            do local a,_d_a=(0),(0) for _=1,1 do
                last=New(_editor_class["华光玉-美铃"],self.x,self.y,0.5,angle+a,11,COLOR_YELLOW,60,90)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.4,self.x/256)
            task._Wait(45)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["美铃  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        if GetGlobal('player_name')=='reimu_player' then
            boss.dialog.sentence(self,"image:meirin_face_4","right","um、sakuya sama",nil)
            boss.dialog.sentence(self,"image:reimu_face_8","left","wait, listen to me...",nil)
        else
            boss.dialog.sentence(self,"image:meirin_face_4","right","um, patchouli sama",nil)
            boss.dialog.sentence(self,"image:marisa_face_8","left","take your time",nil)
        end
    end)
end
table.insert(_editor_class["美铃  -Lunatic-"].cards,_tmp_sc)
_editor_class["小弹-美铃"]=Class(bullet)
_editor_class["小弹-美铃"].init=function(self,_x,_y,v,angle,g,minvy,color)
    bullet.init(self,ball_small,color,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self.g = g
    self.minvy = minvy
end
_editor_class["小弹-美铃"].frame=function(self)
    if self.vy > self.minvy then
        self.vy = self.vy + self.g
    else
    end
end
_editor_class["震波-美铃"]=Class(_object)
_editor_class["震波-美铃"].init=function(self,_x,_y,hscale,vscale,angle,time)
    self.x,self.y=_x,_y
	self.img="image:美铃震波"
	self.layer=LAYER_BG+1
	self.group=GROUP_GHOST
	self.hide=false
	self.bound=false
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.vscale = 0
    self.hscale = 0
    self.angle = angle
    SetV2(self,0,angle,true,false)
    task.New(self,function()
        task._Wait(time)
        _del(self,true)
    end)
    task.New(self,function()
        do for _=1,time do
            self.vscale = self.vscale + vscale/time
            self.hscale = self.hscale + hscale/time
            task._Wait(1)
        end end
    end)
end
_editor_class["美铃face"]=Class(_object)
_editor_class["美铃face"].init=function(self,_x,_y,v,vs,hs)
    self.x,self.y=_x,_y
	self.img="image:meirin_face"
	self.layer=LAYER_TOP
	self.group=GROUP_GHOST
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.vscale = vs
    self.hscale = hs
    self._a = 105
    SetV2(self,0,0,false,false)
    task.New(self,function()
        task._Wait(60)
        SetV2(self,v,90,false,false)
    end)
end
_editor_class["美铃face"].render=function(self)
    SetImgState(self,"",self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["华光玉-美铃"]=Class(bullet)
_editor_class["华光玉-美铃"].init=function(self,_x,_y,v,angle,scale,color,time,num)
    bullet.init(self,ball_big,COLOR_RED,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self._a = 225
    self._blend = "mul+add"
    self.scale = scale
    self.time = time
    self.oa = self.a
    self.ob = self.b
    self.num = num
end
_editor_class["华光玉-美铃"].frame=function(self)
    if self.vscale < self.scale then
        self.vscale = self.vscale + self.scale/self.time
        self.hscale = self.hscale + self.scale/self.time
        self.a = self.oa * (self.hscale + self.scale/self.time)
        self.b = self.ob * (self.hscale + self.scale/self.time)
    else
    end
    if self.y < -224 or self.y >224 or self.x <-192 or self.x >192 then
        do local a,_d_a=(ran:Float(0,self.num)),(360/self.num) for _=1,self.num do
            last=New(_straight,grain_b,ran:Int(1,8)*2,self.x,self.y,ran:Float(1,3),a,false,0,true,true)
        a=a+_d_a end end
        _del(self,true)
    else
    end
    self.class.base.frame(self)
end
_editor_class["华光玉-美铃"].render=function(self)
    SetImgState(self,self._blend,self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["Meirin bg"]=Class(_spellcard_background)
_editor_class["Meirin bg"].init=function(self)
    _spellcard_background.init(self)
    _spellcard_background.AddLayer(self,"image:Meirin_bg_mask",false,0,0,0,0,0,-1,"",2.3,2.3,nil,nil)
    _spellcard_background.AddLayer(self,"image:Meirin_bg",false,0,0,0,0,0,0,"",2,2,nil,nil)
end
_LoadImageFromFile('image:'.."sakuya_face","sakuya_face.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_1","sakuya_face_1.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_2","sakuya_face_2.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_3","sakuya_face_3.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_4","sakuya_face_4.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_5","sakuya_face_5.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_6","sakuya_face_6.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_7","sakuya_face_7.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."sakuya_face_8","sakuya_face_8.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."patchouli_face","patchouli_face.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."patchouli_face_1","patchouli_face_1.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."patchouli_face_2","patchouli_face_2.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."patchouli_face_3","patchouli_face_3.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."patchouli_face_4","patchouli_face_4.png",true,0,0,false,1)
_LoadImageFromFile('image:'.."Sakuya_bg","Sakuya_bg.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."Sakuya_bg_mask","Sakuya_bg_mask.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."Patchouli_bg","Patchouli_bg.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."Patchouli_bg_mask","Patchouli_bg_mask.png",true,0,0,false,0)
_LoadImageFromFile('image:'.."魔法阵","magic.png",true,0,0,false,0)
LoadImageGroupFromFile('anonymous:'.."Sakuya.png","Sakuya.png",false,4,3,16,16)
_editor_class["咲夜  -Easy-"]=Class(boss)
_editor_class["咲夜  -Easy-"].cards={}
_editor_class["咲夜  -Easy-"].init=function(self)
    boss.init(self,240,384,"Izayoi Sakuya",self.class.cards,New(_editor_class["Sakuya bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Sakuya.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["咲夜  -Easy-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_3","right","reimu san, what can I do for you?",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","I have something to confirm...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_4","right","so what Merin said is true?",nil)
        boss.dialog.sentence(self,"image:reimu_face_7","left","wait, I haven't say anything...",nil)
        _stop_music()
        _play_music("Sakuya_bgm")
        boss.dialog.sentence(self,"image:sakuya_face_4","right","please return",nil)
    end)
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,15 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,5)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(110)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻幽「Hysteria Jack -Easy-」",2,2,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 60
    local angle = 45
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["中速敏锐的青匕首"],self.x-r*sin(angle),self.y+r*sin(angle),3,120,60,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x-r*sin(angle),self.y+r*sin(angle),_)
        last=New(_editor_class["慢速稳重的黄匕首"],self.x,self.y+r,1,120,105,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x,self.y+r,_)
        last=New(_editor_class["快速急切的红匕首"],self.x+r*sin(angle),self.y+r*sin(angle),4,120,45,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x+r*sin(angle),self.y+r*sin(angle),_)
        PlaySound("tan00",0.7,self.x/256)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,30,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,30,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(18) for _=1,20 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.1,self.x/256)
            task._Wait(45)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻葬「夜霧の幻影殺人鬼 -Easy-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 200
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360)),(6) for _=1,25 do
                last=New(_editor_class["红色无判定激光"],self.x-r*cos(a),self.y-r*sin(a),a)
                PlaySound("lazer01",0.5,self.x/256)
                task._Wait(2)
            a=a+_d_a end end
            task._Wait(200)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,15 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,a2/90+3)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(110)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("傷魂「Eiserne Jungfrau -Easy-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local inc = 1
    local vtheta = 0.5
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        local a_player = 0
        do for _=1,_infinite do
            a_player = Angle(self,player)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+30,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-30,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_straight,knife,COLOR_PURPLE,self.x,self.y,3,a,false,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_straight,knife,COLOR_PURPLE,self.x,self.y,3,a,false,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_straight,knife,COLOR_PURPLE,self.x,self.y,3,a,false,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveToPlayer(60)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,30,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,30,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do for _=1,1 do
                do local a,_d_a=(0),(24) for _=1,15 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,5)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(60)
            end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("秘技「Knife Prophecy -Easy-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local v = 3
    local r = 120
    local aim = true
    --[[ 圆圈追踪弹是否追踪 --]]
    task.New(self,function()
        do for _=1,_infinite do
            if KeyIsDown'up' then
                do local a,_d_a=(60),(6) for _=1,10 do
                    last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
            else
                if KeyIsDown'left' then
                    do local a,_d_a=(150),(6) for _=1,10 do
                        last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    if KeyIsDown'down' then
                        do local a,_d_a=(240),(6) for _=1,10 do
                            last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                            PlaySound("tan00",0.1,self.x/256)
                            task._Wait(0)
                        a=a+_d_a end end
                    else
                        if KeyIsDown'right' then
                            do local a,_d_a=(330),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        else
                            do local a,_d_a=(ran:Int(0,3)*90+60),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        end
                    end
                end
            end
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        do local a1,_d_a1=(0),(5) for _=1,_infinite do
            do local a2,_d_a2=(0),(15) for _=1,24 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a1+a2,true,0,true,true)
                task._Wait(0)
            a2=a2+_d_a2 end end
            task._Wait(90)
        a1=a1+_d_a1 end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻惑「Clock Phantom -Easy-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local diff = 0
    --[[ 难度变量 --]]
    local r = 200
    local angle_inc = 30
    local r1 = 10
    local wait = 120
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
    end)
    task.New(self,function()
        do local a,_d_a=(90),(-3) for _=1,90 do
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,a,false,0,true,true)
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,90,false,0,true,true)
            task._Wait(2)
        a=a+_d_a end end
        task._Wait(30+wait+90)
        do local ds,_d_ds=(0),(15) for _=1,_infinite do
            if math.mod(ds,225) == 30  or math.mod(ds,225) == 60 or math.mod(ds,225) == 90 then
                do local a,_d_a=(0),(60) for _=1,6 do
                    last=New(_straight,knife,COLOR_YELLOW,self.x,self.y,3,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if ds == 225 then
                ds = 0
            else
            end
            task._Wait(15)
        ds=ds+_d_ds end end
    end)
    task.New(self,function()
        task._Wait(180)
        do for _=1,_infinite do
            do local a,_d_a=(90),(12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a+angle_inc,30,angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            do local a,_d_a=(90),(-12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a-angle_inc,30,-angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(180)
        last=New(_editor_class["秒针"],self.x,self.y,-2,90,180,0,wait)
    end)
    task.New(self,function()
        task._Wait(210)
        if diff == 0 then
            do local d,_d_d=(10),(20) for _=1,5 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+50)*cos(a),self.y+(r1+50)*sin(a),1,a+90,a+90,r1+50,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(110),(20) for _=1,4 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+140)*cos(a),self.y+(r1+140)*sin(a),-1,a-90,a+90,r1+140,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 1 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 2 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(45) for _=1,8 do
                    last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 3 then
            do local d,_d_d=(10),(20) for _=1,10 do
                if math.mod(d-10,80) == 0 or math.mod(d-10,80) == 20 then
                    do local a,_d_a=(1),(45) for _=1,8 do
                        last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    do local a,_d_a=(0),(45) for _=1,8 do
                        last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+100)*cos(a),self.y+(r1+100)*sin(a),-1,a-90,a+90,r1+100,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+60)*cos(a),self.y+(r1+60)*sin(a),1,a+90,a+90,r1+60,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_6","right","um...",nil)
        boss.dialog.sentence(self,"image:reimu_face_8","left","listen, I just want to confirm something...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","indeed, so want do you want to know",nil)
        boss.dialog.sentence(self,"image:reimu_face_6","left","Did you know this thing?",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","hmmm, I rememner I've seen this at HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","HAKUGYOKUROU? looks like there is a need to go to there",nil)
    end)
end
table.insert(_editor_class["咲夜  -Easy-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Sakuya.png","Sakuya.png",false,4,3,16,16)
_editor_class["咲夜  -Normal-"]=Class(boss)
_editor_class["咲夜  -Normal-"].cards={}
_editor_class["咲夜  -Normal-"].init=function(self)
    boss.init(self,240,384,"Izayoi Sakuya",self.class.cards,New(_editor_class["Sakuya bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Sakuya.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["咲夜  -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_3","right","reimu san, what can I do for you?",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","I have something to confirm...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_4","right","so what Merin said is true?",nil)
        boss.dialog.sentence(self,"image:reimu_face_7","left","wait, I haven't say anything...",nil)
        _stop_music()
        _play_music("Sakuya_bgm")
        boss.dialog.sentence(self,"image:sakuya_face_4","right","please return",nil)
    end)
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,20 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,5)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(85)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻幽「Hysteria Jack -Normal-」",15,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 60
    local angle = 45
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["中速敏锐的青匕首"],self.x-r*sin(angle),self.y+r*sin(angle),4,120,45,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x-r*sin(angle),self.y+r*sin(angle),_)
        last=New(_editor_class["慢速稳重的黄匕首"],self.x,self.y+r,2,120,90,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x,self.y+r,_)
        last=New(_editor_class["快速急切的红匕首"],self.x+r*sin(angle),self.y+r*sin(angle),6,120,30,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x+r*sin(angle),self.y+r*sin(angle),_)
        PlaySound("tan00",0.7,self.x/256)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,20,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,20,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(12) for _=1,30 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.1,self.x/256)
            task._Wait(30)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻葬「夜霧の幻影殺人鬼 -Normal-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 200
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360)),(6) for _=1,25 do
                last=New(_editor_class["红色无判定激光"],self.x-r*cos(a),self.y-r*sin(a),a)
                PlaySound("lazer01",0.5,self.x/256)
                task._Wait(2)
            a=a+_d_a end end
            task._Wait(200)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,45)),(45) for _=1,8 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,2,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,20 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,a2/90+2)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(85)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("傷魂「Eiserne Jungfrau -Normal-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local inc = 1
    local vtheta = 0.5
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        local a_player = 0
        do for _=1,_infinite do
            a_player = Angle(self,player)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+30,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-30,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,6)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,6)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,6)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveToPlayer(60)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,20,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,20,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do for _=1,5 do
                do local a,_d_a=(0),(24) for _=1,15 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,5)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(30)
            end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("秘技「Knife Prophecy -Normal-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local v = 3
    local r = 120
    local aim = true
    --[[ 圆圈追踪弹是否追踪 --]]
    task.New(self,function()
        do for _=1,_infinite do
            if KeyIsDown'up' then
                do local a,_d_a=(60),(6) for _=1,10 do
                    last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
            else
                if KeyIsDown'left' then
                    do local a,_d_a=(150),(6) for _=1,10 do
                        last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    if KeyIsDown'down' then
                        do local a,_d_a=(240),(6) for _=1,10 do
                            last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                            PlaySound("tan00",0.1,self.x/256)
                            task._Wait(0)
                        a=a+_d_a end end
                    else
                        if KeyIsDown'right' then
                            do local a,_d_a=(330),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        else
                            do local a,_d_a=(ran:Int(0,3)*90+60),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        end
                    end
                end
            end
            task._Wait(90)
        end end
    end)
    task.New(self,function()
        do local a1,_d_a1=(0),(5) for _=1,_infinite do
            do local a2,_d_a2=(0),(15) for _=1,24 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a1+a2,true,0,true,true)
                task._Wait(0)
            a2=a2+_d_a2 end end
            task._Wait(60)
        a1=a1+_d_a1 end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻惑「Clock Phantom -Normal-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local diff = 1
    --[[ 难度变量 --]]
    local r = 200
    local angle_inc = 30
    local r1 = 10
    local wait = 120
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
    end)
    task.New(self,function()
        do local a,_d_a=(90),(-3) for _=1,90 do
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,a,false,0,true,true)
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,90,false,0,true,true)
            task._Wait(2)
        a=a+_d_a end end
        task._Wait(30+wait+90)
        do local ds,_d_ds=(0),(15) for _=1,_infinite do
            if math.mod(ds,225) == 30  or math.mod(ds,225) == 60 or math.mod(ds,225) == 90 then
                do local a,_d_a=(0),(60) for _=1,6 do
                    last=New(_straight,knife,COLOR_YELLOW,self.x,self.y,3,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if ds == 225 then
                ds = 0
            else
            end
            task._Wait(15)
        ds=ds+_d_ds end end
    end)
    task.New(self,function()
        task._Wait(180)
        do for _=1,_infinite do
            do local a,_d_a=(90),(12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a+angle_inc,30,angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            do local a,_d_a=(90),(-12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a-angle_inc,30,-angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(180)
        last=New(_editor_class["秒针"],self.x,self.y,-2,90,180,0,wait)
    end)
    task.New(self,function()
        task._Wait(210)
        if diff == 0 then
            do local d,_d_d=(10),(20) for _=1,5 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+50)*cos(a),self.y+(r1+50)*sin(a),1,a+90,a+90,r1+50,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(110),(20) for _=1,4 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+140)*cos(a),self.y+(r1+140)*sin(a),-1,a-90,a+90,r1+140,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 1 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 2 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(45) for _=1,8 do
                    last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 3 then
            do local d,_d_d=(10),(20) for _=1,10 do
                if math.mod(d-10,80) == 0 or math.mod(d-10,80) == 20 then
                    do local a,_d_a=(1),(45) for _=1,8 do
                        last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    do local a,_d_a=(0),(45) for _=1,8 do
                        last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+100)*cos(a),self.y+(r1+100)*sin(a),-1,a-90,a+90,r1+100,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+60)*cos(a),self.y+(r1+60)*sin(a),1,a+90,a+90,r1+60,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_6","right","um...",nil)
        boss.dialog.sentence(self,"image:reimu_face_8","left","listen, I just want to confirm something...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","indeed, so want do you want to know",nil)
        boss.dialog.sentence(self,"image:reimu_face_6","left","Did you know this thing?",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","hmmm, I rememner I've seen this at HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","HAKUGYOKUROU? looks like there is a need to go to there",nil)
    end)
end
table.insert(_editor_class["咲夜  -Normal-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Sakuya.png","Sakuya.png",false,4,3,16,16)
_editor_class["咲夜  -Hard-"]=Class(boss)
_editor_class["咲夜  -Hard-"].cards={}
_editor_class["咲夜  -Hard-"].init=function(self)
    boss.init(self,240,384,"Izayoi Sakuya",self.class.cards,New(_editor_class["Sakuya bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Sakuya.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["咲夜  -Hard-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_3","right","reimu san, what can I do for you?",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","I have something to confirm...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_4","right","so what Merin said is true?",nil)
        boss.dialog.sentence(self,"image:reimu_face_7","left","wait, I haven't say anything...",nil)
        _stop_music()
        _play_music("Sakuya_bgm")
        boss.dialog.sentence(self,"image:sakuya_face_4","right","please return",nil)
    end)
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,20 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,7)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻幽「Hysteria Jack -Hard-」",15,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 60
    local angle = 45
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["中速敏锐的青匕首"],self.x-r*sin(angle),self.y+r*sin(angle),4,120,45,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x-r*sin(angle),self.y+r*sin(angle),_)
        last=New(_editor_class["慢速稳重的黄匕首"],self.x,self.y+r,2,120,90,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x,self.y+r,_)
        last=New(_editor_class["快速急切的红匕首"],self.x+r*sin(angle),self.y+r*sin(angle),6,120,30,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x+r*sin(angle),self.y+r*sin(angle),_)
        PlaySound("tan00",0.7,self.x/256)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,15,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,15,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(12) for _=1,30 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.1,self.x/256)
            task._Wait(20)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻葬「夜霧の幻影殺人鬼 -Hard-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 200
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360)),(6) for _=1,50 do
                last=New(_editor_class["红色无判定激光"],self.x-r*cos(a),self.y-r*sin(a),a)
                PlaySound("lazer01",0.5,self.x/256)
                task._Wait(2)
            a=a+_d_a end end
            task._Wait(200)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,45)),(45) for _=1,8 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,2,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(50)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,20 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,a2/90+1)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("傷魂「Eiserne Jungfrau -Hard-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local inc = 1
    local vtheta = 0.5
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        local a_player = 0
        do for _=1,_infinite do
            a_player = Angle(self,player)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+30,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-30,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,5)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+15,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-45,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,5)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+45,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-15,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,5)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveToPlayer(60)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,15,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,15,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do for _=1,10 do
                do local a,_d_a=(0),(24) for _=1,15 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,7)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(20)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("秘技「Knife Prophecy -Hard-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local v = 3
    local r = 120
    local aim = true
    --[[ 圆圈追踪弹是否追踪 --]]
    task.New(self,function()
        do for _=1,_infinite do
            if KeyIsDown'up' then
                do local a,_d_a=(60),(6) for _=1,10 do
                    last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
            else
                if KeyIsDown'left' then
                    do local a,_d_a=(150),(6) for _=1,10 do
                        last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    if KeyIsDown'down' then
                        do local a,_d_a=(240),(6) for _=1,10 do
                            last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                            PlaySound("tan00",0.1,self.x/256)
                            task._Wait(0)
                        a=a+_d_a end end
                    else
                        if KeyIsDown'right' then
                            do local a,_d_a=(330),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        else
                            do local a,_d_a=(ran:Int(0,3)*90+60),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        end
                    end
                end
            end
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        do local a1,_d_a1=(0),(5) for _=1,_infinite do
            do local a2,_d_a2=(0),(15) for _=1,24 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a1+a2,true,0,true,true)
                task._Wait(0)
            a2=a2+_d_a2 end end
            task._Wait(45)
        a1=a1+_d_a1 end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻惑「Clock Phantom -Hard-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local diff = 2
    --[[ 难度变量 --]]
    local r = 200
    local angle_inc = 30
    local r1 = 10
    local wait = 120
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
    end)
    task.New(self,function()
        do local a,_d_a=(90),(-3) for _=1,90 do
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,a,false,0,true,true)
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,90,false,0,true,true)
            task._Wait(2)
        a=a+_d_a end end
        task._Wait(30+wait+90)
        do local ds,_d_ds=(0),(15) for _=1,_infinite do
            if math.mod(ds,225) == 30  or math.mod(ds,225) == 60 or math.mod(ds,225) == 90 then
                do local a,_d_a=(0),(60) for _=1,6 do
                    last=New(_straight,knife,COLOR_YELLOW,self.x,self.y,3,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if ds == 225 then
                ds = 0
            else
            end
            task._Wait(15)
        ds=ds+_d_ds end end
    end)
    task.New(self,function()
        task._Wait(180)
        do for _=1,_infinite do
            do local a,_d_a=(90),(12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a+angle_inc,30,angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            do local a,_d_a=(90),(-12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a-angle_inc,30,-angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(180)
        last=New(_editor_class["秒针"],self.x,self.y,-2,90,180,0,wait)
    end)
    task.New(self,function()
        task._Wait(210)
        if diff == 0 then
            do local d,_d_d=(10),(20) for _=1,5 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+50)*cos(a),self.y+(r1+50)*sin(a),1,a+90,a+90,r1+50,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(110),(20) for _=1,4 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+140)*cos(a),self.y+(r1+140)*sin(a),-1,a-90,a+90,r1+140,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 1 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 2 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(45) for _=1,8 do
                    last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 3 then
            do local d,_d_d=(10),(20) for _=1,10 do
                if math.mod(d-10,80) == 0 or math.mod(d-10,80) == 20 then
                    do local a,_d_a=(1),(45) for _=1,8 do
                        last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    do local a,_d_a=(0),(45) for _=1,8 do
                        last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+100)*cos(a),self.y+(r1+100)*sin(a),-1,a-90,a+90,r1+100,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+60)*cos(a),self.y+(r1+60)*sin(a),1,a+90,a+90,r1+60,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_6","right","um...",nil)
        boss.dialog.sentence(self,"image:reimu_face_8","left","listen, I just want to confirm something...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","indeed, so want do you want to know",nil)
        boss.dialog.sentence(self,"image:reimu_face_6","left","Did you know this thing?",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","hmmm, I rememner I've seen this at HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","HAKUGYOKUROU? looks like there is a need to go to there",nil)
    end)
end
table.insert(_editor_class["咲夜  -Hard-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Sakuya.png","Sakuya.png",false,4,3,16,16)
_editor_class["咲夜  -Lunatic-"]=Class(boss)
_editor_class["咲夜  -Lunatic-"].cards={}
_editor_class["咲夜  -Lunatic-"].init=function(self)
    boss.init(self,240,384,"Izayoi Sakuya",self.class.cards,New(_editor_class["Sakuya bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Sakuya.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_3","right","reimu san, what can I do for you?",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","I have something to confirm...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_4","right","so what Merin said is true?",nil)
        boss.dialog.sentence(self,"image:reimu_face_7","left","wait, I haven't say anything...",nil)
        _stop_music()
        _play_music("Sakuya_bgm")
        boss.dialog.sentence(self,"image:sakuya_face_4","right","please return",nil)
    end)
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,150,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,20 do
                do local a2,_d_a2=(0),(90) for _=1,4 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,7)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻幽「Hysteria Jack -Lunatic-」",15,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 60
    local angle = 45
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["中速敏锐的青匕首"],self.x-r*sin(angle),self.y+r*sin(angle),5,120,45,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x-r*sin(angle),self.y+r*sin(angle),_)
        last=New(_editor_class["慢速稳重的黄匕首"],self.x,self.y+r,2.25,120,90,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x,self.y+r,_)
        last=New(_editor_class["快速急切的红匕首"],self.x+r*sin(angle),self.y+r*sin(angle),7,120,30,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x+r*sin(angle),self.y+r*sin(angle),_)
        PlaySound("tan00",0.7,self.x/256)
    end)
    task.New(self,function()
        task._Wait(600)
        last=New(_editor_class["中速敏锐的青匕首"],self.x-r*sin(angle),self.y+r*sin(angle),5,120,45,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x-r*sin(angle),self.y+r*sin(angle),_)
        last=New(_editor_class["慢速稳重的黄匕首"],self.x,self.y+r,2.5,120,90,60,-90,2)
        last=New(_editor_class["effect雾2"],self.x,self.y+r,_)
        last=New(_editor_class["快速急切的红匕首"],self.x+r*sin(angle),self.y+r*sin(angle),7,120,30,60,-90,1)
        last=New(_editor_class["effect雾2"],self.x+r*sin(angle),self.y+r*sin(angle),_)
        PlaySound("tan00",0.7,self.x/256)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,10,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,10,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(0),(9) for _=1,40 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a,true,0,true,true)
                task._Wait(0)
            a=a+_d_a end end
            PlaySound("tan00",0.1,self.x/256)
            task._Wait(20)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻葬「夜霧の幻影殺人鬼 -Lunatic-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local r = 200
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360)),(6) for _=1,50 do
                last=New(_editor_class["红色无判定激光"],self.x-r*cos(a),self.y-r*sin(a),a)
                PlaySound("lazer01",0.5,self.x/256)
                task._Wait(2)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
    task.New(self,function()
        task._Wait(60)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,45)),(45) for _=1,8 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,2,a,false,0,true,true)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(50)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a1,_d_a1=(0),(32) for _=1,20 do
                do local a2,_d_a2=(0),(72) for _=1,5 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a1+a2,a2/72+1)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(6)
            a1=a1+_d_a1 end end
            task._Wait(75)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("傷魂「Eiserne Jungfrau -Lunatic-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local inc = 1
    local vtheta = 0.5
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        local a_player = 0
        do for _=1,_infinite do
            a_player = Angle(self,player)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+30,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-30,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+33,vtheta+0.05,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-33,vtheta+0.05,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+36,vtheta+0.1,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-36,vtheta+0.1,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+39,vtheta+0.15,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-39,vtheta+0.15,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,6)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+15,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-45,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+18,vtheta+0.05,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-48,vtheta+0.05,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+21,vtheta+0.1,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-51,vtheta+0.1,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+24,vtheta+0.15,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-54,vtheta+0.15,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,6)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(45)
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+45,vtheta,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-15,vtheta,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+48,vtheta+0.05,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-18,vtheta+0.05,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+51,vtheta+0.1,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-21,vtheta+0.1,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local v,_d_v=(0.1),(0.5*inc) for _=1,15/inc do
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player+54,vtheta+0.15,-1,self.x,self.y,60,60,60)
                last=New(_editor_class["铁匕首-咲夜"],self.x,self.y,v,a_player-24,vtheta+0.15,1,self.x,self.y,60,60,60)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            v=v+_d_v end end
            do local a,_d_a=(ran:Float(0,30)),(30) for _=1,12 do
                last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,6)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
    task.New(self,function()
        task._Wait(120)
        do for _=1,_infinite do
            task.MoveToPlayer(60)
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,60,300,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        last=New(_editor_class["魔法阵"],self.x,self.y,3,0,45,10,20)
        last=New(_editor_class["魔法阵"],self.x,self.y,-3,0,45,10,20)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do for _=1,10 do
                do local a,_d_a=(0),(24) for _=1,15 do
                    last=New(_editor_class["反弹匕首"],self.x,self.y,3,a,7)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(20)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("秘技「Knife Prophecy -Lunatic-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local v = 3
    local r = 120
    local aim = false
    --[[ 圆圈追踪弹是否追踪 --]]
    task.New(self,function()
        do for _=1,_infinite do
            if KeyIsDown'up' then
                do local a,_d_a=(60),(6) for _=1,10 do
                    last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                    PlaySound("tan00",0.1,self.x/256)
                    task._Wait(0)
                a=a+_d_a end end
            else
                if KeyIsDown'left' then
                    do local a,_d_a=(150),(6) for _=1,10 do
                        last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                        PlaySound("tan00",0.1,self.x/256)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    if KeyIsDown'down' then
                        do local a,_d_a=(240),(6) for _=1,10 do
                            last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                            PlaySound("tan00",0.1,self.x/256)
                            task._Wait(0)
                        a=a+_d_a end end
                    else
                        if KeyIsDown'right' then
                            do local a,_d_a=(330),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        else
                            do local a,_d_a=(ran:Int(0,3)*90+60),(6) for _=1,10 do
                                last=New(_editor_class["圆圈追踪匕首"],math.min(200,math.max(-200,lstg.player.x+r*cos(a))),math.min(232,math.max(-232,lstg.player.y+r*sin(a))),0,a+180,60,v,aim)
                                PlaySound("tan00",0.1,self.x/256)
                                task._Wait(0)
                            a=a+_d_a end end
                        end
                    end
                end
            end
            task._Wait(30)
        end end
    end)
    task.New(self,function()
        do local a1,_d_a1=(0),(5) for _=1,_infinite do
            do local a2,_d_a2=(0),(15) for _=1,24 do
                last=New(_straight,knife,COLOR_BLUE,self.x,self.y,3,a1+a2,true,0,true,true)
                task._Wait(0)
            a2=a2+_d_a2 end end
            task._Wait(45)
        a1=a1+_d_a1 end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("幻惑「Clock Phantom -Lunatic-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["咲夜face"],75,-75,2,0.75,0.75)
    local diff = 3
    --[[ 难度变量 --]]
    local r = 200
    local angle_inc = 30
    local r1 = 10
    local wait = 120
    task.New(self,function()
        task.MoveTo(0,0,60,MOVE_NORMAL)
    end)
    task.New(self,function()
        do local a,_d_a=(90),(-3) for _=1,90 do
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,a,false,0,true,true)
            last=New(_straight,knife,COLOR_BLUE,self.x,self.y,5,90,false,0,true,true)
            task._Wait(2)
        a=a+_d_a end end
        task._Wait(30+wait+90)
        do local ds,_d_ds=(0),(15) for _=1,_infinite do
            if math.mod(ds,225) == 30  or math.mod(ds,225) == 60 or math.mod(ds,225) == 90 then
                do local a,_d_a=(0),(60) for _=1,6 do
                    last=New(_straight,knife,COLOR_YELLOW,self.x,self.y,3,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                PlaySound("tan00",0.1,self.x/256)
            else
            end
            if ds == 225 then
                ds = 0
            else
            end
            task._Wait(15)
        ds=ds+_d_ds end end
    end)
    task.New(self,function()
        task._Wait(180)
        do for _=1,_infinite do
            do local a,_d_a=(90),(12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a+angle_inc,30,angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            do local a,_d_a=(90),(-12) for _=1,30 do
                last=New(_editor_class["延长的蓝色小刀"],self.x+r*cos(a),self.y+r*sin(a),a,2,a-angle_inc,30,-angle_inc)
                task._Wait(1)
            a=a+_d_a end end
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(180)
        last=New(_editor_class["秒针"],self.x,self.y,-2,90,180,0,wait)
    end)
    task.New(self,function()
        task._Wait(210)
        if diff == 0 then
            do local d,_d_d=(10),(20) for _=1,5 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+50)*cos(a),self.y+(r1+50)*sin(a),1,a+90,a+90,r1+50,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(110),(20) for _=1,4 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+140)*cos(a),self.y+(r1+140)*sin(a),-1,a-90,a+90,r1+140,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 1 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(90) for _=1,4 do
                    last=New(_editor_class["指针顺时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(90) for _=1,4 do
                last=New(_editor_class["指针顺时针匕首"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(90) for _=1,4 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(90) for _=1,4 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 2 then
            do local d,_d_d=(10),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+30)*cos(a),self.y+(r1+30)*sin(a),1,a+90,a+90,r1+30,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(70),(20) for _=1,3 do
                do local a,_d_a=(1),(45) for _=1,8 do
                    last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+90)*cos(a),self.y+(r1+90)*sin(a),-1,a-90,a+90,r1+90,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local d,_d_d=(130),(20) for _=1,3 do
                do local a,_d_a=(0),(45) for _=1,8 do
                    last=New(_editor_class["指针逆时针匕首"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首"],self.x+(r1+150)*cos(a),self.y+(r1+150)*sin(a),1,a+90,a+90,r1+150,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
        if diff == 3 then
            do local d,_d_d=(10),(20) for _=1,10 do
                if math.mod(d-10,80) == 0 or math.mod(d-10,80) == 20 then
                    do local a,_d_a=(1),(45) for _=1,8 do
                        last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),-1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    do local a,_d_a=(0),(45) for _=1,8 do
                        last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+d)*cos(a),self.y+(r1+d)*sin(a),1,a,a+90,r1+d,wait)
                        task._Wait(0)
                    a=a+_d_a end end
                end
                task._Wait(0)
            d=d+_d_d end end
            do local a,_d_a=(1),(45) for _=1,8 do
                last=New(_editor_class["指针顺时针匕首 -Hard-"],self.x+(r1+100)*cos(a),self.y+(r1+100)*sin(a),-1,a-90,a+90,r1+100,wait)
                task._Wait(0)
            a=a+_d_a end end
            do local a,_d_a=(0),(45) for _=1,8 do
                last=New(_editor_class["指针逆时针匕首 -Lunatic-"],self.x+(r1+60)*cos(a),self.y+(r1+60)*sin(a),1,a+90,a+90,r1+60,wait)
                task._Wait(0)
            a=a+_d_a end end
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:sakuya_face_6","right","um...",nil)
        boss.dialog.sentence(self,"image:reimu_face_8","left","listen, I just want to confirm something...",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","indeed, so want do you want to know",nil)
        boss.dialog.sentence(self,"image:reimu_face_6","left","Did you know this thing?",nil)
        boss.dialog.sentence(self,"image:sakuya_face_8","right","hmmm, I rememner I've seen this at HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:reimu_face_1","left","HAKUGYOKUROU? looks like there is a need to go to there",nil)
    end)
end
table.insert(_editor_class["咲夜  -Lunatic-"].cards,_tmp_sc)
_editor_class["咲夜face"]=Class(_object)
_editor_class["咲夜face"].init=function(self,_x,_y,v,vs,hs)
    self.x,self.y=_x,_y
	self.img="image:sakuya_face"
	self.layer=LAYER_TOP
	self.group=GROUP_GHOST
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.vscale = vs
    self.hscale = hs
    self._a = 105
    SetV2(self,0,0,false,false)
    task.New(self,function()
        task._Wait(60)
        SetV2(self,v,90,false,false)
    end)
end
_editor_class["咲夜face"].render=function(self)
    SetImgState(self,"",self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["反弹匕首"]=Class(bullet)
_editor_class["反弹匕首"].init=function(self,_x,_y,v,angle,vaim)
    bullet.init(self,knife,COLOR_BLUE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        do for _=1,_infinite do
            if self.y > 224 then
                last=New(_straight,knife,COLOR_YELLOW,self.x,448 - self.y,vaim,0,true,0,true,true)
                _del(self,true)
            else
            end
            if self.x > 192 and self.y > 0 then
                last=New(_straight,knife,COLOR_YELLOW,384 - self.x,self.y,vaim,0,true,0,true,true)
                _del(self,true)
            else
            end
            if self.x < -192 and self.y > 0 then
                last=New(_straight,knife,COLOR_YELLOW,-384 - self.x,self.y,vaim,0,true,0,true,true)
                _del(self,true)
            else
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["反弹匕首"].render=function(self)
    SetImgState(self,"",255,255,255,255)
    self.class.base.render(self)
end
_editor_class["弦曲线轨迹正向匕首"]=Class(bullet)
_editor_class["弦曲线轨迹正向匕首"].init=function(self,_x,_y,v,d,angle,time)
    bullet.init(self,knife,COLOR_CYAN,true,true)
    self.x,self.y=_x,_y
    self.navi = true
    dx = self.x
    dy = self.y
    local sy = 0
    local sx = 0
    task.New(self,function()
        do for _=1,_infinite do
            if self.timer > time then
                SetV2(self,5,self.rot,true,false)
            else
                sx = v*self.timer
                sy = d * sin(sx*4)
                self.x = math.sqrt(sx*sx+sy*sy) * cos(angle + math.atan(sy/sx) / 2 / PI * 360) + dx
                self.y = math.sqrt(sx*sx+sy*sy) * sin(angle + math.atan(sy/sx) / 2 / PI * 360) + dy
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["弦曲线轨迹逆向匕首"]=Class(bullet)
_editor_class["弦曲线轨迹逆向匕首"].init=function(self,_x,_y,v,d,angle,time)
    bullet.init(self,knife,COLOR_CYAN,true,true)
    self.x,self.y=_x,_y
    self.navi = true
    dx = self.x
    dy = self.y
    local sy = 0
    local sx = 0
    task.New(self,function()
        do for _=1,_infinite do
            if self.timer > time then
                SetV2(self,5,self.rot,true,false)
            else
                sx = v*-self.timer
                sy = d * sin(sx*4)
                self.x = -math.sqrt(sx*sx+sy*sy) * cos(angle + math.atan(sy/sx) / 2 / PI * 360) + dx
                self.y = math.sqrt(sx*sx+sy*sy) * sin(angle + math.atan(sy/sx) / 2 / PI * 360) + dy
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["弦曲线轨迹匕首b"]=Class(bullet)
_editor_class["弦曲线轨迹匕首b"].init=function(self,_x,_y,v,d,angle,time)
    bullet.init(self,knife,COLOR_CYAN,true,true)
    self.x,self.y=_x,_y
    self.navi = true
    self.angle = 90 + angle
    local vtheta = 0
    task.New(self,function()
        do for _=1,_infinite do
            if self.timer > time then
                SetV2(self,2.5,self.rot,true,false)
            else
                self.vx = v * cos(angle) - d * cos(self.timer) * sin(angle)
                self.vy = d * cos(self.timer) * cos(angle) + v * sin(angle)
                self.angle = 90 * cos(self.timer) + angle
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["魔法阵"]=Class(_object)
_editor_class["魔法阵"].init=function(self,_x,_y,v,angle,wait,time1,time2)
    self.x,self.y=_x,_y
	self.img="image:魔法阵"
	self.layer=LAYER_ENEMY_BULLET
	self.group=GROUP_INDES
	self.hide=false
	self.bound=false
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    task.New(self,function()
        SetV2(self,v,angle,true,false)
        task._Wait(wait)
        SetV2(self,0,angle,true,false)
    end)
    task.New(self,function()
        task._Wait(wait)
        do local a1,_d_a1=(0),(25) for _=1,_infinite do
            do local a2,_d_a2=(0),(90) for _=1,4 do
                last=New(_editor_class["弦曲线轨迹匕首b"],self.x,self.y,0.5,2,a1+a2,time2)
                last=New(_editor_class["弦曲线轨迹匕首b"],self.x,self.y,-0.5,2,a1+a2,time2)
                task._Wait(0)
            a2=a2+_d_a2 end end
            task._Wait(time1)
        a1=a1+_d_a1 end end
    end)
end
--[[ 一直尾随自机，并在路径上遗留一段时间后自机狙的白色匕首 --]]
_editor_class["慢速稳重的黄匕首"]=Class(bullet)
_editor_class["慢速稳重的黄匕首"].init=function(self,_x,_y,v,wait1,wait2,wait3,angle,diff)
    bullet.init(self,knife,COLOR_YELLOW,true,false)
    self.x,self.y=_x,_y
    --[[ v为运行速度，wait1为初始等待时间，wait2为运动时间，wait3为暂停时间 --]]
    task.New(self,function()
        self.hscale = 1.5
        self.vscale = 1.5
        SetV2(self,0,angle,true,false)
        task._Wait(wait1)
    end)
    task.New(self,function()
        task._Wait(wait1)
        do local a,_d_a=(0),(1) for _=1,_infinite do
            SetV2(self,v,0,true,true)
            if diff == 1 then
                if math.mod(a,15)==0 then
                    last=New(_editor_class["不动的白色匕首"],self.x,self.y,self.rot,60)
                else
                end
            else
            end
            if diff == 2 then
                if math.mod(a,10)==0 then
                    last=New(_editor_class["不动的白色匕首"],self.x,self.y,self.rot,90)
                else
                end
            else
            end
            if self.y > 224 then
                self.y = 448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.y < -224 then
                self.y = -448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.x > 192 then
                self.x = 384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
            else
            end
            if self.x < -192 then
                self.x = -384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
            else
            end
            task._Wait(1)
        a=a+_d_a end end
    end)
end
--[[ 运动时先在自己和自机形成的直线上生成半开橙色激光，一定时间后启动。还附带两个正弦运动的绿色匕首 --]]
_editor_class["中速敏锐的青匕首"]=Class(bullet)
_editor_class["中速敏锐的青匕首"].init=function(self,_x,_y,v,wait1,wait2,wait3,angle,diff)
    bullet.init(self,knife,COLOR_CYAN,true,false)
    self.x,self.y=_x,_y
    --[[ v为运行速度，wait1为初始等待时间，wait2为运动时间，wait3为暂停时间 --]]
    task.New(self,function()
        SetV2(self,0,angle,true,false)
        task._Wait(wait1)
        do for _=1,_infinite do
            SetV2(self,v,0,true,true)
            task._Wait(wait2)
            SetV2(self,0,self.rot,true,false)
            task._Wait(wait3)
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(wait1)
        if diff == 1 then
            do for _=1,_infinite do
                last=New(_editor_class["青色激光-中速敏锐的青匕首"],self.x,self.y,self.rot,60)
                last=New(_editor_class["青色激光-中速敏锐的青匕首"],self.x,self.y,self.rot+180,60)
                last=New(_editor_class["正弦运动的绿色匕首"],self.x,self.y,v,4,self.rot,wait2)
                last=New(_editor_class["正弦运动的绿色匕首"],self.x,self.y,-v,4,self.rot+180,wait2)
                task._Wait(wait2)
                task._Wait(wait3)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                last=New(_editor_class["青色激光-中速敏锐的青匕首"],self.x,self.y,self.rot,75)
                last=New(_editor_class["青色激光-中速敏锐的青匕首"],self.x,self.y,self.rot+180,75)
                do local va,_d_va=(1),(1) for _=1,5 do
                    last=New(_editor_class["正弦运动的绿色匕首"],self.x,self.y,v,va,self.rot,wait2)
                    last=New(_editor_class["正弦运动的绿色匕首"],self.x,self.y,-v,va,self.rot+180,wait2)
                    task._Wait(0)
                va=va+_d_va end end
                task._Wait(wait2)
                task._Wait(wait3)
            end end
        else
        end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            if self.y > 224 then
                self.y = 448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.y < -224 then
                self.y = -448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.x > 192 then
                self.x = 384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
            else
            end
            if self.x < -192 then
                self.x = -384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
            else
            end
            task._Wait(1)
        end end
    end)
end
--[[ 运动时先在自身所在位置生硞机360度定时消失的红苦无，到达地点后再生成一遍 --]]
_editor_class["快速急切的红匕首"]=Class(bullet)
_editor_class["快速急切的红匕首"].init=function(self,_x,_y,v,wait1,wait2,wait3,angle,diff)
    bullet.init(self,knife,COLOR_RED,true,false)
    self.x,self.y=_x,_y
    --[[ v为运行速度，wait1为初始等待时间，wait2为运动时间，wait3为暂停时间 --]]
    task.New(self,function()
        SetV2(self,0,angle,true,false)
        task._Wait(wait1)
        do for _=1,_infinite do
            SetV2(self,v,0,true,true)
            task._Wait(wait2)
            SetV2(self,0,self.rot,true,false)
            task._Wait(wait3)
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(wait1)
        if diff == 1 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,12)),(24) for _=1,15 do
                    last=New(_straight,arrow_small,COLOR_RED,self.x,self.y,ran:Float(1,3),a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(wait2)
                do local a,_d_a=(ran:Int(0,12)),(24) for _=1,15 do
                    last=New(_straight,arrow_small,COLOR_RED,self.x,self.y,ran:Float(1,3),a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(wait3)
            end end
        else
        end
        if diff == 2 then
            do for _=1,_infinite do
                do local a,_d_a=(ran:Int(0,12)),(12) for _=1,30 do
                    last=New(_straight,arrow_small,COLOR_RED,self.x,self.y,ran:Float(1,3),a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(wait2)
                do local a,_d_a=(ran:Int(0,12)),(12) for _=1,30 do
                    last=New(_straight,arrow_small,COLOR_RED,self.x,self.y,ran:Float(1,3),a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(wait3)
            end end
        else
        end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            if self.y > 224 then
                self.y = 448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.y < -224 then
                self.y = -448 - self.y
                SetV2(self,v,-self.rot,true,false)
            else
            end
            if self.x > 192 then
                self.x = 384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
            else
            end
            if self.x < -192 then
                self.x = -384 - self.x
                SetV2(self,v,180 - self.rot,true,false)
            else
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["正弦运动的绿色匕首"]=Class(bullet)
_editor_class["正弦运动的绿色匕首"].init=function(self,_x,_y,v,d,angle,time)
    bullet.init(self,knife,COLOR_GREEN,true,false)
    self.x,self.y=_x,_y
    self.navi = true
    self.angle = 90 + angle
    local swtich = 0
    task.New(self,function()
        do for _=1,_infinite do
            if self.timer > time then
                SetV2(self,math.abs(v),self.rot,true,false)
                if true then return end
            else
                self.vx = v * cos(angle) - d * cos(4*self.timer) * sin(angle)
                self.vy = d * cos(4*self.timer) * cos(angle) + v * sin(angle)
                self.angle = 90 * cos(self.timer) + angle
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["不动的白色匕首"]=Class(bullet)
_editor_class["不动的白色匕首"].init=function(self,_x,_y,angle,wait)
    bullet.init(self,knife,COLOR_GRAY,true,true)
    self.x,self.y=_x,_y
    SetV2(self,0,angle,true,false)
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,3,0,true,true)
    end)
end
_editor_class["青色激光-中速敏锐的青匕首"]=Class(laser)
_editor_class["青色激光-中速敏锐的青匕首"].init=function(self,_x,_y,angle,wait)
    laser.init(self,COLOR_CYAN,_x,_y,0,0,450,100,4,0)
    task.New(self,function()
        SetV2(self,0,angle,true,false)
        laser._TurnHalfOn(self,0,true)
        task._Wait(wait)
        laser._TurnOn(self,30,true,true)
        task._Wait(90)
        _del(self,true)
    end)
end
_editor_class["effect雾2"]=Class(_object)
_editor_class["effect雾2"].init=function(self,_x,_y,_)
    self.x,self.y=_x,_y
	self.img="particle:雾分散"
	self.layer=LAYER_BG+1
	self.group=GROUP_ENEMY_BULLET
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.angle = 0
    task.New(self,function()
        task._Wait(60)
        _kill(self,true)
    end)
end
_editor_class["红色无判定激光"]=Class(laser)
_editor_class["红色无判定激光"].init=function(self,_x,_y,angle)
    laser.init(self,COLOR_RED,_x,_y,0,128,128,128,6,0)
    self.bound = false
    task.New(self,function()
        SetV2(self,3,angle,true,false)
        laser._TurnHalfOn(self,0,true)
    end)
    task.New(self,function()
        task._Wait(180)
        last=New(_editor_class["蓝色有判定激光"],self.x,self.y,self.vx,angle)
        _del(self,true)
    end)
end
_editor_class["蓝色有判定激光"]=Class(laser)
_editor_class["蓝色有判定激光"].init=function(self,_x,_y,v,angle)
    laser.init(self,COLOR_BLUE,_x,_y,0,128,128,128,4,0)
    task.New(self,function()
        self.bound = false
        SetV2(self,v/cos(angle) - 1,0,true,true)
        laser._TurnOn(self,60,true,true)
        task._Wait(120)
        _del(self,true)
    end)
end
_editor_class["铁匕首-咲夜"]=Class(bullet)
_editor_class["铁匕首-咲夜"].init=function(self,_x,_y,v,angle,vtheta,clock,x,y,wait,time1,time2)
    bullet.init(self,knife,COLOR_BLUE,true,false)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.navi = true
    self.bound = false
    self.angle = angle
    self._blend = "add+alpha"
    self._a = 225
    local r = 0
    task.New(self,function()
        task._Wait(time1)
        SetV2(self,0,self.angle,true,false)
        do local a,_d_a=(0),(90/wait) for _=1,wait do
            SetV2(self,0,self.angle + clock*a,true,false)
            task._Wait(1)
        a=a+_d_a end end
        task._Wait(time2)
        r= Dist(x,y,self.x,self.y)
        do for _=1,_infinite do
            self.vx = clock * r * 2 * PI / 360 * cos(self.angle+90) * math.abs(vtheta)
            self.vy = clock * r * 2 * PI / 360 * sin(self.angle+90) * math.abs(vtheta)
            self.angle = self.angle + vtheta * clock
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(time1+wait+time2)
        do for _=1,255-55 do
            self._a = self._a - 1
            task._Wait(1)
        end end
        _del(self,true)
    end)
end
_editor_class["铁匕首-咲夜"].render=function(self)
    SetImgState(self,self._blend,self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["圆圈追踪匕首"]=Class(bullet)
_editor_class["圆圈追踪匕首"].init=function(self,_x,_y,v,angle,wait,vaim,aim)
    bullet.init(self,knife,COLOR_ORANGE,true,false)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        task._Wait(wait)
        if aim == true then
            SetV2(self,vaim,0,true,true)
        else
            SetV2(self,vaim,angle,true,false)
        end
        task._Wait(300)
    end)
end
_editor_class["延长的蓝色小刀"]=Class(bullet)
_editor_class["延长的蓝色小刀"].init=function(self,_x,_y,a1,v,a2,wait,a3)
    bullet.init(self,knife,COLOR_BLUE,true,true)
    self.x,self.y=_x,_y
    task.New(self,function()
        SetV2(self,0,a1,true,false)
        task._Wait(wait)
        SetV2(self,0,a2,true,false)
        --[[ 必须为120-wait帧 --]]
        do for _=1,3 do
            last=New(_editor_class["幻觉的白色小刀"],self.x,self.y,v,a2,a3)
            task._Wait(10)
        end end
        SetV2(self,v,a2,true,false)
    end)
end
_editor_class["幻觉的白色小刀"]=Class(bullet)
_editor_class["幻觉的白色小刀"].init=function(self,_x,_y,v,angle,angle_inc)
    bullet.init(self,knife,COLOR_GRAY,true,true)
    self.x,self.y=_x,_y
    task.New(self,function()
        SetV2(self,v,angle,true,false)
        do for _=1,_infinite do
            last=New(_straight,knife,COLOR_GRAY,self.x,self.y,v,ran:Int(-90,90)+angle-angle_inc,false,0,true,true)
            task._Wait(5)
        end end
    end)
end
_editor_class["指针逆时针匕首"]=Class(bullet)
_editor_class["指针逆时针匕首"].init=function(self,_x,_y,vtheta,rot,angle,r,wait)
    bullet.init(self,knife,COLOR_RED,true,false)
    self.x,self.y=_x,_y
    task.New(self,function()
        self.rot = rot
        self.angle = angle
        local srot = self.rot
        local sangle = self.angle
        task._Wait(wait)
        do for _=1,_infinite do
            do local a,_d_a=(1),(vtheta) for _=1,90/math.abs(vtheta) do
                self.vx = r * 2 * PI / 360 * cos(sangle+a) * math.abs(vtheta)
                self.vy = r * 2 * PI / 360 * sin(sangle+a) * math.abs(vtheta)
                self.rot = srot + a
                self.angle = self.angle + vtheta
                task._Wait(1)
            a=a+_d_a end end
            srot = self.rot
            sangle = self.angle
            self.vx = 0
            self.vy = 0
            task._Wait(135)
        end end
    end)
end
_editor_class["指针逆时针匕首 -Lunatic-"]=Class(bullet)
_editor_class["指针逆时针匕首 -Lunatic-"].init=function(self,_x,_y,vtheta,rot,angle,r,wait)
    bullet.init(self,knife,COLOR_RED,true,false)
    self.x,self.y=_x,_y
    task.New(self,function()
        self.rot = rot
        self.angle = angle
        local srot = self.rot
        local sangle = self.angle
        task._Wait(wait)
        do for _=1,_infinite do
            do local a,_d_a=(1),(vtheta) for _=1,180/math.abs(vtheta) do
                self.vx = r * 2 * PI / 360 * cos(sangle+a) * math.abs(vtheta)
                self.vy = r * 2 * PI / 360 * sin(sangle+a) * math.abs(vtheta)
                self.rot = srot + a
                self.angle = self.angle + vtheta
                task._Wait(1)
            a=a+_d_a end end
            srot = self.rot
            sangle = self.angle
            self.vx = 0
            self.vy = 0
            task._Wait(45)
        end end
    end)
end
_editor_class["指针顺时针匕首"]=Class(bullet)
_editor_class["指针顺时针匕首"].init=function(self,_x,_y,vtheta,rot,angle,r,wait)
    bullet.init(self,knife,COLOR_PURPLE,true,false)
    self.x,self.y=_x,_y
    task.New(self,function()
        self.rot = rot
        self.angle = angle
        local srot = self.rot
        local sangle = self.angle
        task._Wait(wait)
        do for _=1,_infinite do
            do local a,_d_a=(-1),(vtheta) for _=1,90/math.abs(vtheta) do
                self.vx = -r * 2 * PI / 360 * cos(sangle+a) * math.abs(vtheta)
                self.vy = -r * 2 * PI / 360 * sin(sangle+a) * math.abs(vtheta)
                self.rot = srot + a
                self.angle = self.angle + vtheta
                task._Wait(1)
            a=a+_d_a end end
            srot = self.rot
            sangle = self.angle
            self.vx = 0
            self.vy = 0
            task._Wait(135)
        end end
    end)
end
_editor_class["指针顺时针匕首 -Hard-"]=Class(bullet)
_editor_class["指针顺时针匕首 -Hard-"].init=function(self,_x,_y,vtheta,rot,angle,r,wait)
    bullet.init(self,knife,COLOR_PURPLE,true,false)
    self.x,self.y=_x,_y
    task.New(self,function()
        self.rot = rot
        self.angle = angle
        local srot = self.rot
        local sangle = self.angle
        task._Wait(wait)
        do for _=1,_infinite do
            do local a,_d_a=(-1),(vtheta) for _=1,135/math.abs(vtheta) do
                self.vx = -r * 2 * PI / 360 * cos(sangle+a) * math.abs(vtheta)
                self.vy = -r * 2 * PI / 360 * sin(sangle+a) * math.abs(vtheta)
                self.rot = srot + a
                self.angle = self.angle + vtheta
                task._Wait(1)
            a=a+_d_a end end
            srot = self.rot
            sangle = self.angle
            self.vx = 0
            self.vy = 0
            task._Wait(90)
        end end
    end)
end
_editor_class["秒针"]=Class(laser)
_editor_class["秒针"].init=function(self,_x,_y,vtheta,rot,angle,r,wait)
    laser.init(self,COLOR_GRAY,_x,_y,0,35,140,35,5,0)
    self.rot = rot
    self.angle = angle
    local srot = self.rot
    local sangle = self.angle
    task.New(self,function()
        laser._TurnOn(self,30,true,true)
        task._Wait(wait-60)
        do for _=1,_infinite do
            laser._TurnHalfOn(self,0,true)
            task._Wait(90)
            laser._TurnOn(self,0,true,true)
            task._Wait(135)
            task._Wait(0)
        end end
    end)
    task.New(self,function()
        task._Wait(30)
        task._Wait(wait)
        do for _=1,_infinite do
            do local a,_d_a=(-1),(vtheta) for _=1,180/math.abs(vtheta) do
                self.vx = -r * 2 * PI / 360 * cos(sangle+a) * math.abs(vtheta)
                self.vy = -r * 2 * PI / 360 * sin(sangle+a) * math.abs(vtheta)
                self.rot = srot + a
                self.angle = self.angle + vtheta
                task._Wait(1)
            a=a+_d_a end end
            srot = self.rot
            sangle = self.angle
            self.vx = 0
            self.vy = 0
            task._Wait(0)
        end end
    end)
end
_editor_class["Sakuya bg"]=Class(_spellcard_background)
_editor_class["Sakuya bg"].init=function(self)
    _spellcard_background.init(self)
    _spellcard_background.AddLayer(self,"image:Sakuya_bg_mask",false,0,0,0,0,0,-1,"mul+alpha",2.4,2.4,nil,nil)
    _spellcard_background.AddLayer(self,"image:Sakuya_bg",false,0,0,0,0,0,0.5,"mul+alpha",2.4,2.4,nil,nil)
end
LoadImageGroupFromFile('anonymous:'.."Patchouli.png","Patchouli.png",false,4,3,16,16)
_editor_class["帕秋莉 -Easy-"]=Class(boss)
_editor_class["帕秋莉 -Easy-"].cards={}
_editor_class["帕秋莉 -Easy-"].init=function(self)
    boss.init(self,240,384,"Patchouli Knowledge",self.class.cards,New(_editor_class["Patchouli bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Patchouli.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_2","right","ma-ri-sa, you want to steal my books again?",nil)
        boss.dialog.sentence(self,"image:marisa_face_8","left","nonono, I want just to ask you something",nil)
        _stop_music()
        _play_music("Patchouli_bgm")
        boss.dialog.sentence(self,"image:patchouli_face_2","right","before that, give back my books!",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.5
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2,2.5,2,1,1,1)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            task._Wait(1)
        time=time+_d_time end end
        if math.mod(time,120)==0 then
            task._Wait(60)
            time = 1
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("水月符「Narrow Sight -Easy-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(20),(-1.5) for _=1,7 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(25)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(90)
            do local a,_d_a=(8),(1.5) for _=1,7 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(25)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(60)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(-192),(32) for _=1,12 do
                last=New(_editor_class["水滴弹-帕秋莉"],ran:Float(0,8)+a,ran:Float(-10,10)+224,0,ran:Float(-10,10)-90,60,-0.005)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,5 do
                do local a2,_d_a2=(0),(20) for _=1,18 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(20)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,5 do
                do local a2,_d_a2=(0),(-20) for _=1,15 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(20)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(20) for _=1,18 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,2,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("火符「Naughty Fire Elves -Easy-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 120
    local vtheta = 1.5
    local num = 2
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        local minus = 1
        do for _=1,_infinite do
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            minus = math.mod(minus,2)
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,150,xs,ys,1)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            minus = minus + 1
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(150)
        local minus = 0
        do for _=1,_infinite do
            local r = 240
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,80,xs,ys,2)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.5
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2,2.5,1,1,1,1)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if IsValid(lastunit[i]) then
                else
                    if true then break end
                end
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            if math.mod(time,90)==0 then
                task._Wait(90)
                time = 1
            else
            end
            task._Wait(1)
        time=time+_d_time end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("日金符「Royal Diamond -Easy-」",2,15,120,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local num = 3
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,1,10)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,-1,10)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,25,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,5 do
                do local a2,_d_a2=(0),(20) for _=1,18 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(20)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(20) for _=1,18 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(20)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,5 do
                do local a2,_d_a2=(0),(-20) for _=1,18 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(20)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(20) for _=1,18 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("木符「Oak Sage -Easy-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        local num = 2
        local v = 5
        local d = 30
        local angle = -90
        do for _=1,_infinite do
            do local a,_d_a=(Angle(self,player)),(360/num) for _=1,num do
                last=New(_editor_class["橡木大种子-帕秋莉"],self.x,self.y,3,a,60,45,4,30)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("土符「Fake Philosopher's Stone -Easy-」",2,15,90,600,{10,15,10},true)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 75
    local vtheta = 1.2
    task.New(self,function()
        task.MoveTo(0,120,60,MOVE_NORMAL)
        do local da,_d_da=(0),(360/5) for _=1,_infinite do
            do local a,_d_a=(da),(360/5) local i,_d_i=(0),(1) for _=1,5 do
                if i == 0 then
                    last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,vtheta,r,1,10)
                else
                end
                if i == 1 then
                    last=New(_editor_class["木-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,15)
                else
                end
                if i == 2 then
                    last=New(_editor_class["水-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,6)
                else
                end
                if i == 3 then
                    last=New(_editor_class["火-帕秋莉"],self.x,self.y,a,vtheta,r,1,60,75,6)
                else
                end
                if i == 4 then
                    last=New(_editor_class["土-帕秋莉"],self.x,self.y,a,1,600)
                else
                end
                task._Wait(0)
            a=a+_d_a i=i+_d_i end end
            task._Wait(150)
        da=da+_d_da end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_4","right","cough! I feel dizzy",nil)
        boss.dialog.sentence(self,"image:marisa_face_4","left","sorry...",nil)
        boss.dialog.sentence(self,"image:patchouli_face_2","right","so, what do you want to ask?",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","in fact, did you ever seen this?",nil)
        boss.dialog.sentence(self,"image:patchouli_face_3","right","hmm, you should go to the HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","really? thank u",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Easy-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Patchouli.png","Patchouli.png",false,4,3,16,16)
_editor_class["帕秋莉 -Normal-"]=Class(boss)
_editor_class["帕秋莉 -Normal-"].cards={}
_editor_class["帕秋莉 -Normal-"].init=function(self)
    boss.init(self,240,384,"Patchouli Knowledge",self.class.cards,New(_editor_class["Patchouli bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Patchouli.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_2","right","ma-ri-sa, you want to steal my books again?",nil)
        boss.dialog.sentence(self,"image:marisa_face_8","left","nonono, I want just to ask you something",nil)
        _stop_music()
        _play_music("Patchouli_bgm")
        boss.dialog.sentence(self,"image:patchouli_face_2","right","before that, give back my books!",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.5
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2,2.5,3,2,2,2)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            task._Wait(1)
        time=time+_d_time end end
        if math.mod(time,120)==0 then
            task._Wait(60)
            time = 1
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("水月符「Narrow Sight -Normal-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(15),(-1.5) for _=1,7 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(25)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(60)
            do local a,_d_a=(6),(1.5) for _=1,7 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(25)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(30)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(-192),(32) for _=1,12 do
                last=New(_editor_class["水滴弹-帕秋莉"],ran:Float(0,8)+a,ran:Float(-10,10)+224,0,ran:Float(-10,10)-90,60,-0.005)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,5 do
                do local a2,_d_a2=(0),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(15)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,5 do
                do local a2,_d_a2=(0),(-15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(15)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("火符「Naughty Fire Elves -Normal-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 120
    local vtheta = 1.5
    local num = 3
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        local minus = 1
        do for _=1,_infinite do
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            minus = math.mod(minus,2)
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,150,xs,ys,1)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            minus = minus + 1
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(150)
        local minus = 0
        do for _=1,_infinite do
            local r = 240
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,80,xs,ys,2)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.5
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2,2.5,2,2,2,2)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if IsValid(lastunit[i]) then
                else
                    if true then break end
                end
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            if math.mod(time,90)==0 then
                task._Wait(90)
                time = 1
            else
            end
            task._Wait(1)
        time=time+_d_time end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("日金符「Royal Diamond -Normal-」",2,15,120,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local num = 4
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,1,10)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,-1,10)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,25,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,5 do
                do local a2,_d_a2=(0),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(15)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(15)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,5 do
                do local a2,_d_a2=(0),(-15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(15)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("木符「Oak Sage -Normal-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        local num = 3
        local v = 5
        local d = 30
        local angle = -90
        do for _=1,_infinite do
            do local a,_d_a=(Angle(self,player)),(360/num) for _=1,num do
                last=New(_editor_class["橡木大种子-帕秋莉"],self.x,self.y,3,a,60,60,4,30)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("土符「Fake Philosopher's Stone -Normal-」",2,15,90,700,{10,15,10},true)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 75
    local vtheta = 1.2
    task.New(self,function()
        task.MoveTo(0,120,60,MOVE_NORMAL)
        do local da,_d_da=(0),(360/5) for _=1,_infinite do
            do local a,_d_a=(da),(360/5) local i,_d_i=(0),(1) for _=1,5 do
                if i == 0 then
                    last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,vtheta,r,1,10)
                else
                end
                if i == 1 then
                    last=New(_editor_class["木-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,10)
                else
                end
                if i == 2 then
                    last=New(_editor_class["水-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,4)
                else
                end
                if i == 3 then
                    last=New(_editor_class["火-帕秋莉"],self.x,self.y,a,vtheta,r,1,60,75,4)
                else
                end
                if i == 4 then
                    last=New(_editor_class["土-帕秋莉"],self.x,self.y,a,2,600)
                else
                end
                task._Wait(0)
            a=a+_d_a i=i+_d_i end end
            task._Wait(150)
        da=da+_d_da end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_4","right","cough! I feel dizzy",nil)
        boss.dialog.sentence(self,"image:marisa_face_4","left","sorry...",nil)
        boss.dialog.sentence(self,"image:patchouli_face_2","right","so, what do you want to ask?",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","in fact, did you ever seen this?",nil)
        boss.dialog.sentence(self,"image:patchouli_face_3","right","hmm, you should go to the HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","really? thank u",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Normal-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Patchouli.png","Patchouli.png",false,4,3,16,16)
_editor_class["帕秋莉 -Hard-"]=Class(boss)
_editor_class["帕秋莉 -Hard-"].cards={}
_editor_class["帕秋莉 -Hard-"].init=function(self)
    boss.init(self,240,384,"Patchouli Knowledge",self.class.cards,New(_editor_class["Patchouli bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Patchouli.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_2","right","ma-ri-sa, you want to steal my books again?",nil)
        boss.dialog.sentence(self,"image:marisa_face_8","left","nonono, I want just to ask you something",nil)
        _stop_music()
        _play_music("Patchouli_bgm")
        boss.dialog.sentence(self,"image:patchouli_face_2","right","before that, give back my books!",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.5
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2.5,2,3,2,2,3)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            task._Wait(1)
        time=time+_d_time end end
        if math.mod(time,120)==0 then
            task._Wait(60)
            time = 1
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("水月符「Narrow Sight -Hard-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(15),(-1.5) for _=1,7 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(25)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(60)
            do local a,_d_a=(4.5),(1.5) for _=1,7 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(25)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(30)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(-192),(22) for _=1,18 do
                last=New(_editor_class["水滴弹-帕秋莉"],ran:Float(0,8)+a,ran:Float(-10,10)+224,0,ran:Float(-10,10)-90,60,-0.005)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,7 do
                do local a2,_d_a2=(0),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,3,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,7 do
                do local a2,_d_a2=(0),(-15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3.2,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("火符「Naughty Fire Elves -Hard-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 120
    local vtheta = 1.5
    local num = 4
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        local minus = 1
        do for _=1,_infinite do
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            minus = math.mod(minus,2)
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,150,xs,ys,1)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            minus = minus + 1
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(150)
        local minus = 0
        do for _=1,_infinite do
            local r = 240
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,80,xs,ys,2)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.5
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2,2.5,3,2,3,3)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if IsValid(lastunit[i]) then
                else
                    if true then break end
                end
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            if math.mod(time,90)==0 then
                task._Wait(90)
                time = 1
            else
            end
            task._Wait(1)
        time=time+_d_time end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("日金符「Royal Diamond -Hard-」",2,15,120,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local num = 6
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,1,8)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,-1,8)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,25,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,7 do
                do local a2,_d_a2=(0),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,7 do
                do local a2,_d_a2=(0),(-15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3.2,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("木符「Oak Sage -Hard-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        local num = 5
        local v = 5
        local d = 30
        local angle = -90
        do for _=1,_infinite do
            do local a,_d_a=(Angle(self,player)),(360/num) for _=1,num do
                last=New(_editor_class["橡木大种子-帕秋莉"],self.x,self.y,3,a,60,60,4,30)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("土符「Fake Philosopher's Stone -Hard-」",2,20,90,700,{10,15,10},true)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 75
    local vtheta = 1.2
    task.New(self,function()
        task.MoveTo(0,120,60,MOVE_NORMAL)
        do local da,_d_da=(0),(360/5) for _=1,_infinite do
            do local a,_d_a=(da),(360/5) local i,_d_i=(0),(1) for _=1,5 do
                if i == 0 then
                    last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,vtheta,r,1,7)
                else
                end
                if i == 1 then
                    last=New(_editor_class["木-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,10)
                else
                end
                if i == 2 then
                    last=New(_editor_class["水-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,3)
                else
                end
                if i == 3 then
                    last=New(_editor_class["火-帕秋莉"],self.x,self.y,a,vtheta,r,1,60,75,3)
                else
                end
                if i == 4 then
                    last=New(_editor_class["土-帕秋莉"],self.x,self.y,a,2.5,480)
                else
                end
                task._Wait(0)
            a=a+_d_a i=i+_d_i end end
            task._Wait(150)
        da=da+_d_da end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_4","right","cough! I feel dizzy",nil)
        boss.dialog.sentence(self,"image:marisa_face_4","left","sorry...",nil)
        boss.dialog.sentence(self,"image:patchouli_face_2","right","so, what do you want to ask?",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","in fact, did you ever seen this?",nil)
        boss.dialog.sentence(self,"image:patchouli_face_3","right","hmm, you should go to the HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","really? thank u",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Hard-"].cards,_tmp_sc)
LoadImageGroupFromFile('anonymous:'.."Patchouli.png","Patchouli.png",false,4,3,16,16)
_editor_class["帕秋莉 -Lunatic-"]=Class(boss)
_editor_class["帕秋莉 -Lunatic-"].cards={}
_editor_class["帕秋莉 -Lunatic-"].init=function(self)
    boss.init(self,240,384,"Patchouli Knowledge",self.class.cards,New(_editor_class["Patchouli bg"]))
	self.imgs={} for i=1,12 do self.imgs[i]='anonymous:'.."Patchouli.png"..i end
	self.ani_intv=8
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_2","right","ma-ri-sa, you want to steal my books again?",nil)
        boss.dialog.sentence(self,"image:marisa_face_8","left","nonono, I want just to ask you something",nil)
        _stop_music()
        _play_music("Patchouli_bgm")
        boss.dialog.sentence(self,"image:patchouli_face_2","right","before that, give back my books!",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,15,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.75
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2.5,2,3,3,3,3)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            task._Wait(1)
        time=time+_d_time end end
        if math.mod(time,120)==0 then
            task._Wait(60)
            time = 1
        else
        end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("水月符「Narrow Sight -Lunatic-」",2,15,60,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(16),(-1.5) for _=1,8 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(15)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(30)
            do local a,_d_a=(6),(1.5) for _=1,8 do
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,-a)
                last=New(_editor_class["细细的月光-帕秋莉"],self.x,self.y+20,a)
                task._Wait(15)
            a=a+_d_a end end
            last=New(_editor_class["粗月光-帕秋莉"],self.x,self.y+20,0)
            task._Wait(30)
        end end
    end)
    task.New(self,function()
        do for _=1,_infinite do
            do local a,_d_a=(-192),(22) for _=1,18 do
                last=New(_editor_class["水滴弹-帕秋莉"],ran:Float(0,8)+a,ran:Float(-10,10)+224,0,ran:Float(-10,10)-90,60,-0.005)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(30)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,7 do
                do local a2,_d_a2=(0),(12) for _=1,30 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,3,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(5)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,7 do
                do local a2,_d_a2=(0),(-12) for _=1,30 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(5)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,7 do
                do local a,_d_a=(ran:Float(0,15)),(12) for _=1,30 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3.5,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("火符「Naughty Fire Elves -Lunatic-」",2,15,90,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 120
    local vtheta = 1.5
    local num = 5
    task.New(self,function()
        task.MoveTo(0,124,120,MOVE_NORMAL)
        local minus = 1
        do for _=1,_infinite do
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            minus = math.mod(minus,2)
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,150,xs,ys,1)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            minus = minus + 1
            task._Wait(120)
        end end
    end)
    task.New(self,function()
        task._Wait(150)
        local minus = 0
        do for _=1,_infinite do
            local r = 240
            local xs = player.x
            local ys = player.y
            local lastunit = {}
            do local i,_d_i=(1),(1) local a,_d_a=(0),(360/num) for _=1,num do
                last=New(_editor_class["火精灵-帕秋莉"],player.x-r*cos(a+90),player.y-r*sin(a+90),a,80,xs,ys,2)
                lastunit[i] = last
                task._Wait(0)
            i=i+_d_i a=a+_d_a end end
            do for _=1,80 do
                do local i,_d_i=(1),(1) for _=1,num do
                    if minus == 1 then
                        lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle + vtheta
                    else
                        lastunit[i].vx = -r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                        lastunit[i].vy = -r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                        lastunit[i].angle =lastunit[i].angle - vtheta
                    end
                i=i+_d_i end end
                task._Wait(1)
            end end
            task._Wait(120)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,20,30,200,{0,0,0},false)
function _tmp_sc:init()
    local lastunit = {}
    local r = 50
    local vtheta = 0.6
    local dx = 0
    local dy = 0
    task.New(self,function()
        task.MoveTo(0,100,120,MOVE_NORMAL)
        do local i,_d_i=(1),(1) for _=1,8 do
            last=New(_editor_class["魔法阵-帕秋莉"],self.x+r*cos(i*45),self.y+r*sin(i*45),i*45+90,80-10*i,r,vtheta,math.mod(i,2),90,2,2.5,3,3,3,3)
            lastunit[i] = last
            task._Wait(5)
        i=i+_d_i end end
        task._Wait(60)
        local xs = self.x
        local ys = self.y
        local scale = 0
        local scale_inc = 0.005
        do local time,_d_time=(1),(1) for _=1,_infinite do
            dx = self.x - xs
            dy = self.y - ys
            if scale >= 0.15 or scale <= -0.15 then
                scale_inc = -scale_inc
            else
            end
            do local i,_d_i=(1),(1) for _=1,8 do
                if IsValid(lastunit[i]) then
                else
                    if true then break end
                end
                if math.mod(i,2) == 1 then
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * vtheta
                    lastunit[i].angle =lastunit[i].angle + vtheta
                else
                    lastunit[i].vx = r * 2 * PI / 360 * cos(lastunit[i].angle) * -vtheta
                    lastunit[i].vy = r * 2 * PI / 360 * sin(lastunit[i].angle) * -vtheta
                    lastunit[i].angle =lastunit[i].angle + -vtheta
                end
                lastunit[i].x = lastunit[i].x + dx
                lastunit[i].y = lastunit[i].y + dy
                lastunit[i].rot = lastunit[i].rot+1
                lastunit[i].hscale= 1 + scale
                lastunit[i].vscale= 1 + scale
            i=i+_d_i end end
            scale = scale + scale_inc
            xs = self.x
            ys = self.y
            if math.mod(time,90)==0 then
                task._Wait(90)
                time = 1
            else
            end
            task._Wait(1)
        time=time+_d_time end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("日金符「Royal Diamond -Lunatic-」",2,15,120,600,{10,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local num = 6
    task.New(self,function()
        task.MoveTo(0,144,120,MOVE_NORMAL)
        do for _=1,_infinite do
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,1,6)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(ran:Int(0,360/num)),(360/num) for _=1,num do
                last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,1,100,-1,6)
                PlaySound("kira00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(150)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("",2,25,30,200,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        do for _=1,_infinite do
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(3) for _=1,9 do
                do local a2,_d_a2=(0),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,9 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3.5,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do local a1,_d_a1=(0),(-3) for _=1,9 do
                do local a2,_d_a2=(0),(-15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,2.5,a1+a2,false,0,true,true)
                    task._Wait(0)
                a2=a2+_d_a2 end end
                task._Wait(5)
            a1=a1+_d_a1 end end
            task._Wait(10)
            PlaySound("kira00",0.5,self.x/256)
            do for _=1,9 do
                do local a,_d_a=(ran:Float(0,15)),(15) for _=1,24 do
                    last=New(_straight,ball_mid,COLOR_CYAN,self.x,self.y,3.2,a,false,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(5)
            end end
            task._Wait(60)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("木符「Oak Sage -Lunatic-」",2,15,60,600,{20,15,10},false)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    task.New(self,function()
        task.MoveTo(0,144,60,MOVE_NORMAL)
        local num = 6
        local v = 5
        local d = 30
        local angle = -90
        do for _=1,_infinite do
            do local a,_d_a=(Angle(self,player)),(360/num) for _=1,num do
                last=New(_editor_class["橡木大种子-帕秋莉"],self.x,self.y,3,a,60,90,4,30)
                PlaySound("tan00",0.1,self.x/256)
                task._Wait(0)
            a=a+_d_a end end
            task._Wait(180)
        end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.card.New("土符「Fake Philosopher's Stone 伪贤者之石 -Lunatic-」",2,20,90,700,{10,15,10},true)
function _tmp_sc:init()
    last=New(_editor_class["帕秋莉face"],75,-75,2,0.75,0.75)
    local r = 50
    local vtheta = 1.2
    task.New(self,function()
        task.MoveTo(0,120,60,MOVE_NORMAL)
        do local da,_d_da=(0),(360/5) for _=1,_infinite do
            do local a,_d_a=(da),(360/5) local i,_d_i=(0),(1) for _=1,5 do
                if i == 0 then
                    last=New(_editor_class["钻石-帕秋莉"],self.x,self.y,a,vtheta,r,1,5)
                else
                end
                if i == 1 then
                    last=New(_editor_class["木-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,10)
                else
                end
                if i == 2 then
                    last=New(_editor_class["水-帕秋莉"],self.x,self.y,a,vtheta,r,1,120,30,3)
                else
                end
                if i == 3 then
                    last=New(_editor_class["火-帕秋莉"],self.x,self.y,a,vtheta,r,1,60,75,3)
                else
                end
                if i == 4 then
                    last=New(_editor_class["土-帕秋莉"],self.x,self.y,a,3.5,360)
                else
                end
                task._Wait(0)
            a=a+_d_a i=i+_d_i end end
            task._Wait(150)
        da=da+_d_da end end
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_tmp_sc=boss.dialog.New(true)
function _tmp_sc:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
    task.New(self,function()
        boss.dialog.sentence(self,"image:patchouli_face_4","right","cough! I feel dizzy",nil)
        boss.dialog.sentence(self,"image:marisa_face_4","left","sorry...",nil)
        boss.dialog.sentence(self,"image:patchouli_face_2","right","so, what do you want to ask?",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","in fact, did you ever seen this?",nil)
        boss.dialog.sentence(self,"image:patchouli_face_3","right","hmm, you should go to the HAKUGYOKUROU",nil)
        boss.dialog.sentence(self,"image:marisa_face_1","left","really? thank u",nil)
    end)
end
table.insert(_editor_class["帕秋莉 -Lunatic-"].cards,_tmp_sc)
_editor_class["帕秋莉face"]=Class(_object)
_editor_class["帕秋莉face"].init=function(self,_x,_y,v,vs,hs)
    self.x,self.y=_x,_y
	self.img="image:patchouli_face"
	self.layer=LAYER_TOP
	self.group=GROUP_GHOST
	self.hide=false
	self.bound=true
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.vscale = vs
    self.hscale = hs
    self._a = 105
    SetV2(self,0,0,false,false)
    task.New(self,function()
        task._Wait(60)
        SetV2(self,v,90,false,false)
    end)
end
_editor_class["帕秋莉face"].render=function(self)
    SetImgState(self,"",self._a,255,255,255)
    self.class.base.render(self)
end
_editor_class["红色激光-帕秋莉"]=Class(laser)
_editor_class["红色激光-帕秋莉"].init=function(self,_x,_y,rot,angle,mode)
    laser.init(self,COLOR_RED,_x,_y,0,12,288,64,8,0)
    self.bound = false
    task.New(self,function()
        self.rot = rot
        self.angle = angle
        if mode == 0 then task.Wait(135) end
        do for _=1,_infinite do
            laser._TurnHalfOn(self,30,true)
            task._Wait(105)
            laser._TurnOn(self,30,true,true)
            task._Wait(105)
        end end
    end)
end
_editor_class["魔法阵-帕秋莉"]=Class(_object)
_editor_class["魔法阵-帕秋莉"].init=function(self,_x,_y,angle,wait,r,vtheta,mode,time,vr,vb,numr1,numr2,numb1,numb2)
    self.x,self.y=_x,_y
	self.img="image:魔法阵"
	self.layer=LAYER_ENEMY_BULLET
	self.group=GROUP_INDES
	self.hide=false
	self.bound=false
	self.navi=false
	self.hp=10
	self.maxhp=10
	self._servants={}
	self._blend,self._a,self._r,self._g,self._b='',255,255,255,255
    self.angle = angle
    task.New(self,function()
        local lastunit
        task._Wait(wait)
        last=New(_editor_class["红色激光-帕秋莉"],self.x,self.y,self.angle-90,self.angle,mode)
        lastunit = last
        task._Wait(60)
        do for _=1,_infinite do
            lastunit.x = self.x
            lastunit.y = self.y
            lastunit.angle = self.angle
            lastunit.rot = self.angle - 90
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(wait+60)
        do for _=1,_infinite do
            do for _=1,numr1 do
                do local a,_d_a=(-10),(20) for _=1,numr2 do
                    last=New(_straight,ball_mid,COLOR_RED,self.x,self.y,vr,a,true,0,true,true)
                    task._Wait(0)
                a=a+_d_a end end
                task._Wait(20)
            end end
            task._Wait(time)
            do for _=1,numb1 do
                do for _=1,numb2 do
                    last=New(_straight,ball_mid,COLOR_BLUE,self.x,self.y,vb,0,true,0,true,true)
                    task._Wait(10)
                end end
                task._Wait(20)
            end end
            task._Wait(60)
        end end
    end)
end
_editor_class["水滴弹-帕秋莉"]=Class(bullet)
_editor_class["水滴弹-帕秋莉"].init=function(self,_x,_y,v,angle,time,g)
    bullet.init(self,kite,COLOR_BLUE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    self.angle = angle
    self.navi = true
    task.New(self,function()
        task._Wait(time)
        if self.angle>0 and self.angle<180 then self.angle = -self.angle end
        self.vy = 0
        self.angle = angle
        do for _=1,_infinite do
            self.vy = self.vy + g
            task._Wait(1)
        end end
    end)
end
_editor_class["细细的月光-帕秋莉"]=Class(laser)
_editor_class["细细的月光-帕秋莉"].init=function(self,_x,_y,angle)
    laser.init(self,COLOR_BLUE,_x,_y,0,64,320,64,8,0)
    SetV2(self,0,angle,true,true)
    task.New(self,function()
        laser._TurnHalfOn(self,25,true)
        laser._TurnOn(self,30,true,true)
        task._Wait(30)
        laser._TurnOff(self,30,true)
        _del(self,true)
    end)
end
_editor_class["粗月光-帕秋莉"]=Class(laser)
_editor_class["粗月光-帕秋莉"].init=function(self,_x,_y,angle)
    laser.init(self,COLOR_GRAY,_x,_y,0,128,248,64,48,0)
    SetV2(self,0,angle,true,true)
    task.New(self,function()
        laser._TurnHalfOn(self,30,true)
        laser._TurnOn(self,60,true,true)
        task._Wait(60)
        laser._TurnOff(self,30,true)
        _del(self,true)
    end)
end
_editor_class["火精灵-帕秋莉"]=Class(bullet)
_editor_class["火精灵-帕秋莉"].init=function(self,_x,_y,angle,time,xs,ys,bullettype)
    bullet.init(self,water_drop,COLOR_RED,true,false)
    self.x,self.y=_x,_y
    self.angle = angle
    self.bound = false
    self.bullettype = bullettype
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if self.y < -224 or self.y >224 or self.x <-192 or self.x >192 then
                if self.bullettype == 1 then
                    do local a,_d_a=(0),(12) for _=1,30 do
                        last=New(_editor_class["火精灵子弹-帕秋莉"],self.x,self.y,ran:Float(1,2),1.75,a,60,45,xs,ys)
                        task._Wait(0)
                    a=a+_d_a end end
                else
                    do local a,_d_a=(0),(12) for _=1,30 do
                        last=New(_editor_class["火精灵大子弹-帕秋莉"],self.x,self.y,ran:Float(1,2),1.75,a,60,45,xs,ys)
                        task._Wait(0)
                    a=a+_d_a end end
                end
                if true then break end
            else
            end
            if math.mod(inc,5)==0 then
                if self.bullettype == 1 then
                    last=New(_editor_class["火精灵子弹-帕秋莉"],self.x,self.y,0,1.75,self.angle,60,45,xs,ys)
                    PlaySound("kira00",0.1,self.x/256)
                else
                    last=New(_editor_class["火精灵大子弹-帕秋莉"],self.x,self.y,0,1.75,self.angle,60,45,xs,ys)
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
        task._Wait(600)
        _del(self,true)
    end)
end
_editor_class["火精灵子弹-帕秋莉"]=Class(bullet)
_editor_class["火精灵子弹-帕秋莉"].init=function(self,_x,_y,v1,v2,angle,wait,time,xs,ys)
    bullet.init(self,kite,1,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v1,angle,true,false)
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,v2,Angle(self.x,self.y,xs,ys),true,false)
        task._Wait(time)
        _del(self,true)
    end)
end
_editor_class["火精灵大子弹-帕秋莉"]=Class(bullet)
_editor_class["火精灵大子弹-帕秋莉"].init=function(self,_x,_y,v1,v2,angle,wait,time,xs,ys)
    bullet.init(self,ball_mid,1,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v1,angle,true,false)
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,v2,Angle(self.x,self.y,xs,ys),true,false)
        task._Wait(time)
        _del(self,true)
    end)
end
_editor_class["钻石-帕秋莉"]=Class(bullet)
_editor_class["钻石-帕秋莉"].init=function(self,_x,_y,angle,vtheta,r,clock,num)
    bullet.init(self,ball_huge,COLOR_YELLOW,true,false)
    self.x,self.y=_x,_y
    self.navi = true
    self.angle = angle
    self.rot = angle
    self.turnon = 0
    self.i = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if self.turnon == 0 then
                self.vx = clock * r * (vtheta + self.i) * 2 * PI / 360 *cos(self.angle)
                self.vy = clock * r * (vtheta + self.i) * 2 * PI / 360 *sin(self.angle)
                self.angle = self.angle + clock * vtheta
                self.i = self.i + 0.02
                if math.mod(inc,num) == 0 then
                    last=New(_editor_class["钻石光芒-帕秋莉"],self.x,self.y,2,self.rot + 0,60)
                    last=New(_editor_class["小钻石-帕秋莉"],self.x,self.y,2,self.rot-180,60)
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["小钻石-帕秋莉"]=Class(bullet)
_editor_class["小钻石-帕秋莉"].init=function(self,_x,_y,v,angle,wait)
    bullet.init(self,ball_mid,COLOR_YELLOW,true,true)
    self.x,self.y=_x,_y
    self.navi = true
    self.angle = angle
    self.rot = angle
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,v,angle,true,false)
    end)
end
_editor_class["钻石光芒-帕秋莉"]=Class(laser)
_editor_class["钻石光芒-帕秋莉"].init=function(self,_x,_y,v,angle,wait)
    laser.init(self,COLOR_YELLOW,_x,_y,0,64,32,64,4,0)
    self.navi = true
    self.angle = angle
    self.rot = angle
    task.New(self,function()
        laser._TurnHalfOn(self,60,true)
        laser._TurnOn(self,60,true,true)
        task._Wait(wait)
        SetV2(self,v,angle,true,false)
    end)
end
_editor_class["橡木种子-帕秋莉"]=Class(bullet)
_editor_class["橡木种子-帕秋莉"].init=function(self,_x,_y,v,angle,wait,time)
    bullet.init(self,ball_big,COLOR_GREEN,true,true)
    self.x,self.y=_x,_y
    SetV2(self,0,angle,true,false)
    self.angle = angle
    task.New(self,function()
        task._Wait(wait)
        SetV2(self,v,angle,true,false)
    end)
    task.New(self,function()
        do for _=1,_infinite do
            if self.y < -224 then
                SetV2(self,0,-self.rot,true,false)
                do local a,_d_a=(0),(1) for _=1,25 do
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x-5,self.y+a*10,self.angle-45-90*(math.mod(a,2)+0),time,COLOR_RED)
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x+5,self.y+a*10,self.angle-45-90*(math.mod(a,2)+1),time,COLOR_RED)
                    task._Wait(3)
                a=a+_d_a end end
                _del(self,true)
            else
            end
            if self.y > 224 then
                SetV2(self,0,-self.rot,true,false)
                do local a,_d_a=(0),(1) for _=1,25 do
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x-5,self.y-a*10,self.angle-45-90*(math.mod(a,2)+0),time,COLOR_RED)
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x+5,self.y-a*10,self.angle-45-90*(math.mod(a,2)+1),time,COLOR_RED)
                    task._Wait(3)
                a=a+_d_a end end
                _del(self,true)
            else
            end
            if self.x > 192 then
                SetV2(self,0,-self.rot,true,false)
                do local a,_d_a=(0),(1) for _=1,25 do
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x-a*10,self.y-5,self.angle-45-90*(math.mod(a,2)+0),time,COLOR_RED)
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x-a*10,self.y+5,self.angle-45-90*(math.mod(a,2)+1),time,COLOR_RED)
                    task._Wait(3)
                a=a+_d_a end end
                _del(self,true)
            else
            end
            if self.x < -192 then
                SetV2(self,0,-self.rot,true,false)
                do local a,_d_a=(0),(1) for _=1,25 do
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x+a*10,self.y-5,self.angle-45-90*(math.mod(a,2)+0),time,COLOR_RED)
                    last=New(_editor_class["橡木枝干-帕秋莉"],self.x+a*10,self.y+5,self.angle-45-90*(math.mod(a,2)+1),time,COLOR_RED)
                    task._Wait(3)
                a=a+_d_a end end
                _del(self,true)
            else
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["橡木枝干-帕秋莉"]=Class(bullet)
_editor_class["橡木枝干-帕秋莉"].init=function(self,_x,_y,angle,time,color)
    bullet.init(self,grain_c,color,true,true)
    self.x,self.y=_x,_y
    SetV2(self,0,angle,true,false)
    task.New(self,function()
        task._Wait(time)
        _del(self,true)
    end)
end
_editor_class["橡木大种子-帕秋莉"]=Class(bullet)
_editor_class["橡木大种子-帕秋莉"].init=function(self,_x,_y,v1,angle,time,wait,v2,d)
    bullet.init(self,ball_huge,COLOR_GREEN,true,false)
    self.x,self.y=_x,_y
    SetV2(self,v1,angle,true,false)
    self.angle = angle
    task.New(self,function()
        do for _=1,_infinite do
            if self.y < -224 or self.y >224 or self.x <-192 or self.x >192 then
                SetV2(self,0,-self.rot,true,false)
                angle = Angle(self,player)
                PlaySound("kira00",0.5,self.x/256)
                do local l,_d_l=(0),(1) for _=1,time do
                    sx = v2*l
                    sy = d * cos(sx*4)
                    ax = math.sqrt(sx*sx+sy*sy) * cos(angle + math.atan(sy/sx) / 2 / PI * 360) + self.x
                    ay = math.sqrt(sx*sx+sy*sy) * sin(angle + math.atan(sy/sx) / 2 / PI * 360) + self.y
                    if l == time-1 then
                        if ax < -192 or ax >192 or ay< -224 or ay >224 then
                        else
                            last=New(_editor_class["橡木种子-帕秋莉"],ax,ay,3,ran:Int(0,360),wait,wait)
                        end
                    else
                        last=New(_editor_class["橡木枝干-帕秋莉"],ax,ay,-90 * sin(sx*4) + angle,wait,COLOR_GREEN)
                    end
                    sx = v2*l
                    sy = -d * cos(sx*4)
                    ax = math.sqrt(sx*sx+sy*sy) * cos(angle + math.atan(sy/sx) / 2 / PI * 360) + self.x
                    ay = math.sqrt(sx*sx+sy*sy) * sin(angle + math.atan(sy/sx) / 2 / PI * 360) + self.y
                    if l == time-1 then
                        if ax < -192 or ax >192 or ay< -224 or ay >224 then
                        else
                            last=New(_editor_class["橡木种子-帕秋莉"],ax,ay,3,ran:Int(0,360),wait,wait)
                        end
                    else
                        last=New(_editor_class["橡木枝干-帕秋莉"],ax,ay,-90 * sin(sx*4) + angle,wait,COLOR_GREEN)
                    end
                    d = d - 0.3
                    task._Wait(1)
                l=l+_d_l end end
                _del(self,true)
            else
            end
            task._Wait(1)
        end end
    end)
end
_editor_class["木-帕秋莉"]=Class(bullet)
_editor_class["木-帕秋莉"].init=function(self,_x,_y,angle,vtheta,r,clock,wait,time,num)
    bullet.init(self,ball_huge,COLOR_GREEN,true,false)
    self.x,self.y=_x,_y
    self.navi = true
    self.bound = true
    self.angle = angle
    self.rot = angle
    self.turnon = 0
    self.i = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if self.turnon == 0 then
                self.vx = clock * r * (vtheta + self.i) * 2 * PI / 360 *cos(self.angle)
                self.vy = clock * r * (vtheta + self.i) * 2 * PI / 360 *sin(self.angle)
                self.angle = self.angle + clock * vtheta
                self.i = self.i + 0.02
                if math.mod(inc,num) == 0 then
                    last=New(_editor_class["橡木种子-帕秋莉"],self.x,self.y,3,ran:Int(0,360),wait,time)
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["水-帕秋莉"]=Class(bullet)
_editor_class["水-帕秋莉"].init=function(self,_x,_y,angle,vtheta,r,clock,wait,time,num)
    bullet.init(self,ball_huge,COLOR_BLUE,true,false)
    self.x,self.y=_x,_y
    self.navi = true
    self.bound = true
    self.angle = angle
    self.rot = angle
    self.turnon = 0
    self.i = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if self.turnon == 0 then
                self.vx = clock * r * (vtheta + self.i) * 2 * PI / 360 *cos(self.angle)
                self.vy = clock * r * (vtheta + self.i) * 2 * PI / 360 *sin(self.angle)
                self.angle = self.angle + clock * vtheta
                self.i = self.i + 0.02
                if math.mod(inc,num) == 0 then
                    last=New(_straight,kite,COLOR_BLUE,self.x,self.y,2,ran:Int(-100,-80),false,0,true,true)
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["火-帕秋莉"]=Class(bullet)
_editor_class["火-帕秋莉"].init=function(self,_x,_y,angle,vtheta,r,clock,wait,time,num)
    bullet.init(self,ball_huge,COLOR_RED,true,false)
    self.x,self.y=_x,_y
    self.navi = true
    self.bound = true
    self.angle = angle
    self.rot = angle
    self.turnon = 0
    self.i = 0
    task.New(self,function()
        do local inc,_d_inc=(0),(1) for _=1,_infinite do
            if self.turnon == 0 then
                self.vx = clock * r * (vtheta + self.i) * 2 * PI / 360 *cos(self.angle)
                self.vy = clock * r * (vtheta + self.i) * 2 * PI / 360 *sin(self.angle)
                self.angle = self.angle + clock * vtheta
                self.i = self.i + 0.02
                if math.mod(inc,num) == 0 then
                    last=New(_editor_class["火精灵子弹-帕秋莉"],self.x,self.y,0,1.75,self.angle,60,time,player.x,player.y)
                else
                end
            else
            end
            task._Wait(1)
        inc=inc+_d_inc end end
    end)
end
_editor_class["土-帕秋莉"]=Class(bullet)
_editor_class["土-帕秋莉"].init=function(self,_x,_y,angle,v,time)
    bullet.init(self,ball_huge,COLOR_ORANGE,true,false)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    local turnon = 0
    task.New(self,function()
        do for _=1,_infinite do
            if turnon == 0 then
                if self.y > 224 then
                    self.y = 448 - self.y
                    SetV2(self,v,-self.rot,true,false)
                else
                end
                if self.y < -224 then
                    self.y = -448 - self.y
                    SetV2(self,v,-self.rot,true,false)
                else
                end
                if self.x > 192 then
                    self.x = 384 - self.x
                    SetV2(self,v,180 - self.rot,true,false)
                else
                end
                if self.x < -192 then
                    self.x = -384 - self.x
                    SetV2(self,v,180 - self.rot,true,false)
                else
                end
            else
            end
            if turnon == 1 then
                self.hscale = self.hscale - 0.02
                self.vscale = self.vscale - 0.02
            else
            end
            task._Wait(1)
        end end
    end)
    task.New(self,function()
        task._Wait(time)
        turnon = 1
        task._Wait(45)
        turnon = 2
        SetV2(self,0,0,true,false)
        do local a,_d_a=(ran:Float(0,12)),(12) for _=1,60 do
            last=New(_editor_class["小土弹-帕秋莉"],self.x,self.y,ran:Float(1,1.5),a,60)
            task._Wait(1)
        a=a+_d_a end end
        _del(self,true)
    end)
end
_editor_class["小土弹-帕秋莉"]=Class(bullet)
_editor_class["小土弹-帕秋莉"].init=function(self,_x,_y,v,angle,time)
    bullet.init(self,kite,COLOR_ORANGE,true,true)
    self.x,self.y=_x,_y
    SetV2(self,v,angle,true,false)
    task.New(self,function()
        task._Wait(time)
        _del(self,true)
    end)
end
_editor_class["Patchouli bg"]=Class(_spellcard_background)
_editor_class["Patchouli bg"].init=function(self)
    _spellcard_background.init(self)
    _spellcard_background.AddLayer(self,"image:Patchouli_bg_mask",true,0,0,0,0,2,0,"",1,1,nil,function(layer) layer.a=85*(2+sin(layer.timer)) end)
    _spellcard_background.AddLayer(self,"image:Patchouli_bg",true,0,0,0,0,-1,0,"",1.5,1.5,nil,nil)
end
_editor_class["橙 -Normal-"]=Class(boss)
_editor_class["橙 -Normal-"].cards={}
_editor_class["橙 -Normal-"].init=function(self)
    boss.init(self,240,384,"Chen",self.class.cards,New(spellcard_background))
end
table.insert(_editor_class["橙 -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.card.New("",2,15,60,600,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,180,MOVE_NORMAL)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["橙 -Normal-"].cards,_tmp_sc)
_editor_class["爱丽丝 -Normal-"]=Class(boss)
_editor_class["爱丽丝 -Normal-"].cards={}
_editor_class["爱丽丝 -Normal-"].init=function(self)
    boss.init(self,240,384,"Alice Margatroid",self.class.cards,New(spellcard_background))
end
table.insert(_editor_class["爱丽丝 -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.card.New("",2,15,60,600,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,180,MOVE_NORMAL)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["爱丽丝 -Normal-"].cards,_tmp_sc)
_editor_class["米斯蒂娅 -Normal-"]=Class(boss)
_editor_class["米斯蒂娅 -Normal-"].cards={}
_editor_class["米斯蒂娅 -Normal-"].init=function(self)
    boss.init(self,240,384,"Mystia Lorelei",self.class.cards,New(spellcard_background))
end
table.insert(_editor_class["米斯蒂娅 -Normal-"].cards,boss.move.New(0,144,60,MOVE_NORMAL))
_tmp_sc=boss.card.New("",2,15,60,600,{0,0,0},false)
function _tmp_sc:init()
    task.New(self,function()
        task.MoveTo(0,144,180,MOVE_NORMAL)
    end)
end
function _tmp_sc:del()
end
table.insert(_editor_class["米斯蒂娅 -Normal-"].cards,_tmp_sc)
stage.group.New('menu',{},"Easy",{lifeleft=3,power=0,faith=0},true)
stage.group.AddStage('Easy','Stage 1@Easy',{lifeleft=7,power=500,faith=50000},true)
stage.group.DefStageFunc('Stage 1@Easy','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 0
        do
            New(misty_lake_background)
            LoadMusic("stage01_bgm","stage01_bgm.mp3",88.8,69.594)
            LoadMusic("Cirno_bgm","Cirno_bgm.mp3",151,137.2)
            LoadMusic("Letty_bgm","Letty_bgm.mp3",71,57.158)
            _play_music("stage01_bgm")
        end
        task._Wait(120)
        do
            do local x,_d_x=(-132),(48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e1"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(120)
            do local x,_d_x=(156),(-48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e2"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(240)
        end
        do
            do local a,_d_a=(0),(1) for _=1,32 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(124,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(124,164),diff)
                end
                task._Wait(25)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,124,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],118,124,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-98,164,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],98,164,diff)
            task._Wait(240)
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-50,2.5,0,1.5,diff)
                last=New(_editor_class["s1e6"],212,-50,2.5,180,-1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,50,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,50,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],-212,100,56,164,230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e8"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],212,100,-56,164,-230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e9"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,104,diff)
            last=New(_editor_class["s1e5b"],118,104,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-68,154,diff)
            last=New(_editor_class["s1e5b"],68,154,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],23,174,diff)
            last=New(_editor_class["s1e5b"],-23,174,diff)
            task._Wait(480)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["蕾蒂 -Easy-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,75,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,75,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-15,3.5,0,3,diff)
                last=New(_editor_class["s1e6"],212,-15,3.5,180,-3,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],0,124,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5b"],0,144,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5"],88,164,diff)
            last=New(_editor_class["s1e5b"],-88,164,diff)
            task._Wait(30)
            do local a,_d_a=(0),(1) for _=1,64 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(64,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(64,164),diff)
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(210)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["琪露诺 -Easy-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.AddStage('Easy','Stage 2@Easy',{lifeleft=7,power=400,faith=50000},true)
stage.group.DefStageFunc('Stage 2@Easy','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 0
        do
            New(scarlet_mansion_background)
            LoadMusic("stage02_bgm","stage02_bgm.mp3",268,222)
            LoadMusic("Sakuya_bgm","Sakuya_bgm.mp3",85,74)
            LoadMusic("Patchouli_bgm","Patchouli_bgm.mp3",65.75,50.52)
            _play_music("stage02_bgm")
            task._Wait(120)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e3"],40,diff)
            last=New(_editor_class["s2e3"],-40,diff)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a+30,150) == 0 and a>60 then
                    last=New(_editor_class["s2e4"],-212,2,-0.02,4,diff)
                    last=New(_editor_class["s2e4"],212,-2,-0.02,4,diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e5"],212,260,30,120,1,diff)
            last=New(_editor_class["s2e5"],-212,260,-30,120,-1,diff)
            task._Wait(60)
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,50,2,2,-0.02,diff)
                last=New(_editor_class["s2e6"],212,50,-2,2,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s2e7"],0,144,diff)
            do for _=1,30 do
                last=New(_editor_class["s2e8"],-212,diff)
                last=New(_editor_class["s2e8"],212,diff)
                task._Wait(30)
            end end
            task._Wait(360)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["美铃  -Easy-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(120)
        end
        do
            last=New(_editor_class["s2e7"],-88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            last=New(_editor_class["s2e7"],88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            do for _=1,16 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(300)
        end
        do
            _clear_bullet(true,false)
            if GetGlobal('player_name')=='reimu_player' then
                local _boss_wait=true local _ref=New(_editor_class["咲夜  -Easy-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            else
                local _boss_wait=true local _ref=New(_editor_class["帕秋莉 -Easy-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.New('menu',{},"Normal",{lifeleft=3,power=0,faith=0},true)
stage.group.AddStage('Normal','Stage 1@Normal',{lifeleft=7,power=500,faith=50000},true)
stage.group.DefStageFunc('Stage 1@Normal','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 1
        do
            New(misty_lake_background)
            LoadMusic("stage01_bgm","stage01_bgm.mp3",88.8,69.594)
            LoadMusic("Cirno_bgm","Cirno_bgm.mp3",151,137.2)
            LoadMusic("Letty_bgm","Letty_bgm.mp3",71,57.158)
            _play_music("stage01_bgm")
        end
        task._Wait(120)
        do
            do local x,_d_x=(-132),(48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e1"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(120)
            do local x,_d_x=(156),(-48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e2"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(240)
        end
        do
            do local a,_d_a=(0),(1) for _=1,32 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(124,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(124,164),diff)
                end
                task._Wait(25)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,124,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],118,124,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-98,164,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],98,164,diff)
            task._Wait(240)
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-50,2.5,0,1.5,diff)
                last=New(_editor_class["s1e6"],212,-50,2.5,180,-1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,50,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,50,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],-212,100,56,164,230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e8"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],212,100,-56,164,-230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e9"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,104,diff)
            last=New(_editor_class["s1e5b"],118,104,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-68,154,diff)
            last=New(_editor_class["s1e5b"],68,154,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],23,174,diff)
            last=New(_editor_class["s1e5b"],-23,174,diff)
            task._Wait(480)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["蕾蒂 -Normal-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,75,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,75,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-15,3.5,0,3,diff)
                last=New(_editor_class["s1e6"],212,-15,3.5,180,-3,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],0,124,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5b"],0,144,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5"],88,164,diff)
            last=New(_editor_class["s1e5b"],-88,164,diff)
            task._Wait(30)
            do local a,_d_a=(0),(1) for _=1,64 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(64,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(64,164),diff)
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(210)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["琪露诺 -Normal-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.AddStage('Normal','Stage 2@Normal',{lifeleft=7,power=400,faith=50000},true)
stage.group.DefStageFunc('Stage 2@Normal','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 1
        do
            New(scarlet_mansion_background)
            LoadMusic("stage02_bgm","stage02_bgm.mp3",268,222)
            LoadMusic("Sakuya_bgm","Sakuya_bgm.mp3",85,74)
            LoadMusic("Patchouli_bgm","Patchouli_bgm.mp3",65.75,50.52)
            _play_music("stage02_bgm")
            task._Wait(120)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e3"],40,diff)
            last=New(_editor_class["s2e3"],-40,diff)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a+30,150) == 0 and a>60 then
                    last=New(_editor_class["s2e4"],-212,2,-0.02,4,diff)
                    last=New(_editor_class["s2e4"],212,-2,-0.02,4,diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e5"],212,260,30,120,1,diff)
            last=New(_editor_class["s2e5"],-212,260,-30,120,-1,diff)
            task._Wait(60)
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,50,2,2,-0.02,diff)
                last=New(_editor_class["s2e6"],212,50,-2,2,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s2e7"],0,144,diff)
            do for _=1,30 do
                last=New(_editor_class["s2e8"],-212,diff)
                last=New(_editor_class["s2e8"],212,diff)
                task._Wait(30)
            end end
            task._Wait(360)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["美铃  -Normal-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(120)
        end
        do
            last=New(_editor_class["s2e7"],-88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            last=New(_editor_class["s2e7"],88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            do for _=1,16 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(300)
        end
        do
            _clear_bullet(true,false)
            if GetGlobal('player_name')=='reimu_player' then
                local _boss_wait=true local _ref=New(_editor_class["咲夜  -Normal-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            else
                local _boss_wait=true local _ref=New(_editor_class["帕秋莉 -Normal-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.New('menu',{},"Hard",{lifeleft=3,power=0,faith=0},true)
stage.group.AddStage('Hard','Stage 1@Hard',{lifeleft=7,power=500,faith=50000},true)
stage.group.DefStageFunc('Stage 1@Hard','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 2
        do
            New(misty_lake_background)
            LoadMusic("stage01_bgm","stage01_bgm.mp3",88.8,69.594)
            LoadMusic("Cirno_bgm","Cirno_bgm.mp3",151,137.2)
            LoadMusic("Letty_bgm","Letty_bgm.mp3",71,57.158)
            _play_music("stage01_bgm")
        end
        task._Wait(120)
        do
            do local x,_d_x=(-132),(48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e1"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(120)
            do local x,_d_x=(156),(-48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e2"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(240)
        end
        do
            do local a,_d_a=(0),(1) for _=1,32 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(124,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(124,164),diff)
                end
                task._Wait(25)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,124,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],118,124,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-98,164,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],98,164,diff)
            task._Wait(240)
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-50,2.5,0,1.5,diff)
                last=New(_editor_class["s1e6"],212,-50,2.5,180,-1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,50,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,50,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],-212,100,56,164,230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e8"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],212,100,-56,164,-230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e9"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,104,diff)
            last=New(_editor_class["s1e5b"],118,104,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-68,154,diff)
            last=New(_editor_class["s1e5b"],68,154,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],23,174,diff)
            last=New(_editor_class["s1e5b"],-23,174,diff)
            task._Wait(480)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["蕾蒂 -Hard-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,75,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,75,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-15,3.5,0,3,diff)
                last=New(_editor_class["s1e6"],212,-15,3.5,180,-3,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],0,124,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5b"],0,144,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5"],88,164,diff)
            last=New(_editor_class["s1e5b"],-88,164,diff)
            task._Wait(30)
            do local a,_d_a=(0),(1) for _=1,64 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(64,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(64,164),diff)
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(210)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["琪露诺 -Hard-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.AddStage('Hard','Stage 2@Hard',{lifeleft=7,power=400,faith=50000},true)
stage.group.DefStageFunc('Stage 2@Hard','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 2
        do
            New(scarlet_mansion_background)
            LoadMusic("stage02_bgm","stage02_bgm.mp3",268,222)
            LoadMusic("Sakuya_bgm","Sakuya_bgm.mp3",85,74)
            LoadMusic("Patchouli_bgm","Patchouli_bgm.mp3",65.75,50.52)
            _play_music("stage02_bgm")
            task._Wait(120)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e3"],40,diff)
            last=New(_editor_class["s2e3"],-40,diff)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a+30,150) == 0 and a>60 then
                    last=New(_editor_class["s2e4"],-212,2,-0.02,4,diff)
                    last=New(_editor_class["s2e4"],212,-2,-0.02,4,diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e5"],212,260,30,120,1,diff)
            last=New(_editor_class["s2e5"],-212,260,-30,120,-1,diff)
            task._Wait(60)
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,50,2,2,-0.02,diff)
                last=New(_editor_class["s2e6"],212,50,-2,2,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s2e7"],0,144,diff)
            do for _=1,30 do
                last=New(_editor_class["s2e8"],-212,diff)
                last=New(_editor_class["s2e8"],212,diff)
                task._Wait(30)
            end end
            task._Wait(360)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["美铃  -Hard-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(120)
        end
        do
            last=New(_editor_class["s2e7"],-88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            last=New(_editor_class["s2e7"],88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            do for _=1,16 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(300)
        end
        do
            _clear_bullet(true,false)
            if GetGlobal('player_name')=='reimu_player' then
                local _boss_wait=true local _ref=New(_editor_class["咲夜  -Hard-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            else
                local _boss_wait=true local _ref=New(_editor_class["帕秋莉 -Hard-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.New('menu',{},"Lunatic",{lifeleft=3,power=0,faith=0},true)
stage.group.AddStage('Lunatic','Stage 1@Lunatic',{lifeleft=7,power=500,faith=50000},true)
stage.group.DefStageFunc('Stage 1@Lunatic','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 3
        do
            New(misty_lake_background)
            LoadMusic("stage01_bgm","stage01_bgm.mp3",88.8,69.594)
            LoadMusic("Cirno_bgm","Cirno_bgm.mp3",151,137.2)
            LoadMusic("Letty_bgm","Letty_bgm.mp3",71,57.158)
            _play_music("stage01_bgm")
        end
        task._Wait(120)
        do
            do local x,_d_x=(-132),(48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e1"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(120)
            do local x,_d_x=(156),(-48) for _=1,7 do
                tmp = ran:Int(144,200)
                last=New(_editor_class["s1e2"],x,tmp,diff)
                task._Wait(10)
            x=x+_d_x end end
            task._Wait(240)
        end
        do
            do local a,_d_a=(0),(1) for _=1,32 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(124,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(124,164),diff)
                end
                task._Wait(25)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,124,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],118,124,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-98,164,diff)
            task._Wait(60)
            last=New(_editor_class["s1e5b"],98,164,diff)
            task._Wait(240)
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-50,2.5,0,1.5,diff)
                last=New(_editor_class["s1e6"],212,-50,2.5,180,-1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,50,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,50,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],-212,100,56,164,230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e8"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(60)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s1e7"],212,100,-56,164,-230,0,diff)
                else
                end
                if math.mod(a,30) == 0 and a>180 and a<480 then
                    last=New(_editor_class["s1e9"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],-118,104,diff)
            last=New(_editor_class["s1e5b"],118,104,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],-68,154,diff)
            last=New(_editor_class["s1e5b"],68,154,diff)
            task._Wait(120)
            last=New(_editor_class["s1e5"],23,174,diff)
            last=New(_editor_class["s1e5b"],-23,174,diff)
            task._Wait(480)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["蕾蒂 -Lunatic-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,75,2.5,0,-1.5,diff)
                last=New(_editor_class["s1e6"],212,75,2.5,180,1.5,diff)
                task._Wait(15)
            end end
            task._Wait(90)
            do for _=1,15 do
                last=New(_editor_class["s1e6"],-212,-15,3.5,0,3,diff)
                last=New(_editor_class["s1e6"],212,-15,3.5,180,-3,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s1e5"],0,124,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5b"],0,144,diff)
            task._Wait(30)
            last=New(_editor_class["s1e5"],88,164,diff)
            last=New(_editor_class["s1e5b"],-88,164,diff)
            task._Wait(30)
            do local a,_d_a=(0),(1) for _=1,64 do
                if math.mod(a,2)==0 then
                    last=New(_editor_class["s1e3"],ran:Int(64,164),diff)
                else
                    last=New(_editor_class["s1e4"],ran:Int(64,164),diff)
                end
                task._Wait(10)
            a=a+_d_a end end
            task._Wait(210)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["琪露诺 -Lunatic-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
stage.group.AddStage('Lunatic','Stage 2@Lunatic',{lifeleft=7,power=400,faith=50000},true)
stage.group.DefStageFunc('Stage 2@Lunatic','init',function(self)
    _init_item(self)
    New(mask_fader,'open')
    New(_G[lstg.var.player_name])
    task.New(self,function()
        local diff = 3
        do
            New(scarlet_mansion_background)
            LoadMusic("stage02_bgm","stage02_bgm.mp3",268,222)
            LoadMusic("Sakuya_bgm","Sakuya_bgm.mp3",85,74)
            LoadMusic("Patchouli_bgm","Patchouli_bgm.mp3",65.75,50.52)
            _play_music("stage02_bgm")
            task._Wait(120)
        end
        do
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(-152,-88),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                else
                end
                if math.mod(a,30) == 0 and a>60 then
                    last=New(_editor_class["s2e1"],ran:Int(88,152),ran:Int(84,144),diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e3"],40,diff)
            last=New(_editor_class["s2e3"],-40,diff)
            do local a,_d_a=(0),(10) for _=1,60 do
                if math.mod(a,150) == 0 then
                    last=New(_editor_class["s2e2"],0,2,-0.02,-4,diff)
                    last=New(_editor_class["s2e2"],0,2,0.02,4,diff)
                else
                end
                if math.mod(a+30,150) == 0 and a>60 then
                    last=New(_editor_class["s2e4"],-212,2,-0.02,4,diff)
                    last=New(_editor_class["s2e4"],212,-2,-0.02,4,diff)
                else
                end
                task._Wait(10)
            a=a+_d_a end end
        end
        do
            last=New(_editor_class["s2e5"],212,260,30,120,1,diff)
            last=New(_editor_class["s2e5"],-212,260,-30,120,-1,diff)
            task._Wait(60)
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,50,2,2,-0.02,diff)
                last=New(_editor_class["s2e6"],212,50,-2,2,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(180)
        end
        do
            last=New(_editor_class["s2e7"],0,144,diff)
            do for _=1,30 do
                last=New(_editor_class["s2e8"],-212,diff)
                last=New(_editor_class["s2e8"],212,diff)
                task._Wait(30)
            end end
            task._Wait(360)
        end
        do
            _clear_bullet(true,false)
            local _boss_wait=true local _ref=New(_editor_class["美铃  -Lunatic-"]) last=_ref
            if _boss_wait then while IsValid(_ref) do task.Wait() end end
        end
        do
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],-212,-50,2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            do for _=1,8 do
                last=New(_editor_class["s2e6"],212,-50,-2,2.5,-0.02,diff)
                task._Wait(15)
            end end
            task._Wait(120)
        end
        do
            last=New(_editor_class["s2e7"],-88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            last=New(_editor_class["s2e7"],88,144,diff)
            do for _=1,8 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(360)
            do for _=1,16 do
                last=New(_editor_class["s2e9"],-222,diff)
                last=New(_editor_class["s2e9"],222,diff)
                task._Wait(5)
            end end
            task._Wait(300)
        end
        do
            _clear_bullet(true,false)
            if GetGlobal('player_name')=='reimu_player' then
                local _boss_wait=true local _ref=New(_editor_class["咲夜  -Lunatic-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            else
                local _boss_wait=true local _ref=New(_editor_class["帕秋莉 -Lunatic-"]) last=_ref
                if _boss_wait then while IsValid(_ref) do task.Wait() end end
            end
        end
    end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
