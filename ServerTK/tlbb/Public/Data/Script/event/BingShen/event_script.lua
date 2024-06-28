--Phø bän Binh Thánh KÏ Tr§n
--Author: Hoàng Steven

--******************--
x910201_g_ScriptId=910201
--******************--
x910201_g_CopySceneType=FUBEN_BINGSHENZHEN										--Các tham s¯ cüa phø bän. Tham khäo "ScriptGlobal.lua"
--******************--
x910201_g_TickTime=1															--Th¶i gian hi®n tÕi cüa phø bän
x910201_g_NoUserTime=5000														--Th¶i gian lßu lÕi phø bän khi không còn ai trong phø bän (Ð½n v¸ Mili Giây)
x910201_g_Fuben_X=126															--Pos X ði¬m h°i sinh phø bän
x910201_g_Fuben_Y=142															--Pos Y ði¬m h°i sinh phø bän
x910201_g_Limit_Member=3														--S¯ lßþng thành viên t¯i thi¬u trong ðµi ngû
x910201_g_Limit_FuBenTimes = 3 -- so lan tham gia phu ban
x910201_g_Fuben_Scene="BattleField.nav"											--Load file Scene
--******************--
x910201_g_Need_Level=70															--Level t¯i thi¬u tham gia phø bän
--******************--
x910201_g_Notice=
{
	[1]="Phø bän hi®n tÕi s¨ ðóng sau 30 phút næa!",							--Thông báo khi còn 30 phút
	[2]="Phø bän hi®n tÕi s¨ ðóng sau 15 phút næa!",							--Thông báo khi còn 15 phút
	[3]="Phø bän hi®n tÕi s¨ ðóng sau 5 phút næa!",								--Thông báo khi còn 5 phút
	[4]="Phø bän hi®n tÕi s¨ ðóng sau 1 phút næa!",								--Thông báo khi còn 1 phút
	[5]="Phø bän hi®n tÕi s¨ ðóng sau 30 giây næa!",							--Thông báo khi còn 30 giây
	[6]="Phø bän hi®n tÕi s¨ ðóng sau 15 giây næa!",							--Thông báo khi còn 15 giây
	[7]="Phø bän hi®n tÕi s¨ ðóng sau 5 giây næa!",								--Thông báo khi còn 5 giây
	[8]="Nhi®m vø hoàn thành, các hÕ s¨ r¶i khöi ðây sau 30 giây!",				--Thông báo hoàn thành nhi®m vø
	[9]="Phø bän hi®n tÕi s¨ ðóng sau 2 gi¶ næa!",								--Thông báo khi còn 120 phút
	[10]="Phø bän hi®n tÕi s¨ ðóng sau 1 gi¶ næa!",								--Thông báo khi còn 60 phút
}
--******************--
x910201_g_NPC	=	{	Index=10012,	Name="Cao Dß½ng",	Pos_X=127,	Pos_Y=146,	ScriptID=910207	}	--NPC Cao Dß½ng
--******************--
x910201_g_Boss=
{
	["Xiao Yi Feng"]		=	{	Index=15006,	Name="Tiêu D§t Phong",			Title="T§t Nhß Phong",		Pos_X=51,	Pos_Y=54,	AIScript=265,	ScriptID=910202		},	--Tiêu D§t Phong
	["Xiao Ru Wei"]			=	{	Index=15031,	Name="Tiêu Nhß Úy",				Title="T× Nhß Lâm",			Pos_X=174,	Pos_Y=100,	AIScript=266,	ScriptID=910204		},	--Tiêu Nhß Úy
	["Xiao Ru Jun"]			=	{	Index=15026,	Name="Tiêu Nhß Quân",			Title="T× Nhß Lâm",			Pos_X=174,	Pos_Y=37,	AIScript=266,	ScriptID=910203		},	--Tiêu Nhß Quân
	["Ye Lv Yan"]			=	{	Index=15071,	Name="Gia Lu§t Di­m",			Title="Xâm Lßþc Nhß Höa",	Pos_X=193,	Pos_Y=195,	AIScript=267,	ScriptID=910205		},	--Gia Lu§t Di­m
	["Ye Lv Lian Cheng"]	=	{	Index=15086,	Name="Gia Lu§t Liên Thành",		Title="B¤t Ðµng Nhß S½n",	Pos_X=53,	Pos_Y=203,	AIScript=268,	ScriptID=910206		},	--Gia Lu§t Liên Thành
}
--******************--
x910201_g_Fuben_Level=8															--C¤p ðµ cüa phø bän
x910201_g_Fuben_Step=9															--Các bß¾c hoÕt ðµng cüa phø bän
x910201_g_Fuben_Start_Time=10													--Th¶i gian b¡t ð¥u cüa phø bän
x910201_g_Attack_Step=11														--Bß¾c thông báo l¥n trß¾c
x910201_g_Last_Time=12															--Th¶i gian trß¾c ðó
x910201_g_Time_Step=13															--Ðã thông báo th¶i gian phø bän chßa
x910201_g_Call_Timer=14															--Th¶i gian phøc sinh cüa Tiêu Nhß Quân ho£c Tiêu Nhß Úy khi ð°ng b÷n còn s¯ng
x910201_g_Out_Timer=15															--Th¶i gian ra ngoài phø bän
x910201_g_Scene_Back_Index=3													--ID cänh tr· ra
x910201_g_Scene_Pos_X=4															--T÷a ðµ X cänh tr· ra
x910201_g_Scene_Pos_Y=5															--T÷a ðµ Y cänh tr· ra
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910201_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910201_g_ScriptId,"T§p kích b¤t ng¶",6,0)				--Vào phø bän Binh Thánh KÏ Tr§n
	AddNumText(sceneId,x910201_g_ScriptId,"Ta c¥n chu¦n b¸ kÛ h½n",-1,1)		--Hüy bö yêu c¥u
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910201_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	if GetNumText()==1 then
	
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
		
	end
	--******************--
	if GetNumText()==0 then
	
		local Check,nTip=x910201_CheckCanEnter(sceneId,selfId)
		if Check==0 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		x910201_MakeCopyScene(sceneId,selfId)									--Kh·i tÕo phø bän
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910201_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ngß¶i ch½i này không có ðµi ngû
		return 0,"Các hÕ c¥n gia nh§p vào mµt ðµi ngû t¯i thi¬u #G"..x910201_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ngß¶i ch½i không phäi ðµi trß·ng
		return 0,"Chï có ðµi trß·ng m¾i có th¬ quyªt ð¸nh có tham gia hay không. Các hÕ hãy g÷i ðµi trß·ng cüa ðªn nói chuy®n v¾i tÕi hÕ!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910201_g_Limit_Member then					--S¯ lßþng thành viên không ðü
		return 0,"T± ðµi cüa các hÕ c¥n có t¯i thi¬u #G"..x910201_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--Ðµi ngû có thành viên không · g¥n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Các hÕ c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² tÕi hÕ m¾i có th¬ tiªn vào Binh Thánh KÏ Tr§n!"
	end
	--******************--
	if GetMissionData(sceneId,selfId,MD_BINGSHEN_DAYTIME)==GetDayTime() then	--Ðã tham gia phø bän hôm nay
		--return 0,"Ngày hôm nay các hÕ ðã tham gia phø bän này r°i!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910201_g_Need_Level  then				--Có thành viên không ðü c¤p ðµ yêu c¥u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c¤p ðµ không ðü c¤p #G"..x910201_g_Need_Level..", e r¢ng khó có th¬ bäo toàn tính mÕng!"
		return 0,msg
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	
	local CurDayTime = GetDayTime()
	
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		local lastTime = GetMissionData( sceneId, PlayerId, MD_BINGSHEN_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end
		
		if lastDayCount >= x910201_g_Limit_FuBenTimes  then	--Có thành viên ðã tham gia phø bän này r°i
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." trong ngày hôm nay ðã tham gia phø bän này r°i!"
		return 0,msg
	end
	--******************--
	return 1
	--******************--

end
--**********************************--
--*         Make Copy Scene        *--
--**********************************--
function x910201_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x910201_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID ðµi trß·ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910201_g_NoUserTime)					--Th¶i gian lßu phø bän khi không còn ai
	LuaFnSetCopySceneData_Timer(sceneId,x910201_g_TickTime)								--Th¶i gian phø bän
	LuaFnSetCopySceneData_Param(sceneId,0,x910201_g_CopySceneType)						--Set thông s¯ phø bän (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910201_g_ScriptId)							--ID script phø bän
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
function x910201_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Thông báo kh·i tÕo phø bän
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid)
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910201_g_Fuben_X,x910201_g_Fuben_Y) 			--Ðßa t¤t cä thành viên nhóm ðªn phø bän
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910201_OnCopySceneTimer(sceneId,nowTime)											--Hàm này check liên tøc m²i Mili giây khi phø bän còn t°n tÕi
	
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Fuben_Step)					--L¤y thao tác trên phø bän
	--******************--
	x910201_ShowNoticesFubenTime(sceneId,nowTime)											--Hi®n thông báo th¶i gian phø bän
	local nTick=x910201_TickTimer(sceneId,nowTime)
	--******************--
	if nStep==0 then
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Start_Time,nowTime)				--Kh·i tÕo th¶i gian b¡t ð¥u phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Last_Time,nowTime)					--C§p nh§t th¶i gian phø bän
		x910201_CreatMyNPC(sceneId)															--Kh·i tÕo NPC Cao Dß½ng
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,1)							--C§p nh§t bß¾c hoÕt ðµng phø bän
	elseif nStep==1 then																	
		x910201_CreateBoss(sceneId,"Xiao Yi Feng")											--Kh·i tÕo Tiêu D§t Phong
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C§p nh§t bß¾c hoÕt ðµng phø bän
	elseif nStep==2 then
		x910201_CreateBoss(sceneId,"Xiao Ru Wei")											--Kh·i tÕo Tiêu Nhß Úy
		x910201_CreateBoss(sceneId,"Xiao Ru Jun")											--Kh·i tÕo Tiêu Nhß Quân
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C§p nh§t bß¾c hoÕt ðµng phø bän
	elseif nStep==3 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Call_Timer)				--L¤y th¶i gian g÷i Boss
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,nTime-nTick)				--C§p nh§t lÕi th¶i gian
		if nTime-nTick<=0 then
			if x910201_CheckBossLeft(sceneId,selfId,"Xiao Ru Jun")==1 then					--Ki¬m tra nªu còn Tiêu Nhß Quân
				x910201_CreateBoss(sceneId,"Xiao Ru Wei")									--Kh·i tÕo Tiêu Nhß Úy
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,5000)				--C§p nh§t th¶i gian g÷i anh em Tiêu Nhß Quân, Tiêu Nhß Úy
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)				--C§p nh§t bß¾c hoÕt ðµng phø bän
			elseif x910201_CheckBossLeft(sceneId,selfId,"Xiao Ru Wei")==1 then				--Ki¬m tra nªu còn Tiêu Nhß Úy
				x910201_CreateBoss(sceneId,"Xiao Ru Jun")									--Kh·i tÕo Tiêu Nhß Quân
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,5000)				--C§p nh§t th¶i gian g÷i anh em Tiêu Nhß Quân, Tiêu Nhß Úy
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)				--C§p nh§t bß¾c hoÕt ðµng phø bän
			end
		end
	elseif nStep==4 then
		x910201_CreateBoss(sceneId,"Ye Lv Yan")												--Kh·i tÕo Gia Lu§t Di­m
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C§p nh§t bß¾c hoÕt ðµng phø bän
	elseif nStep==5 then
		x910201_CreateBoss(sceneId,"Ye Lv Lian Cheng")										--Kh·i tÕo Gia Lu§t Liên Thanh
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C§p nh§t bß¾c hoÕt ðµng phø bän
	elseif nStep==6 then
		x910201_TipAllHuman(sceneId,x910201_g_Notice[8])									--Thông báo hoàn thành nhi®m vø
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,8)							--C§p nh§t bß¾c hoÕt ðµng phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Out_Timer,30000)						--C§p nh§t th¶i gian r¶i phø bän
	elseif nStep==7 then
		x910201_KickOutAllPlayer(sceneId)													--Ðßa t¤t cä ngß¶i ch½i v« thành th¸
	elseif nStep==8 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Out_Timer)
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,7)						--C§p nh§t bß¾c hoÕt ðµng phø bän
		end
	end
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910201_OnPickUpItem(sceneId,selfId,Item_Pos)

	--******************--
	local Item_Infor=GetBagItemTransfer(sceneId,selfId,Item_Pos)
	local Player_Name=GetName(sceneId,selfId)
	--******************--
	local str=format("#PQuá phçn nµ v¾i cänh cß¶ng hào ác bá áp bÑc, #{_INFOUSR%s} cùng ð°ng ðôi #P t¾i sào huy®t #GBinh Thánh KÏ Tr§n#P cüa ð¸ch, kh± chiªn ác li®t. Chiªn th¡ng tr· v« còn mang theo ðßþc #{_INFOMSG%s}#P. Th§t ðáng ngßÞng mµ!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910201_OnPlayerEnter(sceneId,selfId)

	--******************--
	local lastTime = GetMissionData( sceneId, selfId, MD_BINGSHEN_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_BINGSHEN_DAYTIME, lastTime )
	
	--SetMissionData(sceneId,selfId,MD_BINGSHEN_DAYTIME,GetDayTime())							--Ðánh d¤u hôm nay ðã tham gia phø bän
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910201_g_Fuben_X,x910201_g_Fuben_Y)	--Ð£t ði¬m h°i sinh tÕi phø bän
	--******************--
	
