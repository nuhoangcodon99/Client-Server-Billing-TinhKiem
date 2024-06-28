--Ph� b�n T� Tuy�t Trang
--Author: Ho�ng Steven

--******************--
x910170_g_ScriptId=910170
--******************--
x910170_g_CopySceneType=FUBEN_SIJUEZHUANG										--C�c tham s� c�a ph� b�n. Tham kh�o "ScriptGlobal.lua"
--******************--
x910170_g_TickTime=1															--Th�i gian hi�n t�i c�a ph� b�n
x910170_g_NoUserTime=5000														--Th�i gian l�u l�i ph� b�n khi kh�ng c�n ai trong ph� b�n (нn v� Mili Gi�y)
x910170_g_Fuben_X=100															--Pos X �i�m h�i sinh ph� b�n
x910170_g_Fuben_Y=115															--Pos Y �i�m h�i sinh ph� b�n
x910170_g_Limit_Member=3														--S� l��ng th�nh vi�n t�i thi�u trong �i ng�
x910170_g_Limit_FuBenTimes=3 --so lan di toi da
x910170_g_Fuben_Time=3600000													--Th�i gian t�n t�i ph� b�n
x910170_g_Fuben_Scene="sijuezhuang.nav"											--Load file Scene
--******************--
x910170_g_Need_Level=70															--Level t�i thi�u tham gia ph� b�n
--******************--
x910170_g_Next_Step=8															--Thao t�c tr�n ph� b�n
x910170_g_Fuben_Level=9															--C�p � ph� b�n
x910170_g_Fuben_Step=10															--Thao t�c th�ng b�o gi� ph� b�n
x910170_g_Last_Time=11															--Th�i gian tr߾c ��
x910170_g_Tick_Fuben_Time=12													--Th�i gian t�n t�i ph� b�n t�nh �n hi�n t�i
x910170_g_Out_Timer=13															--Th�i gian �m ng��c r�i ph� b�n
x910170_g_nTick=14																--Mili gi�y
--******************--
x910170_g_Notices=
{
	[1]="Ph� b�n hi�n t�i s� ��ng sau 1 gi�!",
	[2]="Ph� b�n hi�n t�i s� ��ng sau 30 ph�t!",
	[3]="Ph� b�n hi�n t�i s� ��ng sau 15 ph�t!",
	[4]="Ph� b�n hi�n t�i s� ��ng sau 5 ph�t!",
	[5]="Ph� b�n hi�n t�i s� ��ng sau 1 ph�t!",
	[6]="Ph� b�n hi�n t�i s� ��ng sau 30 gi�y!",
	[7]="Ph� b�n hi�n t�i s� ��ng sau 15 gi�y!",
	[8]="Ph� b�n hi�n t�i s� ��ng sau 5 gi�y!",
	[9]="Nhi�m v� ho�n th�nh, c�c h� s� r�i kh�i ��y sau 30 gi�y!",
}
--******************--
x910170_g_NPC_List=
{
	[1]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=91,	Pos_Y=79,	ScriptID=910171	},
	[2]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=86,	Pos_Y=21,	ScriptID=910171	},
	[3]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=31,	Pos_Y=88,	ScriptID=910171	},
	[4]	=	{	Index=14100,	Name="Phan Tinh Tinh",				Pos_X=22,	Pos_Y=18,	ScriptID=910171	},
	[5]	=	{	Index=14119,	Name="Chu�ng l�n T� Tuy�t �i�n",	Pos_X=95,	Pos_Y=85,	ScriptID=910172	},
}
--******************--
x910170_g_Guardian_List=
{
	[1]	=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=90,	Pos_Y=85	},
	[2]	=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=95,	Pos_Y=85	},
	[3]	=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=100,	Pos_Y=85	},
	[4]	=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=105,	Pos_Y=85	},
	[5]	=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=110,	Pos_Y=85	},
	[6]	=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=90,	Pos_Y=90	},
	[7]	=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=95,	Pos_Y=90	},
	[8]	=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=100,	Pos_Y=90	},
	[9]	=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=105,	Pos_Y=90	},
	[10]=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=110,	Pos_Y=90	},
	[11]=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=90,	Pos_Y=95	},
	[12]=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=95,	Pos_Y=95	},
	[13]=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=100,	Pos_Y=95	},
	[14]=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=105,	Pos_Y=95	},
	[15]=	{	Index=14107,	Name="H� v� T� Tuy�t �i�n",		Pos_X=110,	Pos_Y=95	},
	[16]=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=90,	Pos_Y=100	},
	[17]=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=95,	Pos_Y=100	},
	[18]=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=100,	Pos_Y=100	},
	[19]=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=105,	Pos_Y=100	},
	[20]=	{	Index=14113,	Name="Gi�o �u T� Tuy�t �i�n",	Pos_X=110,	Pos_Y=100	},
	
}
--******************--
x910170_g_Boss_List=
{
	["Min Mo"]	=	{	Index=14101,	Name="M�n M�c",		Title="Th� H߽ng M�c V�n",	Pos_X=103,	Pos_Y=91,	ScriptID=910173	},
	["Tao Qin"]	=	{	Index=14127,	Name="��o Thanh",	Title="L�c B�t Th�n Binh",	Pos_X=102,	Pos_Y=32,	ScriptID=910174	},
	["Qin Yun"]	=	{	Index=14120,	Name="T�n V�n",		Title="C�m � Du Tr߶ng",	Pos_X=27,	Pos_Y=99,	ScriptID=910175	},
	["Pang Qi"]	=	{	Index=14140,	Name="B�ng X�",		Title="H�c B�ch Giang H�",	Pos_X=28,	Pos_Y=26,	ScriptID=910176	},
}
--******************--
x910170_g_Exit_Way={Pos_X=108,Pos_Y=116}
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910170_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910170_g_ScriptId,"�n o�n T� Tuy�t Trang",6,1)			--Khi�u chi�n
	AddNumText(sceneId,x910170_g_ScriptId,"V� T� Tuy�t Trang",11,0)				--T�m hi�u Thi�u Th�t S�n
	AddNumText(sceneId,x910170_g_ScriptId,"T�i h� ch� �i ngang qua...",-1,2)	--R�i b�
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
			AddText(sceneId,"\"C�m - K� - Thi - H�a\"... B�n v� �߶ng ch� c�a #GT� Tuy�t Trang#W n�i danh giang h� v�i nh�ng chi�u th�c nghe t�n �u nh� m� �n t�ng s�t th߽ng c�c l�n, n�u kh�ng c� b�n l�nh v� c�ng th�m h�u th� kh�ng c�ch n�o c� th� ch�ng �� n�i!")
			AddText(sceneId,"Ng߶i ch�i#G c�p 80#W tr� l�n c� th� tham gia.")
			AddText(sceneId,"Y�u c�u t� �i ph�i c� #GThi�n S�n#W...")
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
		x910170_MakeCopyScene(sceneId,selfId)									--Kh�i t�o ph� b�n
		
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
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ng߶i ch�i n�y kh�ng c� �i ng�
		return 0,"C�c h� c�n gia nh�p v�o m�t �i ng� t�i thi�u #G"..x910170_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ng߶i ch�i kh�ng ph�i �i tr߷ng
		return 0,"Ch� c� �i tr߷ng m�i c� th� quy�t �nh c� tham gia hay kh�ng. C�c h� h�y g�i �i tr߷ng c�a c�c h� �n n�i chuy�n v�i ta!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910170_g_Limit_Member then					--S� l��ng th�nh vi�n kh�ng ��
		return 0,"T� �i c�n c� t�i thi�u #G"..x910170_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--еi ng� c� th�nh vi�n kh�ng � g�n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"C�c h� c�n tri�u t�p �� �i ng� c�a m�nh �n ch� ta m�i c� th� ti�n v�o ph� b�n!"
	end
	--******************--
	if GetMissionData(sceneId,selfId,MD_SIJUE_DAYTIME)==GetDayTime() then		--�� tham gia ph� b�n h�m nay
		--return 0,"Ng�y h�m nay c�c h� �� tham gia ph� b�n n�y r�i!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910170_g_Need_Level then					--C� th�nh vi�n kh�ng �� c�p � y�u c�u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c�p � kh�ng �� c�p #G"..x910170_g_Need_Level..", kh�ng �� �i�u ki�n tham gia ph� b�n!"
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
		
		if lastDayCount >= x910170_g_Limit_FuBenTimes  then --C� th�nh vi�n �� tham gia ph� b�n n�y r�i
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." trong ng�y h�m nay �� tham gia ph� b�n n�y r�i!"
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
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID �i tr߷ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910170_g_NoUserTime)					--Th�i gian l�u ph� b�n khi kh�ng c�n ai
	LuaFnSetCopySceneData_Timer(sceneId,x910170_g_TickTime)								--Th�i gian ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,0,x910170_g_CopySceneType)						--Set th�ng s� ph� b�n (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910170_g_ScriptId)							--ID script ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,2,0)
	LuaFnSetCopySceneData_Param(sceneId,3,sceneId)										--C�nh t��ng hi�n t�i
	LuaFnSetCopySceneData_Param(sceneId,4,x)											--T�a � X c�a ng߶i ch�i
	LuaFnSetCopySceneData_Param(sceneId,5,y)											--T�a � Y c�a ng߶i ch�i
	LuaFnSetCopySceneData_Param(sceneId,6,GetTeamId(sceneId,selfId))					--ID nh�m ng߶i ch�i
	LuaFnSetCopySceneData_Param(sceneId,7,0)
	--******************--
	for i=8,31 do
		LuaFnSetCopySceneData_Param(sceneId,i,0)										--Reset l�i c�c th�ng s� cho ph� b�n
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
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Level,nDec)						--Set Level ph� b�n
	--******************--
	local bRetSceneID=LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!")									--S� b�n sao qu� t�i
		else
			AddText(sceneId,"S� l��ng b�n sao �� qu� t�i, � ngh� l�t n�a th� l�i!")	--C� th� t�o b�n sao m�i
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
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Th�ng b�o kh�i t�o ph� b�n
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid);
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910170_g_Fuben_X,x910170_g_Fuben_Y) 		--��a t�t c� th�nh vi�n nh�m �n ph� b�n
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
	--SetMissionData(sceneId,selfId,MD_SIJUE_DAYTIME,GetDayTime())							--��nh d�u h�m nay �� tham gia ph� b�n
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910170_g_Fuben_X,x910170_g_Fuben_Y)		--Уt �i�m h�i sinh t�i ph� b�n
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
function x910170_OnCopySceneTimer(sceneId,nowTime)											--H�m n�y check li�n t�c m�i Mili gi�y khi ph� b�n c�n t�n t�i

	--******************--
	x910170_ShowFubenTimer(sceneId,nowTime)													--Th�ng b�o th�i gian ph� b�n
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Next_Step)
	--******************--
	if nStep==0 then
		x910170_CreatNPC(sceneId)															--Kh�i t�o NPC
		x910170_CreatGuardians(sceneId)														--Kh�i t�o h� v�
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,1)
	elseif nStep==1 then
		x910170_MinMo(sceneId)																--Kh�i t�o M�n M�c
	elseif nStep==2 then
		x910170_TaoQin(sceneId)																--Kh�i t�o ��o Thanh
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	elseif nStep==3 then
		x910170_QinYun(sceneId)																--Kh�i t�o T�n V�n
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	elseif nStep==4 then
		x910170_PangQi(sceneId)																--Kh�i t�o B�ng X�
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,100)
	elseif nStep==5 then
		x910170_TipAllHuman(sceneId,x910170_g_Notices[9])									--Th�ng b�o ho�n th�nh nhi�m v�
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Next_Step,6)
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Out_Timer,30000)						--C�p nh�t th�i gian r�i ph� b�n
	elseif nStep==6 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Out_Timer)
		local nTick=LuaFnGetCopySceneData_Param(sceneId,x910170_g_nTick)
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			x910170_KickOutAllPlayer(sceneId)												--��a ng߶i ch�i ra kh�i map
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
	local str=format("#PTinh th�ng v�n v�, kh�o l�o d�ng chi�u, #{_INFOUSR%s} c�ng �ng �i#P kh�ng m�ng kh� kh�n gian kh�, chi�n �u �c li�t t�i #GT� Tuy�t Trang#P. Cu�i c�ng to�n th�ng tr� v� �ng th�i nh�n ���c #{_INFOMSG%s}#P, th�t l� may m�n!",Player_Name,Item_Infor)
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
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Last_Time)					--L�y th�i gian tr߾c ��
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Last_Time,nowTime)						--C�p nh�t th�i gian hi�n t�i
	--******************--
	if nTime==0 then
		nTime=nowTime
	end
	--******************--
	local nTick=nowTime-nTime
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_nTick,nTick)
	local Exist_Time=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Tick_Fuben_Time)			--L�y th�i gian t�n t�i ph� b�n t�nh �n hi�n t�i
	LuaFnSetCopySceneData_Param(sceneId,x910170_g_Tick_Fuben_Time,Exist_Time+nTick)
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910170_g_Fuben_Step)
	--******************--
	if nStep==0 and Exist_Time>=5000 then													--Th�ng b�o c�n 1 gi�
		x910170_TipAllHuman(sceneId,x910170_g_Notices[1])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,1)
	elseif nStep==1 and Exist_Time>=1800000 then											--Th�ng b�o c�n 30 ph�t
		x910170_TipAllHuman(sceneId,x910170_g_Notices[2])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,2)
	elseif nStep==2 and Exist_Time>=2700000 then											--Th�ng b�o c�n 15 ph�t
		x910170_TipAllHuman(sceneId,x910170_g_Notices[3])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,3)
	elseif nStep==3 and Exist_Time>=3300000 then											--Th�ng b�o c�n 5 ph�t
		x910170_TipAllHuman(sceneId,x910170_g_Notices[4])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,4)
	elseif nStep==4 and Exist_Time>=3540000 then											--Th�ng b�o c�n 1 ph�t
		x910170_TipAllHuman(sceneId,x910170_g_Notices[5])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,5)
	elseif nStep==5 and Exist_Time>=3570000 then											--Th�ng b�o c�n 30 gi�y
		x910170_TipAllHuman(sceneId,x910170_g_Notices[6])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,6)
	elseif nStep==6 and Exist_Time>=3585000 then											--Th�ng b�o c�n 15 gi�y
		x910170_TipAllHuman(sceneId,x910170_g_Notices[7])
		LuaFnSetCopySceneData_Param(sceneId,x910170_g_Fuben_Step,7)
	elseif nStep==7 and Exist_Time>=3595000 then											--Th�ng b�o c�n 5 gi�y
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