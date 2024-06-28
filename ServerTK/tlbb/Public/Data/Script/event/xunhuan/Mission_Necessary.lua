--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--�ýű��ļ�ֻ��ʦ���������, ����������Ҫ����, ����Ը�!
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
x500501_g_StartDayTime = 8030   --�����ʱ�� 2008-1-31
x500501_g_EndDayTime = 8044   --�����ʱ�� 2008-2-14

x500501_g_strDieNotice0 = "#{SMRW_20080118_01}"
x500501_g_strDieNotice1 = "#{SMRW_20080118_02}"

x500501_g_ItemId = {30501101, 30501102}

x500501_g_LingShouDanId = {30503034, 30503043, 30503052, 30503061} --���޵�ID

x500501_g_strHelpFinishedText = "  Ta g�p r�c r�i v�i c�nh c�a n�n nh� s� gi�p �� c�a c�c h� � s�a l�i #r Nhi�m v� ho�n th�nh#W"

function x500501_ACT_Duanwu( sceneId, selfId, iDayHuan ) --����
	
	local DayTime = GetDayTime()
	local Duanwu_Cyc = 20
	local Duanwu_Zongzi = 30501100            --����
	local Duanwu_GemDataGlobalIndex = 40
	local Duanwu_MaxGemCount = 2000
	
	local Duanwu_GemData  = LuaFnGetWorldGlobalData( Duanwu_GemDataGlobalIndex )
	local Duanwu_Daytime  = floor( Duanwu_GemData / 10000 )
	local Duanwu_GemCount = mod( Duanwu_GemData, 10000 )
	
	local DuanwuGemList = { 50101001, 50101002, 50102001, 50102002, 50102003, 50102004, 
	                        50103001, 50104002, 50111001, 50111002, 50112001, 50112002, 
	                        50112003, 50112004, 50113001, 50113002, 50113003, 50113004, 
	                        50113005, 50114001 }
	                        
	if iDayHuan <= 0 then
		return
	end
	if DayTime < 7168 or DayTime > 7175 then
		return --���ڻʱ����
	end
	
	local ModHuan = mod( iDayHuan, Duanwu_Cyc )
	if 0 ~= ModHuan then
		return  --���Ǹ������Ļ���
	end
		
	BeginAddItem(sceneId)
		AddItem( sceneId, Duanwu_Zongzi, 1 )    --�����������
	local AddRet = EndAddItem(sceneId,selfId)
	if AddRet > 0 then
		AddItemListToHuman(sceneId,selfId)  --�����������
		
		local Gemable = random(100)  -- 1/5��ñ�ʯ
		if Gemable > 20 then
			return
		end
		
		if DayTime ~= Duanwu_Daytime then
			Duanwu_Daytime = DayTime
			Duanwu_GemCount = 0   --��ʯ��������
		end
		
		if Duanwu_GemCount >= Duanwu_MaxGemCount then
			return     --��ʯ����������ÿ���ͳ����������
		end

		local GemListSize = getn(DuanwuGemList)
		local RandomGem = DuanwuGemList[ random( GemListSize ) ]
		BeginAddItem(sceneId)
			AddItem( sceneId, RandomGem, 1 )    --������ұ�ʯ
		local GemRet = EndAddItem(sceneId,selfId)
		if GemRet > 0 then
			AddItemListToHuman(sceneId,selfId)
			local GemInfo = GetItemTransfer(sceneId,selfId,0)
			local strformat	= "#{_INFOUSR%s}#Trong ho�t �ng Ti�t �oan Ng�, do ho�n th�nh 20 nhi�m v� s� m�n, kh�ng nh�ng nh�n ���c 1 c�i b�nh �, m� c�n nh�n ���c th�m 1#Y#{_INFOMSG%s}. "
			local strText = format(strformat, GetName(sceneId,selfId),GemInfo)
			--���澫��ȥ���˹���
			--BroadMsgByChatPipe(sceneId, selfId, strText, 4)
			
			--����ȫ������
			Duanwu_GemData = DayTime * 10000 + Duanwu_GemCount + 1
			LuaFnSetWorldGlobalData( Duanwu_GemDataGlobalIndex, Duanwu_GemData )

		end
		
	end	

	
end


