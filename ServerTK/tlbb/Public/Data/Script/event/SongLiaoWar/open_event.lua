--Khai m� chi�n tr߶ng T�ng Li�u
--Author: S�i

--******************--
x910096_g_ScriptId=910096
--******************--
x910096_g_Activity_Time=floor(10*1000)
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910096_OnDefaultEvent(sceneId,actId,iNoticeType,param2,param3,param4,param5)

	--******************--
	StartOneActivity(sceneId,actId,x910096_g_Activity_Time,iNoticeType)
	--******************--
	CallScriptFunction(910072,"OnWarStartTime",sceneId)
	--******************--

end
--**********************************--
--*            On Timer            *--
--**********************************--
function x910096_OnTimer(sceneId,actId,uTime)

	--******************--
	if CheckActiviyValidity(sceneId,actId)==0 then
		StopOneActivity(sceneId,actId)
	end
	--******************--

end
