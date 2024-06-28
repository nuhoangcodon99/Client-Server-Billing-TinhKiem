--Ph� b�n Binh Th�nh K� Tr�n
--Author: Ho�ng Steven

--******************--
x910201_g_ScriptId=910201
--******************--
x910201_g_CopySceneType=FUBEN_BINGSHENZHEN										--C�c tham s� c�a ph� b�n. Tham kh�o "ScriptGlobal.lua"
--******************--
x910201_g_TickTime=1															--Th�i gian hi�n t�i c�a ph� b�n
x910201_g_NoUserTime=5000														--Th�i gian l�u l�i ph� b�n khi kh�ng c�n ai trong ph� b�n (нn v� Mili Gi�y)
x910201_g_Fuben_X=126															--Pos X �i�m h�i sinh ph� b�n
x910201_g_Fuben_Y=142															--Pos Y �i�m h�i sinh ph� b�n
x910201_g_Limit_Member=3														--S� l��ng th�nh vi�n t�i thi�u trong �i ng�
x910201_g_Limit_FuBenTimes = 3 -- so lan tham gia phu ban
x910201_g_Fuben_Scene="BattleField.nav"											--Load file Scene
--******************--
x910201_g_Need_Level=70															--Level t�i thi�u tham gia ph� b�n
--******************--
x910201_g_Notice=
{
	[1]="Ph� b�n hi�n t�i s� ��ng sau 30 ph�t n�a!",							--Th�ng b�o khi c�n 30 ph�t
	[2]="Ph� b�n hi�n t�i s� ��ng sau 15 ph�t n�a!",							--Th�ng b�o khi c�n 15 ph�t
	[3]="Ph� b�n hi�n t�i s� ��ng sau 5 ph�t n�a!",								--Th�ng b�o khi c�n 5 ph�t
	[4]="Ph� b�n hi�n t�i s� ��ng sau 1 ph�t n�a!",								--Th�ng b�o khi c�n 1 ph�t
	[5]="Ph� b�n hi�n t�i s� ��ng sau 30 gi�y n�a!",							--Th�ng b�o khi c�n 30 gi�y
	[6]="Ph� b�n hi�n t�i s� ��ng sau 15 gi�y n�a!",							--Th�ng b�o khi c�n 15 gi�y
	[7]="Ph� b�n hi�n t�i s� ��ng sau 5 gi�y n�a!",								--Th�ng b�o khi c�n 5 gi�y
	[8]="Nhi�m v� ho�n th�nh, c�c h� s� r�i kh�i ��y sau 30 gi�y!",				--Th�ng b�o ho�n th�nh nhi�m v�
	[9]="Ph� b�n hi�n t�i s� ��ng sau 2 gi� n�a!",								--Th�ng b�o khi c�n 120 ph�t
	[10]="Ph� b�n hi�n t�i s� ��ng sau 1 gi� n�a!",								--Th�ng b�o khi c�n 60 ph�t
}
--******************--
x910201_g_NPC	=	{	Index=10012,	Name="Cao D߽ng",	Pos_X=127,	Pos_Y=146,	ScriptID=910207	}	--NPC Cao D߽ng
--******************--
x910201_g_Boss=
{
	["Xiao Yi Feng"]		=	{	Index=15006,	Name="Ti�u D�t Phong",			Title="T�t Nh� Phong",		Pos_X=51,	Pos_Y=54,	AIScript=265,	ScriptID=910202		},	--Ti�u D�t Phong
	["Xiao Ru Wei"]			=	{	Index=15031,	Name="Ti�u Nh� �y",				Title="T� Nh� L�m",			Pos_X=174,	Pos_Y=100,	AIScript=266,	ScriptID=910204		},	--Ti�u Nh� �y
	["Xiao Ru Jun"]			=	{	Index=15026,	Name="Ti�u Nh� Qu�n",			Title="T� Nh� L�m",			Pos_X=174,	Pos_Y=37,	AIScript=266,	ScriptID=910203		},	--Ti�u Nh� Qu�n
	["Ye Lv Yan"]			=	{	Index=15071,	Name="Gia Lu�t Di�m",			Title="X�m L��c Nh� H�a",	Pos_X=193,	Pos_Y=195,	AIScript=267,	ScriptID=910205		},	--Gia Lu�t Di�m
	["Ye Lv Lian Cheng"]	=	{	Index=15086,	Name="Gia Lu�t Li�n Th�nh",		Title="B�t еng Nh� S�n",	Pos_X=53,	Pos_Y=203,	AIScript=268,	ScriptID=910206		},	--Gia Lu�t Li�n Th�nh
}
--******************--
x910201_g_Fuben_Level=8															--C�p � c�a ph� b�n
x910201_g_Fuben_Step=9															--C�c b߾c ho�t �ng c�a ph� b�n
x910201_g_Fuben_Start_Time=10													--Th�i gian b�t �u c�a ph� b�n
x910201_g_Attack_Step=11														--B߾c th�ng b�o l�n tr߾c
x910201_g_Last_Time=12															--Th�i gian tr߾c ��
x910201_g_Time_Step=13															--�� th�ng b�o th�i gian ph� b�n ch�a
x910201_g_Call_Timer=14															--Th�i gian ph�c sinh c�a Ti�u Nh� Qu�n ho�c Ti�u Nh� �y khi �ng b�n c�n s�ng
x910201_g_Out_Timer=15															--Th�i gian ra ngo�i ph� b�n
x910201_g_Scene_Back_Index=3													--ID c�nh tr� ra
x910201_g_Scene_Pos_X=4															--T�a � X c�nh tr� ra
x910201_g_Scene_Pos_Y=5															--T�a � Y c�nh tr� ra
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910201_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910201_g_ScriptId,"T�p k�ch b�t ng�",6,0)				--V�o ph� b�n Binh Th�nh K� Tr�n
	AddNumText(sceneId,x910201_g_ScriptId,"Ta c�n chu�n b� k� h�n",-1,1)		--H�y b� y�u c�u
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
		x910201_MakeCopyScene(sceneId,selfId)									--Kh�i t�o ph� b�n
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910201_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ng߶i ch�i n�y kh�ng c� �i ng�
		return 0,"C�c h� c�n gia nh�p v�o m�t �i ng� t�i thi�u #G"..x910201_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ng߶i ch�i kh�ng ph�i �i tr߷ng
		return 0,"Ch� c� �i tr߷ng m�i c� th� quy�t �nh c� tham gia hay kh�ng. C�c h� h�y g�i �i tr߷ng c�a �n n�i chuy�n v�i t�i h�!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910201_g_Limit_Member then					--S� l��ng th�nh vi�n kh�ng ��
		return 0,"T� �i c�a c�c h� c�n c� t�i thi�u #G"..x910201_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--еi ng� c� th�nh vi�n kh�ng � g�n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"C�c h� c�n tri�u t�p �� �i ng� c�a m�nh �n ch� t�i h� m�i c� th� ti�n v�o Binh Th�nh K� Tr�n!"
	end
	--******************--
	if GetMissionData(sceneId,selfId,MD_BINGSHEN_DAYTIME)==GetDayTime() then	--�� tham gia ph� b�n h�m nay
		--return 0,"Ng�y h�m nay c�c h� �� tham gia ph� b�n n�y r�i!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910201_g_Need_Level  then				--C� th�nh vi�n kh�ng �� c�p � y�u c�u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c�p � kh�ng �� c�p #G"..x910201_g_Need_Level..", e r�ng kh� c� th� b�o to�n t�nh m�ng!"
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
		
		if lastDayCount >= x910201_g_Limit_FuBenTimes  then	--C� th�nh vi�n �� tham gia ph� b�n n�y r�i
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
function x910201_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x910201_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID �i tr߷ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910201_g_NoUserTime)					--Th�i gian l�u ph� b�n khi kh�ng c�n ai
	LuaFnSetCopySceneData_Timer(sceneId,x910201_g_TickTime)								--Th�i gian ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,0,x910201_g_CopySceneType)						--Set th�ng s� ph� b�n (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910201_g_ScriptId)							--ID script ph� b�n
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
function x910201_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Th�ng b�o kh�i t�o ph� b�n
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid)
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910201_g_Fuben_X,x910201_g_Fuben_Y) 			--��a t�t c� th�nh vi�n nh�m �n ph� b�n
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910201_OnCopySceneTimer(sceneId,nowTime)											--H�m n�y check li�n t�c m�i Mili gi�y khi ph� b�n c�n t�n t�i
	
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Fuben_Step)					--L�y thao t�c tr�n ph� b�n
	--******************--
	x910201_ShowNoticesFubenTime(sceneId,nowTime)											--Hi�n th�ng b�o th�i gian ph� b�n
	local nTick=x910201_TickTimer(sceneId,nowTime)
	--******************--
	if nStep==0 then
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Start_Time,nowTime)				--Kh�i t�o th�i gian b�t �u ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Last_Time,nowTime)					--C�p nh�t th�i gian ph� b�n
		x910201_CreatMyNPC(sceneId)															--Kh�i t�o NPC Cao D߽ng
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,1)							--C�p nh�t b߾c ho�t �ng ph� b�n
	elseif nStep==1 then																	
		x910201_CreateBoss(sceneId,"Xiao Yi Feng")											--Kh�i t�o Ti�u D�t Phong
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C�p nh�t b߾c ho�t �ng ph� b�n
	elseif nStep==2 then
		x910201_CreateBoss(sceneId,"Xiao Ru Wei")											--Kh�i t�o Ti�u Nh� �y
		x910201_CreateBoss(sceneId,"Xiao Ru Jun")											--Kh�i t�o Ti�u Nh� Qu�n
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C�p nh�t b߾c ho�t �ng ph� b�n
	elseif nStep==3 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Call_Timer)				--L�y th�i gian g�i Boss
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,nTime-nTick)				--C�p nh�t l�i th�i gian
		if nTime-nTick<=0 then
			if x910201_CheckBossLeft(sceneId,selfId,"Xiao Ru Jun")==1 then					--Ki�m tra n�u c�n Ti�u Nh� Qu�n
				x910201_CreateBoss(sceneId,"Xiao Ru Wei")									--Kh�i t�o Ti�u Nh� �y
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,5000)				--C�p nh�t th�i gian g�i anh em Ti�u Nh� Qu�n, Ti�u Nh� �y
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)				--C�p nh�t b߾c ho�t �ng ph� b�n
			elseif x910201_CheckBossLeft(sceneId,selfId,"Xiao Ru Wei")==1 then				--Ki�m tra n�u c�n Ti�u Nh� �y
				x910201_CreateBoss(sceneId,"Xiao Ru Jun")									--Kh�i t�o Ti�u Nh� Qu�n
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,5000)				--C�p nh�t th�i gian g�i anh em Ti�u Nh� Qu�n, Ti�u Nh� �y
				LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)				--C�p nh�t b߾c ho�t �ng ph� b�n
			end
		end
	elseif nStep==4 then
		x910201_CreateBoss(sceneId,"Ye Lv Yan")												--Kh�i t�o Gia Lu�t Di�m
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C�p nh�t b߾c ho�t �ng ph� b�n
	elseif nStep==5 then
		x910201_CreateBoss(sceneId,"Ye Lv Lian Cheng")										--Kh�i t�o Gia Lu�t Li�n Thanh
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,100)						--C�p nh�t b߾c ho�t �ng ph� b�n
	elseif nStep==6 then
		x910201_TipAllHuman(sceneId,x910201_g_Notice[8])									--Th�ng b�o ho�n th�nh nhi�m v�
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,8)							--C�p nh�t b߾c ho�t �ng ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Out_Timer,30000)						--C�p nh�t th�i gian r�i ph� b�n
	elseif nStep==7 then
		x910201_KickOutAllPlayer(sceneId)													--��a t�t c� ng߶i ch�i v� th�nh th�
	elseif nStep==8 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Out_Timer)
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,7)						--C�p nh�t b߾c ho�t �ng ph� b�n
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
	local str=format("#PQu� ph�n n� v�i c�nh c߶ng h�o �c b� �p b�c, #{_INFOUSR%s} c�ng �ng ��i #P t�i s�o huy�t #GBinh Th�nh K� Tr�n#P c�a �ch, kh� chi�n �c li�t. Chi�n th�ng tr� v� c�n mang theo ���c #{_INFOMSG%s}#P. Th�t ��ng ng��ng m�!",Player_Name,Item_Infor)
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
	
	--SetMissionData(sceneId,selfId,MD_BINGSHEN_DAYTIME,GetDayTime())							--��nh d�u h�m nay �� tham gia ph� b�n
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910201_g_Fuben_X,x910201_g_Fuben_Y)	--Уt �i�m h�i sinh t�i ph� b�n
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
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Last_Time)			--L�y th�i gian tr߾c ��
	LuaFnSetCopySceneData_Param(sceneId,x910201_g_Last_Time,nowTime)					--C�p nh�t th�i gian hi�n t�i c�a ph� b�n
	return nowTime-Last_Time															--L�y mili gi�y hi�n t�i t�nh t� th�i gian tr߾c
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
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--��a ng߶i ch�i tr� v� c�nh tr߾c ��
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
	local Current_Level=floor(nSum/nHumanCount)								--Level c�a Boss trong ph� b�n
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
	local NPC_Index=LuaFnCreateMonster(sceneId,x910201_g_NPC.Index+nDec,x910201_g_NPC.Pos_X,x910201_g_NPC.Pos_Y,3,0,x910201_g_NPC.ScriptID)	---Kh�i t�o NPC Cao D߽ng
	SetCharacterName(sceneId,NPC_Index,x910201_g_NPC.Name)				--C�p nh�t t�n Cao D߽ng
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Level,nDec)		--C�p nh�t c�p � ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,x910201_g_Call_Timer,5000)		--C�p nh�t th�i gian g�i anh em Ti�u Nh� Qu�n, Ti�u Nh� �y
	--******************--
	
