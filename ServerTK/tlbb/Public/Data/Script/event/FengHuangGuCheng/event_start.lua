--Ð¤u trß¶ng Phøng Hoàng C± Thành
--Author: Sói

--******************--
x930505_g_ScriptId=930505
--******************--
x930505_g_Activity_Time=floor(10*1000)
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x930505_OnDefaultEvent(sceneId,actId,iNoticeType,param2,param3,param4,param5)

	--******************--
	StartOneActivity(sceneId,actId,x930505_g_Activity_Time,iNoticeType)
	--******************--
	CallScriptFunction(930500,"OnWarStartTime",sceneId)
	--******************--

end
--**********************************--
--*            On Timer            *--
--**********************************--
function x930505_OnTimer(sceneId,actId,uTime)

	--******************--
	if CheckActiviyValidity(sceneId,actId)==0 then
		StopOneActivity(sceneId,actId)
	end
	--******************--

end
