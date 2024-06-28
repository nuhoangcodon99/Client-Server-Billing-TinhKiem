-- ����������������
-- �ڸ����ɵİ�ʦNPC������һ��ѡ������������ɡ�

x210287_g_ScriptId = 210287

--**********************************
--�о��¼�
--**********************************
function x210287_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x210287_g_ScriptId, "Ti�n c� gia nh�p m�n ph�i", 1, 900);
end

function x210287_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText()==900  then
		local nNpcmenPai = -1
		-- ���NPC�����������˵�����
		if GetName(sceneId, targetId) == "Tu� D�ch "  then
			nNpcmenPai = 0
		elseif GetName(sceneId, targetId) == "Th�ch B�o "  then
			nNpcmenPai = 1
		elseif GetName(sceneId, targetId) == "Gi�n Ninh "  then
			nNpcmenPai = 2
		elseif GetName(sceneId, targetId) == "Tr߽ng Ho�ch "  then
			nNpcmenPai = 3
		elseif GetName(sceneId, targetId) == "L� Tam N߽ng "  then
			nNpcmenPai = 4
		elseif GetName(sceneId, targetId) == "H�i Phong T� "  then
			nNpcmenPai = 5
		elseif GetName(sceneId, targetId) == "Ph� Tham "  then
			nNpcmenPai = 6
		elseif GetName(sceneId, targetId) == "Tr�nh Thanh S߽ng "  then
			nNpcmenPai = 7
		elseif GetName(sceneId, targetId) == "��m ��i T� V� "  then
			nNpcmenPai = 8
		end	
		
		--1,�����ʱ�������ж�����Ƿ�Ϊ�����ɵ��ӣ���������򵯳��Ի���ֻ�б��ŵ��Ӳ�������δ�������ɵ���Ҽ��뱾��
		if nNpcmenPai ~= GetMenPai(sceneId, selfId)   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Ch� c� � t� b�n m�n m�i c� th� ti�n c� ng߶i ch�i ch�a gia nh�p m�n ph�i gia nh�p m�n ph�i n�y.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId,"  Hi�n gi� c�c m�n ph�i tranh c߾p ng߶i t�i k�ch li�t, v� v�y t�i h� quy�t �nh, ph�m l� � t� b�n m�n ti�n c� � t� ch�a gia nh�p m�n ph�i c�p b�c 10 gia nh�p b�n m�n, s� c� gi�i th߷ng nh�t �nh.");
			AddNumText(sceneId, x210287_g_ScriptId, "T�i h� c�n ti�n c� ng߶i gia nh�p m�n ph�i", 1, 901)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	
	elseif GetNumText()== 901  then
		-- ����������ǲ��Ǻ�һ���˵��������
		--PrintNum(GetTeamSize(sceneId,selfId))
		if GetTeamSize(sceneId,selfId) < 2  then
			BeginEvent(sceneId)
				AddText(sceneId,"  C�c h� v� ng߶i ti�n c� m�t m�nh �n tr߾c t� �i.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if GetTeamSize(sceneId,selfId) > 2  then
			BeginEvent(sceneId)
				AddText(sceneId,"  C�n ph�i c�ng ng߶i ch�i ���c ti�n c� �n tr߾c t� �i m�i ���c.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		--�ж��Լ��������ˣ��ǲ��Ƿ�������
		if GetNearTeamCount(sceneId,selfId) ~= 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Яi t��ng c�c h� c�n ti�n c� kh�ng � g�n ��y.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local nPlayerId = GetNearTeamMember(sceneId,selfId,0)
		if nPlayerId == selfId  then
			nPlayerId = GetNearTeamMember(sceneId,selfId,1)
		end
		
		local tarPosX, tarPosZ = LuaFnGetWorldPos(sceneId, nPlayerId);
		local npcPosX, npcPosZ = LuaFnGetWorldPos(sceneId, targetId);
		local distSqNpcToPlayer = (tarPosX - npcPosX) * (tarPosX - npcPosX) + (tarPosZ - npcPosZ) * (tarPosZ - npcPosZ);
		if distSqNpcToPlayer >= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Яi t��ng c�c h� c�n ti�n c� kh�ng � g�n ��y.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
--		-- ���������ֵ���Ϣ��
		if GetMenPai(sceneId,nPlayerId)~=9 or GetLevel(sceneId,nPlayerId)~= 10  then
			BeginEvent(sceneId)
				AddText(sceneId,"  Ch� c� ng߶i ch�i ��t c�p b�c 10 v� kh�ng gia nh�p m�n ph�i kh�c, m�i c� th� th�ng qua ti�n c� gia nh�p b�n m�n.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- ִ�е�����Ϳ��Ը����ִ򿪶Ի���
		BeginEvent(sceneId)
			local szStr = "  " .. GetName(sceneId,selfId) .. "Ti�n c� c�c h� gia nh�p" .. x210287_GetMenPaiName(GetMenPai(sceneId,selfId)) .. ", xin h�i c�c h� c� �ng � gia nh�p?"
			AddText(sceneId, szStr)
			AddNumText(sceneId, x210287_g_ScriptId, "аng � gia nh�p", 1, 905)
			AddNumText(sceneId, x210287_g_ScriptId, "T�i h� c�n suy ngh�", 1, 906)
		EndEvent(sceneId)
		DispatchEventList(sceneId,nPlayerId,targetId)
		
		BeginEvent(sceneId)
			AddText(sceneId,"  C�c h� �� ��a th� ti�n c� cho t� �i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText()== 905  then
		-- ���Լ�����������ɣ��������ˣ��Լ���ǰ�������ɹ��׶�
		x210287_PlayerJoinMenpai(sceneId,selfId,targetId)
		
--		-- �رնԻ���
--		BeginUICommand(sceneId)
--		EndUICommand(sceneId)
--		DispatchUICommand(sceneId,selfId, 1000)
		
	elseif GetNumText()== 906  then
		-- �رնԻ���
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		
	end
	
end

function x210287_GetMenPaiName(nMenPaiId)
	local szMenPai = ""
	if nMenPaiId == 0 then
		szMenPai = "Ph�i Thi�u L�m"
	elseif nMenPaiId == 1 then
		szMenPai =  "Minh Gi�o"
	elseif nMenPaiId == 2 then
		szMenPai =  "C�i Bang"
	elseif nMenPaiId == 3 then
		szMenPai =  "Ph�i V� �ang"
	elseif nMenPaiId == 4 then
		szMenPai =  " Nga My"
	elseif nMenPaiId == 5 then
		szMenPai =  " Tinh T�c"
	elseif nMenPaiId == 6 then
		szMenPai =  "Thi�n Long ph�i"
	elseif nMenPaiId == 7 then
		szMenPai =  " Thi�n S�n"
	elseif nMenPaiId == 8 then
		szMenPai =  "Ph�i Ti�u Dao"
	end	
	
	return szMenPai
end

function x210287_PlayerJoinMenpai(sceneId,selfId,targetId)
	
	-- �ʵ����㰲ȫ�Լ��
	if GetTeamSize(sceneId,selfId) < 2  then
		BeginEvent(sceneId)
			AddText(sceneId,"  C�c h� c�n c�ng ng߶i ti�n c� c�a c�c h� gi� t� �i");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetTeamSize(sceneId,selfId) > 2  then
		BeginEvent(sceneId)
			AddText(sceneId,"  C�n ph�i c�ng ng߶i ch�i ���c ti�n c� �n tr߾c t� �i.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--�ж��Լ��������ˣ��ǲ��Ƿ�������
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"  Ng߶i ti�n c� c�a c�c h� c�n ph�i � g�n ��y.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	local nPlayerId = GetNearTeamMember(sceneId,selfId,0)
	if nPlayerId == selfId  then
		nPlayerId = GetNearTeamMember(sceneId,selfId,1)
	end
	
	-- ��֤���Id�ǲ�����Ч
	if LuaFnIsCanDoScriptLogic(sceneId, nPlayerId) == 0  then
		return
	end
	
	local nMenPaiId = GetMenPai(sceneId, nPlayerId)
	
	if nMenPaiId < 0  or nMenPaiId > 8  then
		return
	end
	
	local szMenpai = x210287_GetMenPaiName(nMenPaiId)
	
	-- �ƶ��������ɵĲ���
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"  H�y s�p x�p l�i tay n�i, c�n 2 v� tr� tr�ng, ta s� th߷ng cho ng߽i!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetLevel( sceneId, selfId ) < 10 then
		BeginEvent(sceneId)
			AddText(sceneId,"Th� ch� ��i t�i ���c c�p 10 h�ng t�i b�i s� h�c ngh�!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		x210287_g_MenPai = GetMenPai(sceneId, selfId)
		if x210287_g_MenPai == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ng߽i l�i t�i ��i b�i ph�i Ti�u Dao l�m s� ph�, ng߽i �� l� � t� Thi�u L�m, c�n mu�n b�i s� g� n�a")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		--����ֵΪ9��ʾ������
		elseif x210287_g_MenPai==9	then
			
			LuaFnJoinMenpai(sceneId, selfId, targetId, nMenPaiId)

			-- �������ɹ�ϵֵ
			CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

			BeginEvent(sceneId)
  			AddText(sceneId,"C�c h� �� gia nh�p" .. szMenpai .. "!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- ����ص��ķ�����Ϊ10��
			LuaFnSetXinFaLevel(sceneId,selfId, 1 + nMenPaiId*6, 10)
			LuaFnSetXinFaLevel(sceneId,selfId, 4 + nMenPaiId*6, 10)
			LuaFnSetXinFaLevel(sceneId,selfId, 5 + nMenPaiId*6, 10)
			
			if nMenPaiId == 0  then 		-- ����
	  		if TryRecieveItem( sceneId, selfId, 10124000, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124000).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 160, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_3}" )
			elseif nMenPaiId == 1  then  --����
	  		if TryRecieveItem( sceneId, selfId, 10124001, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124001).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 161, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_2}" )
			elseif nMenPaiId == 2  then  --ؤ��
	  		if TryRecieveItem( sceneId, selfId, 10124002, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124002).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 162, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_6}" )
			elseif nMenPaiId == 3  then		--�䵱��
	  		if TryRecieveItem( sceneId, selfId, 10124004, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124004).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_9}" )
			elseif nMenPaiId == 4  then  --������
	  		if TryRecieveItem( sceneId, selfId, 10124003, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124003).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 164, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_4}" )
			elseif nMenPaiId == 5  then  --������
	  		if TryRecieveItem( sceneId, selfId, 10124005, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124005).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_1}" )
			elseif nMenPaiId == 6  then  --������
	  		if TryRecieveItem( sceneId, selfId, 10124008, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124008).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 166, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_5}" )
			elseif nMenPaiId == 7  then  --��ɽ��
	  		if TryRecieveItem( sceneId, selfId, 10124006, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124006).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 167, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_7}" )
			elseif nMenPaiId == 8  then  --��ң��
	  		if TryRecieveItem( sceneId, selfId, 10124007, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124007).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 168, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_8}" )
			end

			--���ɽ����ټ���
			for i=1, 20 do
				TryRecieveItem( sceneId, selfId, 30501001, 1 )
			end
			x210287_MsgBox( sceneId, selfId, "L�y ���c 20 t�m Chi�u t�p l�nh c�a m�n ph�i" )

			if	LuaFnGetSex( sceneId, selfId)==0	then
				LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p" .. szMenpai .. "!",MSG2PLAYER_PARA)
