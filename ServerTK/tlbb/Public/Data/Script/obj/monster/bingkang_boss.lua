--企鹅王BOSS刷新公告

--脚本编号
x502003_g_ScriptId	= 502003

--**********************************
--Monster Timer
--**********************************
function x502003_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--全球公告
	local	nam_mob	= GetName( sceneId, objId )
	if nam_mob ~= nil then
		str	= format( "#cff99ccCh� nh鈔 th s� c黙 #GNg鈔 Ngai Tuy猼 Nguy阯 l� X� Nga V呓ng #cff99ccv� 鹫i 疸 vung quy玭 tr唼ng xu hi畁 t読 l鉵h th� c黙 n� r癷!", nam_mob )
		AddGlobalCountNews( sceneId, str )
	end

	--取消时钟
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--死亡事件
--**********************************
function x502003_OnDie( sceneId, objId, killerId )
	--全球公告
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#PTin vui tin vui. #W#{_INFOUSR%s}#P d鏽 d 鸬i ng� anh h鵱g 疳nh b読 ch� nh鈔 c黙 Ng鈔 Ngai Tuy猼 Nguy阯 l� #G%s#P, m鱥 ng叨i c鵱g ch鷆 m譶g h n鄌!", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
	
	if LuaFnHasTeam(sceneId,killerId)~=1 then
		AddMonsterDropItem(sceneId,objId,killerId,30505121)
	else
		for i=0,GetNearTeamCount(sceneId,killerId)-1 do
			local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
			AddMonsterDropItem(sceneId,objId,nPlayerId,30505121)
		end
	end
	
end
