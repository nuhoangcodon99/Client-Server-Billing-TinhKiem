--���޼���H�c 

--�ű���
x806016_g_ScriptId		= 806016


--T�m �u � h�p���ܱ�....
x806016_g_skillList_XXXY = {

	{id=260, name="T�m �u � h�p(c�p 1)", firendPt=1000, lvM=0, lvF=0, exp=0, money=0},
	{id=261, name="T�m �u � h�p(c�p 2)", firendPt=2000, lvM=0, lvF=0, exp=0, money=442},
	{id=262, name="T�m �u � h�p(c�p 3)", firendPt=3000, lvM=0, lvF=0, exp=0, money=967},
	{id=263, name="T�m �u � h�p(c�p 4)", firendPt=4000, lvM=0, lvF=0, exp=0, money=1800},
	{id=264, name="T�m �u � h�p(c�p 5)", firendPt=5000, lvM=0, lvF=0, exp=0, money=3009},
	{id=265, name="T�m �u � h�p(c�p 6)", firendPt=6000, lvM=0, lvF=0, exp=0, money=4660},
	{id=266, name="T�m �u � h�p(c�p 7)", firendPt=7000, lvM=0, lvF=0, exp=0, money=6825},
	{id=267, name="T�m �u � h�p(c�p 8)", firendPt=8000, lvM=0, lvF=0, exp=0, money=13322},
	{id=268, name="T�m �u � h�p(c�p 9)", firendPt=9000, lvM=0, lvF=0, exp=0, money=23449}

};