--**********************************
--�ύ
--**********************************
function x500501_OnSubmit_Necessary( sceneId, selfId, targetId, isHelpFinish )
	local Level =GetLevel(sceneId, selfId)
	--begin modified by zhangguoxin 090208
	local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
	local iDayTime = floor(iTime/100)	--��һ�η��������ʱ��(����)
	local iQuarterTime = mod(iTime,100)	--��һ�η��������ʱ��(��)
	--local iDayHuan = floor(iDayCount/100000) --��������ɵ��������
	local iDayHuan = iDayCount --��������ɵ��������

	--local CurTime = GetHourTime()		--��ǰʱ��
	local CurTime = GetQuarterTime()		--��ǰʱ��
	local CurDaytime = floor(CurTime/100)	--��ǰʱ��(��)
	local CurQuarterTime = mod(CurTime,100)	--��ǰʱ��(��)

	if CurDaytime==iDayTime then 	--�ϴ����������ͬһ����
		iDayHuan = iDayHuan+1
	else							--�ϴ����������ͬһ�죬����
		iDayTime = CurDaytime
		iQuarterTime = 99
		iDayHuan = 1
	end
	--end modified by zhangguoxin 090208
	
	-- ========================================================
	-- ����ѩ�ػ
	
	-- ���50�ұ���
	if iDayHuan==20 or iDayHuan==40 or iDayHuan==60  then
		local curDayTime = GetDayTime()
		if curDayTime >= x500501_g_StartDayTime and curDayTime <= x500501_g_EndDayTime then
			BeginAddItem(sceneId)
				AddItem( sceneId, 30505166 , 20 )
			local canAdd1 = EndAddItem(sceneId,selfId)
			
			if canAdd1 == 0  then
				BeginEvent( sceneId )
					AddText( sceneId, "C�t v�t ph�m c�a c�c h� kh�ng c�n ch� tr�ng, l�n sau l�c giao nhi�m v� xin h�y � c�t ph�m v�t �� ch� tr�ng." )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			else
				AddItemListToHuman(sceneId,selfId)
				local transfer = GetItemTransfer(sceneId,selfId,0)
				
				local str1 = format( "#{_INFOUSR%s}", GetName(sceneId, selfId))
				local str2 = format("#W#{_INFOMSG%s}", transfer)
				local strMsg = str1..x500501_g_strDieNotice0..str2..x500501_g_strDieNotice1				
				BroadMsgByChatPipe(sceneId, selfId, strMsg, 4)		
			end
		end	

--�ĳɲ����������������ȡ�����޵��Ľ�����by zhangqiang 2009.6.18
--		if GetLevel(sceneId, selfId) >= 50 and iDayHuan == 20 then --50�����ϲŻ�ã�ֻ�е�һ��20���Ÿ���������ÿ20������
		if 0 > 1 then
			local randomIndex = random(getn(x500501_g_LingShouDanId))
			BeginAddItem(sceneId)
				AddItem( sceneId, x500501_g_LingShouDanId[randomIndex], 1 )
			local canAdd = EndAddItem(sceneId,selfId)
			if canAdd == 0  then
				BeginEvent( sceneId )
					AddText( sceneId, "#{JNHC_081128_01}"..GetItemName(sceneId, x500501_g_LingShouDanId[randomIndex]).."#{HSLJJF_2}" )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			
			else
				AddItemListToHuman(sceneId,selfId)
				
				--���Լ����͵õ���Ʒ����Ϣ....
				local strMsg = format("C�c h� nh�n ���c #H#{_ITEM%d}#W.", x500501_g_LingShouDanId[randomIndex])
				Msg2Player(sceneId, selfId, strMsg, MSG2PLAYER_PARA)
			--[tx42684]	
			  local myStrMsg = format("#{BSJH_81106_10}#H#{_ITEM%d}#W.", x500501_g_LingShouDanId[randomIndex])
			  BeginEvent(sceneId)
				  AddText(sceneId, myStrMsg);
			  EndEvent(sceneId)
			  DispatchMissionTips(sceneId,selfId)
			--[/tx42684]			
					
				--5%���ʻ��2��
				if random(100) <= 5  then
					BeginAddItem(sceneId)
						AddItem( sceneId, x500501_g_LingShouDanId[randomIndex], 1 )
					canAdd = EndAddItem(sceneId,selfId)
					
					if canAdd == 0  then
						BeginEvent( sceneId )
							AddText( sceneId, "#{JNHC_081128_02}"..GetItemName(sceneId, x500501_g_LingShouDanId[randomIndex]).."#{HSLJJF_2}" )
						EndEvent( sceneId )
						DispatchMissionTips( sceneId, selfId )
					
					else
						AddItemListToHuman(sceneId,selfId)
						local transfer = GetItemTransfer(sceneId,selfId,0)
						local str = format("#{_INFOUSR%s}#{JNHC_081128_03}#{_INFOMSG%s}#{JNHC_081128_04}",GetName(sceneId,selfId), transfer)
						BroadMsgByChatPipe(sceneId, selfId, str, 4)
	
						--���Լ����͵õ���Ʒ����Ϣ....
						strMsg = format("C�c h� nh�n ���c #H#{_ITEM%d}#W.", x500501_g_LingShouDanId[randomIndex])
						Msg2Player(sceneId, selfId, strMsg, MSG2PLAYER_PARA)
						
					end
				end
			end
		end
		
	end
	
	--�����ݵ�
	if iDayHuan==10 or iDayHuan==30 or iDayHuan==50 then
		if random(100) <= 30  then
			local randomIndex = random(2)
			BeginAddItem(sceneId)
				AddItem( sceneId, x500501_g_ItemId[randomIndex], 1 )
			local canAdd = EndAddItem(sceneId,selfId)
			
			if canAdd == 0  then
				BeginEvent( sceneId )
					AddText( sceneId, "C�t v�t ph�m c�a c�c h� kh�ng c�n ch� tr�ng, l�n sau l�c giao nhi�m v� xin h�y � c�t ph�m v�t �� ch� tr�ng." )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			
			else
				AddItemListToHuman(sceneId,selfId)
