
x000573_g_ScriptId = 000573
x000573_g_trung = 30103056
x000573_g_thu = 30103057
x000573_g_thuong = 30103058
x000573_g_nguyet = 30103059
MD_RUOCDEN = 287


x000573_g_pet_trungthu = {
30308282, --TrÑng trân thú : Bách Chiªn Kim Cß½ng
30308283, --TrÑng trân thú : Ti¬u Long Næ
30309081, --TrÑng trân thú : Hàm Ð§u Hùng
}

x000573_g_yeuquyet_bt8 = {
30308111,
30308112,
30308113,
30308114,
30308115,
30308116,
30308117,
30308118,
30308119,

30308121,
30308122,
30308123,
30308124,
30308125,
30308126,
30308127,
30308128,
30308129
}

x000573_g_quatang = {
30505123,--phao hoa trung thu vui ve
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä
}

x000573_g_LimitMember = 3;

function x000573_OnDefaultEvent( sceneId, selfId, targetId )
	if GetHour(sceneId, selfId) < 18 or GetHour(sceneId, selfId) > 21 then 
		x000573_AddText(sceneId, selfId, targetId,"Th¶i gian rß¾c ðèn t× 18:00 ðªn 21:00 hàng ngày")
		return 0
	end
	local RuocDen = GetMissionData(sceneId, selfId, MD_RUOCDEN)

		if LuaFnHasTeam(sceneId,selfId) ~= 1 then
			x000573_AddText(sceneId, selfId, targetId,"C¥n l§p thành t± ðµi m¾i có th¬ rß¾c ðèn");
			return 0
		end
		if LuaFnIsTeamLeader(sceneId,selfId) ~= 1 then
			x000573_AddText(sceneId, selfId, targetId,"Chï ðµi trß·ng m¾i có th¬ ði«u khi¬n nhóm rß¾c ðèn");
			return 0
		end
		if GetTeamSize(sceneId,selfId) < x000573_g_LimitMember then
			x000573_AddText(sceneId, selfId, targetId,"T± ðµi "..x000573_g_LimitMember.." ngß¶i m¾i có th¬ rß¾c ðèn");
			return 0
		end
		if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId) then
			x000573_AddText(sceneId, selfId, targetId,"Ð°ng ðµi không · bên cÕnh.");
			return 0
		end
		if IsTeamFollow(sceneId,selfId) ~= 1 then
			x000573_AddText(sceneId, selfId, targetId,"Thành viên c¥n ð¬ trÕng thái ði theo ðµi");
			return 0
		end
		local followMemberCount = LuaFnGetFollowedMembersCount(sceneId, selfId);
		if GetTeamSize(sceneId,selfId) ~= followMemberCount then
			x000573_AddText(sceneId, selfId, targetId,"Trong ðµi còn thành viên không · trÕng thái theo ðµi");
			return 0
		end
		
		local i;
		local followMembers = {};
			for	i = 0, followMemberCount - 1 do
				followMembers[i] = GetFollowedMember(sceneId, selfId, i);
				if followMembers[i] and followMembers[i] ~= -1 then
					local memberHasDRideFlag = LuaFnGetDRideFlag(sceneId, followMembers[i]);
					if memberHasDRideFlag and memberHasDRideFlag == 1 then
						local memberIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, followMembers[i]);
						if memberIsDRideMountOwner and memberIsDRideMountOwner == 1 then
						else
							x000573_AddText(sceneId, selfId,targetId, "2 ngß¶i cßÞi không th¬ cùng t°n tÕi v¾i t± ðµi.")
							return 0
						end
					end
					if  LuaFnHaveImpactOfSpecificDataIndex(sceneId, followMembers[i], 4848) ~= 1 then
						x000573_AddText(sceneId, selfId, targetId,"Các thành viên khác c¥n · trÕng thái biªn thân Bánh Trung Thu")
						return 0
					end
				end
			end
	if GetName( sceneId, targetId ) == "Ðèn L°ng Trung Thu " then
		if RuocDen == 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i mu¯n tham gia rß¾c ðèn không?")
				AddNumText(sceneId,x000573_g_ScriptId,"Nh§n nhi®m vø rß¾c ðèn",4,1)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif RuocDen == 1 then
			 x000573_Guide( sceneId, selfId,targetId, RuocDen )
		elseif RuocDen == 5 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i mu¯n tham gia rß¾c ðèn không?")
				AddNumText(sceneId,x000573_g_ScriptId,"Trä nhi®m vø",4,3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi®m vø l¥n trß¾c cüa ngß½i chßa hoàn thành mà ðã v« g£p ta. Ngß½i mu¯n hüy nhi®m vø sao?")
				AddNumText(sceneId,x000573_g_ScriptId,"Hüy nhi®m vø",4,2)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif GetName( sceneId, targetId ) == "Ðèn L°ng (Trung) " then
		if RuocDen == 1 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
				AddText(sceneId,"T¯t l¡m, ðßa ðµi cüa ngß½i ðªn g£p Ðèn L°ng (Thu)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 2)
			local BagPos =  TryRecieveItem( sceneId, selfId, x000573_g_trung, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
				end		
			end
		else 
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	elseif GetName( sceneId, targetId ) == "Ðèn L°ng (Thu) " then
		if RuocDen == 2 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
				AddText(sceneId,"Ðßa ðµi cüa ngß½i ðªn g£p Ðèn L°ng (Thß·ng)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 3)
			local BagPos = TryRecieveItem( sceneId, selfId, x000573_g_thu, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
				end		
			end
		else
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	elseif GetName( sceneId, targetId ) == "Ðèn L°ng (Thß·ng) " then
		if RuocDen == 3 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
				AddText(sceneId,"Ðßa ðµi cüa ngß½i ðªn g£p Ðèn L°ng (Nguy®t)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 4)
			local BagPos =  TryRecieveItem( sceneId, selfId, x000573_g_thuong, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
				end		
			end
		else
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	elseif GetName( sceneId, targetId ) == "Ðèn L°ng (Nguy®t) " then
		if RuocDen == 4 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
				AddText(sceneId,"Ðßa ðµi cüa ngß½i v« g£p lÕi Ðèn L°ng Trung Thu ð¬ nh§n quà")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 5)
			
			local BagPos =  TryRecieveItem( sceneId, selfId, x000573_g_nguyet, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
				end		
			end
		else
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	else
		x000573_AddText(sceneId, selfId, targetId, "L²i nhi®m vø, hãy báo v¾i GM")
		return
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000573_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1	then
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
				AddText(sceneId,"Ngß½i chu¦n b¸ t¯t l¡m, bây gi¶ hãy ðßa ðµi cüa ngß½i ðªn g£p Ðèn L°ng (Trung)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 1)
	end
	if GetNumText() == 2	then
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
				AddText(sceneId,"Hüy nhi®m vø thành công.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
	end
	if GetNumText() == 3 then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_trung ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_thu ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_thuong ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_nguyet ) < 1 then
 					x000573_AddText( sceneId, selfId,targetId, "Thiªu các v§t ph¦m nhi®m vø, nhi®m vø th¤t bÕi. Ðã hüy nhi®m vø" )
					SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
					return
			end
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_trung,1)
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_thu,1)
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_thuong,1)
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_nguyet,1)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
		------------------------------------------------------------------------------Duyên viªt thêm ph¥n thß·ng--------------------------------------------------------------------------
		x000573_AddPhanThuong( sceneId, selfId, targetId);
		---end hd edit--------------------------------------------------------------------------
	end
	if	GetNumText() == 0	then
		BeginEvent(sceneId)
			AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
			AddText(sceneId,"Ngß½i chu¦n b¸ t¯t l¡m, bây gi¶ hãy ðßa ðµi cüa ngß½i ðªn g£p Ðèn L°ng Trung Thu ")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end
function x000573_AddText( sceneId, selfId,targetId, text )
	BeginEvent(sceneId)
		AddText(sceneId,"#cFF0000 Ðèn L°ng Trung Thu")
		AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x000573_Guide( sceneId, selfId,targetId, flag )
	if flag == 0 then
		x000573_AddText( sceneId, selfId,targetId, "V« g£p Ðèn L°ng Trung Thu ð¬ nh§n nhi®m vø." )
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 224 .. ";" .. 264 .. ";" .. "Ðèn L°ng Trung Thu", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 224 .. ";" .. 264 .. ";" .. "Ðèn L°ng Trung Thu", MSG2PLAYER_PARA )
		return
	elseif flag == 1 then
		x000573_AddText( sceneId, selfId,targetId, "Dçn ðµi ðªn g£p Ðèn L°ng (Trung)" )
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 230 .. ";" .. 325 .. ";" .. "Ðèn L°ng (Trung) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 230 .. ";" .. 325 .. ";" .. "Ðèn L°ng (Trung) ", MSG2PLAYER_PARA )
		return
	elseif flag == 2 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 332 .. ";" .. 328 .. ";" .. "Ðèn L°ng (Thu) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 332 .. ";" .. 328 .. ";" .. "Ðèn L°ng (Thu) ", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "Dçn ðµi ðªn g£p Ðèn L°ng (Thu)" )
		return
	elseif flag == 3 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 329 .. ";" .. 191 .. ";" .. "Ðèn L°ng (Thß·ng) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 329 .. ";" .. 191 .. ";" .. "Ðèn L°ng (Thß·ng) ", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "Dçn ðµi ðªn g£p Ðèn L°ng (Thß·ng)" )
		return
	elseif flag == 4 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 228 .. ";" .. 191 .. ";" .. "Ðèn L°ng (Nguy®t) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 228 .. ";" .. 191 .. ";" .. "Ðèn L°ng (Nguy®t) ", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "Dçn ðµi ðªn g£p Ðèn L°ng (Nguy®t)" )
		return
	elseif flag == 5 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 224 .. ";" .. 255 .. ";" .. "Ðèn L°ng Trung Thu", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 224 .. ";" .. 255 .. ";" .. "Ðèn L°ng Trung Thu", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "Nhi®m vø ðã hoàn thành, dçn ðµi v« g£p Ðèn L°ng Trung Thu ð¬ nh§n thß·ng")
		return
	else
		x000573_AddText( sceneId, selfId,targetId, "L²i nhi®m vø")
		SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
		return
	end
end

function x000573_AddPhanThuong( sceneId, selfId, targetId)
	local followMemberCount = LuaFnGetFollowedMembersCount(sceneId, selfId);
	if GetTeamSize(sceneId,selfId) ~= followMemberCount then
		x000573_AddText(sceneId, selfId, targetId,"Trong ðµi còn thành viên không · trÕng thái theo ðµi");
		return 0
	end
	
	local i;
	local followMembers = {};
	for	i = 0, followMemberCount - 1 do
		followMembers[i] = GetFollowedMember(sceneId, selfId, i);
		if followMembers[i] and followMembers[i] ~= -1 then
			local memberHasDRideFlag = LuaFnGetDRideFlag(sceneId, followMembers[i]);
			if memberHasDRideFlag and memberHasDRideFlag == 1 then
				local memberIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, followMembers[i]);
				if memberIsDRideMountOwner and memberIsDRideMountOwner == 1 then
				else
					x000573_AddText(sceneId, selfId,targetId, "2 ngß¶i cßÞi không th¬ cùng t°n tÕi v¾i t± ðµi.")
					return 0
				end
			end
			if  LuaFnHaveImpactOfSpecificDataIndex(sceneId, followMembers[i], 4848) ~= 1 then
				x000573_AddText(sceneId, selfId, targetId,"Các thành viên khác c¥n · trÕng thái biªn thân Bánh Trung Thu")
				return 0
			end
			
			--add phan thuong
			local random_value = random(100);
			if random_value > 98 then --ty le 3%
				local gift_id = x000573_g_pet_trungthu[random(getn(x000573_g_pet_trungthu))];
				local BagIndex = TryRecieveItem( sceneId, followMembers[i], gift_id, QUALITY_MUST_BE_CHANGE )
				if BagIndex ~= -1 then
					--local	bindidx	=LuaFnItemBind( sceneId, followMembers[i], BagIndex)
					--if bindidx ~= 1 then
					--	x000573_NotifyTip( sceneId, followMembers[i], "C¯ ð¸nh th¤t bÕi !" )
					--else
						x000573_NotifyTip( sceneId, followMembers[i],"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
						
						str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc rß¾c ðèn tÕi #GTô Châu #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
						BroadMsgByChatPipe(sceneId, followMembers[i], str, 4)
					--end
				end
			else
				local gift_id = x000573_g_quatang[random(1,8)];
				local BagIndex = TryRecieveItem( sceneId, followMembers[i], gift_id, QUALITY_MUST_BE_CHANGE )
				if BagIndex ~= -1 then
					local	bindidx	=LuaFnItemBind( sceneId, followMembers[i], BagIndex)
					if bindidx ~= 1 then
						x000573_NotifyTip( sceneId, followMembers[i], "C¯ ð¸nh th¤t bÕi !" )
					else
						x000573_NotifyTip( sceneId, followMembers[i],"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
						
						str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc rß¾c ðèn tÕi #GTô Châu #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
						BroadMsgByChatPipe(sceneId, followMembers[i], str, 0)
					end
				end
			end
			
			--end add thuong
			
			--add diem hoat dong
			local pointadd = 5; --so diem hoat dong duoc thuong
			local trungthu2013_point = 0;
			local trungthu2013_point = GetMissionData(sceneId,followMembers[i],MD_TRUNGTHU_POINT)
			SetMissionData(sceneId,followMembers[i],MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
			x000573_AddText(sceneId, selfId, targetId,"Nhi®m vø hoàn thành.");
			x000573_NotifyTip( sceneId, followMembers[i],  "Ði¬m hoÕt ðµng tích luÛ hi®n tÕi : "..trungthu2013_point+pointadd.." ði¬m hoÕt ðµng!" )
			--end add diem hoat dong
		end
	end
end

function x000573_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
