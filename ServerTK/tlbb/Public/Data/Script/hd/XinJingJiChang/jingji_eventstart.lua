--Khai m∑ T‚n C’nh K€ Trﬂ∂ng

--******************--
x900009_g_ScriptId=900009
--******************--
x900009_g_Activity_Time=floor(10*1000)
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900009_OnDefaultEvent(sceneId,actId,iNoticeType,param2,param3,param4,param5)

	--******************--
	StartOneActivity(sceneId,actId,x900009_g_Activity_Time,iNoticeType)
	--******************--
	CallScriptFunction(125020,"CreateVipBox",sceneId)
	--******************--

end
--**********************************--
--*            On Timer            *--
--**********************************--
function x900009_OnTimer(sceneId,actId,uTime)

	--******************--
	if CheckActiviyValidity(sceneId,actId)==0 then
		StopOneActivity(sceneId,actId)
	end
	--******************--

end
