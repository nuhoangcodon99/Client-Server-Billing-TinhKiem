--����NPC
--����
--��ͨ

x009002_g_scriptId = 009002

--**********************************
--�¼��������
--**********************************
function x009002_OnDefaultEvent( sceneId, selfId,targetId )
	x009002_g_MenPai = GetMenPai(sceneId, selfId)
	if x009002_g_MenPai == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{TYJZ_081103_02}")
			AddNumText(sceneId, x009002_g_scriptId, "K� n�ng h�c t�p",12,0)
			AddNumText(sceneId, x009002_g_scriptId, "Gi�i thi�u v� t�m ph�p",11,10)
			--AddNumText(sceneId, x009002_g_scriptId, "#{JZBZ_081031_02}",11,11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
			BeginEvent(sceneId)
			AddText(sceneId,"L�o n�p Huy�n N�n, th� ch� t�m b�n t�ng c� chuy�n g�?")
			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_xinfajieshao_001}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	elseif GetNumText() == 11 then
		BeginEvent(sceneId)					
			AddText( sceneId, "#{JZBZ_081031_01}" )							
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 0 );
end
