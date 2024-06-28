--����NPC
--���ɸ�
--��ͨ

--�ű���
x002087_g_ScriptId	= 002087

--�����
x002087_g_MoneyId = MF_BUCHANG_MONEY
x002087_g_StoneId = MF_BUCHANG_STONE
x002087_g_EquipId = MF_BUCHANG_EQUIP

--��������װ���б�
x002087_g_equipInfo = {}
x002087_g_equipInfo[0]	= {MP_XINGSU,10433240,10440540,10441540,10442540,10443540,10444540,10445540,10450054,10451054,10452054,10453054}
x002087_g_equipInfo[1]	= {MP_XIAOYAO,10434140,10440740,10441740,10442740,10443740,10444740,10445740,10450074,10451074,10452074,10453074}
x002087_g_equipInfo[2]	= {MP_SHAOLIN,10431040,10440040,10441040,10442040,10443040,10444040,10445040,10450004,10451004,10452004,10453004}
x002087_g_equipInfo[3]	= {MP_TIANSHAN,10435040,10440640,10441640,10442640,10443640,10444640,10445640,10450064,10451064,10452064,10453064}
x002087_g_equipInfo[4]	= {MP_DALI,10434240,10440840,10441840,10442840,10443840,10444840,10445840,10450084,10451084,10452084,10453084}
x002087_g_equipInfo[5]	= {MP_EMEI,10433040,10440340,10441340,10442340,10443340,10444340,10445340,10450034,10451034,10452034,10453034}
x002087_g_equipInfo[6]	= {MP_WUDANG,10432140,10440440,10441440,10442440,10443440,10444440,10445440,10450044,10451044,10452044,10453044}
x002087_g_equipInfo[7]	= {MP_MINGJIAO,10430140,10440140,10441140,10442140,10443140,10444140,10445140,10450014,10451014,10452014,10453014}
x002087_g_equipInfo[8]	= {MP_GAIBANG,10431240,10440240,10441240,10442240,10443240,10444240,10445240,10450024,10451024,10452024,10453024}

