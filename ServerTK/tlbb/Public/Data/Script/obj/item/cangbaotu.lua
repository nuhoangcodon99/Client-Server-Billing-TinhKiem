--ʹ�òر�ͼ

--�ű���
x300022_g_scriptId = 300022

x300022_g_ItemId = 30000000

x300022_g_NpcScriptID = 807001

x300022_g_DefaultCorpseDataId = 3510

x300022_g_ChengxiongdatuScriptId = 229020

x300022_g_DiaorubaozangScriptId = 229021

x300022_g_minValue = 6000
x300022_g_maxValue = 9000

x300022_g_MissionIndex10 = 24
x300022_g_MissionIndex20 = 43
x300022_g_MissionIndex30 = 44
x300022_g_MissionIndex40 = 45
x300022_g_MissionIndex50 = 46
x300022_g_MissionIndex60 = 47
x300022_g_MissionIndex70 = 48
x300022_g_MissionIndex80 = 49
x300022_g_MissionIndex90 = 50

--g_ItemTable = {
--							{sn=30001001, name="��Ѫɢ"},
--							{sn=30002007, name="�ɵ�����"},
--							{sn=30007003, name="��ĸ�ɵ�"},
--							{sn=30101017, name="����"},
--							{sn=30402016, name="�߼����ټ�����"},
--							{sn=30505004, name="�̻�"},
--							{sn=30505001, name="����Ь"},
--							{sn=30701009, name="����׻�"},
--							{sn=30701007, name="���¹"}
--							}


x300022_g_CorpseMonsterPosTable = {
													{x=104, z=221},
													{x=104, z=201},
													{x=79, z=222}
													}

x300022_g_SceneMapDefine = {	
										{sceneId=18,	sceneName="Nh�n Nam ",	CorpseMonsterId=3512},
										{sceneId=19,	sceneName="Nh�n B�c ",	CorpseMonsterId=3513},
										{sceneId=20,	sceneName="Th�o Nguy�n",	CorpseMonsterId=3515},
										{sceneId=21,	sceneName="Li�u T�y ",	CorpseMonsterId=3516},
										{sceneId=22,	sceneName="Tr߶ng B�ch S�n ",	CorpseMonsterId=3518},
										{sceneId=23,	sceneName="Ho�ng Long Ph� ",	CorpseMonsterId=3519},
										{sceneId=24,	sceneName="Nh� H�i ",	CorpseMonsterId=3511},
										{sceneId=25,	sceneName="Th߽ng S�n ",	CorpseMonsterId=3513},
										{sceneId=26,	sceneName="Th�ch L�m ",	CorpseMonsterId=3514},
										{sceneId=27,	sceneName="Ng�c Kh� ",	CorpseMonsterId=3516},
										{sceneId=28,	sceneName="Nam Chi�u ",	CorpseMonsterId=3517},
										{sceneId=29,	sceneName="Mi�u C߽ng ",	CorpseMonsterId=3518},
										{sceneId=30,	sceneName="T�y H�",	CorpseMonsterId=3511},
										{sceneId=31,	sceneName="Long Tuy�n ",	CorpseMonsterId=3512},
										{sceneId=32,	sceneName="V� Di ",	CorpseMonsterId=3514},
										{sceneId=33,	sceneName="Mai L�nh ",	CorpseMonsterId=3515},
										{sceneId=34,	sceneName="Nam H�i",	CorpseMonsterId=3517},
										{sceneId=35,	sceneName="Qu�nh Ch�u ",	CorpseMonsterId=3518},
									}
								 
x300022_g_GhoulMonsterTable = {
												{level=11, id=3520},{level=21, id=3521},
												{level=31, id=3522},{level=41, id=3523},
												{level=51, id=3524},{level=61, id=3525},
												{level=71, id=3526},{level=81, id=3527},
												{level=91, id=3528},{level=101, id=3529},
											}									 
									 
--**********************************
--�õ�item�Ĳ�����Ϣ
--**********************************
function x300022_GetItemParam(sceneId, selfId, BagPos)							
	--local BagPos = GetBagPosByItemSn(sceneId, selfId, x300022_g_ItemId)
	--PrintNum(BagPos)
	local targetsceneId = GetBagItemParam(sceneId, selfId, BagPos, 1, 1)
	--PrintNum(targetsceneId)
	local targetX = GetBagItemParam(sceneId, selfId, BagPos, 3, 1)
	--PrintNum(targetX)
  local targetZ = GetBagItemParam(sceneId, selfId, BagPos, 5, 1)
  --PrintNum(targetZ)
  local r = GetBagItemParam(sceneId, selfId, BagPos, 7, 1)
  return targetsceneId, targetX, targetZ, r
