--Thiªu Th¤t S½n
--Mµ Dung Bác (Back)
--Author: Hoàng Steven

--******************--



x910158_Item_ttpx ={
50131001, --Bång Lam Lßu Vân (C¤p 1)
50131002,--TØ Vi Tinh Quang (C¤p 1)
50131003,--Thuý Ng÷c Tinh Tr¥n (C¤p 1)
50131004,--Tranh Änh Nhß Mµng (C¤p 1)
50131005,--Hoa LÕc H°ng Tr¥n (C¤p 1)
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
}

x910158_Item_ttpx_vip ={

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù

30010080, --Chân Nguyên Phách
30010081, --Chân Nguyên Tinh Phách
}
x910158_Item_ttpx_vip_rate = 60 -- ty le rot x910158_Item_ttpx_vip



--******************--

--******************--
x910158_g_ScriptId=910158
--******************--
x910158_g_Boss_Name="Mµ Dung Bác"																--Tên cüa BOSS
--******************--
x910158_g_Skill_Index=
{
	1333,																						--KÛ nång Tînh Änh Tr¥m Bích
	1334,																						--KÛ nång Höa Di®m Liên Hoàn Kích
	1335,																						--KÛ nång L­ Kính Nhß Lai
	1336,																						--KÛ nång Hu Thi Ðµc Công
}
x910158_g_Skill_CD=20000																		--Th¶i gian lãnh khß¾c Höa Di®m Ðao
--******************--
x910158_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x910158_g_Skill_Timer=1																			--Th¶i gian kÛ nång
--******************--
x910158_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]=x910158_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Ta cûng ðã tr¯n trong Thiªu Lâm Tñ r¤t lâu r°i!",
	[3]="Ðã giªt chªt "..x910158_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910158_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Tàng Kinh Các","Chúng ta cÑ ðánh lµn nhau thª này chï dçn ðªn công lñc cÕn ki®t mà táng mÕng, chi b¢ng hãy cùng nhau hþp lñc ðánh bÕi kë ð¸ch ði ðã Tiêu huynh.")
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910158_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910158_g_AttackMode)==0 then
		return
	end
	--******************--
	x910158_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910158_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910158_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_AttackMode,1)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,9798,0)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,9799,0)
	SetHp(sceneId,selfId,floor(GetMaxHp(sceneId,selfId)/2))
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910158_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910158_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910158_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910158_OnDie(sceneId,selfId,killerId)

	--******************--
	local Player_Name=GetName(sceneId,killerId)
	--******************--
	if Player_Name~=nil then
		str=format("#{_INFOUSR%s}#R dçn d¡t ðµi ngû bäo v® #GThiªu Th¤t S½n#R quyªt chiªn ác li®t sinh tØ cùng #YMµ Dung Bác#R. Ác t£c #YÐinh Xuân Thu#R ðã ðÕi bÕi, #GMµ Dung Bác#R cûng ðã quy hàng, #GThiªu Lâm Tñ#R vßþt qua kiªp nÕn này là nh¶ các v¸. Xin ðµi ½n các v¸!", Player_Name)
		AddGlobalCountNews(sceneId,str)
	end
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)=="Täo Ð¸a Th¥n Tång" then
			MonsterTalk(sceneId,MonsterId,"Thiªu Th¤t S½n","A di ðà ph§t! Thi®n tai, thi®n tai. Ác giä ác báo. Chi b¢ng hãy v« v¾i cõi ph§t t× bi, m÷i oan nghi®t s¨ ðßþc ðÑc ph§t hóa giäi. A di ðà ph§t...")
			break
		end
	end
	--******************--
	local nFound=0
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)=="Tiêu Vi­n S½n" then
			nFound=1
			break
		end
	end
	--******************--
	if nFound==0 then
		LuaFnSetCopySceneData_Param(sceneId,8,9)
	end
	--******************--
	x910158_GlobalNews(sceneId,"Ðã ðánh bÕi Mµ Dung Bác!")
	--******************--
	local TeammateCount = GetNearTeamCount(sceneId,killerId)
	for i=0,TeammateCount-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910158_Item_ttpx[random(getn(x910158_Item_ttpx))])
		local ran = random(100)
		if ran < x910158_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910158_Item_ttpx_vip[random(getn(x910158_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+50)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 50 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910158_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer,x910158_g_Skill_CD)		--Th¶i gian kÛ nång
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910158_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910158_g_Skill_Index[random(getn(x910158_g_Skill_Index))],x,y,0,1)--Boss sØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer,x910158_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910158_GlobalNews(sceneId,Tips)

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
