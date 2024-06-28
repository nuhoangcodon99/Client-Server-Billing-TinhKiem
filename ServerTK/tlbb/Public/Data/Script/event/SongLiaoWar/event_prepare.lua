--Khai m· chiªn trß¶ng T¯ng Liêu
--Author: Sói

--******************--
x910098_g_ScriptId=910098
--******************--
x910098_g_Activity_Time=floor(10*1000)
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910098_OnDefaultEvent(sceneId,actId,iNoticeType,param2,param3,param4,param5)

	--******************--
	StartOneActivity(sceneId,actId,x910098_g_Activity_Time,iNoticeType)
	--******************--
	CallScriptFunction(910072,"RefreshMonster",sceneId)
	CallScriptFunction(910072,"OnStartTime",sceneId)
	--******************--

end
--**********************************--
--*            On Timer            *--
--**********************************--
function x910098_OnTimer(sceneId,actId,uTime)

	--******************--
	if CheckActiviyValidity(sceneId,actId)==0 then
		StopOneActivity(sceneId,actId)
	end
	--******************--

end
