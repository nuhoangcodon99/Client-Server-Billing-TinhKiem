--�������

--�ű����
x502001_g_ScriptId	= 502001

--**********************************
--Monster Timer
--**********************************
function x502001_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--ȫ�򹫸�
	local str = "#cff99ccHuy�n K�ch Kim Cang l�i hi�n th�n r�i! Th߽ng S�n l�i ph�i ch�m trong c�nh huy�n l�i ��ng s�!"
	AddGlobalCountNews( sceneId, str )
	--ȡ��ʱ��
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--�����¼�
--**********************************
function x502001_OnDie( sceneId, objId, killerId )

end
