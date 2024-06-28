-- 200017
-- ��������to� �  ������ ����to� � �ű�

x200017_g_ScriptId = 200017
--**********************************
--������ں���
--**********************************
function x200017_OnDefaultEvent( sceneId, selfId, targetId )
	if LuaFnGetCopySceneData_Param(sceneId, 15) == 1  then
		BeginEvent(sceneId)
			AddText( sceneId, "  ���c, n�u V߽ng c� n߽ng kh�ng �n h�n, ta s� tha cho c�c ng߽i 1 con �߶ng s�ng. � ��y ta c� thu�c gi�i Bi T� Thanh Phong, mau c�m �i, n�u kh�ng ta thay �i ch� �" )
			if IsHaveMission( sceneId, selfId, 15 ) > 0 then
					AddNumText( sceneId, x200017_g_ScriptId, "�� �o�t ���c thu�c gi�i �c Bi T� Thanh Phong", 6 ,-1  )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

function x200017_OnEventRequest( sceneId, selfId, targetId )

	--�ж������ng����ng��C�i n�y ����,
	if IsHaveMission( sceneId, selfId, 15 ) > 0 then
		--�����������C�i n�y ��Ʒ��û��
		if GetItemCount(sceneId, selfId, 40001005) < 1  then
			-- �������Ʒ
	  	BeginAddItem(sceneId)
				AddItem( sceneId, 40001005, 1 )
			local ret = EndAddItem(sceneId,selfId)
			if ret < 1  then
				BeginEvent(sceneId)
					AddText( sceneId, "Tay n�i c�a c�c h� �� �y", 0 )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				AddItemListToHuman(sceneId,selfId)
				BeginEvent(sceneId)
					AddText( sceneId, "Huynh �� �o�t ���c thu�c gi�i �c Bi T� Thanh Phong", 0 )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		else
			BeginEvent(sceneId)
				AddText( sceneId, "Tr�n ng߶i huynh �� c� thu�c gi�i �c Bi T� Thanh Phong", 0 )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
	
	-- �رնԻ���
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
	
end

--**********************************
--�о��¼�
--**********************************
function x200017_OnEnumerate( sceneId, selfId, targetId )

end

--**********************************
--���Ti�p th�����
--**********************************
function x200017_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200017_OnAccept( sceneId, selfId, targetId )

end

--**********************************
--����
--**********************************
function x200017_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x200017_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x200017_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x200017_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x200017_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200017_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200017_OnItemChanged( sceneId, selfId, itemdataId )
end
