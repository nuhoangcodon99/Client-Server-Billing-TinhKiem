--������

--MisDescBegin
--�ű���
x229009_g_scriptId = 229009

--�����ı�����
x229009_g_ExchangeItem = "бi v�t ph�m"
x229009_g_ExchangeTitle = "бi danh x�ng"
x229009_g_MissionInfo = "Ь khuy�n kh�ch c�c � t� ph�t d߽ng quang ��i m�n ph�i c�a m�nh, s� ph� �� chu�n b� 1 ph�n qu�, s� d�ng #R400#W �i�m c�ng hi�n m�n ph�i c� th� �i"  --��������
x229009_g_MissionTarget = ""
x229009_g_ContinueInfo = ""			--δ��������npc�Ի�
x229009_g_MissionComplete = ""	--�������npc˵���Ļ�

--MisDescEnd

x229009_g_exchangeitembymenpaipoint_Index = 23

x229009_g_menpainpc_table =  {
	{menpaiid=MP_SHAOLIN,  menpainame="Thi�u L�m", name="Huy�n T� ",	 title="Ph߽ng tr��ng Thi�u L�m",	x=38, z=98},
	{menpaiid=MP_MINGJIAO, menpainame="Minh Gi�o", name="L�m Th� Tr߶ng ", title="Minh Gi�o gi�o ch�", 	x=98, z=52},
	{menpaiid=MP_GAIBANG,  menpainame="C�i Bang", name="T�ng T� ",	 title="Tr߷ng l�o C�i Bang", 	x=91, z=63},
	{menpaiid=MP_WUDANG, 	 menpainame="V� �ang", name="Tr߽ng Huy�n T� ", title="Ch߷ng m�n ph�i V� �ang",	x=73, z=82},
	{menpaiid=MP_EMEI, 		 menpainame="Nga My", name="M�nh Thanh Thanh ", title="Ch߷ng m�n ph�i Nga My",	x=96, z=73},
	{menpaiid=MP_DALI, 	   menpainame="Thi�n Long", name="B�n Nh�n ",	 title="Ph߽ng tr��ng Thi�n Long T�",	x=96, z=66},
	{menpaiid=MP_XINGSU, 	 menpainame="Tinh T�c", name="�inh Xu�n Thu ", title="Ch߷ng m�n c�a ph�i Tinh T�c",	x=142, z=55},
	{menpaiid=MP_TIANSHAN, menpainame="Thi�n S�n", name="Mai Ki�m ",	 title="��i s� mu�i ph�i Thi�n S�n",	x=91, z=44},
	{menpaiid=MP_XIAOYAO,  menpainame="Ti�u Dao", name="T� Tinh H� ", title="T�m Quy�n Ch߷ng M�n Ti�u Dao",	x=125, z=144},
}           

