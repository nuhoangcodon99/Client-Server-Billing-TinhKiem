--���޵�

--�ű���
x300200_g_scriptId = 300200

x300200_g_petList = {};


x300200_g_petList[30309758] = {type=1, dataId=22659, level=1} --Uy�n ��ng Nh� � Lan 5
x300200_g_petList[30309759] = {type=1, dataId=22669, level=1} --Uy�n ��ng Nh� � Lan 45
x300200_g_petList[30309760] = {type=1, dataId=22679, level=1} --Uy�n ��ng Nh� � Lan 55
x300200_g_petList[30309761] = {type=1, dataId=22689, level=1} --Uy�n ��ng Nh� � Lan 65
x300200_g_petList[30309762] = {type=1, dataId=22699, level=1} --Uy�n ��ng Nh� � Lan 75
x300200_g_petList[30309763] = {type=1, dataId=22709, level=1} --Uy�n ��ng Nh� � Lan 85


--**********************************
-- ����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0��ִ�� OnDefaultEvent. 
--**********************************
function x300200_IsSkillLikeScript( sceneId, selfId )
	return 1
end

--**********************************
-- ����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ��. 
--**********************************
function x300200_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
-- ���������ڣ�����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ��. 
--**********************************
function x300200_OnConditionCheck( sceneId, selfId )
	-- У��ʹ�õ���Ʒ
	if LuaFnVerifyUsedItem( sceneId, selfId ) ~= 1 then
		return 0
	end

	local checkCreatePet = TryCreatePet(sceneId, selfId, 1);
	if not checkCreatePet or checkCreatePet ~= 1 then
		x300200_NotifyFailTips(sceneId, selfId, "C�c h� kh�ng th� mang th�m tr�n th�. ");
		return 0;
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local petItem = x300200_g_petList[itemTblIndex];
	if not petItem then
		x300200_NotifyFailTips(sceneId, selfId, "��o c� ch�a m�, kh�ng th� s� d�ng. ");
		return 0;
	end
	
	if petItem.type ~= 2 then
	local takeLevel = GetPetTakeLevel(petItem.dataId);
	local humanLevel = LuaFnGetLevel(sceneId, selfId);
	if not takeLevel or not humanLevel or takeLevel > humanLevel then
		x300200_NotifyFailTips(sceneId, selfId, "Ch�a �� c�p � � s� d�ng. ");
		return 0;
	end
	end
	return 1
end

--**********************************
--���ļ�⼰������ڣ��������ĵļ���ִ�У�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ��. 
--**********************************
function x300200_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
--ֻ��ִ��һ����ڣ�
--������˲�����ܻ���������ɺ��������ӿڣ������������Ҹ��������������ʱ�򣩣�������
--����Ҳ����������ɺ��������ӿڣ����ܵ�һ��ʼ�����ĳɹ�ִ��֮��. 
--����1������ɹ�������0������ʧ��. 
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x300200_OnActivateOnce( sceneId, selfId )

	--ɾ��ǰ����Trans....
	local BagIndex = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )

	if LuaFnDepletingUsedItem( sceneId, selfId ) <= 0 then
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local petItem = x300200_g_petList[itemTblIndex];
	if not petItem then
		x300200_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng. ");
		return 0;
	end

	local petGUID_H = 0
	local petGUID_L = 0
	local ret = -1

	if petItem.type == 1 then
		ret, petGUID_H, petGUID_L = CallScriptFunction( 800105, "CreateRMBPetToHuman", sceneId, selfId, petItem.dataId, petItem.level);
		if ret and ret == 1 then
			x300200_OnGivePlayerPet( sceneId, selfId, petItem.dataId, petGUID_H, petGUID_L, ItemInfo )
		end
	elseif petItem.type == 2 then
		local level = GetLevel( sceneId, selfId );
	  for i,pet in petItem.dataIds do
	  	if level >=pet.minHumanLevel and level <= pet.maxHumanLevel then
			  	ret = CallScriptFunction( 800105, "CreateRMBPetToHuman", sceneId, selfId, pet.dataId, petItem.level);
					if ret and ret == 1 then
						x300200_OnGivePlayerPet( sceneId, selfId, pet.dataId, petGUID_H, petGUID_L, ItemInfo )
					end
	  	end
	  end
	else
	    ret, petGUID_H, petGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, petItem.dataId, petItem.level, 0);
	    if ret and ret == 1 then
				x300200_OnGivePlayerPet( sceneId, selfId, petItem.dataId, petGUID_H, petGUID_L, ItemInfo )
			end
	end
	return 1
