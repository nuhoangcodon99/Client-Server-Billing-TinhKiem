--Ǯׯ�ű�

--�ű���
x000076_g_scriptId = 000076

--��ӵ�е��¼�ID�б�
--g_eventList={211105,211106,211108}	

--����4���洢�仨�ѵ�Ǯ
--Ĭ����20������,��ʱ������һ����Ҫ����50000������+��ң�
x000076_g_Box	 = {{Capacity=20,Cost=50000},
			{Capacity=40,Cost=100000},
			--{Capacity=60,Cost=200000},
			--{Capacity=80,Cost=400000}
	    }

-- �������Ĭ�ϵĽ��Ӻͽ����Ŀ    
x000076_g_MoneyJZ = 0
x000076_g_Money = 0

--npc���Ĭ�Ϻ���,����������ʾ�Ի����ֺ͹��ܰ�ť
function x000076_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

		--��Ӵ����н���İ�ť
		AddNumText(sceneId, 7, "M� ng�n kh�",5,-1)
		--�õ���ǰ���еĴ洢����
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--���Ҵ洢�����
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId,targetId,CurrentRentIndex )
		if BoxNum ~= 0 then
			AddNumText(sceneId, x000076_g_Box[BoxNum].Capacity, "Mua r߽ng ��ng � m�i", 5, -1)
		end

		--�򿪱�����
		AddNumText(sceneId, 101, "M� B�o hi�m s߽ng",5,-1)
		AddNumText(sceneId, 102, "Gi�i thi�u B�o hi�m s߽ng",11,3)
		AddNumText( sceneId, x000076_g_scriptId, "#{JZBZ_081031_02}", 11, 4)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x000076_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == -1 then
			if LuaFnGetLevel( sceneId, selfId ) < 11 then
				x000076_MsgBox( sceneId, selfId, "��ng c�p s� d�ng kho c�n c�p 11, sau khi ��t ���c, ng߽i h�y t�i t�m ta" )
				return
			end
	elseif GetNumText() == 4 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{JZBZ_081031_01}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--������
	if eventId == 7 then
		BankBegin(sceneId, selfId, targetId)	
	--�����µĴ�����
	elseif eventId == 8 then
		--�õ���ǰ���еĴ洢����
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--���Ҵ洢�����
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId, targetId, CurrentRentIndex )
         
    -- �õ���Һͽ��ӵ���Ŀ
    x000076_g_MoneyJZ = GetMoneyJZ ( sceneId, selfId )
    x000076_g_Money = GetMoney ( sceneId, selfId )
		
		-- �����Ǯ��Ŀ����
		if (x000076_g_MoneyJZ + x000076_g_Money) >= x000076_g_Box[BoxNum].Cost then
			-- ʹ�ô����ȼ��Ľ�Ǯ���ĺ���
			LuaFnCostMoneyWithPriority (sceneId,selfId,x000076_g_Box[BoxNum].Cost)
			
			-- ���Ӵ洢�䲢��ʾ
			x000076_EnableBankBox( sceneId, selfId, targetId, BoxNum )
			-- �����н���
  		BankBegin(sceneId, selfId, targetId)
  	
		else
			x000076_MsgBox( sceneId, selfId, "C�c h� kh�ng �� ng�n l��ng"  )
		end

	elseif eventId == 101 then
		BankOpt(sceneId, selfId, targetId, "opensafebox")

	elseif eventId == 102 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{YHBXX_20071220_17}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	else
		--�õ���ǰ���еĴ洢����
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--���Ҵ洢�����
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId,targetId,CurrentRentIndex )
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x000076_g_scriptId)
			UICommand_AddInt(sceneId,targetId)
			UICommand_AddInt(sceneId,8)
			UICommand_AddString(sceneId,"OnEventRequest")
			UICommand_AddString(sceneId,"N�u mu�n mua r߽ng ��ng �, ng߽i c�n ph�i t�n #{_EXCHG"..x000076_g_Box[BoxNum].Cost.."}.")			
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)		--���������ѯ�ʴ������������д24
	end

end

--�Զ��庯��,�������,�򿪵� Num+1 ��Ÿ��洢��
function x000076_EnableBankBox( sceneId, selfId, targetId, Num )
	
	-- ��Ҫ���ѽ�Ǯ����ʾ
	x000076_MoneyChange ( sceneId, selfId, targetId, x000076_g_Box[Num].Cost, x000076_g_Money, x000076_g_MoneyJZ )

	-- �������
	EnableBankRentIndex(sceneId, selfId, Num+1)

end

--�Զ��庯��,��������,�������
function x000076_FindBoxNum( sceneId, selfId,targetId,Capacity )
	--�õ���������
	for i, findBox in x000076_g_Box do
		if findBox.Capacity == Capacity then
			return i
		end
	end

	return 0
end

-- ��ӡ������������Ļ��ʾ��Ϣ
-- �����ǰ�������ǣ�Money + MoneyJZ >= Cost
-- ��ڲ�����	Cost		--	��������ļ۸�
--						Money		--	��������ǰ���ӵ�еĽ�Ǯ��Ŀ
--						MoneyJZ	--	��������ǰ���ӵ�еĽ�����Ŀ
function x000076_MoneyChange ( sceneId, selfId, targetId, Cost, Money, MoneyJZ )

	-- ��������Ļ���   
  local nCost = Cost
  local nMoney = 0
  local nMoneyJZ = 0
  
	-- ������Ŀ����
	if (MoneyJZ >= Cost) then
		nMoneyJZ = Cost
		nMoney = 0
		
		x000076_MsgBox( sceneId, selfId, "C�c h� �� b� ra  #{_EXCHG"..nMoneyJZ.."} � mua m�t r߽ng � m�i" )
		
	-- ���Ӳ���,���� ����+��� ��Ŀ����
	elseif (MoneyJZ > 0) and (Money > 0) and (MoneyJZ + Money) >= Cost then
		nMoneyJZ = MoneyJZ
		nMoney = Cost - MoneyJZ
		
		x000076_MsgBox ( sceneId, selfId, "C�c h� �� b� ra  #{_EXCHG"..nMoneyJZ.."}" )
		x000076_MsgBox ( sceneId, selfId, "C�c h� �� b� ra  #{_MONEY"..nMoney.."}"  )
		x000076_MsgBox ( sceneId, selfId, "C�c h� nh�n ���c m�t r߽ng � m�i" )
		
	-- û�н���,ֻ�н��
	elseif (MoneyJZ == 0) and (Money >= Cost) then
		nMoneyJZ = 0
		nMoney = Cost
		
		x000076_MsgBox ( sceneId, selfId, "C�c h� �� b� ra  #{_MONEY"..nMoney.."} � mua m�t r߽ng � m�i" )
		
	else
		nMoneyJZ = 0
		nMoney = 0
		
		-- ͼ��ת�����
		-- ���ӣ�	#-14
		-- �����ӣ�	#-15
		-- ͭ���ӣ�	#-16
		-- ��ң�		#-02
		-- ���ң�		#-03
		-- ͭ�ң�		#-04
		x000076_MsgBox ( sceneId, selfId, nMoneyJZ.."#-16,"..nMoney.."#-04" )
 
	end
		
	return
end

--�Զ��庯��,��Ļ��Ϣ��ʾ��ֻ����ʾһ��,������#r����,������ʾ������ִε��á���
function x000076_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
