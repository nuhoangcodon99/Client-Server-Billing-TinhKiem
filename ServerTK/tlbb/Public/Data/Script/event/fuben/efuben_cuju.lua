-- 402040 
-- õí¾Ï¸±±¾

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x402040_g_ScriptId = 402040

x402040_TIME_2000_01_03_ = 946828868
--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x402040_g_CopySceneName = "Mçu Ğan Uy¬n"

x402040_g_CopySceneType = FUBEN_CUJU	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x402040_g_CopySceneMap = "cuju.nav"
x402040_g_Exit = "cuju.ini"
x402040_g_LimitMembers = 3				--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x402040_g_TickTime = 1						--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x402040_g_LimitTotalHoldTime = 360--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x402040_g_LimitTimeSuccess = 500	--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x402040_g_CloseTick = 3						--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x402040_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x402040_g_DeadTrans = 0						--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x402040_g_Fuben_X = 38						--½øÈë¸±±¾µÄÎ»ÖÃX
x402040_g_Fuben_Z = 32						--½øÈë¸±±¾µÄÎ»ÖÃZ
x402040_g_Back_X = 203							--Ô´³¡¾°Î»ÖÃX
x402040_g_Back_Z = 56							--Ô´³¡¾°Î»ÖÃZ
x402040_g_Back_SceneId = 0				--Ô´³¡¾°Id

x402040_g_BossPoint={x=61, z=57}

x402040_g_MonsterPoint=
{
	{x=41,z=32},{x=46,z=32},{x=51,z=32},{x=56,z=32},{x=61,z=32},{x=66,z=32},
	{x=71,z=32},{x=76,z=32},{x=81,z=32},{x=86,z=32},{x=86,z=37},{x=86,z=42},
	{x=86,z=47},{x=86,z=52},{x=86,z=57},{x=86,z=62},{x=86,z=67},{x=86,z=72},
	{x=86,z=77},{x=86,z=82},{x=86,z=87},{x=86,z=92},{x=86,z=97},{x=86,z=102},
	{x=81,z=102},{x=76,z=102},{x=71,z=102},{x=66,z=102},{x=61,z=102},{x=56,z=102},
	{x=51,z=102},{x=46,z=102},{x=41,z=102},{x=41,z=97},{x=41,z=92},{x=41,z=87},
	{x=41,z=82},{x=41,z=77},{x=41,z=72},{x=41,z=67},{x=41,z=62},{x=41,z=57},
	{x=41,z=52},{x=41,z=47},{x=41,z=42},{x=41,z=37},{x=46,z=37},{x=51,z=37},
	{x=56,z=37},{x=61,z=37},{x=66,z=37},{x=71,z=37},{x=76,z=37},{x=81,z=37},
	{x=81,z=42},{x=81,z=47},{x=81,z=52},{x=81,z=57},{x=81,z=62},{x=81,z=67},
	{x=81,z=72},{x=81,z=77},{x=81,z=82},{x=81,z=87},{x=81,z=92},{x=81,z=97},
	{x=76,z=97},{x=71,z=97},{x=66,z=97},{x=61,z=97},{x=56,z=97},{x=51,z=97},
	{x=46,z=97},{x=46,z=92},{x=46,z=87},{x=46,z=82},{x=46,z=77},{x=46,z=72},
	{x=46,z=67},{x=46,z=62},{x=46,z=57},{x=46,z=52},{x=46,z=47},{x=46,z=42},
	{x=51,z=42},{x=56,z=42},{x=61,z=42},{x=66,z=42},{x=71,z=42},{x=76,z=42},
	{x=76,z=47},{x=76,z=52},{x=76,z=57},{x=76,z=62},{x=76,z=67},{x=76,z=72},
	{x=76,z=77},{x=76,z=82},{x=76,z=87},{x=76,z=92},{x=71,z=92},{x=66,z=92},
	{x=61,z=92},{x=56,z=92},{x=51,z=92},{x=51,z=87},{x=51,z=82},{x=51,z=77},
	{x=51,z=72},{x=51,z=67},{x=51,z=62},{x=51,z=57},{x=51,z=52},{x=51,z=47},
	{x=56,z=47},{x=61,z=47},{x=66,z=47},{x=71,z=47},{x=71,z=52},{x=71,z=57},
	{x=71,z=62},{x=71,z=67},{x=71,z=72},{x=71,z=77},{x=71,z=82},{x=71,z=87},
	{x=66,z=87},{x=61,z=87},{x=56,z=87},{x=56,z=82},{x=56,z=77},{x=56,z=72},
	{x=56,z=67},{x=56,z=62},{x=56,z=57},{x=56,z=52},{x=61,z=52},{x=66,z=52},
	{x=66,z=57},{x=66,z=62},{x=66,z=67},{x=66,z=72},{x=66,z=77},{x=66,z=82},
	{x=61,z=82},{x=61,z=77},{x=61,z=72},{x=61,z=67},{x=61,z=62},
}