--��
x229009_g_MaleTitleInfo = {
	{tlvl=1, mpp=0,    slt="Thi�u L�m Hi�p S� ", mjt="Minh Gi�o Hi�p S� ", gbt="C�i Bang Hi�p S� ", wdt="V� �ang Hi�p S� ", emt="Nga My Hi�p S�", xxt="Tinh T�c Hi�p S� ", tlt="Thi�n Long Hi�p S� ", tst="Thi�n S�n Hi�p S� ", xyt="Ti�u Dao Hi�p S� "},
	{tlvl=2, mpp=1000, slt="Kh�i Y H� Ph�p ", mjt="Th� Ho� Hi�p S� ", gbt="Thanh Li�n Ю T� ", wdt="Thanh Minh C� S� ", emt="Thanh Phong C� S� ", xxt="H�nh �n Lang Qu�n ", tlt="T�ng Kinh Hi�p S� ", tst="D߽ng Thi�n B� Ch�ng ", xyt="Ph� C�m C� S� "},
	{tlvl=3, mpp=2500, slt="Kim Th�n La H�n ", mjt="H� Gi�o Ph�p V߽ng ", gbt="Huy�n V� Tr߷ng L�o ", wdt="V� Vi Ch�n Nh�n ", emt="Ng�c Long Hi�p S� ", xxt="Th�c M�nh Ph�n Quan ", tlt="S�ng Th�nh Thi�n S� ", tst="Thi�n S�n Th߽ng �ng ", xyt="L�c Th�n Hi�p S� "},
	{tlvl=4, mpp=5000, slt="иa T�ng B� T�t ", mjt="Minh Gi�o Th�n S� ", gbt="Ch߷ng Bang Long Хu ", wdt="V� �ang Thi�n T�n ", emt="Nga My Ti�n Nh�n ", xxt="еc Th� Y Ti�n ", tlt="Thi�n Nam Long V߽ng ", tst="H�n Nguy�n S�n Th�n ", xyt="Ti�u Dao Long Th�n "},
}
--Ů	
x229009_g_femaleTitleInfo = {	
	{tlvl=1, mpp=0,	   slt="Thi�u L�m Hi�p N� ", mjt="Minh Gi�o Hi�p N� ", gbt="C�i Bang Hi�p N� ", wdt="V� �ang Hi�p N� ", emt="Nga My Hi�p N� ", xxt="Tinh T�c Hi�p N� ", tlt="Thi�n Long Hi�p N� ", tst="Thi�n S�n Hi�p N� ", xyt="Ti�u Dao Hi�p N� "},
	{tlvl=2, mpp=1000, slt="B�ch Y Th� Gi� ", mjt="Th� Ho� Hi�p N� ", gbt="B�ch Li�n Ю T� ", wdt="B�ch V�n C� S�", emt="Minh Nguy�t C� S� ", xxt="H�nh �n N߽ng T� ", tlt="T�ng Kinh Hi�p N� ", tst="H�o Thi�n B� Ch�ng ", xyt="Th� Hoa C� S� "},
	{tlvl=3, mpp=2500, slt="е Th� Quan �m ", mjt="H� Gi�o T�n Nh�n ", gbt="Chu T߾c Tr߷ng L�o ", wdt="Thanh T�nh T�n Nh�n", emt="Kim Ph��ng Hi�p N� ", xxt="�o�t M�nh D� Xoa ", tlt="S�ng Th�nh Thi�n N� ", tst="Thi�n S�n Tuy�t K� ", xyt="L�ng Ba Hi�p N� "},
	{tlvl=4, mpp=5000, slt="Gi� Lam B� T�t ", mjt="Quang Minh Th�nh N� ", gbt="Ch߷ng B�t Long N� ", wdt="V� �ang Ti�n T�", emt="Nga My Ti�n T� ", xxt="еc Th� D��c V߽ng ", tlt="Thi�n Nam Long N� ", tst="H�n Nguy�n Hoa Th�n ", xyt="Ti�u Dao Th�nh N� "},
}

x229009_g_shimentitle_bonusitem = {
	{menpaiid=MP_SHAOLIN,	bonusItem=10113004},
	{menpaiid=MP_MINGJIAO,	bonusItem=10113004},
	{menpaiid=MP_GAIBANG,	bonusItem=10113004},
	{menpaiid=MP_WUDANG,	bonusItem=10113004},
	{menpaiid=MP_EMEI, 		bonusItem=10113004},
	{menpaiid=MP_DALI, 		bonusItem=10113004},
	{menpaiid=MP_XINGSU,	bonusItem=10113004},
	{menpaiid=MP_TIANSHAN,	bonusItem=10113004},
	{menpaiid=MP_XIAOYAO,	bonusItem=10113004},
}

--**********************************
--�¼��������
--**********************************
function x229009_OnDefaultEvent( sceneId, selfId,targetId )
	--PrintStr("OnDefaultEvent...")
	for i, v in x229009_g_menpainpc_table do
		if v.name == GetName(sceneId, targetId) then
			if v.menpaiid == GetMenPai(sceneId, selfId) then
				--PrintNum(GetNumText())
				if 10 <= GetNumText() and GetNumText() <= 14 then
					--�һ��ƺ�
					x229009_ExchangeTitleBymenpaipoint( sceneId, selfId,targetId, GetNumText()-10 )
				elseif 7 == GetNumText() then
				x229009_ExchangeItemBymenpaipoint( sceneId, selfId,targetId )
				break
				elseif 8 == GetNumText() then
					--��ӳƺ�
					x229009_AddExchangeTitleList( sceneId, selfId,targetId )
					break
				end	
			else
				local str = "Ng߽i kh�ng ph�i l� � t� c�a m�n ph�i n�y, ta ch� ph�c v� cho � t� m�n ph�i"
				BeginEvent(sceneId)
					AddText(sceneId, str)
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				Msg2Player(  sceneId, selfId, str, MSG2PLAYER_PARA )		
			end	
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x229009_OnEnumerate( sceneId, selfId, targetId )
	--PrintStr("OnEnumerate...")
	AddNumText(sceneId,x229009_g_scriptId, x229009_g_ExchangeItem, 3, 7);
	AddNumText(sceneId,x229009_g_scriptId, x229009_g_ExchangeTitle, 3, 8);

end