--аng kh� li�n chi���ܱ�....
x806016_g_skillList_TQLZ = {

	{id=250, name="аng kh� li�n chi(c�p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=251, name="аng kh� li�n chi(c�p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=252, name="аng kh� li�n chi(c�p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=253, name="аng kh� li�n chi(c�p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=254, name="аng kh� li�n chi(c�p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--Thi�n tr߶ng �a c�u���ܱ�....
x806016_g_skillList_TCDJ = {

	{id=255, name="Thi�n tr߶ng �a c�u(c�p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=256, name="Thi�n tr߶ng �a c�u(c�p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=257, name="Thi�n tr߶ng �a c�u(c�p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=258, name="Thi�n tr߶ng �a c�u(c�p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=259, name="Thi�n tr߶ng �a c�u(c�p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--H�nh �nh b�t ly���ܱ�....
x806016_g_skillList_XYBL = {

	{id=269, name="H�nh �nh b�t ly(c�p 1", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=270, name="H�nh �nh b�t ly(c�p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=271, name="H�nh �nh b�t ly(c�p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=272, name="H�nh �nh b�t ly(c�p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=273, name="H�nh �nh b�t ly(c�p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--H�nh �nh b�t ly1����Ӧ�ļ���ID
x806016_g_xybl_SkillID = 269
--H�c H�nh �nh b�t ly1����Ҫ����ƷID
x806016_g_xybl_ItemID = 30308059

--��Ҫ���繫��ļ��ܱ�ű�
x806016_g_MaxMarrySkill_T = {268,253,254,258,259,272,273};

--**********************************
--������ں���
--**********************************
function x806016_OnDefaultEvent(sceneId, selfId, targetId)

	local selectEventId	= GetNumText();

	if selectEventId == 0 then
		BeginEvent(sceneId);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c T�m �u � h�p", 12, 11);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c аng kh� li�n chi", 12, 12);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c Thi�n tr߶ng �a c�u", 12, 13);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c H�nh �nh b�t ly", 12, 14);
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);

	elseif selectEventId == 11 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XXXY );
		if ret > 0 then
			local skill = x806016_g_skillList_XXXY[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, " #cE07D4ET�m T�m T߽ng �n#rTr�ng th�i gia t�ng th� l�c #r#c5BC257K� n�ng phu th� ch� c� th� s� d�ng ���c v�i t�nh nh�n");
				if skill.money > 0 then
					AddText(sceneId, "  Ng߶i nam c�n c� #{_MONEY"..skill.money.."} � h�c "..skill.name..".");
				end
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "N�ng c�p k� n�ng", 12, 21);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "K� n�ng h�c t�p", 12, 21);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 12 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TQLZ );
		if ret > 0 then
			local skill = x806016_g_skillList_TQLZ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  #cE07D4Eаng Kh� Li�n K� #Yнn th� tr� li�u h�i ph�c Huy�t cho m�c ti�u#r#c5BC257K� n�ng phu th� ch� c� th� s� d�ng ���c v�i t�nh nh�n ");
				AddText(sceneId, "  H�c "..skill.name..", ng߶i nam c�n c� "..skill.exp.." �i�m kinh nghi�m v� #{_MONEY"..skill.money.."}.");
				AddText(sceneId, "  Phu thu� c�n c� #G"..skill.firendPt.."#W �i�m h�o h�u, #rng߶i nam c�n ��t c�p "..skill.lvM.." #rng߶i n� c�n c�p � "..skill.lvF.." c�p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "N�ng c�p k� n�ng", 12, 22);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "K� n�ng h�c t�p", 12, 22);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 13 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TCDJ );
		if ret > 0 then
			local skill = x806016_g_skillList_TCDJ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  #cE07D4EThi�n Tr߶ng иa C�u #rH�i sinh 1 m�c ti�u, gi�p ph�c h�i l��ng Huy�t v� kh� c�a m�c ti�u ��#r#c5BC257K� n�ng phu th� ch� c� th� s� d�ng ���c v�i t�nh nh�n");
				AddText(sceneId, "  H�c "..skill.name.." ng߶i nam c�n c� "..skill.exp.."�i�m kinh nghi�m v� #{_MONEY"..skill.money.."}.");
				AddText(sceneId, "  Phu th� c�n c� #G"..skill.firendPt.."#W �i�m h�o h�u, #r ng߶i nam c�n ��t c�p "..skill.lvM.."#rng߶i n� c�n ��t c�p "..skill.lvF.." c�p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "N�ng c�p k� n�ng", 12, 23);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "K� n�ng h�c t�p", 12, 23);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 14 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XYBL );
		if ret > 0 then
			local skill = x806016_g_skillList_XYBL[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, " #cE07D4EH�nh �nh B�t Ly #rTrong th�i gian ng�n d�ch chuy�n �n �a �i�m c�a t�nh nh�n m�nh, c�n ��i phu th� �� ph�i c�ng m�t khu v�c#r#c5BC257K� n�ng phu th� ch� c� th� s� d�ng ���c v�i t�nh nh�n");
				if skill.id == x806016_g_xybl_SkillID then
					AddText(sceneId, "  H�c "..skill.name.." ng߶i nam c�n c� #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W.");
				else
					AddText(sceneId, "  H�c "..skill.name.." ng߶i nam c�n c� "..skill.exp.."�i�m kinh nghi�m v� #{_MONEY"..skill.money.."}.");
				end
				AddText(sceneId, "  Phu th� c�n c� #G"..skill.firendPt.."#W �i�m h�o h�u, #rng߶i nam c�n ��t c�p "..skill.lvM.." #rng߶i n� c�n ��t c�p "..skill.lvF.." c�p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "N�ng c�p k� n�ng", 12, 24);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "K� n�ng h�c t�p", 12, 24);
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
--�о��¼�
--**********************************
function x806016_OnEnumerate(sceneId, selfId, targetId)
	local isMarried = LuaFnIsMarried(sceneId, selfId);
	if isMarried and isMarried > 0 then
		AddNumText(sceneId, x806016_g_ScriptId, "K� n�ng phu th�", 12, 0);
	end
end

--**********************************
--����Ƿ����H�c ĳ����޼���....
--**********************************
function x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList )

	--ǰ������
	local szMsg = "N�u mu�n h�c k� n�ng phu th�, h�y l�p t� �i �n g�p ta !"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Ch� ���c t� �i v�i phu th�, kh�ng t� �i v�i ng߶i kh�c."
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Ch� c� hai ng߶i ���c h�c t�p k� n�ng."
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Ch� l� v� ch�ng m�i c� th� h�c t�p k� n�ng"
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

	szMsg = "L�i n�i b�, k�ch b�n kh�ng th� ch�y ��ng"
	if LuaFnIsCanDoScriptLogic(sceneId, maleId) ~= 1 then
		return 0;
	end
	if LuaFnIsCanDoScriptLogic(sceneId, femaleId) ~= 1 then
		return 0;
	end
	
	szMsg = "C� hai v� ch�ng �� c�ng ng߶i kh�c h�c t�p k� n�ng"
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
	--�����ҵķ��޼����Ѿ�ѧ������
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
	
	szMsg = "K� n�ng d�t c�p cao nh�t, kh�ng th� n�ng c�p ti�p."
	if maleSkillLevel >= maxSkillLevel then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	nextLevel = femaleSkillLevel+1;

	return 1, nextLevel, maleId, femaleId;

end

--**********************************
--K� n�ng h�c t�p
--**********************************
function x806016_StudySkill(sceneId, selfId, targetId, SkillList)

	--����������....
	local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList );
	if ret == 0 then
		return
	end

	local skill = SkillList[nextLevel+1];

	szMsg = "е h�o h�u c�n ��t %d �i�m � t�ng c�p � ti�p theo."
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

	szMsg = "Ng߶i nam c�n ��t c�p %d � c� th� h�c t�p k� n�ng."
	if GetLevel( sceneId, maleId ) < skill.lvM then
		szMsg = format(szMsg, skill.lvM);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Ng߶i n� c�n ��t c�p %d � c� th� h�c k� n�ng."
	if GetLevel( sceneId, femaleId ) < skill.lvF then
		szMsg = format(szMsg, skill.lvF);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end
	
	if skill.id == x806016_g_xybl_SkillID then
		if HaveItemInBag(sceneId,maleId,x806016_g_xybl_ItemID)<0 then
			x806016_MessageBox(sceneId, selfId, targetId, "Ng߶i nam c�n c� #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W � c� th� h�c k� n�ng.");
			return
		end
		if LuaFnGetAvailableItemCount(sceneId,maleId,x806016_g_xybl_ItemID)<=0 then
			x806016_MessageBox(sceneId, selfId, targetId, "C�n m� kh�a v�t ph�m #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W m�i c� th� h�c.");
			return
		end
		--�۳���Ʒ
		LuaFnDelAvailableItem(sceneId,maleId,x806016_g_xybl_ItemID,1)
	else
		szMsg = "Ng߶i nam c�n c� %d �i�m kinh nghi�m � h�c k� n�ng."
		if GetExp(sceneId, maleId) < skill.exp then
			szMsg = format(szMsg, skill.exp);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		szMsg = "Ng߶i c�n c� #{_MONEY%d} ng�n l��ng � h�c k� n�ng"
		local maleMoney, needMoney;
		maleMoney = LuaFnGetMoney(sceneId, maleId);
		needMoney = skill.money;
		
		if maleMoney and maleMoney+GetMoneyJZ(sceneId, maleId) >= needMoney then
		else
			szMsg = format(szMsg, needMoney);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		--�۳��з����Ͻ�Ǯ....
		LuaFnCostMoneyWithPriority(sceneId, maleId, needMoney);
		
		--�۳��з�����....
		if skill.exp > 0 then
			LuaFnAddExp( sceneId, maleId, -skill.exp );
		end
	end

	--����һ�����޼��ܸ�˫��
	x806016_MyAddSkill(sceneId, maleId, SkillList, nextLevel);
	x806016_MyAddSkill( sceneId, femaleId, SkillList, nextLevel);
	x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	--���ͳ����Ϣ
	x806016_LogCoupleAction(sceneId,maleId,femaleId,SkillList, nextLevel)
	
	--�ɹ�H�c ��رնԻ�����....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	
	return

end

--**********************************
--���һ����޼���
--**********************************
function x806016_MyAddSkill(sceneId, selfId, SkillList, nextLevel)

	--ɾ�����޼���
	local tempSkill;
	for _, tempSkill in SkillList do
		local haveSkill = HaveSkill(sceneId, selfId, tempSkill.id);
		if haveSkill and haveSkill > 0 then
			DelSkill(sceneId, selfId, tempSkill.id);
		end
	end

	local skill = SkillList[nextLevel+1];

	AddSkill(sceneId, selfId, skill.id);
	--Msg2Player( sceneId, selfId, "��ѧ����"..skill.name.."��", MSG2PLAYER_PARA )
	
	--BeginEvent(sceneId)
		--AddText(sceneId, "��ѧ����"..skill.name.."��");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)
	
	if skill.id == x806016_g_xybl_SkillID then
		x806016_SendSkillMsg_XYBL(sceneId,selfId,skill.name)
	else
		x806016_SendSkillMsg(sceneId,selfId,skill.exp,skill.money,skill.name)
	end
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806016_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--H�c H�nh �nh b�t ly1��ʱ����ʾ��Ϣ
function x806016_SendSkillMsg_XYBL(sceneId,selfId,skname)
	if skname then
		local str = format("#cffffccPhu th� c�n t�n #Y#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#cffffcc � h�c ���c k� n�ng #Y%s .",skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--ϵͳ��ʾ��Ϣ
function x806016_SendSkillMsg(sceneId,selfId,exp,money,skname)
	if exp and money and skname then
		local moneyt = format("#{_MONEY%d}",money)
		local str = format("#cffffccPhu th� �� t�n #Y%d �i�m kinh nghi�m %s ng�n l��ng #cffffcc� h�c k� n�ng #Y%s.",exp,moneyt,skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--������ʾ��Ϣ
function x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	local skill = SkillList[nextLevel+1]
	
	if maleId and femaleId and skill then
		for _, tempId in x806016_g_MaxMarrySkill_T do
			if tempId == skill.id then
					local uname = format("#{_INFOUSR%s}",GetName(sceneId,maleId))
					local oname = format("#{_INFOUSR%s}",GetName(sceneId,femaleId))
					local str = format("#W%s#cffffcc v� #W%s#cffffcc �� h�c k� n�ng #cff66cc%s#cffffcc th�t ��ng ng��ng m�.",uname,oname,skill.name)
					BroadMsgByChatPipe(sceneId, maleId, str, 4)
				return
			end -- end if tempId
		end -- end for
	end -- end if maleId
	
end

--ͳ����Ϣ
function x806016_LogCoupleAction(sceneId,tid1,tid2,SkillList,nextLevel)
	local skill = SkillList[nextLevel+1]
	local logid = COUPLE_LOG_LEVELUPSKILL
	if nextLevel == 0 then logid = COUPLE_LOG_LEARNSKILL end
	
	if skill and logid and COUPLE_LOG_DETAIL[logid] then
		--CPL:���,˵��,GUID1,GUID2,����ID,��������,ʱ��
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
