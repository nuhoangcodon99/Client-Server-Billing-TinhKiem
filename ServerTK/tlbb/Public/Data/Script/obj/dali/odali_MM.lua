--SÑ giä ph¥n thß·ng Server Test
--Author: Kenvin Sói

--Item_Name: 30010145~CN Phách, 30010145~CN Tinh Phách, 30010082~CN Linh Phách, 20503061~Trang b¸ Tinh Thông Phù, 20503063~Ly Höa, 30010090~Tinh giác ng÷c bµi c¤p 1

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
			AddText(sceneId,"Kéo dài ðªn hªt #G30/09/2015#W, ph¥n thß·ng các bÕn tham gia #GServer test#W s¨ có th¬ nh§n ðßþc tÕi #GThiên Tiên#W!")
			if GetMissionData(sceneId,selfId,MD_SERVERTEST_RECIEVE_BONUS)==0 then
				AddText(sceneId,"#YCác hÕ có th¬ nh§n ph¥n thß·ng · ðây mµt l¥n duy nh¤t!")
				AddNumText(sceneId,x002054_g_scriptId,"Nh§n ph¥n thß·ng Server Test",6,1)
				AddNumText(sceneId,x002054_g_scriptId,"Ta chï ði ngang qua...",-1,0)
			else
				AddText(sceneId,"#YCác hÕ ðã nh§n ph¥n thß·ng r°i!")
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
				AddText(sceneId,"Ðã hªt th¶i gian có th¬ nh§n thß·ng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetMissionData(sceneId,selfId,MD_SERVERTEST_RECIEVE_BONUS)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã nh§n ph¥n thß·ng này r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetPropertyBagSpace(sceneId,selfId)<8 or LuaFnGetMaterialBagSpace(sceneId,selfId)<6 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ hãy s¡p xªp lÕi ít nh¤t #G8 ô tr¯ng#W trong ô #GÐÕo cø#W và #G6 ô tr¯ng#W trong ô #GNguyên li®u#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetLevel(sceneId,selfId)<119 and (not x002054_g_Bonus_Special_List[LuaFnGetGUID(sceneId,selfId)]) then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ c¥n ðÕt c¤p 119 tr· lên m¾i có th¬ nh§n thß·ng!")
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
		--AddGlobalCountNews(sceneId,"#RChúc m×ng "..GetName(sceneId,selfId).." ðã nh§n thß·ng #GServer Test#R thành công!")
		str = format("#RChúc m×ng #{_INFOUSR%s} #Rðã nh§n thß·ng #GServer Test#R thành công", GetName(sceneId,selfId))
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
			
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n ph¥n thß·ng thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	
end
