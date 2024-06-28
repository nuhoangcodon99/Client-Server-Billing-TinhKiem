--Phø bän TÑ Tuy®t Trang
--Author: Hoàng Steven

--******************--
x910170_g_ScriptId=910170
--******************--
x910170_g_CopySceneType=FUBEN_SIJUEZHUANG										--Các tham s¯ cüa phø bän. Tham khäo "ScriptGlobal.lua"
--******************--
x910170_g_TickTime=1															--Th¶i gian hi®n tÕi cüa phø bän
x910170_g_NoUserTime=5000														--Th¶i gian lßu lÕi phø bän khi không còn ai trong phø bän (Ð½n v¸ Mili Giây)
x910170_g_Fuben_X=100															--Pos X ði¬m h°i sinh phø bän
x910170_g_Fuben_Y=115															--Pos Y ði¬m h°i sinh phø bän
x910170_g_Limit_Member=3														--S¯ lßþng thành viên t¯i thi¬u trong ðµi ngû
x910170_g_Limit_FuBenTimes=3 --so lan di toi da
x910170_g_Fuben_Time=3600000													--Th¶i gian t°n tÕi phø bän
x910170_g_Fuben_Scene="sijuezhuang.nav"											--Load file Scene
--******************--
x910170_g_Need_Level=70															--Level t¯i thi¬u tham gia phø bän
--******************--
x910170_g_Next_Step=8															--Thao tác trên phø bän
x910170_g_Fuben_Level=9															--C¤p ðµ phø bän
x910170_g_Fuben_Step=10															--Thao tác thông báo gi¶ phø bän
x910170_g_Last_Time=11															--Th¶i gian trß¾c ðó
x910170_g_Tick_Fuben_Time=12													--Th¶i gian t°n tÕi phø bän tính ðªn hi®n tÕi
x910170_g_Out_Timer=13															--Th¶i gian ðªm ngßþc r¶i phø bän
x910170_g_nTick=14																--Mili giây
--******************--
x910170_g_Notices=
{
	[1]="Phø bän hi®n tÕi s¨ ðóng sau 1 gi¶!",
	[2]="Phø bän hi®n tÕi s¨ ðóng sau 30 phút!",
	[3]="Phø bän hi®n tÕi s¨ ðóng sau 15 phút!",
	[4]="Phø bän hi®n tÕi s¨ ðóng sau 5 phút!",
	[5]="Phø bän hi®n tÕi s¨ ðóng sau 1 phút!",
	[6]="Phø bän hi®n tÕi s¨ ðóng sau 30 giây!",
	[7]="Phø bän hi®n tÕi s¨ ðóng sau 15 giây!",
	[8]="Phø bän hi®n tÕi s¨ ðóng sau 5 giây!",
	[9]="Nhi®m vø hoàn thành, các hÕ s¨ r¶i khöi ðây sau 30 giây!",
}
--******************--
x910170_g_NPC_List=
{
	[1]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=91,	Pos_Y=79,	ScriptID=910171	},
	[2]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=86,	Pos_Y=21,	ScriptID=910171	},
	[3]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=31,	Pos_Y=88,	ScriptID=910171	},
	[4]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=22,	Pos_Y=18,	ScriptID=910171	},
	[5]	=	{	Index=14119,	Name="Chuông l¾n TÑ Tuy®t Ði®n",	Pos_X=95,	Pos_Y=85,	ScriptID=910172	},
}
--******************--
x910170_g_Guardian_List=
{
	[1]	=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=90,	Pos_Y=85	},
	[2]	=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=95,	Pos_Y=85	},
	[3]	=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=100,	Pos_Y=85	},
	[4]	=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=105,	Pos_Y=85	},
	[5]	=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=110,	Pos_Y=85	},
	[6]	=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=90,	Pos_Y=90	},
	[7]	=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=95,	Pos_Y=90	},
	[8]	=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=100,	Pos_Y=90	},
	[9]	=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=105,	Pos_Y=90	},
	[10]=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=110,	Pos_Y=90	},
	[11]=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=90,	Pos_Y=95	},
	[12]=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=95,	Pos_Y=95	},
	[13]=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=100,	Pos_Y=95	},
	[14]=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=105,	Pos_Y=95	},
	[15]=	{	Index=14107,	Name="Hµ v® TÑ Tuy®t Ði®n",		Pos_X=110,	Pos_Y=95	},
	[16]=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=90,	Pos_Y=100	},
	[17]=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=95,	Pos_Y=100	},
	[18]=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=100,	Pos_Y=100	},
	[19]=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=105,	Pos_Y=100	},
	[20]=	{	Index=14113,	Name="Giáo ð¥u TÑ Tuy®t Ði®n",	Pos_X=110,	Pos_Y=100	},
	
}
--******************--
x910170_g_Boss_List=
{
	["Min Mo"]	=	{	Index=14101,	Name="Mçn M£c",		Title="Thß Hß½ng M£c V§n",	Pos_X=103,	Pos_Y=91,	ScriptID=910173	},
	["Tao Qin"]	=	{	Index=14127,	Name="Ðào Thanh",	Title="LÕc Bút Th¥n Binh",	Pos_X=102,	Pos_Y=32,	ScriptID=910174	},
	["Qin Yun"]	=	{	Index=14120,	Name="T¥n V§n",		Title="C¥m Ý Du Trß¶ng",	Pos_X=27,	Pos_Y=99,	ScriptID=910175	},
	["Pang Qi"]	=	{	Index=14140,	Name="Bàng Xí",		Title="H¡c BÕch Giang H°",	Pos_X=28,	Pos_Y=26,	ScriptID=910176	},
}
--******************--
x910170_g_Exit_Way={Pos_X=108,Pos_Y=116}
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910170_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910170_g_ScriptId,"Ân oán TÑ Tuy®t Trang",6,1)			--Khiêu chiªn
	AddNumText(sceneId,x910170_g_ScriptId,"V« TÑ Tuy®t Trang",11,0)				--Tìm hi¬u Thiªu Th¤t S½n
	AddNumText(sceneId,x910170_g_ScriptId,"TÕi hÕ chï ði ngang qua...",-1,2)	--R¶i bö
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910170_OnDefaultEvent(sceneId,selfId,targetId)
local key=GetNumText()

	--******************--
	if key==0 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"\"C¥m - KÏ - Thi - H÷a\"... B¯n v¸ ðß¶ng chü cüa #GTÑ Tuy®t Trang#W n±i danh giang h° v¾i nhæng chiêu thÑc nghe tên ßu nhã mà ¦n tàng sát thß½ng cñc l¾n, nªu không có bän lînh võ công thâm h§u thì không cách nào có th¬ ch¯ng ðÞ n±i!")
			AddText(sceneId,"Ngß¶i ch½i#G c¤p 80#W tr· lên có th¬ tham gia.")
			AddText(sceneId,"Yêu c¥u t± ðµi phäi có #GThiên S½n#W...")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key==1 then
		
		local Check,nTip=x910170_CheckCanEnter(sceneId,selfId)
		if Check==0 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		x910170_MakeCopyScene(sceneId,selfId)									--Kh·i tÕo phø bän
		
	end
	--******************--
	if key==2 then
	
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910170_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ngß¶i ch½i này không có ðµi ngû
		return 0,"Các hÕ c¥n gia nh§p vào mµt ðµi ngû t¯i thi¬u #G"..x910170_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ngß¶i ch½i không phäi ðµi trß·ng
		return 0,"Chï có ðµi trß·ng m¾i có th¬ quyªt ð¸nh có tham gia hay không. Các hÕ hãy g÷i ðµi trß·ng cüa các hÕ ðªn nói chuy®n v¾i ta!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910170_g_Limit_Member then					--S¯ lßþng thành viên không ðü
		return 0,"T± ðµi c¥n có t¯i thi¬u #G"..x910170_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--Ðµi ngû có thành viên không · g¥n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Các hÕ c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² ta m¾i có th¬ tiªn vào phø bän!"
	end
	--******************--
	if GetMissionData(sceneId,selfId,MD_SIJUE_DAYTIME)==GetDayTime() then		--Ðã tham gia phø bän hôm nay
		--return 0,"Ngày hôm nay các hÕ ðã tham gia phø bän này r°i!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910170_g_Need_Level then					--Có thành viên không ðü c¤p ðµ yêu c¥u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c¤p ðµ không ðü c¤p #G"..x910170_g_Need_Level..", không ðü ði«u ki®n tham gia phø bän!"
		return 0,msg
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	
	local CurDayTime = GetDayTime()
	
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		
		local lastTime = GetMissionData( sceneId, PlayerId, MD_SIJUE_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end
		
		if lastDayCount >= x910170_g_Limit_FuBenTimes  then --Có thành viên ðã tham gia phø bän này r°i
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
function x910170_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x910170_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID ðµi trß·ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910170_g_NoUserTime)					--Th¶i gian lßu phø bän khi không còn ai
	LuaFnSetCopySceneData_Timer(sceneId,x910170_g_TickTime)								--Th¶i gian phø bän
	LuaFnSetCopySceneData_Param(sceneId,0,x910170_g_CopySceneType)						--Set thông s¯ phø bän (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910170_g_ScriptId)							--ID script phø bän
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
	local nSum=0
	local nHumanCount=GetNearTeamCount(sceneId,selfId)
	for i=0,nHumanCount-1 do
		local nHumanId=GetNearTeamMember(sceneId,selfId,i)
		nSum=nSum+GetLevel(sceneId,nHumanId)
	end
	--******************--
	local Current_Level=floor(nSum/nHumanCount)									
	local nDec
	if Current_Level>=70 and Current_Level<80 then
		nDec=0
	elseif Current_Level>=80 and Current_Level<90 then
		nDec=1
	elseif Current_Level>=90 and Current_Level<100 then
		nDec=2
	elseif Current_Level>=100 and Current_Level<110 then
		nDec=3
	elseif Current_Level>=110 and Current_Level<120 then
		nDec=4
	else
		nDec=5
	end
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Level,nDec)						--Set Level phø bän
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
function x910170_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Thông báo kh·i tÕo phø bän
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid);
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910170_g_Fuben_X,x910170_g_Fuben_Y) 		--Ðßa t¤t cä thành viên nhóm ðªn phø bän
	end
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910170_OnPlayerEnter(sceneId,selfId)

	--******************--
	local lastTime = GetMissionData( sceneId, selfId, MD_SIJUE_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_SIJUE_DAYTIME, lastTime )
	--SetMissionData(sceneId,selfId,MD_SIJUE_DAYTIME,GetDayTime())							--Ðánh d¤u hôm nay ðã tham gia phø bän
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910170_g_Fuben_X,x910170_g_Fuben_Y)		--Ð£t ði¬m h°i sinh tÕi phø bän
	--******************--
	SetUnitCampID(sceneId,selfId,selfId,109)
	--******************--
	
