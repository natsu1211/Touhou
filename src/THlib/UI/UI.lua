Include'THlib\\ui\\uiconfig.lua'
Include'THlib\\ui\\title.lua'

ui={}


LoadTexture('boss_ui','THlib\\UI\\boss_ui.png')
LoadImage('boss_spell_name_bg','boss_ui',0,0,256,36)
SetImageCenter('boss_spell_name_bg',256,0)

LoadImage('boss_pointer','boss_ui',0,64,48,16)
SetImageCenter('boss_pointer',24,0)

LoadImage('boss_sc_left','boss_ui',64,64,32,32)
SetImageState('boss_sc_left','',Color(0xFF80FF80))

--LoadTTF('boss_name',setting.font,10,700)
--LoadTTF('sc_name',setting.font,12,700)
--LoadTTF('dialog',setting.font,16,0)
LoadTTF('boss_name','644-CAI978',12,700)
LoadTTF('sc_name','华康唐风隶 Std W5',13,400)
LoadTTF('dialog','华康唐风隶 Std W5',17,0)

LoadTexture('hint','THlib\\ui\\hint.png',true)
LoadImage('hint.bonusfail','hint',0,64,256,64)
LoadImage('hint.getbonus','hint',0,128,396,64)
LoadImage('hint.extend','hint',0,192,160,64)
LoadImage('hint.power','hint',0,12,84,32)
LoadImage('hint.faith','hint',86,12,74,32)
LoadImage('hint.point','hint',160,12,76,32)
SetImageCenter('hint.power',0,16)
SetImageCenter('hint.faith',0,16)
SetImageCenter('hint.point',0,16)


if setting.resx>setting.resy then
	LoadImageFromFile('ui_bg','THlib\\ui\\ui2_bg.png')
	LoadImageFromFile('logo','THlib\\ui\\logo2.png')
	LoadImageFromFile('menu_bg','THlib\\ui\\menu2_bg.png')

	function ui.DrawFrame()
		Render('ui_bg',320,240)
		Render('logo',532,168,0,1,1)
		SetFontState('menu','',Color(0xFF000000))
		RenderText('menu',string.format('%.1ffps',GetFPS()),637,0,0.25,'right','bottom')
		SetFontState('menu','',Color(0xFFFFFFFF))
		RenderText('menu',string.format('%.1ffps',GetFPS()),636,1,0.25,'right','bottom')
	end

	function ui.DrawMenuBG()
		SetViewMode'ui'
		Render('menu_bg',320,240)
		SetFontState('menu','',Color(0xFF000000))
		RenderText('menu',string.format('%.1ffps',GetFPS()),637,0,0.25,'right','bottom')
		SetFontState('menu','',Color(0xFFFFFFFF))
		RenderText('menu',string.format('%.1ffps',GetFPS()),636,1,0.25,'right','bottom')
	end

	function ui.DrawScore()
		RenderText('score',string.match(stage.current_stage.name,"[%w_][%w_ ]*$"),528,456,0.5,'center')
		RenderText('score','HiScore\nScore\nPlayer\nGraze',432,424,0.5,'left')
		RenderText('score',string.format('%d\n%d\n%s\n%d',
			max(lstg.tmpvar.hiscore or 0,lstg.var.score),
			lstg.var.score,
			string.rep('*',max(0,lstg.var.lifeleft)),
			lstg.var.graze),
			628,424,0.5,'right')
		Render('hint.power',432,308,0,0.5)
		Render('hint.faith',432,290,0,0.5)
		Render('hint.point',432,272,0,0.5)
		RenderText('score',string.format('%1.2f/5.00\n%d\n%d',lstg.var.power/100,lstg.var.faith,lstg.var.pointrate),628,316,0.4,'right')
	end
else
	LoadImageFromFile('ui_bg','THlib\\ui\\ui_bg_2.png')
	LoadImageFromFile('logo','THlib\\ui\\logo.png')
	LoadImageFromFile('menu_bg','THlib\\ui\\menu_bg_2.png')

	function ui.DrawFrame()
		Render('ui_bg',198,264)
	end

	function ui.DrawMenuBG()
		SetViewMode'ui'
		Render('menu_bg',198,264)
		SetFontState('menu','',Color(0xFF000000))
		RenderText('menu',string.format('%.1ffps',GetFPS()),393,0,0.25,'right','bottom')
		SetFontState('menu','',Color(0xFFFFFFFF))
		RenderText('menu',string.format('%.1ffps',GetFPS()),392,1,0.25,'right','bottom')
	end

	function ui.DrawScore()
		RenderText('score','HiScore',8,520,0.5,'left','top')
		RenderText('score',string.format('%d',max(lstg.tmpvar.hiscore or 0,lstg.var.score)),190,520,0.5,'right','top')
		RenderText('score','Score',206,520,0.5,'left','top')
		RenderText('score',string.format('%d',lstg.var.score),388,520,0.5,'right','top')
		SetFontState('score','',Color(0xFFFF4040))
		RenderText('score',string.format('%1.2f',lstg.var.power/100),8,496,0.5,'left','top')
		SetFontState('score','',Color(0xFF40FF40))
		RenderText('score',string.format('%d',lstg.var.faith),84,496,0.5,'left','top')
		SetFontState('score','',Color(0xFF4040FF))
		RenderText('score',string.format('%d',lstg.var.pointrate),160,496,0.5,'left','top')
		SetFontState('score','',Color(0xFFFFFFFF))
		RenderText('score',string.format('%d',lstg.var.graze),236,496,0.5,'left','top')
		RenderText('score',string.rep('*',max(0,lstg.var.lifeleft)),388,496,0.5,'right','top')
		
	end
end