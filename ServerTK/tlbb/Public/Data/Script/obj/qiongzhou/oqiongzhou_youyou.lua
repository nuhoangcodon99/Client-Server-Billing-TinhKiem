--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x035001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hu hu... � ��y nhi�u c� s�u qu�, ch�ng l� T� Kh�m ca ca ng�y ng�y s�ng trong t�nh c�nh th� n�y sao?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�����¼�
--**********************************
function x035001_OnDie( sceneId, selfId, killerId )
end
