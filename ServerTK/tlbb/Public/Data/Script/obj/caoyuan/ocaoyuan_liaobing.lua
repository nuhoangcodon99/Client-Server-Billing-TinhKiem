--�ɱ�

--�ű���
x020008_g_scriptId = 020008

--**********************************
--�¼��б�
--**********************************
function x020008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tr�nh xa ta ra, ng߶i T�ng kh�ng ��ng � ta n�i chuy�n. #r#rTh�nh th��ng v�n tu�! ��i Li�u t�t th�ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