end
--**********************************--
--*          On Human Die          *--
--**********************************--
function x910170_OnHumanDie(sceneId,selfId,killerId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910170_OnCopySceneTimer(sceneId,nowTime)											--Hàm này check liên tøc m²i Mili giây khi phø bän còn t°n tÕi

	--******************--
	x910170_ShowFubenTimer(sceneId,nowTime)													--Thông báo th¶i gian phø bän
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Next_Step)
	--******************--
	if nStep==0 then
		x910170_CreatNPC(sceneId)															--Kh·i tÕo NPC
		x910170_CreatGuardians(sceneId)														--Kh·i tÕo hµ v®
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,1)
	elseif nStep==1 then
		x910170_MinMo(sceneId)																--Kh·i tÕo Mçn M£c
	elseif nStep==2 then
		x910170_TaoQin(sceneId)																--Kh·i tÕo Ðào Thanh
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	elseif nStep==3 then
		x910170_QinYun(sceneId)																--Kh·i tÕo T¥n V§n
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	elseif nStep==4 then
		x910170_PangQi(sceneId)																--Kh·i tÕo Bàng Xí
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	elseif nStep==5 then
		x910170_TipAllHuman(sceneId,x910170_g_Notices[9])									--Thông báo hoàn thành nhi®m vø
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,6)
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Out_Timer,30000)						--C§p nh§t th¶i gian r¶i phø bän
	elseif nStep==6 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Out_Timer)
		local nTick=LuaFnGetCopySceneData_Param(sceneId,x910170_g_nTick)
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			x910170_KickOutAllPlayer(sceneId)												--Ðßa ngß¶i ch½i ra khöi map
		end
	end
	--******************--
	x910170_CheckExitWay(sceneId)
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910170_OnPickUpItem(sceneId,selfId,Item_Pos)

	--******************--
	local Item_Infor=GetBagItemTransfer(sceneId,selfId,Item_Pos)
	local Player_Name=GetName(sceneId,selfId)
	--******************--
	local str=format("#PTinh thông vån võ, khéo léo dùng chiêu, #{_INFOUSR%s} cùng ð°ng ðµi#P không màng khó khån gian kh±, chiªn ð¤u ác li®t tÕi #GTÑ Tuy®t Trang#P. Cu¯i cùng toàn th¡ng tr· v« ð°ng th¶i nh§n ðßþc #{_INFOMSG%s}#P, th§t là may m¡n!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*         On Kill Object         *--
--**********************************--
function x910170_OnKillObject(sceneId,selfId,objdataId,objId)
	
	--******************--
	x910170_TipAllHuman(sceneId,"Jump OK!")
	--******************--
	
end
--**********************************--
--*         Check Exit Way         *--
--**********************************--
function x910170_CheckExitWay(sceneId)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	local Scene=LuaFnGetCopySceneData_Param(sceneId,3)
	local x=LuaFnGetCopySceneData_Param(sceneId,4)
	local y=LuaFnGetCopySceneData_Param(sceneId,5)
	for i=0,nHumanNum-1 do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,PlayerId)
		local x2,y2=x910170_g_Exit_Way.Pos_X,x910170_g_Exit_Way.Pos_Y
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 and floor(sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)))<=1 then
			CallScriptFunction((400900),"TransferFunc",sceneId,PlayerId,Scene,x,y)
		end
	end
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,MonsterId)
		local x2,y2=x910170_g_Exit_Way.Pos_X,x910170_g_Exit_Way.Pos_Y
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910170_g_Guardian_List[1].Name or GetName(sceneId,MonsterId)==x910170_g_Guardian_List[6].Name) 
		and floor(sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)))<=1 then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--

