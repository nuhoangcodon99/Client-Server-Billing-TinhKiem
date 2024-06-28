--script 鸨i t阯 ...
--hd edit lasttime 28/1/2014

x808008_g_ScriptId	= 808008

x808008_g_name_before = ""
MD_DOITENNV = 299 --hd add han che so lan doi ten nv

x808008_g_Key				=
{
	["ChgU"]					= 100,	--我要改名字
	["ChgU_Y"]				= 101,	--我要改名字，确认
	["TitP"]					= 110,	--我要更新师徒称号
	["TitP_Y"]				= 111,	--我要更新师徒称号，确认
	["TitS"]					= 120,	--我要更新夫妻称号
	["TitS_Y"]				= 121,	--我要更新夫妻称号，确认
	["TitG"]					= 130,	--我要更新帮会称号
	["TitG_Y"]				= 131,	--我要更新帮会称号，确认
}


function x808008_OnDefaultEvent( sceneId, selfId, targetId )

	--是否处于无法执行逻辑的状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	key	= GetNumText()
	if key == x808008_g_Key["ChgU"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_ChgU}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy畉", 6, x808008_g_Key["ChgU_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitP"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_TitP}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy畉", 6, x808008_g_Key["TitP_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitS"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_TitS}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy畉", 6, x808008_g_Key["TitS_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--dengxx
	elseif key == x808008_g_Key["TitG"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BHJW_090217_1}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy畉", 6, x808008_g_Key["TitG_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	------	
	elseif key == x808008_g_Key["ChgU_Y"] then
		if x808008_IsCanChangeUserName( sceneId, selfId ) == 1 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 5423 )
		end
	elseif key == x808008_g_Key["TitP_Y"] then
		x808008_OnRefreshPrenticeTitle( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitS_Y"] then
		x808008_OnRefreshSpouseTitle( sceneId, selfId, targetId )
 --dengxx
  elseif key == x808008_g_Key["TitG_Y"] then
		x808008_OnRefreshGuildContriTitle( sceneId, selfId, targetId )	
	------
	end
	
end


function x808008_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu痭 鸨i t阯", 6, x808008_g_Key["ChgU"] )
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu痭 thay danh hi畊 s� 鸢", 6, x808008_g_Key["TitP"] )
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu痭 thay danh hi畊 phu th�", 6, x808008_g_Key["TitS"] )
  AddNumText( sceneId, x808008_g_ScriptId, "#{CHANGENAME_JW}", 6, x808008_g_Key["TitG"] )
end


function x808008_OnRefreshSpouseTitle( sceneId, selfId, targetId )

	if LuaFnIsMarried( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C醕 h� v鏽 ch遖 k猼 h鬾" )
		return
	end
	
--local	UserTitle	= LuaFnGetSpouseTitle( sceneId, selfId )
--local	i, _			= strfind( UserTitle, "*" )
--if i == nil then
--	x808008_MsgBox( sceneId, selfId, "您不符合称号更新条件" )
--	return
--end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C醕 h� c c鵱g t靚h nh鈔 t� 鸬i tr呔c h銀 皙n" )
		return
	end
	
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "械i ng� n阯 do phu th� c醕 h� l n阯" )
		return
	end
	
	if GetNearTeamCount( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "T靚h nh鈔 c黙 c醕 h� kh鬾g � ph� c" )
		return
	end

	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	SelfGUID	= LuaFnObjId2Guid( sceneId, ObjID0 )
	local	SpouGUID	= LuaFnGetSpouseGUID( sceneId, ObjID1 )
	if LuaFnIsMarried( sceneId, ObjID0 ) == 0 or
		LuaFnIsMarried( sceneId, ObjID1 ) == 0 or
		SelfGUID ~= SpouGUID then
		x808008_MsgBox( sceneId, selfId, "T靚h nh鈔 c黙 c醕 h� kh鬾g c� trong 鸬i ng�" )
		return
	end

	local	Name0			= GetName( sceneId, ObjID0 )
	local	Name1			= GetName( sceneId, ObjID1 )
	if LuaFnGetSex( sceneId, ObjID0 ) == 0 then
		LuaFnAwardSpouseTitle( sceneId, ObjID1, Name0 .. "Phu qu鈔" )
	else
		LuaFnAwardSpouseTitle( sceneId, ObjID1, Name0 .. "N呓ng t�" )
	end
	DispatchAllTitle( sceneId, ObjID1 )

	if LuaFnGetSex( sceneId, ObjID1 ) == 0 then
		LuaFnAwardSpouseTitle( sceneId, ObjID0, Name1 .. "Phu qu鈔" )
	else
		LuaFnAwardSpouseTitle( sceneId, ObjID0, Name1 .. "N呓ng t�" )
	end
	DispatchAllTitle( sceneId, ObjID0 )
	
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin ch鷆 m譶g c醕 h�, danh hi畊 phu th� c黙 c醕 h� 疸 thay m緄!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end


function x808008_OnRefreshPrenticeTitle( sceneId, selfId, targetId )

	if LuaFnHaveMaster( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C醕 h� kh鬾g c� s� ph�" )
		return
	end
	
--local	UserTitle	= LuaFnGetShiTuTitle( sceneId, selfId )
--local	i, _			= strfind( UserTitle, "*" )
--if i == nil then
--	x808008_MsgBox( sceneId, selfId, "您不符合称号更新条件" )
--	return
--end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C醕 h� c c鵱g s� ph� t� 鸬i tr呔c h銀 皙n" )
		return
	end
	
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "械i ng� n阯 do s� 鸢 c醕 h� l n阯" )
		return
	end
	
	if GetNearTeamCount( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "S� ph� c黙 c醕 h� kh鬾g � ph� c" )
		return
	end

	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	ObjIDM
	if LuaFnIsMaster( sceneId, selfId, ObjID0 ) == 1 then
		ObjIDM				= ObjID0
	elseif LuaFnIsMaster( sceneId, selfId, ObjID1 ) == 1 then
		ObjIDM				= ObjID1
	else
		x808008_MsgBox( sceneId, selfId, "S� ph� c黙 c醕 h� kh鬾g c� trong 鸬i ng�" )
		return
	end
	
	local	NameM			= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. " 甬 t�" )
	DispatchAllTitle( sceneId, selfId )
	
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin ch鷆 m譶g c醕 h�, danh hi畊 s� 鸢 c黙 c醕 h� 疸 thay m緄!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end


