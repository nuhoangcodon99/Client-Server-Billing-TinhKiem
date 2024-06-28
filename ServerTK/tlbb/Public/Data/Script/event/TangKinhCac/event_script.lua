--Phø bän Tàng Kinh Các
--Author: Hoàng Steven

--******************--
x910120_g_ScriptId=910120
--******************--
x910120_g_CopySceneType=FUBEN_CANGJINGGE										--Các tham s¯ cüa phø bän. Tham khäo "ScriptGlobal.lua"
--******************--
x910120_g_TickTime=1															--Th¶i gian hi®n tÕi cüa phø bän
x910120_g_NoUserTime=5000														--Th¶i gian lßu lÕi phø bän khi không còn ai trong phø bän (Ð½n v¸ Mili Giây)
x910120_g_Fuben_X=64															--Pos X ði¬m h°i sinh phø bän
x910120_g_Fuben_Y=35															--Pos Y ði¬m h°i sinh phø bän
x910120_g_FuBenTime=1800000														--Th¶i gian phø bän (Ð½n v¸ Mili Giây)
x910120_g_Limit_Member=3														--S¯ lßþng thành viên t¯i thi¬u trong ðµi ngû
x910120_g_Fuben_Scene="cangjingge.nav"											--Load file Scene
--******************--
x910120_g_Need_Level=40															--Level t¯i thi¬u tham gia phø bän
--******************--
x910120_g_Notice=
{
	[1]="Ðã giªt chªt Mông Di®n Ác Tång: 1/1",									--Thông báo ðã giªt chªt Boss
	[2]="Phø bän hi®n tÕi s¨ ðóng sau 30 phút næa!",							--Thông báo khi còn 30 phút
	[3]="Phø bän hi®n tÕi s¨ ðóng sau 15 phút næa!",							--Thông báo khi còn 15 phút
	[4]="Phø bän hi®n tÕi s¨ ðóng sau 5 phút næa!",								--Thông báo khi còn 5 phút
	[5]="Phø bän hi®n tÕi s¨ ðóng sau 1 phút næa!",								--Thông báo khi còn 1 phút
	[6]="Phø bän hi®n tÕi s¨ ðóng sau 30 giây næa!",							--Thông báo khi còn 30 giây
	[7]="Phø bän hi®n tÕi s¨ ðóng sau 15 giây næa!",							--Thông báo khi còn 15 giây
	[8]="Phø bän hi®n tÕi s¨ ðóng sau 5 giây næa!",								--Thông báo khi còn 5 giây
	[9]="Nhi®m vø th¤t bÕi. Các hÕ s¨ tñ r¶i khöi ðây!",						--Thông báo khi hªt phø bän
	[10]="Ðþt t¤n công tiªp theo cüa ác tång s¨ b¡t ð¥u sau %d giây næa. Còn lÕi %d lßþt t¤n công tiªp!",	--Thông báo các ðþt ác tång t¤n công
	[11]="Mông Di®n Ác Tång s¨ xu¤t hi®n sau %d giây næa!",						--Thông báo Mông Diên Ác Tång s¡p xu¤t hi®n
	[12]="Mông Di®n Ác Tång ðã xu¤t hi®n!",										--Thông báo Mông Diên Ác Tång xu¤t hi®n
	[13]="Ác tång cùng Ngøy Quan Quân ðang tiªn v« phía Võ Tång Thiªu Lâm!",	--Thông báo Ác tång và Ngøy Quan Quân xu¤t hi®n
	[14]="Nhi®m vø hoàn thành, các hÕ s¨ r¶i khöi ðây sau 30 giây!",			--Thông báo hoàn thành nhi®m vø
	[15]="Võ Tång Thiªu Lâm ðã tØ nÕn. Nhi®m vø th¤t bÕi. Các hÕ s¨ r¶i khöi ðây!",	--Thông báo hoàn thành nhi®m vø
}
--******************--
x910120_g_Alies_CamID=109														--Quân ð°ng minh
x910120_g_Enemies_CamID=110														--Quân ð¸ch
--******************--
x910120_g_Attack_Time=60000														--Khoäng cách giæa 2 l¥n ác tång t¤n công
x910120_g_Boss_Appear_Time=30000												--Th¶i gian Mông Diên Ác Tång xu¤t hi®n
--******************--
x910120_g_Monk={	Index=13566,	Name="Thiªu Lâm Võ Tång",	Title="#GCao tång hµ v® Tàng Kinh Các",	Pos_X=65,	Pos_Y=108,	ScriptID=910123	}
--******************--
x910120_g_Monster={}
x910120_g_Monster[1]={	Index=13584,	Name="Ngøy Quan Quân"	}
x910120_g_Monster[2]={	Index=13575,	Name="ÐÕo Thß Ác Tång"	}
x910120_g_Monster_Pos_X={	19,	20,	21,	22,	23,	24,	25,	26,	27,	28,	29,	99,	100,	101,	102,	103,	104,	105,	106,	107,	108,	109	}
x910120_g_Monster_Pos_Y={	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,		45,		45,		45,		45,		45,		45,		45,		45,		45	}
x910120_g_Monster_ScriptID=910125												--Script Monster
x910120_g_Impact_Immue=357														--Hi®u Ñng mi­n d¸ch
--******************--
x910120_g_Trap={}																--C½ quan ph§t ðång
x910120_g_Trap[1]=	{	Index=550,	Name="Lam S¡c Ph§t Ðång C½ Quan"	}
x910120_g_Trap[2]=	{	Index=551,	Name="Løc S¡c Ph§t Ðång C½ Quan"	}
x910120_g_Trap[3]=	{	Index=552,	Name="H°ng S¡c Ph§t Ðång C½ Quan"	}
x910120_g_Trap_Pos_X1=50														--T÷a ðµ bên phäi
x910120_g_Trap_Pos_Y1=85
x910120_g_Trap_Pos_X2=78														--T÷a ðµ bên trái
x910120_g_Trap_Pos_Y2=85
x910120_g_Trap_Appear_Time=300000												--Khoäng cách giæa 2 l¥n xu¤t hi®n c½ quan
x910120_g_Trap_Exist_Time=300000												--Th¶i gian t°n tÕi c½ quan
--******************--
x910120_g_Boss=	{	Index=13593,	Name="Mông Di®n Ác Tång",	Title="VÕn Ph§t Quy Nguyên",	Pos_X=64,	Pos_Y=33,	ScriptID=910121	}
--******************--
x910120_g_Fuben_Level=8															--C¤p ðµ cüa phø bän
x910120_g_Fuben_Step=9															--Các bß¾c hoÕt ðµng cüa phø bän
x910120_g_Fuben_Start_Time=10													--Th¶i gian b¡t ð¥u cüa phø bän
x910120_g_Fuben_Attack_Timer=11													--Th¶i gian t¤n công còn lÕi
x910120_g_Attack_Step=12														--Bß¾c thông báo l¥n trß¾c
x910120_g_Last_Time=13															--Th¶i gian trß¾c ðó
x910120_g_Time_Step=14															--Ðã thông báo th¶i gian phø bän chßa
x910120_g_Attack_Count=15														--S¯ l¥n ðã t¤n công
x910120_g_Exit_Time_Fuben=16													--Th¶i gian r¶i phø bän
x910120_g_Mission_Completed=17													--Ðã hoàn thành nhi®m vø chßa (0/1)
x910120_g_Trap_Type=18															--C½ quan trß¾c ðó
x910120_g_Out_Timer=19															--Ðªm ngßþc th¶i gian r¶i phø bän
x910120_g_Scene_Back_Index=3													--ID cänh tr· ra
x910120_g_Scene_Pos_X=4															--T÷a ðµ X cänh tr· ra
x910120_g_Scene_Pos_Y=5															--T÷a ðµ Y cänh tr· ra
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910120_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910120_g_ScriptId,"Bäo hµ Tàng Kinh Các",6,0)			--Bäo hµ Tàng Kinh Các
	AddNumText(sceneId,x910120_g_ScriptId,"Ta c¥n chu¦n b¸ kÛ h½n",-1,1)		--Hüy bö yêu c¥u
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910120_OnDefaultEvent(sceneId,selfId,targetId)
local key=GetNumText()

	--******************--
	if key==1 then
	
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
		
	end
	--******************--
	if key==0 then
	
		local Check,nTip=x910120_CheckCanEnter(sceneId,selfId)
		if Check==0 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		x910120_MakeCopyScene(sceneId,selfId)									--Kh·i tÕo phø bän
		LuaFnDeleteMonster(sceneId,targetId)
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910120_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ngß¶i ch½i này không có ðµi ngû
		return 0,"Thí chü c¥n gia nh§p vào mµt ðµi ngû t¯i thi¬u #G"..x910120_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ngß¶i ch½i không phäi ðµi trß·ng
		return 0,"Chï có ðµi trß·ng m¾i có th¬ quyªt ð¸nh có tham gia hay không. Thí chú hãy g÷i ðµi trß·ng cüa thí chü ðªn nói chuy®n v¾i ti¬u tång!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910120_g_Limit_Member then					--S¯ lßþng thành viên không ðü
		return 0,"T± ðµi cüa thí chü c¥n có t¯i thi¬u #G"..x910120_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--Ðµi ngû có thành viên không · g¥n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Thí chü c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² ti¬u tång m¾i có th¬ tiªn vào bäo hµ Tàng Kinh Các!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910120_g_Need_Level then					--Có thành viên không ðü c¤p ðµ yêu c¥u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa thí chü có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c¤p ðµ không ðü c¤p #G"..x910120_g_Need_Level..", e r¢ng khó có th¬ di®t tr× Ác tång!"
		return 0,msg
	end
	--******************--
	return 1
	--******************--

