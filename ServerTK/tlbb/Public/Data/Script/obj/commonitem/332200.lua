--���ߣ�����Կ��<ID:30008011>
--�ű��� 332200
--Author: Steven.Han 10:39 2007-5-17

x332200_g_scriptId = 332200
x332200_g_DarkBox = 30008010

--**********************************
--�¼��������
--**********************************
function x332200_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x332200_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end

--**********************************
--ֱ��ȡ��Ч����
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x332200_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end

--**********************************
--���������ڣ�
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x332200_OnConditionCheck( sceneId, selfId )
	--У��ʹ�õ���Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "C�t ��o c� c�a c�c h� kh�ng c� ch� tr�ng, c�n s�p x�p l�i."
		    x332200_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "C�t nguy�n li�u c�a c�c h� kh�ng c� ch� tr�ng, c�n s�p x�p l�i."
		    x332200_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
		
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x332200_g_DarkBox )
	if ItemCount < 1 then
		local strNotice = "C�n ".."#{_ITEM"..(x332200_g_DarkBox).."}" --������
		x332200_ShowNotice( sceneId, selfId, strNotice)
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
function x332200_OnDeplete( sceneId, selfId )
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
function x332200_OnActivateOnce( sceneId, selfId )

    --����һ������
    ret = LuaFnDelAvailableItem(sceneId, selfId, x332200_g_DarkBox, 1)
	if ret ~= 1 then
		return   --����ɾ����ʧ��,���жϲ���,�����������κ���Ʒ
	end
	
    --����ͳ�ƣ��������ʹ��
	LuaFnAuditDarkKeyUsed(sceneId, selfId, 0, 0)
	
    local RandomBase = GetDarkBoxItemDropCount( sceneId, selfId )
    if( RandomBase > 0 ) then    
         
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = DarkBoxItemDropRandom( sceneId, selfId, RandomNum )
       
        if( RandomID > 0 ) then

			BeginAddItem(sceneId)
				AddItem( sceneId, RandomID, 1 )
			local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
				
				if 1 == Notice then
					local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					local ItemInfo = "#{_INFOMSG".. szItemTransfer .."}"
					x332200_ShowRandomSystemNotice( sceneId, selfId, ItemInfo )
				end
				
				local strNotice = "M� b�o s߽ng th�nh c�ng, ch�c m�ng c�c h� thu ���c: ".."#B#{_ITEM"..(RandomID).."}"
				x332200_ShowNotice( sceneId, selfId, strNotice)
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
			
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x332200_ShowNotice( sceneId, selfId, strNotice)
			end
			
			local SubItem = 30008026  --������Ʒ��100%���ʻ��
			BeginAddItem(sceneId)
				AddItem( sceneId, SubItem, 1 )
			Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x332200_ShowNotice( sceneId, selfId, strNotice)
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
function x332200_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end

function x332200_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x332200_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local strNotice =
	{
	"#W%s#H nh�n c�i#Y%s#H tr�ng r�ng, kh�ng ki�m ���c s� t�c gi�n, vung �ao ch�m n�t v�n. K�t qu� �� ph�t hi�n trong n�p b�o s߽ng ch�a #W%s. ",
	" #W%s#H h�i h�p run r�y d�ng tay m� #Y%s#H ra, ch� th�y 1 �nh s�ng ch�p qua, v� 1 #W%s#H�ang n�m y�n d߾i ��y th�ng.",
	"#W%s#H M�c d�c canh y, Trai gi�i t� th�c, T�nh thu� b�t nhai, Ho�ng th� �i�m ��o.....T�ng kinh thi�n bi�n. M� c�i #Y%s#H ra, th�t l� linh, trong g߽ng qu� th�t c� 1 c�i #W%s!"
	}
	
	local strDarkBox = "#{_ITEM30008010}" --������
	
	local PlayerName = GetName( sceneId, selfId )
	local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
	
	local RandomNotice = random( 1, 3 )
	local SysStr = format( strNotice[ RandomNotice ], PlayerInfoName, strDarkBox, strItemInfo )
	
	BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	
end