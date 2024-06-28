--��o c� Ch�n Nguy�n
--Code by: S�i

--********************--
x900001_g_scriptId = 900001
--********************--
x900001_g_ZhenYuanDan_Lv1=30010080			--CNP KC�
x900001_g_ZhenYuanDan_Lv2=30010081			--CNTP KC�
x900001_g_ZhenYuanDan_Lv3=30010082			--CNLP KC�
x900001_g_ZhenYuanDan1_Lv1=30010144			--CNP C�
x900001_g_ZhenYuanDan1_Lv2=30010145			--CNTP C�
x900001_g_ZhenYuanDan1_Lv3=30010146			--CNLP C�
--********************--
x900001_g_ZhenYuan_Slot=
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
--********************--
x900001_g_ZhenYuan_EquipSlot=
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
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900001_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x900001_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x900001_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x900001_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--****************--
	if GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED)~=1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� ch�a khai m� h� th�ng Ch�n nguy�n, kh�ng th� s� d�ng v�t ph�m n�y!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local Item_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	if Item_Index==x900001_g_ZhenYuanDan_Lv1 or Item_Index==x900001_g_ZhenYuanDan_Lv2 or Item_Index==x900001_g_ZhenYuanDan_Lv3
	or Item_Index==x900001_g_ZhenYuanDan1_Lv1 or Item_Index==x900001_g_ZhenYuanDan1_Lv2 or Item_Index==x900001_g_ZhenYuanDan1_Lv3 then
		return 1
	end
	--********************--
	local nSlot=-1
	--****************--
	for i,MD in x900001_g_ZhenYuan_Slot do
		if GetMissionData(sceneId,selfId,MD)<=0 then
			nSlot=i
			break
		end
	end
	--****************--
	if nSlot==-1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n s�p x�p l�i m�t � tr�ng trong t�i ��ng Ch�n nguy�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x900001_OnDeplete(sceneId,selfId)
	
	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId)>0 then
		return 1
	end
	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x900001_OnActivateOnce(sceneId,selfId)

	--********************--
	local Item_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	if Item_Index==x900001_g_ZhenYuanDan_Lv1 or Item_Index==x900001_g_ZhenYuanDan_Lv2 or Item_Index==x900001_g_ZhenYuanDan_Lv3 then
		local Current_ZhenYuanXingXu=GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU)
		local nPoint
		if Item_Index==x900001_g_ZhenYuanDan_Lv1 or Item_Index==x900001_g_ZhenYuanDan1_Lv1 then
			nPoint=100
		elseif Item_Index==x900001_g_ZhenYuanDan_Lv2 or Item_Index==x900001_g_ZhenYuanDan1_Lv2 then
			nPoint=300
		elseif Item_Index==x900001_g_ZhenYuanDan_Lv3 or Item_Index==x900001_g_ZhenYuanDan1_Lv3 then
			nPoint=500
		end
		SetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU,Current_ZhenYuanXingXu+nPoint)
		
		BeginEvent(sceneId)
			AddText(sceneId,"S� d�ng v�t ph�m th�nh c�ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		BeginEvent(sceneId)
			AddText(sceneId,"S� �i�m Ch�n Nguy�n Tinh T�y c�a c�c h� hi�n t�i l� "..GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU).."!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�n nguy�n �� ���c c�t gi� v�o trong t�i ��ng Ch�n nguy�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		local nSlot
		for i,MD in x900001_g_ZhenYuan_Slot do
			if GetMissionData(sceneId,selfId,MD)<=0 then
				nSlot=i
				break
			end
		end
		SetMissionData(sceneId,selfId,x900001_g_ZhenYuan_Slot[nSlot],Item_Index)
	end
	--********************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED)*10+GetSex(sceneId,selfId))
		for i,MD in x900001_g_ZhenYuan_EquipSlot do
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD))
		end
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_YUANXING))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
		local str=""
		for i,MD in x900001_g_ZhenYuan_Slot do
			if GetMissionData(sceneId,selfId,MD)<=0 then
				str=str.."xxxxxxxx"
			else
				str=str..tostring(GetMissionData(sceneId,selfId,MD))
			end
		end
		UICommand_AddString(sceneId,str)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,80800792)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x900001_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
