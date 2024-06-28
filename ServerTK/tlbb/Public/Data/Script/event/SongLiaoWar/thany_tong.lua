--Th�n Y T�ng

--************************--
x910074_g_ScriptId = 910074
--************************--
x910074_g_Flag_Song = 0								--��nh d�u phe T�ng
x910074_g_Flag_Liao = 1								--��nh d�u phe Li�u
--************************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910074_OnDefaultEvent(sceneId,selfId,targetId)
	
	local Flag=GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)
	if Flag==x910074_g_Flag_Song then
		BeginEvent(sceneId)
			AddText(sceneId,"N�i chi�n tr߶ng kh�i l�a n�y c�n thi�t v�n ph�i c� m�t y phu c�u ch�a nh�ng chi�n binh b� th߽ng. Ta ch�nh l� v� y phu ��.")
			AddNumText(sceneId,x910074_g_ScriptId,"Tr� th߽ng",6,0)    
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta ch� l� m�t y phu b�nh th߶ng nh�ng nh�t quy�t kh�ng b�n n߾c, ch�a tr� cho k� th�...")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end

--**********************************--
--*        On Event Request        *--
--**********************************--
function x910074_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()
  
	if key==0 then
		CallScriptFunction(000064,"Restore_hpmp",sceneId,selfId,targetId)
		RestoreStrikePoint(sceneId,selfId)
		RestoreRage(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Tr� li�u th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end