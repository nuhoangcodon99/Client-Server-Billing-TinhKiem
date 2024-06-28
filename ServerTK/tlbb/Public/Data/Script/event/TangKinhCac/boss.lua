--Phø bän Tàng Kinh Các
--Mông Di®n Ác Tång
--Author: Hoàng Steven

--******************--
x910121_Item_Normal ={
	--item binh thuong + cui
	
	--yq bt 8
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
30308129,


}

x910121_Item_dvtt ={
30120014, --Vû Khí Bång Công Ðiêu Vån Ð° Tß¶ng
30120015,--Vû Khí Höa Công Ðiêu Vån Ð° Tß¶ng
30120016,--Vû Khí Huy«n Công Ðiêu Vån Ð° Tß¶ng
30120017,--Vû Khí Ðµc Công Ðiêu Vån Ð° Tß¶ng
30120018,--Vû Khí Giäm Bång Kháng Ðiêu Vån Ð° Tß¶ng
30120019,--Vû Khí Giäm Höa Kháng Ðiêu Vån Ð° Tß¶ng
30120020,--Vû Khí Giäm Huy«n Kháng Ðiêu Vån Ð° Tß¶ng
30120021,--Vû Khí Giäm Ðµc Kháng Ðiêu Vån Ð° Tß¶ng
30120024,--MÕo TØ Bång Kháng Ðiêu Vån Ð° Tß¶ng
30120025,--MÕo TØ Höa Kháng Ðiêu Vån Ð° Tß¶ng
30120026,--MÕo TØ Huy«n Kháng Ðiêu Vån Ð° Tß¶ng
30120027,--MÕo TØ Ðµc Kháng Ðiêu Vån Ð° Tß¶ng
30120035,--Hµ Uy¬n Bång Công Ðiêu Vån Ð° Tß¶ng
30120036,--Hµ Uy¬n Höa Công Ðiêu Vån Ð° Tß¶ng
30120037,--Hµ Uy¬n Huy«n Công Ðiêu Vån Ð° Tß¶ng
30120038,--Hµ Uy¬n Ðµc Công Ðiêu Vån Ð° Tß¶ng
}

x910121_Item_ttpx ={
50131001, --Bång Lam Lßu Vân (C¤p 1)
50131002,--TØ Vi Tinh Quang (C¤p 1)
50131003,--Thuý Ng÷c Tinh Tr¥n (C¤p 1)
50131004,--Tranh Änh Nhß Mµng (C¤p 1)
50131005,--Hoa LÕc H°ng Tr¥n (C¤p 1)
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503061,--Trang b¸ Tinh thông phù

}

x910121_Item_Normal_rate = 50 
x910121_Item_dvtt_rate = 30 --ty le roi x910121_Item_dvtt
x910121_Item_ttpx_rate = 10 --ty le roi x910121_Item_ttpx

--******************--

--******************--
x910121_g_ScriptId=910121
--******************--

--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910121_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--

end
--**********************************--
--*             On Die             *--
--**********************************--
function x910121_OnDie(sceneId,selfId,killerId)

	--******************--	
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local ran = random(100)
		if ran < x910121_Item_Normal_rate then	
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910121_Item_Normal[random(getn(x910121_Item_Normal))])
		end
		local ran = random(100)
		if ran < x910121_Item_dvtt_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910121_Item_dvtt[random(getn(x910121_Item_dvtt))])
		end
		local ran = random(100)
		if ran < x910121_Item_ttpx_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910121_Item_ttpx[random(getn(x910121_Item_ttpx))])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+5)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 5 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
