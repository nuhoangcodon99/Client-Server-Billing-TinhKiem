--NPC d�ch chuy�n T�ng

--************************--
x910077_g_ScriptId = 910077
x910077_g_Script_Event = 910072
--************************--
x910077_g_Map_ID=1							--ID map d�ch chuy�n v�
x910077_g_Pos_X=291							--T�a � X
x910077_g_Pos_Y=239							--T�a � Y
--************************--
x910077_g_Flag_Song=0						--��nh d�u qu�n T�ng
x910077_g_Flag_Liao=1						--��nh d�u qu�n Li�u

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910077_OnDefaultEvent(sceneId,selfId,targetId)

	if GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)==x910077_g_Flag_Song then
		BeginEvent(sceneId)
			AddText(sceneId,"N�i chi�n tr߶ng kh�i l�a, n�i b�nh y�n c� c�y hoa l�. N�u nh� c�c h� �� th�y ti�c cho m�t n�i b�nh y�n th� h�y r�i kh�i n�i ��y! ")
			AddText(sceneId,"Tuy nhi�n khi ho�t �ng ch�a k�t th�c th� c�c h� s� kh�ng nh�n ���c chi�n c�ng c�a m�nh khi b� gi�a ch�ng, h�y c�n nh�c k�!")
			AddNumText(sceneId,x910077_g_ScriptId,"R�i kh�i",9,0)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,x910077_g_ScriptId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta th� ch�t ch� kh�ng b�n n߾c gi�p k� th�!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,x910077_g_ScriptId)
	end
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910077_OnEventRequest(sceneId,selfId,targetId,eventId)

	if GetNumText()==0 then
		CallScriptFunction(x910077_g_Script_Event,"ResetAllParam",sceneId,selfId)
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,x910077_g_Map_ID,x910077_g_Pos_X,x910077_g_Pos_Y)
	end
	
end