end
--**********************************--
--*         Make Copy Scene        *--
--**********************************--
function x910120_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x910120_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID ðµi trß·ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910120_g_NoUserTime)					--Th¶i gian lßu phø bän khi không còn ai
	LuaFnSetCopySceneData_Timer(sceneId,x910120_g_TickTime)								--Th¶i gian phø bän
	LuaFnSetCopySceneData_Param(sceneId,0,x910120_g_CopySceneType)						--Set thông s¯ phø bän (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910120_g_ScriptId)							--ID script phø bän
	LuaFnSetCopySceneData_Param(sceneId,2,0)
	LuaFnSetCopySceneData_Param(sceneId,3,sceneId)										--Cänh tßþng hi®n tÕi
	LuaFnSetCopySceneData_Param(sceneId,4,x)											--T÷a ðµ X cüa ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,5,y)											--T÷a ðµ Y cüa ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,6,GetTeamId(sceneId,selfId))					--ID nhóm ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,7,0)
	--******************--
	for i=8,31 do
		LuaFnSetCopySceneData_Param(sceneId,i,0)										--Reset lÕi các thông s¯ cho phø bän
	end
	--******************--
	local bRetSceneID=LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!")									--S¯ bän sao quá täi
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã quá täi, ð« ngh¸ lát næa thØ lÕi!")	--Có th¬ tÕo bän sao m¾i
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--******************--

