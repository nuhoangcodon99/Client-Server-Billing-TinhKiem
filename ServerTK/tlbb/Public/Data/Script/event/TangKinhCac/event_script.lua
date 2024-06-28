--Ph� b�n T�ng Kinh C�c
--Author: Ho�ng Steven

--******************--
x910120_g_ScriptId=910120
--******************--
x910120_g_CopySceneType=FUBEN_CANGJINGGE										--C�c tham s� c�a ph� b�n. Tham kh�o "ScriptGlobal.lua"
--******************--
x910120_g_TickTime=1															--Th�i gian hi�n t�i c�a ph� b�n
x910120_g_NoUserTime=5000														--Th�i gian l�u l�i ph� b�n khi kh�ng c�n ai trong ph� b�n (нn v� Mili Gi�y)
x910120_g_Fuben_X=64															--Pos X �i�m h�i sinh ph� b�n
x910120_g_Fuben_Y=35															--Pos Y �i�m h�i sinh ph� b�n
x910120_g_FuBenTime=1800000														--Th�i gian ph� b�n (нn v� Mili Gi�y)
x910120_g_Limit_Member=3														--S� l��ng th�nh vi�n t�i thi�u trong �i ng�
x910120_g_Fuben_Scene="cangjingge.nav"											--Load file Scene
--******************--
x910120_g_Need_Level=40															--Level t�i thi�u tham gia ph� b�n
--******************--
x910120_g_Notice=
{
	[1]="�� gi�t ch�t M�ng Di�n �c T�ng: 1/1",									--Th�ng b�o �� gi�t ch�t Boss
	[2]="Ph� b�n hi�n t�i s� ��ng sau 30 ph�t n�a!",							--Th�ng b�o khi c�n 30 ph�t
	[3]="Ph� b�n hi�n t�i s� ��ng sau 15 ph�t n�a!",							--Th�ng b�o khi c�n 15 ph�t
	[4]="Ph� b�n hi�n t�i s� ��ng sau 5 ph�t n�a!",								--Th�ng b�o khi c�n 5 ph�t
	[5]="Ph� b�n hi�n t�i s� ��ng sau 1 ph�t n�a!",								--Th�ng b�o khi c�n 1 ph�t
	[6]="Ph� b�n hi�n t�i s� ��ng sau 30 gi�y n�a!",							--Th�ng b�o khi c�n 30 gi�y
	[7]="Ph� b�n hi�n t�i s� ��ng sau 15 gi�y n�a!",							--Th�ng b�o khi c�n 15 gi�y
	[8]="Ph� b�n hi�n t�i s� ��ng sau 5 gi�y n�a!",								--Th�ng b�o khi c�n 5 gi�y
	[9]="Nhi�m v� th�t b�i. C�c h� s� t� r�i kh�i ��y!",						--Th�ng b�o khi h�t ph� b�n
	[10]="��t t�n c�ng ti�p theo c�a �c t�ng s� b�t �u sau %d gi�y n�a. C�n l�i %d l��t t�n c�ng ti�p!",	--Th�ng b�o c�c ��t �c t�ng t�n c�ng
	[11]="M�ng Di�n �c T�ng s� xu�t hi�n sau %d gi�y n�a!",						--Th�ng b�o M�ng Di�n �c T�ng s�p xu�t hi�n
	[12]="M�ng Di�n �c T�ng �� xu�t hi�n!",										--Th�ng b�o M�ng Di�n �c T�ng xu�t hi�n
	[13]="�c t�ng c�ng Ng�y Quan Qu�n �ang ti�n v� ph�a V� T�ng Thi�u L�m!",	--Th�ng b�o �c t�ng v� Ng�y Quan Qu�n xu�t hi�n
	[14]="Nhi�m v� ho�n th�nh, c�c h� s� r�i kh�i ��y sau 30 gi�y!",			--Th�ng b�o ho�n th�nh nhi�m v�
	[15]="V� T�ng Thi�u L�m �� t� n�n. Nhi�m v� th�t b�i. C�c h� s� r�i kh�i ��y!",	--Th�ng b�o ho�n th�nh nhi�m v�
}
--******************--
x910120_g_Alies_CamID=109														--Qu�n �ng minh
x910120_g_Enemies_CamID=110														--Qu�n �ch
--******************--
x910120_g_Attack_Time=60000														--Kho�ng c�ch gi�a 2 l�n �c t�ng t�n c�ng
x910120_g_Boss_Appear_Time=30000												--Th�i gian M�ng Di�n �c T�ng xu�t hi�n
--******************--
x910120_g_Monk={	Index=13566,	Name="Thi�u L�m V� T�ng",	Title="#GCao t�ng h� v� T�ng Kinh C�c",	Pos_X=65,	Pos_Y=108,	ScriptID=910123	}
--******************--
x910120_g_Monster={}
x910120_g_Monster[1]={	Index=13584,	Name="Ng�y Quan Qu�n"	}
x910120_g_Monster[2]={	Index=13575,	Name="��o Th� �c T�ng"	}
x910120_g_Monster_Pos_X={	19,	20,	21,	22,	23,	24,	25,	26,	27,	28,	29,	99,	100,	101,	102,	103,	104,	105,	106,	107,	108,	109	}
x910120_g_Monster_Pos_Y={	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,	45,		45,		45,		45,		45,		45,		45,		45,		45,		45	}
x910120_g_Monster_ScriptID=910125												--Script Monster
x910120_g_Impact_Immue=357														--Hi�u �ng mi�n d�ch
--******************--
x910120_g_Trap={}																--C� quan ph�t ��ng
x910120_g_Trap[1]=	{	Index=550,	Name="Lam S�c Ph�t ��ng C� Quan"	}
x910120_g_Trap[2]=	{	Index=551,	Name="L�c S�c Ph�t ��ng C� Quan"	}
x910120_g_Trap[3]=	{	Index=552,	Name="H�ng S�c Ph�t ��ng C� Quan"	}
x910120_g_Trap_Pos_X1=50														--T�a � b�n ph�i
x910120_g_Trap_Pos_Y1=85
x910120_g_Trap_Pos_X2=78														--T�a � b�n tr�i
x910120_g_Trap_Pos_Y2=85
x910120_g_Trap_Appear_Time=300000												--Kho�ng c�ch gi�a 2 l�n xu�t hi�n c� quan
x910120_g_Trap_Exist_Time=300000												--Th�i gian t�n t�i c� quan
--******************--
x910120_g_Boss=	{	Index=13593,	Name="M�ng Di�n �c T�ng",	Title="V�n Ph�t Quy Nguy�n",	Pos_X=64,	Pos_Y=33,	ScriptID=910121	}
--******************--
x910120_g_Fuben_Level=8															--C�p � c�a ph� b�n
x910120_g_Fuben_Step=9															--C�c b߾c ho�t �ng c�a ph� b�n
x910120_g_Fuben_Start_Time=10													--Th�i gian b�t �u c�a ph� b�n
x910120_g_Fuben_Attack_Timer=11													--Th�i gian t�n c�ng c�n l�i
x910120_g_Attack_Step=12														--B߾c th�ng b�o l�n tr߾c
x910120_g_Last_Time=13															--Th�i gian tr߾c ��
x910120_g_Time_Step=14															--�� th�ng b�o th�i gian ph� b�n ch�a
x910120_g_Attack_Count=15														--S� l�n �� t�n c�ng
x910120_g_Exit_Time_Fuben=16													--Th�i gian r�i ph� b�n
x910120_g_Mission_Completed=17													--�� ho�n th�nh nhi�m v� ch�a (0/1)
x910120_g_Trap_Type=18															--C� quan tr߾c ��
x910120_g_Out_Timer=19															--Ъm ng��c th�i gian r�i ph� b�n
x910120_g_Scene_Back_Index=3													--ID c�nh tr� ra
x910120_g_Scene_Pos_X=4															--T�a � X c�nh tr� ra
x910120_g_Scene_Pos_Y=5															--T�a � Y c�nh tr� ra
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910120_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910120_g_ScriptId,"B�o h� T�ng Kinh C�c",6,0)			--B�o h� T�ng Kinh C�c
	AddNumText(sceneId,x910120_g_ScriptId,"Ta c�n chu�n b� k� h�n",-1,1)		--H�y b� y�u c�u
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
		x910120_MakeCopyScene(sceneId,selfId)									--Kh�i t�o ph� b�n
		LuaFnDeleteMonster(sceneId,targetId)
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910120_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ng߶i ch�i n�y kh�ng c� �i ng�
		return 0,"Th� ch� c�n gia nh�p v�o m�t �i ng� t�i thi�u #G"..x910120_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ng߶i ch�i kh�ng ph�i �i tr߷ng
		return 0,"Ch� c� �i tr߷ng m�i c� th� quy�t �nh c� tham gia hay kh�ng. Th� ch� h�y g�i �i tr߷ng c�a th� ch� �n n�i chuy�n v�i ti�u t�ng!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910120_g_Limit_Member then					--S� l��ng th�nh vi�n kh�ng ��
		return 0,"T� �i c�a th� ch� c�n c� t�i thi�u #G"..x910120_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--еi ng� c� th�nh vi�n kh�ng � g�n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Th� ch� c�n tri�u t�p �� �i ng� c�a m�nh �n ch� ti�u t�ng m�i c� th� ti�n v�o b�o h� T�ng Kinh C�c!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910120_g_Need_Level then					--C� th�nh vi�n kh�ng �� c�p � y�u c�u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a th� ch� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c�p � kh�ng �� c�p #G"..x910120_g_Need_Level..", e r�ng kh� c� th� di�t tr� �c t�ng!"
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
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID �i tr߷ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910120_g_NoUserTime)					--Th�i gian l�u ph� b�n khi kh�ng c�n ai
	LuaFnSetCopySceneData_Timer(sceneId,x910120_g_TickTime)								--Th�i gian ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,0,x910120_g_CopySceneType)						--Set th�ng s� ph� b�n (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910120_g_ScriptId)							--ID script ph� b�n
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
function x910120_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Th�ng b�o kh�i t�o ph� b�n
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid)
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910120_g_Fuben_X,x910120_g_Fuben_Y) 			--��a t�t c� th�nh vi�n nh�m �n ph� b�n
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910120_OnCopySceneTimer(sceneId,nowTime)											--H�m n�y check li�n t�c m�i Mili gi�y khi ph� b�n c�n t�n t�i
	
	--******************--
	x910120_CheckHaveTeam(sceneId)															--Ki�m tra ng߶i ch�i c� trong �i ng� kh�ng, n�u kh�ng th� r�i ph� b�n
	--******************--
	x910120_ActiveMyTrap(sceneId)															--K�ch ho�t c� quan
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Step)					--L�y thao t�c tr�n ph� b�n
	--******************--
	if nStep~=0 then
		local My_Monk=x910120_IsMonkLive(sceneId)											--Ki�m tra xem Thi�u L�m V� T�ng c� c�n s�ng kh�ng
		if My_Monk==0 then
			x910120_TipAllHuman(sceneId,x910120_g_Notice[15])
			x910120_KickOutAllPlayer(sceneId)												--��a t�t c� ng߶i ch�i v� th�nh th�
			return
		end
	end
	--******************--
	if nStep==0 then																		--Kh�i t�o ph� b�n, kh�i t�o NPC
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Start_Time,nowTime)				--Kh�i t�o th�i gian b�t �u ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Last_Time,nowTime)					--C�p nh�t th�i gian ph� b�n
		x910120_CreatMyNPC(sceneId)															--Kh�i t�o NPC �u
	elseif nStep==1 then
		local nTick=x910120_TickTimer(sceneId,nowTime)
		local Next_Attack=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer)	--L�y th�i gian c�n l�i cho ��t t�n c�ng ti�p theo
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,Next_Attack-nTick)	--C�p nh�t th�i gian t�n c�ng ti�p theo
		x910120_ShowNoticesFubenTime(sceneId,nowTime)										--Hi�n th�ng b�o th�i gian ph� b�n
		x910120_ShowNoticesAttackTime(sceneId,Next_Attack-nTick)							--Hi�n th�ng b�o ��t t�n c�ng ti�p theo
		if Next_Attack-nTick<=0 then														--�� �n gi� t�n c�ng
			x910120_CreatMyTrap(sceneId)													--Kh�i t�o c� quan
			x910120_CreatEvilMonster(sceneId)												--Kh�i t�o �c t�ng
		end
	elseif nStep==2 then
		local nTick=x910120_TickTimer(sceneId,nowTime)
		x910120_ShowNoticesFubenTime(sceneId,nowTime)										--Hi�n th�ng b�o th�i gian ph� b�n
		local nMonsterLeft=x910120_CheckHaveMonsterLeft(sceneId)							--Ki�m tra s� qu�i c�n l�i
		if nMonsterLeft>0 then																--N�u Ng�y Quan Qu�n v� �c T�ng v�n ch�a ch�t
			return
		end
		local Time_Left=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer)	--L�y th�i gian c�n l�i cho ��t t�n c�ng ti�p theo
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,Time_Left-nTick)	--C�p nh�t th�i gian t�n c�ng ti�p theo
		x910120_ShowNoticesBossAppearTime(sceneId,Time_Left-nTick)							--Hi�n th�ng b�o th�i gian xu�t hi�n Boss
		if Time_Left-nTick<=0 then															--�� �n gi� ra Boss
			x910120_CreatMyBoss(sceneId)													--Kh�i t�o Boss
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,3)						--C�p nh�t b߾c ho�t �ng ph� b�n
		end
	elseif nStep==3 then
		local Total_Boss_Left=x910120_CheckHaveBossLeft(sceneId)							--Ki�m tra Boss c�n s�ng kh�ng. N�u kh�ng c�n th� th�ng
		local nTick=x910120_TickTimer(sceneId,nowTime)
		x910120_ShowNoticesFubenTime(sceneId,nowTime)										--Hi�n th�ng b�o th�i gian ph� b�n
		if Total_Boss_Left==0 then
			x910120_OnCompleteMission(sceneId)												--Ho�n th�nh nhi�m v�
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,4)						--Kh�ng l�m g� n�a
			return
		end
	elseif nStep==4 then
		local Is_Winner=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Mission_Completed)	--Nhi�m v� �� ho�n th�nh ch�a
		if Is_Winner==0 then
			x910120_TipAllHuman(sceneId,x910120_g_Notice[9])								--Th�ng b�o nhi�m v� th�t b�i
			x910120_KickOutAllPlayer(sceneId)												--��a t�t c� ng߶i ch�i v� th�nh th�													
		else
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,5)						--T�nh gi� r�i ph� b�n
			LuaFnSetCopySceneData_Param(sceneId,x910120_g_Out_Timer,30000)					--C�p nh�t th�i gian r�i ph� b�n
		end
	elseif nStep==5 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Out_Timer)
		local nTick=x910120_TickTimer(sceneId,nowTime)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			x910120_KickOutAllPlayer(sceneId)												--��a ng߶i ch�i ra kh�i map
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
	local str=format("#PL� �c t�ng �n m�t d�m tr�m kinh th� trong #GT�ng Kinh C�c#P c�a Thi�u L�m ph�i. #{_INFOUSR%s} c�ng �ng �i#P c�t c�ng �n d�p lo�n. #GM�ng Di�n �c T�ng c�ng b� l�#P ph�i giao l�i #{_INFOMSG%s}#P � b�o to�n t�nh m�ng!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910120_OnPlayerEnter(sceneId,selfId)

	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910120_g_Fuben_X,x910120_g_Fuben_Y)	--Уt �i�m h�i sinh t�i ph� b�n
	--******************--
	SetUnitCampID(sceneId,selfId,selfId,x910120_g_Alies_CamID)								--C�p nh�t phe �ng minh
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
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Last_Time)			--L�y th�i gian tr߾c ��
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Last_Time,nowTime)					--C�p nh�t th�i gian hi�n t�i c�a ph� b�n
	return nowTime-Last_Time															--L�y mili gi�y hi�n t�i t�nh t� th�i gian tr߾c
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
				AddText(sceneId,"C�c h� kh�ng � trong nh�m, nhi�m v� th�t b�i!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--��a ng߶i ch�i tr� v� c�nh tr߾c ��
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
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Mission_Completed,1)					--C�p nh�t ch�a ho�n th�nh nhi�m v�
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
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,Scene,x,y)		--��a ng߶i ch�i tr� v� c�nh tr߾c ��
		end
	end
	--******************--
	