--				if randomIndex == 1  then
--					-- �����繫��
--					local transfer = GetItemTransfer(sceneId,selfId,0)
--					local str = format("#W#{_INFOUSR%s}#I����Ϊʦ������������ֱǰ���ܲ�������ɵ�20������ʱ�Ѿ��۵�����󺹣��������������ЪϢʱ�����ϵ���һ�����Ű׹��#W#{_INFOMSG%s}.",GetName(sceneId,selfId), transfer)
--					--���澫��ȥ���˹���
--					--BroadMsgByChatPipe(sceneId, selfId, str, 4)
--					
--				elseif randomIndex == 2  then
--					-- �����繫��
--					local transfer = GetItemTransfer(sceneId,selfId,0)
--					local str = format("#W#{_INFOUSR%s}#I����Ϊʦ������������ֱǰ���ܲ������ò����������20������ʱ����һ�������˵��ϣ��ڴ������һ�ž�Ө͸����#W#{_INFOMSG%s}.",GetName(sceneId,selfId), transfer)
--					----���澫��ȥ���˹���
--					--BroadMsgByChatPipe(sceneId, selfId, str, 4)
--					
--				end
				
				--���Լ����͵õ���Ʒ����Ϣ....
				local strMsg = format("C�c h� nh�n ���c #H#{_ITEM%d}#W.", x500501_g_ItemId[randomIndex])
				Msg2Player(sceneId, selfId, strMsg, MSG2PLAYER_PARA)

			end
		end
	end
	-- ========================================================

  -- ========================================================
	-- ʥ��� ���ʦ�������÷���
	x500501_ACT_Christmas( sceneId, selfId,iDayHuan )	
	
	-- ========================================================

	--PrintNum(iDayHuan)
	--iDayHuan = 60

