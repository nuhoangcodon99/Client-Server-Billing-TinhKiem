-- ������[ QUFEI 2007-09-30 21:53 UPDATE BugID 25759 ]
-- �޸���[ ����΢ 2008.5.20 ���102�������ĺϳ��䷽ ]

-- Ѫԡ����������ĵĺϳɻ���ʵ�� ���ĳ���ȷ���֣�
-- ItemID = 30505800~30505805(��ç���)			30505806 102������
-- 335135
-- ��������ɶȼ���������ĺϳ�
-- ��Ʒ����ʹ��1��
-- ʹ�����ɾ����Ʒ


--******************************************************************************
-- ���²�����Ҫ����Ҫ�޸ĵĲ���
--******************************************************************************

--�ű��� ���ĳ���ȷ�ű��ţ�
x335135_g_scriptId = 335135

-- ����ֵ ������Ҫ���д������ֵ��
x335135_g_CompleteValue = 5			-- ���������ɶ�			-- ����΢��102������������Ե�����50��������ϵ���5���ɡ�
--x335135_g_MaxCompleteValue = 100-- ��������ɶ�����
x335135_g_MaxUseCount = 1				-- ���ʹ�ô���1��

--��׼Ч��ID ���ĳ���ĺϳɵ���Ч��
--g_ImpactID = 0

--��ĺϳɶ�Ӧ��
x335135_g_ShenCaiTable = {{sjid=30505700,sfid=30505800,lrid=30505900},
													{sjid=30505701,sfid=30505801,lrid=30505901},
													{sjid=30505702,sfid=30505802,lrid=30505902},
													{sjid=30505703,sfid=30505803,lrid=30505903},
													{sjid=30505704,sfid=30505804,lrid=30505904},
													{sjid=30505705,sfid=30505805,lrid=30505905},
													{sjid=30505706,sfid=30505806,lrid=30505906},}		-- -- ����΢ 2008.5.20�� 102����������ͼ������ȱ�����7������ç���7�����������7����
x335135_g_MaxCompleteValue = {25,50,75,100,100,100,100}
-- ��ǰ���Ժϳɵ����������
x335135_g_ShenCaiIndex = 0

-- ʹ����ç�������������ʱ����ЧID
x335135_g_Impact_LevelUP = 47

-- �ϳɳ��������ʱ����ЧID
x335135_g_Impact_Complete = 48

-- ����΢��102����
x335135_g_XinMang7JiInfo = "T�n M�ng Th�n Ph� C�p 7"

--******************************************************************************
-- ���ϲ�����Ҫ����Ҫ�޸ĵĲ���
--******************************************************************************

--�ű�

--**********************************
--�¼��������
--**********************************
function x335135_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x335135_IsSkillLikeScript( sceneId, selfId)
	return 1	--����ű���Ҫ����֧��
end

