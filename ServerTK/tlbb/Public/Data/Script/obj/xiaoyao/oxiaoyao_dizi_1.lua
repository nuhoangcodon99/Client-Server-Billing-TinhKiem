--��ңNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  N�u c� v�n � g�, xin c� �n g�p Tri kh�ch s� c�a Ti�u Dao")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