--if mod(iDayHuan, 10) >= 1 and mod(iDayHuan, 10) < 5 then
--elseif mod(iDayHuan, 10) >= 5 and mod(iDayHuan, 10) < 8 then
--	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId)+1	)
--	Msg2Player(  sceneId, selfId,"C�c h� nh�n ���c #Y1#W�����ɹ��׶�." ,MSG2PLAYER_PARA )
--elseif mod(iDayHuan, 10) >= 8 and mod(iDayHuan, 10) < 10 then
--	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId)+2	)
--	Msg2Player(  sceneId, selfId,"C�c h� nh�n ���c #Y2#W�����ɹ��׶�." ,MSG2PLAYER_PARA )
--else --mod(iDayHuan, 10) must return 0
--	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId)+3	)
--	Msg2Player(  sceneId, selfId,"C�c h� nh�n ���c #Y3#W�����ɹ��׶�." ,MSG2PLAYER_PARA )
--end

	--ʵ�ʽ������׶�=����ҵȼ�-�����ȼ���* �ȼ�Ӱ����� + �������׶�
	--menpaipoint = (playerlvl - 10)*0.05 + X
	local baseMenpaiPoint = 0
	if iDayHuan < 10 then
		baseMenpaiPoint = 1
	elseif iDayHuan < 15 then
		baseMenpaiPoint = 2
	elseif iDayHuan < 19 then
		baseMenpaiPoint = 3
	elseif iDayHuan == 19 then
		baseMenpaiPoint = 4
	elseif iDayHuan == 20 then
		baseMenpaiPoint = 5
	end
	local menpaiPoint = floor((GetLevel(sceneId, selfId) - 10)*0.05) + baseMenpaiPoint
	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId) + menpaiPoint)
	Msg2Player(  sceneId, selfId,"C�c h� nh�n ���c #Y" .. menpaiPoint .. "#W �i�m � c�ng hi�n m�n ph�i." ,MSG2PLAYER_PARA )

	--iDayCount = iDayHuan*100000+iDayTime*100+iQuarterTime --ע�� by zhangguoxin 090208
	local Reward_Append = 1

	local playerLevel = GetLevel(sceneId, selfId)
	if playerLevel < 20 then
		if iDayHuan <= 10 then
			Reward_Append = 2
		end
	elseif playerLevel >= 20 and playerLevel < 30 then
		if iDayHuan <= 15 then
			Reward_Append = 2
		end
	elseif playerLevel >= 30 and playerLevel < 100 then
	  if iDayHuan <= 20 then
			Reward_Append = 2
		end
	elseif playerLevel >= 100 and playerLevel < 120 then
		if iDayHuan <= 20 then
			Reward_Append = 2
		end
	end

	--//////////////////////////////////////////////////
	--��10%�ļ��ʻ��һ���ͼ���ʯ�ϳɷ�
	--AAA����Ϊʦ������������ֱǰ���ܲ���������ɵ�20��
	--�౶ʱ������̫��һ��ˤ����·�ߣ���������ʱ������
	--��Ȼճ��һ����Ͱ͵�[�ͼ���ʯ�ϳɷ�].
	--ID��30900015
	--?	��ҵȼ����� >=40��
	--?	�����20��ʦ�Ž���Ϊ�౶����
	if playerLevel >= 40 and iDayHuan == 20 then
		local ret = random(100)
		--PrintNum(ret)
		if ret <= 10 then
			local szItemTransfer = ""
			BeginAddItem(sceneId)
				AddItem( sceneId, 30900015, 1 )
			local canAdd = EndAddItem(sceneId,selfId)
			if canAdd > 0 then
				AddItemListToHuman(sceneId,selfId)
				szItemTransfer = GetItemTransfer(sceneId,selfId,0)
				local strformat	= "#W#{_INFOUSR%s}#cffffcc h�m nay v� l�c c� g�ng ho�n th�nh 20 l�n nhi�m v� s� m�n, cu�i c�ng do qu� m�t m�i �� ng� b�n �߶ng, l�c ��ng d�y, th� tr�n m�t b� d�n 1 t�m #W#{_INFOMSG%s} nh�n nheo."
				local strText = format(strformat, GetName(sceneId,selfId),szItemTransfer)
				
				BroadMsgByChatPipe(sceneId, selfId, strText, 4)
			end
		end
	end
	--//////////////////////////////////////////////////

	local MijiActive = 1
	local AwardID = 30505078    --����о��ID
	local AwardCyc = 20         --��������( �����ٴ�������һ�ν��� )

	local DayTime = GetDayTime()
	if DayTime < 7104 then      --07��107��(4��15��)
       MijiActive = 0
    end

    if DayTime >= 7115 then      --07��115��(4��26��)
       MijiActive = 0
    end


	if playerLevel > 19 then
		if iDayHuan > 0 then
			local ModHuan = mod( iDayHuan, AwardCyc )
			if 0 == ModHuan then
				if 1 == MijiActive then
					BeginAddItem(sceneId)        --������Ҷ���
						--AddItem( sceneId, AwardID, 1 )
					local AddRet = EndAddItem(sceneId,selfId)
					if AddRet > 0 then
						AddItemListToHuman(sceneId,selfId)
					end
				end
			end

		end
	end

	local skyrockets = { 30505081, 30505082, 30505083, 30505084 }
	local count = 2
	local cycle = 20

	if DayTime >= 7128 and DayTime <= 7150 then		-- 07.5.9 ~ 07.5.31
		if ( iDayHuan / cycle ) == floor( iDayHuan / cycle ) then
			local skyrocket = skyrockets[random( getn(skyrockets) )]
			BeginAddItem( sceneId )					--������Ҷ���
				AddItem( sceneId, skyrocket, 2 )
			local AddRet = EndAddItem( sceneId, selfId )
			if AddRet > 0 then
				AddItemListToHuman( sceneId, selfId )
			else
				local strText = "V� t�i ��ng � c�a c�c h� kh�ng ��, c�c h� m�t m�t l�n nh�n ���c #{_ITEM" .. skyrocket .. "} c� h�i"

				BeginEvent( sceneId )
					AddText( sceneId, strText )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )

				Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
			end

		end
	end

	x500501_ACT_Duanwu( sceneId, selfId, iDayHuan )
	
	--����ѭ������Ļ���
	--begin modified by zhangguoxin 090208
	iDayCount = iDayHuan
	local newTime = iDayTime*100+iQuarterTime
	
	SetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME,newTime)
	SetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT,iDayCount)
	--end modified by zhangguoxin 090208
	x500501_g_MissionRound = GetMissionData(sceneId,selfId,MD_SHIMEN_HUAN)

	--˥��ϵ��
	--l_Exp = 0.75 * 0.75
	--l_Money = 0.75 * ( 49 + Level ) / ( 160 + 40 * Level )
	--���㽱�����������
	--if mod(x500501_g_MissionRound,10) == 0 then
	--	x500501_g_Exp = 2400*(Level+4) * 10 * l_Exp / 120						--�ȼ�+�����������ܾ�����ڳ�����Ӱ��
		--x500501_g_Money = 2400*(Level+4) * 10 * l_Money /120						--�ȼ�+�����������ܾ�����ڳ�����Ӱ��
	--else
	--	x500501_g_Exp = 2400*(Level+4) * mod(x500501_g_MissionRound,10) * l_Exp / 120						--�ȼ�+�����������ܾ�����ڳ�����Ӱ��
		--x500501_g_Money = 2400*(Level+4) * mod(x500501_g_MissionRound,10) * l_Money /120						--�ȼ�+�����������ܾ�����ڳ�����Ӱ��
	--end

	-- 1+�ȼ�Ӱ��*��ǰ�ȼ�/10 {�ȼ�Ӱ��=0.035��Ӱ��ָ��=1}
	local levelfactor = 0.035
	local refix = 1 + levelfactor*playerLevel/10

	local strHuashan = ""
	local strHuashan2 = ""
	if Reward_Append == 2 then
		if GetHuashanV(sceneId,selfId) == GetMenPai(sceneId,selfId) then
			local addMoney = floor(GetMoneyMultipleByRound(x500501_g_MissionRound) * floor(GetMoneyBonusByLevel(Level)/2))
			--local addExp = floor(GetExpMultipleByRound(x500501_g_MissionRound) * floor(GetExpBonusByLevel(Level)/2)*refix)
			local addExp = floor(GetExpMultipleByRound(x500501_g_MissionRound) * floor(GetExpBonusByLevel(Level))*refix)
			x500501_g_Money = addMoney * 3
			x500501_g_Exp = addExp * 3
			strHuashan = "#cff99ccV� b�n m�n ph�i ��t ���c Lu�n Ki�m Hoa S�n h�ng nh�t c�a k� n�y, n�n c� th� nh�n ���c th�m #Yph�n th߷ng kinh nghi�m#W c�a s� m�n." .. addExp .. "#cff99cc, ti�n#{_MONEY" .. addMoney .. "}#cff99cc."
			strHuashan2 = "#cff99cc nh�n ���c th�m #Yph�n th߷ng kinh nghi�m#W c�a s� m�n (Lu�n Ki�m Hoa S�n h�ng nh�t) " .. addExp .. ", ti�n#Y#{_MONEY" .. addMoney .. "}#cff99cc."
		else
			x500501_g_Money = floor( (GetMoneyMultipleByRound(x500501_g_MissionRound) * GetMoneyBonusByLevel(Level)) )
			--local x500501_g_Exp = floor( (GetExpMultipleByRound(x500501_g_MissionRound) * GetExpBonusByLevel(Level))*refix)
			x500501_g_Exp = floor( (GetExpMultipleByRound(x500501_g_MissionRound) * GetExpBonusByLevel(Level)*2)*refix)
		end
	else
		x500501_g_Money = GetMoneyMultipleByRound(x500501_g_MissionRound) * floor(GetMoneyBonusByLevel(Level)/2)
		x500501_g_Exp = GetExpMultipleByRound(x500501_g_MissionRound) * floor(GetExpBonusByLevel(Level)/2)
	end

	--if	floor((x500501_g_MissionRound - 1) / 10) >=1  then
	--	x500501_g_Exp = 2400*(Level+4) * l_Exp / 120 + x500501_g_Exp						--11~20������ÿ����������һ��������������Ǯû������
	--end


	--x500501_g_Exp = x500501_g_Exp * Reward_Append

	x500501_g_Exp = floor(x500501_g_Exp)
	x500501_g_Money = floor(x500501_g_Money)

	--���Ӿ���ֵ��Ǯ
	--���������
	AddExp( sceneId,selfId,x500501_g_Exp)
	AddMoney(sceneId,selfId,x500501_g_Money)
	--��ʾ�Ի���
	BeginEvent(sceneId)
		--�����ͬ��������ɵ�....�������ضԻ�....
		if isHelpFinish and isHelpFinish == 1 then
			AddText(sceneId, x500501_g_strHelpFinishedText)
		end
		AddText(sceneId,"  L�m r�t kh�, � ��y c� "..x500501_g_Exp.." �i�m tr� gi� kinh nghi�m v� #{_MONEY"..x500501_g_Money.."}, coi nh� t�ng th߷ng cho ng߽i")
		AddText(sceneId, strHuashan)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	Msg2Player(  sceneId, selfId, strHuashan2,MSG2PLAYER_PARA )
	--Msg2Player(  sceneId, selfId,"C�c h� nh�n ���c #{_MONEY" .. tostring(x500501_g_Money) .. "}" ,MSG2PLAYER_PARA )
	--Msg2Player(  sceneId, selfId,"C�c h� nh�n ���c " .. tostring(x500501_g_Exp) .. "�㾭��ֵ" ,MSG2PLAYER_PARA )

	--��һ�������¿��Եõ�����Ľ���
	if Reward_Append == 2 and mod(iDayHuan, 5) == 0 and random(1000) <= 5 then

		local ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(27)
		local szItemTransfer = ""
		BeginAddItem(sceneId)
			AddItem( sceneId, ItemSn, 1 )
		local canAdd = EndAddItem(sceneId,selfId)

		if canAdd > 0 then
			AddItemListToHuman(sceneId,selfId)
			szItemTransfer = GetItemTransfer(sceneId,selfId,0)
			local strText = format("Ng߽i �� ��t ���c %s", ItemName)
			BeginEvent(sceneId)
				AddText(sceneId, strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)

			local strformatList	= {
						"#W#{_INFOUSR%s}#cffffcc trong l�c l�m nhi�m v� s� m�n, v� qu� v�t v�, s� ph� �� th߷ng 1 #W#{_INFOMSG%s}. ",
						"#W#{_INFOUSR%s}#cffffcc v�a ho�n th�nh nhi�m v� s� m�n b߾c ra c�a th� b� v�p ph�i th�m c�a, ph�t hi�n 1 #W#{_INFOMSG%s}. ",
						"#cffffccV� #W#{_INFOUSR%s}#cffffcc trong l�c giao nhi�m v� s� m�n, s� ph� th� �ang n�i gi�n n�n b� s� ph� s�n tay l�y 1 #W#{_INFOMSG%s}#cffffcc n�m tr�ng �u.",
						"#W#{_INFOUSR%s}#cffffcc trong l�c giao nhi�m v� s� m�n, b�ng tr�n tr�i r�i xu�ng 1 #W#{_INFOMSG%s}#cffffcc tr�ng v�o �u.",
						}
			local index = random(4)
			local PlayName = GetName(sceneId,selfId)
			strText = format(strformatList[index], PlayName, szItemTransfer)
			
			--���澫��ȥ��
			--BroadMsgByChatPipe(sceneId, selfId, strText, bBroadCast)
			
		end

	end

	BeginEvent(sceneId)
		AddText(sceneId, "#GH�m nay#W ng߽i �� ho�n th�nh xong " .. iDayHuan .. "#G v�ng nhi�m v� s� m�n#W");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	--ʦ������ͳ��
	LuaFnAuditShiMenRenWu(sceneId, selfId, x500501_g_MissionRound, GetLevel(sceneId, selfId))
	LuaFnAuditShiMenRenWu_Day(sceneId, selfId, iDayHuan, GetLevel(sceneId, selfId))           --����ʦ������ͳ��
	return Reward_Append, x500501_g_MissionRound