end
--**********************************--
--*      Make Copy Scene Ready     *--
--**********************************--
function x910120_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Thông báo kh·i tÕo phø bän
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid)
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910120_g_Fuben_X,x910120_g_Fuben_Y) 			--Ðßa t¤t cä thành viên nhóm ðªn phø bän
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910120_OnCopySceneTimer(sceneId,nowTime)											--Hàm này check liên tøc m²i Mili giây khi phø bän còn t°n tÕi
	
	--******************--
	x910120_CheckHaveTeam(sceneId)															--Ki¬m tra ngß¶i ch½i có trong ðµi ngû không, nªu không thì r¶i phø bän
	--******************--
	x910120_ActiveMyTrap(sceneId)															--Kích hoÕt c½ quan
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Step)					--L¤y thao tác trên phø bän
	--******************--
	if nStep~=0 then
		local My_Monk=x910120_IsMonkLive(sceneId)											--Ki¬m tra xem Thiªu Lâm Võ Tång có còn s¯ng không
		if My_Monk==0 then
			x910120_TipAllHuman(sceneId,x910120_g_Notice[15])
			x910120_KickOutAllPlayer(sceneId)												--Ðßa t¤t cä ngß¶i ch½i v« thành th¸
			return
		end
	end
	--******************--
	if nStep==0 then																		--Kh·i tÕo phø bän, kh·i tÕo NPC
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Start_Time,nowTime)				--Kh·i tÕo th¶i gian b¡t ð¥u phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Last_Time,nowTime)					--C§p nh§t th¶i gian phø bän
		x910120_CreatMyNPC(sceneId)															--Kh·i tÕo NPC ð¥u
	elseif nStep==1 then
		local nTick=x910120_TickTimer(sceneId,nowTime)
		local Next_Attack=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer)	--L¤y th¶i gian còn lÕi cho ðþt t¤n công tiªp theo
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,Next_Attack-nTick)	--C§p nh§t th¶i gian t¤n công tiªp theo
		x910120_ShowNoticesFubenTime(sceneId,nowTime)										--Hi®n thông báo th¶i gian phø bän
		x910120_ShowNoticesAttackTime(sceneId,Next_Attack-nTick)							--Hi®n thông báo ðþt t¤n công tiªp theo
		if Next_Attack-nTick<=0 then														--Ðã ðªn gi¶ t¤n công
			x910120_CreatMyTrap(sceneId)													--Kh·i tÕo c½ quan
			x910120_CreatEvilMonster(sceneId)												--Kh·i tÕo ác tång
		end
	elseif nStep==2 then
		local nTick=x910120_TickTimer(sceneId,nowTime)
		x910120_ShowNoticesFubenTime(sceneId,nowTime)										--Hi®n thông báo th¶i gian phø bän
		local nMonsterLeft=x910120_CheckHaveMonsterLeft(sceneId)							--Ki¬m tra s¯ quái còn lÕi
		if nMonsterLeft>0 then																--Nªu Ngøy Quan Quân và Ác Tång vçn chßa chªt
			return
		end
		local Time_Left=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer)	--L¤y th¶i gian còn lÕi cho ðþt t¤n công tiªp theo
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,Time_Left-nTick)	--C§p nh§t th¶i gian t¤n công tiªp theo
		x910120_ShowNoticesBossAppearTime(sceneId,Time_Left-nTick)							--Hi®n thông báo th¶i gian xu¤t hi®n Boss
		if Time_Left-nTick<=0 then															--Ðã ðªn gi¶ ra Boss
			x910120_CreatMyBoss(sceneId)													--Kh·i tÕo Boss
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,3)						--C§p nh§t bß¾c hoÕt ðµng phø bän
		end
	elseif nStep==3 then
		local Total_Boss_Left=x910120_CheckHaveBossLeft(sceneId)							--Ki¬m tra Boss còn s¯ng không. Nªu không còn thì th¡ng
		local nTick=x910120_TickTimer(sceneId,nowTime)
		x910120_ShowNoticesFubenTime(sceneId,nowTime)										--Hi®n thông báo th¶i gian phø bän
		if Total_Boss_Left==0 then
			x910120_OnCompleteMission(sceneId)												--Hoàn thành nhi®m vø
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,4)						--Không làm gì næa
			return
		end
	elseif nStep==4 then
		local Is_Winner=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Mission_Completed)	--Nhi®m vø ðã hoàn thành chßa
		if Is_Winner==0 then
			x910120_TipAllHuman(sceneId,x910120_g_Notice[9])								--Thông báo nhi®m vø th¤t bÕi
			x910120_KickOutAllPlayer(sceneId)												--Ðßa t¤t cä ngß¶i ch½i v« thành th¸													
		else
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,5)						--Tính gi¶ r¶i phø bän
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Out_Timer,30000)					--C§p nh§t th¶i gian r¶i phø bän
		end
	elseif nStep==5 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Out_Timer)
		local nTick=x910120_TickTimer(sceneId,nowTime)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			x910120_KickOutAllPlayer(sceneId)												--Ðßa ngß¶i ch½i ra khöi map
		end
	end
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910120_OnPickUpItem(sceneId,selfId,Item_Pos)

	--******************--
	local Item_Infor=GetBagItemTransfer(sceneId,selfId,Item_Pos)
	local Player_Name=GetName(sceneId,selfId)
	--******************--
	local str=format("#PLû ác tång ð¯n mÕt dám trµm kinh thß trong #GTàng Kinh Các#P cüa Thiªu Lâm phái. #{_INFOUSR%s} cùng ð°ng ðµi#P c¤t công ðªn d©p loÕn. #GMông Di®n Ác Tång cùng bè lû#P phäi giao lÕi #{_INFOMSG%s}#P ð¬ bäo toàn tính mÕng!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910120_OnPlayerEnter(sceneId,selfId)

	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910120_g_Fuben_X,x910120_g_Fuben_Y)	--Ð£t ði¬m h°i sinh tÕi phø bän
	--******************--
	SetUnitCampID(sceneId,selfId,selfId,x910120_g_Alies_CamID)								--C§p nh§t phe ð°ng minh
	--******************--
	
