--��ͽ����

--�ű���
x806008_g_ScriptId = 806008

--��ͽ
x806008_g_Recruit					= {}
x806008_g_Recruit["Id"]		= 1003
x806008_g_Recruit["Name"]	= "а � ph�i b�i ta l�m s� ph�"

--��ʾ��Ϣ
x806008_g_msg					= {}
x806008_g_msg["tem"]	= "  Khi b�i s� c�n c� quan h� h�u h�o v�i � �, v� c�n 2 ng߶i l�p �i t�i t�m ta"
x806008_g_msg["ner"]	= "  Ch� c� 2 ng߶i �u t�i b�n ta m�i c� th� b�i s�"
x806008_g_msg["mlv"]	= "  ��ng c�p c�a s� ph� ph�i l�n h�n � � 10 c�p"
x806008_g_msg["slv"]	= "  а � c�p 10 �� b�t �u c� th� b�i s�"
x806008_g_msg["sib"]	= "  C� quan h� k�t b�i kh�ng th� b�i s�"
x806008_g_msg["mar"]	= "  C� quan h� phu th� kh�ng th� b�i s�"
x806008_g_msg["frp"]	= "  C�ng l� b�n h�u m�i c� th� b�i s�"
x806008_g_msg["msl"]	= "  Xin n�ng ��ng c�p s� ��c c�a c�c h�, ch� c� nh�n t�i c� ��ng c�p s� ��c l�n h�n 1 m�i ���c thu nh�n � �"
x806008_g_msg["rec_3"]	= "  Sau khi c��ng ch� ph� gi�i quan h� s� � 3 ng�y m�i c� th� b�i s� l�i"
x806008_g_msg["rec_2"]	= "  L��ng � � ���c thu nh�n �� qu� l�n"
x806008_g_msg["rec_1"]	= "  Ng߶i ch�i �� c� s� ph�, kh�ng th� b�i s�"
x806008_g_msg["ts"]	= " C� v�n � v� quan h� s� �, kh�ng th� k�t b�i"

--**********************************
--������ں��� ������ͽ
--**********************************
function x806008_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	
	if key == -1 then
		local	tId	= x806008_CheckAccept( sceneId, selfId, targetId )
		if tId == 0 then
			return
		end

		local	MasterName		= LuaFnGetName( sceneId, selfId )
		local	ApprenticeName= LuaFnGetName( sceneId, tId )

		--��Է�ȷ���Ƿ�Ը���ʦ
		BeginEvent( sceneId )
				AddText( sceneId, "  Sau khi b�i s�, gi�t qu�i c� th� ��t ���c10% kinh nghi�m gia th�nh. N�u c� s� ph� c�ng nh�p nh�m, ��t ���c20% kinh nghi�m gia th�nh" )
				AddText( sceneId, "  Sau khi b�i s�, � � s� ��t ���c \""..MasterName.."Danh x�ng \"а � c�a" )
				AddText( sceneId, "  Ng߽i c� th�c l�ng mu�n b�i"..MasterName.."L�m s� ph�?" )
				AddNumText( sceneId, x806008_g_ScriptId, "C�", 6, 1 )
				AddNumText( sceneId, x806008_g_ScriptId, "Kh�ng", 8, 0 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, tId, targetId )

		BeginEvent( sceneId )
			AddText( sceneId, "  Ch� ��i "..ApprenticeName.." h�i ��p" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		--BeginEvent( sceneId )
		--	AddText( sceneId, "���Ƿ�Ը���"..MasterName.."Ϊʦ��" )
		--EndEvent( sceneId )
		--DispatchMissionInfo( sceneId, tId, targetId, x806008_g_ScriptId, x806008_g_Recruit["Id"] )

	elseif key == 0 then
		x806008_OnCancel( sceneId, selfId, targetId )

	elseif key == 1 then
		x806008_OnConfirm( sceneId, selfId, targetId )
	end

end

--**********************************
--�о��¼�
--**********************************
function x806008_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806008_g_ScriptId, x806008_g_Recruit["Name"], 6, -1 )
end

