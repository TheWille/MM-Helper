script_name("MM Helper")
script_description("MM Helper | Testing")
script_version_number(2)
script_version("0.06")
script_authors("James Shorter")
script_dependencies('SAMP v0.3.7')
local inicfg = require 'inicfg'
local sf = require 'sampfuncs'
local dlstatus = require('moonloader').download_status
local key = require 'vkeys'
local imgui = require 'imgui'
local encoding = require 'encoding'
encoding.default = 'CP1251'
u8 = encoding.UTF8

local main_window_state = imgui.ImBool(false)
local testu_window_state = imgui.ImBool(false)
local testp_window_state = imgui.ImBool(false)
function imgui.OnDrawFrame()
	  if testu_window_state.v then -- чтение и запись значения такой переменной осуществляется через поле v (или Value)
    	local sw, sh = getScreenResolution()
		local btn_size = imgui.ImVec2(-0.1, 0)
		-- по центру
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(420, 250), imgui.Cond.FirstUseEver)
			-- но для передачи значения по указателю - обязательно напрямую
			-- тут testu_window_state передаётся функции imgui.Begin, чтобы можно было отследить закрытие окна нажатием на крестик
				imgui.Begin(u8'Проверка Устава СМИ', testu_window_state)
					if imgui.Button(u8'1 | Рабочий график в СМИ, обеденное время, выходные дни?', btn_size) then sampSendChat('Рабочий график в СМИ, обеденное время, выходные дни?') end
					if imgui.Button(u8'2 | С какой должности можно уходить в отпуск?', btn_size) then sampSendChat('С какой должности можно уходить в отпуск?') end
					if imgui.Button(u8'3 | Должность с которой можно брать фургон без разрешения?', btn_size) then sampSendChat('Должность с которой можно брать фургон без разрешения?') end
					if imgui.Button(u8'4 | Максималый срок отпуска?', btn_size) then sampSendChat('Максималый срок отпуска?') end
					if imgui.Button(u8'5 | Должность с которой можно брать вертолет без разрешения?', btn_size) then sampSendChat('Должность с которой можно брать вертолет без разрешения?') end
					if imgui.Button(u8'6 | Количество руководящих должностей в СМИ?', btn_size) then sampSendChat('Сколько руководящих должностей в СМИ?') end
					if imgui.Button(u8'7 | Разрешено ли сотруднику СМИ носить оружие?', btn_size) then sampSendChat('Разрешено ли сотруднику СМИ носить оружие?') end
					if imgui.Button(u8'8 | Должность с которой сотруднику предоставляется отпуск?', btn_size) then sampSendChat('Должность с которой сотруднику предоставляется отпуск?') end
					if imgui.Button(u8'9 | Разрешено ли сотруднику СМИ иметь при себе наркотики?', btn_size) then sampSendChat('Разрешено ли сотруднику СМИ иметь при себе наркотики?') end
					imgui.End()
		end
	  if testp_window_state.v then -- чтение и запись значения такой переменной осуществляется через поле v (или Value)
    	local sw, sh = getScreenResolution()
		local btn_size = imgui.ImVec2(-0.1, 0)
		-- по центру
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(420, 250), imgui.Cond.FirstUseEver)
			-- но для передачи значения по указателю - обязательно напрямую
			-- тут testp_window_state передаётся функции imgui.Begin, чтобы можно было отследить закрытие окна нажатием на крестик
				imgui.Begin(u8'Проверка ПРО', testp_window_state)
					if imgui.Button(u8'Передать планшет для проверки ПРО', btn_size) then PeredatPlanshet = true end
					if imgui.Button(u8'1 | Куплю дом за 48.500$', btn_size) then sampSendChat('/do На планшете: Куплю дом за 48.500$') end
					if imgui.Button(u8'2 | Продам бизнес за 600.000$', btn_size) then sampSendChat('/do На планшете: Продам бизнес за 600.000$') end
					if imgui.Button(u8'3 | Куплю турисмо', btn_size) then sampSendChat('/do На планшете: Куплю турисмо') end
					if imgui.Button(u8'4 | Куплю макет оружия «Desert Eagle»', btn_size) then sampSendChat('/do На планшете: Куплю макет оружия «Desert Eagle»') end
					if imgui.Button(u8'5 | Ищу отца по имени Alvaro Shorter', btn_size) then sampSendChat('/do На планшете: Ищу отца по имени Alvaro Shorter') end
					if imgui.Button(u8'6 | Куплю дом', btn_size) then sampSendChat('/do На планшете: Куплю дом') end
					if imgui.Button(u8'7 | Обменяю султан на турик', btn_size) then sampSendChat('/do На планшете: Обменяю султан на турик') end
					if imgui.Button(u8'8 | Продам номер в отеле Visage', btn_size) then sampSendChat('/do На планшете: Продам номер в отеле Visage') end
					if imgui.Button(u8'9 | Продам симкарту 11616', btn_size) then sampSendChat('/do На планшете: Продам симкарту 11616') end
					imgui.End()
		end
  if main_window_state.v then -- чтение и запись значения такой переменной осуществляется через поле v (или Value)
    		local sw, sh = getScreenResolution()
			local btn_size = imgui.ImVec2(-0.1, 0)
		-- по центру
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(310, 320), imgui.Cond.FirstUseEver)
    -- но для передачи значения по указателю - обязательно напрямую
    -- тут main_window_state передаётся функции imgui.Begin, чтобы можно было отследить закрытие окна нажатием на крестик
    imgui.Begin(u8'Проверка на собеседовании', main_window_state)
				local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
				local name = sampGetPlayerNickname(id)
			mynick, myname = string.match(name, "(%g+)_(%g+)")
		if imgui.Button(u8'Представиться', btn_size) then
			local randomnumber = math.random(1,3)
			if randomnumber == 1 then sampSendChat('Приветствую, я '..SettingsHelper.settings.rang..' '..mynick..' '..myname..'. Вы на собеседование?') end
			if randomnumber == 2 then sampSendChat('Доброго времени суток, я '..SettingsHelper.settings.rang..' '..mynick..' '..myname..'. Вы на собеседование?') end
			if randomnumber == 3 then sampSendChat('Здравствуйте, я '..SettingsHelper.settings.rang..' '..mynick..' '..myname..'. Вы на собеседование?') end
		end
		if imgui.Button(u8'Попросить документы', btn_size) then
			CheckPass = true
		end
		if imgui.Button(u8'Проверить на знание RP (RP чат)', btn_size) then
			CheckMG = true
		end
		if imgui.Button(u8'Проверить на знание RP (Non RP чат)', btn_size) then
			CheckRPMG = true
		end
		if imgui.CollapsingHeader(u8'Отказать в трудоустройстве') then
			if imgui.Button(u8'Маленький уровень', btn_size) then
			LowLVl = true
			end
			if imgui.Button(u8'Розыск или маленькая законопослушность', btn_size) then
			RoziskOrZakonka = true
			end
			if imgui.Button(u8'Отсутствие водительских прав', btn_size) then
			NetyVodPrav = true
			end
			if imgui.Button(u8'Non RP ник', btn_size) then
			NonRpNick = true
			end
			if imgui.Button(u8'Незнание RP-терминов (RP чат)', btn_size) then
			NeZnanieRpTerminovMG = true
			end
			if imgui.Button(u8'Незнание RP-терминов (NonRP чат)', btn_size) then
			NeZnanieRpTerminov = true
			end
			if imgui.Button(u8'Человек находиться в ЧС СМИ', btn_size) then
			SostoitvBLSMI = true
			end
		end
    imgui.End()
  end