end
--**********************************--
--*          On Human Die          *--
--**********************************--
function x910120_OnHumanDie(sceneId,selfId,killerId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*         On Enter Area          *--
--**********************************--
function x910120_OnEnterArea(sceneId,selfId)

	--******************--
	local Scene=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Back_Index)
	local x=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Pos_X)
	local y=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Pos_Y)
	CallScriptFunction(400900,"TransferFunc",sceneId,selfId,Scene,x,y)
	--******************--
	
end
--**********************************--
--*          On Leave Area         *--
--**********************************--
function x910120_OnLeaveArea(sceneId,selfId)

	--******************--
	--******************--

end
--**********************************--
--*          Is Monk Live          *--
--**********************************--
function x910120_IsMonkLive(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if GetName(sceneId,MonsterId)==x910120_g_Monk.Name then
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*           Tick Timer           *--
--**********************************--
function x910120_TickTimer(sceneId,nowTime)
	
	--******************--
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Last_Time)			--L¤y th¶i gian trß¾c ðó
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Last_Time,nowTime)					--C§p nh§t th¶i gian hi®n tÕi cüa phø bän
	return nowTime-Last_Time															--L¤y mili giây hi®n tÕi tính t× th¶i gian trß¾c
	--******************--
	
end
--**********************************--
--*        Check Have Team         *--
--**********************************--
function x910120_CheckHaveTeam(sceneId)
	
	--******************--
	local Scene=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Back_Index)
	local x=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Pos_X)
	local y=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Pos_Y)
	local Old_Team_Index=LuaFnGetCopySceneData_Param(sceneId,6)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 and GetTeamId(sceneId,nHumanId)~=Old_Team_Index then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không · trong nhóm, nhi®m vø th¤t bÕi!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--Ðßa ngß¶i ch½i tr· v« cänh trß¾c ðó
		end
	end
	--******************--
	
