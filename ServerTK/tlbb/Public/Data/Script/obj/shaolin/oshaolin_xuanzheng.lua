--����NPC
--��֤
--��ͨ

x009035_g_scriptId = 009035

--**********************************
--�¼��������
--**********************************
function x009035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng bi�t t�i sao, m�c nh�n trong M�c Nh�n H�ng nh�t th�i kh�ng �i�u khi�n ���c, hi�n ch�y kh�p ch�a, xem th� ch� h�nh dong l߽ng thi�n, cho th� ch� c� h�i r�n luy�n, th� ch� c� mu�n kh�ng? ")
		AddNumText(sceneId,x009035_g_scriptId,"Luy�n t�p ��nh m�c nh�n",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<41  then	
			BeginEvent( sceneId )
			local strText = "M�c nh�n c�a b�n t� tuy d� ��nh, nh�ng ��ng c�p th� ch� ch�a t�i 41, e �ng ph� kh�ng n�i, theo � l�o t�ng ��i 1 th�i gian n�a h�ng t�i"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 139,95,141)
		end
	end
end
