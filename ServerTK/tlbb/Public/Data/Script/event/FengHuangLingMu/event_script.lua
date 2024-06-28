--Phø bän Phøng Hoàng Lång Mµ
--Author: Hoàng Steven

--******************--
x930510_g_ScriptId=930510
--******************--
x930510_g_CopySceneType=FUBEN_FENGHUANGLINGMU									--Các tham s¯ cüa phø bän. Tham khäo "ScriptGlobal.lua"
--******************--
x930510_g_TickTime=1															--Th¶i gian hi®n tÕi cüa phø bän
x930510_g_NoUserTime=5000														--Th¶i gian lßu lÕi phø bän khi không còn ai trong phø bän (Ð½n v¸ Mili Giây)
x930510_g_Fuben_X=21															--Pos X ði¬m h°i sinh phø bän
x930510_g_Fuben_Y=111															--Pos Y ði¬m h°i sinh phø bän
x930510_g_Limit_Member=3														--S¯ lßþng thành viên t¯i thi¬u trong ðµi ngû
x930510_g_Limit_FuBenTimes=3 													--S¯ l¥n tham gia phø bän trong ngày
x930510_g_Fuben_Scene="PhoenixMaze.nav"											--Load file Scene
--******************--
x930510_g_Need_Level=70															--Level t¯i thi¬u tham gia phø bän
x930510_g_Fuben_Time=3600000													--Th¶i gian ði phø bän
--******************--
x930510_g_Notices=
{
	[1]="Phø bän hi®n tÕi s¨ ðóng sau 30 phút næa!",							--Thông báo khi còn 30 phút
	[2]="Phø bän hi®n tÕi s¨ ðóng sau 15 phút næa!",							--Thông báo khi còn 15 phút
	[3]="Phø bän hi®n tÕi s¨ ðóng sau 5 phút næa!",								--Thông báo khi còn 5 phút
	[4]="Phø bän hi®n tÕi s¨ ðóng sau 1 phút næa!",								--Thông báo khi còn 1 phút
	[5]="Phø bän hi®n tÕi s¨ ðóng sau 30 giây næa!",							--Thông báo khi còn 30 giây
	[6]="Phø bän hi®n tÕi s¨ ðóng sau 15 giây næa!",							--Thông báo khi còn 15 giây
	[7]="Phø bän hi®n tÕi s¨ ðóng sau 5 giây næa!",								--Thông báo khi còn 5 giây
	[8]="Nhi®m vø hoàn thành, các hÕ s¨ r¶i khöi ðây sau 30 giây!",				--Thông báo hoàn thành nhi®m vø
}
--******************--
x930510_g_NPC={	Index=603,	Name="Lý Dã",	Pos_X=16,	Pos_Y=111,	ScriptID=930512	}	--NPC Lý Dã
--******************--
x930510_g_Monster={	Index=13750,	Name="MÕc Kim Giáo Úy"	}					--MÕc Kim Giáo Úy
--******************--
x930510_g_Monster_Pos=															--T÷a ðµ MÕc Kim Giáo Úy
{
	--Gian s¯ 1
	{	Pos_X=107,	Pos_Y=116	},
	{	Pos_X=118,	Pos_Y=117	},
	{	Pos_X=118,	Pos_Y=106	},
	{	Pos_X=106,	Pos_Y=116	},
	{	Pos_X=113,	Pos_Y=112	},
	{	Pos_X=110,	Pos_Y=114	},
	{	Pos_X=115,	Pos_Y=114	},
	{	Pos_X=115,	Pos_Y=109	},
	{	Pos_X=110,	Pos_Y=109	},
	--Gian s¯ 2	
	{	Pos_X=101,	Pos_Y=75	},
	{	Pos_X=118,	Pos_Y=75	},
	{	Pos_X=117,	Pos_Y=56	},
	{	Pos_X=102,	Pos_Y=56	},
	{	Pos_X=104,	Pos_Y=63	},
	{	Pos_X=113,	Pos_Y=63	},
	{	Pos_X=113,	Pos_Y=72	},
	{	Pos_X=104,	Pos_Y=72	},
	{	Pos_X=108,	Pos_Y=68	},
	--Gian s¯ 3	
	{	Pos_X=118,	Pos_Y=33	},
	{	Pos_X=97,	Pos_Y=34	},
	{	Pos_X=97,	Pos_Y=13	},
	{	Pos_X=119,	Pos_Y=13	},
	{	Pos_X=106,	Pos_Y=19	},
	{	Pos_X=115,	Pos_Y=20	},
	{	Pos_X=106,	Pos_Y=28	},
	{	Pos_X=115,	Pos_Y=28	},
	{	Pos_X=111,	Pos_Y=24	},
	--Gian s¯ 4	
	{	Pos_X=72,	Pos_Y=33	},
	{	Pos_X=54,	Pos_Y=33	},
	{	Pos_X=53,	Pos_Y=12	},
	{	Pos_X=73,	Pos_Y=13	},
	{	Pos_X=68,	Pos_Y=20	},
	{	Pos_X=59,	Pos_Y=20	},
	{	Pos_X=59,	Pos_Y=29	},
	{	Pos_X=68,	Pos_Y=29	},
	{	Pos_X=64,	Pos_Y=26	},
	--Gian s¯ 5	
	{	Pos_X=24,	Pos_Y=27	},
	{	Pos_X=9,	Pos_Y=28	},
	{	Pos_X=9,	Pos_Y=10	},
	{	Pos_X=31,	Pos_Y=10	},
	{	Pos_X=21,	Pos_Y=14	},
	{	Pos_X=12,	Pos_Y=14	},
	{	Pos_X=12,	Pos_Y=23	},
	{	Pos_X=21,	Pos_Y=23	},
	{	Pos_X=17,	Pos_Y=20	},
	--Gian s¯ 6
	{	Pos_X=12,	Pos_Y=61	},
	{	Pos_X=11,	Pos_Y=83	},
	{	Pos_X=27,	Pos_Y=84	},
	{	Pos_X=24,	Pos_Y=56	},
	{	Pos_X=15,	Pos_Y=69	},
	{	Pos_X=15,	Pos_Y=76	},
	{	Pos_X=22,	Pos_Y=76	},
	{	Pos_X=22,	Pos_Y=69	},
	{	Pos_X=19,	Pos_Y=73	},
	--Có 6 gian, m²i gian 9 quái, t±ng cµng toàn map có 54 quái
}
--******************--
x930510_g_Boss={	Index=13759,	Name="Bàn S½n ÐÕo Nhân",	Title="Chü nhân Phøng Hoàng Lång Mµ",	Pos_X=67,	Pos_Y=73,	ScriptID=930511	}	--Boss Bàn S½n ÐÕo Nhân
--******************--
x930510_g_Item=30010083															--Phøng Hoàng Lång Mµ Thông Hành L®nh
--******************--
x930510_g_Scene_Back_Index=3													--ID cänh tr· ra
x930510_g_Scene_Pos_X=4															--T÷a ðµ X cänh tr· ra
x930510_g_Scene_Pos_Y=5															--T÷a ðµ Y cänh tr· ra
x930510_g_Fuben_Level=8															--C¤p ðµ cüa phø bän
x930510_g_Fuben_Step=9															--Các bß¾c hoÕt ðµng cüa phø bän
x930510_g_Fuben_Start_Time=10													--Th¶i gian b¡t ð¥u cüa phø bän
x930510_g_Last_Time=11															--Th¶i gian trß¾c ðó
x930510_g_Time_Step=12															--Ðã thông báo th¶i gian phø bän chßa
x930510_g_Out_Timer=13															--Th¶i gian ra ngoài phø bän
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x930510_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x930510_g_ScriptId,"#GPhøng Hoàng Lång Mµ",6,0)				--Vào phø bän Binh Thánh KÏ Tr§n
	AddNumText(sceneId,x930510_g_ScriptId,"V« #GPhøng Hoàng Lång Mµ",11,1)			--Hüy bö yêu c¥u
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x930510_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	if GetNumText()==1 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"#GPhøng Hoàng Lång Mµ#W là vùng ð¤t linh thiêng ðßþc canh giæ b·i #GBàn S½n ÐÕo Nhân#W và ðám tay sai #GMÕc Kim Giáo Úy#W.")
			AddText(sceneId,"T± ðµi t¯i thi¬u #G"..x930510_g_Limit_Member.."#W, ðµi trß·ng mang theo #G"..GetItemName(sceneId,x930510_g_Item).."#W là có th¬ ð¯i thoÕi v¾i #GLý Dã#W tiªn hành khai qu§t #GPhøng Hoàng Lång Mµ#W.")
			AddText(sceneId,"M²i ngày, m²i ngß¶i chï ðßþc phép tham gia không quá #G"..x930510_g_Limit_FuBenTimes.." l¥n#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if GetNumText()==0 then
	
		local Check,nTip=x930510_CheckCanEnter(sceneId,selfId)
		if Check==0 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		x930510_MakeCopyScene(sceneId,selfId)									--Kh·i tÕo phø bän
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x930510_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ngß¶i ch½i này không có ðµi ngû
		return 0,"Các hÕ c¥n gia nh§p vào mµt ðµi ngû t¯i thi¬u #G"..x930510_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ngß¶i ch½i không phäi ðµi trß·ng
		return 0,"Chï có ðµi trß·ng m¾i có th¬ quyªt ð¸nh có tham gia hay không. Các hÕ hãy g÷i ðµi trß·ng cüa ðªn nói chuy®n v¾i tÕi hÕ!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x930510_g_Limit_Member then					--S¯ lßþng thành viên không ðü
		return 0,"T± ðµi cüa các hÕ c¥n có t¯i thi¬u #G"..x930510_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	local NearTeamSize=GetNearTeamCount(sceneId,selfId)							--Ðµi ngû có thành viên không · g¥n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Các hÕ c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² tÕi hÕ m¾i có th¬ tiªn vào Binh Thánh KÏ Tr§n!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x930510_g_Need_Level  then				--Có thành viên không ðü c¤p ðµ yêu c¥u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum=nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c¤p ðµ không ðü c¤p #G"..x930510_g_Need_Level..", e r¢ng khó có th¬ bäo toàn tính mÕng!"
		return 0,msg
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	local CurDayTime=GetDayTime()
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		local lastTime=GetMissionData(sceneId,PlayerId,MD_FENGHUANGLINGMU_DAYTIME)
		local lastDayTime=floor(lastTime/100)
		local lastDayCount=mod(lastTime,100)
		if CurDayTime>lastDayTime then
			lastDayTime=CurDayTime
			lastDayCount=0
		end
		if lastDayCount>=x930510_g_Limit_FuBenTimes  then						--Có thành viên ðã tham gia phø bän này r°i
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum=nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." trong ngày hôm nay ðã tham gia phø bän này ðü s¯ lßþt r°i!"
		return 0,msg
	end
	--******************--
	if LuaFnDelAvailableItem(sceneId,selfId,x930510_g_Item,1)<1 then
		return 0,"Các hÕ không có "..GetItemName(sceneId,x930510_g_Item)..", làm sao có th¬ ðµt nh§t Phøng Hoàng Lång Mµ ðßþc?"
	end
	--******************--
	return 1
	--******************--

end
--**********************************--
--*         Make Copy Scene        *--
--**********************************--
function x930510_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x930510_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID ðµi trß·ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x930510_g_NoUserTime)					--Th¶i gian lßu phø bän khi không còn ai
	LuaFnSetCopySceneData_Timer(sceneId,x930510_g_TickTime)								--Th¶i gian phø bän
	LuaFnSetCopySceneData_Param(sceneId,0,x930510_g_CopySceneType)						--Set thông s¯ phø bän (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x930510_g_ScriptId)							--ID script phø bän
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
function x930510_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Thông báo kh·i tÕo phø bän
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid)
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x930510_g_Fuben_X,x930510_g_Fuben_Y) 			--Ðßa t¤t cä thành viên nhóm ðªn phø bän
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x930510_OnCopySceneTimer(sceneId,nowTime)											--Hàm này check liên tøc m²i Mili giây khi phø bän còn t°n tÕi
	
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Step)					--L¤y thao tác trên phø bän
	--******************--
	x930510_ShowNoticesFubenTime(sceneId,nowTime)											--Hi®n thông báo th¶i gian phø bän
	local nTick=x930510_TickTimer(sceneId,nowTime)
	--******************--
	if nStep==0 then
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Start_Time,nowTime)				--Kh·i tÕo th¶i gian b¡t ð¥u phø bän
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Last_Time,nowTime)					--C§p nh§t th¶i gian phø bän
		x930510_CreateMyNPC(sceneId)														--Kh·i tÕo NPC Lý Dã
		x930510_CreateMonster(sceneId)														--Kh·i tÕo MÕc Kim Giáo Úy
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Step,1)							--C§p nh§t bß¾c hoÕt ðµng phø bän
	elseif nStep==1 then
		if x930510_CheckMonsterLeft(sceneId)==0 then										--Nªu không còn MÕc Kim Giáo úy
			x930510_CreateBoss(sceneId)														--Kh·i tÕo Bàn S½n ÐÕo Nhân
			LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Step,100)					--C§p nh§t bß¾c hoÕt ðµng phø bän
		end
	elseif nStep==2 then																	--Ðªm ngßþc th¶i gian r¶i phø bän
		x930510_TipAllHuman(sceneId,x930510_g_Notices[8])									--Thông báo ðªm ngßþc 30s sau r¶i phø bän
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Step,3)							--C§p nh§t bß¾c hoÕt ðµng phø bän
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Out_Timer,30000)						--C§p nh§t b¡t ð¥u tính th¶i gian r¶i phø bän
	elseif nStep==3 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Out_Timer)				--L¤y th¶i gian ðªm ngßþc còn lÕi ð¬ r¶i phø bän
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Out_Timer,nTime-nTick)				--Ðªm ngßþc th¶i gian
		if nTime-nTick<=0 then
			x930510_KickOutAllPlayer(sceneId)												--Ðßa t¤t cä ngß¶i ch½i tr· v« thành th¸
		end
	end
	--******************--