end
--**********************************--
--*      Check Have Boss Left      *--
--**********************************--
function x910120_CheckHaveBossLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then
			for j=1,12 do
				if GetName(sceneId,MonsterId)==x910120_g_Boss.Name then
					return 1
				end
			end
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*    Check Have Monster Left     *--
--**********************************--
function x910120_CheckHaveMonsterLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910120_g_Monster[1].Name or GetName(sceneId,MonsterId)==x910120_g_Monster[2].Name then
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*      On Complete Mission       *--
--**********************************--
function x910120_OnCompleteMission(sceneId)
	
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Mission_Completed,1)					--C§p nh§t chßa hoàn thành nhi®m vø
	--******************--
	x910120_TipAllHuman(sceneId,x910120_g_Notice[1])
	x910120_TipAllHuman(sceneId,x910120_g_Notice[14])
	--******************--
	
end
--**********************************--
--*      Kick Out All Player       *--
--**********************************--
function x910120_KickOutAllPlayer(sceneId)
	
	--******************--
	local Scene=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Back_Index)
	local x=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Pos_X)
	local y=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Scene_Pos_Y)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--Ðßa ngß¶i ch½i tr· v« cänh trß¾c ðó
		end
	end
	--******************--
	
end
--**********************************--
--*          Creat My Boss         *--
--**********************************--
function x910120_CreatMyBoss(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Level)	--L¤y c¤p ðµ phø bän
	--******************--
	local Boss_Index=LuaFnCreateMonster(sceneId,x910120_g_Boss.Index+nDec,x910120_g_Boss.Pos_X,x910120_g_Boss.Pos_Y,27,0,x910120_g_Boss.ScriptID)	--Kh·i tÕo Mông Di®n Ác Tång
	SetCharacterName(sceneId,Boss_Index,x910120_g_Boss.Name)
	SetCharacterTitle(sceneId,Boss_Index,x910120_g_Boss.Title)
	--******************--
	
