--Chi�n tr߶ng T�ng Li�u
--T�ng ��i T߾ng
--Author: Kenvin S�i

--******************--
x910087_g_ScriptId=910087
--******************--
x910087_g_Activity_Index=38
x910087_g_Activity_Liao_Point=1
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910087_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"�� gi�t ch�t T�ng ��i T߾ng, �i�m t�ch l�y c�a c�c h� t�ng th�m 100 �i�m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+100)
	local Group_Point=GetActivityParam(sceneId,x910087_g_Activity_Index,x910087_g_Activity_Liao_Point)
	SetActivityParam(sceneId,x910087_g_Activity_Index,x910087_g_Activity_Liao_Point,Group_Point+200)
	--******************--
	local str=format("�i�m t�ch l�y c�a c�c h� t�ng 100 �i�m.#r�i�m t�ch l�y c� nh�n: %d#r�i�m t�ch l�y phe Li�u: %d",Current_Point+100,Group_Point+200)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	local str1=format("%s �� ��nh b�i T�ng ��i T߾ng, gia t�ng �i�m t�ch l�y to�n phe l�n 200 �i�m, m�i ng߶i ch�i c�ng phe ���c 15 �i�m.",GetName(sceneId,killerId))
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki�m tra phe ng߶i ch�i
		if Flag==1 then
			Msg2Player(sceneId,HumanId,str1,MSG2PLAYER_PARA)
			BeginEvent(sceneId)
				AddText(sceneId,str1)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,HumanId)
			local Current_Point=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT,Current_Point+15)
		end
	end
	--******************--
	
end