end
--**********************************--
--*         On Pick Up Item        *--
--**********************************--
function x930510_OnPickUpItem(sceneId,selfId,Item_Pos)

	--******************--
	local Item_Infor=GetBagItemTransfer(sceneId,selfId,Item_Pos)
	local Player_Name=GetName(sceneId,selfId)
	--******************--
	local str=format("#PTrong chuyªn khai qu§t #GPhøng Minh Vß½ng Lång#P l¥n này, #{_INFOUSR%s} cùng ð°ng ðôi quyªt chiªn chiªn ác li®t cùng #GBàn S½n ÐÕo Nhân#P ðem chiªn th¡ng tr· v«, ð°ng th¶i còn mang theo ðßþc #{_INFOMSG%s}#P!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x930510_OnPlayerEnter(sceneId,selfId)

	--******************--
	local lastTime=GetMissionData(sceneId,selfId,MD_FENGHUANGLINGMU_DAYTIME)
	local lastDayTime=floor(lastTime/100)
	local lastDayCount=mod(lastTime,100)
	local CurDayTime=GetDayTime()
	if CurDayTime>lastDayTime then
		lastDayTime=CurDayTime
		lastDayCount=0
	end
	lastDayCount=lastDayCount+1
	lastTime=lastDayTime*100+lastDayCount
	SetMissionData(sceneId,selfId,MD_FENGHUANGLINGMU_DAYTIME,lastTime)
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x930510_g_Fuben_X,x930510_g_Fuben_Y)	--Ð£t ði¬m h°i sinh tÕi phø bän
	--******************--
	