end
--**********************************--
--*            Creat NPC           *--
--**********************************--
function x910170_CreatNPC(sceneId)

	--******************--
	for i=1,getn(x910170_g_NPC_List) do
		local NPC_Index=LuaFnCreateMonster(sceneId,x910170_g_NPC_List[i].Index,x910170_g_NPC_List[i].Pos_X,x910170_g_NPC_List[i].Pos_Y,3,0,x910170_g_NPC_List[i].ScriptID)
		SetCharacterName(sceneId,NPC_Index,x910170_g_NPC_List[i].Name)
		SetUnitCampID(sceneId,NPC_Index,NPC_Index,109)
	end
	--******************--

end
--**********************************--
--*        Creat Guardians         *--
--**********************************--
function x910170_CreatGuardians(sceneId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Level)
	--******************--
	for i=1,getn(x910170_g_Guardian_List) do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910170_g_Guardian_List[i].Index+nDec,x910170_g_Guardian_List[i].Pos_X,x910170_g_Guardian_List[i].Pos_Y,27,0,-1)
		SetCharacterName(sceneId,Monster_Index,x910170_g_Guardian_List[i].Name)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	end
	--******************--

end
--**********************************--
--*         Guardians Left         *--
--**********************************--
function x910170_GuardiansLeft(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910170_g_Guardian_List[1].Name or GetName(sceneId,MonsterId)==x910170_g_Guardian_List[6].Name) then
			return 1
		end
	end
	--******************--
	return 0
	--******************--