end

--**********************************
--�ڵ����� --OK
--**********************************
function x300022_DiscoverMoney(sceneId, selfId)
		--PrintStr("DiscoverMoney...")
		local Bonus = random(x300022_g_maxValue-x300022_g_minValue) + x300022_g_minValue
		local str = "C�c h� ��o ���c #{_MONEY" .. tostring(Bonus) .. "}"
		AddMoney(sceneId, selfId, Bonus)
		Msg2Player(  sceneId, selfId, str, MSG2PLAYER_PARA )
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����Ĺ�� --OK
--**********************************
function x300022_DiscoverGhoulMonster(sceneId, selfId)
	local humanLevel = LuaFnGetLevel(sceneId, selfId)
	local dataId = x300022_g_GhoulMonsterTable[1].id
	local ct = getn(x300022_g_GhoulMonsterTable)
	for i=1, ct do
		if humanLevel >= x300022_g_GhoulMonsterTable[i].level then
			dataId = x300022_g_GhoulMonsterTable[i].id
		end
	end

	local aifile = random(10)
	local x, z = GetWorldPos(sceneId, selfId)
	local MonsterId = LuaFnCreateMonster(sceneId, dataId, x, z-2, 0, aifile, -1)
	SetLevel(sceneId, MonsterId, humanLevel+(random(2)-random(2)) )
	SetCharacterDieTime(sceneId, MonsterId, 60*60000)

	local strTitle, strName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "CreateTitleAndName_ForCangBaoTu", sceneId, selfId)
	SetCharacterTitle(sceneId, MonsterId, strTitle)
	SetCharacterName(sceneId, MonsterId, strName)			

		
	BeginEvent(sceneId)		
		AddText(sceneId, "C�n th�n! B�n ��o M� Ti�u T�c");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����Ʒ --OK
