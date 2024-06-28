--����NPC
--�ŵ���
--��ͨ

x002075_g_ScriptId	= 002075

--�������(���ܱ�š��������ơ����Ľ�Ǯ)
x002075_g_Ability				= {}
x002075_g_Ability["aid"]= 39
x002075_g_Ability["nam"]= " Ch� X�ch Thi�n Nhai"
x002075_g_Ability["gld"]= 300000		--30G
x002075_g_LevMax				= 3					--��ѧϰ����ߵȼ�

--������
x002075_g_Key				= {}
x002075_g_Key["nul"]= 0		--ɶ��û��
x002075_g_Key["stu"]= 1		--ѧϰ����
x002075_g_Key["sty"]= 101	--ȷ��ѧϰ
x002075_g_Key["stn"]= 100	--����ѧϰ
x002075_g_Key["lup"]= 2		--��������
x002075_g_Key["upy"]= 201	--ȷ������
x002075_g_Key["upn"]= 200	--��������
x002075_g_Key["des"]= 3		--��λ������


--**********************************
--�¼��������
--**********************************
function x002075_OnDefaultEvent( sceneId, selfId, targetId )
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta c� th� truy�n th� cho ng߽i m�t k� n�ng th�n k�, c�c ch� k� hi�u ���c t�o ra t� vi�c l�i d�ng k� n�ng n�y c� th� ghi l�i th�ng tin v� tr�, sau n�y ng߽i mu�n quay tr� l�i n�i ghi ch�p n�y, ch� c�n s� d�ng c�c ch� k� hi�u l� ���c" )
		AddText( sceneId, "  Ы ngh� ch� �, c�c ch� k� hi�u c�ng cao c�p th� s� l�n c� th� s� d�ng c�ng nhi�u" )
		if GetLevel( sceneId, selfId ) >= 30 then
			if lev <= 0 then
				AddNumText( sceneId, x002075_g_ScriptId, "H�c "..x002075_g_Ability["nam"], 6, x002075_g_Key["stu"] )
			else
				AddNumText( sceneId, x002075_g_ScriptId, "K� n�ng th�ng c�p", 6, x002075_g_Key["lup"] )
			end			
			AddNumText( sceneId, x002075_g_ScriptId, "Kh�ng l�m g� c�", -1, x002075_g_Key["nul"] )
		end
		AddNumText( sceneId, x002075_g_ScriptId, "Gi�i thi�u k� hi�u �nh v�", 11, x002075_g_Key["des"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002075_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	local exp = GetAbilityExp( sceneId, selfId, x002075_g_Ability["aid"] )	--������
	local ret, demandMoney, _, limitAbilityExp, limitAbilityExpShow, _, limitLevel
		= LuaFnGetAbilityLevelUpConfig( x002075_g_Ability["aid"], lev + 1 )

	--��λ������
	if key == x002075_g_Key["des"]	then

		x002075_MsgBox( sceneId, selfId, targetId, "#{function_help_020}" )

	--ѧϰ����
	elseif key == x002075_g_Key["stu"]	then
	
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end

		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["stu"], "  Ng߽i h�c k� n�ng n�y c�n ph�i ti�u #{_MONEY" .. demandMoney .. "}, c� ti�p t�c hay kh�ng?" )
	
	--ȷ��ѧϰ
	elseif key == x002075_g_Key["sty"] then
	
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end

		if lev > 0 then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ng߽i �� t�ng h�c k� n�ng n�y r�i!" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ti�n m�t trong ng߶i ng߽i kh�ng ��, kh�ng th� h�c k� n�ng n�y!" )
			return 0
		end

		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], 1 )
		x002075_SetMyPrescription( sceneId, selfId, 1 )
		x002075_MsgBox( sceneId, selfId, targetId, "  Ch�c m�ng ng߽i �� h�c ���c"..x002075_g_Ability["nam"]..", ch� c� �i�u n�u mu�n t�o ra c�c k� hi�u �nh v� c� s� l�n s� d�ng nhi�u h�n, m�i ng߽i n�ng c�p k� n�ng c�a m�nh" )

	--��������
	elseif key == x002075_g_Key["lup"] then
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end
		
		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "  ��ng c�p k� n�ng c�a ng߽i �� ��, kh�ng c�n n�ng c�p n�a" )
			return 0
		end
		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["lup"], "  Ng߽i n�ng c�p k� n�ng n�y c�n ph�i ti�u #{_EXCHG" .. demandMoney .. "}, c� ti�p t�c hay kh�ng?" )

	--ȷ������
	elseif key == x002075_g_Key["upy"] then
		if ret ~= 1 then
			return 0
		end
		
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end

		if lev < 1 then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ng߽i v�n ch�a h�c"..x002075_g_Ability["nam"]..", ��i sau khi h�c ���c k� n�ng c�p 1 l�i �n t�m ta n�ng c�p" )
			return 0
		end

		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "  ��ng c�p k� n�ng c�a ng߽i �� ��, kh�ng c�n n�ng c�p n�a" )
			return 0
		end

		if exp < limitAbilityExp then
			x002075_MsgBox( sceneId, selfId, targetId, "  C�n " .. limitAbilityExpShow .. "Nh�n v�o � th�nh th�o m�i n�ng c�p ���c l�n n�a" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "  C�n #{_MONEY" .. demandMoney .. "} m�i c� th� n�ng c�p ���c ti�p" )
			return 0
		end

		--�����˼���
		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], lev+1 )
		x002075_SetMyPrescription( sceneId, selfId, lev+1 )
		x002075_MsgBox( sceneId, selfId, targetId, "  K� n�ng c�a ng߽i �� ���c n�ng c�p th�nh c�ng, ch�c m�ng ng߽i c� th� t�o ra c�c ch� k� hi�u cao c�p h�n!" )

	else
		
		--�رս���		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	end

	return 1
end

--**********************************
--������Ӧ�ȼ����䷽
--**********************************
function x002075_SetMyPrescription( sceneId, selfId, lev )
	--ÿ���ȼ���Ӧ6���䷽����ɫ����ɫ����ɫ����ɫ����ɫ����ɫ
	for i=0, 5 do
		SetPrescription( sceneId, selfId, 510+(lev-1)*6+i, 1 )
	end
end

--**********************************
--ѯ���Ƿ�������
--**********************************
function x002075_OnAsk( sceneId, selfId, targetId, key, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x002075_g_ScriptId, "C�", -1, key*100+1 )
		AddNumText( sceneId, x002075_g_ScriptId, "Kh�ng", -1, key*100 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002075_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
