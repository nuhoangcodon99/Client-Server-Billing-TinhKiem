--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  A Di �� Ph�t! H�u th߶ng v� th߶ng, song th� kh� dung, Nam B�c ��ng T�y, phi gi� phi kh�ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