function x229009_ExchangeItemBymenpaipointFn( sceneId, selfId,targetId, needPoint )
	
	if (needPoint < 0 ) then
		return
	end
	
	local menpaipoint = GetHumanMenpaiPoint(sceneId, selfId)
	if menpaipoint < 400 then
		local str = "е c�ng hi�n s� m�n c�a ng߽i hi�n l� " .. tostring(menpaipoint) .. ", v�n kh�ng �� 400 �i�m, h�y c� l�n!"
		BeginEvent(sceneId)
			AddText(sceneId, str)
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		Msg2Player(  sceneId, selfId, str, MSG2PLAYER_PARA )		
	else
		local nItemId, strItemName, strItemDesc = GetOneMissionItem(x229009_g_exchangeitembymenpaipoint_Index)
		BeginAddItem(sceneId)
			AddItem(sceneId,nItemId, 1)
		local ret = EndAddItem(sceneId,selfId)
		if ret <= 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Tay n�i c�a ng߽i �� �y, kh�ng th� �i ���c")
			EndEvent()
			DispatchMissionTips(sceneId, selfId)
		else
			AddItemListToHuman(sceneId, selfId)
			SetHumanMenpaiPoint(sceneId, selfId, menpaipoint-400)
			local str = format("Tr� 400 �i�m � c�ng hi�n m�n ph�i, ng߽i �� ��t ���c %s", strItemName)
			Msg2Player(  sceneId, selfId, str, MSG2PLAYER_PARA )	
			
			str = format("C�c h� ��t ���c %s.", strItemName)
			BeginEvent(sceneId)
				AddText(sceneId, str)
			EndEvent()
			DispatchMissionTips(sceneId, selfId)
				
		end
	end	
	
end

function x229009_ExchangeItemBymenpaipoint( sceneId, selfId,targetId )
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x229009_g_scriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddString(sceneId,"ExchangeItemBymenpaipointFn");
		UICommand_AddString(sceneId,x229009_g_MissionInfo);
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

end

--/////////////////////////////////////////////////////////////////////////////////

function x229009_GetCurShimenTitleLevel(menpai, title )  --, titleinfo)
	local titlelevel = 0
	if menpai == MP_SHAOLIN then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].slt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].slt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_MINGJIAO then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].mjt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].mjt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_GAIBANG then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].gbt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].gbt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_WUDANG then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].wdt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].wdt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_EMEI then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].emt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].emt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_DALI then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].tlt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].tlt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_XINGSU then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].xxt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].xxt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_TIANSHAN then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].tst then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].tst then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	elseif menpai == MP_XIAOYAO then
		for i=1, 4 do
			if title == x229009_g_MaleTitleInfo[i].xyt then
				titlelevel = x229009_g_MaleTitleInfo[i].tlvl
				return titlelevel
			end
			if title == x229009_g_femaleTitleInfo[i].xyt then
				titlelevel = x229009_g_femaleTitleInfo[i].tlvl
				return titlelevel
			end
		end	
	end
	
	return titlelevel
end

function x229009_GetSelectedTitle(menpai, titleinfo, level)
	if level < 1 or level > 4 then
		return 0, 0, ""
	end
	
	local title = ""
	if menpai == MP_SHAOLIN then
		title = titleinfo[level].slt
	elseif menpai == MP_MINGJIAO then
		title = titleinfo[level].mjt
	elseif menpai == MP_GAIBANG then
		title = titleinfo[level].gbt
	elseif menpai == MP_WUDANG then
		title = titleinfo[level].wdt
	elseif menpai == MP_EMEI then
		title = titleinfo[level].emt
	elseif menpai == MP_DALI then
		title = titleinfo[level].tlt
	elseif menpai == MP_XINGSU then
		title = titleinfo[level].xxt
	elseif menpai == MP_TIANSHAN then
		title = titleinfo[level].tst
	elseif menpai == MP_XIAOYAO then
		title = titleinfo[level].xyt
	end
	
	return titleinfo[level].tlvl, titleinfo[level].mpp, title
end

