--�䵱NPC
--������
--��ͨ

x012035_g_scriptId = 012035

--**********************************
--�¼��������
--**********************************
function x012035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nh�ng ng߶i tu luy�n t� x�a t�i nay, �u g�p ph�i nh�ng vi�c xu�t ph�t t� t�m ma, Th�ch Thi�n S� �� b� tr� ��i tr�n � n�i V� �ang, c� th� s� c� c� h�i ��nh b�i t�m ma, b�n mu�n th� th�c l�c c�a m�nh kh�ng?")
		AddNumText(sceneId,x012035_g_scriptId,"��i chi�n T�m Ma",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x012035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<71  then	
			BeginEvent( sceneId )
			local strText = "C�i n�y g�i l� r�n luy�n b�n ngo�i tr߾c, tu luy�n b�n trong sau, ��ng c�p c�a ng߽i ch�a �n c�p 71, u�ng c�ng ng߽i b߾c v�o, ch� e s� b� t�u h�a nh�p ma - d� tr�ng xe c�t"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 142,91,183)
		end
	end
end