end

--**********************************
--����
--**********************************
function x500501_CheckAccept_Necessary( sceneId, selfId )

	--begin modified by zhangguoxin 090208
	local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
	local iDayTime = floor(iTime/100)	--��һ�η��������ʱ��(����)
	local iQuarterTime = mod(iTime,100)	--��һ�η��������ʱ��(һ����)
	--local iDayHuan = floor(iDayCount/100000) --��������ɵ��������
	local iDayHuan = iDayCount --��������ɵ��������

	--local CurTime = GetHourTime()		--��ǰʱ��
	local CurTime = GetQuarterTime()		--��ǰʱ��
	local CurDaytime = floor(CurTime/100)	--��ǰʱ��(��)
	local CurQuarterTime = mod(CurTime,100) 	--��ǰʱ��(һ����)
	--print(iDayCount,iTime,iDayTime,iQuarterTime,iDayHuan)
	--print(CurQuarterTime,iQuarterTime)
	--print(iDayCount,CurTime)
	if iDayTime == CurDaytime then
		--�������������������ﵽ60�������ٽ�
		if iDayHuan >= 60 then
			return -2;
		end
		if CurQuarterTime == iQuarterTime then
			return -1;
		end
	else
		iDayHuan = 1
		--iDayCount = iDayHuan*100000+iDayTime*100+iQuarterTime
		iDayCount = iDayHuan;
		local newTime = iDayTime*100+iQuarterTime
		SetMissionData(sceneId, selfId, MD_SHIMEN_DAYTIME, newTime)
		SetMissionData(sceneId, selfId, MD_SHIMEN_DAYCOUNT, iDayCount)
	end
	--end modified by zhangguoxin 090208
	local playerLevel = GetLevel(sceneId, selfId)
	if playerLevel < 20 then
		if iDayHuan < 10 then
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
		else
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
		end
	elseif playerLevel >= 20 and playerLevel < 30 then
		if iDayHuan < 15 then
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
		else
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
		end
	elseif playerLevel >= 30 and playerLevel < 100 then
    if iDayHuan < 20 then
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
	  else
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
	  end
	elseif playerLevel >= 100 and playerLevel < 120 then
	  if iDayHuan < 20 then
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
	  else
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
	  end
	end

	return 1;

