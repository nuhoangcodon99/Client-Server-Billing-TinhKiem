--÷��NPC
--����˹�ٰ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B�ng h�u y�u qu�! Mau t�i gi�p ta!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�����¼�
--**********************************
function x033011_OnDie( sceneId, selfId, killerId )
end