end
--**********************************--
--*          On Human Die          *--
--**********************************--
function x930510_OnHumanDie(sceneId,selfId,killerId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*       Check Monster Left       *--
--**********************************--
function x930510_CheckMonsterLeft(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x930510_g_Monster.Name then
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
function x930510_TickTimer(sceneId,nowTime)
	
	--******************--
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Last_Time)			--L¤y th¶i gian trß¾c ðó
	LuaFnSetCopySceneData_Param(sceneId,x930510_g_Last_Time,nowTime)					--C§p nh§t th¶i gian hi®n tÕi cüa phø bän
	return nowTime-Last_Time															--L¤y mili giây hi®n tÕi tính t× th¶i gian trß¾c
	--******************--
	
end
--**********************************--
--*      Kick Out All Player       *--
--**********************************--
function x930510_KickOutAllPlayer(sceneId)
	
	--******************--
	local Scene=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Scene_Back_Index)
	local x=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Scene_Pos_X)
	local y=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Scene_Pos_Y)
	--******************--
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--Ðßa ngß¶i ch½i tr· v« cänh trß¾c ðó
		end
	end
	--******************--
	
end
--**********************************--
--*         Creat My NPC           *--
--**********************************--
function x930510_CreateMyNPC(sceneId)
	
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
		nDec=4
	elseif Current_Level>=80 and Current_Level<90 then
		nDec=5
	elseif Current_Level>=90 and Current_Level<100 then
		nDec=6
	elseif Current_Level>=100 and Current_Level<110 then
		nDec=7
	else
		nDec=8
	end
	--******************--
	local NPC_Index=LuaFnCreateMonster(sceneId,x930510_g_NPC.Index,x930510_g_NPC.Pos_X,x930510_g_NPC.Pos_Y,3,0,x930510_g_NPC.ScriptID)	---Kh·i tÕo NPC Lý Dã
	SetCharacterName(sceneId,NPC_Index,x930510_g_NPC.Name)				--C§p nh§t tên Lý Dã
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Level,nDec)		--C§p nh§t c¤p ðµ phø bän
	--******************--
	
