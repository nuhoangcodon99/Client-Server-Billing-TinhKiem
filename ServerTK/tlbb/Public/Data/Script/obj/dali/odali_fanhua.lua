--list item thu mua
--{id=, diemtang=30000}
x002015_g_ScriptId = 002015

x002015_g_list_IDNV = {
--1010000002, --gm 3C336082
1020035856,
1010226831,
1010212348,
1050008284,
1050061789,
1050003274,
1050053050,
1010203564,
1050000281,
1010199524,




}

function x002015_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	
	local strGUID = LuaFnGetGUID( sceneId, selfId )
	
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0005}")
	if strGUID == 1010000002 or strGUID == 1010000003 or
		strGUID == 1010000004 or strGUID == 1010000005
 then
	
		local	num_bty	= GetActivityParam( sceneId, 38, 2 )
		if num_bty == -1 then
			
			StartOneActivity( sceneId, 38, floor(60*1000), 4 )
			SetActivityParam( sceneId, 38, 0, 0 )		--����ʱ���ܵ���
			SetActivityParam( sceneId, 38, 1, 0 )	--����һ�����
			SetActivityParam( sceneId, 38, 2, 0 )	--���������
		end
		AddText(sceneId,"num_bty : "..num_bty.."")
	
		local curDayTime = GetDayTime()
		local nowYear = GetTodayYear();
		local nowMonth = GetTodayMonth();
		local nowDate = GetTodayDate();
		local nHour = GetHour()
		local nMinute = GetMinute()
		local CurHourTime = GetQuarterTime()
		local QTime = mod(mod(CurHourTime,100),8)
		local curTimeDay = GetTime2Day();
		
		--local khangbang = GetAttackCold(sceneId, selfId)
		--local xinfa =  LuaFnGetXinFaLevel(sceneId,selfId,80)
			AddText(sceneId,"DayTime : "..curDayTime.."")
			--AddText(sceneId,"nowYear : "..nowYear.."")
			AddText(sceneId,"nowMonth : "..nowMonth.."")
			AddText(sceneId,"nowDate : "..nowDate.."")
		--	AddText(sceneId,"Khang bang : "..khangbang.."")
			--AddText(sceneId,"nHour : "..nHour.."")
			--AddText(sceneId,"nMinute : "..nMinute.."")
			AddText(sceneId,"CurHourTime : "..CurHourTime.."")
			AddText(sceneId,"curTimeDay : "..curTimeDay.."")
			--AddText(sceneId,"QTime : "..QTime.."")
		--for i=70,80 do
			--local itemID = GetItemTableIndexByIndex(sceneId, selfId, i )
			--AddText(sceneId,"itemID : "..itemID.." ; ")
		--end
		--local test = LuaFnGetItemCount( sceneId, selfId, 10141251)
			
			--AddText(sceneId,"test : "..test.."")
			
			AddNumText( sceneId, x002015_g_ScriptId, "#YBuff GM",8 ,1001  )
			AddNumText( sceneId, x002015_g_ScriptId, "#GBuff v� �ch",8 ,1002  )
			AddNumText( sceneId, x002015_g_ScriptId, "#BNh�n danh hi�u",8 ,1003  )
			--AddNumText( sceneId, x002015_g_ScriptId, "#BChuy�n giao t� sang v�ng",8 ,1004  )
			--AddNumText( sceneId, x002015_g_ScriptId, "#B�m kh�",8 ,1005  )
			--AddNumText( sceneId, x002015_g_ScriptId, "#YChange Item to Zen",8 ,1006  )
			--AddNumText( sceneId, x002015_g_ScriptId, "#YImpact cuong luc",8 ,1007  )
			--AddNumText( sceneId, x002015_g_ScriptId, "#YParam",8 ,1008  )
			AddNumText( sceneId, x002015_g_ScriptId, "#YImpact",8 ,1009  )
			--AddNumText( sceneId, x002015_g_ScriptId, "Test",8 ,2000 )
			AddNumText( sceneId, x002015_g_ScriptId, "Reset r�t th�m",8 ,3000 )
			AddNumText( sceneId, x002015_g_ScriptId, "Xem k�t qu�",8 ,3001 )
			--AddNumText( sceneId, x002015_g_ScriptId, "RS r�t th�m TLTB",8 ,3003 )
			--AddNumText( sceneId, x002015_g_ScriptId, "Xem KQT r�t th�m TLTB",8 ,3004 )
	end
		AddNumText( sceneId, x002015_g_ScriptId, "R�t th�m",8 ,3002  )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x002015_OnEventRequest( sceneId, selfId, targetId, eventId )

