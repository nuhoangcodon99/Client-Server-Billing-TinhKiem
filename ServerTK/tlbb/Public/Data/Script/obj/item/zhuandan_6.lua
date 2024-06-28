--���ߣ���ʯ����<ID:30504007>
--�ű��� 889005
--Author: Steven.Han 10:39 2007-5-17

x889005_g_scriptId = 889005

x889005_g_ZhuShiBaoHePrize = {
	                 50313006,
50313001,
50313002,
50313003,
50313004,
50313005,
50314001,
50413006,
50413001,
50413002,
50413003,
50413004,
50413005,
50414001,
50513006,
50513001,
50513002,
50513003,
50513004,
50513005,
50514001,
50613006,
50613001,
50613002,
50613003,
50613004,
50613005,
50614001,
30008018,
30900014,
10141044,
30309152,
30309165,
}	

x889005_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#c00FFFF���߲���Ŀ�Ĺ�â������ԭ������ʯ�����в���һ��#{_INFOMSG%s}#c00FFFF��",
  "#{_INFOUSR%s}#c00FFFF���߲���Ŀ�Ĺ�â������ԭ������ʯ�����в���һ��#{_INFOMSG%s}#c00FFFF��",
  "#{_INFOUSR%s}#c00FFFF���߲���Ŀ�Ĺ�â������ԭ������ʯ�����в���һ��#{_INFOMSG%s}#c00FFFF��",
}
--**********************************
--�¼��������
--**********************************
function x889005_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x889005_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end

--**********************************
--ֱ��ȡ��Ч����
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x889005_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end

--**********************************
--���������ڣ�
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x889005_OnConditionCheck( sceneId, selfId )

	--У��ʹ�õ���
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 7 ) then 
	        local strNotice = "�������g���㡣"
		      x889005_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end


	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "���Ĳ��ϙڛ]�п��g����Ҫ������"
		      x889005_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
			
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
end

--**********************************
--���ļ�⼰������ڣ�
--ϵͳ���ڼ������ĵ�ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ�С�
--ע�⣺�ⲻ�⸺�����ĵļ��Ҳ�������ĵ�ִ�С�
--**********************************
function x889005_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--ֻ��ִ��һ����ڣ�
--������˲�����ܻ���������ɺ��������ӿڣ������������Ҹ��������������ʱ�򣩣�������
--����Ҳ����������ɺ��������ӿڣ����ܵ�һ��ʼ�����ĳɹ�ִ��֮�󣩡�
--����1�������ɹ�������0������ʧ�ܡ�
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x889005_OnActivateOnce( sceneId, selfId )

    --����ͳ�ƣ�ת����ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 5, 0)
	
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 5 )
    
    if( RandomBase > 0 ) then    
       		
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 5 )
        
        local PrizeNum = 0
        if( RandomID == x889005_g_ZhuShiBaoHePrize[29] ) then
          PrizeNum = 7
        else
          PrizeNum = 1
        end
        
        if( RandomID > 0 ) then
           BeginAddItem(sceneId)
				   AddItem( sceneId, RandomID, PrizeNum )
			     local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			     if Ret > 0 then
			       	LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)

			       	if 1 == Notice then
			       	   local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					       x889005_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "���õ���"..ItemName
				      x889005_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "�������g����"
				      x889005_ShowNotice( sceneId, selfId, strNotice)
			     end
			
        end
        
    end
    
	return 1;
end

--**********************************
--��������������ڣ�
--�������ܻ���ÿ����������ʱ��������ӿڡ�
--���أ�1�����´�������0���ж�������
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x889005_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end

function x889005_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889005_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889005_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x889005_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889005_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end