end

--**********************************
--����
--**********************************
function x500501_Abandon_Necessary( sceneId, selfId )

	--begin modified by zhangguoxin 090208
	--local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
	local iDayTime = floor(iTime/100)	--��һ�η��������ʱ��(����)
	--local iDayHuan = floor(iDayCount/100000) --��������ɵ��������

	--local CurTime = GetHourTime()		--��ǰʱ��
	local CurTime = GetQuarterTime()		--��ǰʱ��
	local CurDaytime = floor(CurTime/100)	--��ǰʱ��(��)

	if iDayTime ~= CurDaytime then
		--iDayHuan = 0
		SetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT,0)
	end

	--����ѭ�������ʱ��
	--iDayCount = iDayHuan*100000+CurTime
	--SetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT,iDayCount)
	SetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME,CurTime)
	--end modified by zhangguoxin 090208

	local menpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
	if menpaiPoint == 1 then
		SetHumanMenpaiPoint(sceneId, selfId, menpaiPoint-1 )
		Msg2Player(  sceneId, selfId,"Ng߽i �� ti�u hao #Y1 #W�i�m c�ng hi�n m�n ph�i" ,MSG2PLAYER_PARA )
	elseif menpaiPoint >= 2 then
		SetHumanMenpaiPoint(sceneId, selfId, menpaiPoint-2 )
		Msg2Player(  sceneId, selfId,"Ng߽i �� ti�u hao #Y2 #W�i�m c�ng hi�n m�n ph�i" ,MSG2PLAYER_PARA )
	end
