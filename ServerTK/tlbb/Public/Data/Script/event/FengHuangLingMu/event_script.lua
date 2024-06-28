--Ph� b�n Ph�ng Ho�ng L�ng M�
--Author: Ho�ng Steven

--******************--
x930510_g_ScriptId=930510
--******************--
x930510_g_CopySceneType=FUBEN_FENGHUANGLINGMU									--C�c tham s� c�a ph� b�n. Tham kh�o "ScriptGlobal.lua"
--******************--
x930510_g_TickTime=1															--Th�i gian hi�n t�i c�a ph� b�n
x930510_g_NoUserTime=5000														--Th�i gian l�u l�i ph� b�n khi kh�ng c�n ai trong ph� b�n (нn v� Mili Gi�y)
x930510_g_Fuben_X=21															--Pos X �i�m h�i sinh ph� b�n
x930510_g_Fuben_Y=111															--Pos Y �i�m h�i sinh ph� b�n
x930510_g_Limit_Member=3														--S� l��ng th�nh vi�n t�i thi�u trong �i ng�
x930510_g_Limit_FuBenTimes=3 													--S� l�n tham gia ph� b�n trong ng�y
x930510_g_Fuben_Scene="PhoenixMaze.nav"											--Load file Scene
--******************--
x930510_g_Need_Level=70															--Level t�i thi�u tham gia ph� b�n
x930510_g_Fuben_Time=3600000													--Th�i gian �i ph� b�n
--******************--
x930510_g_Notices=
{
	[1]="Ph� b�n hi�n t�i s� ��ng sau 30 ph�t n�a!",							--Th�ng b�o khi c�n 30 ph�t
	[2]="Ph� b�n hi�n t�i s� ��ng sau 15 ph�t n�a!",							--Th�ng b�o khi c�n 15 ph�t
	[3]="Ph� b�n hi�n t�i s� ��ng sau 5 ph�t n�a!",								--Th�ng b�o khi c�n 5 ph�t
	[4]="Ph� b�n hi�n t�i s� ��ng sau 1 ph�t n�a!",								--Th�ng b�o khi c�n 1 ph�t
	[5]="Ph� b�n hi�n t�i s� ��ng sau 30 gi�y n�a!",							--Th�ng b�o khi c�n 30 gi�y
	[6]="Ph� b�n hi�n t�i s� ��ng sau 15 gi�y n�a!",							--Th�ng b�o khi c�n 15 gi�y
	[7]="Ph� b�n hi�n t�i s� ��ng sau 5 gi�y n�a!",								--Th�ng b�o khi c�n 5 gi�y
	[8]="Nhi�m v� ho�n th�nh, c�c h� s� r�i kh�i ��y sau 30 gi�y!",				--Th�ng b�o ho�n th�nh nhi�m v�
}
--******************--
x930510_g_NPC={	Index=603,	Name="L� D�",	Pos_X=16,	Pos_Y=111,	ScriptID=930512	}	--NPC L� D�
--******************--
x930510_g_Monster={	Index=13750,	Name="M�c Kim Gi�o �y"	}					--M�c Kim Gi�o �y
--******************--
x930510_g_Monster_Pos=															--T�a � M�c Kim Gi�o �y
{
	--Gian s� 1
	{	Pos_X=107,	Pos_Y=116	},
	{	Pos_X=118,	Pos_Y=117	},
	{	Pos_X=118,	Pos_Y=106	},
	{	Pos_X=106,	Pos_Y=116	},
	{	Pos_X=113,	Pos_Y=112	},
	{	Pos_X=110,	Pos_Y=114	},
	{	Pos_X=115,	Pos_Y=114	},
	{	Pos_X=115,	Pos_Y=109	},
	{	Pos_X=110,	Pos_Y=109	},
	--Gian s� 2	
	{	Pos_X=101,	Pos_Y=75	},
	{	Pos_X=118,	Pos_Y=75	},
	{	Pos_X=117,	Pos_Y=56	},
	{	Pos_X=102,	Pos_Y=56	},
	{	Pos_X=104,	Pos_Y=63	},
	{	Pos_X=113,	Pos_Y=63	},
	{	Pos_X=113,	Pos_Y=72	},
	{	Pos_X=104,	Pos_Y=72	},
	{	Pos_X=108,	Pos_Y=68	},
	--Gian s� 3	
	{	Pos_X=118,	Pos_Y=33	},
	{	Pos_X=97,	Pos_Y=34	},
	{	Pos_X=97,	Pos_Y=13	},
	{	Pos_X=119,	Pos_Y=13	},
	{	Pos_X=106,	Pos_Y=19	},
	{	Pos_X=115,	Pos_Y=20	},
	{	Pos_X=106,	Pos_Y=28	},
	{	Pos_X=115,	Pos_Y=28	},
	{	Pos_X=111,	Pos_Y=24	},
	--Gian s� 4	
	{	Pos_X=72,	Pos_Y=33	},
	{	Pos_X=54,	Pos_Y=33	},
	{	Pos_X=53,	Pos_Y=12	},
	{	Pos_X=73,	Pos_Y=13	},
	{	Pos_X=68,	Pos_Y=20	},
	{	Pos_X=59,	Pos_Y=20	},
	{	Pos_X=59,	Pos_Y=29	},
	{	Pos_X=68,	Pos_Y=29	},
	{	Pos_X=64,	Pos_Y=26	},
	--Gian s� 5	
	{	Pos_X=24,	Pos_Y=27	},
	{	Pos_X=9,	Pos_Y=28	},
	{	Pos_X=9,	Pos_Y=10	},
	{	Pos_X=31,	Pos_Y=10	},
	{	Pos_X=21,	Pos_Y=14	},
	{	Pos_X=12,	Pos_Y=14	},
	{	Pos_X=12,	Pos_Y=23	},
	{	Pos_X=21,	Pos_Y=23	},
	{	Pos_X=17,	Pos_Y=20	},
	--Gian s� 6
	{	Pos_X=12,	Pos_Y=61	},
	{	Pos_X=11,	Pos_Y=83	},
	{	Pos_X=27,	Pos_Y=84	},
	{	Pos_X=24,	Pos_Y=56	},
	{	Pos_X=15,	Pos_Y=69	},
	{	Pos_X=15,	Pos_Y=76	},
	{	Pos_X=22,	Pos_Y=76	},
	{	Pos_X=22,	Pos_Y=69	},
	{	Pos_X=19,	Pos_Y=73	},
	--C� 6 gian, m�i gian 9 qu�i, t�ng c�ng to�n map c� 54 qu�i
}
--******************--
x930510_g_Boss={	Index=13759,	Name="B�n S�n ��o Nh�n",	Title="Ch� nh�n Ph�ng Ho�ng L�ng M�",	Pos_X=67,	Pos_Y=73,	ScriptID=930511	}	--Boss B�n S�n ��o Nh�n
--******************--
x930510_g_Item=30010083															--Ph�ng Ho�ng L�ng M� Th�ng H�nh L�nh
--******************--
x930510_g_Scene_Back_Index=3													--ID c�nh tr� ra
x930510_g_Scene_Pos_X=4															--T�a � X c�nh tr� ra
x930510_g_Scene_Pos_Y=5															--T�a � Y c�nh tr� ra
x930510_g_Fuben_Level=8															--C�p � c�a ph� b�n
x930510_g_Fuben_Step=9															--C�c b߾c ho�t �ng c�a ph� b�n
x930510_g_Fuben_Start_Time=10													--Th�i gian b�t �u c�a ph� b�n
x930510_g_Last_Time=11															--Th�i gian tr߾c ��
x930510_g_Time_Step=12															--�� th�ng b�o th�i gian ph� b�n ch�a
x930510_g_Out_Timer=13															--Th�i gian ra ngo�i ph� b�n
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x930510_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x930510_g_ScriptId,"#GPh�ng Ho�ng L�ng M�",6,0)				--V�o ph� b�n Binh Th�nh K� Tr�n
	AddNumText(sceneId,x930510_g_ScriptId,"V� #GPh�ng Ho�ng L�ng M�",11,1)			--H�y b� y�u c�u
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x930510_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	if GetNumText()==1 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"#GPh�ng Ho�ng L�ng M�#W l� v�ng �t linh thi�ng ���c canh gi� b�i #GB�n S�n ��o Nh�n#W v� ��m tay sai #GM�c Kim Gi�o �y#W.")
			AddText(sceneId,"T� �i t�i thi�u #G"..x930510_g_Limit_Member.."#W, �i tr߷ng mang theo #G"..GetItemName(sceneId,x930510_g_Item).."#W l� c� th� �i tho�i v�i #GL� D�#W ti�n h�nh khai qu�t #GPh�ng Ho�ng L�ng M�#W.")
			AddText(sceneId,"M�i ng�y, m�i ng߶i ch� ���c ph�p tham gia kh�ng qu� #G"..x930510_g_Limit_FuBenTimes.." l�n#W.")
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
		x930510_MakeCopyScene(sceneId,selfId)									--Kh�i t�o ph� b�n
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x930510_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ng߶i ch�i n�y kh�ng c� �i ng�
		return 0,"C�c h� c�n gia nh�p v�o m�t �i ng� t�i thi�u #G"..x930510_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ng߶i ch�i kh�ng ph�i �i tr߷ng
		return 0,"Ch� c� �i tr߷ng m�i c� th� quy�t �nh c� tham gia hay kh�ng. C�c h� h�y g�i �i tr߷ng c�a �n n�i chuy�n v�i t�i h�!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x930510_g_Limit_Member then					--S� l��ng th�nh vi�n kh�ng ��
		return 0,"T� �i c�a c�c h� c�n c� t�i thi�u #G"..x930510_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	local NearTeamSize=GetNearTeamCount(sceneId,selfId)							--еi ng� c� th�nh vi�n kh�ng � g�n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"C�c h� c�n tri�u t�p �� �i ng� c�a m�nh �n ch� t�i h� m�i c� th� ti�n v�o Binh Th�nh K� Tr�n!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x930510_g_Need_Level  then				--C� th�nh vi�n kh�ng �� c�p � y�u c�u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum=nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c�p � kh�ng �� c�p #G"..x930510_g_Need_Level..", e r�ng kh� c� th� b�o to�n t�nh m�ng!"
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
		if lastDayCount>=x930510_g_Limit_FuBenTimes  then						--C� th�nh vi�n �� tham gia ph� b�n n�y r�i
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum=nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." trong ng�y h�m nay �� tham gia ph� b�n n�y �� s� l��t r�i!"
		return 0,msg
	end
	--******************--
	if LuaFnDelAvailableItem(sceneId,selfId,x930510_g_Item,1)<1 then
		return 0,"C�c h� kh�ng c� "..GetItemName(sceneId,x930510_g_Item)..", l�m sao c� th� �t nh�t Ph�ng Ho�ng L�ng M� ���c?"
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
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID �i tr߷ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x930510_g_NoUserTime)					--Th�i gian l�u ph� b�n khi kh�ng c�n ai
	LuaFnSetCopySceneData_Timer(sceneId,x930510_g_TickTime)								--Th�i gian ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,0,x930510_g_CopySceneType)						--Set th�ng s� ph� b�n (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x930510_g_ScriptId)							--ID script ph� b�n
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
function x930510_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Th�ng b�o kh�i t�o ph� b�n
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid)
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x930510_g_Fuben_X,x930510_g_Fuben_Y) 			--��a t�t c� th�nh vi�n nh�m �n ph� b�n
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x930510_OnCopySceneTimer(sceneId,nowTime)											--H�m n�y check li�n t�c m�i Mili gi�y khi ph� b�n c�n t�n t�i
	
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Step)					--L�y thao t�c tr�n ph� b�n
	--******************--
	x930510_ShowNoticesFubenTime(sceneId,nowTime)											--Hi�n th�ng b�o th�i gian ph� b�n
	local nTick=x930510_TickTimer(sceneId,nowTime)
	--******************--
	if nStep==0 then
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Start_Time,nowTime)				--Kh�i t�o th�i gian b�t �u ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Last_Time,nowTime)					--C�p nh�t th�i gian ph� b�n
		x930510_CreateMyNPC(sceneId)														--Kh�i t�o NPC L� D�
		x930510_CreateMonster(sceneId)														--Kh�i t�o M�c Kim Gi�o �y
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Step,1)							--C�p nh�t b߾c ho�t �ng ph� b�n
	elseif nStep==1 then
		if x930510_CheckMonsterLeft(sceneId)==0 then										--N�u kh�ng c�n M�c Kim Gi�o �y
			x930510_CreateBoss(sceneId)														--Kh�i t�o B�n S�n ��o Nh�n
			LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Step,100)					--C�p nh�t b߾c ho�t �ng ph� b�n
		end
	elseif nStep==2 then																	--Ъm ng��c th�i gian r�i ph� b�n
		x930510_TipAllHuman(sceneId,x930510_g_Notices[8])									--Th�ng b�o �m ng��c 30s sau r�i ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Step,3)							--C�p nh�t b߾c ho�t �ng ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Out_Timer,30000)						--C�p nh�t b�t �u t�nh th�i gian r�i ph� b�n
	elseif nStep==3 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Out_Timer)				--L�y th�i gian �m ng��c c�n l�i � r�i ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Out_Timer,nTime-nTick)				--Ъm ng��c th�i gian
		if nTime-nTick<=0 then
			x930510_KickOutAllPlayer(sceneId)												--��a t�t c� ng߶i ch�i tr� v� th�nh th�
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
	local str=format("#PTrong chuy�n khai qu�t #GPh�ng Minh V߽ng L�ng#P l�n n�y, #{_INFOUSR%s} c�ng �ng ��i quy�t chi�n chi�n �c li�t c�ng #GB�n S�n ��o Nh�n#P �em chi�n th�ng tr� v�, �ng th�i c�n mang theo ���c #{_INFOMSG%s}#P!",Player_Name,Item_Infor)
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
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x930510_g_Fuben_X,x930510_g_Fuben_Y)	--Уt �i�m h�i sinh t�i ph� b�n
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
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Last_Time)			--L�y th�i gian tr߾c ��
	LuaFnSetCopySceneData_Param(sceneId,x930510_g_Last_Time,nowTime)					--C�p nh�t th�i gian hi�n t�i c�a ph� b�n
	return nowTime-Last_Time															--L�y mili gi�y hi�n t�i t�nh t� th�i gian tr߾c
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
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--��a ng߶i ch�i tr� v� c�nh tr߾c ��
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
	local Current_Level=floor(nSum/nHumanCount)								--Level c�a Boss trong ph� b�n
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
	local NPC_Index=LuaFnCreateMonster(sceneId,x930510_g_NPC.Index,x930510_g_NPC.Pos_X,x930510_g_NPC.Pos_Y,3,0,x930510_g_NPC.ScriptID)	---Kh�i t�o NPC L� D�
	SetCharacterName(sceneId,NPC_Index,x930510_g_NPC.Name)				--C�p nh�t t�n L� D�
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x930510_g_Fuben_Level,nDec)		--C�p nh�t c�p � ph� b�n
	--******************--
	