--**********************************
--����������
--**********************************
function x806008_CheckAccept( sceneId, selfId, targetId )
	--(1)�����ֻ��ʦͽ������
	if LuaFnHasTeam( sceneId, selfId ) == 0 or LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["tem"] )
		return 0
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["ner"] )
		return 0
	end

	local tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 or LuaFnIsCanDoScriptLogic( sceneId, tId ) ~= 1 then
		return 0
	end

	--(2)ͽ�ܵȼ���10��
	if LuaFnGetLevel( sceneId, tId ) < 10 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["slv"] )
		return 0
	end

	--����ҵ�45�����ٰ�ʦ��
	if LuaFnGetLevel( sceneId, tId ) > 44 then
		x806008_MsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_7}" )
		return 0
	end


	--(3)ʦ���ȼ������ͽ��10��
	if LuaFnGetLevel( sceneId, selfId ) < ( LuaFnGetLevel( sceneId, tId ) + 10 ) then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["mlv"] )
		return 0
	end

	--(4)ʦ�µȼ�>0
	local MasterLevel = LuaFnGetmasterLevel( sceneId, selfId )
	if MasterLevel <= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["msl"] )
		return 0
	end

	--(5)�Ƿ��ǽ��
	if LuaFnIsBrother( sceneId, selfId, tId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["sib"] )
		return 0
	end

	--(6)�Ƿ��Ƿ���
	if LuaFnIsSpouses( sceneId, selfId, tId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["mar"] )
		return 0
	end

	--06.10.24�����µĲ߻��ĵ��Ѿ��Ѵ˲�������ȥ����
	--(7)�Ƿ�ǿ�н��ʦͽ��ϵ����3��
	--if LuaFnGetPrenticeBetrayTime( sceneId, selfId ) < (86400 * 3) then
	--	x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["rec_3"] )
	--	return 0
	--end

	--(8)������ǰͽ�����Ƿ��Ѿ������
	--��������յ���ͽ����
	local PrenticeNum = 2
	if MasterLevel == 1 then
		PrenticeNum = 2
	elseif MasterLevel == 2 then
		PrenticeNum = 3
	elseif MasterLevel == 3 then
		PrenticeNum = 5
	elseif MasterLevel == 4 then
		PrenticeNum = 8
	end
	if LuaFnGetPrenticeCount( sceneId, selfId ) >= PrenticeNum then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["rec_2"] )
		return 0
	end
	
	--(9)�Ƿ�������ʦ��
	if LuaFnHaveMaster( sceneId, tId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["rec_1"] )
		return 0
	end

	--(10)�����Ǻ���
	if LuaFnIsFriend( sceneId, selfId, tId ) ~= 1 or LuaFnIsFriend( sceneId, tId, selfId ) ~= 1 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["frp"] )
		return 0
	end
	
	--(11)�Ƿ��Ѿ���ʦͽ��ϵ��
	if LuaFnIsMaster( sceneId, selfId, tId ) ~= 0 or LuaFnIsMaster( sceneId, tId, selfId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["ts"] )
		return 0 
	end

	return tId
end

--**********************************
--����
--**********************************
function x806008_OnAccept( sceneId, selfId, targetId )
	x806008_OnConfirm( sceneId, selfId, targetId )
end

