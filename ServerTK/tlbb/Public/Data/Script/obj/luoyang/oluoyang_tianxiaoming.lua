--����NPC
--������
--��ͨ

x000104_g_ScriptId	= 000104

--������
x000104_g_Key				=
{
		["stu"]					= 100,	--ѧϰ��˼���
		["buy"]					= 101,	--�������
}

--�����б�
x000104_g_Skill			=
{
	{ id=446, name="K� Thu�t: L�c H�nh �i�u"},
}

--**********************************
--�¼��������
--**********************************
function x000104_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  N�u ng߽i l� � t� c�a C�u ��i m�n ph�i, c� th� t�m ng߶i truy�n th� k� thu�t c�a m�n ph�i � h�c k� thu�t" )
	---	AddNumText( sceneId, x000104_g_ScriptId, "ѧϰ��˼���", -1, x000104_g_Key["stu"] )
		AddNumText( sceneId, x000104_g_ScriptId, "Mua v�t c��i", 7, x000104_g_Key["buy"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000104_OnEventRequest( sceneId, selfId, targetId )
	local	key	= GetNumText()

	if key == 0	then
		AddSkill( sceneId, selfId, 21 )
		x000104_MsgBox( sceneId, selfId, targetId, "  Ng߽i hi�n �� h�c xong k� n�ng c��i" )
--	elseif key == x000104_g_Key["stu"] then
--		if GetLevel( sceneId, selfId ) < 20 then
--			x000104_MsgBox( sceneId, selfId, targetId, "  ��20�����������ң�" )
--		end
--		if LuaFnHaveSpecificEquitation( sceneId, selfId, x000104_g_Skill[1].id ) == 0 then
--			if LuaFnLearnSpecificEquitation( sceneId, selfId, x000104_g_Skill[1].id, 1 ) == 1 then
--				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
--				x000104_MsgBox( sceneId, selfId, targetId, "  ��ѧ���ˡ�"..x000104_g_Skill[1].name.."����" )
--			end
--		else
--			x000104_MsgBox( sceneId, selfId, targetId, "  ���Ѿ�ѧ�ᡰ"..x000104_g_Skill[1].name.."���˰���" )
--		end
	elseif key == x000104_g_Key["buy"] then
		DispatchShopItem( sceneId, selfId, targetId, 138 )
	end
end

--**********************************
--�Ի�����ʾ
--**********************************
function x000104_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