--				CallScriptFunction( 220900, "OnDefaultEvent",sceneId, selfId, targetId )
			else
				LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p" .. szMenpai .. "!",MSG2PLAYER_PARA)
--				CallScriptFunction( 220900, "OnDefaultEvent",sceneId, selfId, targetId )
			end
			
			--���Ƽ��˽��� JOIN_MENPAI_WELCOME nPlayerId
			local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, nPlayerId)
			--SetHumanMenpaiPoint(sceneId, nPlayerId, nMenpaiPoint+20)
			LuaFnMsg2Player(sceneId, nPlayerId,"V� c� s� ti�n c� c�a c�c h�, c�c h� nh�n ���c � c�ng hi�n s� m�n s� m�n.",MSG2PLAYER_PARA)
			
			-- ���ɹ���
			local szPlayer1 = GetName(sceneId, selfId)
			local szPlayer2 = GetName(sceneId, nPlayerId)
			local szBroad = "@*;SrvMsg;" .. "tuijian_join_menpai" ..";"..szPlayer1..";"..szPlayer2..";"..szPlayer2
			
			BroadMsgByChatPipe(sceneId, selfId, szBroad, 7)
			
			-- ����������һ���Ի���ʾ
			BeginEvent(sceneId)
				AddText(sceneId, "  C�c h� �� tr� th�nh � t� c�a b�n ph�i.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
		end
	end
	
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x210287_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
