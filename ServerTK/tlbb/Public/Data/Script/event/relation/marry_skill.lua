--·òÆÞ¼¼ÄÜH÷c 

--½Å±¾ºÅ
x806016_g_ScriptId		= 806016


--Tâm ð¥u ý hþp¼¼ÄÜ±í....
x806016_g_skillList_XXXY = {

	{id=260, name="Tâm ð¥u ý hþp(c¤p 1)", firendPt=1000, lvM=0, lvF=0, exp=0, money=0},
	{id=261, name="Tâm ð¥u ý hþp(c¤p 2)", firendPt=2000, lvM=0, lvF=0, exp=0, money=442},
	{id=262, name="Tâm ð¥u ý hþp(c¤p 3)", firendPt=3000, lvM=0, lvF=0, exp=0, money=967},
	{id=263, name="Tâm ð¥u ý hþp(c¤p 4)", firendPt=4000, lvM=0, lvF=0, exp=0, money=1800},
	{id=264, name="Tâm ð¥u ý hþp(c¤p 5)", firendPt=5000, lvM=0, lvF=0, exp=0, money=3009},
	{id=265, name="Tâm ð¥u ý hþp(c¤p 6)", firendPt=6000, lvM=0, lvF=0, exp=0, money=4660},
	{id=266, name="Tâm ð¥u ý hþp(c¤p 7)", firendPt=7000, lvM=0, lvF=0, exp=0, money=6825},
	{id=267, name="Tâm ð¥u ý hþp(c¤p 8)", firendPt=8000, lvM=0, lvF=0, exp=0, money=13322},
	{id=268, name="Tâm ð¥u ý hþp(c¤p 9)", firendPt=9000, lvM=0, lvF=0, exp=0, money=23449}

};

