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
	  if testu_window_state.v then -- ������ � ������ �������� ����� ���������� �������������� ����� ���� v (��� Value)
    	local sw, sh = getScreenResolution()
		local btn_size = imgui.ImVec2(-0.1, 0)
		-- �� ������
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(420, 250), imgui.Cond.FirstUseEver)
			-- �� ��� �������� �������� �� ��������� - ����������� ��������
			-- ��� testu_window_state ��������� ������� imgui.Begin, ����� ����� ���� ��������� �������� ���� �������� �� �������
				imgui.Begin(u8'�������� ������ ���', testu_window_state)
					if imgui.Button(u8'1 | ������� ������ � ���, ��������� �����, �������� ���?', btn_size) then sampSendChat('������� ������ � ���, ��������� �����, �������� ���?') end
					if imgui.Button(u8'2 | � ����� ��������� ����� ������� � ������?', btn_size) then sampSendChat('� ����� ��������� ����� ������� � ������?') end
					if imgui.Button(u8'3 | ��������� � ������� ����� ����� ������ ��� ����������?', btn_size) then sampSendChat('��������� � ������� ����� ����� ������ ��� ����������?') end
					if imgui.Button(u8'4 | ���������� ���� �������?', btn_size) then sampSendChat('���������� ���� �������?') end
					if imgui.Button(u8'5 | ��������� � ������� ����� ����� �������� ��� ����������?', btn_size) then sampSendChat('��������� � ������� ����� ����� �������� ��� ����������?') end
					if imgui.Button(u8'6 | ���������� ����������� ���������� � ���?', btn_size) then sampSendChat('������� ����������� ���������� � ���?') end
					if imgui.Button(u8'7 | ��������� �� ���������� ��� ������ ������?', btn_size) then sampSendChat('��������� �� ���������� ��� ������ ������?') end
					if imgui.Button(u8'8 | ��������� � ������� ���������� ��������������� ������?', btn_size) then sampSendChat('��������� � ������� ���������� ��������������� ������?') end
					if imgui.Button(u8'9 | ��������� �� ���������� ��� ����� ��� ���� ���������?', btn_size) then sampSendChat('��������� �� ���������� ��� ����� ��� ���� ���������?') end
					imgui.End()
		end
	  if testp_window_state.v then -- ������ � ������ �������� ����� ���������� �������������� ����� ���� v (��� Value)
    	local sw, sh = getScreenResolution()
		local btn_size = imgui.ImVec2(-0.1, 0)
		-- �� ������
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(420, 250), imgui.Cond.FirstUseEver)
			-- �� ��� �������� �������� �� ��������� - ����������� ��������
			-- ��� testp_window_state ��������� ������� imgui.Begin, ����� ����� ���� ��������� �������� ���� �������� �� �������
				imgui.Begin(u8'�������� ���', testp_window_state)
					if imgui.Button(u8'�������� ������� ��� �������� ���', btn_size) then PeredatPlanshet = true end
					if imgui.Button(u8'1 | ����� ��� �� 48.500$', btn_size) then sampSendChat('/do �� ��������: ����� ��� �� 48.500$') end
					if imgui.Button(u8'2 | ������ ������ �� 600.000$', btn_size) then sampSendChat('/do �� ��������: ������ ������ �� 600.000$') end
					if imgui.Button(u8'3 | ����� �������', btn_size) then sampSendChat('/do �� ��������: ����� �������') end
					if imgui.Button(u8'4 | ����� ����� ������ �Desert Eagle�', btn_size) then sampSendChat('/do �� ��������: ����� ����� ������ �Desert Eagle�') end
					if imgui.Button(u8'5 | ��� ���� �� ����� Alvaro Shorter', btn_size) then sampSendChat('/do �� ��������: ��� ���� �� ����� Alvaro Shorter') end
					if imgui.Button(u8'6 | ����� ���', btn_size) then sampSendChat('/do �� ��������: ����� ���') end
					if imgui.Button(u8'7 | ������� ������ �� �����', btn_size) then sampSendChat('/do �� ��������: ������� ������ �� �����') end
					if imgui.Button(u8'8 | ������ ����� � ����� Visage', btn_size) then sampSendChat('/do �� ��������: ������ ����� � ����� Visage') end
					if imgui.Button(u8'9 | ������ �������� 11616', btn_size) then sampSendChat('/do �� ��������: ������ �������� 11616') end
					imgui.End()
		end
  if main_window_state.v then -- ������ � ������ �������� ����� ���������� �������������� ����� ���� v (��� Value)
    		local sw, sh = getScreenResolution()
			local btn_size = imgui.ImVec2(-0.1, 0)
		-- �� ������
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(310, 320), imgui.Cond.FirstUseEver)
    -- �� ��� �������� �������� �� ��������� - ����������� ��������
    -- ��� main_window_state ��������� ������� imgui.Begin, ����� ����� ���� ��������� �������� ���� �������� �� �������
    imgui.Begin(u8'�������� �� �������������', main_window_state)
				local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
				local name = sampGetPlayerNickname(id)
			mynick, myname = string.match(name, "(%g+)_(%g+)")
		if imgui.Button(u8'�������������', btn_size) then
			local randomnumber = math.random(1,3)
			if randomnumber == 1 then sampSendChat('�����������, � '..SettingsHelper.settings.rang..' '..mynick..' '..myname..'. �� �� �������������?') end
			if randomnumber == 2 then sampSendChat('������� ������� �����, � '..SettingsHelper.settings.rang..' '..mynick..' '..myname..'. �� �� �������������?') end
			if randomnumber == 3 then sampSendChat('������������, � '..SettingsHelper.settings.rang..' '..mynick..' '..myname..'. �� �� �������������?') end
		end
		if imgui.Button(u8'��������� ���������', btn_size) then
			CheckPass = true
		end
		if imgui.Button(u8'��������� �� ������ RP (RP ���)', btn_size) then
			CheckMG = true
		end
		if imgui.Button(u8'��������� �� ������ RP (Non RP ���)', btn_size) then
			CheckRPMG = true
		end
		if imgui.CollapsingHeader(u8'�������� � ���������������') then
			if imgui.Button(u8'��������� �������', btn_size) then
			LowLVl = true
			end
			if imgui.Button(u8'������ ��� ��������� �����������������', btn_size) then
			RoziskOrZakonka = true
			end
			if imgui.Button(u8'���������� ������������ ����', btn_size) then
			NetyVodPrav = true
			end
			if imgui.Button(u8'Non RP ���', btn_size) then
			NonRpNick = true
			end
			if imgui.Button(u8'�������� RP-�������� (RP ���)', btn_size) then
			NeZnanieRpTerminovMG = true
			end
			if imgui.Button(u8'�������� RP-�������� (NonRP ���)', btn_size) then
			NeZnanieRpTerminov = true
			end
			if imgui.Button(u8'������� ���������� � �� ���', btn_size) then
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
	  sampAddChatMessage(string.format("{ffc400}[MM Helper]{FFFFFF} ������ �������. ������: %s. �����������: James Shorter", thisScript().version), 0xDCDCDC) --{DCDCDC}
	  if SettingsHelper ~= nil then sampAddChatMessage(string.format("{ffc400}[MM Helper]{FFFFFF} �� ����������������. ����������� /mm ��� ��������� ����������"), 0xDCDCDC) ChangeSex() end
	  if SettingsHelper == nil then sampAddChatMessage(string.format("{ffc400}[MM Helper]{FFFFFF} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC)  end
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
		if string.find(ctext, "� ������") or string.find(ctext, "����������� � �������������:") or string.find(ctext, "�������:") then
			if string.find(ctext, "���:") then
			sex = string.match(ctext, "| ���: (%S+) |")
		else
		if string.find(ctext, "����������� � �������������:") then
			rang, org, podr = string.match(ctext, "������: (%W+)  |  ����������� � �������������: (%W+) / (%W+)")
		end
		if string.find(ctext, "�������:") then
			nomer = string.match(ctext, "�������: (%d+)")
		end
		end
		
	end
end
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ���: %s. ������: %s. �������������: %s. ����� ��������: %d. ����: %s.", sex, org, podr, nomer, rang), 0xDCDCDC)
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
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� ���������."), 0xDCDCDC)
		pregister = true
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if CheckPass == true then
	CheckPass = false
	local randomnumber = math.random(1,3)
		if randomnumber == 1 then
		sampSendChat("������, ����� �� ����� �� �� �������� ���� ��������?")
		wait(1000)
		sampSendChat("��� ����� ��� ������� � ��������.")
		end
		if randomnumber == 2 then
		sampSendChat("�� ����� �� �� �������� ���� ��������?")
		wait(1000)
		sampSendChat("� "..hotel.." �� ��������� �� ��� ������� � ��������.")
		end
		if randomnumber == 3 then
		sampSendChat("������������, ���� �� � ���������� �� ���� ���������?")
		wait(1000)
		sampSendChat("��� ����� ��� ������� � ��������.")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if CheckMG == true then
	CheckMG = false
	local randomnumber = math.random(1,3)
		if randomnumber == 1 then
		sampSendChat("��� ����� ��-������ ��û?")
		end
		if randomnumber == 2 then
		sampSendChat("��� �� ��������, ��� ����� ��û?")
		end
		if randomnumber == 3 then
		sampSendChat("��� �� �������, ��� ����� ��̻?")
		end
		if randomnumber == 4 then
		sampSendChat("��� �� �������, ��� ����� ��ʻ?")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if CheckRPMG == true then
	CheckRPMG = false
	local randomnumber = math.random(1,3)
		if randomnumber == 1 then
		sampSendChat("/n ��� ����� RP, DM, TK? | ����� �� �����: "..SettingsHelper.settings.nomer.."")
		end
		if randomnumber == 2 then
		sampSendChat("/n ��� ����� PG, MG, BH? | ����� �� �����: "..SettingsHelper.settings.nomer.."")
		end
		if randomnumber == 3 then
		sampSendChat("/n ��� ����� SK, DB, PG? | ����� �� �����: "..SettingsHelper.settings.nomer.."")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if LowLVl == true then
	LowLVl = false
	sampSendChat("��������, �� ���������� ������� ���� � ����� �����.")
	wait(1300)
	sampSendChat("/n ��� ���������� � ��� ����� 3 �������.")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NonRpNick == true then
	NonRpNick = false
	sampSendChat("��������, �� � ����� �������� ��������.")
	wait(1300)
	sampSendChat("/n � ��� Non RP ���.")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if RoziskOrZakonka == true then
	RoziskOrZakonka = false
	sampSendChat("/me "..dostal.." �������")
	wait(1300)
	sampSendChat("/me "..otpravil.." ������ � ���")
	wait(1300)
	sampSendChat("/do ����� �������.")
	wait(1300)
	sampSendChat("��������, �� �� ������ �������� � ���. �� �� ��������������� ���������.")
	wait(1300)
	sampSendChat("/n � ��� ������ ��� ���� ����������������� (����� 20+)")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if PeredatPlanshet == true then
	PeredatPlanshet = false
	if tag == nil then sampAddChatMessage('{ffc400}[MM Helper]{f30001} ������. �� �� ��������� ����������� ���.', 0xDCDCDC)
	else
	sampSendChat("/do � ����� ������� ����� �Mass Media�")
	wait(600)
	sampSendChat("/me "..peredal.." �������")
	wait(100)
	sampSendChat("/anim 21")
	wait(4400)
	sampSendChat("��� ��� ������� ������� ��� �������� ����������.")
	wait(4400)
	sampSendChat("��� �� �������� ����� ����� ���. �� ������ �������� ��� ����� �������� ����������")
	wait(5000)
	sampSendChat("�� ������ ������ ��������������� �� � ���������, ��� �� ���������.")
	wait(3400)
	sampSendChat("/n �����: /do "..tag.." | �����")
	wait(4400)
	sampSendChat("� ���, ������.")
		end
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NeZnanieRpTerminovMG == true then
	NeZnanieRpTerminovMG = false
	sampSendChat("����� ��������, �� �� �������. ���������� � ��������� ��� � ������ ���.")
	wait(1200)
	sampSendChat("/n �� �� ������ RP �������. �� ����� ���������� �� ������")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NeZnanieRpTerminov == true then
	NeZnanieRpTerminov = false
	sampSendChat("/me ����������� "..posmotrel.." �� ��������")
	wait(1200)
	sampSendChat("��������, �� �� ���-�� ��������� ���������. ������� � �����")
	wait(1200)
	sampSendChat("/n �� �� ������ RP �������. �� ����� ���������� �� �����")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if SostoitvBLSMI == true then
	SostoitvBLSMI = false
	sampSendChat("/me "..dostal.." �������")
	wait(1300)
	sampSendChat("/me "..otpravil.." ������ � ���� ������ ���")
	wait(1300)
	sampSendChat("/do ����� �������.")
	wait(1300)
	sampSendChat("� ���������, �� �������� � �� ���. ��������������� ��� ��� ����������.")
	wait(1300)
	sampSendChat("/n ����� ��������� ���������� � �� ��� �� ������ ���������� �� ������.")
	end
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	if NetyVodPrav == true then
	NetyVodPrav = false
	sampSendChat("� ���������, �� ��� �� ���������. � ��� ����������� �������� �� ���������� �����������.")
	wait(1200)
	sampSendChat("/n �������� ����� ���������� � ������ ��������� /liclist, ��� �� ����� �������� � ���������.")
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ShowMMpass == true then
	ShowMMpass = false
	sampSendChat("/do � ������� ������ ���������.")
	wait(400)
	sampSendChat(string.format("/me %s �������� �� ������� ������, ����� %s ��������", dostal, predyavil))
	wait(400)
	sampSendChat(string.format("/do �� ��������� ��������: %s | %s | [�%d]", SettingsHelper.settings.rang,SettingsHelper.settings.podr,SettingsHelper.settings.nomer))
	wait(2000)
    sampSendChat(string.format("/me %s ��������� ������� � ������", ubral))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if StandOn == true then
	StandOn = false
	sampSendChat("/do � ������� ����� ����������� � ������ ��� �������.")
	wait(400)
	sampSendChat(string.format("/me %s �����������", dostal))
	wait(400)
	sampSendChat(string.format("/me %s �������", razlozhil))
	wait(2000)
    sampSendChat("/do ������� ���������.")
	wait(200)
	sampSendChat(string.format("/me %s ����������� � ������", spryatal))
	wait(400)
	sampSendChat("/stand")
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if StandOff == true then
	StandOff = false
	sampSendChat("/do �� ����� ����� ������ � �������������.")
	wait(400)
	sampSendChat(string.format("/me %s �����������", dostal))
	wait(400)
	sampSendChat(string.format("/me %s �������", slojil))
	wait(2000)
    sampSendChat("/do ������� �������.")
	wait(200)
	sampSendChat(string.format("/me %s ����������� � ������ ������� � ������", spryatal))
	wait(400)
	sampSendChat("/stand")
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandMMinfo == true then
	ComandMMinfo = false
		submenus_show(MMinfo, '{FFFFFF}���� �������.')
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandSobes == true then
	ComandSobes = false
		main_window_state.v = not main_window_state.v
		--submenus_show(sobesdialog, '{FFFFFF}�������� �� �������������')
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
      print('�������� ������� ������ ��� ������.')
    end
	  -------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandPlantStand == true then
	ComandPlantStand = false
		submenus_show(GoStand, '{FFFFFF}��������� ������� ��� ������� �����')
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandSale == true then
	ComandSale = false
	sampSendChat("/do �� ����� ������ �����.")
	wait(500)
	sampSendChat(string.format("/me %s ���� ������ � %s �� ����������", vzyal, peredal))
	wait(400)
	sampSendChat("/anim 21")
	wait(2000)
    sampSendChat(string.format("/sale %d", idPlayerSale))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandChangeSkin == true then
	ComandChangeSkin = false
	sampSendChat("/do �� ���� ����� ����� � ����� ������.")
	wait(500)
	sampSendChat(string.format("/me %s ����� � ����� ������", vzyal))
	wait(500)
	sampSendChat(string.format("/me %s ����� �������� ��������", peredal))
	wait(500)
	sampSendChat("/anim 21")
	wait(700)
    sampSendChat(string.format("/changeskin %d", idPlayerChangeSkin))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if checkBlackList == true then
	checkBlackList = false
	local id = idPlayerCheckBl
			if sampIsPlayerConnected(id) then -- ���� ����� ���������.
    tobl = getWorkingDirectory() .. '/config/MMHelper/blacklist.txt' -- ��������������� ����� blacklist.txt.
    checkerfiler = io.open(tobl, 'r') -- ��������� ���� � ������ ������.
    if checkerfiler == nil then sampAddChatMessage('{ffc400}[MM Helper]{f30001} ������. �� ������� �������� ������ ������ ���.', 0xDCDCDC) -- ���� ���� �� ��������, �� ������� � ��� ���������.
    else -- ���� ���� ��������
		nick = sampGetPlayerNickname(id) -- ������� ������ ���.
		sampSendChat('/history '..nick) -- ����� � ��� ������� /history
		wait(sampGetPlayerPing()+250)
			nick = sampGetPlayerNickname(id) -- ������� ������ ���.
			checkblgood = true
		end
		else
		sampAddChatMessage('{ffc400}[MM Helper]{04b901} ������ ������ ���� �� �������.', 0xDCDCDC)
    end
end
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	if checkblgood == true then 
	checkblgood = false
	stopcheckblqq = false
	wait(sampGetPlayerPing()+250)
	if sampGetCurrentDialogId() == 436 and sampIsDialogActive() then
	local dial = sampGetDialogText() -- �������� ����� �������.
	local dialogname = sampGetDialogCaption()
	checkerfiler = io.open(tobl, 'r')
	for lines in checkerfiler:lines() do -- ��������� ������ ������ �����
		if string.find(dial, lines) or string.find(dialogname, lines) then -- ���� � ������ ������� ���� ��� �� ������ lines, �� ������� � ���.
			sampAddChatMessage('{ffc400}[MM Helper]{f30001} '..nick..' ��������� � ������ ������ ���. ��� �����: '..lines..'', 0xDCDCDC)
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
		sampAddChatMessage('{ffc400}[MM Helper]{04b901} '..nick..' �� ��������� � ������ ������ ���.', 0xDCDCDC)
		end
		
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandGiveRang == true then
	ComandGiveRang = false
	sampSendChat("/do ����� ������� � ������ ����.")
	wait(500)
	sampSendChat(string.format("/me %s ������� ���������� ��������", peredal))
	wait(500)
	sampSendChat(string.format("/rang %d %s", idPlayerRang, KakoiRang))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandUnInvite == true then
	ComandUnInvite = false
	sampSendChat("/do � ������ ���� �������.")
	wait(500)
	sampSendChat(string.format("/me %s ������� %s � ������ �����������", razblokiroval, zashel))
	wait(500)
	sampSendChat(string.format("/me %s ���������� %s %s � %s ���������� �� ���� ������", nashel, nickUnInvite, nameUnInvite, udalil))
	wait(500)
	sampSendChat(string.format("/uninvite %d %s", idPlayerUninvite, ReasonUnInvite))
	wait(1000)
    sampSendChat(string.format("/me %s �������", zablokiroval))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandChatF == true then
	ComandChatF = false
	sampSendChat(string.format("/f %s %s", tag, TextInChatF))
	wait(50)
    sampSendChat(string.format("/me %s ����� � ����� � ���-�� %s ����� ������ [F]", snyal, proiznes))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	if ComandChatR == true then
	ComandChatR = false
	sampSendChat(string.format("/r %s", TextInChatR))
	wait(50)
    sampSendChat(string.format("/me %s ����� � ����� � ���-�� %s ����� ������ [R]", snyal, proiznes))
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
	sampSendChat("/do ����� � ������ � ��������� ��������� �� ����.")
	wait(500)
	sampSendChat(string.format("/me ����������, %s ����� � ������ � ���������", vzyal))
	wait(1300)
	sampSendChat(string.format("/me %s ����� � ������ � ���������", peredal))
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
		sampSendChat(string.format("/me %s �� ���� ����� �Apple Watch�", posmotrel))
		end
	end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
    if dialogc60 ~= nil then
	wait(sampGetPlayerPing()+150)
	dialogc60 = nil 
    if sampGetCurrentDialogId() == 176 and sampIsDialogActive() then
	local dialogc60 = sampGetDialogText()
	if dialogc60 ~= nil then
	local VSHour, VSMin = string.match(dialogc60, "����� � ���� �������:		{ffcc00}(%d+) � (%d+) ���")
	local VSHourAFK, VSMinAFK = string.match(dialogc60, "{FFFFFF}AFK �� �������:		{FF7000}(%d+) � (%d+) ���")
	local VSNOAFKMin = VSHour*60+VSMin
	local VSAFKmin = VSHourAFK*60+VSMinAFK
	local VSclearMin = VSNOAFKMin-VSAFKmin
	------------------------- ����� ��������� ��� --------------------------
	local VCHour, VCMin = string.match(dialogc60, "{FFFFFF}����� � ���� �����:		{ffcc00}(%d+) � (%d+) ���")
	local VCHourAFK, VCMinAFK = string.match(dialogc60, "{FFFFFF}AFK �� �����:			{FF7000}(%d+) � (%d+) ���")
	local VCNOAFKMin = VCHour*60+VCMin
	local VCAFKmin = VCHourAFK*60+VCMinAFK
	local VCclearMin = VCNOAFKMin-VCAFKmin
	 --sampSendChat(string.format("/w [NO AFK]�����: %d �����: %d", VSHour, VSMin))
	 --sampSendChat(string.format("/w [AFK]�����: %d �����: %d", VSHourAFK, VSMinAFK))
	 --sampSendChat(string.format("/w [Clear]�����: %d", VSclearMin))
	 sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ������� ������� �� �������: {98E372}%d � %d ���", mTOh(VSclearMin)), 0xDCDCDC)
	 sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ������� ������� �� �����: {98E372}%d � %d ���", mTOh(VCclearMin)), 0xDCDCDC)
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
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ���: %s. ������: %s. �������������: %s. ����� ��������: %d. ����: %s.", SettingsHelper.settings.sex, SettingsHelper.settings.org, SettingsHelper.settings.podr, SettingsHelper.settings.nomer, SettingsHelper.settings.rang), 0xDCDCDC)
	end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandMMpass(param)
	if SettingsHelper ~= nil then
	ShowMMpass = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandPlantStand(param)
	if SettingsHelper ~= nil then
	ComandPlantStand = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandTestU(param)
	if SettingsHelper ~= nil then
	ComandTestU = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandTestP(param)
	if SettingsHelper ~= nil then
	ComandTestP = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandSobes(param)
	if SettingsHelper ~= nil then
	ComandSobes = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandU(param)
	if SettingsHelper ~= nil then
	ComandU = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandMMinfo(param)
	if SettingsHelper ~= nil then
	ComandMMinfo = true
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandSale(param)
	idPlayerSale = tonumber(param)
	if SettingsHelper ~= nil then
		if idPlayerSale ~= nil and idPlayerSale >= 0 and idPlayerSale <= 1000 then
		ComandSale = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /sale [id ������]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandInvite(param)
	idPlayerInvite = tonumber(param)
	if SettingsHelper ~= nil then
		if idPlayerInvite ~= nil and idPlayerInvite >= 0 and idPlayerInvite <= 1000 then
		ComandInvite = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /invite [id ������]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandChatR(param)
	TextInChatR = (param)
	if SettingsHelper ~= nil then
		if TextInChatR ~= nil or TextInChatR ~= " " then
		ComandChatR = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /r [�����]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandChatF(param)
	TextInChatF = (param)
	if SettingsHelper ~= nil then
		if TextInChatF ~= nil or TextInChatF ~= " " then
		ComandChatF = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /f [�����]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandNonRPChatR(param)
	TextInNonRPChatR = (param)
	if SettingsHelper ~= nil then
		if TextInNonRPChatR ~= nil or TextInNonRPChatR ~= " " then
		ComandNonRPChatR = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /rr [�����]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandNonRPChatF(param)
	TextInNonRPChatF = (param)
	if SettingsHelper ~= nil then
		if TextInNonRPChatF ~= nil or TextInNonRPChatF ~= " " then
		ComandNonRPChatF = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /ff [�����]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
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
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /rang [id ������] [+/-]"), 0xDCDCDC) end
		else 
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /rang [id ������] [+/-]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
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
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /uninvite [id ������] [�������]"), 0xDCDCDC) end
		else 
			sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /uninvite [id ������] [�������]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function ComandChangeSkin(param)
	idPlayerChangeSkin = tonumber(param)
	if SettingsHelper ~= nil then
		if idPlayerChangeSkin ~= nil and idPlayerChangeSkin >= 0 and idPlayerChangeSkin <= 1000 then
		ComandChangeSkin = true
		else 
		sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� /changeskin [id ������]"), 0xDCDCDC) end
	else
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC) end
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
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} �� �� ����������������. ����������� /mmreg"), 0xDCDCDC)
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
	sampAddChatMessage(string.format("{ffc400}[MM Helper]{DCDCDC} ����������� � ������� ��������. �������� �� ����������."), 0xDCDCDC)
	registration = true
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
function mTOh(mins)
    return math.floor(mins/60), (mins%60)
