--����NPC
--ʯ��
--��ͨ

x011035_g_scriptId = 011035

--**********************************
--�¼��������
--**********************************
function x011035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Quan binh l�i �n v�y ��nh Quang Minh ��nh, th�t r�c r�i, c� �i�u b�n �n ch� l� v� danh ti�u t�t, c�c h� c� mu�n ra luy�n ch�t quy�n c߾c ch�ng?")
		AddNumText(sceneId,x011035_g_scriptId,"�i ch�n ph� bao v�y",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x011035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<31  then	
			BeginEvent( sceneId )
			local strText = "D� l� v� danh ti�u t�t, c�ng kh�ng ���c khinh th߶ng, c�c h� c�n ch�a ��t c�p 31, v� s� an to�n c�a c�c h�, ta xem c� luy�n t�p th�m r�i h�ng quay l�i"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 141,97,157)
		end
	end
end