--Ð°ng khí liên chi¼¼ÄÜ±í....
x806016_g_skillList_TQLZ = {

	{id=250, name="Ð°ng khí liên chi(c¤p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=251, name="Ð°ng khí liên chi(c¤p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=252, name="Ð°ng khí liên chi(c¤p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=253, name="Ð°ng khí liên chi(c¤p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=254, name="Ð°ng khí liên chi(c¤p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--Thiên trß¶ng ð¸a cØu¼¼ÄÜ±í....
x806016_g_skillList_TCDJ = {

	{id=255, name="Thiên trß¶ng ð¸a cØu(c¤p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=256, name="Thiên trß¶ng ð¸a cØu(c¤p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=257, name="Thiên trß¶ng ð¸a cØu(c¤p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=258, name="Thiên trß¶ng ð¸a cØu(c¤p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=259, name="Thiên trß¶ng ð¸a cØu(c¤p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--Hình änh b¤t ly¼¼ÄÜ±í....
x806016_g_skillList_XYBL = {

	{id=269, name="Hình änh b¤t ly(c¤p 1", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=270, name="Hình änh b¤t ly(c¤p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=271, name="Hình änh b¤t ly(c¤p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=272, name="Hình änh b¤t ly(c¤p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=273, name="Hình änh b¤t ly(c¤p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--Hình änh b¤t ly1¼¶¶ÔÓ¦µÄ¼¼ÄÜID
x806016_g_xybl_SkillID = 269
--H÷c Hình änh b¤t ly1¼¶ÐèÒªµÄÎïÆ·ID
x806016_g_xybl_ItemID = 30308059

--ÐèÒªÊÀ½ç¹«¸æµÄ¼¼ÄÜ±àºÅ±í
x806016_g_MaxMarrySkill_T = {268,253,254,258,259,272,273};

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806016_OnDefaultEvent(sceneId, selfId, targetId)

	local selectEventId	= GetNumText();

	if selectEventId == 0 then
		BeginEvent(sceneId);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c Tâm ð¥u ý hþp", 12, 11);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c Ð°ng khí liên chi", 12, 12);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c Thiên trß¶ng ð¸a cØu", 12, 13);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c Hình änh b¤t ly", 12, 14);
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);

	elseif selectEventId == 11 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XXXY );
		if ret > 0 then
			local skill = x806016_g_skillList_XXXY[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, " #cE07D4ETâm Tâm Tß½ng „n#rTrÕng thái gia tång th¬ lñc #r#c5BC257KÛ nång phu thê chï có th¬ sØ døng ðßþc v¾i tình nhân");
				if skill.money > 0 then
					AddText(sceneId, "  Ngß¶i nam c¥n có #{_MONEY"..skill.money.."} ð¬ h÷c "..skill.name..".");
				end
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Nâng c¤p kÛ nång", 12, 21);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "KÛ nång h÷c t§p", 12, 21);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 12 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TQLZ );
		if ret > 0 then
			local skill = x806016_g_skillList_TQLZ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  #cE07D4EÐ°ng Khí Liên KÛ #YÐ½n th¬ tr¸ li®u h°i phøc Huyªt cho møc tiêu#r#c5BC257KÛ nång phu thê chï có th¬ sØ døng ðßþc v¾i tình nhân ");
				AddText(sceneId, "  H÷c "..skill.name..", ngß¶i nam c¥n có "..skill.exp.." ði¬m kinh nghi®m và #{_MONEY"..skill.money.."}.");
				AddText(sceneId, "  Phu thuê c¥n có #G"..skill.firendPt.."#W ði¬m häo hæu, #rngß¶i nam c¥n ðÕt c¤p "..skill.lvM.." #rngß¶i næ c¥n c¤p ðµ "..skill.lvF.." c¤p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Nâng c¤p kÛ nång", 12, 22);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "KÛ nång h÷c t§p", 12, 22);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 13 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TCDJ );
		if ret > 0 then
			local skill = x806016_g_skillList_TCDJ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  #cE07D4EThiên Trß¶ng Ð¸a CØu #rH°i sinh 1 møc tiêu, giúp phøc h°i lßþng Huyªt và khí cüa møc tiêu ðó#r#c5BC257KÛ nång phu thê chï có th¬ sØ døng ðßþc v¾i tình nhân");
				AddText(sceneId, "  H÷c "..skill.name.." ngß¶i nam c¥n có "..skill.exp.."ði¬m kinh nghi®m và #{_MONEY"..skill.money.."}.");
				AddText(sceneId, "  Phu thê c¥n có #G"..skill.firendPt.."#W ði¬m häo hæu, #r ngß¶i nam c¥n ðÕt c¤p "..skill.lvM.."#rngß¶i næ c¥n ðÕt c¤p "..skill.lvF.." c¤p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Nâng c¤p kÛ nång", 12, 23);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "KÛ nång h÷c t§p", 12, 23);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 14 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XYBL );
		if ret > 0 then
			local skill = x806016_g_skillList_XYBL[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, " #cE07D4EHình Änh B¤t Ly #rTrong th¶i gian ng¡n d¸ch chuy¬n ðªn ð¸a ði¬m cüa tình nhân mình, c¥n ðôi phu thê ðó phäi cùng mµt khu vñc#r#c5BC257KÛ nång phu thê chï có th¬ sØ døng ðßþc v¾i tình nhân");
				if skill.id == x806016_g_xybl_SkillID then
					AddText(sceneId, "  H÷c "..skill.name.." ngß¶i nam c¥n có #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W.");
				else
					AddText(sceneId, "  H÷c "..skill.name.." ngß¶i nam c¥n có "..skill.exp.."ði¬m kinh nghi®m và #{_MONEY"..skill.money.."}.");
				end
				AddText(sceneId, "  Phu thê c¥n có #G"..skill.firendPt.."#W ði¬m häo hæu, #rngß¶i nam c¥n ðÕt c¤p "..skill.lvM.." #rngß¶i næ c¥n ðÕt c¤p "..skill.lvF.." c¤p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Nâng c¤p kÛ nång", 12, 24);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "KÛ nång h÷c t§p", 12, 24);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 21 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_XXXY)

	elseif selectEventId == 22 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_TQLZ)

	elseif selectEventId == 23 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_TCDJ)

	elseif selectEventId == 24 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_XYBL)

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806016_OnEnumerate(sceneId, selfId, targetId)
	local isMarried = LuaFnIsMarried(sceneId, selfId);
	if isMarried and isMarried > 0 then
		AddNumText(sceneId, x806016_g_ScriptId, "KÛ nång phu thê", 12, 0);
	end
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔH÷c Ä³Ïî·òÆÞ¼¼ÄÜ....
--**********************************
function x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList )

	--Ç°ÌáÌõ¼þ
	local szMsg = "Nªu mu¯n h÷c kÛ nång phu thê, hãy l§p t± ðµi ðªn g£p ta !"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Chï ðßþc t± ðµi v¾i phu thê, không t± ðµi v¾i ngß¶i khác."
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Chï có hai ngß¶i ðßþc h÷c t§p kÛ nång."
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Chï là vþ ch°ng m¾i có th¬ h÷c t§p kÛ nång"
	local maleId = -1;
	local femaleId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
	end
	
	if maleId == -1 or femaleId == -1 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "L²i nµi bµ, k¸ch bän không th¬ chÕy ðúng"
	if LuaFnIsCanDoScriptLogic(sceneId, maleId) ~= 1 then
		return 0;
	end
	if LuaFnIsCanDoScriptLogic(sceneId, femaleId) ~= 1 then
		return 0;
	end
	
	szMsg = "Cä hai vþ ch°ng ðã cùng ngß¶i khác h÷c t§p kÛ nång"
	local maleIsFirend, femaleIsFirend;
	maleIsFirend = LuaFnIsFriend(sceneId, maleId, femaleId);
	femaleIsFirend = LuaFnIsFriend(sceneId, femaleId, maleId);
	if maleIsFirend and maleIsFirend == 1 and femaleIsFirend and femaleIsFirend == 1 then
	else
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	local maleSkillLevel, femaleSkillLevel;
	maleSkillLevel = -1;
	femaleSkillLevel = -1;

	local skill, skillLevel;
	skillLevel = 0;
	--¼ì²éÍæ¼ÒµÄ·òÆÞ¼¼ÄÜÒÑ¾­Ñ§µ½¼¸¼¶
	for _, skill in SkillList do
		local maleHaveSkill = HaveSkill(sceneId, maleId, skill.id);
		if maleHaveSkill and maleHaveSkill > 0 then
			maleSkillLevel = skillLevel;
		end
		
		local femaleHaveSkill = HaveSkill(sceneId, femaleId, skill.id);
		if femaleHaveSkill and femaleHaveSkill > 0 then
			femaleSkillLevel = skillLevel;
		end
		skillLevel  =skillLevel + 1;
	end
	
	local maxSkillLevel = skillLevel - 1;
	
	szMsg = "KÛ nång dÕt c¤p cao nh¤t, không th¬ nâng c¤p tiªp."
	if maleSkillLevel >= maxSkillLevel then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	nextLevel = femaleSkillLevel+1;

	return 1, nextLevel, maleId, femaleId;

