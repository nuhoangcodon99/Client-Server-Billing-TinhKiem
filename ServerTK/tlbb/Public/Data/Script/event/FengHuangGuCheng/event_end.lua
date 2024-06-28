--Ð¤u trß¶ng Phøng Hoàng C± Thành
--Author: Sói

--******************--
x930506_g_ScriptId=930506
--******************--
x930506_g_Activity_Time=floor(10*1000)
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x930506_OnDefaultEvent(sceneId,actId,iNoticeType,param2,param3,param4,param5)

	--******************--
	StartOneActivity(sceneId,actId,x930506_g_Activity_Time,iNoticeType)
	--******************--
	CallScriptFunction(930500,"OnExitTime",sceneId)
	--******************--

end
--**********************************--
--*            On Timer            *--
--**********************************--
function x930506_OnTimer(sceneId,actId,uTime)

	--******************--
	if CheckActiviyValidity(sceneId,actId)==0 then
		StopOneActivity(sceneId,actId)
	end
	--******************--

end
