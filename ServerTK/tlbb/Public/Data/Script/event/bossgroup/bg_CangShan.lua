--��ɽ BOSSȺˢ�½ű�

--�ű���
x810001_g_ScriptId	= 810001

--ˢ�·�ʽΪ:
--����˽ű�ʱ����ˢ��10��BOSS....

--��Ҫˢ����BOSS�����ݱ�....
--BOSS��MonsterID�����ظ�....�ڳ�����ͬһʱ��ͬһ��MonsterID�Ĺ�ֻ�ܴ���һ��....���˾Ͳ�ˢ��....
x810001_g_BossData = {

	-- ID						BOSS�� monster id
	-- PosX					����
	-- PosY					����
	-- BaseAI				BOSS��BaseAI....
	-- ExtAIScript	BOSS����չAI....
	-- ScriptID			BOSS�Ľű�ID....
	-- NeedCreate		����1....

	{ ID=9110, PosX=40,  PosY=263, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9111, PosX=51,  PosY=223, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9112, PosX=98,  PosY=246, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9113, PosX=108, PosY=285, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9114, PosX=264, PosY=263, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9115, PosX=145, PosY=59,  BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9116, PosX=130, PosY=50,  BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9117, PosX=37,  PosY=47,  BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9118, PosX=195, PosY=271, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9119, PosX=211, PosY=144, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
}


--**********************************
--�ű���ں���
--**********************************
function x810001_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--�����....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS���ݱ�Ϊ�վͲ�ˢBOSS....
	if getn(x810001_g_BossData) < 1 then
		return
	end

	--����Boss�ؽ�״̬....
	for _, Data in x810001_g_BossData do
		Data.NeedCreate = 1
	end

	--�������������еĹ�....����BOSS�ؽ�״̬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810001_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--�ؽ���Ҫ�ؽ���BOSS....
	for _, BossData in x810001_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MonsterID, "Th߽ng S�n Cu�ng а")
		end
	end

end

--**********************************
--��������
--**********************************
function x810001_OnTimer( sceneId, actId, uTime )

	--����Ƿ����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--���ڸ����ؽ�״̬....
--**********************************
function x810001_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810001_g_BossData do
		if DataID == Data.ID then
			x810001_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
function x810001_OnDie( sceneId, selfId, killerId )

	if MAP_ACTIVE==1 then
		local rand = random(getn(DROP_BOSS_ALLMAP))
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= MAP_RATE then
				AddMonsterDropItem( sceneId, selfId, killerId, DROP_BOSS_ALLMAP[rand] )
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= MAP_RATE then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, DROP_BOSS_ALLMAP[rand] )
				end
			end
		end
	end
end



function x810001_PickupItem( sceneId, selfId, itemId, bagidx )
	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#cff99cc#{_INFOUSR%s} c�ng �ng �i t� xung h�u �t v�i #GHuy�n K�ch Kim C߽ng c�ng �ng b�n #cff99cct�i #YTh߽ng S�n #cff99cc. C� �i to�n th�ng tr� v� �ng th�i c�n nh�n ���c chi�n l�i ph�m #{_INFOMSG%s}",GetName(sceneId,selfId), transfer)
	AddGlobalCountNews(sceneId,str)
end
