--½Å±¾ºÅ
x808238_g_scriptId = 808238

XinfaList = {}
XinfaList[1] = {1,2,3,4,5,6,55,72}	-- tp Thiªu lâm
XinfaList[2] = {7,8,9,10,11,12,56,73}	-- tp MG
XinfaList[3] = {13,14,15,16,17,18,57,74}
XinfaList[4] = {19,20,21,22,23,24,58,75}
XinfaList[5] = {25,26,27,28,29,30,59,76}
XinfaList[6] = {31,32,33,34,35,36,60,77}
XinfaList[7] = {37,38,39,40,41,42,61,78}
XinfaList[8] = {43,44,45,46,47,48,62,79}
XinfaList[9] = {49,50,51,52,53,54,63,80}
XinfaList[10] = {64,65,66,67,68,69,70,71}
ImpactList = {}
-- TL
ImpactList[5401] = {5421, 5422, 5423, 5424, 5425, 5426, 5427, 5428, 5429, 5430, 5431, 5432, 5432, 5432, 5432, 5432}
ImpactList[5402] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}	--Skill kh¯ng chª Thiªu Lâm
--MG
ImpactList[5403] = {5421, 5422, 5423, 5424, 5425, 5426, 5427, 5428, 5429, 5430, 5431, 5432, 5432, 5432, 5432, 5432}
ImpactList[5404] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--CB
ImpactList[5405] = {5421, 5422, 5423, 5424, 5425, 5426, 5427, 5428, 5429, 5430, 5431, 5432, 5432, 5432, 5432, 5432}
ImpactList[5406] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--VÐ
ImpactList[5407] = {5433, 5434, 5435, 5436, 5437, 5438, 5439, 5440, 5441, 5442, 5443, 5444, 5444, 5444, 5444, 5444}
ImpactList[5408] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--NM
ImpactList[5409] = {5433, 5434, 5435, 5436, 5437, 5438, 5439, 5440, 5441, 5442, 5443, 5444, 5444, 5444, 5444, 5444}
ImpactList[5410] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--TT
ImpactList[5411] = {5433, 5434, 5435, 5436, 5437, 5438, 5439, 5440, 5441, 5442, 5443, 5444, 5444, 5444, 5444, 5444}
ImpactList[5412] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--TL
ImpactList[5413] = {5457, 5458, 5459, 5460, 5461, 5462, 5463, 5464, 5465, 5466, 5467, 5468, 5468, 5468, 5468, 5468}
ImpactList[5414] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--TS
ImpactList[5415] = {5421, 5422, 5423, 5424, 5425, 5426, 5427, 5428, 5429, 5430, 5431, 5432, 5432, 5432, 5432, 5432}
ImpactList[5416] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}
--TD
ImpactList[5417] = {5433, 5434, 5435, 5436, 5437, 5438, 5439, 5440, 5441, 5442, 5443, 5444, 5444, 5444, 5444, 5444}
ImpactList[5418] = {5445, 5446, 5447, 5448, 5449, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5456, 5456, 5456, 5456}

function x808238_OnImpactFadeOut( sceneId, selfId, impactId )
	if GetHp( sceneId, selfId ) == 0 then
		return
	end	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if selfId == targetId then return end
	local mpSelf = GetMenPai(sceneId,selfId)
	local mpTarget = GetMenPai(sceneId,targetId)
	local nImpactId = ImpactList[impactId]
	--x808238_Tips(sceneId, selfId,"Tesst"..impactId)
	local SumSelfXf, SelfXf = x808238_CheckXinfa(sceneId,selfId, mpSelf)		-- Check lvl tp cüa bän thân
	local SumSelfXl, SelfXl = x808238_CheckXiulian(sceneId,selfId)			-- Check lvl tl cüa bän thân
	local LvlSkill = floor(SelfXf/10)
	if mpTarget ~=-1 then
		local SumTargetXf, TargetXf = x808238_CheckXinfa(sceneId,targetId, mpTarget)	-- Check lvl tp cüa ð¯i phß½ng
		local SumTargetXl, TargetXl = x808238_CheckXiulian(sceneId,targetId)		-- Check lvl tl cüa ð¯i phß½ng
		LvlSkill = floor((floor((SelfXf+SelfXl-TargetXf-TargetXl)/10) + 24)/4)			-- Tính s¯ lvl cüa skill	 --Cµng tr× lvl cüa bän thân và ð¯i phß½ng và chia 10 l¤y sô nguyên
																--+24: ð¦y ðoÕn kªt quä lên 1 khoäng 24, tránh trß¶ng hþp kªt quä t±ng trên b¸ âm=> khoäng dao ðµng t× 0-48
																--/4: l¤y ra lvl cüa skill c¥n sØ døng (0-48)/4=(0-12)
	end
	if LvlSkill == 0 then
		LvlSkill = 1
	elseif LvlSkill > 16 then
		LvlSkill = 16
	end
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, nImpactId[LvlSkill], 0 )
end

function x808238_CheckXinfa(sceneId,nselfId, mp)
	if nselfId == -1 or mp == -1 then
		return 0,0
	end
	local XinfaList_MP = XinfaList[mp+1]
	local XinfaLevel = 0
	for i=1,8 do
		XinfaLevel = LuaFnGetXinFaLevel(sceneId, nselfId, XinfaList_MP[i])+XinfaLevel
	end
	XinfaLevel8 = LuaFnGetXinFaLevel(sceneId, nselfId, XinfaList_MP[8])
	return XinfaLevel, XinfaLevel8	--Trä lÕi t±ng lvl cüa 8 cu¯n tp và lvl cu¯n tp 8
end
function x808238_CheckXiulian(sceneId,nselfId)
	local Info_Skill1 ={}
	local Skill1 ={}
	Info_Skill1[1] = GetMissionData(sceneId,nselfId,MD_XL1_SKILL1)
	Info_Skill1[2] = GetMissionData(sceneId,nselfId,MD_XL1_SKILL2)
	Info_Skill1[3] = GetMissionData(sceneId,nselfId,MD_XL1_SKILL3)
	Info_Skill1[4] = GetMissionData(sceneId,nselfId,MD_XL1_SKILL4)
	Info_Skill1[5] = GetMissionData(sceneId,nselfId,MD_XL1_SKILL5)
	for i=1,5 do
		Skill1[i] = mod(Info_Skill1[i],1000)
	end
	local SumXiulian = (Skill1[1]+Skill1[2]+Skill1[3]+Skill1[4]+Skill1[5])
	local TBXiulian = floor(SumXiulian/5)
	return SumXiulian,TBXiulian	-- Trä lÕi t±ng lvl cüa tu luy®n và ði¬m TB cüa TL
end


function x808238_Tips(sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end