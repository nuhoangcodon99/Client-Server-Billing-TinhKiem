-- ����NPC
-- ���ٸ�

x002092_g_scriptId = 002092

--**********************************
--�¼��������
--**********************************
function x002092_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    L�u m� h�c K� �n nay �� ���c 52 n�m, ch�a t�ng g�p �i th�. Ch� l� v�i n�m tr߾c, ta thua d߾i tay 1 v� Ly S�n Ti�n L�o, l�c �� m�i bi�t thi�n ngo�i h�u thi�n, nh�n th��ng h�u nh�n." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