end

--- Main
function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
		  update()
      while update ~= false do wait(100) end
	  if not doesDirectoryExist("moonloader\\config\\MMHelper") then createDirectory("moonloader\\config\\MMHelper") end
	  sampRegisterChatCommand("mmreg", MMregister)
	  sampRegisterChatCommand("test1", TestingReg1)
	  sampRegisterChatCommand("online", CheckMyOnline)
	  sampRegisterChatCommand("mmpass", ComandMMpass)
	  sampRegisterChatCommand("c", ComandCheckTime)
	  sampRegisterChatCommand("sale", ComandSale)
	  sampRegisterChatCommand("changeskin", ComandChangeSkin)
	  sampRegisterChatCommand("skin", ComandChangeSkin)
	  sampRegisterChatCommand("rang", ComandGiveRang)
	  sampRegisterChatCommand("invite", ComandInvite)
	  sampRegisterChatCommand("inv", ComandInvite)
	  sampRegisterChatCommand("r", ComandChatR)
	  sampRegisterChatCommand("f", ComandChatF)
	  sampRegisterChatCommand("rr", ComandNonRPChatR)
	  sampRegisterChatCommand("ff", ComandNonRPChatF)
	  sampRegisterChatCommand("stand", ComandPlantStand)
	  sampRegisterChatCommand("mm", ComandMMinfo)
	  sampRegisterChatCommand("uninvite", ComandUnInvite)
	  sampRegisterChatCommand("uninv", ComandUnInvite)
	  sampRegisterChatCommand("check", ComandCheckBl)
	  sampRegisterChatCommand("sobes", ComandSobes)
	  sampRegisterChatCommand("testu", ComandTestU)
	  sampRegisterChatCommand("testp", ComandTestP)
	  SettingsHelper = inicfg.load(nil, "\\MMHelper\\setting.ini")
	  sampAddChatMessage(string.format("{ffc400}[MM Helper]{FFFFFF} Скрипт запущен. Версия: %s. Разработчик: James Shorter", thisScript().version), 0xDCDCDC) --{DCDCDC}
	  if SettingsHelper ~= nil then sampAddChatMessage(string.format("{ffc400}[MM Helper]{FFFFFF} Вы зарегистрированы. Используйте /mm для просмотра информации"), 0xDCDCDC) ChangeSex() end
	  if SettingsHelper == nil then sampAddChatMessage(string.format("{ffc400}[MM Helper]{FFFFFF} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC)  end
	  downloadblacklistgo = true
      while true do
    wait(0)
	imgui.Process = main_window_state.v or testu_window_state.v or testp_window_state.v
	--------------------------------------------------
	if pregister == true then
	pregister = false
	SettingsHelper = inicfg.load(nil, "\\MMHelper\\setting.ini")
	ChangeSex()
	end
	--------------------------------------------------
	if registration ~= nil then
	registration = nil
	wait(sampGetPlayerPing()+150)
	local strk = 90
	while strk ~= 100 do
		ctext = sampGetChatString(strk)
		strk = strk + 1
		if string.find(ctext, "В стране") or string.find(ctext, "Организация и подразделение:") or string.find(ctext, "Телефон:") then
			if string.find(ctext, "Пол:") then
			sex = string.match(ctext, "| Пол: (%S+) |")
		else
		if string.find(ctext, "Организация и подразделение:") then
			rang, org, podr = string.match(ctext, "Работа: (%W+)  |  Организация и подразделение: (%W+) / (%W+)")
		end
		if string.find(ctext, "Телефон:") then
			nomer = string.match(ctext, "Телефон: (%d+)")
		end
		end
		
	end
end
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Пол: %s. Работа: %s. Подразделение: %s. Номер телефона: %d. Ранг: %s.", sex, org, podr, nomer, rang), 0xDCDCDC)
		local SettingsHelper = inicfg.load({
		  settings =
		  {
			sex = sex,
			org = org,
			podr = podr,
			nomer = nomer,
			rang = rang
		  }
		})
	  inicfg.save(SettingsHelper, "\\MMHelper\\setting.ini")
		wait(200)
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Регистрация завершена."), 0xDCDCDC)
		pregister = true
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if CheckPass == true then
	CheckPass = false
	local randomnumber = math.random(1,3)
		if randomnumber == 1 then
		sampSendChat("Хорошо, тогда не могли бы Вы показать свои докумены?")
		wait(1000)
		sampSendChat("Мне нужен Ваш паспорт и лицензии.")
		end
		if randomnumber == 2 then
		sampSendChat("Не могли бы Вы показать свои докумены?")
		wait(1000)
		sampSendChat("Я "..hotel.." бы взглянуть на Ваш паспорт и лицензии.")
		end
		if randomnumber == 3 then
		sampSendChat("Замечательно, могу ли я посмотреть на Ваши документы?")
		wait(1000)
		sampSendChat("Мне нужен Ваш паспорт и лицензии.")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if CheckMG == true then
	CheckMG = false
	local randomnumber = math.random(1,3)
		if randomnumber == 1 then
		sampSendChat("Что такое по-вашему «МГ»?")
		end
		if randomnumber == 2 then
		sampSendChat("Как Вы считаете, что такое «ПГ»?")
		end
		if randomnumber == 3 then
		sampSendChat("Как Вы думаете, что такое «ДМ»?")
		end
		if randomnumber == 4 then
		sampSendChat("Как Вы думаете, что такое «ТК»?")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if CheckRPMG == true then
	CheckRPMG = false
	local randomnumber = math.random(1,3)
		if randomnumber == 1 then
		sampSendChat("/n Что такое RP, DM, TK? | Ответ на номер: "..SettingsHelper.settings.nomer.."")
		end
		if randomnumber == 2 then
		sampSendChat("/n Что такое PG, MG, BH? | Ответ на номер: "..SettingsHelper.settings.nomer.."")
		end
		if randomnumber == 3 then
		sampSendChat("/n Что такое SK, DB, PG? | Ответ на номер: "..SettingsHelper.settings.nomer.."")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if LowLVl == true then
	LowLVl = false
	sampSendChat("Извините, вы проживаете слишком мало в нашем штате.")
	wait(1300)
	sampSendChat("/n Для вступления в СМИ нужен 3 уровень.")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NonRpNick == true then
	NonRpNick = false
	sampSendChat("Простите, но в вашем паспорте опечатка.")
	wait(1300)
	sampSendChat("/n У вас Non RP ник.")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if RoziskOrZakonka == true then
	RoziskOrZakonka = false
	sampSendChat("/me "..dostal.." планшет")
	wait(1300)
	sampSendChat("/me "..otpravil.." запрос в МВД")
	wait(1300)
	sampSendChat("/do Ответ получен.")
	wait(1300)
	sampSendChat("Извините, вы не можете работать у нас. Вы не законопослушный гражданин.")
	wait(1300)
	sampSendChat("/n У вас розыск или мало законопослушности (Нужно 20+)")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if PeredatPlanshet == true then
	PeredatPlanshet = false
	if tag == nil then sampAddChatMessage('{ffc400}[MM Helper]{f30001} Ошибка. Вы не являетесь сотрудником СМИ.', 0xDCDCDC)
	else
	sampSendChat("/do В руках планшет марки «Mass Media»")
	wait(600)
	sampSendChat("/me "..peredal.." планшет")
	wait(100)
	sampSendChat("/anim 21")
	wait(4400)
	sampSendChat("Это ваш рабочий планшет для проверки объявлений.")
	wait(4400)
	sampSendChat("Его вы получите после сдачи ПРО. На экране планшета вам будут показаны объявления")
	wait(5000)
	sampSendChat("Вы будете должны отредактировать их и отправить, или же отклонить.")
	wait(3400)
	sampSendChat("/n Ответ: /do "..tag.." | Текст")
	wait(4400)
	sampSendChat("И так, начнем.")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NeZnanieRpTerminovMG == true then
	NeZnanieRpTerminovMG = false
	sampSendChat("Прошу прощения, но Вы бредите. Отрезвейте и приходите нам в другой раз.")
	wait(1200)
	sampSendChat("/n Вы не знаете RP термины. Их можно посмотреть на форуме")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NeZnanieRpTerminov == true then
	NeZnanieRpTerminov = false
	sampSendChat("/me внимательно "..posmotrel.." на человека")
	wait(1200)
	sampSendChat("Извините, но вы как-то нездорово выглядите. Сходите к врачу")
	wait(1200)
	sampSendChat("/n Вы не знаете RP термины. Их можно посмотреть на форум")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if SostoitvBLSMI == true then
	SostoitvBLSMI = false
	sampSendChat("/me "..dostal.." планшет")
	wait(1300)
	sampSendChat("/me "..otpravil.." запрос в базу данных СМИ")
	wait(1300)
	sampSendChat("/do Ответ получен.")
	wait(1300)
	sampSendChat("К сожалению, вы состоите в ЧС СМИ. Трудоустройство для вас невозможно.")
	wait(1300)
	sampSendChat("/n Более подробную информацию о ЧС СМИ вы можете посмотреть на форуме.")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NetyVodPrav == true then
	NetyVodPrav = false
	sampSendChat("К сожалению, Вы нам не подходите. У Вас отсутствует лицензия на управление транспортом.")
	wait(1200)
	sampSendChat("/n Лицензию можно приобрести у любого лицензера /liclist, или же сдать эказамен в автошколе.")
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ShowMMpass == true then
	ShowMMpass = false
	sampSendChat("/do В кармане штанов документы.")
	wait(400)
	sampSendChat(string.format("/me %s документ из кармана штанов, затем %s документ", dostal, predyavil))
	wait(400)
	sampSendChat(string.format("/do На документе написано: %s | %s | [№%d]", SettingsHelper.settings.rang,SettingsHelper.settings.podr,SettingsHelper.settings.nomer))
	wait(2000)
    sampSendChat(string.format("/me %s документы обратно в карман", ubral))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if StandOn == true then
	StandOn = false
	sampSendChat("/do В рюкзаке лежат инструменты и детали для палатки.")
	wait(400)
	sampSendChat(string.format("/me %s инструменты", dostal))
	wait(400)
	sampSendChat(string.format("/me %s палатку", razlozhil))
	wait(2000)
    sampSendChat("/do Палатка разложена.")
	wait(200)
	sampSendChat(string.format("/me %s инструменты в рюкзак", spryatal))
	wait(400)
	sampSendChat("/stand")
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if StandOff == true then
	StandOff = false
	sampSendChat("/do На спине лежит рюкзак с инструментами.")
	wait(400)
	sampSendChat(string.format("/me %s инструменты", dostal))
	wait(400)
	sampSendChat(string.format("/me %s палатку", slojil))
	wait(2000)
    sampSendChat("/do Палатка сложена.")
	wait(200)
	sampSendChat(string.format("/me %s инструменты и детали палатки в рюкзак", spryatal))
	wait(400)
	sampSendChat("/stand")
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandMMinfo == true then
	ComandMMinfo = false
		submenus_show(MMinfo, '{FFFFFF}Меню скрипта.')
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandSobes == true then
	ComandSobes = false
		main_window_state.v = not main_window_state.v
		--submenus_show(sobesdialog, '{FFFFFF}Проверка на собеседовании')
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandTestU == true then
	ComandTestU = false
		testu_window_state.v = not testu_window_state.v
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandTestP == true then
	ComandTestP = false
		testp_window_state.v = not testp_window_state.v
	end
	  -------------------------------------------------------------------------------------------------------------------------------------------------------
	      if downloadblacklistgo then
		  downloadblacklistgo = false
      local url = 'https://raw.githubusercontent.com/TheWille/MM-Helper/master/blacklist.txt'
      local file_path = getWorkingDirectory() .. '/config/MMHelper/blacklist.txt'
      download_id = downloadUrlToFile(url, file_path, download_handler)
      print('Загрузка Черного Списка СМИ начата.')
    end
	  -------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandPlantStand == true then
	ComandPlantStand = false
		submenus_show(GoStand, '{FFFFFF}Установка палатки для продажи газет')
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandSale == true then
	ComandSale = false
	sampSendChat("/do На столе стопка газет.")
	wait(500)
	sampSendChat(string.format("/me %s одну газету и %s ее покупателю", vzyal, peredal))
	wait(400)
	sampSendChat("/anim 21")
	wait(2000)
    sampSendChat(string.format("/sale %d", idPlayerSale))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandChangeSkin == true then
	ComandChangeSkin = false
	sampSendChat("/do На полу лежил пакет с новой формой.")
	wait(500)
	sampSendChat(string.format("/me %s пакет с новой формой", vzyal))
	wait(500)
	sampSendChat(string.format("/me %s форму человеку напротив", peredal))
	wait(500)
	sampSendChat("/anim 21")
	wait(700)
    sampSendChat(string.format("/changeskin %d", idPlayerChangeSkin))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if checkBlackList == true then
	checkBlackList = false
	local id = idPlayerCheckBl
			if sampIsPlayerConnected(id) then -- Если игрок подключён.
    tobl = getWorkingDirectory() .. '/config/MMHelper/blacklist.txt' -- Местонахождение файла blacklist.txt.
    checkerfiler = io.open(tobl, 'r') -- Открываем файл в режиме чтения.
    if checkerfiler == nil then sampAddChatMessage('{ffc400}[MM Helper]{f30001} Ошибка. Не удалось обновить Черный Список СМИ.', 0xDCDCDC) -- Если файл не открылся, то выводит в чат сообщение.
    else -- Если файл открылся
		nick = sampGetPlayerNickname(id) -- Выводим игрока ник.
		sampSendChat('/history '..nick) -- Пишет в чат команду /history
		wait(sampGetPlayerPing()+250)
			nick = sampGetPlayerNickname(id) -- Выводим игрока ник.
			checkblgood = true
		end
		else
		sampAddChatMessage('{ffc400}[MM Helper]{04b901} Такого игрока нету на сервере.', 0xDCDCDC)
    end
end
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	if checkblgood == true then 
	checkblgood = false
	stopcheckblqq = false
	wait(sampGetPlayerPing()+250)
	if sampGetCurrentDialogId() == 436 and sampIsDialogActive() then
	local dial = sampGetDialogText() -- Получаем текст диалога.
	local dialogname = sampGetDialogCaption()
	checkerfiler = io.open(tobl, 'r')
	for lines in checkerfiler:lines() do -- Проверяем каждую строку файла
		if string.find(dial, lines) or string.find(dialogname, lines) then -- Если в тексте диалога есть ник со строки lines, то выводит в чат.
			sampAddChatMessage('{ffc400}[MM Helper]{f30001} '..nick..' находится в Черном Списке СМИ. Под ником: '..lines..'', 0xDCDCDC)
			if sampGetCurrentDialogId() == 436 and sampIsDialogActive() then
			setVirtualKeyDown(27, true)
			setVirtualKeyDown(27, false)
			stopcheckblqq = true
			break
				end
				end
			end
		if stopcheckblqq ~= true and sampGetCurrentDialogId() == 436 and sampIsDialogActive() then
			setVirtualKeyDown(13, true)
			setVirtualKeyDown(13, false)
			wait(sampGetPlayerPing()+250)
			checkblgood = true
					end
		else
		sampAddChatMessage('{ffc400}[MM Helper]{04b901} '..nick..' не находится в Черном Списке СМИ.', 0xDCDCDC)
		end
		
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandGiveRang == true then
	ComandGiveRang = false
	sampSendChat("/do Новый бейджик в правой руке.")
	wait(500)
	sampSendChat(string.format("/me %s бейджик сотруднику напротив", peredal))
	wait(500)
	sampSendChat(string.format("/rang %d %s", idPlayerRang, KakoiRang))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandUnInvite == true then
	ComandUnInvite = false
	sampSendChat("/do В правой руке планшет.")
	wait(500)
	sampSendChat(string.format("/me %s планшет %s в раздел «Сотрудники»", razblokiroval, zashel))
	wait(500)
	sampSendChat(string.format("/me %s сотрудника %s %s и %s сотрудника из базы данных", nashel, nickUnInvite, nameUnInvite, udalil))
	wait(500)
	sampSendChat(string.format("/uninvite %d %s", idPlayerUninvite, ReasonUnInvite))
	wait(1000)
    sampSendChat(string.format("/me %s планшет", zablokiroval))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandChatF == true then
	ComandChatF = false
	sampSendChat(string.format("/f %s %s", tag, TextInChatF))
	wait(50)
    sampSendChat(string.format("/me %s рацию с пояса и что-то %s зажав кнопку [F]", snyal, proiznes))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandChatR == true then
	ComandChatR = false
	sampSendChat(string.format("/r %s", TextInChatR))
	wait(50)
    sampSendChat(string.format("/me %s рацию с пояса и что-то %s зажав кнопку [R]", snyal, proiznes))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandNonRPChatF == true then
	ComandNonRPChatF = false
	sampSendChat(string.format("/f (( %s ))", TextInNonRPChatF))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandNonRPChatR == true then
	ComandNonRPChatR = false
	sampSendChat(string.format("/r (( %s ))", TextInNonRPChatR))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandInvite == true then
	ComandInvite = false
	sampSendChat("/do Пакет с формой и бейджиком находится на полу.")
	wait(500)
	sampSendChat(string.format("/me нагнувшись, %s пакет с формой и бейджиком", vzyal))
	wait(1300)
	sampSendChat(string.format("/me %s пакет с формой и бейджиком", peredal))
	wait(500)
	sampSendChat("/anim 21")
	wait(300)
    sampSendChat(string.format("/invite %d", idPlayerInvite))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if GoCheckTime == true then
		GoCheckTime = false
		sampSendChat(string.format("/c %s", nomerapplewatch))
		wait(sampGetPlayerPing()+100)
		if sampGetCurrentDialogId() == 176 and sampIsDialogActive() then
		sampSendChat(string.format("/me %s на часы марки «Apple Watch»", posmotrel))
		end
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
    if dialogc60 ~= nil then
	wait(sampGetPlayerPing()+150)
	dialogc60 = nil 
    if sampGetCurrentDialogId() == 176 and sampIsDialogActive() then
	local dialogc60 = sampGetDialogText()
	if dialogc60 ~= nil then
	local VSHour, VSMin = string.match(dialogc60, "Время в игре сегодня:		{ffcc00}(%d+) ч (%d+) мин")
	local VSHourAFK, VSMinAFK = string.match(dialogc60, "{FFFFFF}AFK за сегодня:		{FF7000}(%d+) ч (%d+) мин")
	local VSNOAFKMin = VSHour*60+VSMin
	local VSAFKmin = VSHourAFK*60+VSMinAFK
	local VSclearMin = VSNOAFKMin-VSAFKmin
	------------------------- Время следущего дня --------------------------
	local VCHour, VCMin = string.match(dialogc60, "{FFFFFF}Время в игре вчера:		{ffcc00}(%d+) ч (%d+) мин")
	local VCHourAFK, VCMinAFK = string.match(dialogc60, "{FFFFFF}AFK за вчера:			{FF7000}(%d+) ч (%d+) мин")
	local VCNOAFKMin = VCHour*60+VCMin
	local VCAFKmin = VCHourAFK*60+VCMinAFK
	local VCclearMin = VCNOAFKMin-VCAFKmin
	 --sampSendChat(string.format("/w [NO AFK]Часов: %d Минут: %d", VSHour, VSMin))
	 --sampSendChat(string.format("/w [AFK]Часов: %d Минут: %d", VSHourAFK, VSMinAFK))
	 --sampSendChat(string.format("/w [Clear]Минут: %d", VSclearMin))
	 sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Чистого онлайна за сегодня: {98E372}%d ч %d мин", mTOh(VSclearMin)), 0xDCDCDC)
	 sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Чистого онлайна за вчера: {98E372}%d ч %d мин", mTOh(VCclearMin)), 0xDCDCDC)
	--sampSendChat(string.format("%d %d", mTOh(VSclearMin)))
		end
	end
    end
  end
	
 end
--- Callbacks
function CheckMyOnline(param)
	sampSendChat("/c 60")
	dialogc60 = 123
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function TestingReg1(param)
	if SettingsHelper ~= nil then
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Пол: %s. Работа: %s. Подразделение: %s. Номер телефона: %d. Ранг: %s.", SettingsHelper.settings.sex, SettingsHelper.settings.org, SettingsHelper.settings.podr, SettingsHelper.settings.nomer, SettingsHelper.settings.rang), 0xDCDCDC)
	end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandMMpass(param)
	if SettingsHelper ~= nil then
	ShowMMpass = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandPlantStand(param)
	if SettingsHelper ~= nil then
	ComandPlantStand = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandTestU(param)
	if SettingsHelper ~= nil then
	ComandTestU = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandTestP(param)
	if SettingsHelper ~= nil then
	ComandTestP = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandSobes(param)
	if SettingsHelper ~= nil then
	ComandSobes = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandU(param)
	if SettingsHelper ~= nil then
	ComandU = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandMMinfo(param)
	if SettingsHelper ~= nil then
	ComandMMinfo = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandSale(param)
	idPlayerSale = tonumber(param)
	if SettingsHelper ~= nil then
		if idPlayerSale ~= nil and idPlayerSale >= 0 and idPlayerSale <= 1000 then
		ComandSale = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /sale [id игрока]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandInvite(param)
	idPlayerInvite = tonumber(param)
	if SettingsHelper ~= nil then
		if idPlayerInvite ~= nil and idPlayerInvite >= 0 and idPlayerInvite <= 1000 then
		ComandInvite = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /invite [id игрока]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandChatR(param)
	TextInChatR = (param)
	if SettingsHelper ~= nil then
		if TextInChatR ~= nil or TextInChatR ~= " " then
		ComandChatR = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /r [текст]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandChatF(param)
	TextInChatF = (param)
	if SettingsHelper ~= nil then
		if TextInChatF ~= nil or TextInChatF ~= " " then
		ComandChatF = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /f [текст]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandNonRPChatR(param)
	TextInNonRPChatR = (param)
	if SettingsHelper ~= nil then
		if TextInNonRPChatR ~= nil or TextInNonRPChatR ~= " " then
		ComandNonRPChatR = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /rr [текст]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandNonRPChatF(param)
	TextInNonRPChatF = (param)
	if SettingsHelper ~= nil then
		if TextInNonRPChatF ~= nil or TextInNonRPChatF ~= " " then
		ComandNonRPChatF = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /ff [текст]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandGiveRang(param)
	idPlayerRang, KakoiRang = string.match(param, "(%d+) (.*)")
	idPlayerRang = tonumber(idPlayerRang)
	if SettingsHelper ~= nil then
		if idPlayerRang ~= nil and idPlayerRang >= 0 and idPlayerRang <= 1000 then
			if KakoiRang == "-" or KakoiRang == "+" then
		ComandGiveRang = true
		else 
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /rang [id игрока] [+/-]"), 0xDCDCDC) end
		else 
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /rang [id игрока] [+/-]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandUnInvite(param)
	idPlayerUninvite, ReasonUnInvite = string.match(param, "(%d+) (.*)")
	idPlayerUninvite = tonumber(idPlayerUninvite)
	if SettingsHelper ~= nil then
		if idPlayerUninvite ~= nil and idPlayerUninvite >= 0 and idPlayerUninvite <= 1000 then
			if ReasonUnInvite ~= "" then
			local name = sampGetPlayerNickname(idPlayerUninvite)
			nickUnInvite, nameUnInvite = string.match(name, "(%g+)_(%g+)")
		ComandUnInvite = true
		else 
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /uninvite [id игрока] [Причина]"), 0xDCDCDC) end
		else 
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /uninvite [id игрока] [Причина]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandChangeSkin(param)
	idPlayerChangeSkin = tonumber(param)
	if SettingsHelper ~= nil then
		if idPlayerChangeSkin ~= nil and idPlayerChangeSkin >= 0 and idPlayerChangeSkin <= 1000 then
		ComandChangeSkin = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Используйте /changeskin [id игрока]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandCheckBl(param)
	idPlayerCheckBl = tonumber(param)
	checkBlackList = true
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandCheckTime(param)
	if SettingsHelper ~= nil then
		nomerapplewatch = param
		--if param == "60" or param == "060" then 
		GoCheckTime = true  
		--end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Вы не зарегистрированы. Используйте /mmreg"), 0xDCDCDC)
	end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function MMregister(param)
	local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
	sampSendChat(string.format("/pass %d", id))
	local strk = 1
	while strk < 21 do
		sampAddChatMessage((""),0xFFFFFF)
		strk = strk + 1
	end
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} Регистрация в скрипте началась. Ожидайте ее завершения."), 0xDCDCDC)
	registration = true
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function mTOh(mins)
    return math.floor(mins/60), (mins%60)
end

local russian_characters = {
  [192] = 'А', [193] = 'Б', [194] = 'В', [195] = 'Г', [196] = 'Д', [197] = 'Е', [198] = 'Ж', [199] = 'З', [200] = 'И', [201] = 'Й', [202] = 'К', [203] = 'Л', [204] = 'М', [205] = 'Н', [206] = 'О', [207] = 'П', [208] = 'Р', [209] = 'С', [210] = 'Т', [211] = 'У', [212] = 'Ф', [213] = 'Х', [214] = 'Ц', [215] = 'Ч', [216] = 'Ш', [217] = 'Щ', [218] = 'Ъ', [219] = 'Ы', [220] = 'Ь', [221] = 'Э', [222] = 'Ю', [223] = 'Я', [224] = 'а', [225] = 'б', [226] = 'в', [227] = 'г', [228] = 'д', [229] = 'е', [230] = 'ж', [231] = 'з', [232] = 'и', [233] = 'й', [234] = 'к', [235] = 'л', [236] = 'м', [237] = 'н', [238] = 'о', [239] = 'п', [240] = 'р', [241] = 'с', [242] = 'т', [243] = 'у', [244] = 'ф', [245] = 'х', [246] = 'ц', [247] = 'ч', [248] = 'ш', [249] = 'щ', [250] = 'ъ', [251] = 'ы', [252] = 'ь', [253] = 'э', [254] = 'ю', [255] = 'я',
}
function rusLower(s)
  local strlen = s:len()
  if strlen == 0 then return s end
  local output = ''
  for i = 1, strlen do
    local ch = s:byte(i)
    if ch >= 192 and ch <= 223 then -- upper characters
      output = output .. russian_characters[ch+32]
    else
      output = output .. string.char(ch)
    end
  end
  return output
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ChangeSex(param)
	if SettingsHelper.settings.sex == "Мужской" then
		dostal = "достал"
		ubral = "убрал"
		predyavil = "предъявил"
		posmotrel = "посмотрел"
		vzyal = "взял"
		peredal = "передал"
		snyal = "снял"
		proiznes = "произнес"
		razblokiroval = "разблокировал"
		zashel = "зашел"
		zablokiroval = "заблокировал"
		udalil = "удалил"
		nashel = "нашел"
		razlozhil = "разложил"
		spryatal = "спрятал"
		slojil = "сложил"
		hotel = "хотел"
		otpravil = "отправил"
	end
	if SettingsHelper.settings.sex == "Женский" then
		dostal = "достала"
		ubral = "убрала"
		predyavil = "предъявила"
		posmotrel = "посмотрел"
		vzyal = "взяла"
		peredal = "передала"
		snyal = "сняла"
		proiznes = "произнесла"
		razblokiroval = "разблокировала"
		zashel = "зашла"
		zablokiroval = "заблокировала"
		udalil = "удалила"
		nashel = "нашла"
		razlozhil = "разложила"
		spryatal = "спрятала"
		slojil = "сложила"
		hotel = "хотела"
		otpravil = "отправила"
	end
	if SettingsHelper.settings.podr == "Радиоцентр ЛС" then tag = "LS |" end
	if SettingsHelper.settings.podr == "Радиоцентр СФ" then tag = "SF |" end
	if SettingsHelper.settings.podr == "Радиоцентр ЛВ" then tag = "LV |" end
	if SettingsHelper.settings.podr == "Телецентр" then tag = "TV |" end
	if SettingsHelper.settings.podr == "ТВ-Радио" then tag = "MM |" end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
GoStand = {
    {
        title = '{FF9000}1. {FFFFFF}Установить палатку для продажи газет.',
        onclick = function()
           StandOn = true
        end
    },
    {
        title = '{FF9000}2. {FFFFFF}Убрать палатку для продажи газет.',
        onclick = function()
            StandOff = true
        end
    },
    {
        title = '{FF9000}3. {FFFFFF}Поставить или убрать без RolePlay отыгровки.',
        onclick = function()
		sampSendChat("/stand")
        end
    }
}
	-------------------------------------------------------------------------------------------------------------------------------------------------------
MMinfo = {
    {
        title = '{FF9000}1. {FFFFFF}Информация о скрипте.',
        onclick = function()
            sampShowDialog(436, "{FFFFFF}Информация", dialogmminfo, "Окей", "Закрыть", 0)
        end
    },
    {
        title = '{FF9000}2. {FFFFFF}Список команд.',
        onclick = function()
            sampShowDialog(435, "{FFFFFF}Список команд", listcomands, "Окей", "Закрыть", 0)
        end
    }
  --  {
  --      title = '{FF9000}3. {FFFFFF}Настройки.',
  --      onclick = function()
  --          ShowMMpass = true
  --      end
  --  }
}
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function rusUpper(s)
  local strlen = s:len()
  if strlen == 0 then return s end
  local output = ''
  for i = 1, strlen do
    local ch = s:byte(i)
    if ch >= 224 and ch <= 255 then -- lower characters
      output = output .. russian_characters[ch-32]
    else
      output = output .. string.char(ch)
    end
  end
  return output
end
function submenus_show(menu, caption, select_button, close_button, back_button)
    select_button, close_button, back_button = select_button or 'Выбрать', close_button or 'Закрыть', back_button or 'Back'
    prev_menus = {}
    function display(menu, id, caption)
        local string_list = {}
        for i, v in ipairs(menu) do
            table.insert(string_list, type(v.submenu) == 'table' and v.title .. '  >>' or v.title)
        end
        sampShowDialog(id, caption, table.concat(string_list, '\n'), select_button, (#prev_menus > 0) and back_button or close_button, sf.DIALOG_STYLE_LIST)
        repeat
            wait(0)
            local result, button, list = sampHasDialogRespond(id)
            if result then
                if button == 1 and list ~= -1 then
                    local item = menu[list + 1]
                    if type(item.submenu) == 'table' then -- submenu
                        table.insert(prev_menus, {menu = menu, caption = caption})
                        if type(item.onclick) == 'function' then
                            item.onclick(menu, list + 1, item.submenu)
                        end
                        return display(item.submenu, id + 1, item.submenu.title and item.submenu.title or item.title)
                    elseif type(item.onclick) == 'function' then
                        local result = item.onclick(menu, list + 1)
                        if not result then return result end
                        return display(menu, id, caption)
                    end
                else -- if button == 0
                    if #prev_menus > 0 then
                        local prev_menu = prev_menus[#prev_menus]
                        prev_menus[#prev_menus] = nil
                        return display(prev_menu.menu, id - 1, prev_menu.caption)
                    end
                    return false
                end
            end
        until result
    end
    return display(menu, 31337, caption or menu.title)
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	listcomands = [[		{3399FF}Основные команды:    
{FFFFFF}/stand - {FF8C00}Меню установки палатки
{FFFFFF}/sale [id] - {FF8C00}Продать газету игроку
{FFFFFF}/mmpass - {FF8C00}Предъявить удостоверение сотрудника СМИ.

		{3399FF}Команды старшего состава:         
{FFFFFF}/sobes - {FF8C00}Проверка на собеседовании
{FFFFFF}/testp - {FF8C00}Проверка на знание ПРО
{FFFFFF}/testu - {FF8C00}Проверка на знание Устава СМИ	
{FFFFFF}/rlec - {FF8C00}Случайная лекция в рацию						 
{FFFFFF}/rang [id] [+ / -] - {FF8C00}Повысить сотрудника
{FFFFFF}/invite (/inv) [id] - {FF8C00}Принять в подразделение
{FFFFFF}/uninvite (/uninv) [id] [причина] - {FF8C00}Уволить сотрудника
{FFFFFF}/changeskin (/skin) [id] - {FF8C00}Сменить одежду сотруднику]]
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	dialogmminfo = [[{3399FF}MM Helper{EEEE00} v0.0.6
{3399FF}Разработчик скрипта: James Shorter

{FFFFFF}Регистрация в скрипте: {FF8C00}/mmreg
{FFFFFF}Меню скрипта: {FF8C00}/mm
{FFFFFF}Последние обновления: {FF8C00}/updates

{3399FF}Подробную информацию о скрипте и связь с автором
можете посмотреть на форуме (forum.advance-rp.ru)

{FF8C00}White Server>Организации>ТВ и радио>
>MM | MM Helper - Универсальный AHK для СМИ.
]]
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function update()
	local fpath = os.getenv('TEMP') .. '\\mmhelper-version.json'
	downloadUrlToFile('https://raw.githubusercontent.com/TheWille/MM-Helper/master/version.json', fpath, function(id, status, p1, p2)
		if status == dlstatus.STATUS_ENDDOWNLOADDATA then
		local f = io.open(fpath, 'r')
		if f then
			local info = decodeJson(f:read('*a'))
			updatelink = info.updateurl
			if info and info.latest then
				version = tonumber(info.latest)
				if version > tonumber(thisScript().version) then
					lua_thread.create(goupdate)
				else
					update = false
				end
			end
		end
	end
end)
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
--скачивание актуальной версии
function goupdate()
sampAddChatMessage(("[{ffc400}[MM Helper]{DCDCDC} Обнаружено обновление. Попробую обновиться.."), color)
sampAddChatMessage(("{ffc400}[MM Helper]{DCDCDC} Текущая версия: "..thisScript().version..". Новая версия: "..version), color)
wait(300)
downloadUrlToFile(updatelink, thisScript().path, function(id3, status1, p13, p23)
	if status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
	sampAddChatMessage(("{ffc400}[MM Helper]{DCDCDC} Обновление завершено!"), color)
	thisScript():reload()
end
end)
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	function download_handler(id, status, p1, p2)
  if status == dlstatus.STATUS_DOWNLOADINGDATA then
    print(string.format('Загружено %d из %d.', p1, p2))
  elseif status == dlstatus.STATUS_ENDDOWNLOADDATA then
    print('Загрузка Черного Списка СМИ завершена.')
	downloadblacklistprofit = true
	--sampAddChatMessage(("{ffc400}[MM Helper]{DCDCDC} ЧС СМИ загружен"), color)
  end
end