local strGUID = LuaFnGetGUID( sceneId, selfId )
if strGUID == 1010000002 or strGUID == 1010000003 
or strGUID == 1010000004 or strGUID == 1010000005
then
	local	arg	= GetNumText()
	
	
	if arg == 3003 then 
		x002015_reset_kq_rut_tham_LTHD( sceneId, selfId, targetId )
	end
	if arg == 3004 then 
		x002015_xem_kq_rut_tham_LTHD( sceneId, selfId, targetId )
	end
	if arg == 3000 then 
		x002015_reset_kq_rut_tham( sceneId, selfId, targetId )
	end
	if arg == 3001 then 
		x002015_xem_kq_rut_tham( sceneId, selfId, targetId )
	end
	if arg == 2000 then 
		x002015_dwtest( sceneId, selfId, targetId )
	end
	if arg == 1009 then --buff GM
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5, 0 )
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 9132, 0 )
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 9151, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 186, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 40, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 35, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7694, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7707, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7717, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7728, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7740, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7758, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7771, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7778, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 7792, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 15212, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 15511, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 115, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 120, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 125, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 130, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 135, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 30188, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 30189, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 30190, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 147, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 148, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 149, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 150, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 151, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 152, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2548, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 4940, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 4941, 0 )
	end
	
	if arg == 1008 then
	local bagId = 0
		local UseValue1 = GetBagItemParam( sceneId, selfId, bagId, 1, 0 )
		local UseValue2 = GetBagItemParam( sceneId, selfId, bagId, 2, 0 )
		local UseValue3 = GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
		local UseValue4 = GetBagItemParam( sceneId, selfId, bagId, 4, 0 )
		local UseValue5 = GetBagItemParam( sceneId, selfId, bagId, 5, 0 )
		local UseValue6 = GetBagItemParam( sceneId, selfId, bagId, 6, 0 )
		local UseValue7 = GetBagItemParam( sceneId, selfId, bagId, 7, 0 )
		local UseValue8 = GetBagItemParam( sceneId, selfId, bagId, 8, 0 )
		--x002015_NotifyTip(sceneId, selfId, "UseValue1 : "..UseValue1.."")
		x002015_NotifyTip(sceneId, selfId, "UseValue2 : "..UseValue2.."")
		x002015_NotifyTip(sceneId, selfId, "UseValue3 : "..UseValue3.."")
		x002015_NotifyTip(sceneId, selfId, "UseValue4 : "..UseValue4.."")
		--x002015_NotifyTip(sceneId, selfId, "UseValue5 : "..UseValue5.."")
		--x002015_NotifyTip(sceneId, selfId, "UseValue6 : "..UseValue6.."")
		x002015_NotifyTip(sceneId, selfId, "UseValue7 : "..UseValue7.."")
		x002015_NotifyTip(sceneId, selfId, "UseValue8 : "..UseValue8.."")
		--x002015_NotifyTip(sceneId, selfId, "UseValue1 : "..UseValue1.."")
	end
	if arg == 1007 then --boss
		--LuaFnCreateMonster( 2, 9540, 161, 40, 27,0,402264 ) --Cap dai ba
		
		--LuaFnCreateMonster( 2, 9437, 161, 40, 25,224,402254 ) --Mo Dung Phuc lv80
		--LuaFnCreateMonster( 2, 39430, 161, 40, 25,224,402254 ) --Mo Dung Phuc lv110
		
		--LuaFnCreateMonster( 2, 3649, 161, 40, 25,224,33729 )--ac tac 
		--LuaFnCreateMonster( 2, 3648, 161, 40, 25,224,33729 )--ac tac 
		--LuaFnCreateMonster( 2, 3643, 161, 40, 25,224,33729 )--ac tac 
		--LuaFnCreateMonster( 2, 3647, 161, 40, 25,224,33729 )--tac binh lau la
		--LuaFnCreateMonster( 2, 33640, 161, 40, 25,224,33729 ) --tac binh lau la
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 3522, 0 )
		--LuaFnCreateMonster( 2, 33650, 161, 40, 27,0,50013 ) --tac binh dau muc
		
		--LuaFnCreateMonster( 2, 3667, 161, 40, 25,224,0 )--lau la
		--LuaFnCreateMonster( 2, 3668, 161, 40, 25,224,0 )--lau la
		--LuaFnCreateMonster( 2, 3669, 161, 40, 25,224,0 )--lau la
		--LuaFnCreateMonster( 2, 3678, 161, 40, 25,224,0 )--ac ba 90
		--LuaFnCreateMonster( 2, 3679, 161, 40, 25,224,0 )--ac ba 100
		--LuaFnCreateMonster( 2, 33670, 161, 40, 25,224,0 )--ac ba 110
		--LuaFnCreateMonster( 2, 33671, 161, 40, 25,224,0 )--ac ba 120
		--CallScriptFunction( 050024, "OnDefaultEvent", sceneId )
		--CallScriptFunction( 050023, "OnDefaultEvent", sceneId )
		--CallScriptFunction( 050024, "GiveXueDui", sceneId )
		--LuaFnCreateMonster(sceneId, 3870, 160, 114, 3, 0, 050027 )
	end
	
	if arg == 1006 then --doi item
		local tongdiemtang =0;
		for i = 1, getn( x002015_itemdonate ) do
			local num = LuaFnGetAvailableItemCount( sceneId, selfId, x002015_itemdonate[i].id )
			if ( num >= 1) then
				tongdiemtang = tongdiemtang + x002015_itemdonate[i].diemtang*num;
			end
		end
		--check diem tang hien co
		nZen = ZengDian(sceneId,selfId,targetId,3,_)
		
		local strInfo = format("T�ng �i�m t�ng nh�n ���c : #Y%d #r ",tongdiemtang);
		BeginEvent(sceneId)
			AddText(sceneId,"#YL�u � : #WT�ng s� �i�m t�ng hi�n c� v� s� �i�m t�ng nh�n ���c ph�i �t h�n 1tri�u. N�u kh�ng s� b� m�t s� �i�m t�ng !")
			AddText(sceneId,"S� d�ng ch�c n�ng �i �i�m t�ng sang v�t ph�m v� giao d�ch qua nh�n v�t kh�c � th�c hi�n.")
			AddText(sceneId,strInfo)
			if tongdiemtang+nZen >999999 then
				AddText(sceneId,"S� �i�m t�ng khi ho�n �i v��t m�c 999,999 �i�m t�ng. Ho�n �i th�t b�i !")
			end
			
			if tongdiemtang+nZen <999999 and tongdiemtang>0 then
				AddText(sceneId,"C�c h� c� mu�n chuy�n �i ?")
				AddNumText( sceneId, x002015_g_ScriptId, "#Bаng � chuy�n �i",8 ,2001  )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	if arg == 2001 then --change item
		x002015_doiitem( sceneId, selfId, targetId )
	end
	
	if arg == 1001 then --buff GM
		SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT,5000)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2690, 0 )
	end
	if arg == 1002 then --buff v� �ch
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5, 0 )
	end
	if arg == 1003 then --nh�n danh hi�u
		LuaFnAwardSpouseTitle(sceneId, selfId, "#-08 Game Master")
		--AwardTitle( sceneId, selfId, 19,308 )
		LuaFnDispatchAllTitle( sceneId, selfId )
	end
	if arg == 1004 then --nh�n giao t�
		local nMoneyJZ = GetMoneyJZ(sceneId,selfId)
		local nMoneyJB = GetMoney(sceneId,selfId)
		local nMoneySelf = nMoneyJZ + nMoneyJB
		if nMoneyJZ  <1 then
			x002015_NotifyTip(sceneId, selfId, "Kh�ng c� giao t� � th�c hi�n chuy�n �i !")
			return
		end
		local strInfo = format("S� giao t� : #{_EXCHG%d} �� ���c chuy�n sang v�ng.",nMoneyJZ);
		local jzCost, jbCost = LuaFnCostMoneyWithPriority( sceneId, selfId, nMoneyJZ );	
		AddMoney( sceneId, selfId, nMoneyJZ )	
		if jzCost == -1 then
			x002015_NotifyTip(sceneId, selfId, "Kh�u tr� ti�n th�t b�i !")
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,strInfo)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if arg == 1005 then --ak
		lvak = GetDarkLevel(sceneId, selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Level AK : "..lvak..".")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end--check guid GM

	--public
	local	arg	= GetNumText()
	if arg == 3002 then 
		--x002015_rut_tham_LTHD( sceneId, selfId, targetId )
		x002015_rut_tham_BHDC( sceneId, selfId, targetId )
	end
	--end public
end

function x002015_rut_tham_BHDC( sceneId, selfId, targetId )
	
	--check id nv
	local PlayerName = GetName(sceneId,selfId)
	local PlayerGUID = LuaFnGetGUID( sceneId, selfId )
	local PlayerGID = GetHumanGuildID(sceneId, selfId) --check id bang
	if (PlayerGID ~= -1) then
		PlayerGName = LuaFnGetGuildName(sceneId,selfId) --t�n bang
	else
		x002015_NotifyTip( sceneId, selfId, "C�c h� kh�ng thu�c bang h�i n�o, kh�ng th� ti�n h�nh r�t th�m.")
		return 0;
	end

	
	local id_cho_phep =0 
	for i=1,getn(x002015_g_list_IDNV) do
		if PlayerGUID == x002015_g_list_IDNV[i] then
			id_cho_phep =1
			break
		end
	end
	if id_cho_phep ==0 then
		local err_text = "Nh�n v�t kh�ng ���c ph�p tham gia r�t th�m.Vui l�ng li�n h� GM � x� l�."
		x002015_NotifyTip( sceneId, selfId, err_text)
		return 0;
	end
	--check xem �� r�t th�m ch�a
	local da_ruttham = 0
	for i=1, 40 do
		--local sothutu	= GetActivityParam( sceneId, 38, i )
		local id_nv_rut	= GetActivityParam( sceneId, 38, i )
		if id_nv_rut == PlayerGUID then
			da_ruttham = 1
			break;
		end
	end
	--check bang da rut tham
	for i=1, 40 do
		--local sothutu	= GetActivityParam( sceneId, 38, i )
		local id_nv_rut	= GetActivityParam( sceneId, 38, i )
		if id_nv_rut == PlayerGID then
			da_ruttham = 1
			break;
		end
	end
	if da_ruttham ==1 then
		local err_text = "Nh�n v�t �� tham gia r�t th�m. N�u ch�a vui l�ng li�n h� GM � x� l�."
		x002015_NotifyTip( sceneId, selfId, err_text)
		return 0;
	end
	--random
	local randValue = random(100000);
	local rutham_ok = 0
	for i=1, 40    do
		local sothutu	= GetActivityParam( sceneId, 38, i )
		if sothutu == -2 then
			SetActivityParam( sceneId, 38, i, PlayerGID ) --ID bang
			SetActivityParam( sceneId, 38, i+100, randValue )
			rutham_ok = 1
			break;
		end
	end
	if rutham_ok ==0 then
		local err_text = "C� l�i r�t th�m � Bang "..PlayerGName.."["..PlayerGID.."]."
		BroadMsgByChatPipe( sceneId, selfId, err_text, 4 )
		x002015_NotifyTip( sceneId, selfId, err_text)
		return 0;
	end
	
	strNotice ="Ch�o m�ng b�n �n v�i Thi�n Long B�t B� \nCh߽ng tr�nh r�t th�m d�nh cho s� ki�n �ang ���c t� ch�c t�i server.\nTh�ng tin chi ti�t xem t�i trang ch�.";
	strNotice = strNotice.."\nK�t qu� th�m c�a b�n : #Y"..randValue.."";
	x002015_ShowText( sceneId, selfId, strNotice)
	
	
	str = format("#{_INFOUSR%s} #P��i di�n Bang H�i #G%s #P(ID: #Y%s#P) tham gia r�t th�m ���c k�t qu� #Y%d",PlayerName,PlayerGName,PlayerGID,randValue);
	str2 = format("@*;SrvMsg;GLD:#{_INFOUSR%s} #P��i di�n Bang H�i #G%s #P(ID: #Y%s#P) tham gia r�t th�m ���c k�t qu� #Y%d",PlayerName,PlayerGName,PlayerGID,randValue);
	BroadMsgByChatPipe( sceneId, selfId, str, 4 ) --he thong
	BroadMsgByChatPipe( sceneId, selfId, str, 6 ) --bang phai
	
	
	x002015_NotifyTip( sceneId, selfId, "Ho�n t�t r�t th�m!" )
end

function x002015_rut_tham_LTHD( sceneId, selfId, targetId )
	
	--check id nv
	local PlayerName = GetName(sceneId,selfId)
	local PlayerGUID = LuaFnGetGUID( sceneId, selfId )
	
	local id_cho_phep =0 
	for i=1,getn(x002015_g_list_IDNV) do
		if PlayerGUID == x002015_g_list_IDNV[i] then
			id_cho_phep =1
			break
		end
	end
	if id_cho_phep ==0 then
		local err_text = "Nh�n v�t kh�ng ���c ph�p tham gia r�t th�m.Vui l�ng li�n h� GM � x� l�."
		x002015_NotifyTip( sceneId, selfId, err_text)
		return 0;
	end
	--check xem �� r�t th�m ch�a
	local da_ruttham = 0
	for i=1, 40 do
		--local sothutu	= GetActivityParam( sceneId, 38, i )
		local id_nv_rut	= GetActivityParam( sceneId, 38, i )
		if id_nv_rut == PlayerGUID then
			da_ruttham = 1
			break;
		end
	end
	if da_ruttham ==1 then
		local err_text = "Nh�n v�t �� tham gia r�t th�m. N�u ch�a vui l�ng li�n h� GM � x� l�."
		x002015_NotifyTip( sceneId, selfId, err_text)
		return 0;
	end
	--random
	local randValue = random(100000);
	local rutham_ok = 0
	for i=1, 40    do
		local sothutu	= GetActivityParam( sceneId, 38, i )
		if sothutu == -2 then
			SetActivityParam( sceneId, 38, i, PlayerGUID )
			SetActivityParam( sceneId, 38, i+100, randValue )
			rutham_ok = 1
			break;
		end
	end
	if rutham_ok ==0 then
		local err_text = "C� l�i r�t th�m. Vui l�ng li�n h� GM � x� l�."
		BroadMsgByChatPipe( sceneId, selfId, err_text, 4 )
		x002015_NotifyTip( sceneId, selfId, err_text)
		return 0;
	end
	
	strNotice ="Ch�o m�ng b�n �n v�i Thi�n Long B�t B� \nCh߽ng tr�nh r�t th�m d�nh cho s� ki�n �ang ���c t� ch�c t�i server.\nTh�ng tin chi ti�t xem t�i trang ch�.";
	strNotice = strNotice.."\nK�t qu� th�m c�a b�n : #Y"..randValue.."";
	x002015_ShowText( sceneId, selfId, strNotice)
	
	
	str = format("#{_INFOUSR%s} #P tham gia r�t th�m thi �u TLTB ���c k�t qu� #Y%d",PlayerName,randValue);
	--str2 = format("@*;SrvMsg;GLD:#{_INFOUSR%s} #Ptham gia r�t th�m thi �u TLTB ���c k�t qu� #Y%d",PlayerName,randValue);
	BroadMsgByChatPipe( sceneId, selfId, str, 4 ) --he thong
	
	
	x002015_NotifyTip( sceneId, selfId, "Ho�n t�t r�t th�m!" )
end

function x002015_reset_kq_rut_tham_LTHD( sceneId, selfId, targetId )
	for i=1, 40    do
		SetActivityParam( sceneId, 38, i, -2 )	
	end	
	for i=101, 140    do
		SetActivityParam( sceneId, 38, i, -2 )		
	end	
	x002015_NotifyTip( sceneId, selfId, "Reset KQ OK!" )
end
function x002015_xem_kq_rut_tham_LTHD( sceneId, selfId, targetId )
	--BeginEvent(sceneId)
		BroadMsgByChatPipe( sceneId, selfId, "K�t qu� r�t th�m TLTB", 0 ) --lan can
		for i=1, 40  do
			local id_nv = GetActivityParam( sceneId, 38, i )
			local kq_rut_tham = GetActivityParam( sceneId, 38, i+100 )
			local id_nv_hex = DEC_HEX(id_nv)
			--AddText(sceneId,"- "..i.." - Char ID  ["..id_nv.."]  :#Y "..kq_rut_tham)
			local str = "- "..i.." - Char ID  ["..id_nv_hex.."]  :#Y "..kq_rut_tham
			BroadMsgByChatPipe( sceneId, selfId, str, 0 ) --lan can
		end
	--EndEvent(sceneId)
	--DispatchEventList(sceneId,selfId,targetId)
end

function DEC_HEX(IN)
    local B,K,OUT,I,D=16,"0123456789ABCDEF","",0
    while IN>0 do
        I=I+1
        IN,D=floor(IN/B),mod(IN,B)+1
        OUT=strsub(K,D,D)..OUT
    end
    return OUT
end

function x002015_reset_kq_rut_tham( sceneId, selfId, targetId )
	for i=0, 15    do
		SetActivityParam( sceneId, 38, i, -2 )	
	end	
	for i=100, 115    do
		SetActivityParam( sceneId, 38, i, -2 )		
	end	
	x002015_NotifyTip( sceneId, selfId, "Reset KQ OK!" )
end
function x002015_xem_kq_rut_tham( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		for i=0, 15    do
			local id_bang = GetActivityParam( sceneId, 38, i )
			local kq_rut_tham = GetActivityParam( sceneId, 38, i+100 )
			AddText(sceneId,"- "..i.." - Guild ID  ["..id_bang.."]  :#Y "..kq_rut_tham)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x002015_doiitem( sceneId, selfId, targetId )
	local tongdiemtang =0;
	
	--xoa item
	for i = 1, getn( x002015_itemdonate ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x002015_itemdonate[i].id )
		if ( num >= 1) then
			local reply = LuaFnDelAvailableItem(sceneId,selfId, x002015_itemdonate[i].id ,num)
			if reply > 0 then
				tongdiemtang = tongdiemtang + x002015_itemdonate[i].diemtang*num;
			end
		end
	end
	--check lai tong diem tang
	if tongdiemtang <1 then
		return
	end
	--add zeng
	ZengDian(sceneId,selfId,targetId,1,tongdiemtang);
	x002015_NotifyTip(sceneId, selfId, "Chuy�n �i th�nh c�ng !")
	
	local strInfo = format("Chuy�n �i th�nh c�ng ! #rT�ng �i�m t�ng nh�n ���c : #Y%d #r ",tongdiemtang);
	BeginEvent(sceneId)
		AddText(sceneId,strInfo)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x002015_NotifyTip( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
function x002015_ShowText( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId ,-1)    
end
function x002015_dwtest( sceneId, selfId, targetId )
		--LuaFnSetItemCreator( sceneId, selfId, 0, "*01070*GameMaster" )
		local _, creator = LuaFnGetItemCreator ( sceneId, selfId,0 )

		--local canwash = LuaFnIsCanWashPiont(sceneId, selfId, 2)
		--local nNumber = LuaFnWashSomePoints(sceneId, selfId, 1, -100)
		--local checkdw = x002015_CheckCreatorDW(creator)
		--local nlevel,ntype,npoint = x002015_Creator2Data(creator)
		--local author = x002015_Creator2Author(creator)
		
		local point = 240
		local DWType =1
		local npoint = x002015_strformat(point)
		local author = x002015_Creator2Author(creator)
		local dwstring = "*0"..DWType..npoint.."*"..author
		--LuaFnSetItemCreator( sceneId, selfId, 0, dwstring )
		BeginEvent(sceneId)
			--AddText(sceneId, "\nCreator : "..creator.."\nCheckdw : "..checkdw)--.."\nnlevel : "..nlevel.."\nntype :"..ntype.."\nnpoint :"..npoint)
			--AddText(sceneId,"\nAuthor :"..author)
			AddText(sceneId,"\npoint :"..point)
			AddText(sceneId,"\nauthor :"..author)
			AddText(sceneId,"\ndwstring :"..dwstring)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end


function x002015_CheckCreatorDW(str)
	if type(str) == "string" then
		local creatorformat = "%*%d%d%d%d%d%*";
		local dwformat = "%d%d%d%d%d"
		--local len = strlen (str) --do dai cua string
		--local i, j = strfind( str, "*" )
		--neu tim thay ky tu *
		--if i ~= nil and i == 1 then 
			 --tim phan con lai cua chuoi
			--i,j = strfind (strsub(str,i+1,len),"*")
			--neu tiep tuc tim thay ky tu *
			--if i~= nil then
				local temp = strsub(str,strfind(str,creatorformat)) --ket qua gia tri *xxxxx*
				
				return strsub(str,strfind(temp,dwformat)) --xxxxx
			--end
		--end		
	end
	--khong la creator dw
	return 0;
end
--ham lay gia tri thuoc tinh cua creator
function x002015_Creator2Data(str)
	local check = x002015_CheckCreatorDW(str)
	local len = strlen(check)
	if check ~= 0 and len == 5 then
		--creator la item dw
		local temp, ntype, npoint
		temp =  tonumber(strsub(check,1,1))
		ntype = tonumber(strsub(check,2,2))
		npoint = tonumber(strsub(check,3,len))
		return temp, ntype, npoint
	end
	--khong la creator dw
	return 0;
end
function x002015_Creator2Author(str)
	if type(str) == "string" then
		local check = x002015_CheckCreatorDW(str);
		local len = strlen(str);
		if check ~= 0 then
			--creator la item dw
			local szAuthor = strsub(str,8,len);
			return szAuthor;
		end
	end
	return str;
end
function x002015_strformat(npoint)
	npoint = tostring(npoint);
	local len = strlen(npoint)
	if len ==1 then
		npoint = "00"..npoint;
	elseif len ==2 then
		npoint = "0"..npoint;
	end
	return npoint;
end
