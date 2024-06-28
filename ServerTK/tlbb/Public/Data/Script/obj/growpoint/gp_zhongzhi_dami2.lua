--������ű�������2
--�ű���
--g_ScriptId = 711004

--����������
x711004_g_GpId = 505

--��һ��������ı��
x711004_g_GpIdNext = 506

function	 x711004_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711004_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,1,20104002)
	
	--�õ������������ID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--������SceneID��ItemBoxID
	--��ItemBox�趨����
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)
	SetItemBoxPickOwnerTime(sceneId,ItemBoxId,600000)	--�趨��ʱ��
	EnableItemBoxPickOwnerTime(sceneId,ItemBoxId)		--����ʱ�俪ʼ��ʱ

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,600000)	--�趨����ʱ��

	--ȡ�������������
	GP_X = GetItemBoxWorldPosX(sceneId,targetId)
	GP_Z = GetItemBoxWorldPosZ(sceneId,targetId)
	--��ȡ��
	GP_X = floor(GP_X)
	GP_Z = floor(GP_Z)
	--�ж���ֲ�Ƶ�λ�����ĸ���ֲ�ƹ�Ͻ�ķ�Χ��
	local num = 0
	for i, findid in PLANTNPC_ADDRESS do
		if	(GP_X >= findid.X_MIN)  and (GP_Z >= findid.Z_MIN) and (GP_X <= findid.X_MAX)  and (GP_Z <= findid.Z_MAX) and (sceneId == findid.Scene) then
			num = i	
			break
		end
	end
	
	--����Ҳ�����ȷ��λ���򷵻�
	if num == 0 then
		return
	end

	--�ж���ֲ���Ƿ���8�������8��֪ͨ���
	if PLANTFLAG[num] == 8 then
		LuaFnSendMailToGUID(sceneId,ItemBoxOwnerGUID,"Th�c v�t do c�c h� tr�ng �� ch�n t�i, xin h�y thu ho�ch trong v�ng 10 ph�t")
	end
	--�ҵ���ȷ�ı�ţ�����ֲ��-1
	PLANTFLAG[num] = PLANTFLAG[num] - 1

	return 1
end