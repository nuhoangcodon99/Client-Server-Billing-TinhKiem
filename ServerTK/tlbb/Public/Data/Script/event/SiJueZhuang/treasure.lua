--Phø bän TÑ Tuy®t Trang
--TÑ Tuy®t Bäo Sß½ng
--Author: Hoàng Steven

--******************--


x910178_Item_ttpx ={
50131001, --Bång Lam Lßu Vân (C¤p 1)
50131002,--TØ Vi Tinh Quang (C¤p 1)
50131003,--Thuý Ng÷c Tinh Tr¥n (C¤p 1)
50131004,--Tranh Änh Nhß Mµng (C¤p 1)
50131005,--Hoa LÕc H°ng Tr¥n (C¤p 1)
}

x910178_Item_ttpx_vip ={

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30010080, --Chân Nguyên Phách
30010081, --Chân Nguyên Tinh Phách
}
x910178_Item_ttpx_vip_rate = 60 -- ty le rot x910178_Item_ttpx_vip



--******************--

--******************--
x910178_g_ScriptId=910178

--**********************************--
--*             On Die             *--
--**********************************--
function x910178_OnDie(sceneId,selfId,killerId)

	--******************--
	local TeammateCount = GetTeamMemberCount(sceneId,killerId)
	for i=0,TeammateCount-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910178_Item_ttpx[random(getn(x910178_Item_ttpx))])
		local ran = random(100)
		if ran < x910178_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910178_Item_ttpx_vip[random(getn(x910178_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,GetNearTeamMember(sceneId,killerId,i))
	end
	--******************--
	
end
