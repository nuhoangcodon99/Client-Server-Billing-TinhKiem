
x000573_g_ScriptId = 000573
x000573_g_trung = 30103056
x000573_g_thu = 30103057
x000573_g_thuong = 30103058
x000573_g_nguyet = 30103059
MD_RUOCDEN = 287


x000573_g_pet_trungthu = {
30308282, --Tr�ng tr�n th� : B�ch Chi�n Kim C߽ng
30308283, --Tr�ng tr�n th� : Ti�u Long N�
30309081, --Tr�ng tr�n th� : H�m Чu H�ng
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
30008018,--Thanh T�m �an
30008019,--Уc X� L�nh
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048 --kim c߽ng to�
}

x000573_g_LimitMember = 3;

function x000573_OnDefaultEvent( sceneId, selfId, targetId )
	if GetHour(sceneId, selfId) < 18 or GetHour(sceneId, selfId) > 21 then 
		x000573_AddText(sceneId, selfId, targetId,"Th�i gian r߾c ��n t� 18:00 �n 21:00 h�ng ng�y")
		return 0
	end
	local RuocDen = GetMissionData(sceneId, selfId, MD_RUOCDEN)

		if LuaFnHasTeam(sceneId,selfId) ~= 1 then
			x000573_AddText(sceneId, selfId, targetId,"C�n l�p th�nh t� �i m�i c� th� r߾c ��n");
			return 0
		end
		if LuaFnIsTeamLeader(sceneId,selfId) ~= 1 then
			x000573_AddText(sceneId, selfId, targetId,"Ch� �i tr߷ng m�i c� th� �i�u khi�n nh�m r߾c ��n");
			return 0
		end
		if GetTeamSize(sceneId,selfId) < x000573_g_LimitMember then
			x000573_AddText(sceneId, selfId, targetId,"T� �i "..x000573_g_LimitMember.." ng߶i m�i c� th� r߾c ��n");
			return 0
		end
		if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId) then
			x000573_AddText(sceneId, selfId, targetId,"аng �i kh�ng � b�n c�nh.");
			return 0
		end
		if IsTeamFollow(sceneId,selfId) ~= 1 then
			x000573_AddText(sceneId, selfId, targetId,"Th�nh vi�n c�n � tr�ng th�i �i theo �i");
			return 0
		end
		local followMemberCount = LuaFnGetFollowedMembersCount(sceneId, selfId);
		if GetTeamSize(sceneId,selfId) ~= followMemberCount then
			x000573_AddText(sceneId, selfId, targetId,"Trong �i c�n th�nh vi�n kh�ng � tr�ng th�i theo �i");
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
							x000573_AddText(sceneId, selfId,targetId, "2 ng߶i c��i kh�ng th� c�ng t�n t�i v�i t� �i.")
							return 0
						end
					end
					if  LuaFnHaveImpactOfSpecificDataIndex(sceneId, followMembers[i], 4848) ~= 1 then
						x000573_AddText(sceneId, selfId, targetId,"C�c th�nh vi�n kh�c c�n � tr�ng th�i bi�n th�n B�nh Trung Thu")
						return 0
					end
				end
			end
	if GetName( sceneId, targetId ) == "��n L�ng Trung Thu " then
		if RuocDen == 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i mu�n tham gia r߾c ��n kh�ng?")
				AddNumText(sceneId,x000573_g_ScriptId,"Nh�n nhi�m v� r߾c ��n",4,1)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif RuocDen == 1 then
			 x000573_Guide( sceneId, selfId,targetId, RuocDen )
		elseif RuocDen == 5 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i mu�n tham gia r߾c ��n kh�ng?")
				AddNumText(sceneId,x000573_g_ScriptId,"Tr� nhi�m v�",4,3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi�m v� l�n tr߾c c�a ng߽i ch�a ho�n th�nh m� �� v� g�p ta. Ng߽i mu�n h�y nhi�m v� sao?")
				AddNumText(sceneId,x000573_g_ScriptId,"H�y nhi�m v�",4,2)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif GetName( sceneId, targetId ) == "��n L�ng (Trung) " then
		if RuocDen == 1 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
				AddText(sceneId,"T�t l�m, ��a �i c�a ng߽i �n g�p ��n L�ng (Thu)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 2)
			local BagPos =  TryRecieveItem( sceneId, selfId, x000573_g_trung, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C� �nh th�t b�i !" )
				end		
			end
		else 
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	elseif GetName( sceneId, targetId ) == "��n L�ng (Thu) " then
		if RuocDen == 2 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
				AddText(sceneId,"��a �i c�a ng߽i �n g�p ��n L�ng (Th߷ng)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 3)
			local BagPos = TryRecieveItem( sceneId, selfId, x000573_g_thu, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C� �nh th�t b�i !" )
				end		
			end
		else
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	elseif GetName( sceneId, targetId ) == "��n L�ng (Th߷ng) " then
		if RuocDen == 3 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
				AddText(sceneId,"��a �i c�a ng߽i �n g�p ��n L�ng (Nguy�t)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 4)
			local BagPos =  TryRecieveItem( sceneId, selfId, x000573_g_thuong, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C� �nh th�t b�i !" )
				end		
			end
		else
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	elseif GetName( sceneId, targetId ) == "��n L�ng (Nguy�t) " then
		if RuocDen == 4 then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000573_AddText(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
				return
			end
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
				AddText(sceneId,"��a �i c�a ng߽i v� g�p l�i ��n L�ng Trung Thu � nh�n qu�")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 5)
			
			local BagPos =  TryRecieveItem( sceneId, selfId, x000573_g_nguyet, 1 )
			if -1 ~= BagPos then
				local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
				if bindidx ~= 1 then
					x000573_AddText( sceneId, selfId,  "C� �nh th�t b�i !" )
				end		
			end
		else
			x000573_Guide( sceneId, selfId,targetId, RuocDen )
		end
	else
		x000573_AddText(sceneId, selfId, targetId, "L�i nhi�m v�, h�y b�o v�i GM")
		return
	end
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000573_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1	then
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
				AddText(sceneId,"Ng߽i chu�n b� t�t l�m, b�y gi� h�y ��a �i c�a ng߽i �n g�p ��n L�ng (Trung)")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 1)
	end
	if GetNumText() == 2	then
			BeginEvent(sceneId)
				AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
				AddText(sceneId,"H�y nhi�m v� th�nh c�ng.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
	end
	if GetNumText() == 3 then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_trung ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_thu ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_thuong ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000573_g_nguyet ) < 1 then
 					x000573_AddText( sceneId, selfId,targetId, "Thi�u c�c v�t ph�m nhi�m v�, nhi�m v� th�t b�i. �� h�y nhi�m v�" )
					SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
					return
			end
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_trung,1)
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_thu,1)
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_thuong,1)
			LuaFnDelAvailableItem(sceneId,selfId, x000573_g_nguyet,1)
			SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
		------------------------------------------------------------------------------Duy�n vi�t th�m ph�n th߷ng--------------------------------------------------------------------------
		x000573_AddPhanThuong( sceneId, selfId, targetId);
		---end hd edit--------------------------------------------------------------------------
	end
	if	GetNumText() == 0	then
		BeginEvent(sceneId)
			AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
			AddText(sceneId,"Ng߽i chu�n b� t�t l�m, b�y gi� h�y ��a �i c�a ng߽i �n g�p ��n L�ng Trung Thu ")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end
function x000573_AddText( sceneId, selfId,targetId, text )
	BeginEvent(sceneId)
		AddText(sceneId,"#cFF0000 ��n L�ng Trung Thu")
		AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x000573_Guide( sceneId, selfId,targetId, flag )
	if flag == 0 then
		x000573_AddText( sceneId, selfId,targetId, "V� g�p ��n L�ng Trung Thu � nh�n nhi�m v�." )
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 224 .. ";" .. 264 .. ";" .. "��n L�ng Trung Thu", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 224 .. ";" .. 264 .. ";" .. "��n L�ng Trung Thu", MSG2PLAYER_PARA )
		return
	elseif flag == 1 then
		x000573_AddText( sceneId, selfId,targetId, "D�n �i �n g�p ��n L�ng (Trung)" )
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 230 .. ";" .. 325 .. ";" .. "��n L�ng (Trung) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 230 .. ";" .. 325 .. ";" .. "��n L�ng (Trung) ", MSG2PLAYER_PARA )
		return
	elseif flag == 2 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 332 .. ";" .. 328 .. ";" .. "��n L�ng (Thu) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 332 .. ";" .. 328 .. ";" .. "��n L�ng (Thu) ", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "D�n �i �n g�p ��n L�ng (Thu)" )
		return
	elseif flag == 3 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 329 .. ";" .. 191 .. ";" .. "��n L�ng (Th߷ng) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 329 .. ";" .. 191 .. ";" .. "��n L�ng (Th߷ng) ", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "D�n �i �n g�p ��n L�ng (Th߷ng)" )
		return
	elseif flag == 4 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 228 .. ";" .. 191 .. ";" .. "��n L�ng (Nguy�t) ", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 228 .. ";" .. 191 .. ";" .. "��n L�ng (Nguy�t) ", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "D�n �i �n g�p ��n L�ng (Nguy�t)" )
		return
	elseif flag == 5 then
		Msg2Player( sceneId, selfId, "@*;flagPOS;" .. 1 .. ";" .. 224 .. ";" .. 255 .. ";" .. "��n L�ng Trung Thu", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "@*;flashPOS;" .. 1 .. ";" .. 224 .. ";" .. 255 .. ";" .. "��n L�ng Trung Thu", MSG2PLAYER_PARA )
		
		x000573_AddText( sceneId, selfId,targetId, "Nhi�m v� �� ho�n th�nh, d�n �i v� g�p ��n L�ng Trung Thu � nh�n th߷ng")
		return
	else
		x000573_AddText( sceneId, selfId,targetId, "L�i nhi�m v�")
		SetMissionData(sceneId, selfId, MD_RUOCDEN, 0)
		return
	end
end

function x000573_AddPhanThuong( sceneId, selfId, targetId)
	local followMemberCount = LuaFnGetFollowedMembersCount(sceneId, selfId);
	if GetTeamSize(sceneId,selfId) ~= followMemberCount then
		x000573_AddText(sceneId, selfId, targetId,"Trong �i c�n th�nh vi�n kh�ng � tr�ng th�i theo �i");
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
					x000573_AddText(sceneId, selfId,targetId, "2 ng߶i c��i kh�ng th� c�ng t�n t�i v�i t� �i.")
					return 0
				end
			end
			if  LuaFnHaveImpactOfSpecificDataIndex(sceneId, followMembers[i], 4848) ~= 1 then
				x000573_AddText(sceneId, selfId, targetId,"C�c th�nh vi�n kh�c c�n � tr�ng th�i bi�n th�n B�nh Trung Thu")
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
					--	x000573_NotifyTip( sceneId, followMembers[i], "C� �nh th�t b�i !" )
					--else
						x000573_NotifyTip( sceneId, followMembers[i],"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
						
						str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c r߾c ��n t�i #GT� Ch�u #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
						BroadMsgByChatPipe(sceneId, followMembers[i], str, 4)
					--end
				end
			else
				local gift_id = x000573_g_quatang[random(1,8)];
				local BagIndex = TryRecieveItem( sceneId, followMembers[i], gift_id, QUALITY_MUST_BE_CHANGE )
				if BagIndex ~= -1 then
					local	bindidx	=LuaFnItemBind( sceneId, followMembers[i], BagIndex)
					if bindidx ~= 1 then
						x000573_NotifyTip( sceneId, followMembers[i], "C� �nh th�t b�i !" )
					else
						x000573_NotifyTip( sceneId, followMembers[i],"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
						
						str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c r߾c ��n t�i #GT� Ch�u #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
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
			x000573_AddText(sceneId, selfId, targetId,"Nhi�m v� ho�n th�nh.");
			x000573_NotifyTip( sceneId, followMembers[i],  "�i�m ho�t �ng t�ch lu� hi�n t�i : "..trungthu2013_point+pointadd.." �i�m ho�t �ng!" )
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