end
--**********************************--
--*          Creat My Boss         *--
--**********************************--
function x910120_CreatMyBoss(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Level)	--L�y c�p � ph� b�n
	--******************--
	local Boss_Index=LuaFnCreateMonster(sceneId,x910120_g_Boss.Index+nDec,x910120_g_Boss.Pos_X,x910120_g_Boss.Pos_Y,27,0,x910120_g_Boss.ScriptID)	--Kh�i t�o M�ng Di�n �c T�ng
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
	if x910120_HaveTrap(sceneId)==1 then										--Ch�a �n gi� k�ch ho�t c� quan
		return
	end
	--******************--
	local ran=random(3)
	local Trap_Index=LuaFnCreateMonster(sceneId,x910120_g_Trap[ran].Index,x910120_g_Trap_Pos_X1,x910120_g_Trap_Pos_Y1,3,0,-1)	--Kh�i t�o c� quan
	SetCharacterName(sceneId,Trap_Index,x910120_g_Trap[ran].Name)				--C�p nh�t t�n c� quan
	SetCharacterDieTime(sceneId,Trap_Index,x910120_g_Trap_Exist_Time)			--C�p nh�t th�i gian t�n t�i c� quan
	local Trap_Index=LuaFnCreateMonster(sceneId,x910120_g_Trap[ran].Index,x910120_g_Trap_Pos_X2,x910120_g_Trap_Pos_Y2,3,0,-1)	--Kh�i t�o c� quan
	SetCharacterName(sceneId,Trap_Index,x910120_g_Trap[ran].Name)				--C�p nh�t t�n c� quan
	SetCharacterDieTime(sceneId,Trap_Index,x910120_g_Trap_Exist_Time)			--C�p nh�t th�i gian t�n t�i c� quan
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Trap_Type,ran)				--C�p nh�t lo�i c� quan v�a ra
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
	local Current_Level=floor(nSum/nHumanCount)								--Level c�a Boss trong ph� b�n
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
	local Monk_Index=LuaFnCreateMonster(sceneId,x910120_g_Monk.Index+nDec,x910120_g_Monk.Pos_X,x910120_g_Monk.Pos_Y,5,0,x910120_g_Monk.ScriptID)	---Kh�i t�o NPC Thi�u L�m V� T�ng
	SetCharacterName(sceneId,Monk_Index,x910120_g_Monk.Name)				--C�p nh�t t�n Thi�u L�m V� T�ng
	SetCharacterTitle(sceneId,Monk_Index,x910120_g_Monk.Title)				--C�p nh�t Title cho Thi�u L�m V� T�ng
	SetMonsterFightWithNpcFlag(sceneId,Monk_Index,1)
	SetUnitCampID(sceneId,Monk_Index,Monk_Index,x910120_g_Alies_CamID)		--Tr�ng th�i chi�n �u c�a Thi�u L�m V� T�ng
	--******************--
	x910120_CreatMyTrap(sceneId)											--T�o c� quan
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,1)				--C�p nh�t b߾c ho�t �ng ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Level,nDec)			--C�p nh�t c�p � ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,x910120_g_Attack_Time)	--C�p nh�t th�i gian t�n c�ng ti�p theo
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Count,0)			--C�p nh�t s� l�n t�n c�ng
	--******************--
	