end
--**********************************--
--*    Show Notices Fuben Time     *--
--**********************************--
function x930510_ShowNoticesFubenTime(sceneId,nowTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Time_Step)					--L¤y s¯ thông báo l¥n trß¾c
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Start_Time)				--L¤y th¶i gian b¡t ð¥u phø bän
	local Exist_Time=nowTime-nTime
	--******************--
	if nStep==0 and Exist_Time>=5000 then													--Thông báo còn 1 gi¶
		x930510_TipAllHuman(sceneId,x930510_g_Notices[1])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,1)
	elseif nStep==1 and Exist_Time>=1800000 then											--Thông báo còn 30 phút
		x930510_TipAllHuman(sceneId,x930510_g_Notices[2])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,2)
	elseif nStep==2 and Exist_Time>=2700000 then											--Thông báo còn 15 phút
		x930510_TipAllHuman(sceneId,x930510_g_Notices[3])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,3)
	elseif nStep==3 and Exist_Time>=3300000 then											--Thông báo còn 5 phút
		x930510_TipAllHuman(sceneId,x930510_g_Notices[4])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,4)
	elseif nStep==4 and Exist_Time>=3540000 then											--Thông báo còn 1 phút
		x930510_TipAllHuman(sceneId,x930510_g_Notices[5])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,5)
	elseif nStep==5 and Exist_Time>=3570000 then											--Thông báo còn 30 giây
		x930510_TipAllHuman(sceneId,x930510_g_Notices[6])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,6)
	elseif nStep==6 and Exist_Time>=3585000 then											--Thông báo còn 15 giây
		x930510_TipAllHuman(sceneId,x930510_g_Notices[7])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,7)
	elseif nStep==7 and Exist_Time>=3595000 then											--Thông báo còn 5 giây
		x930510_TipAllHuman(sceneId,x930510_g_Notices[8])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,8)
	elseif Exist_Time>=x930510_g_Fuben_Time then
		x930510_KickOutAllPlayer(sceneId)
	end
	--******************--

