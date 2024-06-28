--Phø bän TÑ Tuy®t Trang
--Phan Tinh Tinh
--Author: Hoàng Steven

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
x910171_g_NPC_Talk="SÑc mÕnh cüa 4 tên ðß¶ng chü #GTÑ Tuy®t Trang#W ð«u b¡t ngu°n t× thú vui ngh® thu§t dân gian #GC¥m#W, #GkÏ#W, #Gthi#W, #Gh÷a#W và vô cùng lþi hÕi. Nªu các v¸ không c¦n th§n ta e r¢ng khó mà s¯ng sót khöi tay b÷n chúng..."
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
				AddNumText(sceneId,x910171_g_ScriptId,"Ði tiªp vào trong",9,0)
				break
			end
		end
		if x==x910171_g_Pan_Pos[nSize].Pos_X and y==x910171_g_Pan_Pos[nSize].Pos_Y then
			AddNumText(sceneId,x910171_g_ScriptId,"Tr· v« thành th¸",9,1)
		end
		AddNumText(sceneId,x910171_g_ScriptId,"Ta chï ði ngang qua...",-1,2)
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