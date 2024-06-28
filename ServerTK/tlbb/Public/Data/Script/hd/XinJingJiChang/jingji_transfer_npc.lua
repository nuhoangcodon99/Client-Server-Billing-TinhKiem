--Tân CÕnh kÛ trß¶ng
--NPC d¸ch chuy¬n

--************************--
x900010_g_scriptId = 900010
--************************--
x900010_g_Goto = 
{
	{	name	=	"Khu¤t Bình Nguyên",	scene=2,	x=177,	z=135,	scname="ÐÕi Lý"				},
	{	name	=	"Ðào Thüy Ti«m",		scene=0,	x=252,	z=248,	scname="LÕc Dß½ng"			},
	{	name	=	"C± Tß Ngh¸",			scene=1,	x=284,	z=225,	scname="Tô Châu"			},
	{	name	=	"T¯ng Tri Ng÷c",		scene=420,	x=155,	z=130,	scname="Thúc Hà C± Tr¤n"	},
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
				AddText(sceneId,"Các hÕ mu¯n r¶i khöi Tung S½n Phong Thi«n Ðài, ði " .. scene.scname .. " sao?")
				AddNumText(sceneId,x900010_g_scriptId,"Ðßa ta ði "..scene.scname,9,1)
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