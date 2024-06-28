--SÑ giä Tinh thông trang b¸
--Tô Châu - Mµ BÕch
--Code by: Sói

--*********************--
x920501_g_scriptId = 920501
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x920501_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"M²i món trang b¸ ð«u ti«m ¦n mµt sÑc mÕnh mà ít ai có ðßþc. Ngß¶i ð¶i g÷i ðó là #GTinh thông trang b¸#W.")
		--local strGUID = LuaFnGetGUID( sceneId, selfId )
		--if strGUID == 1010000003 then
			AddNumText(sceneId,x920501_g_scriptId,"Giäi phong #GTinh thông trang b¸",6,0)
			AddNumText(sceneId,x920501_g_scriptId,"Thång c¤p #GTinh thông trang b¸",6,1)
		--end
		AddNumText(sceneId,x920501_g_scriptId,"V« #GTinh thông trang b¸",11,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x920501_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*********************--
	if GetNumText()==0	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,0)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,200907251)
	elseif GetNumText()==1	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,1)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,200907251)
	elseif GetNumText()==2 then
		BeginEvent(sceneId)
			AddText(sceneId,"M²i món trang b¸ ð«u ti«m ¦n mµt sÑc mÕnh mà ít ai có ðßþc. Ngß¶i ð¶i g÷i ðó là #GTinh thông trang b¸#W.")
			AddText(sceneId,"Mu¯n #GTinh thông trang b¸#W, chï c¥n ðªn #GTô Châu (345,227)#R Mµ BÕch#W tiªn hành thao tác.")
			AddText(sceneId,"Ð¬ giäi phong #GTinh thông trang b¸#W, c¥n tiêu t¯n mµt cái #GTrang b¸ Tinh thông phù#W.")
			AddText(sceneId,"Ð¬ thång c¤p #GTinh thông trang b¸#W, c¥n tiêu t¯n mµt s¯ lßþng #GLy Höa#W nh¤t ð¸nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	
end
