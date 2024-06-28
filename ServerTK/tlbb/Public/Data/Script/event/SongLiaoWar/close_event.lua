--Kªt thúc chiªn trß¶ng T¯ng Liêu
--Author: Sói

--******************--
x910097_g_ScriptId=910097
--******************--
x910097_g_Activity_Time=floor(10*1000)
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910097_OnDefaultEvent(sceneId,actId,iNoticeType,param2,param3,param4,param5)

	--******************--
	StartOneActivity(sceneId,actId,x910097_g_Activity_Time,iNoticeType)
	--******************--
	CallScriptFunction(910072,"OnExitTime",sceneId)
	--******************--

end
--**********************************--
--*            On Timer            *--
--**********************************--
function x910097_OnTimer(sceneId,actId,uTime)

	--******************--
	if CheckActiviyValidity(sceneId,actId)==0 then
		StopOneActivity(sceneId,actId)
	end
	--******************--

end
