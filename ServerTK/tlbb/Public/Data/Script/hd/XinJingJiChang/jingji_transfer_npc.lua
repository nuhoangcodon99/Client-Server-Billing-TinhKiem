--T�n C�nh k� tr߶ng
--NPC d�ch chuy�n

--************************--
x900010_g_scriptId = 900010
--************************--
x900010_g_Goto = 
{
	{	name	=	"Khu�t B�nh Nguy�n",	scene=2,	x=177,	z=135,	scname="��i L�"				},
	{	name	=	"��o Th�y Ti�m",		scene=0,	x=252,	z=248,	scname="L�c D߽ng"			},
	{	name	=	"C� T� Ngh�",			scene=1,	x=284,	z=225,	scname="T� Ch�u"			},
	{	name	=	"T�ng Tri Ng�c",		scene=420,	x=155,	z=130,	scname="Th�c H� C� Tr�n"	},
}
--************************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900010_OnDefaultEvent(sceneId,selfId,targetId)
	
	--*****************--
	BeginEvent(sceneId)
		local NPC_Name=GetName(sceneId,targetId)
		for i,scene in x900010_g_Goto  do
			if scene.name==GetName(sceneId,targetId) then
				AddText(sceneId,"C�c h� mu�n r�i kh�i Tung S�n Phong Thi�n ��i, �i " .. scene.scname .. " sao?")
				AddNumText(sceneId,x900010_g_scriptId,"��a ta �i "..scene.scname,9,1)
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*****************--
	
end
--**********************************--
--*       On Event Request         *--
--**********************************--
function x900010_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--*****************--
	if GetNumText()==1 then
		for i,Scene in x900010_g_Goto do
			if Scene.name==GetName(sceneId,targetId) then
				CallScriptFunction((400900),"TransferFunc",sceneId,selfId,Scene.scene,Scene.x,Scene.z)
			end
		end
	end
	--*****************--
	
end