end
--**********************************--
--*     Delete All Old Monster     *--
--**********************************--
function x910120_DeleteAllOldMonster(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then	
			SetCharacterDieTime(sceneId,MonsterId,100)					
		end
	end
	--******************--
	
end
--**********************************--
--*         Active My Trap         *--
--**********************************--
function x910120_ActiveMyTrap(sceneId)
	
	--******************--
	local nTrap=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Trap_Type)
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910120_g_Monster[1].Name or GetName(sceneId,MonsterId)==x910120_g_Monster[2].Name or GetName(sceneId,MonsterId)==x910120_g_Boss.Name) then	
			local nImpact
			if nTrap==1 then	
				nImpact=16231
			elseif nTrap==2 then
				nImpact=15671
			else
				nImpact=2610
			end
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,MonsterId,nImpact)<1 then
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,nImpact,0)
			end
			local x,y=GetWorldPos(sceneId,MonsterId)
			if floor(sqrt((x-x910120_g_Monk.Pos_X)*(x-x910120_g_Monk.Pos_X)+(y-x910120_g_Monk.Pos_Y)*(y-x910120_g_Monk.Pos_Y)))<=5 then
				SetNPCAIType(sceneId,MonsterId,27)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Creat My Trap         *--
--**********************************--
function x910120_CreatMyTrap(sceneId)
	
	--******************--
	if x910120_HaveTrap(sceneId)==1 then										--Chßa ðªn gi¶ kích hoÕt c½ quan
		return
	end
	--******************--
	local ran=random(3)
	local Trap_Index=LuaFnCreateMonster(sceneId,x910120_g_Trap[ran].Index,x910120_g_Trap_Pos_X1,x910120_g_Trap_Pos_Y1,3,0,-1)	--Kh·i tÕo c½ quan
	SetCharacterName(sceneId,Trap_Index,x910120_g_Trap[ran].Name)				--C§p nh§t tên c½ quan
	SetCharacterDieTime(sceneId,Trap_Index,x910120_g_Trap_Exist_Time)			--C§p nh§t th¶i gian t°n tÕi c½ quan
	local Trap_Index=LuaFnCreateMonster(sceneId,x910120_g_Trap[ran].Index,x910120_g_Trap_Pos_X2,x910120_g_Trap_Pos_Y2,3,0,-1)	--Kh·i tÕo c½ quan
	SetCharacterName(sceneId,Trap_Index,x910120_g_Trap[ran].Name)				--C§p nh§t tên c½ quan
	SetCharacterDieTime(sceneId,Trap_Index,x910120_g_Trap_Exist_Time)			--C§p nh§t th¶i gian t°n tÕi c½ quan
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Trap_Type,ran)				--C§p nh§t loÕi c½ quan v×a ra
	--******************--
	
