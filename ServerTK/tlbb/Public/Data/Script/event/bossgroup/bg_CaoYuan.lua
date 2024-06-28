--��ԭ BOSSȺˢ�½ű�

--�ű���
x810003_g_ScriptId	= 810003

--ˢ�·�ʽΪ:
--����˽ű�ʱ����ˢ��10��BOSS....

--��Ҫˢ����BOSS�����ݱ�....
--BOSS��MonsterID�����ظ�....�ڳ�����ͬһʱ��ͬһ��MonsterID�Ĺ�ֻ�ܴ���һ��....���˾Ͳ�ˢ��....
x810003_g_BossData = {

	-- ID						BOSS�� monster id
	-- Title				BOSS�ĳƺ�....
	-- PosX					����
	-- PosY					����
	-- BaseAI				BOSS��BaseAI....
	-- ExtAIScript	BOSS����չAI....
	-- ScriptID			BOSS�Ľű�ID....
	-- NeedCreate		����1....

	{ ID=9130, Title="Di�u th� kh�ng kh�ng", PosX=77,  PosY=124, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9131, Title="H�n �i v� �i", PosX=44,  PosY=72,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9132, Title="H�n �i v� �i", PosX=83,  PosY=66,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9133, Title="H�n �i v� �i", PosX=100, PosY=90,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9134, Title="H�n �i v� �i", PosX=58,  PosY=121, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9135, Title="H�n �i v� �i", PosX=167, PosY=63,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9136, Title="H�n �i v� �i", PosX=280, PosY=284, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9137, Title="H�n �i v� �i", PosX=64,  PosY=253, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9138, Title="H�n �i v� �i", PosX=190, PosY=49,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9139, Title="H�n �i v� �i", PosX=276, PosY=127, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
}


--**********************************
--�ű���ں���
--**********************************
function x810003_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--�����....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS���ݱ�Ϊ�վͲ�ˢBOSS....
	if getn(x810003_g_BossData) < 1 then
		return
	end

	--����Boss�ؽ�״̬....
	for _, Data in x810003_g_BossData do
		Data.NeedCreate = 1
	end

	--�������������еĹ�....����BOSS�ؽ�״̬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810003_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--�ؽ���Ҫ�ؽ���BOSS....
	for _, BossData in x810003_g_BossData do
		if BossData.NeedCreate == 1 then
			MstId = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MstId, BossData.Title)
		end
	end

end

--**********************************
--��������
--**********************************
function x810003_OnTimer( sceneId, actId, uTime )

	--����Ƿ����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--���ڸ����ؽ�״̬....
--**********************************
function x810003_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810003_g_BossData do
		if DataID == Data.ID then
			x810003_g_BossData[i].NeedCreate = 0
			break
		end
	end

end

function x810003_OnDie( sceneId, selfId, killerId )
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


function x810003_PickupItem( sceneId, selfId, itemId, bagidx )

	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#cff99cc#{_INFOUSR%s} c�ng �ng �i t� xung h�u �t v�i #GB�ch Minh Kh�i c�ng �ng b�n #cff99cct�i #YTh�o Nguy�n #cff99cc. C� �i to�n th�ng tr� v� �ng th�i c�n nh�n ���c chi�n l�i ph�m #{_INFOMSG%s}",GetName(sceneId,selfId), transfer)
	AddGlobalCountNews(sceneId,str)

end
