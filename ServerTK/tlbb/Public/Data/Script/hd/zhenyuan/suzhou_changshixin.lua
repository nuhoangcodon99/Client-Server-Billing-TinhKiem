--S� gi� Ch�n nguy�n
--T� Ch�u - Tr߽ng S� T�m
--Code by: S�i

--*********************--
x900002_g_scriptId = 900002
--*********************--
x900002_g_ZhenYuan_EquipSlot=
{
	MD_ZHENYUAN_EQUIP_1,
	MD_ZHENYUAN_EQUIP_2,
	MD_ZHENYUAN_EQUIP_3,
	MD_ZHENYUAN_EQUIP_4,
	MD_ZHENYUAN_EQUIP_5,
	MD_ZHENYUAN_EQUIP_6,
	MD_ZHENYUAN_EQUIP_7,
	MD_ZHENYUAN_EQUIP_8,
	MD_ZHENYUAN_EQUIP_9,
	MD_ZHENYUAN_EQUIP_10,
	MD_ZHENYUAN_EQUIP_11,
	MD_ZHENYUAN_EQUIP_12,
}

x900002_g_ZhenYuan_Slot=
{
	MD_ZHENYUAN_SLOT_1,
	MD_ZHENYUAN_SLOT_2,
	MD_ZHENYUAN_SLOT_3,
	MD_ZHENYUAN_SLOT_4,
	MD_ZHENYUAN_SLOT_5,
	MD_ZHENYUAN_SLOT_6,
	MD_ZHENYUAN_SLOT_7,
	MD_ZHENYUAN_SLOT_8,
	MD_ZHENYUAN_SLOT_9,
	MD_ZHENYUAN_SLOT_10,
	MD_ZHENYUAN_SLOT_11,
	MD_ZHENYUAN_SLOT_12,
	MD_ZHENYUAN_SLOT_13,
	MD_ZHENYUAN_SLOT_14,
	MD_ZHENYUAN_SLOT_15,
	MD_ZHENYUAN_SLOT_16,
	MD_ZHENYUAN_SLOT_17,
	MD_ZHENYUAN_SLOT_18,
	MD_ZHENYUAN_SLOT_19,
	MD_ZHENYUAN_SLOT_20,
}
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900002_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"#{ZYXT_120528_01}")
		AddNumText(sceneId,x900002_g_scriptId,"V� Gi�i phong Ch�n nguy�n",11,0)
		AddNumText(sceneId,x900002_g_scriptId,"V� Ng�ng luy�n Ch�n nguy�n",11,1)
		AddNumText(sceneId,x900002_g_scriptId,"V� Ph�n gi�i Ch�n nguy�n",11,2)
		AddNumText(sceneId,x900002_g_scriptId,"V� ��ng c�p Ch�n nguy�n",11,3)
		if GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED)~=1 then
			AddNumText(sceneId,x900002_g_scriptId,"K�ch ho�t Ch�n nguy�n",6,4)
		else
			AddNumText(sceneId,x900002_g_scriptId,"Gi�i phong Ch�n nguy�n",6,5)
			AddNumText(sceneId,x900002_g_scriptId,"Ng�ng luy�n Ch�n nguy�n",6,6)
			AddNumText(sceneId,x900002_g_scriptId,"Ph�n gi�i to�n b� Ch�n nguy�n",6,7)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x900002_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*********************--
	if GetNumText()==0	then
		BeginEvent(sceneId)
			AddText(sceneId,"� #GT� Ch�u (350,229) #RTr߽ng S� T�m #Wch�n d�ng #GGi�i phonng Ch�n nguy�n#W, l� c� th� th�c hi�n thao t�c#W.#rTr�ng th�i m�c �nh c�a Ch�n Nguy�n B�n Nh�n n�y l� #Gtr�ng th�i �ang b� phong �n#W, ch� sau khi #Gkh�i �ng xong#W, th� m�i c� th� ��a #Gtrang b� Ch�n Nguy�n l�n#W, m�i c�i Ch�n Nguy�n B�n Nh�n �u #Gt߽ng �ng 1 lo�i trang b� c� �nh#W, #Gkh�i �ng Ch�n Nguy�n B�n Nh�n #Wth� nh�t thi�t ph�i #Gti�u hao 1 l��ng nh�t �nh #Wc�a #YCh�n Nguy�n Tinh T�y#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId,"� #GT� Ch�u (350,229) #RTr߽ng S� T�m #Wch�n d�ng #GNg�ng luy�n Ch�n nguy�n#W, l� c� th� th�c hi�n thao t�c#W. Ng�ng luy�n c�n ti�u t�n #G20 Ch�n Nguy�n Tinh T�y#W v� m�i l�n s� c� t� l� ng�u nhi�n nh�n ���c #GCh�n nguy�n#W m�t trong 5 lo�i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==2	then
		BeginEvent(sceneId)
			AddText(sceneId,"M� giao di�n Ch�n nguy�n, #Gnh�n chu�t tr�i v�o ch�n Ch�n nguy�n#W ���c �t trong t�i ��ng Ch�n nguy�n, sau �� #Gnh�n v�o L� ph�n gi�i#W l� c� th� ph�n gi�i Ch�n nguy�n. Ch�n nguy�n sau khi ph�n gi�i s� #Gbi�n m�t#W, �ng th�i c�c h� nh�n ���c m�t l��ng #GNguy�n Tinh#W b� �p t�y ��ng c�p c�a Ch�n nguy�n.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==3	then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�n nguy�n c� #G5 lo�i ��ng c�p#W t߽ng �ng v�i #G5 m�u s�c#W l� #GX�m#W, #GLam#W, #GL�c#W, #GT�m#W, #GCam#W. Th�ng c�p Ch�n nguy�n c�n ti�u hao #GNguy�n tinh#W v�i s� l��ng nh�t �nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==4	then
		if GetLevel(sceneId,selfId)<80 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� c�n ��t c�p 80 tr� l�n � c� th� k�ch ho�t h� th�ng Ch�n nguy�n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"K�ch ho�t h� th�ng Ch�n nguy�n th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction(900000,"ZhenYuanStart",sceneId,selfId)
	elseif GetNumText()==6	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED))
			local str=""
			for i,MD in x900002_g_ZhenYuan_Slot do
				if GetMissionData(sceneId,selfId,MD)<=0 then
					str=str.."xxxxxxxx"
				else
					str=str..tostring(GetMissionData(sceneId,selfId,MD))
				end
			end
			UICommand_AddString(sceneId,str)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_YUANXING))
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,88990001)
	elseif GetNumText()==5 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED))
			for i,MD in x900002_g_ZhenYuan_EquipSlot do
				UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD))
			end
			UICommand_AddInt(sceneId,GetSex(sceneId,selfId))
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,88990099)
	elseif GetNumText()==7 then
		CallScriptFunction(900000,"OnUpdate",sceneId,selfId,11)
	end
	--*********************--
	
end
