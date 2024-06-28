--Ph� b�n T� Tuy�t Trang
--Phan Tinh Tinh
--Author: Ho�ng Steven

--************************--
x910171_g_ScriptId=910171												
--************************--
x910171_g_Pan_Pos=
{
	[1]	=	{	nBoss=1,	Pos_X=91,	Pos_Y=79,	Next_Pos_X=101,	Next_Pos_Y=49	},
	[2]	=	{	nBoss=2,	Pos_X=86,	Pos_Y=21,	Next_Pos_X=80,	Next_Pos_Y=89	},
	[3]	=	{	nBoss=3,	Pos_X=31,	Pos_Y=88,	Next_Pos_X=70,	Next_Pos_Y=29	},
	[4]	=	{	nBoss=4,	Pos_X=22,	Pos_Y=18,	Next_Pos_X=-1,	Next_Pos_Y=-1	},
}	
--************************--
x910171_g_NPC_Talk="S�c m�nh c�a 4 t�n �߶ng ch� #GT� Tuy�t Trang#W �u b�t ngu�n t� th� vui ngh� thu�t d�n gian #GC�m#W, #Gk�#W, #Gthi#W, #Gh�a#W v� v� c�ng l�i h�i. N�u c�c v� kh�ng c�n th�n ta e r�ng kh� m� s�ng s�t kh�i tay b�n ch�ng..."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910171_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910171_g_NPC_Talk)
		local Fuben_Step=LuaFnGetCopySceneData_Param(sceneId,8)
		local x,y=GetWorldPos(sceneId,targetId)
		local nSize=getn(x910171_g_Pan_Pos)
		for i=1,nSize-1 do
			if x==x910171_g_Pan_Pos[i].Pos_X and y==x910171_g_Pan_Pos[i].Pos_Y then
				AddNumText(sceneId,x910171_g_ScriptId,"�i ti�p v�o trong",9,0)
				break
			end
		end
		if x==x910171_g_Pan_Pos[nSize].Pos_X and y==x910171_g_Pan_Pos[nSize].Pos_Y then
			AddNumText(sceneId,x910171_g_ScriptId,"Tr� v� th�nh th�",9,1)
		end
		AddNumText(sceneId,x910171_g_ScriptId,"Ta ch� �i ngang qua...",-1,2)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910171_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()

	--************************--
	if key==2 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--************************--
	if key==0 then
		local Fuben_Step=LuaFnGetCopySceneData_Param(sceneId,8)
		local x,y=GetWorldPos(sceneId,targetId)
		local nSize=getn(x910171_g_Pan_Pos)
		for i=1,nSize-1 do
			if x==x910171_g_Pan_Pos[i].Pos_X and y==x910171_g_Pan_Pos[i].Pos_Y then
				SetPos(sceneId,selfId,x910171_g_Pan_Pos[i].Next_Pos_X,x910171_g_Pan_Pos[i].Next_Pos_Y)
				break
			end
		end
	end
	--************************--
	if key==1 then
		local Scene=LuaFnGetCopySceneData_Param(sceneId,3)
		local x=LuaFnGetCopySceneData_Param(sceneId,4)
		local y=LuaFnGetCopySceneData_Param(sceneId,5)
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,Scene,x,y)
	end
	--************************--
	
end