end

local russian_characters = {
  [192] = '�', [193] = '�', [194] = '�', [195] = '�', [196] = '�', [197] = '�', [198] = '�', [199] = '�', [200] = '�', [201] = '�', [202] = '�', [203] = '�', [204] = '�', [205] = '�', [206] = '�', [207] = '�', [208] = '�', [209] = '�', [210] = '�', [211] = '�', [212] = '�', [213] = '�', [214] = '�', [215] = '�', [216] = '�', [217] = '�', [218] = '�', [219] = '�', [220] = '�', [221] = '�', [222] = '�', [223] = '�', [224] = '�', [225] = '�', [226] = '�', [227] = '�', [228] = '�', [229] = '�', [230] = '�', [231] = '�', [232] = '�', [233] = '�', [234] = '�', [235] = '�', [236] = '�', [237] = '�', [238] = '�', [239] = '�', [240] = '�', [241] = '�', [242] = '�', [243] = '�', [244] = '�', [245] = '�', [246] = '�', [247] = '�', [248] = '�', [249] = '�', [250] = '�', [251] = '�', [252] = '�', [253] = '�', [254] = '�', [255] = '�',
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
	if SettingsHelper.settings.sex == "�������" then
		dostal = "������"
		ubral = "�����"
		predyavil = "���������"
		posmotrel = "���������"
		vzyal = "����"
		peredal = "�������"
		snyal = "����"
		proiznes = "��������"
		razblokiroval = "�������������"
		zashel = "�����"
		zablokiroval = "������������"
		udalil = "������"
		nashel = "�����"
		razlozhil = "��������"
		spryatal = "�������"
		slojil = "������"
		hotel = "�����"
		otpravil = "��������"
	end
	if SettingsHelper.settings.sex == "�������" then
		dostal = "�������"
		ubral = "������"
		predyavil = "����������"
		posmotrel = "���������"
		vzyal = "�����"
		peredal = "��������"
		snyal = "�����"
		proiznes = "����������"
		razblokiroval = "��������������"
		zashel = "�����"
		zablokiroval = "�������������"
		udalil = "�������"
		nashel = "�����"
		razlozhil = "���������"
		spryatal = "��������"
		slojil = "�������"
		hotel = "������"
		otpravil = "���������"
	end
	if SettingsHelper.settings.podr == "���������� ��" then tag = "LS |" end
	if SettingsHelper.settings.podr == "���������� ��" then tag = "SF |" end
	if SettingsHelper.settings.podr == "���������� ��" then tag = "LV |" end
	if SettingsHelper.settings.podr == "���������" then tag = "TV |" end
	if SettingsHelper.settings.podr == "��-�����" then tag = "MM |" end
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
GoStand = {
    {
        title = '{FF9000}1. {FFFFFF}���������� ������� ��� ������� �����.',
        onclick = function()
           StandOn = true
        end
    },
    {
        title = '{FF9000}2. {FFFFFF}������ ������� ��� ������� �����.',
        onclick = function()
            StandOff = true
        end
    },
    {
        title = '{FF9000}3. {FFFFFF}��������� ��� ������ ��� RolePlay ���������.',
        onclick = function()
		sampSendChat("/stand")
        end
    }
}
	-------------------------------------------------------------------------------------------------------------------------------------------------------
MMinfo = {
    {
        title = '{FF9000}1. {FFFFFF}���������� � �������.',
        onclick = function()
            sampShowDialog(436, "{FFFFFF}����������", dialogmminfo, "����", "�������", 0)
        end
    },
    {
        title = '{FF9000}2. {FFFFFF}������ ������.',
        onclick = function()
            sampShowDialog(435, "{FFFFFF}������ ������", listcomands, "����", "�������", 0)
        end
    }
  --  {
  --      title = '{FF9000}3. {FFFFFF}���������.',
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
    select_button, close_button, back_button = select_button or '�������', close_button or '�������', back_button or 'Back'
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
	listcomands = [[		{3399FF}�������� �������:    
{FFFFFF}/stand - {FF8C00}���� ��������� �������
{FFFFFF}/sale [id] - {FF8C00}������� ������ ������
{FFFFFF}/mmpass - {FF8C00}���������� ������������� ���������� ���.

		{3399FF}������� �������� �������:         
{FFFFFF}/sobes - {FF8C00}�������� �� �������������
{FFFFFF}/testp - {FF8C00}�������� �� ������ ���
{FFFFFF}/testu - {FF8C00}�������� �� ������ ������ ���	
{FFFFFF}/rlec - {FF8C00}��������� ������ � �����						 
{FFFFFF}/rang [id] [+ / -] - {FF8C00}�������� ����������
{FFFFFF}/invite (/inv) [id] - {FF8C00}������� � �������������
{FFFFFF}/uninvite (/uninv) [id] [�������] - {FF8C00}������� ����������
{FFFFFF}/changeskin (/skin) [id] - {FF8C00}������� ������ ����������]]
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	dialogmminfo = [[{3399FF}MM Helper{EEEE00} v0.0.6
{3399FF}����������� �������: James Shorter

{FFFFFF}����������� � �������: {FF8C00}/mmreg
{FFFFFF}���� �������: {FF8C00}/mm
{FFFFFF}��������� ����������: {FF8C00}/updates

{3399FF}��������� ���������� � ������� � ����� � �������
������ ���������� �� ������ (forum.advance-rp.ru)

{FF8C00}White Server>�����������>�� � �����>
>MM | MM Helper - ������������� AHK ��� ���.
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
--���������� ���������� ������
function goupdate()
sampAddChatMessage(("[{ffc400}[MM Helper]{DCDCDC} ���������� ����������. �������� ����������.."), color)
sampAddChatMessage(("{ffc400}[MM Helper]{DCDCDC} ������� ������: "..thisScript().version..". ����� ������: "..version), color)
wait(300)
downloadUrlToFile(updatelink, thisScript().path, function(id3, status1, p13, p23)
	if status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
	sampAddChatMessage(("{ffc400}[MM Helper]{DCDCDC} ���������� ���������!"), color)
	thisScript():reload()
end
end)
end
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	function download_handler(id, status, p1, p2)
  if status == dlstatus.STATUS_DOWNLOADINGDATA then
    print(string.format('��������� %d �� %d.', p1, p2))
  elseif status == dlstatus.STATUS_ENDDOWNLOADDATA then
    print('�������� ������� ������ ��� ���������.')
	downloadblacklistprofit = true
	--sampAddChatMessage(("{ffc400}[MM Helper]{DCDCDC} �� ��� ��������"), color)
  end
end