--½Å±¾ºÅ
x840006_g_scriptId = 840006

x840006_g_XinfaList = {}
x840006_g_XinfaList[1] = {1,2,3,4,5,6,55,72}	-- tp Thiªu lâm
x840006_g_XinfaList[2] = {7,8,9,10,11,12,56,73}	-- tp MG
x840006_g_XinfaList[3] = {13,14,15,16,17,18,57,74}
x840006_g_XinfaList[4] = {19,20,21,22,23,24,58,75}
x840006_g_XinfaList[5] = {25,26,27,28,29,30,59,76}
x840006_g_XinfaList[6] = {31,32,33,34,35,36,60,77}
x840006_g_XinfaList[7] = {37,38,39,40,41,42,61,78}
x840006_g_XinfaList[8] = {43,44,45,46,47,48,62,79}
x840006_g_XinfaList[9] = {49,50,51,52,53,54,63,80}
x840006_g_XinfaList[10] = {64,65,66,67,68,69,70,71}
x840006_g_TableSX = {8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56}
-- VÐ--Bát Quái Chß·ng
x840006_g_ImpactIn = {}	--obj =1: tác døng bän thân, 2: tác døng møc tiêu
				-- type = 1: Impact thay ð±i khi lvl tp thay ð±i, =2: impact ko b¸ änh hß·ng b¾i lvl tp, =3: xác su¤t trúng,impact ko änh hß·ng,=4: xác xu¤t trúng,impact có änh hß·ng
x840006_g_ImpactIn[26091] = {supportId = 1950, antiId = -1, xinfaId = 1, book = 1, obj=2, type = 1, impactOut = {26092,201,202,203,204,205,206,207,208,209,210,211,212,15001,15002,15003,15004,26093,26094,26095.26096,26097,26098,26099,26100}}-- Phøc H± Quy«n
x840006_g_ImpactIn[26101] = {supportId = 1951, antiId = 1955, xinfaId = 2, book = 1, obj=2,  type = 1, impactOut = {26102,226,227,228,229,230,231,232,233,234,235,236,237,15031,15032,15033,15034,26103,26104,26105,26106,26107,26108,26109,26110}}-- ÐÕi Lñc Kim Cang Chß·ng
x840006_g_ImpactIn[26111] = {supportId = 1952, antiId = 1956, xinfaId = 3, book = 1, obj=1,  type = 1, impactOut = {26112,298,299,300,301,302,303,304,305,306,307,308,309,15091,15092,15093,15094,26113,26114,26115,26116,26117,26118,26119,26120}}-- L­ Kính Nhß Lai	-- My
x840006_g_ImpactIn[26121] = {supportId = 1953, antiId = 1957, xinfaId = 1, book = 1, obj=2,  type = 2, impactOut = {442,443,444,445,445,445,446,446,446,447,447,447,448,448,448,449,449,449,450,450,450,451,451,451,452}}-- Kim Cang Phøc Ma Khuyên	-- giæ nguyên khi tång lv
x840006_g_ImpactIn[26122] = {supportId = 1954, antiId = 1958, xinfaId = 5, book = 1, obj=2,  type = 3, impactOut = {381,381,381,381,381,381,381,381,381,381,381,381,381,381,381,381,381,381,381,381381,381,381,381,381}}-- Nh¤t Phách LßÞng Tán Phong

x840006_g_ImpactIn[26101] = {supportId = 1951, antiId = 1955, xinfaId = 2, book = 1, impactOut = {}}-- Phøc H± Quy«n
x840006_g_ImpactIn[26101] = {supportId = 1951, antiId = 1955, xinfaId = 2, book = 1, impactOut = {}}-- Phøc H± Quy«n
x840006_g_ImpactIn[26101] = {supportId = 1951, antiId = 1955, xinfaId = 2, book = 1, impactOut = {}}-- Phøc H± Quy«n

x840006_g_ImpactIn[26106] = {supportId = 1977, antiId = -1, xinfaId = 19, book = 1, impactOut = {33236,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,15841,15842,15843.15844,33237,33238,33239,33240,33241,33242,33243,33244}}-- Bát Quái Chß·ng


function x840006_OnImpactFadeOut( sceneId, selfId, impactId )
	if GetHp( sceneId, selfId ) == 0 then
		return
	end	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	local book1,book2=0,0
	--if selfId == targetId then return end
	local mpSelf = GetMenPai(sceneId,selfId)
	local mpTarget = GetMenPai(sceneId,targetId)
	local nImpactId = x840006_g_ImpactIn[impactId]
	--x840006_Tips(sceneId, selfId,"Tesst"..impactId)
	local xfLv = floor(x840006_CheckXinfaLv(sceneId,selfId, nImpactId.xinfaId)/10)		-- Check lvl tp cüa bän thân
	if HaveSkill( sceneId, selfId, nImpactId.supportId ) == 1 then			-- Nªu có skill h² trþ thì ki¬m tra ði¬m tu luy®n
		book1 = floor(x840006_CheckXiulian(sceneId,selfId,nImpactId.book)/10)			-- Check lvl tl cüa bän thân
	end
	if selfId ~= targetId then
		if nImpactId.antiId ~= -1 then
			if HaveSkill( sceneId, targetId, nImpactId.antiId ) == 1 then	-- Nªu ð¯i phß½ng có skill anti thì ki¬m tra ði¬m tu luy®n
				book2 = floor(x840006_CheckXiulian(sceneId,targetId,nImpactId.book )/10)
			end
		end
	end
	local impactLevel = xfLv+book1-book2+3
	if impactLevel <= 0 then
		impactLevel = 1
	elseif impactLevel > 25 then
		impactLevel = 25
	end
	local Xacsuat = 100
	if nImpactId.type == 2 and book1 == 0 then -- Nªu g£p impact ko b¸ änh hß·ng cüa tp và bän thân không có support
		impactLevel =	5-book2	-- V¸ trí thÑ 5 ghim impact chu¦n cüa skill ko b¸ änh hß·ng cüa support, anti và tp
	end
	
	if nImpactId.type == 3 then	-- Nªu g£p TH skill xác su¤t
		if random(1,100) > x840006_g_TableSX[impactLevel] then
			Xacsuat == 0
		else
			Xacsuat == 100
		end
	end

	if Xacsuat == 100 then
		if nImpactId.obj == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, nImpactId.impactOut[impactLevel], 0 )
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, nImpactId.impactOut[impactLevel], 0 )
		end
	end
end

function x840006_CheckXinfaLv(sceneId,nselfId, xfId)
	local XinfaLevel = LuaFnGetXinFaLevel(sceneId, nselfId, xfId)
	return XinfaLevel	--Trä lÕi  lvl cüa tp
end
function x840006_CheckXiulian(sceneId,nselfId,book)
	local Info_Skill2 ={}
	local Skill2 ={}
	Info_Skill2[1] = GetMissionData(sceneId,nselfId,MD_XL2_SKILL1)
	Info_Skill2[2] = GetMissionData(sceneId,nselfId,MD_XL2_SKILL2)
	Info_Skill2[3] = GetMissionData(sceneId,nselfId,MD_XL2_SKILL3)
	Info_Skill2[4] = GetMissionData(sceneId,nselfId,MD_XL2_SKILL4)
	for i=1,4 do
		Skill2[i] = mod(Info_Skill2[i],1000)
	end
	if book==1 then
		return Skill2[1]
	elseif book==2 then
		return Skill2[2]
	elseif book==3 then
		return Skill2[3]
	elseif book==4 then
		return Skill2[4]
	else	return -1
	end	-- Trä chï s¯ TL cüa 4 quy¬n
end

function x840006_Tips(sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end