end
--**********************************--
--*       Creat Evil Monster       *--
--**********************************--
function x910120_CreatEvilMonster(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Level)	--L�y c�p � ph� b�n
	--******************--
	for i=1,22 do
		local Monster_Index
		if i==6 or i==17 then
			Monster_Index=LuaFnCreateMonster(sceneId,x910120_g_Monster[2].Index+nDec,x910120_g_Monster_Pos_X[i],x910120_g_Monster_Pos_Y[i],10,0,x910120_g_Monster_ScriptID)	---Kh�i t�o ��o Th� �c T�ng
			SetCharacterName(sceneId,Monster_Index,x910120_g_Monster[2].Name)		--C�p nh�t t�n ��o Th� �c T�ng
			LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,x910120_g_Impact_Immue,0)	--Hi�u �ng mi�n d�ch
		else
			Monster_Index=LuaFnCreateMonster(sceneId,x910120_g_Monster[1].Index+nDec,x910120_g_Monster_Pos_X[i],x910120_g_Monster_Pos_Y[i],10,0,-1)	---Kh�i t�o Ng�y Quan Qu�n
			SetCharacterName(sceneId,Monster_Index,x910120_g_Monster[1].Name)		--C�p nh�t t�n Ng�y Quan Qu�n
		end
		SetMonsterFightWithNpcFlag(sceneId,Monster_Index,1)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,x910120_g_Enemies_CamID)	--Tr�ng th�i chi�n �u c�a Monster
		SetPatrolId(sceneId,Monster_Index,i-1)										--C�p nh�t v� tr� di chuy�n
	end
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,0)					--C�p nh�t l�i tr�ng th�i th�ng b�o
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Attack_Timer,x910120_g_Attack_Time)	--C�p nh�t cho ��t t�n c�ng ti�p theo
	local Attacked=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Count)		--S� l�n �� t�n c�ng
	LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Count,Attacked+1)			--C�p nh�t s� l�n t�n c�ng
	if Attacked>=10 then
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,2)					--C�p nh�t b߾c ho�t �ng ph� b�n
	end
	--******************--
	