end

--**********************************
--KÛ nång h÷c t§p
--**********************************
function x806016_StudySkill(sceneId, selfId, targetId, SkillList)

	--¼ì²â»ù±¾Ìõ¼þ....
	local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList );
	if ret == 0 then
		return
	end

	local skill = SkillList[nextLevel+1];

	szMsg = "Ðµ häo hæu c¥n ðÕt %d ði¬m ð¬ tång c¤p ðµ tiªp theo."
	local maleFirendPt, femaleFirendPt, needFirendPt;
	maleFirendPt =  LuaFnGetFriendPoint(sceneId, maleId, femaleId);
	femaleFirendPt =  LuaFnGetFriendPoint(sceneId, femaleId, maleId);
	needFirendPt = skill.firendPt;
	if maleFirendPt >= needFirendPt and femaleFirendPt >= needFirendPt then
	else
		szMsg = format(szMsg, needFirendPt);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Ngß¶i nam c¥n ðÕt c¤p %d ð¬ có th¬ h÷c t§p kÛ nång."
	if GetLevel( sceneId, maleId ) < skill.lvM then
		szMsg = format(szMsg, skill.lvM);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Ngß¶i næ c¥n ðÕt c¤p %d ð¬ có th¬ h÷c kÛ nång."
	if GetLevel( sceneId, femaleId ) < skill.lvF then
		szMsg = format(szMsg, skill.lvF);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end
	
	if skill.id == x806016_g_xybl_SkillID then
		if HaveItemInBag(sceneId,maleId,x806016_g_xybl_ItemID)<0 then
			x806016_MessageBox(sceneId, selfId, targetId, "Ngß¶i nam c¥n có #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W ð¬ có th¬ h÷c kÛ nång.");
			return
		end
		if LuaFnGetAvailableItemCount(sceneId,maleId,x806016_g_xybl_ItemID)<=0 then
			x806016_MessageBox(sceneId, selfId, targetId, "Càn m· khóa v§t ph¦m #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W m¾i có th¬ h÷c.");
			return
		end
		--¿Û³ýÎïÆ·
		LuaFnDelAvailableItem(sceneId,maleId,x806016_g_xybl_ItemID,1)
	else
		szMsg = "Ngß¶i nam c¥n có %d ði¬m kinh nghi®m ð¬ h÷c kÛ nång."
		if GetExp(sceneId, maleId) < skill.exp then
			szMsg = format(szMsg, skill.exp);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		szMsg = "Ngß¶i c¥n có #{_MONEY%d} ngân lßþng ð¬ h÷c kÛ nång"
		local maleMoney, needMoney;
		maleMoney = LuaFnGetMoney(sceneId, maleId);
		needMoney = skill.money;
		
		if maleMoney and maleMoney+GetMoneyJZ(sceneId, maleId) >= needMoney then
		else
			szMsg = format(szMsg, needMoney);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		--¿Û³ýÄÐ·½ÉíÉÏ½ðÇ®....
		LuaFnCostMoneyWithPriority(sceneId, maleId, needMoney);
		
		--¿Û³ýÄÐ·½Éí¾­Ñé....
		if skill.exp > 0 then
			LuaFnAddExp( sceneId, maleId, -skill.exp );
		end
	end

	--Ôö¼ÓÒ»¸ö·òÆÞ¼¼ÄÜ¸øË«·½
	x806016_MyAddSkill(sceneId, maleId, SkillList, nextLevel);
	x806016_MyAddSkill( sceneId, femaleId, SkillList, nextLevel);
	x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	--Ìí¼ÓÍ³¼ÆÐÅÏ¢
	x806016_LogCoupleAction(sceneId,maleId,femaleId,SkillList, nextLevel)
	
	--³É¹¦H÷c ºó¹Ø±Õ¶Ô»°´°¿Ú....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	
	return

