--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x007007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh߽ng Gia t�p �ang r�i ren chuy�n ��o t�c!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
