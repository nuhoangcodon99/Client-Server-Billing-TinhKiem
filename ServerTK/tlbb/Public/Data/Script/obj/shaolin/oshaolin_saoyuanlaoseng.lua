--����NPC
--ɨԺ��ɮ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Danh ti�ng th� ch� tr�n giang h�, l�o n�p �� s�m ���c nghe. H�m nay ���c g�p, qu� nhi�n danh b�t h� truy�n")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