x402040_g_NianShouPoint = 
{
	{x=40,z=100},{x=40,z=92},{x=40,z=84},{x=40,z=76},{x=40,z=68},
	{x=40,z=60},{x=40,z=52}, {x=64,z=30},{x=50,z=30},{x=78,z=30},
	{x=90,z=100},{x=90,z=92},{x=90,z=84},{x=90,z=76},{x=90,z=68},
	{x=90,z=60},{x=90,z=52},{x=60,z=103},{x=50,z=103},{x=78,z=103},
	
}

-- ×ãÇò£¬²»»áÖ÷¶¯¹¥»÷		
-- Ë«Ë«Ñà
x402040_g_SmallMonsterId_1={3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,33680,33681,33682,33683,33684,33685,33686,33687,33688,33689}
-- Ô§Ñì¹Õ
x402040_g_SmallMonsterId_2={3690,3691,3692,3693,3694,3695,3696,3697,3698,3699,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699}
-- ÔÆÍâÆ®
x402040_g_SmallMonsterId_3={3700,3701,3702,3703,3704,3705,3706,3707,3708,3709,33700,33701,33702,33703,33704,33705,33706,33707,33708,33709}

-- ±äÉíºóµÄÖ÷¶¯¹Ö ÂúÌìĞÇ
x402040_g_MiddleMonsterId={3710,3711,3712,3713,3714,3715,3716,3717,3718,3719,33710,33711,33712,33713,33714,33715,33716,33717,33718,33719}

-- BOSS¹Ö ËïÃÀÃÀ £¨õí¾ÏÊ®ÈıÃÃ£©
x402040_g_BossMonsterId={3720,3721,3722,3723,3724,3725,3726,3727,3728,3729,33720,33721,33722,33723,33724,33725,33726,33727,33728,33729}

--ÄêÊŞ
x402040_g_NianShouID  = {12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211}
--ÊÇ·ñ´´½¨µÄ´ÎÊı
x402040_paramonce  = 14

-- ¼ÇÂ¼É±¹ÖÊıÁ¿µÄ¸±±¾±äÁ¿
x402040_g_KillNum = 20