end

--**********************************
--����ύ����ͨ��Ʒ
--**********************************
function x500501_OnMissionCheck_Necessary( sceneId, selfId, index1, index2, index3, Needindex )

	if Needindex == nil or Needindex == -1 then
		return 0;
	end

	if index1 >= 0 and index1 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index1 )

		if SerialNum == Needindex then
			return index1;
		end
	end

	if index2 >= 0 and index2 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index2 )

		if SerialNum == Needindex then
			return index2;
		end
	end

	if index3 >= 0 and index3 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index3 )

		if SerialNum == Needindex then
			return index3;
		end
	end

	BeginEvent(sceneId)
		AddText(sceneId,"Nhi�m v� c�a ng߽i kh�ng th� ho�n th�nh, v�t ph�m ng߽i giao kh�ng ch�nh x�c")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return -1;

end

--**********************************
--����ύ��װ������Ʒ
--**********************************
function x500501_OnMissionCheckName_Necessary( sceneId, selfId, index1, index2, index3, Needindex )

	if Needindex == nil or Needindex == -1 then
		return 0;
	end

	if index1 >= 0 and index1 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index1 )
		ItemNameId = GetItemNameID(SerialNum)

		if ItemNameId == Needindex then
			return index1;
		end
	end

	if index2 >= 0 and  index2 < 60 then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index2 )
		ItemNameId = GetItemNameID(SerialNum)

		if ItemNameId == Needindex then
			return index2;
		end
	end

	if index3 >= 0 and  index3 < 60 then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index3 )
		ItemNameId = GetItemNameID(SerialNum)

		if ItemNameId == Needindex then
			return index3;
		end
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Nhi�m v� c�a ng߽i kh�ng th� ho�n th�nh, v�t ph�m ng߽i giao kh�ng ch�nh x�c")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return -1;
end