function x229009_AddExchangeTitleList(sceneId, selfId, targetId)
	--PrintStr("AddExchangeTitleList...")
	--�õ�����
	local level = GetLevel(sceneId, selfId)
	local menpai = GetMenPai(sceneId, selfId)
	--local shimentitle = GetShimenTitle(sceneId, selfId)
	--��Ů�ж�
	local titleinfo
	local sex = GetSex(sceneId, selfId)
	if 1 == sex then
		titleinfo = x229009_g_MaleTitleInfo
	elseif 0 == sex then
		titleinfo = x229009_g_femaleTitleInfo
	end

	local step = 10
	BeginEvent(sceneId)
	
	if menpai == MP_SHAOLIN then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_MINGJIAO then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_GAIBANG then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_WUDANG then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_EMEI then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_DALI then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_XINGSU then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_TIANSHAN then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	elseif menpai == MP_XIAOYAO then
		for i=1, 4 do
			local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, i)
			local str = seltitle .. " (c�n " .. needpoint .. " �i�m c�ng hi�n s� m�n)"
			AddNumText(sceneId,x229009_g_scriptId, str, 3, i+step)
		end
	end
	
	EndEvent()
	
	DispatchEventList(sceneId,selfId,targetId)
end

function x229009_GetShimenTitle_BonusItem(sceneId, selfId)
	local menpai = GetMenPai(sceneId, selfId)
	for i, v in x229009_g_shimentitle_bonusitem do
		if v.menpaiid == menpai then
			return v.bonusItem
		end
	end
	return 0
end

function x229009_ExchangeTitleBymenpaipoint( sceneId, selfId,targetId, level )
	--PrintStr("ExchangeTitleBymenpaipoint")
	--SetHumanMenpaiPoint(sceneId, selfId, 1000000)
	local titleinfo
	local menpai = GetMenPai(sceneId, selfId)
	local sex = GetSex(sceneId, selfId)
	if 1 == sex then
		titleinfo = x229009_g_MaleTitleInfo
	elseif 0 == sex then
		titleinfo = x229009_g_femaleTitleInfo
	end
	local title = GetShimenTitle(sceneId, selfId)
	--PrintStr("title=" .. title)
	local seltitlelvl, needpoint, seltitle = x229009_GetSelectedTitle(menpai, titleinfo, level)
	local curtitlelvl = x229009_GetCurShimenTitleLevel(menpai, title)
	
	--PrintStr("seltitlelvl=" .. seltitlelvl)
	--PrintStr("curtitlelvl=" .. curtitlelvl)
	
	local str
	if seltitlelvl < curtitlelvl then
		str = "Ng߽i �� c� danh x�ng m�n ph�i c�p cao, kh�ng c�n �i n�a"
	elseif seltitlelvl == curtitlelvl then
		str = "Ng߽i �� c� danh x�ng n�y, kh�ng c�n �i n�a"
	elseif seltitlelvl > curtitlelvl then
		local menpaipoint = GetHumanMenpaiPoint(sceneId, selfId)
		--PrintStr("menpaipoint=" .. menpaipoint)
		--PrintStr("needpoint=" .. needpoint)
		if needpoint <= menpaipoint then
			if seltitlelvl == 2 then
				BeginAddItem(sceneId)
					AddItem(sceneId, x229009_GetShimenTitle_BonusItem(sceneId, selfId), 1)
				local ret = EndAddItem(sceneId,selfId)
				if ret > 0 then
					AddItemListToHuman(sceneId, selfId)
					str = "Ch�c m�ng ng߽i �� ��t ���c #Y" .. seltitle .. "#W danh x�ng, hy v�ng ti�p t�c v� b�n m�n n� l�c ph�t huy danh ti�ng. ��y l� 1 b� y trang c�a b�n m�n, coi nh� l� m�t ph�n th߷ng c�a s� ph� ban cho ng߽i cho nh�ng v�t v� �� qua"
					SetShimenTitle(sceneId, selfId, seltitle)
					LuaFnDispatchAllTitle(sceneId, selfId)
					SetHumanMenpaiPoint(sceneId, selfId, menpaipoint-needpoint)
				else
					str = "Tay n�i c�a ng߽i �� �y, vi s� chu�n b� ch�t qu� cho ng߽i. S�a so�n tay n�i xong, h�y t�i t�m ta"
				end	
			else
				str = "Ch�c m�ng ng߽i �� ��t ���c #Y" .. seltitle .. "#W danh x�ng, hy v�ng ti�p t�c v� b�n m�n n� l�c ph�t huy danh ti�ng"
				SetShimenTitle(sceneId, selfId, seltitle)
				LuaFnDispatchAllTitle(sceneId, selfId)
				SetHumanMenpaiPoint(sceneId, selfId, menpaipoint-needpoint)
			end
		else
			str = "е c�ng hi�n m�n ph�i c�a ng߽i hi�n kh�ng ��, kh�ng th� �i ���c"	
		end
	end
	BeginEvent(sceneId)
		AddText(sceneId, str)
	EndEvent()
	DispatchEventList(sceneId,selfId,targetId)	
end