end
--**********************************--
--*            Have Trap           *--
--**********************************--
function x910120_HaveTrap(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910120_g_Trap[1].Name or GetName(sceneId,MonsterId)==x910120_g_Trap[2].Name or GetName(sceneId,MonsterId)==x910120_g_Trap[3].Name) then	
			return 1				
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*         Creat My NPC           *--
--**********************************--
function x910120_CreatMyNPC(sceneId)
	
	--******************--
	x910120_DeleteAllOldMonster(sceneId)									--Just fix a bug...
	--******************--
	local nSum=0
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		nSum=nSum+GetLevel(sceneId,nHumanId)
	end
	--******************--
	local Current_Level=floor(nSum/nHumanCount)								--Level cüa Boss trong phø bän
	local nDec
	if Current_Level>=40 and Current_Level<50 then
		nDec=0
	elseif Current_Level>=50 and Current_Level<60 then
		nDec=1
	elseif Current_Level>=60 and Current_Level<70 then
		nDec=2
	elseif Current_Level>=70 and Current_Level<80 then
		nDec=3
	elseif Current_Level>=80 and Current_Level<90 then
		nDec=4
	elseif Current_Level>=90 and Current_Level<100 then
		nDec=5
	elseif Current_Level>=100 and Current_Level<110 then
		nDec=6
	else
		nDec=7
	end
	--******************--
	local Monk_Index=LuaFnCreateMonster(sceneId,x910120_g_Monk.Index+nDec,x910120_g_Monk.Pos_X,x910120_g_Monk.Pos_Y,5,0,x910120_g_Monk.ScriptID)	---Kh·i tÕo NPC Thiªu Lâm Võ Tång
	SetCharacterName(sceneId,Monk_Index,x910120_g_Monk.Name)				--C§p nh§t tên Thiªu Lâm Võ Tång
	SetCharacterTitle(sceneId,Monk_Index,x910120_g_Monk.Title)				--C§p nh§t Title cho Thiªu Lâm Võ Tång
	SetMonsterFightWithNpcFlag(sceneId,Monk_Index,1)
	SetUnitCampID(sceneId,Monk_Index,Monk_Index,x910120_g_Alies_CamID)		--TrÕng thái chiªn ð¤u cüa Thiªu Lâm Võ Tång
	--******************--
	x910120_CreatMyTrap(sceneId)											--TÕo c½ quan
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,1)				--C§p nh§t bß¾c hoÕt ðµng phø bän
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Level,nDec)			--C§p nh§t c¤p ðµ phø bän
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,x910120_g_Attack_Time)	--C§p nh§t th¶i gian t¤n công tiªp theo
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Count,0)			--C§p nh§t s¯ l¥n t¤n công
	--******************--
	
end
--**********************************--
--*       Creat Evil Monster       *--
--**********************************--
function x910120_CreatEvilMonster(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Level)	--L¤y c¤p ðµ phø bän
	--******************--
	for i=1,22 do
		local Monster_Index
		if i==6 or i==17 then
			Monster_Index=LuaFnCreateMonster(sceneId,x910120_g_Monster[2].Index+nDec,x910120_g_Monster_Pos_X[i],x910120_g_Monster_Pos_Y[i],10,0,x910120_g_Monster_ScriptID)	---Kh·i tÕo ÐÕo Thß Ác Tång
			SetCharacterName(sceneId,Monster_Index,x910120_g_Monster[2].Name)		--C§p nh§t tên ÐÕo Thß Ác Tång
			LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,x910120_g_Impact_Immue,0)	--Hi®u Ñng mi­n d¸ch
		else
			Monster_Index=LuaFnCreateMonster(sceneId,x910120_g_Monster[1].Index+nDec,x910120_g_Monster_Pos_X[i],x910120_g_Monster_Pos_Y[i],10,0,-1)	---Kh·i tÕo Ngøy Quan Quân
			SetCharacterName(sceneId,Monster_Index,x910120_g_Monster[1].Name)		--C§p nh§t tên Ngøy Quan Quân
		end
		SetMonsterFightWithNpcFlag(sceneId,Monster_Index,1)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,x910120_g_Enemies_CamID)	--TrÕng thái chiªn ð¤u cüa Monster
		SetPatrolId(sceneId,Monster_Index,i-1)										--C§p nh§t v¸ trí di chuy¬n
	end
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,0)					--C§p nh§t lÕi trÕng thái thông báo
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,x910120_g_Attack_Time)	--C§p nh§t cho ðþt t¤n công tiªp theo
	local Attacked=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Count)		--S¯ l¥n ðã t¤n công
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Count,Attacked+1)			--C§p nh§t s¯ l¥n t¤n công
	if Attacked>=10 then
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,2)					--C§p nh§t bß¾c hoÕt ðµng phø bän
	end
	--******************--
	