end
--**********************************--
--*          On Human Die          *--
--**********************************--
function x910201_OnHumanDie(sceneId,selfId,killerId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*        Check Boss Left         *--
--**********************************--
function x910201_CheckBossLeft(sceneId,selfId,Boss)

	--******************--
	for i,Monster in x910203_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910201_g_Boss[Boss].Name then
				return 1
			end
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*           Tick Timer           *--
--**********************************--
function x910201_TickTimer(sceneId,nowTime)
	
	--******************--
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Last_Time)			--L¤y th¶i gian trß¾c ðó
	LuaFnSetCopySceneData_Param(sceneId,x910201_g_Last_Time,nowTime)					--C§p nh§t th¶i gian hi®n tÕi cüa phø bän
	return nowTime-Last_Time															--L¤y mili giây hi®n tÕi tính t× th¶i gian trß¾c
	--******************--
	
end
--**********************************--
--*      Kick Out All Player       *--
--**********************************--
function x910201_KickOutAllPlayer(sceneId)
	
	--******************--
	local Scene=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Scene_Back_Index)
	local x=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Scene_Pos_X)
	local y=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Scene_Pos_Y)
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
--*         Creat My NPC           *--
--**********************************--
function x910201_CreatMyNPC(sceneId)
	
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
	if Current_Level>=70 and Current_Level<80 then
		nDec=0
	elseif Current_Level>=80 and Current_Level<90 then
		nDec=1
	elseif Current_Level>=90 and Current_Level<100 then
		nDec=2
	elseif Current_Level>=100 and Current_Level<110 then
		nDec=3
	else
		nDec=4
	end
	--******************--
	local NPC_Index=LuaFnCreateMonster(sceneId,x910201_g_NPC.Index+nDec,x910201_g_NPC.Pos_X,x910201_g_NPC.Pos_Y,3,0,x910201_g_NPC.ScriptID)	---Kh·i tÕo NPC Cao Dß½ng
	SetCharacterName(sceneId,NPC_Index,x910201_g_NPC.Name)				--C§p nh§t tên Cao Dß½ng
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Level,nDec)		--C§p nh§t c¤p ðµ phø bän
	LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,5000)		--C§p nh§t th¶i gian g÷i anh em Tiêu Nhß Quân, Tiêu Nhß Úy
	--******************--
	