end

--**********************************
--��������������ڣ�
--�������ܻ���ÿ����������ʱ��������ӿ�. 
--���أ�1�����´�������0���ж�����. 
--ע�������Ǽ�������ʱ��Ч�����
--**********************************
function x300200_OnActivateEachTick( sceneId, selfId )
	return 1
end

--**********************************
-- ��Ŀʧ����ʾ
--**********************************
function x300200_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


function x300200_OnGivePlayerPet( sceneId, selfId, petId, petGUID_H, petGUID_L, ItemInfo )

	local petName = GetPetName( petId )
	if petName then
		x300200_NotifyFailTips(sceneId, selfId, "Ch�c m�ng, c�c h� nh�n ���c "..petName..".")
	end

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)

	--Ѽ���޹���....
	--if petId == 7559 then
		--local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		--local Msg = "@*;SrvMsg;SCA:#{_INFOUSR%s}#Rʹ����#{_INFOMSG%s}#R�õ���һֻ#{_INFOMSG%s}#R. "
		--local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--AddGlobalCountNews( sceneId, str )
	--end

	--ë¿����....
	if petId == 3399 or petId == 8969 or petId == 8979 or petId == 8989 then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#R s� d�ng #{_INFOMSG%s}#R nh�n ���c #{_INFOMSG%s}#R. "
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--��װ�󹫸�....
	if petId == 8759 or petId == 8789 or petId == 8799  then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{TZS_16}#{_INFOMSG%s}#{TZS_17}#{_INFOUSR%s}#{TZS_18}"
		local str = format( Msg, GetName(sceneId,selfId), szPetTrans, GetName(sceneId,selfId) )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--���湫��....
	if petId == 22059 then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{XZS_01}#{_INFOMSG%s}#{XZS_02}#{_INFOMSG%s}#{XZS_03}"
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--С���ɹ���....
	if petId == 22129 then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{XZS_04}#{_INFOMSG%s}#{XZS_05}#{_INFOMSG%s}#{XZS_06}"
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--ԧ�칫��... zchw
	if (petId == 8889) or (petId == 8899) or (petId == 8909) or (petId == 8919) or (petId == 8929) or(petId == 8939) or (petId == 8949) then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{XZS_07}#{_INFOMSG%s}#{XZS_08}#{_INFOMSG%s}#{XZS_09}"
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--����ţ����... hzp
	if (petId == 22289) or (petId == 22299) or (petId == 22309) or (petId == 22319) or (petId == 22329) or(petId == 22339) or (petId == 22349) then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{XZS_04}#{_INFOMSG%s}#{XZS_10}#{_INFOMSG%s}#{XZS_11}"
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--��������... hzp
	if (petId == 8569) or (petId == 8579) or (petId == 8589) or (petId == 8599) or (petId == 8609) or(petId == 8619) or (petId == 8629) then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{XZS_12}#{_INFOMSG%s}#{XZS_13}#{_INFOMSG%s}#{XZS_14}"
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	
	--�����񹫸�... hzp
	if (petId == 22219) or (petId == 22229) or (petId == 22239) or (petId == 22249) or (petId == 22259) or(petId == 22269) or (petId == 22279) then
		local szPetTrans = GetPetTransString(  sceneId, selfId, petGUID_H, petGUID_L )
		local Msg = "#{_INFOUSR%s}#{XZS_15}#{_INFOMSG%s}#{XZS_16}#{_INFOMSG%s}#{DSSJ_4}"
		local str = format( Msg, GetName(sceneId,selfId), ItemInfo, szPetTrans )
		--BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
end
