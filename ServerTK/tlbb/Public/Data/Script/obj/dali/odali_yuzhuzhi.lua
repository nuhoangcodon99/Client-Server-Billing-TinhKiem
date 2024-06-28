--����NPC
--����֮
--��ͨ

x002088_g_ScriptId	= 002088

--������
x002088_g_Key				=
{
		["mis"]					= 100,	--����ɾ�����е�����
		["itm"]					= 101,	--����ɾ���������
		["do"]					= 102,	--ȷ��ɾ�����е�����
}

-- ��Ҫ��ɾ�����������ʱ��ͬʱɾ����������Ʒ���б�
x002088_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,	
		40004465, 40004462, 40004463, 40004464,				--���Ϻ�«����ʯ����Ҷ�������� zchw						
}

--******************************************************
--�¼��������
--******************************************************
function x002088_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta ph�ng m�nh c�a ho�ng � n߾c ��i L�, �n ��y � gi�p anh h�ng trong thi�n h� l�m nhi�m v�. N�u ng߽i mu�n hu� �i t�t c� m�i nhi�m v� trong danh s�ch nhi�m v�, ho�c hu� �i m�t ��o c� nhi�m v� n�o ��, ta �u c� th� gi�p ��. N�o ng߽i mu�n l�m g�?" )
		AddNumText( sceneId, x002088_g_ScriptId, "Ta mu�n x�a t�t c� m�i nhi�m v�", -1, x002088_g_Key["mis"] )
		AddNumText( sceneId, x002088_g_ScriptId, "Ta mu�n x�a ��o c� nhi�m v�", -1, x002088_g_Key["itm"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


function x002088_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
    local DayTime = GetDayTime()
    local LastTime = GetMissionData( sceneId, selfId, MD_NPC_DELMISSION ) --ȡ���ϴη���ʱ��
    
    if DayTime > LastTime then
        SetMissionData( sceneId, selfId, MD_NPC_DELMISSION, DayTime )
        return 1
    end
    
    return -1
    
end


--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002088_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002088_g_Key["mis"]	then
		if GetMissionCount( sceneId, selfId ) <= 0 then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr�n ng߶i ng߽i c�n b�n kh�ng c� nhi�m v�!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  X�a nhi�m v� s� x�a �i t�t c� m�i nhi�m v� tr�n ng߶i, c� ch�c ch�n l� s� x�a �i?" )
				AddNumText( sceneId, x002088_g_ScriptId, "Duy�t", -1, x002088_g_Key["do"] )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end

	elseif key == x002088_g_Key["itm"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )
		
	elseif key == x002088_g_Key["do"]	then
	    
	    local CanDel = x002088_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
	    if CanDel ~= 1 then
			BeginEvent( sceneId )
				AddText( sceneId, "L�n tr߾c c�c h� t� b� nhi�m v� � ch� t�i h� �n nay ch�a �� 24h, b�y gi� v�n kh�ng th� gi�p c�c h�." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
				        
	        return
	    end
	    
	  if IsHaveMission( sceneId, selfId, 1258 ) > 0 then --��������Ʒ����д�б����棬��Ȼ��ɾ��һ����ڶ�����ʱ��Ҳ��ɾһ�������顣doing 38427
	  	DelItem(sceneId, selfId, 40004454, 1)
	  end
	  
		DelAllMission( sceneId, selfId )
	  
	  -- ��Ҫ��ɾ�������ͬʱɾ����������Ʒ
		for i, nItemId in x002088_g_MisItemList do
			-- ��������Ʒ������
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				DelItem(sceneId, selfId, nItemId, nItemCount)
			end
		
		end
	    
		Msg2Player( sceneId, selfId, "#r�� x�a th�nh c�ng t�t c� m�i nhi�m v�!", MSG2PLAYER_PARA )
		BeginEvent( sceneId )
			AddText( sceneId, "  �� x�a th�nh c�ng t�t c� m�i nhi�m v�!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--******************************************************
--����������Ʒ
--��Client\Interface\MissionObjDel\MissionObjDel.lua����
--******************************************************
function x002088_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end

	EraseItem( sceneId, selfId, posItem )
end
