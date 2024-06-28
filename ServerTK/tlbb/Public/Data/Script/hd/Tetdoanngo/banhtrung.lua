
x001087_g_Pos = {{left={240,233},right={270,258}}}
x001087_g_Impact1 = 3003 
x001087_g_Impact2 = -1 
x001087_g_SpecailObj = 53

x001087_g_Item_trung = {
30008018,--Thanh T�m �an
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048, --kim c߽ng to�
30309092,-- tr�ng c�n lu�n ti�n tu�n
30309092,--tr�ng th�i th��ng long t�
}

function x001087_OnDefaultEvent( sceneId, selfId, bagIndex )

end


function x001087_IsSkillLikeScript( sceneId, selfId)
	return 1;
end


function x001087_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end


function x001087_OnConditionCheck( sceneId, selfId )

	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
				x001087_Tips(sceneId, selfId, "C�n 2 � ��o c� � nh�n ���c ph�n th߷ng may m�n" )
			return 0
			end
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
end

function x001087_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end


function x001087_OnActivateOnce( sceneId, selfId )
	--if(-1~=x001087_g_Impact1) then
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
		x001087_Tips(sceneId, selfId, "C�n 2 � ��o c� � nh�n ���c ph�n th߷ng may m�n" )
	return 0
	end
	--for i = 1,2 do
	local idx = random( getn(x001087_g_Item_trung) )
	local ItemId = x001087_g_Item_trung[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local playerName = GetName(sceneId, selfId)
		LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
		x001087_FailTips(sceneId, selfId,  "Ch�c m�ng b�n v�a nh�n ���c ph�n th߷ng!!!")
		--local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
		--msg = format("#{_INFOUSR%s}#P d�ng m�t chi�c #GM�m B�nh Ti�u #P �t nhi�n #{_INFOMSG%s}#P t� tr�n tr�i r�i xu�ng chui l�t v�o tai n�i c�a #{_INFOUSR%s}#P th�t l� may m�n!", playerName, transfer, playerName )
		--BroadMsgByChatPipe(sceneId, selfId, msg, 0)
	end
			--end
--	end
--	return 1;
end


function x001087_OnActivateEachTick( sceneId, selfId)
	return 1; 
end
function x001087_Tips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end


function x001087_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
