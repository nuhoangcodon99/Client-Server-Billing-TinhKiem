--����NPC ���ϼӹ�����NPC   �������ܣ�1���ϼӹ����ܵ�ѧϰ 2������ϼӹ�����
--������
--��ͨ

--�ű���
x000141_g_ScriptId = 000141

--�̵���
x000141_g_shoptableindex = 167

--��ӵ�е��¼�Id�б�
--estudy_cailiaojiagong = 713538


--��ӵ�е��¼�ID�б�
x000141_g_eventList={713538}
--**********************************
--�¼��б�
--**********************************
function x000141_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Mu�n h�c k� n�ng gia c�ng nguy�n li�u kh�ng ? H�y ch�n �n v�o d�ng \"H�c gia c�ng nguy�n li�u\"d߾i ��y, l� c� th� h�c k� n�ng gia c�ng nguy�n li�u.")
	AddText(sceneId,"  Gia c�ng nguy�n li�u c�n ph�i c� t�nh ki�n nh�n, m�i c� th� ch� t�o ra l��ng l�n th�nh ph�m h�p th�nh, c�c lo�i th�nh ph�m n�y r�t c�n thi�t � h�c c�ng ngh�, ch� t�o, may m�c 3 lo�i k� n�ng s�ng, n�u c�c h� mu�n th�ng c�p c�ng ngh�, ch� t�o v� may m�c 3 lo�i k� n�ng n�y th� th� ph�i h�c gia c�ng nguy�n li�u r�i!")
	AddText(sceneId,"  Ch� �: H�c \"Gia c�ng nguy�n li�u\" c�n t�n #{_EXCHG10000}, ��ng quen mang theo nh�!")
	for i, eventId in x000141_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--�̵�ѡ��
	AddNumText(sceneId,x000141_g_ScriptId,"Mua ph�i ph߽ng gia c�ng nguy�n li�u ",7, 99 )
	AddNumText( sceneId, x000141_g_ScriptId, "Gi�i thi�u gia c�ng nguy�n li�u ", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000141_OnDefaultEvent( sceneId, selfId,targetId )
	x000141_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000141_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{HELP_CLJG}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if	GetNumText() == 99	then
		DispatchShopItem( sceneId, selfId,targetId, x000141_g_shoptableindex )
	end
	for i, findId in x000141_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000141_g_ScriptId )
		return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000141_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x000141_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�������Ѿ���������
--**********************************
function x000141_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ�����������
--**********************************
function x000141_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x000141_OnDie( sceneId, selfId, killerId )
end
