--NPC��ѩ
--��ɽ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x025112_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"M�i n�m m�a ��ng �n n�i ��y tuy�t ph� kh�p n�i. N� �ang �m ch� g� ��y ? �! M�t th� gi�i k� di�u nh�ng c� ch�t ��ng s�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