end

--**********************************
--Ìí¼ÓÒ»Ïî·òÆÞ¼¼ÄÜ
--**********************************
function x806016_MyAddSkill(sceneId, selfId, SkillList, nextLevel)

	--É¾³ý·òÆÞ¼¼ÄÜ
	local tempSkill;
	for _, tempSkill in SkillList do
		local haveSkill = HaveSkill(sceneId, selfId, tempSkill.id);
		if haveSkill and haveSkill > 0 then
			DelSkill(sceneId, selfId, tempSkill.id);
		end
	end

	local skill = SkillList[nextLevel+1];

	AddSkill(sceneId, selfId, skill.id);
	--Msg2Player( sceneId, selfId, "ÄãÑ§»áÁË"..skill.name.."¡£", MSG2PLAYER_PARA )
	
	--BeginEvent(sceneId)
		--AddText(sceneId, "ÄãÑ§»áÁË"..skill.name.."¡£");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)
	
	if skill.id == x806016_g_xybl_SkillID then
		x806016_SendSkillMsg_XYBL(sceneId,selfId,skill.name)
	else
		x806016_SendSkillMsg(sceneId,selfId,skill.exp,skill.money,skill.name)
	end
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806016_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--H÷c Hình änh b¤t ly1¼¶Ê±µÄÌáÊ¾ÐÅÏ¢
function x806016_SendSkillMsg_XYBL(sceneId,selfId,skname)
	if skname then
		local str = format("#cffffccPhu thê c¥n t¯n #Y#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#cffffcc ð¬ h÷c ðßþc kÛ nång #Y%s .",skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--ÏµÍ³ÌáÊ¾ÐÅÏ¢
function x806016_SendSkillMsg(sceneId,selfId,exp,money,skname)
	if exp and money and skname then
		local moneyt = format("#{_MONEY%d}",money)
		local str = format("#cffffccPhu thê ðã t¯n #Y%d ði¬m kinh nghi®m %s ngân lßþng #cffffccð¬ h÷c kÛ nång #Y%s.",exp,moneyt,skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--ÊÀ½çÌáÊ¾ÐÅÏ¢
function x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	local skill = SkillList[nextLevel+1]
	
	if maleId and femaleId and skill then
		for _, tempId in x806016_g_MaxMarrySkill_T do
			if tempId == skill.id then
					local uname = format("#{_INFOUSR%s}",GetName(sceneId,maleId))
					local oname = format("#{_INFOUSR%s}",GetName(sceneId,femaleId))
					local str = format("#W%s#cffffcc và #W%s#cffffcc ðã h÷c kÛ nång #cff66cc%s#cffffcc th§t ðáng ngßÞng mµ.",uname,oname,skill.name)
					BroadMsgByChatPipe(sceneId, maleId, str, 4)
				return
			end -- end if tempId
		end -- end for
	end -- end if maleId
	
end

--Í³¼ÆÐÅÏ¢
function x806016_LogCoupleAction(sceneId,tid1,tid2,SkillList,nextLevel)
	local skill = SkillList[nextLevel+1]
	local logid = COUPLE_LOG_LEVELUPSKILL
	if nextLevel == 0 then logid = COUPLE_LOG_LEARNSKILL end
	
	if skill and logid and COUPLE_LOG_DETAIL[logid] then
		--CPL:±àºÅ,ËµÃ÷,GUID1,GUID2,¼¼ÄÜID,¼¼ÄÜÃû³Æ,Ê±¼ä
		local logstr = format("CPL:%d,%s,0x%X,0x%X,%d,%s",
									 				logid,
									 				COUPLE_LOG_DETAIL[logid],
									 				LuaFnGetGUID(sceneId,tid1),
									 				LuaFnGetGUID(sceneId,tid2),
									 				skill.id,
									 				skill.name)
		LogCouple(logstr)
	end
end
