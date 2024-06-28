--��ʯ����

--�ű���
x800117_g_ScriptId	= 800117
x800117_g_BINDED = 1              -- �Ѿ���
			

function x800117_OnGemCarve( sceneId, selfId, GemItemPos, NeedItemPos,TargetID )

	if (TargetID == nil ) then
		return
	end 
	if (TargetID == -1) then
		return
	end
	if GemItemPos == -1 or NeedItemPos == -1 then
		return
	end

	local GemItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos )
	local NeedItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, NeedItemPos )

	--��ñ�ʯ��������Ϣ....
	local ProductID, NeedID, NeedMoney = LuaFnGetGemCarveInfo( GemItemID )
	if  -1 == ProductID then
		return
	end

	--����Ƿ���������Ʒ....
	if NeedID ~= NeedItemID then
		return
	end
	
	--����Ǯ�Ƿ��㹻....
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --�����ռ� Vega
	if PlayerMoney < NeedMoney then
		return
	end

	local ProductNeedBind = 0    -- �������±�ʯ�Ƿ���Ҫ�� 0�ǲ���Ҫ��״̬��1����Ҫ��
	--���ݱ�ʯ�Ƿ�󶨺ͱ�ʯ�������Ƿ�󶨣�����ժ����ı�ʯ�Ƿ��
	if (LuaFnGetItemBindStatus(sceneId,selfId,GemItemPos) == x800117_g_BINDED or LuaFnGetItemBindStatus(sceneId,selfId,NeedItemPos) == x800117_g_BINDED) then
	  ProductNeedBind = 1
	end	

	local NeedItemInfo = GetBagItemTransfer( sceneId, selfId, NeedItemPos )

	--�۳���ʯ��������Ʒ....
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos )
	if ret ~= 1 then
		x800117_NotifyTip( sceneId, selfId, "B�o th�ch kh�ng th� �i�u tr�c, �i�u tr�c th�t b�i !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, NeedItemPos )
	if ret ~= 1 then
		x800117_NotifyTip( sceneId, selfId, "Kh�ng s� d�ng ���c v�t ph�m c�n thi�t, �i�u tr�c th�t b�i !" )
		return
	end

	LuaFnEraseItem( sceneId, selfId, GemItemPos )
	LuaFnEraseItem( sceneId, selfId, NeedItemPos )

	--��Ǯ....
	ret = LuaFnCostMoneyWithPriority( sceneId, selfId, NeedMoney )    --�����ռ� Vega
	if ret < 0 then
		x800117_NotifyTip( sceneId, selfId, "Kh�ng �� ng�n l��ng, �i�u tr�c th�t b�i !" )
		return
	end

	--����ҵ�����ı�ʯ....���ü�ⱳ���Ƿ��еط�....û�ط�ǰ��Ҳdel���ط���....
	local BagIndex = TryRecieveItem( sceneId, selfId, ProductID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x800117_NotifyTip( sceneId, selfId, "Tai n�i �� �y, �i�u tr�c th�t b�i !" )
	end
	
	--���ݱ�ʯ�Ƿ�󶨺ͱ�ʯ�������Ƿ�󶨣�����ժ����ı�ʯ�Ƿ��
	if (ProductNeedBind == 1) then
	  local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
	  if bindidx ~= 1 then
		  local bindmsg = "Kh�ng th� k�t h�p"													
		  BeginEvent( sceneId )
		    AddText( sceneId, bindmsg )
		  EndEvent( sceneId )
		  DispatchMissionTips( sceneId, selfId )
	  end
	end	

	--ͳ��....
	LuaFnAuditGemCarve( sceneId, selfId, GemItemID)

	--��Ŀ��ʾ��ҵ����ɹ�....
	x800117_NotifyTip( sceneId, selfId, "#{_ITEM"..GemItemID.."} ���c �i�u tr�c th�nh  #{_ITEM"..ProductID.."}" )

	--����....
	local Name = GetName(sceneId, selfId)
	local SceneName = GetSceneName(sceneId)
	local NPCName   = GetName(sceneId,TargetID)
	local GemItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	local gemQual = GetItemQuality( ProductID )
	--local strText = format("#{_INFOUSR%s}#I��%s#R������#I��ʹ��#{_INFOMSG%s}#I������һ��#{_INFOMSG%s}#I��������һʱ������졣", Name, SceneName,NeedItemInfo, GemItemInfo )
	local strText = format("#{_INFOUSR%s}#I t�i #G%s #R%s #I  tay c�m #{_INFOMSG%s}#I �i�u tr�c th�nh c�ng #{_INFOMSG%s} #I t�i %s  gi�p b�o th�ch t�ng th�m s�c m�nh.", Name, SceneName,NPCName,NeedItemInfo, GemItemInfo, SceneName)
	
	--���澫��ֻ����3�����ϵı�ʯ��������
	if (gemQual > 3) then
		--BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end

	-- �����ɹ���Ч....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x800117_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end