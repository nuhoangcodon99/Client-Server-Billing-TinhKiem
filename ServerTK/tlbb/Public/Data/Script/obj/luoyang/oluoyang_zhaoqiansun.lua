--����NPC
--��Ǯ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000025_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ng߽i c�ng t�i B�ch M� T� b�i Ph�t ph�i kh�ng? Ph�t t� � ��y linh l�m. M�y ng�y tr߾c, ti�u Quy�n �� g�i th� cho ta, nh�t �nh do th�nh t�m c�a ta �� khi�n Ph�t t� c�m �ng..")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
