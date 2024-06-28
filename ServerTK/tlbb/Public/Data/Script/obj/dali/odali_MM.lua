--S� gi� ph�n th߷ng Server Test
--Author: Kenvin S�i

--Item_Name: 30010145~CN Ph�ch, 30010145~CN Tinh Ph�ch, 30010082~CN Linh Ph�ch, 20503061~Trang b� Tinh Th�ng Ph�, 20503063~Ly H�a, 30010090~Tinh gi�c ng�c b�i c�p 1

--*********************--
x002054_g_scriptId = 002054
--*********************--
x002054_g_Bonus_Special_List={
	[1020065772]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=30010082,	Number=1},	{ItemID=20503061,	Number=5},	{ItemID=20503063,	Number=100},	{ItemID=30010090,	Number=5},	},
	[1010193928]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=30010082,	Number=1},	{ItemID=20503061,	Number=5},	{ItemID=20503063,	Number=100},	{ItemID=30010090,	Number=5},	},
	[1050084825]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=20503061,	Number=2},	{ItemID=20503063,	Number=50},	{ItemID=30010090,	Number=2},	},
	[1030152834]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=20503061,	Number=2},	{ItemID=20503063,	Number=50},	{ItemID=30010090,	Number=2},	},
	[1020035856]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=20503061,	Number=2},	{ItemID=20503063,	Number=50},	{ItemID=30010090,	Number=2},	},
	[1040011512]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=20503061,	Number=2},	{ItemID=20503063,	Number=50},	{ItemID=30010090,	Number=2},	},
	[1010199524]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=20503061,	Number=2},	{ItemID=20503063,	Number=50},	{ItemID=30010090,	Number=2},	},
	[1010203564]={	{ItemID=30010145,	Number=5},	{ItemID=30010145,	Number=2},	{ItemID=20503061,	Number=2},	{ItemID=20503063,	Number=50},	{ItemID=30010090,	Number=2},	},
}
--*********************--
x002054_g_Bonus_Normal_List={
	{ItemID=30010145,	Number=1},	{ItemID=20503061,	Number=1},	{ItemID=20503063,	Number=5},	{ItemID=30010090,	Number=1},
}
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x002054_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_dali_0031}")
		if GetTime2Day()<=20150930 then
			AddText(sceneId,"K�o d�i �n h�t #G30/09/2015#W, ph�n th߷ng c�c b�n tham gia #GServer test#W s� c� th� nh�n ���c t�i #GThi�n Ti�n#W!")
			if GetMissionData(sceneId,selfId,MD_SERVERTEST_RECIEVE_BONUS)==0 then
				AddText(sceneId,"#YC�c h� c� th� nh�n ph�n th߷ng � ��y m�t l�n duy nh�t!")
				AddNumText(sceneId,x002054_g_scriptId,"Nh�n ph�n th߷ng Server Test",6,1)
				AddNumText(sceneId,x002054_g_scriptId,"Ta ch� �i ngang qua...",-1,0)
			else
				AddText(sceneId,"#YC�c h� �� nh�n ph�n th߷ng r�i!")
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x002054_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*********************--
	if GetNumText()==0 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--*********************--
	if GetNumText()==1 then
		if GetTime2Day()>20150930 then
			BeginEvent(sceneId)
				AddText(sceneId,"�� h�t th�i gian c� th� nh�n th߷ng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetMissionData(sceneId,selfId,MD_SERVERTEST_RECIEVE_BONUS)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� nh�n ph�n th߷ng n�y r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetPropertyBagSpace(sceneId,selfId)<8 or LuaFnGetMaterialBagSpace(sceneId,selfId)<6 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� h�y s�p x�p l�i �t nh�t #G8 � tr�ng#W trong � #G��o c�#W v� #G6 � tr�ng#W trong � #GNguy�n li�u#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetLevel(sceneId,selfId)<119 and (not x002054_g_Bonus_Special_List[LuaFnGetGUID(sceneId,selfId)]) then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� c�n ��t c�p 119 tr� l�n m�i c� th� nh�n th߷ng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local My_ID=LuaFnGetGUID(sceneId,selfId)
		if not x002054_g_Bonus_Special_List[My_ID] then
			for i,item in x002054_g_Bonus_Normal_List do
				for i=1,item.Number do
					local Pos=TryRecieveItem(sceneId,selfId,item.ItemID,1)
					LuaFnItemBind(sceneId,selfId,Pos)
				end
			end
		else
			for i,item in x002054_g_Bonus_Special_List[My_ID] do
				for i=1,item.Number do
					local Pos=TryRecieveItem(sceneId,selfId,item.ItemID,1)
					LuaFnItemBind(sceneId,selfId,Pos)
				end
			end
		end
		SetMissionData(sceneId,selfId,MD_SERVERTEST_RECIEVE_BONUS,1)
		LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,selfId,147,0)
		--AddGlobalCountNews(sceneId,"#RCh�c m�ng "..GetName(sceneId,selfId).." �� nh�n th߷ng #GServer Test#R th�nh c�ng!")
		str = format("#RCh�c m�ng #{_INFOUSR%s} #R�� nh�n th߷ng #GServer Test#R th�nh c�ng", GetName(sceneId,selfId))
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
			
		BeginEvent(sceneId)
			AddText(sceneId,"Nh�n ph�n th߷ng th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	
end