--**********************************
function x300022_DiscoverItem(sceneId, selfId)
	
		--tableIndex = random(9)
		--ItemSn = g_ItemTable[tableIndex].sn
		--ItemName = g_ItemTable[tableIndex].name
		--PrintStr("DiscoverItem...")
		local ItemSn, ItemName, _, bBroadCast
		local playerLevel = LuaFnGetLevel(sceneId, selfId)
		if playerLevel <= 10 then
		 ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex10)
		elseif  playerLevel <= 20 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex20)
		elseif  playerLevel <= 30 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex30)
		elseif  playerLevel <= 40 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex40)
		elseif  playerLevel <= 50 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex50)
		elseif  playerLevel <= 60 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex60)
		elseif  playerLevel <= 70 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex70)
		elseif  playerLevel <= 80 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex80)
		else
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex90)
		end
		
		BeginAddItem(sceneId)
			AddItem( sceneId, ItemSn, 1 )
		local canAdd = EndAddItem(sceneId,selfId)
		
		if canAdd > 0 then
			--����ͳ��
			local itemName;
			_,itemName,_ = GetItemInfoByItemId(ItemSn)
			LuaFnAuditItemCreate(sceneId,selfId,1,ItemSn,itemName,"��o b�u v�t ")

		AddItemListToHuman(sceneId,selfId)
		local strText = format("Ng߽i �� ��t ���c %s", ItemName)
		
		BeginEvent(sceneId)
			AddText(sceneId, strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local PlayName = GetName(sceneId,selfId)
		local x, z = GetWorldPos(sceneId,selfId)

		local _, sceneName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetScenePosInfo", sceneId,sceneId)
		ItemName = GetItemTransfer(sceneId,selfId,0)
		strText = format("#W#{_INFOUSR%s}#cff99cc �#G%s#cff99cc �ang ��o b�o v�t th� may m�n nh�t ���c#W#{_INFOMSG%s}", PlayName, sceneName, ItemName)
		--PrintNum(bBroadCast)
			BroadMsgByChatPipe(sceneId, selfId, strText, bBroadCast)
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Tay n�i c�a ng߽i �� �y!")
			EndEvent()	
			DispatchMissionTips(sceneId, selfId)
			return 0
		end	
		return 1
end

--**********************************
--���ݳ���Id�ó���Ӧ�Ĺ����ID
--**********************************
function x300022_GetDataIDbySceneID(sceneId)
		for i, SceneMapInfo in x300022_g_SceneMapDefine do
			if SceneMapInfo.sceneId == sceneId then
				return SceneMapInfo.CorpseMonsterId
			end
		end
		return x300022_g_DefaultCorpseDataId
end

--**********************************
--�ų���ʬ
--**********************************
function x300022_DiscoverCorpseMonster(sceneId, selfId)

		local corpseMonsterId = x300022_GetDataIDbySceneID(sceneId)
		for i=1, 10 do
			local _, sceneName, x, z, _ = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetScenePosInfo", sceneId,sceneId)
			--���ٱ�֤�������߳���һ���ᱦ����
			if i == 1 then
				x, z = GetWorldPos(sceneId,selfId)
				x = x + 2
			end	
			
			corpseMonsterId = corpseMonsterId or x300022_g_DefaultCorpseDataId
			local aifile = random(10)
			local MonsterId = LuaFnCreateMonster(sceneId, corpseMonsterId, x, z, 0, aifile, x300022_g_NpcScriptID)
			SetCharacterDieTime(sceneId, MonsterId, 60*60000)
			--���öԹ�Ϊ�Ѻõ� Ŀǰ��0�����Ѻõģ�������˸ı�����Ӧ�������������ҾͲ��ˣ���:-(((
			SetUnitReputationID(sceneId, selfId, MonsterId, 0)
			local  monsterLevel = GetLevel(sceneId, MonsterId)
			SetLevel(sceneId, MonsterId, monsterLevel+i-1)
			--�����������ȼ�����������ȼ����ޣ������ȼ�����������ȼ�����
			local PlayerMaxLevel = GetHumanMaxLevelLimit()
			if monsterLevel+i-1 > PlayerMaxLevel then
				SetLevel(sceneId, MonsterId, PlayerMaxLevel)
			end
		end
		
		BeginEvent(sceneId)
			AddText(sceneId, "�ŊZ���R�\\");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local _, sceneName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetScenePosInfo", sceneId,sceneId)
		
		local playerName = GetName(sceneId,selfId)
		local strText = format("#W#{_INFOUSR%s}#cff99cc Trong l�c ��o b�o v�t kh�ng mai b� l� th�ng tin, t�i #G%s#cff99cc d�n �n 1 t�n �o�t b�o M� t�c, Giang h� chi s� ch� c�n �i ti�u di�t b�n M� t�c, s� c� th� nh�n ���c B�o t�ng c�a M� t�c!", 
					playerName, sceneName)

		BroadMsgByChatPipe(sceneId, selfId, strText, 4)

end

--**********************************
--���뱦��
--**********************************
function x300022_DiscoverInstance(sceneId, selfId)
		BeginEvent(sceneId)
			AddText(sceneId, "R�i v�o trong kho b�u");
			CallScriptFunction(x300022_g_DiaorubaozangScriptId, "MakeCopyScene",sceneId, selfId, 0)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

--**********************************
--�������� --OK
--**********************************
function x300022_DiscoverTrap(sceneId, selfId)
		local nHp = GetHp(sceneId, selfId)
		local nMp = GetHp(sceneId, selfId)
		local nHp = nHp * 0.3 --0.05
		local nMp = nMp * 0.3 --0.05
		
		if nHp < 1 then
			nHp = 1
		end
		if nMp < 1 then
			nMp = 1
		end
		
		SetHp(sceneId, selfId, nHp)
		SetMp(sceneId, selfId, nMp)
		
		BeginEvent(sceneId)
			AddText(sceneId, "�����C�P");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

--**********************************
--Ĭ���¼�
--**********************************
function x300022_OnDefaultEvent( sceneId, selfId, BagPos)
	--PrintStr("cangbaotu...x300022_OnDefaultEvent...")
	
	--δ��30��ʱ���汦�ؿ�������֮�ݰ�
	if GetLevel(sceneId, selfId) < 30 then
		BeginEvent(sceneId)
			AddText(sceneId, "��ng c�p ch�a ��t 30 m� khinh su�t m� v�o kho b�u e t�nh m�ng ch�ng l�nh!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
		return
	end	
	
	-- /////////////////////////////////////////////////////////////////
	-- ��ȡ����Ʒ�����ݣ������Ĭ��ֵ0��˵���ǵ�һ��ʹ�ã�������������
	-- ����Ѿ���������ʲô������
	local targetSceneId, targetX, targetZ, r = x300022_GetItemParam(sceneId, selfId, BagPos)
	if targetSceneId==nil or targetSceneId<=0
		or targetX==nil or targetX<=0
		or targetZ==nil or targetZ<=0
		or r==nil or r<=0 then
		--PrintStr("the first time .... nil nil nil")
		--������������
		CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "ProduceItemParamData", sceneId, selfId, BagPos)
		--���»�ȡ��Ʒ����
		targetSceneId, targetX, targetZ, r = x300022_GetItemParam(sceneId, selfId, BagPos)
	end
	-- ��ЩBT ��������һ�μ��
	if targetSceneId==nil or targetSceneId<=0
		or targetX==nil or targetX<=0
		or targetZ==nil or targetZ<=0
		or r==nil or r<=0 then
		--PrintStr("the second time .... nil nil nil")
		--������������
		CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "ProduceItemParamData", sceneId, selfId, BagPos)
		--���»�ȡ��Ʒ����
		targetSceneId, targetX, targetZ, r = x300022_GetItemParam(sceneId, selfId, BagPos)
	end
	--�������ָ���ĳ���, ָ��������͵����Ի�����ʾ���ȥ�Ķ��Ķ��Ķ�
	local sceneName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetSceneName", sceneId, selfId, targetSceneId)
	-- /////////////////////////////////////////////////////////////////
	
	--local sceneName = GetSceneName(targetSceneId)
	--PrintStr(sceneName)
	local strText = format("C�c h� ph�i �n %s to� � [%d,%d] m�i c� th� s� d�ng", sceneName, targetX, targetZ)
	
	--ȡ����ҵ�ǰ����
	local PlayerX = GetHumanWorldX(sceneId, selfId)
	local PlayerZ = GetHumanWorldZ(sceneId, selfId)
	--���������Ŀ���ľ���
	local Distance = floor(sqrt((targetX-PlayerX)*(targetX-PlayerX)+(targetZ-PlayerZ)*(targetZ-PlayerZ)))
	--print(PlayerX,PlayerZ)

	if targetSceneId ~= sceneId or Distance > r then
		--print(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId, strText);
			AddText(sceneId, "#e00f000Nh�c nh�:#e000000 c� l�c b�n � kho b�u ���c xu�t hi�n t�i #gfff0f0B�n � cao h�n ��ng c�p c�a b�n hi�n t�i #g000000. ��ng c�p c�a qu�i v�t tr�n nh�ng h�nh n�y kh� cao, #gfff0f0xin h�y c�n th�n#g000000, c�c h� c� th� b�n b�n � kho b�u cho nh�ng ng߶i ch�i kh�c ho�c gi� l�i � ti�p t�c d�ng sau khi th�ng c�p.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)

		--test code begin
		--EraseItem( sceneId, selfId, BagPos )
		--test cod end
		return
	end	
	
	--ɾ������Ʒ
	if LuaFnIsItemAvailable(sceneId, selfId, BagPos) <= 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)	
		return	
	end	
	
	--PrintStr("begin random...")
	--�����ʹ�÷�Χ, ��������������¼�
	local ret = random(100)
	if ret < 30 then --�ڵ�����
		x300022_DiscoverMoney(sceneId, selfId)
	elseif ret < 40 then --�ų���ʬ
		x300022_DiscoverCorpseMonster(sceneId, selfId)
	elseif ret < 80 then --�����Ʒ
		local retval = x300022_DiscoverItem(sceneId, selfId)
		if retval == 0 then
		  --��¼ͳ����Ϣ
	    LuaFnAuditWaBao(sceneId, selfId)
			return
		end
	elseif ret < 85 then --����Ĺ��
		x300022_DiscoverGhoulMonster(sceneId, selfId)
	elseif ret < 95 then --���뱦��
		x300022_DiscoverInstance(sceneId, selfId)
	else --��������
		x300022_DiscoverTrap(sceneId, selfId)
	end
	
  EraseItem( sceneId, selfId, BagPos )
	
	--��¼ͳ����Ϣ
	LuaFnAuditWaBao(sceneId, selfId)
		
end

function x300022_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