end
--**********************************--
--*    Show Notices Fuben Time     *--
--**********************************--
function x910120_ShowNoticesFubenTime(sceneId,nowTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Time_Step)			--L�y s� th�ng b�o l�n tr߾c
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Fuben_Start_Time)		--L�y th�i gian b�t �u ph� b�n
	if nowTime-nTime>=5000 and nStep<1 then											--Th�ng b�o ��ng ph� b�n sau 30 ph�t
		x910120_TipAllHuman(sceneId,x910120_g_Notice[2])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,1)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=900000 and nStep<2 then									--Th�ng b�o c�n 15 ph�t
		x910120_TipAllHuman(sceneId,x910120_g_Notice[3])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,2)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=1200000 and nStep<3 then									--Th�ng b�o c�n 5 ph�t
		x910120_TipAllHuman(sceneId,x910120_g_Notice[4])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,3)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=1740000 and nStep<4 then									--Th�ng b�o c�n 1 ph�t
		x910120_TipAllHuman(sceneId,x910120_g_Notice[5])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,4)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=1770000 and nStep<5 then									--Th�ng b�o c�n 30 gi�y
		x910120_TipAllHuman(sceneId,x910120_g_Notice[6])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,5)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=1785000 and nStep<6 then									--Th�ng b�o c�n 15 gi�y
		x910120_TipAllHuman(sceneId,x910120_g_Notice[7])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,6)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=1795000 and nStep<7 then										--Th�ng b�o c�n 5 gi�y
		x910120_TipAllHuman(sceneId,x910120_g_Notice[8])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,7)					--C�p nh�t �� th�ng b�o l�n n�y
	elseif nowTime-nTime>=1800000 and nStep<8 then									--Th�ng b�o �� h�t th�i gian ph� b�n
		x910120_TipAllHuman(sceneId,x910120_g_Notice[9])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Time_Step,9)					--C�p nh�t �� th�ng b�o l�n n�y
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Fuben_Step,4)					--H�t th�i gian, nh�y sang b߾c ��a ng߶i ch�i tr� v� c�nh c�
	end
	--******************--