end
--**********************************--
--*         Create Monster         *--
--**********************************--
function x930510_CreateMonster(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Level)			--L¤y c¤p ðµ phø bän
	--******************--
	for i,Pos in x930510_g_Monster_Pos do
		local Monster_Index=LuaFnCreateMonster(sceneId,x930510_g_Monster.Index+nDec,Pos.Pos_X,Pos.Pos_Y,27,0,-1)	--Kh·i tÕo MÕc Kim Giáo Úy
		SetCharacterName(sceneId,Monster_Index,x930510_g_Monster.Name)
	end
	--******************--
	
end
--**********************************--
--*           Create Boss          *--
--**********************************--
function x930510_CreateBoss(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Level)			--L¤y c¤p ðµ phø bän
	--******************--
	local Boss_Index=LuaFnCreateMonster(sceneId,x930510_g_Boss.Index+nDec,x930510_g_Boss.Pos_X,x930510_g_Boss.Pos_Y,27,0,x930510_g_Boss.ScriptID)	--Kh·i tÕo Tiêu D§t Phong
	SetCharacterName(sceneId,Boss_Index,x930510_g_Boss.Name)
	SetCharacterTitle(sceneId,Boss_Index,x930510_g_Boss.Title)
	--******************--
	
end
--**********************************--
--*          Tip All Human         *--
--**********************************--
function x930510_TipAllHuman(sceneId,nTip)

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