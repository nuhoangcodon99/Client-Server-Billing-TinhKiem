--��ɽNPC
--����
--��ͨ

x017035_g_scriptId = 017035

--**********************************
--�¼��������
--**********************************
function x017035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ph�i Thi�n S�n c�a ta v� Tuy�t qu�i t� tr߾c �n gi� n߾c s�ng kh�ng ph�m n߾c gi�ng, nh�ng b�n ch�ng c�ng l�c c�ng b�o ng��c, L�o L�o �� d�ng k� d� ch�ng �n Linh Th�u Phong, b�y gi� m�i vi�c tr�ng ch� v�o ng߽i �y")
		AddNumText(sceneId,x017035_g_scriptId,"�i ti�u di�t Tuy�t qu�i",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x017035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<61  then	
			BeginEvent( sceneId )
			local strText = "S�c m�nh c�a ��m Tuy�t qu�i n�y v� c�ng gh� g�m, ��ng c�p c�a ng߽i ch�a ��t �n c�p 61, ��a ng߽i �i nh� v�y, qu� th�c r�t nguy hi�m"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 147,94,145)
		end
	end
end
