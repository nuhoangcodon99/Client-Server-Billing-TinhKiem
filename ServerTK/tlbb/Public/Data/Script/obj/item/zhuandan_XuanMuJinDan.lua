--���ߣ���ľ��<ID:30504073>
--�ű��� 889043
--Author:zhangzhuang 2009-03-19

x889043_g_scriptId = 889043
x889043_g_ColorSockPrize = {
			           	10141133,
									30008007,
									30503019,
									30008034,
									30502002,
									30900006,
									30504039,
									30504037,								
	              } 
                 
x889043_g_strGongGaoInfo = {
	"#c00FFFF��#{_INFOUSR%s}#c00FFFF���X��ײ��#G#{_ITEM30504073}#c00FFFF�ĕr���w�����˽������ĸ��X�����e���F��һ��#{_INFOMSG%s}#c00FFFF�����Ǻ��\\�⡣",
	"#c00FFFF��#{_INFOUSR%s}#c00FFFF���X��ײ��#G#{_ITEM30504073}#c00FFFF�ĕr���w�����˽������ĸ��X�����e���F��һ��#{_INFOMSG%s}#c00FFFF�����Ǻ��\\�⡣",
	"#c00FFFF��#{_INFOUSR%s}#c00FFFF���X��ײ��#G#{_ITEM30504073}#c00FFFF�ĕr���w�����˽������ĸ��X�����e���F��һ��#{_INFOMSG%s}#c00FFFF�����Ǻ��\\�⡣",
}                
--**********************************
--�¼��������   
--**********************************
function x889043_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end              
                 
--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x889043_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end              
                 
--**********************************
--ֱ��ȡ��Ч���� 
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x889043_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end              
                 
--**********************************
--���������ڣ� 
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x889043_OnConditionCheck( sceneId, selfId )
	--У��ʹ�õ���
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������һ��������һ���ո�����͸ת����ཱ��2�������ж�ʣ��ռ�<1	
--��Ϊ��͸ת����Ʒ�е��ڵ��������е��ڲ�����
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "�������g���㡣"
		      x889043_ShowNotice( sceneId, selfId, strNotice)
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
function x889043_OnDeplete( sceneId, selfId )
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
function x889043_OnActivateOnce( sceneId, selfId )

    --����ͳ�ƣ�ת����ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 33, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 28)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 28 )
        local PrizeNum = 1
        if (RandomID == x889043_g_ColorSockPrize[8]) then
          PrizeNum = 10
        elseif (RandomID == x889043_g_ColorSockPrize[4] or RandomID == x889043_g_ColorSockPrize[5]
        	or RandomID == x889043_g_ColorSockPrize[6]) then
          PrizeNum = 2
        else 
        	PrizeNum = 1
        end
       
        if( RandomID > 0 ) then
        		local	bagpos = -1
        		for i=1,PrizeNum do
        			bagpos = -1
							bagpos = TryRecieveItem( sceneId, selfId, RandomID, 9 )
							if (bagpos ~= -1)  then
							  if  (RandomID ~= x889043_g_ColorSockPrize[1] and RandomID ~= x889043_g_ColorSockPrize[5])then
										LuaFnItemBind( sceneId, selfId, bagpos )
								end
							else
								local strNotice = "�������g����"
				      	x889043_ShowNotice( sceneId, selfId, strNotice)
							end
        		end
        		
        		if 1 == Notice and bagpos ~=-1 then
			       	  local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos)
					      x889043_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				    end

			      local ItemName = GetItemName(sceneId, RandomID)
			      local strNotice = "���õ���"..ItemName
			      x889043_ShowNotice( sceneId, selfId, strNotice)
			      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);				      
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
function x889043_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end

function x889043_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889043_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889043_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889043_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889043_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end