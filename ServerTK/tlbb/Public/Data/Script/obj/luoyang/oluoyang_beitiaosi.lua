--����NPC

--����˾

--��ͨ

x000047_g_ScriptId=000047

--**********************************
--�¼��������
--**********************************
function x000047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nghe n�i qu�c l� m� n߾c Cao Ly c�ng d�ng �� b� m�t, c� th�t kh�ng?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
