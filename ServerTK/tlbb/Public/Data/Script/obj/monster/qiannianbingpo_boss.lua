--ǧ�����

--�ű����
x502002_g_ScriptId	= 502002

--**********************************
--Monster Timer
--**********************************
function x502002_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--ȫ�򹫸�
	local str = "#cff99ccThi�n Ni�n B�ng Ph�ch l�i hi�n th�n r�i! V� Di l�i ph�i ch�m trong c�nh b�ng ��ng s�!"
	AddGlobalCountNews( sceneId, str )

	--ȡ��ʱ��
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--�����¼�
--**********************************
function x502002_OnDie( sceneId, objId, killerId )
end
