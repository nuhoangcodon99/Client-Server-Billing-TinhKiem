--�����BOSSˢ�¹���

--�ű����
x892006_g_ScriptId	= 892006

function x892006_OnRespawn( sceneId, selfId, targetId )
	local nam_mob = GetName( sceneId, selfId )
	local str ="";	
	if nam_mob=="Hoa H�i Y�u V߽ng" then
		str = format("#Y[Hoa H�i Y�u V߽ng]#P mang theo r�t nhi�u k� tr�n d� b�o xu�t hi�n t�i #GV�ng Xuy�n Hoa H�i <117,116>#P, Hoa H�i l�i m�t l�n n�a r�i v�o tay b�n y�u v߽ng. Anh h�ng h�o h�n h�y chi�n �u v� v�ng �t Hoa H�i c�a ch�ng ta.")
	elseif nam_mob=="Thanh Nguy�n Th� H� Th�n" then
		str = format("#Y[Thanh Nguy�n Th� H� Th�n]#P mang theo r�t nhi�u k� tr�n d� b�o xu�t hi�n t�i #GM�c Nam Thanh Nguy�n<161,96>#P, Thanh Nguy�n l�i m�t l�n n�a r�i v�o tay b�n y�u v߽ng. Anh h�ng h�o h�n h�y chi�n �u v� v�ng �t Thanh Nguy�n c�a ch�ng ta.")
	elseif nam_mob=="Nam H�i Th�n Th�" then
		str = format("#Y[Nam H�i Th�n Th�]#P mang theo r�t nhi�u k� tr�n d� b�o xu�t hi�n t�i #GThi�n K� Nam H�i<138,111>#P, Nam H�i l�i m�t l�n n�a r�i v�o tay b�n y�u v߽ng. Anh h�ng h�o h�n h�y chi�n �u v� v�ng �t Nam H�i c�a ch�ng ta.")
	end
	AddGlobalCountNews( sceneId, str )
end
--**********************************
--Monster Timer
--**********************************
function x892006_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--ȫ�򹫸�
	--local	nam_mob	= GetName( sceneId, objId )
	--if nam_mob ~= nil then
	--	str	= format( "#G����ѩԭ#P���������ˣ�ΰ���123#P���Ѿ�������Ȩ�ȳ����������������ˣ�", nam_mob )
	--	AddGlobalCountNews( sceneId, str )
	--end
	--AddGlobalCountNews( sceneId, "objId:"..objId )
	--ȡ��ʱ��
	--SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--�����¼�
--**********************************
function x892006_OnDie( sceneId, objId, killerId )
	--ȫ�򹫸�
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#PTr�i qua mu�n v�n gian kh�, #W#{_INFOUSR%s}#P c�ng �i ng� m�t phen t� chi�n, #G%s#Pcu�i c�ng c�ng c�ng b� ��nh b�i.", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
end