--**********************************
--���������ڣ�
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x335135_OnConditionCheck( sceneId, selfId )
	-- PrintStr("OnConditionCheck...")
	
	--У��ʹ�õ���Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	-- �õ���ǰ����ʹ�õ���Ʒ�ı���λ��
	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	
	
	-- �õ���ǰ����ʹ�õ���Ʒ��ID
	local Item01 = LuaFnGetItemTableIndexByIndex(sceneId, selfId, nIndex)
	
	-- PrintStr("Item01 ="..Item01)
	
	-- ����΢ 2008.5.20�� 102����������ͼ�����߸���ç�����
	for i=1, 7 do				--for i=1, 6 do
		if Item01 == x335135_g_ShenCaiTable[i].sfid then
			x335135_g_ShenCaiIndex = i
			-- PrintStr("x335135_g_ShenCaiIndex ="..x335135_g_ShenCaiIndex)
			break
		end
		-- PrintStr("sfid ="..x335135_g_ShenCaiTable[i].sfid)
	end
	
	-- PrintStr("x335135_g_ShenCaiIndex ="..x335135_g_ShenCaiIndex)
		
	-- ����΢ 2008.5.20�� 102����������ͼ��������µ���ç���
	if Item01 < 30505800 or Item01 > 30505806 then			-- if Item01 < 30505800 or Item01 > 30505805 then
		local strNotice = "Ch� s� d�ng t�n m�ng th�n ph� � h�p th�nh" -- ��ç���
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	--hd add
	if Item01 == 30505806 then
		local strNotice = "��o c� ch�a m�, kh�ng th� s� d�ng. Ch� s� d�ng � s�a th�n kh� !" -- ��ç���
		x335135_ShowMsg( sceneId, selfId, strNotice)
		return 0
	end
	--end hd add
	
	-- PrintStr("sjid ="..x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid)
	
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid )
	if ItemCount < 1 then
		local strNotice = "C�c h� c�n c� ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ��ȱ�����
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	local bagbegin = GetBasicBagStartPos(sceneId, selfId)
	local bagend   = GetBasicBagEndPos(sceneId, selfId)
	-- PrintStr("bagbegin ="..bagbegin)
	-- PrintStr("bagend ="..bagend)
	local ItemEX
	-- ��õ�ǰ���Ժϳɵĵ�һ������ڱ����е�λ��	
	local sjbagpos = -1
	for i=bagbegin, bagend do
		if LuaFnIsItemAvailable( sceneId, selfId, i ) == 1 then
			ItemEX = LuaFnGetItemTableIndexByIndex(sceneId, selfId, i)			
			if ItemEX == x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid then
				-- PrintStr("ItemEX ="..ItemEX)
				sjbagpos = i
				break
			end		
		end
	end
		
	-- PrintStr("sjbagpos ="..sjbagpos)
	
	if sjbagpos == -1 then
		local strNotice = "C�c h� c�n c� ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ��ȱ�����
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	-- PrintStr("sjbagpos ="..sjbagpos)
	
	local CheckParam = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )   
	
	-- PrintStr("CheckParam ="..CheckParam)
	
	if CheckParam < x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] and CheckParam + x335135_g_CompleteValue >= x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] then		-- �������ȴﵽ100ʱ�Ƿ��пռ�
		local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
		if( FreeSpace < 1 ) then
	     local strNotice = "Tai n�y �� �y, qu� tr�nh b� k�t th�c."
		   x335135_ShowMsg( sceneId, selfId, strNotice)
	     return 0
		end
	end
	
	
	-- ����΢��102���������ʹ�õ�����ç���7��
	if Item01 == 30505806 then
		x335135_g_XinMang7JiInfo = GetBagItemTransfer( sceneId, selfId, nIndex )
		--PrintStr(x335135_g_XinMang7JiInfo)
	end
	
	
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
end

