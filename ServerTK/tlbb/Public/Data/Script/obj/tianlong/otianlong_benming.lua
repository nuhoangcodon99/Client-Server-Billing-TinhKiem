--������NPC
--����
--��ͨ

x013035_g_scriptId = 013035

--**********************************
--�¼��������
--**********************************
function x013035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L�o t�ng g�n ��y �� nh�n th�u ���c huy�n c� c�a H�n Ng�c Th�p, h�t nh�n h�t qu�, kh�ng danh kh�ng t߾ng, ng߽i c� mu�n khi�u chi�n v�i vua b� nh�n trong truy�n thuy�t c�a Ma ��o kh�ng?")
		AddNumText(sceneId,x013035_g_scriptId,"�i ��i chi�n Kh�i L�y",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x013035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<91  then	
			BeginEvent( sceneId )
			local strText = "��ng c�p th� ch� ��y ch�a t�i c�p 91, b߾c v�o �ng e r�ng s� v� c�ng nguy hi�m ��"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 143,95,134)
		end
	end
end
