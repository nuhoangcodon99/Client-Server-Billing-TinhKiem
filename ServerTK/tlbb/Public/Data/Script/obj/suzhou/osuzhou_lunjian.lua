-- 1062

--����NPC
--��ɽ�۽�������
--��ͨ

--�ű���
x001064_g_scriptId = 001064

--��ӵ�е��¼�ID�б�
x001064_g_eventList={001230} --{001230}


--**********************************
--�¼��������
--**********************************
function x001064_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  T�c ng� n�i r�t ��ng, v�n v� � nh�t, v� v� � nh�, nh�n s� v� l�m �u �ang trong Lu�n Ki�m Hoa S�n tranh nhau danh hi�u thi�n h� � nh�t . N�u c�c h� mu�n tham gia Lu�n Ki�m Hoa S�n, ta c� th� b�o d�nh gi�p c�c h� v� ��a c�c h� �n Hoa S�n. N�u ng߶i ch�i tham gia Lu�n Ki�m Hoa S�n ���c li�t v�o 3 th� h�ng �u c�a m�n ph�i, c� th� �n ch� ta nh�n l�nh 1 ph�n th߷ng c�a tri�u ��nh, c�c v� h�y c� g�ng l�n!")
		
		AddNumText( sceneId, x001064_g_scriptId, "Gi�i thi�u Hoa S�n lu�n ki�m", 11, 10 )	
		
		for i, eventId in x001064_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- ѡ��һ��
--**********************************
function x001064_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_064}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	for i, findId in x001064_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

end
