--����NPC
--����

x805011_g_scriptId=805011
x805011_g_BuildingID5 = 4

--**********************************
--�¼��������
--**********************************
function x805011_OnDefaultEvent( sceneId, selfId,targetId )

	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    Kh�ng ph�i l� ng߶i c�a ta, kh�ng b�n t�t c� c�c qu�n trang ho�n m�"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	BeginEvent(sceneId)
		strText = "    Ta l� ch� ti�m d�ng c� ph�ng th�n, c� vi�c g� ch� gi�o? N�u c� vi�c g� li�n quan �n d�ng c� ph�ng th�n, t�m Ch�u V� K� ta nh�t �nh kh�ng sai ��u"
		AddText(sceneId,strText);
		AddNumText(sceneId,x805011_g_scriptId,"C�a h�ng b� m�t",7,7)
		AddNumText(sceneId,x805011_g_scriptId,"Nh� ch� t�o",6,8)
		AddNumText(sceneId,x805011_g_scriptId,"Trang ph�c bang h�i",6,9)
		AddNumText(sceneId,x805011_g_scriptId,"Gi�i thi�u ph�ng c� ph߶ng",8,6)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x805011_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 4)
	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_FangJuFang}" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 9 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
end
