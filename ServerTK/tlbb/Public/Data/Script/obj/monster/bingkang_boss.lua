--�����BOSSˢ�¹���

--�ű����
x502003_g_ScriptId	= 502003

--**********************************
--Monster Timer
--**********************************
function x502003_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--ȫ�򹫸�
	local	nam_mob	= GetName( sceneId, objId )
	if nam_mob ~= nil then
		str	= format( "#cff99ccCh� nh�n th�t s� c�a #GNg�n Ngai Tuy�t Nguy�n l� X� Nga V߽ng #cff99ccv� ��i �� vung quy�n tr��ng xu�t hi�n t�i l�nh th� c�a n� r�i!", nam_mob )
		AddGlobalCountNews( sceneId, str )
	end

	--ȡ��ʱ��
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--�����¼�
--**********************************
function x502003_OnDie( sceneId, objId, killerId )
	--ȫ�򹫸�
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#PTin vui tin vui. #W#{_INFOUSR%s}#P d�n d�t �i ng� anh h�ng ��nh b�i ch� nh�n c�a Ng�n Ngai Tuy�t Nguy�n l� #G%s#P, m�i ng߶i c�ng ch�c m�ng h�n n�o!", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
	
	if LuaFnHasTeam(sceneId,killerId)~=1 then
		AddMonsterDropItem(sceneId,objId,killerId,30505121)
	else
		for i=0,GetNearTeamCount(sceneId,killerId)-1 do
			local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
			AddMonsterDropItem(sceneId,objId,nPlayerId,30505121)
		end
	end
	
end