--**********************************
--���ļ�⼰������ڣ�
--ϵͳ���ڼ������ĵ�ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ�С�
--ע�⣺�ⲻ�⸺�����ĵļ��Ҳ�������ĵ�ִ�С�
--**********************************
function x335135_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--ֻ��ִ��һ����ڣ�
--������˲�����ܻ���������ɺ��������ӿڣ������������Ҹ��������������ʱ�򣩣�������
--����Ҳ����������ɺ��������ӿڣ����ܵ�һ��ʼ�����ĳɹ�ִ��֮�󣩡�
--����1������ɹ�������0������ʧ�ܡ�
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x335135_OnActivateOnce( sceneId, selfId )

	-- PrintStr("OnActivateOnce...")
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid )
	
	if ItemCount < 1 then
		local strNotice = "C�c h� c�n c� ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ��ȱ�����
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	-- �õ���ǰ����ʹ�õ���Ʒ�ı���λ��
	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	
	
	-- PrintStr("nIndex ="..nIndex)
	
	-- �õ���ǰ����ʹ�õ���Ʒ��ID
	local Item01 = x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sfid
	
	-- PrintStr("Item01 ="..Item01)
	
	--����ѡ�е���ç���
  -- ret = LuaFnDelAvailableItem(sceneId, selfId, Item01, 1)
	local bagbegin = GetBasicBagStartPos(sceneId, selfId)
	local bagend   = GetBasicBagEndPos(sceneId, selfId)
	-- PrintStr("bagbegin ="..bagbegin)
	-- PrintStr("bagend ="..bagend)
	local ItemEX
	-- ��õ�ǰ���Ժϳɵĵ�һ������ڱ����е�λ��	
	local sjbagpos = -1
	for i=bagbegin, bagend do
		if LuaFnIsItemAvailable( sceneId, selfId, i ) == 1 then
			ItemEX = LuaFnGetItemTableIndexByIndex(sceneId, selfId, i)			
			if ItemEX == x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid then
				-- PrintStr("ItemEX ="..ItemEX)
				sjbagpos = i
				break
			end		
		end
	end
		
	-- PrintStr("sjbagpos ="..sjbagpos)
	
	if sjbagpos == -1 then
		local strNotice = "C�c h� c�n c� ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ��ȱ�����
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	-- ��õ�ǰ�ϳɵ����������	
	local CompleteValue = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )
	-- PrintStr("CompleteValue ="..CompleteValue)

	if nIndex >= 0 then		
		
		-- ��¼ͳ����Ϣ
		LuaFnAuditShenCai(sceneId, selfId, Item01)
		
		CompleteValue = CompleteValue + x335135_g_CompleteValue
		
		-- PrintStr("CompleteValue ="..CompleteValue)
		
		SetBagItemParam( sceneId, selfId, sjbagpos, 8, 2, CompleteValue ) --������ɶ�
		
		-- ����΢��2008.5.22 �������ϵͳ����	#Iʹ����һ����ç���#G7��#I�������ɾ��������ֽ���һ����
		if Item01 == 30505806 then
			local playername = GetName(sceneId, selfId)	
			local strText = format("#{_INFOUSR%s}#{DQSJ_20080512_12}#{_INFOMSG%s}#{DQSJ_20080512_13}", playername, x335135_g_XinMang7JiInfo)						
			BroadMsgByChatPipe(sceneId,selfId, strText, 4)
		end
		
		--------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���ʧ��
		local CheckParam = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )   
				
		-- PrintStr("CheckParam ="..CheckParam)
				
		if CheckParam ~= CompleteValue then
		    return 0
		end		
		--------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���ʧ��
		
		local strNotice = "C�c h� �� l�m cho ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}".." t�ng th�m 1 � ho�n th�nh." -- ��ȱ�����
		x335135_ShowMsg( sceneId, selfId, strNotice)
		
		LuaFnRefreshItemInfo( sceneId, selfId, sjbagpos )	--ˢ�±�����Ϣ
		
		if CompleteValue >= x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] then		-- �������ȴﵽ100ʱ
					
			local EraseRet = EraseItem( sceneId, selfId, sjbagpos )
			
			if EraseRet < 0 then      --���ɾ��ʧ��,����������κ�Ч��			  
					return 0
			end
			
			-- PrintStr("lrid ="..x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid)
			
			BeginAddItem( sceneId )
			AddItem( sceneId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid, 1 )
			ret = EndAddItem( sceneId, selfId )
											
			if ret > 0 then
				TryRecieveItem( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid, QUALITY_MUST_BE_CHANGE )	-- �Ų��¾�û����							
				
			else
					BeginEvent(sceneId)
					strText = "� ��o c�, nguy�n li�u kh�ng �� kh�ng gian, h�y s�p x�p l�i !"
					AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return 0
			end		
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335135_g_Impact_Complete, 0 )
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335135_g_Impact_LevelUP, 0 )
		end
		
	else
		local strMsg = "T�ng h�p nguy�n li�u th�t b�i"
		x335135_ShowMsg( sceneId, selfId, strMsg)
		return 0
	end
  
	-- ���ĺϳ����

--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, g_ImpactID, 0)
	return 1
end

--**********************************
--��������������ڣ�
--�������ܻ���ÿ����������ʱ��������ӿڡ�
--���أ�1�����´�������0���ж�������
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x335135_OnActivateEachTick( sceneId, selfId )
	return 1
end

--**********************************
--ֱ��ȡ��Ч����
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
function x335135_CancelImpacts( sceneId, selfId )
	return 0		--����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end

function x335135_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
