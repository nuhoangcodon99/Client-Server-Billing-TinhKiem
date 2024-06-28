--�����
--����-��Բ�����±��

--�ű���
x050020_g_ScriptId = 050020

--x050020_g_EndDayTime = 7290   --�����ʱ�� 2007-10-18
x050020_g_EndDayTime = 8304   --�����ʱ�� 2008-10-31,��������

x050020_g_PingFengSn = 40004428			--����ID
x050020_g_BianShenPieSn = 30505132	--���ݵ��±�ID

x050020_g_strBianShenPieInfo = "#{ZHONGQIUBIANSHEN_001}"
x050020_g_strGongGaoInfo = {

	"#Y�����A#P��Ц����#W#{_INFOUSR%s}#PӢ�ۣ��@����#{_INFOMSG%s}#P����Ǐ�#Y�N��#P���ЊZ��İɣ��Ҳ���ʳ�ԣ��@�w#{_INFOMSG%s}#P��������ˣ�",
	"#Y�����A#P���@��#W#{_INFOUSR%s}#P���㾹Ȼ��ď�#Y�t����#P���ЊZ���@���K#{_INFOMSG%s}#P���@�w#{_INFOMSG%s}#P�fʲ�NҲ�������ˣ�",
	"#Y�����A#P����#W#{_INFOUSR%s}#P��#Y��s#P���ЊZ������K#{_INFOMSG%s}#P��ϲ�����ó�һ�w#{_INFOMSG%s}#P������x��",

}

--**********************************
--������ں���
--**********************************
function x050020_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x050020_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local NumText = GetNumText()

	if NumText == 101 then

		BeginEvent(sceneId)
			AddText(sceneId, x050020_g_strBianShenPieInfo)
			AddNumText(sceneId, x050020_g_ScriptId, "�Qȡ", 6, 201 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 201 then

		--�����ݵ��±�....
		x050020_GivePlayerPie( sceneId, selfId, targetId )
	elseif NumText == 102 then
	
		BeginEvent(sceneId)
			AddText(sceneId, "#{ZQHD_20070916_013}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

end

--**********************************
--�о��¼�
--**********************************
function x050020_OnEnumerate( sceneId, selfId, targetId )

	local isTime = x050020_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x050020_g_ScriptId, "��Ҫ׃������", 6, 101 )													
end

--**********************************
--����Ƿ��ѽ���
--**********************************
function x050020_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime <= x050020_g_EndDayTime then
		return 1
	else
		return 0
	end

end

--**********************************
--��������ݵ��±�
--**********************************
function x050020_GivePlayerPie( sceneId, selfId, targetId )

	--�رնԻ�����....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--�Ƿ���3��....
	local itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050020_g_PingFengSn)
	if itemCount < 3 then
		BeginEvent(sceneId)
			AddText( sceneId, "�΄յ��߲��㣬�o���Qȡ" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--ɾ��ǰ��ȡ�����Transfer....
	local pingFengPos = GetItemBagPos( sceneId, selfId, x050020_g_PingFengSn, 0 )
	if pingFengPos < 0 then
		BeginEvent(sceneId)
			AddText( sceneId, "�΄յ��߲��㣬�o���Qȡ" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
	end
	local pingFengTransfer = GetBagItemTransfer(sceneId,selfId,pingFengPos)

	--��ⱳ���Ƿ��еط�....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "�������g����" )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--�Ƿ�ɾ��ʧ��....
	if 0 == DelItem(sceneId, selfId, x050020_g_PingFengSn, 3) then
		BeginEvent(sceneId)
			AddText( sceneId, "�΄յ��߲��㣬�o���Qȡ" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--����Ʒ������....
	local BagIndex = TryRecieveItem( sceneId, selfId, x050020_g_BianShenPieSn, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then

		BeginEvent( sceneId )
			AddText( sceneId, "��Q����һ�����ݵ������" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )

		--���繫��....
		local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
		local PlayerName = GetName(sceneId, selfId)
		local nMsgIndex = random(3)
		local str
		if nMsgIndex == 1 then
			str = format( x050020_g_strGongGaoInfo[1], PlayerName, pingFengTransfer, ItemTransfer )
		elseif nMsgIndex == 2 then
			str = format( x050020_g_strGongGaoInfo[2], PlayerName, pingFengTransfer, ItemTransfer )
		else
			str = format( x050020_g_strGongGaoInfo[3], PlayerName, pingFengTransfer, ItemTransfer )
		end
		BroadMsgByChatPipe( sceneId, selfId, str, 4 )

	end

end

--**********************************
--����������
--**********************************
function x050020_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x050020_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x050020_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x050020_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x050020_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x050020_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x050020_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x050020_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x050020_OnItemChanged( sceneId, selfId, itemdataId )
end
