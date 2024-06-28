-- created by ×ó´ºÎ°

x400959_g_ScriptId = 400959; --½Å±¾ºÅ
x400959_g_name	="Xa Truy«n Bình";

--´«ËÍÄ¿±ê
x400959_g_transfer_target =
{
	[1] = {x = 218, z = 338, scene_num = 0}, 		--ÂåÑô
	[2] = {x = 332, z = 253, scene_num = 1}, 		--ËÕÖİ
	[3] = {x = 259, z = 86, scene_num = 2}, 		--´óÀí
	[4] = {x = 206, z = 266, scene_num = 34}, 	--ÄÏº£
	[5] = {x = 186, z = 43, scene_num = 28},		--ÄÏÚ¯
	[6] = {x = 158, z = 113, scene_num = 22}, 	--³¤°×É½
}

-- ÊÕ·Ñ½ğ¶î
x400959_g_transfer_cost = 5000; -- 50Òø½»×Ó

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x400959_OnDefaultEvent( sceneId, selfId, targetId )
	x400959_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x400959_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_01}" );
		AddNumText(sceneId, x400959_g_ScriptId, "LÕc Dß½ng", 9, 1); --Lac duong
		AddNumText(sceneId, x400959_g_ScriptId, "Tô Châu", 9, 2); --To chau
		AddNumText(sceneId, x400959_g_ScriptId, "ĞÕi Lı", 9, 3); --Dai li
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Häi", 9, 4); --Nam Hai
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Chiêu", 9, 5); --Nam chieu
		AddNumText(sceneId, x400959_g_ScriptId, "Trß¶ng BÕch S½n", 9, 6); --Truong bach son
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x400959_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÅÜÉÌÏà¹Ø
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Các hÕ ğang trong trÕng thái v§n chuy¬n, không th¬ d¸ch chuy¬n." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Do ğß¶ng xá quá xa xôi, ta không th¬ tiªp nh§n cä t± ğµi." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  Các hÕ ğang trong trÕng thái tào v§n, không th¬ d¸ch chuy¬n.")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"±¾´Î´«ËÍÊÕÈ¡50Òø½»×Ó£¬ÄãÒª´«ËÍÂğ£¿"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400959_g_ScriptId, "Xác ğ¸nh", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác ğ¸nh", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác ğ¸nh", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác ğ¸nh", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác ğ¸nh", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác ğ¸nh", 0, 61);
			end
			AddNumText(sceneId, x400959_g_ScriptId, "Hüy bö", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		local pos_x = x400959_g_transfer_target[index]["x"];
		local pos_z = x400959_g_transfer_target[index]["z"];
		local scene_num = x400959_g_transfer_target[index]["scene_num"];
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ç®¹»Âğ£¿
		if (nMoneyJZ + nMoney) >= x400959_g_transfer_cost then 
				
			-- ÊÕ·Ñ
			-- Ê¹ÓÃ´øÓÅÏÈ¼¶µÄ½ğÇ®ÏûºÄº¯Êı
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400959_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Các hÕ không có ğü ngân lßşng.");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				-- ´«ËÍ
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z); 
			end

		-- Ç®²»¹»
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Các hÕ không có ğü ngân lßşng.");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