--**********************************
--����ύ����Ʒ
--**********************************
function x500501_OnMissionCheck_NecessaryEx( sceneId, selfId, index1, index2, index3, Needindex )
	if Needindex == nil or Needindex <= 0 then
		return -1
	end

	local indices = { index1, index2, index3 }
	for i = 1, getn( indices ) do
		if indices[i] and indices[i] >=0 and indices[i] < 80 then	-- �Ϸ��ı�������
			if LuaFnGetItemTableIndexByIndex( sceneId, selfId, indices[i] ) == Needindex then
				return indices[i]
			end
		end
	end

	return -1
end

-- ʥ��� ���ʦ�������÷���
function x500501_ACT_Christmas( sceneId, selfId, DayHuan )
  
  if DayHuan ~=20 and DayHuan ~=40 and DayHuan ~=60  then
     return
  end
	--���ʱ��	
	if CallScriptFunction( 050025, "CheckRightTime", sceneId) == 1 then
			
			--�����ҵȼ�С��25������ؿ�
	  if	GetLevel( sceneId, selfId) < 25 then
		  return
	  end
	  
	  --�����ϰ��Ƿ��еط�....
	  if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
		  return
	  end
	  
	  local x500501_HeKaId = {
	                 20310011,
	                 20310017,
	                 20310012,
	                 20310019,
	                 20310014,
	                 20310018,
	                 20310015,
	                 20310016,
	                 20310013,	
           }			                                   --�ؿ�ID
    local menpaiId = LuaFnGetMenPai( sceneId, selfId )
    local hekaid = 0
    local strtext = ""
	  --�����ɺ���
	 if menpaiId == MP_SHAOLIN then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Thi�u L�m."
	     hekaid = x500501_HeKaId[1]
	  elseif menpaiId == MP_MINGJIAO then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Minh Gi�o."
	     hekaid = x500501_HeKaId[2]
	  elseif menpaiId == MP_GAIBANG then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i C�i Bang."
	     hekaid = x500501_HeKaId[3]
	  elseif menpaiId == MP_WUDANG then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i V� �ang."
	     hekaid = x500501_HeKaId[4]
	  elseif menpaiId == MP_EMEI then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Nga My."
	     hekaid = x500501_HeKaId[5]
	  elseif menpaiId == MP_XINGSU then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Tinh T�c."
	     hekaid = x500501_HeKaId[6]
	  elseif menpaiId == MP_DALI then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Thi�n Long."
	     hekaid = x500501_HeKaId[7]
	  elseif menpaiId == MP_TIANSHAN then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Thi�n S�n."
	     hekaid = x500501_HeKaId[8]
	  elseif menpaiId == MP_XIAOYAO then
	     strtext = "C�c h� thu ���c 1 t�m Thi�p ch�c ng�y l� ph�i Ti�u Dao."
	     hekaid = x500501_HeKaId[9]
	  end

	  local BagIndex = TryRecieveItem( sceneId, selfId, hekaid, QUALITY_MUST_BE_CHANGE )
	  if BagIndex ~= -1 then
		  BeginEvent( sceneId )
			  AddText( sceneId, strtext )
		  EndEvent( sceneId )
		  DispatchMissionTips( sceneId, selfId )
	  end	  
	  
	end
	
end
