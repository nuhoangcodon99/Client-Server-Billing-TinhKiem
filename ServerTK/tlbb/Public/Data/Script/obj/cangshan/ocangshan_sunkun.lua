--��ɽ-���ӹ�����NPC
--����
--��ͨ

x025113_g_ScriptId	= 025113

--**********************************
--�¼��������
--**********************************
function x025113_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )
		
		AddText(sceneId,"#{SHGZ_0612_38}")
    AddNumText( sceneId, x025113_g_ScriptId, "�i Th�c H� C� Tr�n", 9, 3436 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x025113_OnEventRequest( sceneId, selfId, targetId, eventId )

	--˳������
	local	arg	= GetNumText()

  if arg == 3436 then		--��ɽ
  		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x025113_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i kh�ng t�ng s�t kh�, ph�i c�n th�n. C�c h� x�c nh�n ti�n v�o?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end

end

--  add by zchw
function x025113_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 26, 288, 20 )
	return
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x025113_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