function x808008_OnRefreshGuildContriTitle( sceneId, selfId, targetId )
  
  --是否处于无法执行逻辑的状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
  
  --是否加入了帮会
  if GetGuildLevel( sceneId, selfId ) < 0 then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_2}" )
		return 0
	end
	
	--移民帮会没改名，不能更新爵位称号
	local	GuildName	= LuaFnGetGuildName( sceneId, selfId )
	local	i, _ = strfind( GuildName, "*" )
	if i ~= nil then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_3}" )
		return 0
	end
	
	--是否有帮会爵位称号
	local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
	if currGuildContriTitle == "" then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_4}" )
		return 0
	end
	
	local i,_ = strfind(currGuildContriTitle,GuildName)
	
	--爵位称号是否正确：不用改或者已经改过了
	if i ~= nil then 
	  x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_5}" )
		return 0
	else
	--更新帮会爵位称号
	  local i,_ = strfind(currGuildContriTitle,"★")
	  local str = strsub(currGuildContriTitle,i)
	  local newGuildContriTitle = GuildName..str
	  AwardGuildContriTitle( sceneId, selfId, newGuildContriTitle)
		DispatchAllTitle( sceneId, selfId )
		
		BeginEvent( sceneId )
		  AddText( sceneId, "#{BHJW_090217_6}" )
	  EndEvent( sceneId )
	  DispatchEventList( sceneId, selfId, targetId )		
	end
	
end


function x808008_IsCanChangeUserName( sceneId, selfId )

	--是否处于无法执行逻辑的状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	UserName	= GetName( sceneId, selfId )
	x808008_g_name_before = UserName; --g醤 v鄌 bi猲 global
	local	i, _			= strfind( UserName, "*" )
	
	--check the doi ten truoc
	if LuaFnGetAvailableItemCount(sceneId, selfId, 30008105) >= 1 then
		--check so lan doi ten
		local solan = GetMissionData( sceneId, selfId,MD_DOITENNV)
		if solan >=1 then 
			x808008_MsgBox( sceneId, selfId, "C醕 h� kh鬾g ph鋓 l� ng叨i di d鈔, ho c醕 h� 疸 t譶g s豠 鸨i t阯" )
			return 0
		end
		--end check so lan
		return 1
	end
	--end check the doi ten
	if i == nil then
		x808008_MsgBox( sceneId, selfId, "C醕 h� kh鬾g ph鋓 l� ng叨i di d鈔, ho c醕 h� 疸 t譶g s豠 鸨i t阯" )
		return 0
	end
	
	return 1

end


function x808008_CallBackChangeUserNameBefore( sceneId, selfId )

	if x808008_IsCanChangeUserName( sceneId, selfId ) == 0 then
		return 0
	end
	
	return 1

end


function x808008_CallBackChangeUserNameAfter( sceneId, selfId, nRetType )

	--是否处于无法执行逻辑的状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	--更名消息返回类型
	--enum	CHANGE_NAME_RESULT
	--{
	--	CHGNAME_RE_OK					= 0 ,	// 更名成功
	--	CHGNAME_RE_ERROR ,					// 更名失败
	--	CHGNAME_RE_DBBUSY ,					// DB压力过大，请重新尝试
	--	CHGNAME_RE_NAMEERROR ,			// 不可接受的新名称
	--	CHGNAME_RE_REPEATED ,				// 名称重复
	--};
	if nRetType == 1 then
		x808008_MsgBox( sceneId, selfId, "S豠 鸨i th b読" )
	elseif nRetType == 2 then
		x808008_MsgBox( sceneId, selfId, "DB 醦 l馽 qu� cao, xin h銀 th� l読 t� 馥u" )
	elseif nRetType == 3 then
		x808008_MsgBox( sceneId, selfId, "Kh鬾g ch nh t阯 m緄" )
	elseif nRetType == 4 then
		x808008_MsgBox( sceneId, selfId, "Tr� v� t阯 c�" )
	else
		x808008_MsgBox( sceneId, selfId, "Xin ch鷆 m譶g c醕 h�, c醕 h� 疸 thay 鸨i t阯 th鄋h c鬾g!" )
		local solan = GetMissionData( sceneId, selfId,MD_DOITENNV)
		SetMissionData( sceneId, selfId,MD_DOITENNV,solan+1)--set so lan doi ten
		str = format("#cff99cc#{_INFOUSR%s} s� d鴑g #Y[Th� 斜i T阯] #P t読 #YPh誱 Di Th鄋h #P(#GL誧 D呓ng#P) 鸨i sang t阯 m緄 l� #{_INFOUSR%s} th鄋h c鬾g!", x808008_g_name_before,GetName(sceneId,selfId))
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
		local reply =LuaFnDelAvailableItem(sceneId,selfId,30008105,1) --add del item the doi ten
		if reply < 1 then
			x808008_MsgBox( sceneId, selfId, "Xo� th� 鸨i t阯 th b読!" )
		end
	end
	
	return 1

end

--**********************************
--醒目提示
--**********************************
function x808008_MsgBox( sceneId, selfId, str )

	if str == nil then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
