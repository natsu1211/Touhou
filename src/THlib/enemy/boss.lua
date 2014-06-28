LoadTexture('boss','THlib\\enemy\\boss.png')
LoadImageGroup('bossring1','boss',80,0,16,8,1,16)
for i=1,16 do SetImageState('bossring1'..i,'mul+add',Color(0x80FFFFFF)) end
LoadImageGroup('bossring2','boss',64,0,16,8,1,16)
for i=1,16 do SetImageState('bossring2'..i,'mul+add',Color(0x80FFFFFF)) end
LoadImage('spell_card_ef','boss',96,0,16,128)
LoadImage('hpbar','boss',116,0,8,128)
SetImageCenter('hpbar',0,0)
LoadTexture('undefined','THlib\\enemy\\undefined.png')
LoadImage('undefined','undefined',0,0,128,128,16,16)
SetImageState('undefined','mul+add',Color(0x80FFFFFF))

boss=Class(enemybase)

function boss:init(x,y,name,cards,bg)
	enemybase.init(self,999999999)
	self.x=x
	self.y=y
	self.img='undefined'
	self.ani_intv=8
	self.lr=1
	self.cast=0
	self.aura_alpha=128
	self.aura_alpha_d=4
	self.cards=cards
	self.card_num=0
	self.dmg_factor=0
	self.ui=New(boss_ui,self)
	self.ui.name=name or ''
	self.last_card=1
	self.ui.sc_left=0
	for i,c in pairs(cards) do
		if c.is_combat then self.last_card=i end
		if c.is_sc then self.ui.sc_left=self.ui.sc_left+1 end
	end
	self.bg=bg
	lstg.tmpvar.boss=self
	Kill(self)
end

function boss:frame()
	enemybase.frame(self)
	if self.dx>0.5 then dx=1 elseif self.dx<-0.5 then dx=-1 else dx=0 end
	self.lr=self.lr+dx
	if self.lr> 18 then self.lr= 18 end
	if self.lr<-18 then self.lr=-18 end
	if self.lr==0 then self.lr=self.lr+dx end
	if dx==0 then
		if self.lr> 1 then self.lr=self.lr-1 end
		if self.lr<-1 then self.lr=self.lr+1 end
	end
	if self.imgs then
		if self.cast>0 then
			self.cast=self.cast-1
			self.img=self.imgs[int(self.cast/8)+9]
		else
			if abs(self.lr)==1 then
				self.img=self.imgs[int(self.ani/self.ani_intv)%4+1]
			elseif abs(self.lr)==18 then
				self.img=self.imgs[8]
			else
				self.img=self.imgs[int((abs(self.lr)-2)/4)+5]
			end
		end
	end
	self.hscale=sign(self.lr)
	if abs(self.x)<192 then self.ui.pointer_x=self.x else self.ui.pointer_x=nil end
	self.aura_alpha=self.aura_alpha+self.aura_alpha_d
	self.aura_alpha=min(max(0,self.aura_alpha),128)
	if self.cards[self.card_num] then
		local c=self.cards[self.card_num]
		c.frame(self)
		if self.timer<c.t1 then
			self.dmg_factor=0
		elseif self.timer<c.t2 then
			self.dmg_factor=(self.timer-c.t1)/(c.t2-c.t1)
		elseif self.timer<c.t3 then
			self.dmg_factor=1
		else Kill(self) end
		if c.is_extra and lstg.player.nextspell>0 then self.dmg_factor=0 end
		if c.t1==c.t3 then self.dmg_factor=0 end
		if lstg.var.sc_bonus and lstg.var.sc_bonus>0 and c.t1~=c.t3 then lstg.var.sc_bonus=lstg.var.sc_bonus-(item.sc_bonus_max-item.sc_bonus_base)/c.t3 end
		self.ui.hpbarlen=self.hp/self.maxhp
		self.ui.countdown=(c.t3-self.timer)/60
		if self.bg then
			if c.is_sc then self.bg.alpha=min(1,self.bg.alpha+0.02) else self.bg.alpha=max(0,self.bg.alpha-0.02) end
			if lstg.tmpvar.bg then
				if self.bg.alpha==1 then lstg.tmpvar.bg.hide=true else lstg.tmpvar.bg.hide=false end
			end
		end
	end
