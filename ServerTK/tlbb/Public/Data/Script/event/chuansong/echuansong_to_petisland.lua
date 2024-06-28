--ÊÂ¼þ
--´«ËÍµ½ÕäÊÞµº

--½Å±¾ºÅ
x400918_g_ScriptId = 400918

--ÈÎÎñÎÄ±¾ÃèÊö
x400918_g_MissionName="Ði t¾i Huy«n Vû Ðäo"
x400918_g_MissionInfo="D¸ch chuy¬n t¾i Huy«n Vû Ðäo"  --ÈÎÎñÃèÊö
x400918_g_MissionTarget="D¸ch chuy¬n t¾i Huy«n Vû Ðäo"		--ÈÎÎñÄ¿±ê
x400918_g_ContinueInfo="D¸ch chuy¬n t¾i Huy«n Vû Ðäo"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x400918_g_MissionComplete="D¸ch chuy¬n t¾i Huy«n Vû Ðäo"					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°

--**********************************
--Èë¿Úº¯Êý
--**********************************
function x400918_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Trên ngß¶i ngß½i ðang có ngân phiªu. Ð¸nh tr¯n nþ hä ?" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--äîÔËÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				BeginEvent( sceneId )
					AddText( sceneId, "  Ðang trong nhi®m vø v§n chuy¬n, không th¬ dùng chÑc nång d¸ch chuy¬n · các NPC !" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ðang trong nhi®m vø v§n chuy¬n, không th¬ dùng chÑc nång d¸ch chuy¬n · các NPC !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 39, 109, 25)

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x400918_OnEnumerate( sceneId, selfId, targetId )
	--µÈ¼¶´ïµ½10¼¶¾ÍÏÔÊ¾´«ËÍÑ¡Ïî
	if GetLevel( sceneId, selfId ) >= 10 then
		AddNumText(sceneId,x400918_g_ScriptId,x400918_g_MissionName, 9, -1)
	else
		return
	end
end