end
--**********************************--
--*             Min Mo             *--
--**********************************--
function x910170_MinMo(sceneId)

	--******************--
	local nGuardian=x910170_GuardiansLeft(sceneId)
	--******************--
	if nGuardian==1 then
		return
	end
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Level)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910170_g_Boss_List["Min Mo"].Index+nDec,x910170_g_Boss_List["Min Mo"].Pos_X,x910170_g_Boss_List["Min Mo"].Pos_Y,27,0,x910170_g_Boss_List["Min Mo"].ScriptID)
	SetCharacterName(sceneId,Monster_Index,x910170_g_Boss_List["Min Mo"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910170_g_Boss_List["Min Mo"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	--******************--

end
--**********************************--
--*             Tao Qin             *--
--**********************************--
function x910170_TaoQin(sceneId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Level)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910170_g_Boss_List["Tao Qin"].Index+nDec,x910170_g_Boss_List["Tao Qin"].Pos_X,x910170_g_Boss_List["Tao Qin"].Pos_Y,27,0,x910170_g_Boss_List["Tao Qin"].ScriptID)
	SetCharacterName(sceneId,Monster_Index,x910170_g_Boss_List["Tao Qin"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910170_g_Boss_List["Tao Qin"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--

end
--**********************************--
--*            Qin Yun             *--
--**********************************--
function x910170_QinYun(sceneId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Level)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910170_g_Boss_List["Qin Yun"].Index+nDec,x910170_g_Boss_List["Qin Yun"].Pos_X,x910170_g_Boss_List["Qin Yun"].Pos_Y,27,0,x910170_g_Boss_List["Qin Yun"].ScriptID)
	SetCharacterName(sceneId,Monster_Index,x910170_g_Boss_List["Qin Yun"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910170_g_Boss_List["Qin Yun"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--

end
--**********************************--
--*            Pang Qi             *--
--**********************************--
function x910170_PangQi(sceneId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Level)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910170_g_Boss_List["Pang Qi"].Index+nDec,x910170_g_Boss_List["Pang Qi"].Pos_X,x910170_g_Boss_List["Pang Qi"].Pos_Y,27,0,x910170_g_Boss_List["Pang Qi"].ScriptID)
	SetCharacterName(sceneId,Monster_Index,x910170_g_Boss_List["Pang Qi"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910170_g_Boss_List["Pang Qi"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--

end
--**********************************--
--*        Show Fuben Timer        *--
--**********************************--
function x910170_ShowFubenTimer(sceneId,nowTime)

	--******************--
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Last_Time)					--L¤y th¶i gian trß¾c ðó
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Last_Time,nowTime)						--C§p nh§t th¶i gian hi®n tÕi
	--******************--
	if nTime==0 then
		nTime=nowTime
	end
	--******************--
	local nTick=nowTime-nTime
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_nTick,nTick)
	local Exist_Time=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Tick_Fuben_Time)			--L¤y th¶i gian t°n tÕi phø bän tính ðªn hi®n tÕi
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Tick_Fuben_Time,Exist_Time+nTick)
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Step)
	--******************--
	if nStep==0 and Exist_Time>=5000 then													--Thông báo còn 1 gi¶
		x910170_TipAllHuman(sceneId,x910170_g_Notices[1])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,1)
	elseif nStep==1 and Exist_Time>=1800000 then											--Thông báo còn 30 phút
		x910170_TipAllHuman(sceneId,x910170_g_Notices[2])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,2)
	elseif nStep==2 and Exist_Time>=2700000 then											--Thông báo còn 15 phút
		x910170_TipAllHuman(sceneId,x910170_g_Notices[3])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,3)
	elseif nStep==3 and Exist_Time>=3300000 then											--Thông báo còn 5 phút
		x910170_TipAllHuman(sceneId,x910170_g_Notices[4])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,4)
	elseif nStep==4 and Exist_Time>=3540000 then											--Thông báo còn 1 phút
		x910170_TipAllHuman(sceneId,x910170_g_Notices[5])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,5)
	elseif nStep==5 and Exist_Time>=3570000 then											--Thông báo còn 30 giây
		x910170_TipAllHuman(sceneId,x910170_g_Notices[6])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,6)
	elseif nStep==6 and Exist_Time>=3585000 then											--Thông báo còn 15 giây
		x910170_TipAllHuman(sceneId,x910170_g_Notices[7])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,7)
	elseif nStep==7 and Exist_Time>=3595000 then											--Thông báo còn 5 giây
		x910170_TipAllHuman(sceneId,x910170_g_Notices[8])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,8)
	elseif Exist_Time>=x910170_g_Fuben_Time then
		x910170_KickOutAllPlayer(sceneId)
	end
	--******************--

end
--**********************************--
--*      Kick Out All Player       *--
--**********************************--
function x910170_KickOutAllPlayer(sceneId)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	local Scene=LuaFnGetCopySceneData_Param(sceneId,3)
	local x=LuaFnGetCopySceneData_Param(sceneId,4)
	local y=LuaFnGetCopySceneData_Param(sceneId,5)
	for i=0,nHumanNum-1 do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 then
			CallScriptFunction((400900),"TransferFunc",sceneId,PlayerId,Scene,x,y)
		end
	end
	--******************--

end
--**********************************--
--*          Tip All Human         *--
--**********************************--
function x910170_TipAllHuman(sceneId,nTip)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1 do
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