end

function boss:render()
	SetImageState('boss_aura','mul+add',Color(self.aura_alpha,255,255,255))
	Render('boss_aura',self.x,self.y,self.ani*5,1.8+0.4*sin(self.ani*2.5))
	if self.cards[self.card_num] then
		self.cards[self.card_num].render(self)
	end
	if self.imgs then
		Render(self.img,self.x,self.y+sin(self.ani*4)*4,self.rot,self.hscale,self.vscale)
	else
		Render('undefined',self.x+cos( self.ani*6+180)*3,self.y+sin( self.ani*6+180)*3, self.ani*10)
		Render('undefined',self.x+cos(-self.ani*6+180)*3,self.y+sin(-self.ani*6+180)*3,-self.ani*10)
		Render('undefined',self.x+cos( self.ani*6)*3,self.y+sin( self.ani*6)*3, self.ani*20)
		Render('undefined',self.x+cos(-self.ani*6)*3,self.y+sin(-self.ani*6)*3,-self.ani*20)
	end
end

function boss:take_damage(dmg)
	if not self.protect then
		self.hp=self.hp-dmg*self.dmg_factor
	end
end

function boss:kill()
	_kill_servants(self)
	if self.cards[self.card_num] then
		local c=self.cards[self.card_num]
		c.del(self)
		if c.is_combat then
			if self.hp<=0 or c.t1==c.t3 then
				if self.cards[self.card_num].drop then item.DropItem(self.x,self.y,self.cards[self.card_num].drop) end
				item.EndChipBonus(self.x,self.y)
				if lstg.var.sc_bonus then
					if lstg.var.sc_bonus>0 then
						lstg.var.score=lstg.var.score+lstg.var.sc_bonus-lstg.var.sc_bonus%10
						PlaySound('cardget',1.0,0)
						New(hinter,'hint.getbonus',0.6,0,112,15,120)
						if not ext.replay.IsReplay() then
							scoredata.spell_card_hist[lstg.var.player_name][c.name][1]=scoredata.spell_card_hist[lstg.var.player_name][c.name][1]+1
						end
					else
						New(hinter,'hint.bonusfail',0.6,0,112,15,120)
					end
				end
			else
				if lstg.var.sc_bonus then New(hinter,'hint.bonusfail',0.6,0,112,15,120,15) end
			end
			PlaySound('enep02',0.6,0)
			New(bullet_killer,lstg.player.x,lstg.player.y,true)
		end
		if c.is_sc then self.ui.sc_left=self.ui.sc_left-1 end
		if self.card_num==self.last_card then
			if self.cards[#self.cards].is_move then
				PlaySound('enep01',0.6,0)
			else
				New(boss_death_ef,self.x,self.y)
				self.hide=true
				self.colli=false
			end
		end
	end
	self.card_num=self.card_num+1
	if self.cards[self.card_num] then
		local c=self.cards[self.card_num]
		if c.is_sc then
			lstg.var.sc_bonus=item.sc_bonus_max
			self.ui.hpbarcolor=Color(0xFFFF8080)
			New(spell_card_ef)
			PlaySound('cat00',0.7)
			if scoredata.spell_card_hist==nil then scoredata.spell_card_hist={} end
			if scoredata.spell_card_hist[lstg.var.player_name]==nil then scoredata.spell_card_hist[lstg.var.player_name]={} end
			if scoredata.spell_card_hist[lstg.var.player_name][c.name]==nil then scoredata.spell_card_hist[lstg.var.player_name][c.name]={0,0} end
			if not ext.replay.IsReplay() then
				scoredata.spell_card_hist[lstg.var.player_name][c.name][2]=scoredata.spell_card_hist[lstg.var.player_name][c.name][2]+1
			end
			self.ui.sc_hist=scoredata.spell_card_hist[lstg.var.player_name][c.name]
		else
			lstg.var.sc_bonus=nil
			self.ui.hpbarcolor=Color(0xFFFFFFFF)
		end
		if c.is_combat then item.StartChipBonus() end
		if c.name~='' then self.ui.sc_name=c.name end
		self.ui.countdown=c.t3/60
		self.ui.is_combat=c.is_combat
		task.Clear(self.ui)
		task.Clear(self)
		c.init(self)
		self.timer=-1
		self.hp=c.hp
		self.maxhp=c.hp
		self.dmg_factor=0
		PreserveObject(self)
	else
		if self.ui then Del(self.ui) end
		if self.bg then Del(self.bg) self.bg=nil end
		if self.dialog_displayer then Del(self.dialog_displayer) end
		if lstg.tmpvar.bg then lstg.tmpvar.bg.hide=false end
		if self.class.defeat then self.class.defeat(self) end
	end
end

function boss:del()
	if self.ui then Del(self.ui) end
	if self.bg then Del(self.bg) self.bg=nil end
	if self.dialog_displayer then Del(self.dialog_displayer) end
	if lstg.tmpvar.bg then lstg.tmpvar.bg.hide=false end
end

function boss.MoveTowardsPlayer(t)
	local dirx,diry
	local self=task.GetSelf()
	if self.x>64 then dirx=-1 elseif self.x<-64 then dirx=1
	else
		if self.x>lstg.player.x then dirx=-1 else dirx=1 end
	end
	if self.y>144 then diry=-1 elseif self.y<128 then diry=1 else diry=ran:Sign() end
	local dx=max(16,min(abs((self.x-lstg.player.x)*0.3),32))
	task.MoveTo(self.x+ran:Float(dx,dx*2)*dirx,self.y+diry*ran:Float(16,32),t)
end

function boss:show_aura(show)
	if show then self.aura_alpha_d=4 else self.aura_alpha_d=-4 end
end

function boss:cast()
	self.cast=32
end

boss.card={}
function boss.card.New(name,t1,t2,t3,hp,drop,is_extra)
	local c={}
	c.frame=boss.card.frame
	c.render=boss.card.render
	c.init=boss.card.init
	c.del=boss.card.del
	c.name=tostring(name)
	if t1>t2 or t2>t3 then error('t1<t2<t3 must be satisfied.') end
	c.t1=int(t1)*60
	c.t2=int(t2)*60
	c.t3=int(t3)*60
	c.hp=hp
	c.is_sc=(name~='')
	c.drop=drop
	c.is_extra=is_extra or false
	c.is_combat=true
	return c
end
function boss.card:frame() end
function boss.card:render()
	local c=self.cards[self.card_num]
	if c and c.is_sc and c.t1~=c.t3 then
		for i=1,16 do SetImageState('bossring1'..i,'mul+add',Color(self.aura_alpha,255,255,255)) end
		for i=1,16 do SetImageState('bossring2'..i,'mul+add',Color(self.aura_alpha,255,255,255)) end
		if self.timer<60 then
			misc.RenderRing('bossring1',self.x,self.y,(90-self.timer)*6,(90-self.timer)*6+16, self.ani*3,32,16)
			misc.RenderRing('bossring2',self.x,self.y,(90-self.timer)*6,(90-self.timer)*6-16,-self.ani*3,32,16)
		else
			local t=self.cards[self.card_num].t3
			misc.RenderRing('bossring1',self.x,self.y,(t-self.timer)/(t-60)*180,(t-self.timer)/(t-60)*180+16, self.ani*3,32,16)
			misc.RenderRing('bossring2',self.x,self.y,(t-self.timer)/(t-60)*180,(t-self.timer)/(t-60)*180-16,-self.ani*3,32,16)
		end
	end
end
function boss.card:init() end
function boss.card:del() end

boss.dialog={}

function boss.dialog.New(can_skip)
	local c={}
	c.frame=boss.dialog.frame
	c.render=boss.dialog.render
	c.init=boss.dialog.init
	c.del=boss.dialog.del
	c.name=''
	c.t1=999999999
	c.t2=999999999
	c.t3=999999999
	c.hp=999999999
	c.is_sc=false
	c.is_extra=false
	c.is_combat=false
	_dialog_can_skip=can_skip
	return c
end

function boss.dialog:frame()
	if self.task and coroutine.status(self.task[1])=='dead' then Kill(self) end
end
function boss.dialog:render() end
function boss.dialog:init()
	lstg.player.dialog=true
	self.dialog_displayer=New(dialog_displayer)
end
function boss.dialog:del() 
	lstg.player.dialog=false
	Del(self.dialog_displayer)
	self.dialog_displayer=nil
end

function boss.dialog:sentence(img,pos,text,t)
	if pos=='left' then pos=1 else pos=-1 end
	self.dialog_displayer.text=text
	self.dialog_displayer.char[pos]=img
	if self.dialog_displayer.active~=pos then
		self.dialog_displayer.active=pos
		self.dialog_displayer.t=16
	end
	task.Wait()
	t=t or (60+#text*5)
	for i=1,t do
		if KeyIsPressed'shoot' and _dialog_can_skip then
			PlaySound('plst00',0.15)
			break
		end
		task.Wait()
	end
end

dialog_displayer=Class(object)
function dialog_displayer:init()
	self.layer=LAYER_TOP
	self.char={}
	self.t=16
	self.death=0
end
function dialog_displayer:frame()
	task.Do(self)
	if self.t>0 then self.t=self.t-1 end
end
function dialog_displayer:render()
	if self.active then
		if self.char[-self.active] then
			SetImageState(self.char[-self.active],'',Color(0xFF404040)+(  self.t/16)*Color(0xFFC0C0C0))
			local t=(1-self.t/16)^3
			Render(self.char[-self.active],self.active*(-(1-2*t)*16+128)+self.death*self.active*8,-65-t*16,0,-self.active,1)
		end
		if self.char[self.active] then
			SetImageState(self.char[ self.active],'',Color(0xFF404040)+(1-self.t/16)*Color(0xFFC0C0C0))
			local t=(  self.t/16)^3
			Render(self.char[ self.active],self.active*( (1-2*t)*16-128)-self.death*self.active*8,-65-t*16,0, self.active,1)
		end
	end
	if self.text then
		SetImageState('white','',Color(0xC0000000))
		RenderRect('white',-176,176,-176-self.death*8,-128-self.death*8)
		RenderTTF('dialog',self.text,-167,169,-179-self.death*8,-137-self.death*8,Color(0xFF000000),'paragraph')
		if self.active>0 then
			RenderTTF('dialog',self.text,-168,168,-178-self.death*8,-136-self.death*8,Color(0xFFA0FFFF),'paragraph')
		else
			RenderTTF('dialog',self.text,-168,168,-178-self.death*8,-136-self.death*8,Color(0xFFFFA0A0),'paragraph')
		end
	end
end
function dialog_displayer:del()
	PreserveObject(self)
	task.New(self,function()
		for i=1,30 do
			self.death=i
			task.Wait()
		end
		RawDel(self)
	end)
end

boss.move={}

function boss.move.New(x,y,t,m)
	local c={}
	c.frame=boss.move.frame
	c.render=boss.move.render
	c.init=boss.move.init
	c.del=boss.move.del
	c.name=''
	c.t1=999999999
	c.t2=999999999
	c.t3=999999999
	c.hp=999999999
	c.is_sc=false
	c.is_extra=false
	c.is_combat=false
	c.is_move=true
	c.x=x c.y=y c.t=t c.m=m
	return c
end
function boss.move:frame() end
function boss.move:render() end
function boss.move:init()
	local c=self.cards[self.card_num]
	task.New(self,function()
		task.MoveTo(c.x,c.y,c.t,c.m)
		Kill(self)
	end)
end
function boss.move:del() end

boss.escape={}

function boss.escape.New(x,y,t,m)
	local c={}
	c.frame=boss.escape.frame
	c.render=boss.escape.render
	c.init=boss.escape.init
	c.del=boss.escape.del
	c.name=''
	c.t1=999999999
	c.t2=999999999
	c.t3=999999999
	c.hp=999999999
	c.is_sc=false
	c.is_extra=false
	c.is_combat=false
	c.is_escape=true
	c.x=x c.y=y c.t=t c.m=m
	return c
end
function boss.escape:frame() end
function boss.escape:render() end
function boss.escape:init()
	local c=self.cards[self.card_num]
	task.New(self,function()
		task.MoveTo(c.x,c.y,c.t,c.m)
		Kill(self)
	end)
end
function boss.escape:del() end

boss_ui=Class(object)
function boss_ui:init(b)
	self.layer=LAYER_TOP
	self.group=GROUP_GHOST
	self.boss=b
	self.sc_name=''
end

function boss_ui:render()
	SetViewMode'world'
	
	local ax=min(max(lstg.player.x*0.05,0),0.9)
	local ay=min(max((lstg.player.y-160)*0.05,0),0.9)
	local alpha=1-ax*ay
	local xoffset
	if lstg.var.sc_bonus then xoffset=max(384-self.boss.timer*7,0) else xoffset=min(384,(self.boss.timer+1)*7) end
	
	if self.sc_name~='' then
		SetImageState('boss_spell_name_bg','',Color(alpha*255,255,255,255))
		Render('boss_spell_name_bg',192+xoffset,220)
		RenderTTF('sc_name',self.sc_name,187+xoffset,187+xoffset,205,205,Color(alpha*255,0,0,0),'right','noclip')
		RenderTTF('sc_name',self.sc_name,186+xoffset,186+xoffset,206,206,Color(alpha*255,255,255,255),'right','noclip')
	end
	
	if lstg.var.sc_bonus then
		local b
		if lstg.var.sc_bonus>0 then b=string.format('%.0f',lstg.var.sc_bonus-lstg.var.sc_bonus%10) else b='FAILED ' end
		SetFontState('bonus','',Color(alpha*255,0,0,0))
		RenderText('bonus',b,187+xoffset,187,0.5,'right')
		RenderText('bonus',string.format('%d/%d',self.sc_hist[1],self.sc_hist[2]),97+xoffset,187,0.5,'right')
		RenderText('bonus','HISTORY       BONUS',137+xoffset,187,0.5,'right')
		SetFontState('bonus','',Color(alpha*255,255,255,255))
		RenderText('bonus',b,186+xoffset,188,0.5,'right')
		RenderText('bonus',string.format('%d/%d',self.sc_hist[1],self.sc_hist[2]),96+xoffset,188,0.5,'right')
		RenderText('bonus','HISTORY       BONUS',136+xoffset,188,0.5,'right')
	end
	
	if self.is_combat then
		if self.hpbarlen then
			SetImageState('hpbar','',Color(0xFF000000))
			Render('hpbar',-183,217,90,0.25,2.5*self.hpbarlen*min(1,self.boss.timer/120))
			SetImageState('hpbar','',self.hpbarcolor)
			Render('hpbar',-184,218,90,0.25,2.5*self.hpbarlen*min(1,self.boss.timer/120))
		end
		
		RenderTTF('boss_name',self.name,-185,-185,215,215,Color(0xFF000000),'noclip')
		RenderTTF('boss_name',self.name,-186,-186,216,216,Color(0xFF80FF80),'noclip')

		for i=1,self.sc_left do
			Render('boss_sc_left',-194+i*12,200,0,0.5)
		end
		
		if self.countdown>=10.0 then
			RenderText('score',string.format('%.2f',min(99.99,self.countdown)),190,226,0.5,'right')
		else
			RenderText('score',string.format('0%.2f',min(99.99,self.countdown)),190,226,0.5,'right')
		end
	end
	if self.pointer_x then
		SetViewMode'ui'
		Render('boss_pointer',WorldToScreen(max(min(self.pointer_x,168),-168),-224))
		SetViewMode'world'
	end
end

function boss_ui:frame()
	task.Do(self)
	if self.countdown and self.countdown<10 and self.task==nil then
		task.New(self,function()
			for i=1,10 do
				PlaySound('timeout',1.0)
				task.Wait(60)
			end
		end)
	end
end

spell_card_ef=Class(object)

function spell_card_ef:init()
	self.layer=LAYER_BG+1
	self.group=GROUP_GHOST
	self.alpha=0
	task.New(self,function()
		for i=1,50 do
			task.Wait()
			self.alpha=self.alpha+0.02
		end
		task.Wait(60)
		for i=1,50 do
			task.Wait()
			self.alpha=self.alpha-0.02
		end
		Del(self)
	end)
end

function spell_card_ef:frame()
	task.Do(self)
end

function spell_card_ef:render()
	SetImageState('spell_card_ef','',Color(255*self.alpha,255,255,255))
	for j=1,10 do
		local h=(j-5.5)*32
		for i=-2,2 do
			local l=i*128+((self.timer*2)%128)*(2*(j%2)-1)
			Render('spell_card_ef',l*cos(30),l*sin(30)+h,-60)
		end
	end
end

boss_cast_ef_unit=Class(object)
function boss_cast_ef_unit:init(x,y,v,angle,lifetime,size)
	self.x=x self.y=y self.rot=ran:Float(0,360)
	SetV(self,v,angle)
	self.lifetime=lifetime
	self.omiga=5
	self.layer=LAYER_ENEMY-50
	self.group=GROUP_GHOST
	self.bound=false
	self.img='leaf'
	self.hscale=size
	self.vscale=size
end

function boss_cast_ef_unit:frame()
	if self.timer==self.lifetime then Del(self) end
end

function boss_cast_ef_unit:render()
	if self.timer>self.lifetime-15 then
		SetImageState('leaf','mul+add',Color((self.lifetime-self.timer)*12,255,255,255))
	else
		SetImageState('leaf','mul+add',Color((self.timer/(self.lifetime-15))^6*180,255,255,255))
	end
	DefaultRenderFunc(self)
end

boss_cast_ef=Class(object)
function boss_cast_ef:init(x,y)
	self.hide=true
	PlaySound('ch00',0.5,0)
	for i=1,50 do
		local angle=ran:Float(0,360)
		local lifetime=ran:Int(50,80)
		local l=ran:Float(300,500)
		New(boss_cast_ef_unit,x+l*cos(angle),y+l*sin(angle),l/lifetime,angle+180,lifetime,ran:Float(2,3))
	end
	Del(self)
end

boss_death_ef_unit=Class(object)
function boss_death_ef_unit:init(x,y,v,angle,lifetime,size)
	self.x=x self.y=y self.rot=ran:Float(0,360)
	SetV(self,v,angle)
	self.lifetime=lifetime
	self.omiga=3
	self.layer=LAYER_ENEMY+50
	self.group=GROUP_GHOST
	self.bound=false
	self.img='leaf'
	self.hscale=size
	self.vscale=size
end

function boss_death_ef_unit:frame()
	if self.timer==self.lifetime then Del(self) end
end

function boss_death_ef_unit:render()
	if self.timer<15 then
		SetImageState('leaf','mul+add',Color(self.timer*12,255,255,255))
	else
		SetImageState('leaf','mul+add',Color(((self.lifetime-self.timer)/(self.lifetime-15))*180,255,255,255))
	end
	DefaultRenderFunc(self)
end

boss_death_ef=Class(object)
function boss_death_ef:init(x,y)
	PlaySound('enep01',0.6,0)
	self.hide=true
	misc.ShakeScreen(30,15)
	for i=1,70 do
		local angle=ran:Float(0,360)
		local lifetime=ran:Int(40,120)
		local l=ran:Float(100,500)
		New(boss_death_ef_unit,x,y,l/lifetime,angle,lifetime,ran:Float(2,4))
	end
end