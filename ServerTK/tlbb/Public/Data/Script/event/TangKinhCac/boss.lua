--Ph� b�n T�ng Kinh C�c
--M�ng Di�n �c T�ng
--Author: Ho�ng Steven

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
30120014, --V� Kh� B�ng C�ng �i�u V�n а T߶ng
30120015,--V� Kh� H�a C�ng �i�u V�n а T߶ng
30120016,--V� Kh� Huy�n C�ng �i�u V�n а T߶ng
30120017,--V� Kh� еc C�ng �i�u V�n а T߶ng
30120018,--V� Kh� Gi�m B�ng Kh�ng �i�u V�n а T߶ng
30120019,--V� Kh� Gi�m H�a Kh�ng �i�u V�n а T߶ng
30120020,--V� Kh� Gi�m Huy�n Kh�ng �i�u V�n а T߶ng
30120021,--V� Kh� Gi�m еc Kh�ng �i�u V�n а T߶ng
30120024,--M�o T� B�ng Kh�ng �i�u V�n а T߶ng
30120025,--M�o T� H�a Kh�ng �i�u V�n а T߶ng
30120026,--M�o T� Huy�n Kh�ng �i�u V�n а T߶ng
30120027,--M�o T� еc Kh�ng �i�u V�n а T߶ng
30120035,--H� Uy�n B�ng C�ng �i�u V�n а T߶ng
30120036,--H� Uy�n H�a C�ng �i�u V�n а T߶ng
30120037,--H� Uy�n Huy�n C�ng �i�u V�n а T߶ng
30120038,--H� Uy�n еc C�ng �i�u V�n а T߶ng
}

x910121_Item_ttpx ={
50131001, --B�ng Lam L�u V�n (C�p 1)
50131002,--T� Vi Tinh Quang (C�p 1)
50131003,--Thu� Ng�c Tinh Tr�n (C�p 1)
50131004,--Tranh �nh Nh� M�ng (C�p 1)
50131005,--Hoa L�c H�ng Tr�n (C�p 1)
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503061,--Trang b� Tinh th�ng ph�

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
function x910121_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
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
			AddText(sceneId,"C�c h� �� gia t�ng 5 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
