--NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x021203_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"Ng߽i l� t�i t�m ta  sao? B�c L�p c�ng vi�n b�nh n�i ta kh�ng ph�i chim c�nh c�t...... Ta l� Чu Чu....")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