--**********************************
--�ύ
--**********************************
function x806008_OnSubmit( sceneId, selfId, targetId, tId )
	--ͽ������һ���ƺ�
	local	MasterName	= LuaFnGetName( sceneId, tId )
	local	SelfName		= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, MasterName.."�ĵ���" )
	DispatchAllTitle( sceneId, selfId )
	LuaFnAprentice( sceneId, selfId, tId )

	--ʦ��
	x806008_MsgBox( sceneId, tId, targetId, "   Ch�c m�ng thu nh�n � � th�nh c�ng" )
	Msg2Player( sceneId, tId, " Ch�c m�ng thu nh�n � � th�nh c�ng", MSG2PLAYER_PARA )
	Msg2Player( sceneId, tId, "S� ph� c�n n� l�c d�y b�o � nhi", MSG2PLAYER_PARA )
	str		= format( "Ch�c m�ng c�c h� �� nh�n %s l�m � �. Sau khi nh�n xong, gi�t qu�i, kinh nghi�m s� t�ng l�n 5%, v� ��t th�m c�ng hi�n kinh nghi�m c�a � �, nh�ng c�n ph�i �i l�y 1 l��ng tr� gi� thi�n �c nh�t �nh. C�ng � � nh�p nh�m, n�u ph� h�p v�i �i�u ki�n ��t tr� gi� thi�n �c. Nh� v�y tr� gi� thi�n �c s� t�ng 160% so v�i ban �u", SelfName )
	LuaFnSendSystemMail( sceneId, MasterName, str )
	--LuaFnSendNormalMail( sceneId, tId, MasterName, str )
	CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, tId, 66 )
	LuaFnSendSpecificImpactToUnit( sceneId, tId, tId, tId, 18, 1000 )

	--ͽ��
	x806008_MsgBox( sceneId, selfId, targetId, "   Ch�c m�ng b�i s� th�nh c�ng!" )
	Msg2Player( sceneId, selfId, " Ch�c m�ng b�i s� th�nh c�ng!", MSG2PLAYER_PARA )
	str		= format( "Ch�c m�ng ng߽i �� b�i%sl�m s� ph�. Sau khi nh�n xong, gi�t qu�i, kinh nghi�m s� t�ng l�n 10%. N�u c�ng s� ph� nh�p nh�m gi�t qu�i s� t�ng l�n 20%. Sau khi l�n c�p 40, nh�ng t�ng th߷ng kinh nghi�m s� b� x�a b�", MasterName )
	LuaFnSendSystemMail( sceneId, SelfName, str )
	--LuaFnSendNormalMail( sceneId, selfId, SelfName, str )
	CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 1000 )
end

--**********************************
--ͬ���ʦ
--**********************************
function x806008_OnConfirm( sceneId, selfId, targetId )
	--tId �Ǽ�����Ϊʦ�������
	local tId
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		return
	end
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		return
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		return
	end
	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )

	--ͽ��
	x806008_MsgBox( sceneId, selfId, targetId, "   Ng߽i �� �ng � b�i �i ph߽ng l�m s� ph�" )
	Msg2Player( sceneId, selfId, " Ng߽i �� �ng � b�i �i ph߽ng l�m s� ph�", MSG2PLAYER_PARA )
	--ʦ��
	x806008_MsgBox( sceneId, tId, targetId, "   Яi ph߽ng �� �ng � b�i ng߽i l�m s� ph�" )
	Msg2Player( sceneId, tId, " Яi ph߽ng �� �ng � b�i ng߽i l�m s� ph�", MSG2PLAYER_PARA )

	if x806008_CheckAccept( sceneId, tId, targetId ) > 0 then
		x806008_OnSubmit( sceneId, selfId, targetId, tId )
	end
end

--**********************************
--�ܾ���ʦ
--**********************************
function x806008_OnCancel( sceneId, selfId, targetId )
	--tId �Ǽ�����Ϊʦ�������
	local tId
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		return
	end
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		return
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		return
	end
	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )

	--ͽ��
	x806008_MsgBox( sceneId, selfId, targetId, "   Ng߽i �� c� tuy�t b�i �i ph߽ng l�m s� ph�" )
	Msg2Player( sceneId, selfId, " Ng߽i �� c� tuy�t b�i �i ph߽ng l�m s� ph�", MSG2PLAYER_PARA )
	--ʦ��
	x806008_MsgBox( sceneId, tId, targetId, "   Яi ph߽ng �� c� tuy�t b�i ng߽i l�m s� ph�" )
	Msg2Player( sceneId, tId, " Яi ph߽ng �� c� tuy�t b�i ng߽i l�m s� ph�", MSG2PLAYER_PARA )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806008_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x806008_MsgTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
