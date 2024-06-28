--Thiªu Th¤t S½n
--Tiêu Vi­n S½n
--Author: Hoàng Steven

--******************--
x910168_g_ScriptId=910168
--******************--
x910168_g_Boss_Name="Tiêu Vi­n S½n"																--Tên cüa BOSS
--******************--
x910168_g_Skill_Index=1332																		--KÛ nång Th¥n Ð¸a Chi Höa
x910168_g_Skill_CD=20000																		--Th¶i gian lãnh khß¾c Höa Di®m Ðao
--******************--
x910168_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x910168_g_Skill_Timer=1																			--Th¶i gian kÛ nång
--******************--
x910168_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]=x910168_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Ta tr¯n trong Thiªu Lâm Tñ cûng ðã r¤t lâu r°i!",
	[3]="Ðã giªt chªt "..x910168_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910168_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910168_g_Monster_Dialogue[2])								--Câu nói khai chiªn cüa Boss
	x910168_GlobalNews(sceneId,x910168_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910168_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910168_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910168_g_AttackMode)==0 then
		return
	end
	--******************--
	x910168_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.5 then
		LuaFnSetCopySceneData_Param(sceneId,8,7)												--C§p nh§t thao tác trên phø bän
		LuaFnDeleteMonster(sceneId,selfId)
	end
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910168_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910168_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910168_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910168_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910168_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910168_OnDie(sceneId,selfId,killerId)

	--******************--
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910168_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer,x910168_g_Skill_CD)		--Th¶i gian kÛ nång
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910168_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910168_g_Skill_Index,x,y,0,1)							--Boss sØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer,x910168_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910168_GlobalNews(sceneId,Tips)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,Tips)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end