--�¼��������
--**********************************
function x002087_OnDefaultEvent( sceneId, selfId, targetId )
	--����Ӧ���ж��Ƿ�Ӧ�ø��貹��
	--��صĴ���
	--��ʾ�����б�
	--15�ſ�ʼ��21�Ž���
	local day = GetDayTime()
	if day >= 7019 then
		x002087_MsgBox( sceneId, selfId, targetId, "Th�i gian nhi�m v� �� qua" )
		return
	end
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin c�m t� m�i ng߶i �� �ng h� Thi�n Long B�t B�, � th� nghi�m h� th�ng tr� ch�i m�i, c�n ph�i x�a t� li�u l�u tr�. V� c�ng th� l�i v� b�t ti�n n�y. Ta c� ch�t qu� m�n cho m�i ng߶i, xin ��ng ch� c߶i" )
		AddNumText( sceneId, x002087_g_ScriptId, "N�ng ��ng c�p t�i 10", 6, 0 )
		AddNumText( sceneId, x002087_g_ScriptId, "N�ng ��ng c�p t�i 40", 6, 1 )
		AddNumText( sceneId, x002087_g_ScriptId, "Cho ta 1 b� trang b� c�p 40", 6, 2 )
		AddNumText( sceneId, x002087_g_ScriptId, "Ta �� 40 r�i, h�y cho ta B�o Th�ch", 6, 3 )
		AddNumText( sceneId, x002087_g_ScriptId, "Ta �� 40 r�i, h�y cho ta ng�n l��ng", 6, 4 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--�¼��������
--**********************************
function x002087_OnStoneEvent( sceneId, selfId, targetId )
	--����Ӧ���ж��Ƿ�Ӧ�ø��貹��
	--��صĴ���
	--��ʾ�����б�
	BeginEvent( sceneId )
		AddText( sceneId, "  Ng߽i mu�n l�nh B�o Th�ch g�? Ch� c� th� nh�n 1 trong 2 lo�i B�o Th�ch d߾i ��y" )
		AddNumText( sceneId, x002087_g_ScriptId, "Mi�u Nh�n Th�ch", 6, 5 )
		AddNumText( sceneId, x002087_g_ScriptId, "H� Nh�n Th�ch", 6, 6 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002087_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ȡ���б��
	local	arg	= GetNumText()
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 0 then		--�����10��ѡ��
	--�ж��Ƿ����10��
		if GetLevel( sceneId, selfId ) >= 10 then --���ڵ���10��
			x002087_MsgBox( sceneId, selfId, targetId, "  ��ng c�p c�a c�c h� �� l�n t߽ng �߽ng v�i c�p 10, kh�ng th� th�ng c�p ��ng c�p c�a c�c h�" )
			return
		else --���õȼ�Ϊ10��
			LuaFnHumanLevelUp(sceneId, selfId,10,0)
			x002087_MsgBox( sceneId, selfId, targetId, "Ch�c m�ng c�c h� th�ng c�p t�i 10, c�c h� v�t v� qu�" )
			return
		end
	elseif arg == 1 then--�����40��ѡ��
		--�ж��Ƿ����40��
		if GetLevel( sceneId, selfId ) >= 40 then --���ڵ���40��
			x002087_MsgBox( sceneId, selfId, targetId, "  ��ng c�p c�a c�c h� �� l�n t߽ng �߽ng v�i c�p 40, kh�ng th� th�ng c�p ��ng c�p c�a c�c h� n�a" )
			return
		elseif id < 0 or id >= 9 then --�ж��Ƿ��������
				x002087_MsgBox( sceneId, selfId, targetId, "  Xin gia nh�p m�n ph�i tr߾c, c� th� th�ng ��ng c�p m�nh t�i 10 tr߾c r�i m�i gia nh�p m�n ph�i" )
				return
		else
			LuaFnHumanLevelUp(sceneId, selfId,40,40)
			x002087_MsgBox( sceneId, selfId, targetId, "Ch�c m�ng c�c h� th�ng c�p t�i 40, c�c h� v�t v� qu�" )
			return
		end
	elseif arg == 2 then--���Ҫװ��
		--�ж��Ƿ�С��40��
		if GetMissionFlag(sceneId,selfId,x002087_g_EquipId)==1 then
			x002087_MsgBox( sceneId, selfId, targetId, " L�o gi� ta v�n ch�a h� � ��u, ch�ng ph�i ng߽i �� t�ng l�nh r�i sao?" )
			return			
		elseif GetLevel( sceneId, selfId ) < 40 then --С��40��
			x002087_MsgBox( sceneId, selfId, targetId, " Ch� sau khi ��t t�i c�p 40, m�i ���c l�nh trang b� b� sung" )
			return
		elseif id < 0 or id >= 9 then --�ж��Ƿ��������
				x002087_MsgBox( sceneId, selfId, targetId, "  Xin gia nh�p m�n ph�i tr߾c, c� th� th�ng ��ng c�p m�nh t�i 10 tr߾c r�i m�i gia nh�p m�n ph�i" )
				return
		else --�Ƿ���13���ո�
			if LuaFnGetPropertyBagSpace(sceneId, selfId) < 11  then --û�пո�
				x002087_MsgBox( sceneId, selfId, targetId, "	1 b� trang b� c�p 40 t�ng c�ng g�m 11 m�n, kh�ng gian tay n�i c�a c�c h� kh�ng �� cho 11, d�n d�p xong, h�y t�i t�m ta" )
				return
			else 
				--�������ɸ����װ��
				x002087_GiveEquip( sceneId, selfId, targetId, id)
				x002087_MsgBox( sceneId, selfId, targetId, "Cho c�c h� trang b� n�y, c�c h� v�n ch�a h�i l�ng?" )
				SetMissionFlag( sceneId, selfId, x002087_g_EquipId, 1 )
				return
			end
		end
	elseif arg == 3 then--���Ҫ��ʯ
		if GetMissionFlag(sceneId,selfId,x002087_g_StoneId)==1 then
			x002087_MsgBox( sceneId, selfId, targetId, " L�o gi� ta v�n ch�a h� � ��u, ch�ng ph�i ng߽i �� t�ng l�nh r�i sao?" )
			return			
		--�ж��Ƿ�С��40��
		elseif GetLevel( sceneId, selfId ) < 40 then --С��40��
			x002087_MsgBox( sceneId, selfId, targetId, " Ch� sau khi ��t t�i c�p 40, m�i ���c l�nh B�o Th�ch b� sung" )
			return
		else --������ʯ�б�
			x002087_OnStoneEvent( sceneId, selfId, targetId )
			return
		end
	elseif arg == 4 then--���ҪǮ
		--�ж��Ƿ�С��40��
		if GetMissionFlag(sceneId,selfId,x002087_g_MoneyId)==1 then
			x002087_MsgBox( sceneId, selfId, targetId, " L�o gi� ta v�n ch�a h� � ��u, ch�ng ph�i ng߽i �� t�ng l�nh r�i sao?" )
			return	
		elseif GetLevel( sceneId, selfId ) < 40 then --С��40��
			x002087_MsgBox( sceneId, selfId, targetId, " Ch� sau khi ��t t�i c�p 40, m�i ���c l�nh �ng v�ng b� sung" )
			return
		else --������ʯ�б�
			if LuaFnAddMoney(sceneId, selfId,1000000) == -1  then --��Ǯʧ�ܸ��������
				--��Ǯʧ��
				return
			else
				x002087_MsgBox( sceneId, selfId, targetId, "C�c h� th�t tham qu�, l�y c� ti�n d��ng l�o c�a ta" )
				SetMissionFlag( sceneId, selfId, x002087_g_MoneyId, 1 )
				return
			end
		end		
	elseif arg == 5 then--���Ҫè��ʯ
		--�ж��Ƿ��Ѿ��ù�è��ʯ
		if GetLevel( sceneId, selfId ) < 40 then --С��40��
			x002087_MsgBox( sceneId, selfId, targetId, " Ch� sau khi ��t t�i c�p 40, m�i ���c l�nh �ng v�ng b� sung" )
			return
		else --�����è��ʯ
			if LuaFnGetMaterialBagSpace(sceneId, selfId) < 20  then --û�пո�
				x002087_MsgBox( sceneId, selfId, targetId, " B�o Th�ch ���c th߷ng g�m 20 lo�i, kh�ng gian tay n�i c�a c�c h� kh�ng ��, d�n d�p xong, h�y t�i t�m ta" )
				return
			else 		
				--�����20��è��ʯ
				x002087_GiveStone( sceneId, selfId, targetId, 0)
				x002087_MsgBox( sceneId, selfId, targetId, "20 vi�n B�o Th�ch, s߾ng ch�a" )
				SetMissionFlag( sceneId, selfId, x002087_g_StoneId, 1 )
				return
			end
		end
	elseif arg == 6 then--���Ҫ����ʯ
		--�ж��Ƿ��Ѿ��ù�����ʯ
		if GetLevel( sceneId, selfId ) < 40 then --С��40��
			x002087_MsgBox( sceneId, selfId, targetId, " Ch� sau khi ��t t�i c�p 40, m�i ���c l�nh �ng v�ng b� sung" )
			return
		else --����һ���ʯ
			if LuaFnGetMaterialBagSpace(sceneId, selfId) < 20  then --û�пո�
				x002087_MsgBox( sceneId, selfId, targetId, " B�o Th�ch ���c th߷ng g�m 20 lo�i, kh�ng gian tay n�i c�a c�c h� kh�ng ��, d�n d�p xong, h�y t�i t�m ta" )
				return
			else
				--�����20������ʯ
				x002087_GiveStone( sceneId, selfId, targetId, 1)
				x002087_MsgBox( sceneId, selfId, targetId, "20 vi�n B�o Th�ch, s߾ng ch�a" )
				SetMissionFlag( sceneId, selfId, x002087_g_StoneId, 1 )
				return
			end
		end		
		return
	end		
end		
		
		
--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x002087_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��װ��
--**********************************
--function x002087_GiveEquip( sceneId, selfId,menpai )
function x002087_GiveEquip( sceneId, selfId, targetId, menpai )

	--ȡ��װ����Ϣ
	local mp =  x002087_GetEquipInfo( menpai )
	if mp ~= nil then
		for i=2,12 do
			BeginAddItem(sceneId)
				AddItem( sceneId,mp[i],1)	
			local ret = EndAddItem(sceneId,selfId)
			if ret > 0 then
				AddItemListToHuman(sceneId,selfId)
				--Msg2Player(sceneId, selfId,"#Y������񣺵�һ������",MSG2PLAYER_PARA )
			end
		end
	end
end

--**********************************
--����ʯ,0 è��ʯ��1 ����ʯ
--**********************************
--function x002087_GiveStone( sceneId, selfId,kind )
function x002087_GiveStone( sceneId, selfId, targetId, kind )
	--��è��ʯ
	if kind == 0 then
		for i=1,20 do
			BeginAddItem(sceneId)
				AddItem( sceneId,50101001,1)	
			local ret = EndAddItem(sceneId,selfId)
			if ret > 0 then
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
	--������ʯ
	if kind == 1 then
		for i=1,20 do
			BeginAddItem(sceneId)
				AddItem( sceneId,50101002,1)	
			local ret = EndAddItem(sceneId,selfId)
			if ret > 0 then
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
end

--**********************************
--ȡ����������װ����Ϣ
--**********************************
function x002087_GetEquipInfo( mpID )
	local mp
	local i = 0
	for i, mp in x002087_g_equipInfo do
		if mp[1] == mpID then
			return mp
		end
	end
	return nil
end
