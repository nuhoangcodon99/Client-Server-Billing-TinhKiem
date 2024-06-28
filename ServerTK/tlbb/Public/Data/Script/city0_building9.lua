--����NPC
--ҽԺ

x805016_g_scriptId=805016
x805016_g_BuildingID11 = 10

--�ű���
x805016_g_shenyi_scriptId = 64					-- ��������ҽ���ű�
x805016_g_pet_dem_ScriptId	= 701603		-- ���������ơ��ű�

--**********************************
--�¼��������
--**********************************
function x805016_OnDefaultEvent( sceneId, selfId,targetId )
	
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    L� Ho�ng Li�n ta �� t�ng l�p l�i th�, ngo�i tr� ng߶i c�a bang h�i, ng߶i b�n ngo�i d� c� b�nh t� th� n�o ta c�ng kh�ng c�u"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	BeginEvent(sceneId)
		strText = "    Ta l� ch� y x� n�y, l߽ng y nh� t� m�u, hu�ng h� g� l� ng߶i c�ng bang v�i nhau, n�u nh� c�c h� c�m th�y th�ch th� v�i y thu�t, c� th� ng�i ��m ��o v�i nhau"
		AddText(sceneId,strText);
		
		if CityGetBuildingLevel(sceneId, selfId, sceneId, CITY_BUILDING_YISHE) >=3 then
			AddNumText(sceneId,x805016_g_scriptId,"#G�t��",6,0)
		end
		
		AddNumText(sceneId,x805016_g_scriptId,"Mua �an b�o ch� d��c",7,6)
		AddNumText(sceneId,x805016_g_scriptId,"�t���B",11,7)
		--life ����������������Ӧ�����ѡ��
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805016_g_scriptId,x805016_g_BuildingID11,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x805016_OnEventRequest( sceneId, selfId, targetId, eventId )

	--����
	if eventId == x805016_g_pet_dem_ScriptId then
		-- ���á��������ơ��ű�
		CallScriptFunction( x805016_g_pet_dem_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText() )	
		return
	end

	--����ҽ���¼�
	if eventId == x805016_g_shenyi_scriptId then
		-- ���á�������ҽ���ű�
		CallScriptFunction( x805016_g_shenyi_scriptId, "OnEventRequest",sceneId, selfId, targetId, GetNumText() )	
		return
	end

	--����������������Ӧ�����ѡ��
	if eventId ~= x805016_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805016_g_scriptId, x805016_g_BuildingID11 )
		return
	end
	if GetNumText() == 0 then
		-- ���á�������ҽ���ű�
		CallScriptFunction( x805016_g_shenyi_scriptId, "UpdateEventList",sceneId, selfId, targetId )
	elseif GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 4)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --���ó����̵����
			UICommand_AddInt(sceneId,x805016_g_BuildingID11)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_YiShe}" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
		--life ����������������Ӧ�����ѡ��
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805016_g_BuildingID11 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
end