-- ����NPC
-- ѩ��

x050200_g_scriptId = 050200

--**********************************
--�¼��������
--**********************************
function x050200_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta ........ Ta l� m�t Ng߶i Tuy�t!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
