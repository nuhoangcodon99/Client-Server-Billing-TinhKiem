--��ңNPC
--�����ӳ�
--��ͨ

x014035_g_scriptId = 014035

--**********************************
--�¼��������
--**********************************
function x014035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta s� d�n ng߽i �n th� luy�n v�i nh�ng m�c nh�n m�nh m�. Ng߽i c� d�m �i kh�ng ??")
		AddNumText(sceneId,x014035_g_scriptId,"�i �n M�c Nh�n �ng",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x014035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "�t nh�t ph�i ��t t�i c�p 81 m�i c� th� v�o b�n � n�y ���c !!"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 144,51,129)
		end
	end
end
