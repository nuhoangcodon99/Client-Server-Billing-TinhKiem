-- 300052 
-- ´óÏ´Ëèµ¤
-- Ê¹ÓÃÖ®ºó¿ÉÒÔ½«ËùÓÐµÄÒÑ·ÖÅäµãÊý±äÎªÇ±ÄÜ¡£


-- ½Å±¾ºÅ
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- Ò©Ë®ID

--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
MF_TAYDIEM =75

function x300052_OnDefaultEvent( sceneId, selfId )
	local Info_Skill1 ={}
	local Skill1 ={}
	local Skill1_Max = {}
	Info_Skill1[1] = GetMissionData(sceneId,selfId,MD_XL1_SKILL1) -- save thong tin item
	Info_Skill1[2] = GetMissionData(sceneId,selfId,MD_XL1_SKILL2) -- save thong tin item
	Info_Skill1[3] = GetMissionData(sceneId,selfId,MD_XL1_SKILL3) -- save thong tin item
	Info_Skill1[4] = GetMissionData(sceneId,selfId,MD_XL1_SKILL4) -- save thong tin item
	Info_Skill1[5] = GetMissionData(sceneId,selfId,MD_XL1_SKILL5) -- save thong tin item
	for i=1,5 do
		Skill1[i] = mod(Info_Skill1[i],1000)
	end
	for i=1,5 do
		if Skill1[i] <= 30 then
			Skill1[i] = Skill1[i]
		elseif Skill1[i] <=60 then
			Skill1[i] = 30+(Skill1[i]-30)*2
		elseif Skill1[i] <= 120 then
			if i == 3 then
				Skill1[i] = 30+60+(Skill1[i]-60)*2
			else 
				Skill1[i] = 30+60+(Skill1[i]-60)*3
			end
		end
	end
	-- ³ÔÒ©Ï´µã
	if GetNumText() == 1  then
		-- ¼ì²âÕâ¸öÈËÊÇ²»ÊÇÓÐµã¿ÉÒÔÏ´¡£
		local bCan = LuaFnIsCanWashPiont(sceneId, selfId, 5)
		
		--if bCan == 1  then --disable check 16/10/2013
			local ret = DelItem(sceneId, selfId, x300052_g_ItemId, 1)
			if ret == 1  then
				LuaFnWashPoints(sceneId, selfId)
				local RemainPoint = GetPlayerRemainPoints(sceneId, selfId)
				SetPlayerRemainPoints(sceneId, selfId, RemainPoint+Skill1[1]+Skill1[2]+Skill1[3]+Skill1[4]+Skill1[5])
				if GetMissionFlag(sceneId,selfId, MF_TAYDIEM) == 0 then
					SetMissionFlag(sceneId,selfId, MF_TAYDIEM, 1) --active check tay diem de tu luyen
				end
				BeginEvent(sceneId)
					AddText(sceneId, "#YÐÕi T¦y Tüy Ðan")
					AddText(sceneId, "  Các hÕ mang #Yt¤t cä thuµc tính ðã phân ph¯i#W biªn thành ði¬m dß ti«m nång.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,-1)
				BeginUICommand( sceneId )
					for i=1,5 do
						UICommand_AddInt( sceneId, Skill1[i] )
					end
				EndUICommand( sceneId )
				DispatchUICommand( sceneId, selfId, 11223347 )
			end

		--else
			--BeginEvent(sceneId)
			--	AddText(sceneId, "#YÐÕi T¦y Tüy Ðan")
			--	AddText(sceneId, "  T¤t cä thuµc tính ð«u ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			--EndEvent(sceneId)
			--DispatchEventList(sceneId,selfId,-1)

		--end
		return
	end
	
	-- ·ÅÆúÁË³ÔÒ©
	if GetNumText() == 2  then
		-- ¹Ø±Õ½çÃæ
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
end

--**********************************
-- 
--**********************************
function x300052_IsSkillLikeScript( sceneId, selfId)
	return 0
end
