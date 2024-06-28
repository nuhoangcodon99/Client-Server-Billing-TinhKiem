-- ����NPC
-- ����
-- ��ͨ

--�ű���
x000111_g_ScriptId = 000111

--Ŀ��NPC
x000111_g_name = "Nhi�p Ch�nh "

--��ӵ�е��¼�ID�б� {��ͽ,��ʦ,���ʦ��,��ʦ,����ʦ�µȼ�,ʦͽ�����}
--x000111_g_RelationEventList = { 806008, 806007, 806009, 806006, 806015 }
--ȥ����ʦ���趨
x000111_g_RelationEventList = { 806019, 806008, 806009, 806006, 806015, 806018 }

--**********************************
--�¼��������
--**********************************
function x000111_OnDefaultEvent( sceneId, selfId, targetId )
	x000111_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�
--**********************************
function x000111_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local i, eventId
		--zchw
		--AddNumText( sceneId, x000111_g_ScriptId, "ʦͽ������", 6, 123)
		AddText( sceneId, "#{OBJ_luoyang_0030}" )
--		AddNumText( sceneId, x000111_g_ScriptId, "�����˽�һ��������ʦ", 11, 1 )
		
		for i, eventId in x000111_g_RelationEventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end

		
		
--	AddNumText( sceneId, x000111_g_ScriptId, "�鿴ʦ�µ���", 6, 2 )
		--AddNumText( sceneId, x000111_g_ScriptId, "Ta mu�n d�ng �i�m Thi�n �c nh�n l�nh kinh nghi�m", 6, 3 )
		AddNumText( sceneId, x000111_g_ScriptId, "Xu�t s�", 6, 10 )
		AddNumText( sceneId, x000111_g_ScriptId, "Gi�i thi�u s� �", 11, 4 )
		--AddNumText( sceneId, x000111_g_ScriptId, "����ʦͽ������", 11, 321)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000111_OnEventRequest( sceneId, selfId, targetId, eventId )
	local strText
	local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )

	if eventId == x000111_g_ScriptId then

		if GetNumText() == 1 then							-- �˽���ô��ʦ
			BeginEvent( sceneId )
			AddText( sceneId, "#{OBJ_luoyang_0032}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		
		elseif GetNumText() == 4 then					-- ʦͽ����
			BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_050}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )

		elseif GetNumText() == 2 then					-- �鿴ʦ�µ���
			BeginEvent( sceneId )
			strText = format( "  S� �i�m s� ��c hi�n c�: %d", LuaFnGetMasterMoralPoint( sceneId, selfId ) )
			AddText( sceneId, strText )
			strText = format( "  T�ch l�y s� �i�m s� ��c: %d", LuaFnGetMasterMoralPoint( sceneId, selfId ) )
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )

		elseif GetNumText() == 10 then
			local HumanLevel = LuaFnGetLevel( sceneId, selfId )
			
			if HumanLevel < 45 then--С��45��
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_5}" )
				return
			end
			
			
			
			if LuaFnHaveMaster( sceneId, selfId ) == 0 then--û��ʦ��
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_6}" )
				return
			end
			
			--����Ƿ��Ѿ�����ʦ
			if GetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag) == 1 then --��ʾ�Ѿ���ʦ
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_6}" )
				return
			end
				
			--��ʦ���ó�ʦ��־
			SetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag, 1)
			
			--���Ϳ�ִ���ʼ�
			LuaFnChuShiMail(sceneId, selfId)
						
			x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_1}" )
			
			return
		
		elseif GetNumText() == 3 then					-- �ƶ�ֵ������
			if nMlevel < 1 or nMlevel > 4 then
				x000111_MyMsgBox( sceneId, selfId, targetId, "  ��ng c�p s� ��c kh�ng ��" )
				return
			end
			if LuaGetPrenticeSupplyExp( sceneId, selfId ) == 0 then
				x000111_MyMsgBox( sceneId, selfId, targetId, "  Kh�ng c� kinh nghi�m c� th� l�nh" )
				return
			end
			--�򿪿ͻ����ƶ�ֵ�һ����鴰��
			LuaFnExpAssign( sceneId, selfId, 1 )
			--�رմ���
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		-- add by zchw
		elseif GetNumText() == 123 then
			--���ȼ�
			local HumanLevel = LuaFnGetLevel( sceneId, selfId )
			
			if HumanLevel < 30 then--С��45��
				x000111_MyMsgBox( sceneId, selfId, targetId, "C�n ��t c�p � 30 tr� l�n" );
				return
			end
			--�����Ҳμӻ��ʱ��
			local	nDayTime = GetMissionData( sceneId, selfId, MD_SHITU_XINLIANXIN );
			local nDay = LuaFnGetDayOfThisMonth()
			if nDayTime == nDay then
				x000111_MyMsgBox(sceneId, selfId, targetId, "Xin l�i, �� qua th�i gian ho�t �ng");
				return
			end

			-- 1�������������ǲ�����λ���ܹ�������Ʒ
			BeginAddItem(sceneId)
				AddItem( sceneId, 30008045, 1 ); --�����			
			if EndAddItem(sceneId,selfId)	< 1 then
				return
			end
			-- �����
			AddItemListToHuman(sceneId,selfId);
			-- ��ʾ��Ϣ
			x000111_MyMsgBox(sceneId, selfId, targetId, "C�c h� nh�n ���c S� � ��i l� bao !");
			BeginEvent(sceneId)
				strText = "C�c h� nh�n ���c S� � ��i l� bao !";
				AddText(sceneId, strText)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, selfId)
			-- ��¼��ȡʱ��
			SetMissionData( sceneId, selfId, MD_SHITU_XINLIANXIN, nDay );
			-- ��¼������־
			AuditJoinJiaoShiJie(sceneId, selfId);
		elseif GetNumText() == 321 then --ʦͽ�����Ľ���
				x000111_MyMsgBox(sceneId, selfId, targetId, "The annual Teachers Day approaching it! All 30 above hero can go Niezheng Dali (170,123) collect mentoring spree. Use spree Oh, there will be a windfall");
				return			
		-- end of zchw
		end
				
		
		return
	end

	local i, findId
	for i, findId in x000111_g_RelationEventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
--		x000111_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000111_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x000111_g_RelationEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x000111_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x000111_g_RelationEventList do
		if missionScriptId == findId then
			x000111_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�Ի�����ʾ
--**********************************
function x000111_MyMsgBox( sceneId, selfId, targetId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