end
--**********************************--
--*    Show Notices Attack Time    *--
--**********************************--
function x910120_ShowNoticesAttackTime(sceneId,nTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Step)			--L�y s� th�ng b�o l�n tr߾c
	local nAttacked=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Count)		--L�y s� l�n �� t�n c�ng
	if nTime<=55000 and nStep<1 then												--Th�ng b�o 1 ph�t n�a ra ��t t�n c�ng ti�p theo
		local str=format(x910120_g_Notice[10],60,10-nAttacked)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,1)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=30000 and nStep<2 then											--Th�ng b�o 30 gi�y n�a ra ��t t�n c�ng ti�p theo
		local str=format(x910120_g_Notice[10],30,10-nAttacked)							
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,2)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=15000 and nStep<3 then											--Th�ng b�o 15 gi�y n�a ra ��t t�n c�ng ti�p theo
		local str=format(x910120_g_Notice[10],15,10-nAttacked)							
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,3)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=5000 and nStep<4 then												--Th�ng b�o 5 gi�y n�a ra ��t t�n c�ng ti�p theo
		local str=format(x910120_g_Notice[10],5,10-nAttacked)							
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,4)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=0 and nStep<5 then												--Th�ng b�o �c t�ng v� Ng�y Quan Qu�n �� xu�t hi�n
		x910120_TipAllHuman(sceneId,x910120_g_Notice[13])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,5)				--C�p nh�t �� th�ng b�o l�n n�y
	end
	--******************--

