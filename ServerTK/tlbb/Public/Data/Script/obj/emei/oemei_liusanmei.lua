--����NPC
--������
--��ͨ

x015035_g_scriptId = 015035

--**********************************
--�¼��������
--**********************************
function x015035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nga My s�n t� x�a �� c� t�n t� lo�i H�u vi�n, g�n ��y �c Vi�n g�y r�i ng�y m�t qu� qu�t, ch�ng c�n d�m �n g�y chuy�n v�i b�n ph�i, ng߽i c� b�ng l�ng th� �i ��nh lui b�n ch�ng?")
		AddNumText(sceneId,x015035_g_scriptId,"Цy l�i �c Vi�n",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x015035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<21  then	
			BeginEvent( sceneId )
			local strText = "Nh�t �nh kh�ng ���c coi th߶ng b�n �c Vi�n ��, ta xem, c�c h� h�y ��i ��ng c�p v��t qu� 21 h�y quay l�i t�m ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 145,89,142)
		end
	end
end