end
--**********************************--
--*    Show Notices Fuben Time     *--
--**********************************--
function x910120_ShowNoticesFubenTime(sceneId,nowTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Time_Step)			--L¤y s¯ thông báo l¥n trß¾c
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Start_Time)		--L¤y th¶i gian b¡t ð¥u phø bän
	if nowTime-nTime>=5000 and nStep<1 then											--Thông báo ðóng phø bän sau 30 phút
		x910120_TipAllHuman(sceneId,x910120_g_Notice[2])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,1)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=900000 and nStep<2 then									--Thông báo còn 15 phút
		x910120_TipAllHuman(sceneId,x910120_g_Notice[3])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,2)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=1200000 and nStep<3 then									--Thông báo còn 5 phút
		x910120_TipAllHuman(sceneId,x910120_g_Notice[4])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,3)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=1740000 and nStep<4 then									--Thông báo còn 1 phút
		x910120_TipAllHuman(sceneId,x910120_g_Notice[5])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,4)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=1770000 and nStep<5 then									--Thông báo còn 30 giây
		x910120_TipAllHuman(sceneId,x910120_g_Notice[6])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,5)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=1785000 and nStep<6 then									--Thông báo còn 15 giây
		x910120_TipAllHuman(sceneId,x910120_g_Notice[7])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,6)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=1795000 and nStep<7 then										--Thông báo còn 5 giây
		x910120_TipAllHuman(sceneId,x910120_g_Notice[8])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,7)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=1800000 and nStep<8 then									--Thông báo ðã hªt th¶i gian phø bän
		x910120_TipAllHuman(sceneId,x910120_g_Notice[9])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,9)					--C§p nh§t ðã thông báo l¥n này
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,4)					--Hªt th¶i gian, nhäy sang bß¾c ðßa ngß¶i ch½i tr· v« cänh cû
	end
	--******************--

end
--**********************************--
--*    Show Notices Attack Time    *--
--**********************************--
function x910120_ShowNoticesAttackTime(sceneId,nTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Step)			--L¤y s¯ thông báo l¥n trß¾c
	local nAttacked=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Count)		--L¤y s¯ l¥n ðã t¤n công
	if nTime<=55000 and nStep<1 then												--Thông báo 1 phút næa ra ðþt t¤n công tiªp theo
		local str=format(x910120_g_Notice[10],60,10-nAttacked)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,1)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=30000 and nStep<2 then											--Thông báo 30 giây næa ra ðþt t¤n công tiªp theo
		local str=format(x910120_g_Notice[10],30,10-nAttacked)							
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,2)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=15000 and nStep<3 then											--Thông báo 15 giây næa ra ðþt t¤n công tiªp theo
		local str=format(x910120_g_Notice[10],15,10-nAttacked)							
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,3)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=5000 and nStep<4 then												--Thông báo 5 giây næa ra ðþt t¤n công tiªp theo
		local str=format(x910120_g_Notice[10],5,10-nAttacked)							
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,4)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=0 and nStep<5 then												--Thông báo Ác tång và Ngøy Quan Quân ðã xu¤t hi®n
		x910120_TipAllHuman(sceneId,x910120_g_Notice[13])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,5)				--C§p nh§t ðã thông báo l¥n này
	end
	--******************--

end
--**********************************--
--*  Show Notice Boss Appear Time  *--
--**********************************--
function x910120_ShowNoticesBossAppearTime(sceneId,nTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Step)			--L¤y s¯ thông báo l¥n trß¾c
	if nTime<=60000 and nStep<1 then												--Thông báo 1 phút næa Mông Di®n Ác Tång s¨ xu¤t hi®n
		local str=format(x910120_g_Notice[11],60)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,1)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=30000 and nStep<2 then											--Thông báo 30 giây næa Mông Di®n Ác Tång s¨ xu¤t hi®n
		local str=format(x910120_g_Notice[11],30)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,2)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=15000 and nStep<3 then											--Thông báo 15 giây næa Mông Di®n Ác Tång s¨ xu¤t hi®n
		local str=format(x910120_g_Notice[11],15)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,3)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=5000 and nStep<4 then												--Thông báo 5 giây næa Mông Di®n Ác Tång s¨ xu¤t hi®n
		local str=format(x910120_g_Notice[11],5)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,4)				--C§p nh§t ðã thông báo l¥n này
	elseif nTime<=0 and nStep<5 then												--Thông báo Mông Di®n Ác Tång ðã xu¤t hi®n
		x910120_TipAllHuman(sceneId,x910120_g_Notice[12])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,5)				--C§p nh§t ðã thông báo l¥n này
	end
	--******************--

end
--**********************************--
--*          Tip All Human         *--
--**********************************--
function x910120_TipAllHuman(sceneId,nTip)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1  do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,PlayerId)
		end
	end
	--******************--

end