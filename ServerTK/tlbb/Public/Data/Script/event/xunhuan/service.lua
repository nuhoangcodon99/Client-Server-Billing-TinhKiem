--��װ��

function x801015_OnService( sceneId, selfId, itemId, platformType )
--һЩ�����ж�
--����
--���
	local tArray = {}
	tArray[1] = {0}
	tArray[2] = {1,2,3,4,5,14,15}
	tArray[3] = {6,7,11,12,13}
	
	local tArray_Text = {"��i ch�m kh�m ch� c� th� s�a ch�a v� kh�","��i may m�c ch� c� th� s�a ch�a ph�ng c�","��i c�ng ngh� ch� c� th� s�a ch�a � trang s�c"}
	local tArray_Ability = {" ��c khu�n "," May m�c "," C�ng ngh� "}
	local nLevel =GetBagItemLevel(sceneId, selfId,itemId)
	local EquipType = LuaFnGetBagEquipType(sceneId, selfId, itemId)
	local find = 0

	for i, item in tArray[platformType] do
		if item == EquipType then
			find =1
		end
	end
	
	if find == 0 then
		BeginEvent(sceneId)
		AddText(sceneId,tArray_Text[platformType])
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if nLevel < 40 then
		BeginEvent(sceneId)
		AddText(sceneId,"Ch� c� th� s�a ch�a trang b� c� ��ng c�p y�u c�u >=40")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	ret = DoRepair( sceneId, selfId, itemId, platformType )

	if ret == -1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� n�y kh�ng th� ���c s�a ch�a l�n n�a")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -2 then
		BeginEvent(sceneId)
		AddText(sceneId,"S� l��ng  "..tArray_Ability[platformType].."��ng c�p k� n�ng kh�ng ��")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -3 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng �� ho�t l�c")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -4 then
		BeginEvent(sceneId)
		AddText(sceneId,"Th�t kh�ng may, trong qu� tr�nh s�a, do v�n may c�a c�c h� kh�ng t�t, khi�n chi�c n�y #{_ITEM"..LuaFnGetItemTableIndexByIndex(sceneId,selfId,itemId).."} b� t�n th�t nhi�u")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif ret == -5 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trong qu� tr�nh s�a xu�t hi�n sai s�t kh�ng r� do ��u")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -6 then
		BeginEvent(sceneId)
		AddText(sceneId,"V�t ph�m kh�ng c� v�n � g�, kh�ng c�n s�a")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Tr�i qua tay c�c h� t� m� tu ph�c, chi�c n�y #{_ITEM"..LuaFnGetItemTableIndexByIndex(sceneId,selfId,itemId).."} �� s�a xong")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
		Msg2Player(  sceneId, selfId,"Ti�u hao"..floor(nLevel/10+5).."Ho�t l�c",MSG2PLAYER_PARA )
	end
	
end
