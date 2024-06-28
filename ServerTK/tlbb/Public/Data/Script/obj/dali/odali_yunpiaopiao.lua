--��ƮƮ

--�ű���
x002051_g_scriptId = 002051

x002051_g_shoptableindex=27
--��ӵ�е��¼�ID�б�
--x002051_g_eventList={210214,210215,210216,210220,210221,210223, 808090, 808091, 806020}	--808090:��ȡ���ƻ	--add by xindefeng
x002051_g_eventList={620,210214,210215,210216,210220,210221,210223, 808091, 806020}	--808090:��ȡ���ƻ	--add by xindefeng

--**********************************
--�¼��б�
--**********************************
function x002051_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_dali_0029}")
		AddNumText(sceneId,x002051_g_scriptId,"Mua � d�ng cho tr�n th�",7,0)
		AddNumText(sceneId,x002051_g_scriptId,"#GH�p th�nh Tinh gi�c ng�c b�i",6,1000)
		for i, eventId in x002051_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002051_OnDefaultEvent( sceneId, selfId,targetId )
	x002051_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002051_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x002051_g_shoptableindex )
	end
	if GetNumText()==1000 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�p th�nh c�n ti�u hao 3 vi�n ng�c c�p tr߾c.")
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 2)",6,1001)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 3)",6,1002)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 4)",6,1003)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 5)",6,1004)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 6)",6,1005)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 7)",6,1006)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 8)",6,1007)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 9)",6,1008)
			AddNumText(sceneId,x002051_g_scriptId,"Tinh gi�c ng�c b�i (C�p 10)",6,1009)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()>=1001 and GetNumText()<=1009 then
		if LuaFnGetAvailableItemCount(sceneId,selfId,30010090+mod(GetNumText(),10)-1)<3 then
			BeginEvent(sceneId)
				AddText(sceneId,"S� l��ng "..GetItemName(sceneId,30010090+mod(GetNumText(),10)-1).." kh�ng ��!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,30010090+mod(GetNumText(),10)-1,3)
		TryRecieveItem(sceneId,selfId,30010090+mod(GetNumText(),10),1)
		BeginEvent(sceneId)
			AddText(sceneId,"H�p th�nh th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	for i, findId in x002051_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x002051_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x002051_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			x002051_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002051_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002051_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002051_OnDie( sceneId, selfId, killerId )
end

--**********************************
--�ύ����
--**********************************
function x002051_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	for i, findId in x002051_g_eventList do
		if scriptId == findId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
			return
		end
	end
end
