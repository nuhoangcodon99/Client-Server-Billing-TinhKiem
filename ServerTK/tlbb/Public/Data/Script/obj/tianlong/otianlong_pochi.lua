--����NPC
--�Ƴ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ti�u t�ng ph�p hi�u l� Ph� Si, xu�t gia � Ni�m Hoa T�, ti�u t�ng �n Thi�n Long t� � tr� nh�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