end
--**********************************--
--*  Show Notice Boss Appear Time  *--
--**********************************--
function x910120_ShowNoticesBossAppearTime(sceneId,nTime)

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910120_g_Attack_Step)			--L�y s� th�ng b�o l�n tr߾c
	if nTime<=60000 and nStep<1 then												--Th�ng b�o 1 ph�t n�a M�ng Di�n �c T�ng s� xu�t hi�n
		local str=format(x910120_g_Notice[11],60)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,1)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=30000 and nStep<2 then											--Th�ng b�o 30 gi�y n�a M�ng Di�n �c T�ng s� xu�t hi�n
		local str=format(x910120_g_Notice[11],30)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,2)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=15000 and nStep<3 then											--Th�ng b�o 15 gi�y n�a M�ng Di�n �c T�ng s� xu�t hi�n
		local str=format(x910120_g_Notice[11],15)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,3)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=5000 and nStep<4 then												--Th�ng b�o 5 gi�y n�a M�ng Di�n �c T�ng s� xu�t hi�n
		local str=format(x910120_g_Notice[11],5)
		x910120_TipAllHuman(sceneId,str)
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,4)				--C�p nh�t �� th�ng b�o l�n n�y
	elseif nTime<=0 and nStep<5 then												--Th�ng b�o M�ng Di�n �c T�ng �� xu�t hi�n
		x910120_TipAllHuman(sceneId,x910120_g_Notice[12])
		LuaFnSetCopySceneData_Param(sceneId,x910120_g_Attack_Step,5)				--C�p nh�t �� th�ng b�o l�n n�y
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