-- 125014
-- ����װ��

--�ű���
x125014_g_scriptId = 125014

--��ӵ�е��¼�ID�б�
x125014_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x125014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T�i h� c� th� s�a ch�a t�t c� c�c trang b� tr�n 40, bao g�m c�c lo�i v� kh� v� � trang s�c, nh�ng khi t�i h� s�a ch�a t� l� th�nh c�ng kh�ng ph�i l� 100% , n�u c�c h� kh�ng c� b�c k� ph�n �i n�o th� � t�i s� ch�a gi�p c�c h�")
		AddNumText(sceneId,x125014_g_scriptId,"T�i mu�n s�a ch�a trang b�",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x125014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )	
	end
end