end
--**********************************--
--*    Show Notices Fuben Time     *--
--**********************************--
function x910201_ShowNoticesFubenTime(sceneId,nowTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Time_Step)			--L�y s� th�ng b�o l�n tr߾c
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Fuben_Start_Time)		--L�y th�i gian b�t �u ph� b�n
	if nowTime-nTime>=5000 and nStep<1 then											--Th�ng b�o ��ng ph� b�n sau 120 ph�t
		x910201_TipAllHuman(sceneId,x910201_g_Notice[9])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,1)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=3600000 and nStep<2 then									--Th�ng b�o c�n 60 ph�t
		x910201_TipAllHuman(sceneId,x910201_g_Notice[10])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,2)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=5400000 and nStep<3 then									--Th�ng b�o c�n 30 ph�t
		x910201_TipAllHuman(sceneId,x910201_g_Notice[1])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,3)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=6300000 and nStep<4 then									--Th�ng b�o c�n 15 ph�t
		x910201_TipAllHuman(sceneId,x910201_g_Notice[2])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,4)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=6900000 and nStep<5 then									--Th�ng b�o c�n 5 ph�t
		x910201_TipAllHuman(sceneId,x910201_g_Notice[3])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,5)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=7140000 and nStep<6 then									--Th�ng b�o c�n 1 ph�t
		x910201_TipAllHuman(sceneId,x910201_g_Notice[4])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,6)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=7170000 and nStep<7 then									--Th�ng b�o c�n 30 gi�y
		x910201_TipAllHuman(sceneId,x910201_g_Notice[5])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,7)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=7185000 and nStep<8 then									--Th�ng b�o c�n 15 gi�y
		x910201_TipAllHuman(sceneId,x910201_g_Notice[6])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,8)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=7195000 and nStep<9 then									--Th�ng b�o c�n 5 gi�y
		x910201_TipAllHuman(sceneId,x910201_g_Notice[7])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,9)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=7200000 and nStep<10 then									--Th�ng b�o �� h�t th�i gian ph� b�n
		x910201_TipAllHuman(sceneId,x910201_g_Notice[8])
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Time_Step,10)					--C�p nh�t �� th�ng b�o l�n n�y
		LuaFnSetCopySceneData_Param(sceneId,x910201_g_Fuben_Step,7)					--H�t th�i gian, nh�y sang b߾c ��a ng߶i ch�i tr� v� c�nh c�
	end
	--******************--

end
--**********************************--
--*           Create Boss          *--
--**********************************--
function x910201_CreateBoss(sceneId,Boss_Array)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910201_g_Fuben_Level)			--L�y c�p � ph� b�n
	--******************--
	local Boss_Index=LuaFnCreateMonster(sceneId,x910201_g_Boss[Boss_Array].Index+nDec,x910201_g_Boss[Boss_Array].Pos_X,x910201_g_Boss[Boss_Array].Pos_Y,27,x910201_g_Boss[Boss_Array].AIScript,x910201_g_Boss[Boss_Array].ScriptID)	--Kh�i t�o Ti�u D�t Phong
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