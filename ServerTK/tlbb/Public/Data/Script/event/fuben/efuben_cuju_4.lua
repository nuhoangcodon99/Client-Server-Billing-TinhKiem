x402045_g_KillNum = 30

--**********************************
-- ��������
--**********************************
function x402045_OnDie(sceneId, objId, killerId)
	
	local szName = GetName(sceneId, objId)

	if szName == "Song Song Y�n"  or
			szName == "Uy�n ��ng Qu�i"  or
			szName == "V�n Ngo�i Phi�u"  or
			szName == "M�n Thi�n Tinh"  or
			
			szName == "Song Song Y�n Y�n"  or
			szName == "Uy�n ��ng Qu�i Qu�i"  or
			szName == "V�n Ngo�i Phi�u Phi�u"     then
			
		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, x402045_g_KillNum)
		nKillNum = nKillNum + 1
		local str = "�� ti�u di�t t�c c�u : " .. tostring(nKillNum) .. "/149"
		x402045_TipAllHuman(sceneId, str)
		LuaFnSetCopySceneData_Param(sceneId, x402045_g_KillNum, nKillNum)
	end
end

--**********************************
--��ʾ���и��������
--**********************************
function x402045_TipAllHuman( sceneId, Str )
	-- ��ó�����ͷ��������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	-- û���˵ĳ�����ʲô������
	if nHumanNum < 1 then
		return
	end
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

