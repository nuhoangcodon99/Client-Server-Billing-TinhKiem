-- 300052 
-- 大洗髓丹
-- 使用之后可以将所有的已分配点数变为潜能。


-- 脚本号
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- 药水ID

--**********************************
-- 事件交互入口
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
	-- 吃药洗点
	if GetNumText() == 1  then
		-- 检测这个人是不是有点可以洗。
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
					AddText(sceneId, "#Y姓i T T鼀 衋n")
					AddText(sceneId, "  C醕 h� mang #Yt c� thu礳 t韓h 疸 ph鈔 ph痠#W bi猲 th鄋h 餴琺 d� ti玬 n錸g.")
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
			--	AddText(sceneId, "#Y姓i T T鼀 衋n")
			--	AddText(sceneId, "  T c� thu礳 t韓h 皤u 疸 kh鬾g c騨 餴琺 ph鈔 ph痠 d�, kh鬾g th� ti猲 h鄋h ch飊h 餴琺.")
			--EndEvent(sceneId)
			--DispatchEventList(sceneId,selfId,-1)

		--end
		return
	end
	
	-- 放弃了吃药
	if GetNumText() == 2  then
		-- 关闭界面
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