end
--**********************************--
--*    Show Notices Fuben Time     *--
--**********************************--
function x930510_ShowNoticesFubenTime(sceneId,nowTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Time_Step)					--L�y s� th�ng b�o l�n tr߾c
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Start_Time)				--L�y th�i gian b�t �u ph� b�n
	local Exist_Time=nowTime-nTime
	--******************--
	if nStep==0 and Exist_Time>=5000 then													--Th�ng b�o c�n 1 gi�
		x930510_TipAllHuman(sceneId,x930510_g_Notices[1])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,1)
	elseif nStep==1 and Exist_Time>=1800000 then											--Th�ng b�o c�n 30 ph�t
		x930510_TipAllHuman(sceneId,x930510_g_Notices[2])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,2)
	elseif nStep==2 and Exist_Time>=2700000 then											--Th�ng b�o c�n 15 ph�t
		x930510_TipAllHuman(sceneId,x930510_g_Notices[3])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,3)
	elseif nStep==3 and Exist_Time>=3300000 then											--Th�ng b�o c�n 5 ph�t
		x930510_TipAllHuman(sceneId,x930510_g_Notices[4])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,4)
	elseif nStep==4 and Exist_Time>=3540000 then											--Th�ng b�o c�n 1 ph�t
		x930510_TipAllHuman(sceneId,x930510_g_Notices[5])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,5)
	elseif nStep==5 and Exist_Time>=3570000 then											--Th�ng b�o c�n 30 gi�y
		x930510_TipAllHuman(sceneId,x930510_g_Notices[6])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,6)
	elseif nStep==6 and Exist_Time>=3585000 then											--Th�ng b�o c�n 15 gi�y
		x930510_TipAllHuman(sceneId,x930510_g_Notices[7])
		LuaFnSetCopySceneData_Param(sceneId,x930510_g_Time_Step,7)
	elseif nStep==7 and Exist_Time>=3595000 then											--Th�ng b�o c�n 5 gi�y
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Level)			--L�y c�p � ph� b�n
	--******************--
	for i,Pos in x930510_g_Monster_Pos do
		local Monster_Index=LuaFnCreateMonster(sceneId,x930510_g_Monster.Index+nDec,Pos.Pos_X,Pos.Pos_Y,27,0,-1)	--Kh�i t�o M�c Kim Gi�o �y
		SetCharacterName(sceneId,Monster_Index,x930510_g_Monster.Name)
	end
	--******************--
	
end
--**********************************--
--*           Create Boss          *--
--**********************************--
function x930510_CreateBoss(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x930510_g_Fuben_Level)			--L�y c�p � ph� b�n
	--******************--
	local Boss_Index=LuaFnCreateMonster(sceneId,x930510_g_Boss.Index+nDec,x930510_g_Boss.Pos_X,x930510_g_Boss.Pos_Y,27,0,x930510_g_Boss.ScriptID)	--Kh�i t�o Ti�u D�t Phong
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