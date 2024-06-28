-- ������������

-- �ű���
x800104_g_ScriptId = 800104

-- NPC ����
x800104_g_Name = "V�n Phi Phi "

--**********************************
-- ������ں���
--**********************************
function x800104_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x800104_g_Name then		--�жϸ� npc �Ƿ���ָ����npc
		return
	end

	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 19820424 )
end

--**********************************
-- �о��¼�
--**********************************
function x800104_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x800104_g_Name then		--�жϸ� npc �Ƿ���ָ����npc
		return
	end

	AddNumText( sceneId, x800104_g_ScriptId, "N�ng cao ng� t�nh tr�n th�" ,6,-1)
end


--**********************************
-- ������������
--**********************************
function x800104_PetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL, assisPetGuidH, assisPetGuidL )
	--�жϸ���
	local gengu = LuaFnGetPetGenGuByGUID(sceneId, selfId, assisPetGuidH, assisPetGuidL)
	if gengu ==0 then
		BeginEvent( sceneId )
			AddText( sceneId, "Tr�n th� c� c�n c�t b�ng 0 kh�ng th� n�ng cao ng� t�nh c�a tr�n th�" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	local retDiff = IncreaceSavvyByCompound( sceneId, selfId, mainPetGuidH, mainPetGuidL, assisPetGuidH, assisPetGuidL )
	if retDiff and retDiff > 0 then
		--�ɹ��Ĺ�Ч
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	end
end