end
--**********************************--
--*    Show Notices Fuben Time     *--
--**********************************--
function x910201_ShowNoticesFubenTime(sceneId,nowTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Time_Step)			--L¤y s¯ thông báo l¥n trß¾c
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Fuben_Start_Time)		--L¤y th¶i gian b¡t ð¥u phø bän
	if nowTime-nTime>=5000 and nStep<1 then											--Thông báo ðóng phø bän sau 120 phút
		x910201_TipAllHuman(sceneId,x910201_g_Notice[9])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,1)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=3600000 and nStep<2 then									--Thông báo còn 60 phút
		x910201_TipAllHuman(sceneId,x910201_g_Notice[10])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,2)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=5400000 and nStep<3 then									--Thông báo còn 30 phút
		x910201_TipAllHuman(sceneId,x910201_g_Notice[1])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,3)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=6300000 and nStep<4 then									--Thông báo còn 15 phút
		x910201_TipAllHuman(sceneId,x910201_g_Notice[2])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,4)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=6900000 and nStep<5 then									--Thông báo còn 5 phút
		x910201_TipAllHuman(sceneId,x910201_g_Notice[3])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,5)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=7140000 and nStep<6 then									--Thông báo còn 1 phút
		x910201_TipAllHuman(sceneId,x910201_g_Notice[4])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,6)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=7170000 and nStep<7 then									--Thông báo còn 30 giây
		x910201_TipAllHuman(sceneId,x910201_g_Notice[5])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,7)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=7185000 and nStep<8 then									--Thông báo còn 15 giây
		x910201_TipAllHuman(sceneId,x910201_g_Notice[6])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,8)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=7195000 and nStep<9 then									--Thông báo còn 5 giây
		x910201_TipAllHuman(sceneId,x910201_g_Notice[7])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,9)					--C§p nh§t ðã thông báo l¥n này
	elseif nowTime-nTime>=7200000 and nStep<10 then									--Thông báo ðã hªt th¶i gian phø bän
		x910201_TipAllHuman(sceneId,x910201_g_Notice[8])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,10)					--C§p nh§t ðã thông báo l¥n này
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,7)					--Hªt th¶i gian, nhäy sang bß¾c ðßa ngß¶i ch½i tr· v« cänh cû
	end
	--******************--

end
--**********************************--
--*           Create Boss          *--
--**********************************--
function x910201_CreateBoss(sceneId,Boss_Array)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Fuben_Level)			--L¤y c¤p ðµ phø bän
	--******************--
	local Boss_Index=LuaFnCreateMonster(sceneId,x910201_g_Boss[Boss_Array].Index+nDec,x910201_g_Boss[Boss_Array].Pos_X,x910201_g_Boss[Boss_Array].Pos_Y,27,x910201_g_Boss[Boss_Array].AIScript,x910201_g_Boss[Boss_Array].ScriptID)	--Kh·i tÕo Tiêu D§t Phong
	SetCharacterName(sceneId,Boss_Index,x910201_g_Boss[Boss_Array].Name)
	SetCharacterTitle(sceneId,Boss_Index,x910201_g_Boss[Boss_Array].Title)
	--******************--
	
end
--**********************************--
--*          Tip All Human         *--
--**********************************--
function x910201_TipAllHuman(sceneId,nTip)

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