-- ´ó×ãÇò
x402040_g_BigFootBall = {9160,9170,9180,9190,39160,39170,39180,39190}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x402040_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText() == 1  then
		BeginEvent(sceneId)
		--	AddText(sceneId,"#B¹ØÓÚõí¾Ï´óÈü");
			AddText(sceneId,"#{CUDS_20071010}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 1£¬¼ì²é»î¶¯Ê±¼ä £¨Ã¿ÔÂµÚÒ»¸öĞÇÆÚÌìÏÂÎç19£º00~ÍíÉÏ23£º00£¬³ÖĞø4¸öĞ¡Ê±£©
	
	-- a£¬ÊÇ²»ÊÇĞÇÆÚÌì
	local nWeek = GetTodayWeek()
	if nWeek~=0  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
			AddText(sceneId,"  LÕc Dß½ng Hoành Täo Mçu Ğan Uy¬n chu¦n b¸ t± chÑc cuµc thi túc c¥u trong tu¥n ğ¥u tiên và tu¥n thÑ ba cüa m²i tháng lúc 19h ğªn 23h.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		return
	end
	-- xiehong ÌìÁú¼ÎÄê»ªÖ®×İºáËÄº£»î¶¯ÌØÀı£º4ÔÂ12ºÅ£¬4ÔÂ19ºÅ£¬4ÔÂ26ºÅ£¬5ÔÂ3ºÅ£¬5ÔÂ10ºÅ
	--local curDate = GetTime2Day()
	
	--if curDate == 20090412
	--or curDate == 20090419
	--or curDate == 20090426
	--or curDate == 20090503
	--or curDate == 20090510 
	--or curDate == 20090621 then
		--local temp = 1
	--else
	-- b£¬ÊÇ²»ÊÇÒ»¸öÔÂµÄµÚÒ»¸öĞÇÆÚÌì
	--local nToday = LuaFnGetDayOfThisMonth()
	--if nToday > 7 then -- zchw
		--BeginEvent(sceneId)
			--AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
			--AddText(sceneId,"  LÕc Dß½ng Hoành Täo Mçu Ğan Uy¬n chu¦n b¸ t± chÑc cuµc thi túc c¥u trong tu¥n ğ¥u tiên và tu¥n thÑ ba cüa m²i tháng lúc 19h ğªn 23h");
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		
		--return
	--end
	--end
		
	-- c£¬Ê±¼äÔÚ 19:00 ~ 23:00
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	--local temp = floor(nHour/100)*100
	--if nHour - temp < 76  or nHour - temp > 92   then
	--local nQuarter = mod(GetQuarterTime(),100);
	--if nQuarter < 76 or nQuarter > 92 then
	--end modified by zhangguoxin 090207
		--BeginEvent(sceneId)
		--	AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
		--	AddText(sceneId,"   LÕc Dß½ng Hoành Täo Mçu Ğan Uy¬n chu¦n b¸ t± chÑc cuµc thi túc c¥u trong tu¥n ğ¥u tiên và tu¥n thÑ ba cüa m²i tháng lúc 19h ğªn 23h");
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		
		--return
	--end
	
	-- 2£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ×é¶ÓÁË
	if LuaFnHasTeam(sceneId,selfId) ~= 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
			AddText(sceneId,"  C¥n t± ğµi m¾i có th¬ tham gia túc c¥u!");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ×é¶ÓÁË
	if GetTeamSize(sceneId,selfId) < x402040_g_LimitMembers  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
			AddText(sceneId,"  C¥n t± ğµi 3 ngß¶i tr· lên m¾i có th¬ tham gia túc c¥u");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 3£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ¶Ó³¤
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
			AddText(sceneId,"  Các hÕ không phäi ğµi trß·ng, hãy g÷i ğµi trß·ng ğªn g£p ta !");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
		
	end
	
	-- 5£¬¼ì²âÊÇ²»ÊÇÈË¶¼µ½Î»ÁË
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
			AddText(sceneId,"  Ğµi hæu không · g¥n ğây !");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- »ñµÃ¸½½üËùÓĞÍæ¼ÒÊı
	local nearteammembercount = GetNearTeamCount(sceneId, selfId)
	
	-- 6£¬¼ì²âÍæ¼Ò¶ÓÔ±ÀïÍ·ÓĞÃ»ÓĞÉ±Æø¹ıÖØµÄ
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local pk_value = LuaFnGetHumanPKValue( sceneId, memId )
		if pk_value and pk_value > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
				AddText(sceneId,"  Trong nhóm cüa các hÕ có ngß¶i mang sát khí quá cao, không th¬ tham gia túc c¥u !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			return
		end
	end

	-- 7£¬Íæ¼ÒµÈ¼¶²»ÄÜµÍÓÚ30¼¶
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local level = GetLevel( sceneId, memId )
		if level < 30   then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
				AddText(sceneId,"  Nhóm có ngß¶i không ğü 30 c¤p, không th¬ tham gia túc c¥u !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 8£¬¼ì²âÊÇ²»ÊÇÓĞÈËÒÑ¾­²Î¼Ó¹ıõí¾Ï»î¶¯
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local time = GetMissionData(sceneId, memId, MD_CUJU_PRE_TIME)
		local nCurTime = LuaFnGetCurrentTime()
		-- ¿´ÉÏ´Î²Î¼ÓµÄÊ±¼äÊÇ²»ÊÇºÍÏÖÔÚÓĞ12¸öĞ¡Ê±ÒÔÉÏµÄCD
		if nCurTime-time < 60*60*12   then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
				AddText(sceneId,"  Trong nhóm có ngß¶i ğã tham gia túc c¥u r°i, không th¬ tham gia tiªp tøc ğßşc !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 9£¬Ã¿¸ö¶ÓÔ±¶¼ĞèÒªÇ°6ÖÖĞÄ·¨´ïµ½30¼¶
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		if x402040_CheckAllXinfaLevel(sceneId, memId, 30) == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHoành täo mçu ğan uy¬n");
				AddText(sceneId,"  Ğµi ngü cüa các hÕ có tâm pháp chßa ğü ğªn 30, không th¬ tham gia túc c¥u !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 10£¬Âú×ãËùÓĞÌõ¼şÁË
	local str = "Ta chính thÑc công b¯ " .. GetName(sceneId,selfId) .. " và nhóm cüa ngß½i, có th¬ tiªn vào tham gia túc c¥u ğßşc r°i #r" .. GetName(sceneId,selfId) .. "#W Chúc may m¡n !"
	BeginEvent(sceneId)
		AddText(sceneId,"#BHoành täo mçu ğan uy¬n")
		AddText(sceneId, str)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x402040_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x402040_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x402040_g_ScriptId, "Gi¾i thi®u Túc C¥u",11 ,1  )
	AddNumText( sceneId, x402040_g_ScriptId, "Hoành täo mçu ğan uy¬n",10 ,-1  )
	-- a£¬ÊÇ²»ÊÇĞÇÆÚÌì
	local nWeek = GetTodayWeek()
	if nWeek~=0  then
		return
	end
	
	-- xiehong ÌìÁú¼ÎÄê»ªÖ®×İºáËÄº£»î¶¯ÌØÀı£º4ÔÂ12ºÅ£¬4ÔÂ19ºÅ£¬4ÔÂ26ºÅ£¬5ÔÂ3ºÅ£¬5ÔÂ10ºÅ
	--local curDate = GetTime2Day()
	
	--if curDate == 20090412
	--or curDate == 20090419
	--or curDate == 20090426
	--or curDate == 20090503
	--or curDate == 20090510 
	--or curDate == 20090621 then
	--	local temp = 1
	--else
	-- b£¬ÊÇ²»ÊÇÒ»¸öÔÂµÄµÚÒ»¸öĞÇÆÚÌì
	--local nToday = LuaFnGetDayOfThisMonth()
	--if nToday > 7 then -- zchw
	--	return
	--end
	--end
	
	-- c£¬Ê±¼äÔÚ 19:00 ~ 23:00
	--local nHour = GetHourTime()
	--local temp = floor(nHour/100)*100
	--if nHour - temp < 76  or nHour - temp > 92   then
	--	return
	--end
	AddNumText( sceneId, x402040_g_ScriptId, "Hoành täo mçu ğan uy¬n",10 ,-1  )
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x402040_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÊÇ·ñÒª½øÈë¸±±¾
--**********************************
function x402040_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--½ÓÊÜ
--**********************************
function x402040_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x402040_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x402040_MakeCopyScene( sceneId, selfId )
	
	-- Ê¹ÓÃ¶ÓÔ±µÄµÈ¼¶À´Ëã³ö¹ÖÎïµÄµÈ¼¶
	local param0 = 4;
	local param1 = 3;

	--×îÖÕ½á¹û
	local mylevel = 0;

	--ÁÙÊ±±äÁ¿
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --Ã»ÓĞ¶ÓÎé
		mylevel = GetLevel(sceneId, selfId)
	end
	
	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "x402040_g_CopySceneMap"); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402040_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402040_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402040_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402040_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, x);				--ÉèÖÃ¸±±¾µÄÈë¿Ú³¡¾°Î»ÖÃx
	LuaFnSetCopySceneData_Param(sceneId, 5, z);				--ÉèÖÃ¸±±¾µÄÈë¿Ú³¡¾°Î»ÖÃZ
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--É±ËÀBossµÄÊıÁ¿
	
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = PlayerMaxLevel/10;
	end

	-- Ê¹ÓÃ¸±±¾±äÁ¿8£¬9£¬10À´±£´æ¹ÖÎï±àºÅ
	LuaFnSetCopySceneData_Param(sceneId, 8, x402040_g_SmallMonsterId_1[iniLevel]) --Ğ¡¹ÖID
	LuaFnSetCopySceneData_Param(sceneId, 9, x402040_g_SmallMonsterId_2[iniLevel]) --Ğ¡¹ÖID
	LuaFnSetCopySceneData_Param(sceneId,10, x402040_g_SmallMonsterId_3[iniLevel]) --Ğ¡¹ÖID

	LuaFnSetCopySceneData_Param(sceneId,11, x402040_g_MiddleMonsterId[iniLevel])--¾«Ó¢ID
	LuaFnSetCopySceneData_Param(sceneId,12, x402040_g_BossMonsterId[iniLevel]) 	--BossID
	
	-- Ê¹ÓÃµÚ11Î»£¬¼ÇÂ¼¹ÖÎïÊµ¼ÊµÄµÈ¼¶
	LuaFnSetCopySceneData_Param(sceneId,13, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,21, iniLevel-1)
	
	--ÉèÖÃ³¡¾°ÖĞµÄ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "cuju_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cuju_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công !");
		else
			AddText(sceneId,"S¯ lßşng bän sao vßşt quá gi¾i hÕn, vui lòng thØ lÕi sau !");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x402040_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾µÄ¹æÔò
	-- 1£¬Èç¹ûÕâ¸öÎÄ¼şÃ»ÓĞ×é¶Ó£¬¾Í´«ËÍÕâ¸öÍæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé£¬µ«ÊÇÍæ¼Ò²»ÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3£¬Èç¹ûÍæ¼ÒÓĞ¶ÓÎé£¬²¢ÇÒÕâ¸öÍæ¼ÒÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑÒ»Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­µÄ×´Ì¬
		return
	end

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x402040_OnPlayerEnter( sceneId, selfId )
	
	-- 2,¼ÇÂ¼Ê±¼ä
	local nPreTime = GetMissionData(sceneId,selfId, MD_CUJU_PRE_TIME)
	local nCurTime = LuaFnGetCurrentTime()

	SetMissionData(sceneId, selfId, MD_CUJU_PRE_TIME, nCurTime)
	
	-- 3,ÉèÖÃËÀÍöÊÂ¼ş
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%50", -1, "0", sceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z )
	
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x402040_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x402040_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç£¬Ö»ÓĞ³ÇÊĞÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x402040_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x402040_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x402040_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x402040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x402040_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x402040_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x402040_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x402040_OnCopySceneTimer( sceneId, nowTime )
--	local once = LuaFnGetCopySceneData_Param( sceneId, x402040_paramonce )
--
--	if (once == 0) then
--	
--		LuaFnSetCopySceneData_Param(sceneId, x402040_paramonce, 1)
--		--ÄêÊŞÈëÇÖ
--		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 13 )
--	
--		local PlayerMaxLevel = GetHumanMaxLevelLimit()
--		local iniLevel;
--		if mylevel < 10 then
--			iniLevel = 10;
--		elseif mylevel < PlayerMaxLevel then
--			iniLevel = floor(mylevel/10) * 10;
--		else
--			iniLevel = PlayerMaxLevel;
--		end
--	
--		local iNianShouIdx = iniLevel / 10
--	
--		for i=1, 20 do
--			local objId = LuaFnCreateMonster( sceneId, x402040_g_NianShouID[iNianShouIdx], x402040_g_NianShouPoint[i].x, x402040_g_NianShouPoint[i].z, 1, 272, -1)
--			SetLevel( sceneId, objId, mylevel )
--			LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
--		end  
--	end

		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, 20)
		
		--PrintNum(nKillNum)

	-- ¼ÆÊ±Æ÷Ö÷ÒªÒª°´ÕÕÊ±¼äÀ´°²ÅÅË¢¹Ö
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 15)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 16)

	local SmallMonsterId_1	= LuaFnGetCopySceneData_Param(sceneId, 8)
	local SmallMonsterId_2	= LuaFnGetCopySceneData_Param(sceneId, 9)
	local SmallMonsterId_3	= LuaFnGetCopySceneData_Param(sceneId,10)
	local MiddleMonsterId	= LuaFnGetCopySceneData_Param(sceneId,11)
	local BossMonsterId		= LuaFnGetCopySceneData_Param(sceneId,12)
	
	local nMonsterLevel = LuaFnGetCopySceneData_Param(sceneId,13)
	
	local nPreBossSpeakTime = LuaFnGetCopySceneData_Param(sceneId,20)
	
	local arrayex = 0;           --À©Õ¹100¼¶ÒÔÉÏ£¬Êı×éÆ«ÒÆÁ¿
	local levelex = 0;           --À©Õ¹100¼¶ÒÔÉÏ£¬´óÂúÌìĞÇµÈ¼¶Æ«ÒÆÁ¿
	if(nMonsterLevel >= 110) then
	   arrayex = 4
	   levelex = 10
	end

	-- µÚÒ»´ÎÖ´ĞĞ¼ÆÊ±Æ÷	
	if nPreTime == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		x402040_TipAllHuman( sceneId, "Hoành täo mçu ğan uy¬n s¨ b¡t ğ¥u sau 60 giây" )
		return
	end
	
	-- Ã¿¼ä¸ô10ÃëÌáÊ¾Íæ¼Ò£¬¡°õí¾Ï±ÈÈü½«ÔÚAAÃëºóÕıÊ½¿ªÊ¼¡±
	if nStep==0 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Hoành täo mçu ğan uy¬n s¨ b¡t ğ¥u sau 50 giây" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==1 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Hoành täo mçu ğan uy¬n s¨ b¡t ğ¥u sau 40 giây" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==2 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Hoành täo mçu ğan uy¬n s¨ b¡t ğ¥u sau 30 giây" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==3 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Hoành täo mçu ğan uy¬n s¨ b¡t ğ¥u sau 20 giây" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==4 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Hoành täo mçu ğan uy¬n s¨ b¡t ğ¥u sau 10 giây" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime+5)
		return
	end
	
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)== "Song Song Yªn" or 
			 GetName(sceneId, nMonsterId)== "Uyên ¿½ng Quäi" or 
			 GetName(sceneId, nMonsterId)== "Vân NgoÕi Phiêu" 		 then
			if nowTime - GetObjCreateTime(sceneId, nMonsterId) > 60000  then
				-- ¼ì²âÕâ¸ö¹ÖµÄµ±Ç°ÑªÁ¿ÊÇ²»ÊÇ´óÓÚ×î´óÑªÁ¿µÄ1%£¬
				if GetHp(sceneId,nMonsterId) > 0  then
					-- É¾³ıÕâ¸ö¹Ö£¬ÔÚÕâ¸öÎ»ÖÃ´´½¨Ò»¸öĞÂµÄ¹Ö
					local PosX, PosZ = LuaFnGetWorldPos(sceneId, nMonsterId);
					PosX = floor(PosX);
					PosZ = floor(PosZ);
					
					LuaFnDeleteMonster(sceneId, nMonsterId)
					local nMiddleMonster = LuaFnCreateMonster(sceneId, MiddleMonsterId, PosX, PosZ, 3, 0, 402045);
					
					SetLevel(sceneId, nMiddleMonster, nMonsterLevel)
					SetNPCAIType(sceneId, nMiddleMonster, 0)
					SetCharacterName(sceneId, nMiddleMonster, "Mãn Thiên Tinh")
				end
			end	
		end
		
		if GetName(sceneId, nMonsterId)== "Song Song Yªn Yªn" or 
			 GetName(sceneId, nMonsterId)== "Uyên ¿½ng Quäi Quäi" or 
			 GetName(sceneId, nMonsterId)== "Vân NgoÕi Phiêu Phiêu" 		 then
			if nowTime - GetObjCreateTime(sceneId, nMonsterId) > 60000  then
				-- ¼ì²âÕâ¸ö¹ÖµÄµ±Ç°ÑªÁ¿ÊÇ²»ÊÇ´óÓÚ×î´óÑªÁ¿µÄ1%£¬
				if GetHp(sceneId,nMonsterId) > 0  then
					-- É¾³ıÕâ¸ö¹Ö£¬ÔÚÕâ¸öÎ»ÖÃ´´½¨Ò»¸öĞÂµÄ¹Ö
					local PosX, PosZ = LuaFnGetWorldPos(sceneId, nMonsterId);
					PosX = floor(PosX);
					PosZ = floor(PosZ);
					
					LuaFnDeleteMonster(sceneId, nMonsterId)
					local nIniLevel = LuaFnGetCopySceneData_Param(sceneId, 21)
					local nBigBallId =x402040_g_BigFootBall[4 + arrayex]+nIniLevel-levelex
					local nMiddleMonster = LuaFnCreateMonster(sceneId, nBigBallId, PosX, PosZ, 3, 0, 402045);
					
					SetLevel(sceneId, nMiddleMonster, nMonsterLevel)
					SetNPCAIType(sceneId, nMiddleMonster, 0)
					SetCharacterName(sceneId, nMiddleMonster, "Mãn Thiên Tinh")
				end
			end	
		end
	end

	if nStep>=5 and nStep<154 and nCurTime-nPreBossSpeakTime>=60 then
		LuaFnSetCopySceneData_Param(sceneId,20,nCurTime)
		
		local nRand = random(6)
		local str = ""
		if nRand == 1  then
			str = "#{_BOSS4}#cff99cc: Ta là cao thü túc c¥u, các ngß¶i chï thuµc hÕng cùi b¡p mà dám so tài v¾i ta #3"
		elseif nRand == 2  then
			str = "#{_BOSS4}#cff99cc: chuy«n qua ğây, ğá bên kia, c¯ lên c¯ lên !"
		elseif nRand == 3  then
			str = "#{_BOSS4}#cff99cc: Mãn thiên tinh l§p công, song song yªn yªn, uyên ß½ng quäi, vân ngoÕi phiêu nh¤t kh¡c linh h°n phø th¬ !"
		elseif nRand == 4  then
			str = "#{_BOSS4}#cff99cc: Ta Tôn MÛ MÛ s¨ cho các ngß½i biªt thª nào là l­ ğµ !"
		elseif nRand == 5  then
			str = "#{_BOSS4}#cff99cc: A, ta không xong r°i, song song yªn yªn các ngß½i chÕy trß¾c ği !"
		else
			str = "#{_BOSS4}#cff99cc: Các ngß¶i ğá túc c¥u ki¬u gì v§y? không biªt chào höi à?"
		end
		
		-- ÔÚ³¡¾°·¶Î§ÄÚº°»°
		CallScriptFunction((200060), "Duibai",sceneId, "", "Mçu Ğan Uy¬n", str)
	end
	
	-- ÔÚË¢µÚ20£¬50£¬120¸ö×ãÇòÖ®Ç°£¬ĞèÒªÓĞÒ»Ğ©Ğ¡Çé½Ú
	if nStep==24 or nStep==54 or nStep==124  then
		local nStep_1 = LuaFnGetCopySceneData_Param(sceneId, 25)
		local nStep_1_T = LuaFnGetCopySceneData_Param(sceneId, 26)
		if nStep_1 == 0  then
			LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
			LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			
			local str = ""
			if nStep==24 then
				str = "#{_BOSS4}#cff99cc: Ğ×ng vµi m×ng ! Ta s¨ s¾m cho các ngß½i biªt sÑc mÕnh cüa ta !"
			elseif nStep==24 then
				str = "#{_BOSS4}#cff99cc: Hãy xem ai s¨ là ngß¶i cß¶i cu¯i cùng !"
			else
				str = "#{_BOSS4}#cff99cc: Các hÕ ğã hoàn thành, ta mu¯n ğánh nhau v¾i t± ğµi khác thôi !"
			end
			CallScriptFunction((200060), "Duibai",sceneId, "", "Mçu Ğan Uy¬n", str)
			x402040_TipAllHuman( sceneId, "Tôn MÛ MÛ yêu c¥u ğ±i ngß¶i, trò ch½i s¨ tiªp tøc sau 30 giây" )
			
		elseif nStep_1 == 1  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "Tôn MÛ MÛ yêu c¥u ğ±i ngß¶i, trò ch½i s¨ tiªp tøc sau 20 giây" )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			end
			
		elseif nStep_1 == 2  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "Tôn MÛ MÛ yêu c¥u ğ±i ngß¶i, trò ch½i s¨ tiªp tøc sau 10 giây" )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			end
			
		elseif nStep_1 == 3  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "Cuµc ğ¤u b¡t ğ¥u" )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
				
				-- Ë¢Ò»¸ö´ó×ãÇò
				local nIniLevel = LuaFnGetCopySceneData_Param(sceneId, 21)
				
				local nBigFootballId = 0
				local ran = random(3)
				local szName = ""
				if ran == 1  then
					nBigFootballId  = x402040_g_BigFootBall[1 + arrayex]+nIniLevel-levelex
					szName = "Song Song Yªn Yªn"
				elseif ran == 2  then
					nBigFootballId  = x402040_g_BigFootBall[2 + arrayex]+nIniLevel-levelex
					szName = "Uyên ¿½ng Quäi Quäi"
				else
					nBigFootballId  = x402040_g_BigFootBall[3 + arrayex]+nIniLevel-levelex
					szName = "Vân NgoÕi Phiêu Phiêu"
				end
				
				local Point = x402040_g_MonsterPoint[nStep-4]
				local nNpc1 = LuaFnCreateMonster(sceneId, nBigFootballId, 
																					Point.x+random(2), 
																					Point.z, 
																					3, 0, 402045)
				SetLevel(sceneId, nNpc1, nMonsterLevel)
				SetCharacterName(sceneId, nNpc1, szName)
			end
			
		elseif nStep_1 == 4  then
			LuaFnSetCopySceneData_Param(sceneId, 25, 0)
			LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			
			LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
			LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		end
		
	end

	-- ÏÖ°´ÕÕ¼òµ¥µÄÃ¿10ÃëË¢Ò»´Î¹Ö
	if 	(nStep>=5   and nStep<24  and nCurTime-nPreTime >= 15) or
			(nStep>=25  and nStep<54  and nCurTime-nPreTime >= 12) or
			(nStep>=55  and nStep<124 and nCurTime-nPreTime >= 10) or
			(nStep>=125 and nStep<154	and nCurTime-nPreTime >= 5)   then
		
		-- ¹ÖÎïÉú³Éµã
		if nStep == 5  then
			x402040_TipAllHuman( sceneId, "Túc c¥u chính thÑc b¡t ğ¥u" )
		end
		
		local Point = x402040_g_MonsterPoint[nStep-4]
	
		-- ¹ÖÎïID
		local nMonsterId = 0 
		local ran = random(3)
		if ran == 1  then
			nMonsterId = SmallMonsterId_1
		elseif ran == 2  then
			nMonsterId = SmallMonsterId_2
		else
			nMonsterId = SmallMonsterId_3
		end
		
		local nNpc1 = LuaFnCreateMonster(sceneId, nMonsterId, Point.x+random(2), Point.z, 3, 0, 402045)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		--SetNPCAIType(sceneId, nNpc1, 0)
		
		if ran == 1  then
			SetCharacterName(sceneId, nNpc1, "Song Song Yªn")
		elseif ran == 2  then
			SetCharacterName(sceneId, nNpc1, "Uyên ¿½ng Quäi")
		else
			SetCharacterName(sceneId, nNpc1, "Vân NgoÕi Phiêu")
		end
		
		nStep = nStep+1
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
	end
		
	if nStep==154 then
		-- ¼ì²âÊÇ²»ÊÇËùÓĞµÄĞ¡¹Ö¶¼ËÀ¹â£¬Èç¹ûËÀ¹â£¬10Ãëºó¹Ì¶¨µØµãË¢BOSS
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)== "Song Song Yªn" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "Uyên ¿½ng Quäi" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "Vân NgoÕi Phiêu" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "Mãn Thiên Tinh" then
				bHaveMonster = 1
				break
			end
		end

		if bHaveMonster == 0   then
			nStep = nStep+1
			LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
			LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
		end
	end
	
	if 	nStep==155 then
		x402040_TipAllHuman( sceneId, "Tôn MÛ MÛ s¨ xu¤t hi®n sau 10 gi¥y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
		
	end
	
	if 	nStep==156 and nCurTime-nPreTime>=10  then
		nStep = nStep+1
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
		local nNpc1 = LuaFnCreateMonster(sceneId, BossMonsterId, x402040_g_BossPoint.x, x402040_g_BossPoint.z, 19, 216, 402040)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
		SetCharacterName(sceneId, nNpc1, "Tôn MÛ MÛ")
		SetCharacterTitle(sceneId, nNpc1, "Tñu Cúc Th§p Tam Muµi")
		
		x402040_TipAllHuman( sceneId, "Tôn MÛ MÛ xu¤t hi®n" )
	end
	
end

--**********************************
--¼ì²âĞÄ·¨ÊÇ²»¹»½ÓÈÎÎñ
--**********************************
function x402040_OnDie(sceneId, objId, killerId)
	--É±ËÀ¹ÖÎïµÄÊÇ³èÎïÔò»ñÈ¡ÆäÖ÷ÈËµÄID....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--Èç¹û×éÁË¶ÓÔò»ñÈ¡¶Ó³¤µÄID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	
	local str = ""
	str = format("#cff99ccKªt thúc cuµc thi túc c¥u hoành täo mçu ğan uy¬n #{_INFOUSR%s}#cff99cc dçn ğ¥u ğµi ngû thi th¯ cùng nhóm #{_BOSS4}#cff99cc và ğã chiªn th¡ng v¾i tÖ s¯ 12-0. Quä th§t lşi hÕi !", GetName(sceneId,nLeaderId))
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
end

--**********************************
--¼ì²âĞÄ·¨ÊÇ²»¹»½ÓÈÎÎñ
--**********************************
function x402040_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402040_TipAllHuman( sceneId, Str )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°£¬Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

