--��ʦ����

--�ű���
x806007_g_ScriptId	= 806007

--��ʦ
x806007_g_FinishAppr				= {}
x806007_g_FinishAppr["Id"]	= 1004
x806007_g_FinishAppr["Name"]= "Ta ��a � � xu�t s�"

--��ʾ��Ϣ
x806007_g_msg					= {}
x806007_g_msg["tem"]	= "  C�n 2 nh�m � � t�i t�m ta m�i c� th� xu�t s�"
x806007_g_msg["ner"]	= "  Ch� c� 2 ng߶i �u t�i b�n ta m�i c� th� xu�t s�"
x806007_g_msg["lev"]	= "  ��ng c�p � � ��t t�i c�p 40 m�i c� th� xu�t s�"
x806007_g_msg["dad"]	= "  Ng߽i v�n ch�a thu nh�n � �"
x806007_g_msg["itm"]	= "  Trong tay n�i c�a 2 s� � c�n c� �t nh�t 1 khoang tr�ng cho v�t ph�m b�nh th߶ng"

--��ʦ����
x806007_g_itm		= { 30008001, "�߶ng �u xu�t s�" }

--**********************************
--������ں���
--**********************************
function x806007_OnDefaultEvent( sceneId, selfId, targetId )
	local	tId	= x806007_CheckAccept( sceneId, selfId, targetId )
	if tId == 0 then
		return
	end

	x806007_OnAccept( sceneId, selfId, targetId, tId )
end

--**********************************
--�о��¼�
--**********************************
function x806007_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806007_g_ScriptId, x806007_g_FinishAppr["Name"] , 6, -1 )
end

--**********************************
--����������
--**********************************
function x806007_CheckAccept( sceneId, selfId, targetId )
	--(1)�����ֻ��ʦͽ������
	if LuaFnHasTeam( sceneId, selfId ) == 0 or LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["tem"] )
		return 0
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["ner"] )
		return 0
	end

	local	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 or LuaFnIsCanDoScriptLogic( sceneId, tId ) ~= 1 then
		return 0
	end

	--(2)ͽ���Ƿ�ﵽ40��
	if LuaFnGetLevel( sceneId, tId ) < 40 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["lev"] )
		return 0
	end

	--(3)�Ƿ���ʦ����ϵ
	if LuaFnIsPrentice( sceneId, selfId, tId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["dad"] )
		return 0
	end

	--(4)˫�������б�����һ���ռ�
	LuaFnBeginAddItem( sceneId )
	LuaFnAddItem( sceneId, x806007_g_itm[1], 1 )
	if LuaFnEndAddItem( sceneId, selfId ) ~= 1 or LuaFnEndAddItem( sceneId, tId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["itm"] )
		return 0
	end

	return tId
end

--**********************************
--����
--**********************************
function x806007_OnAccept( sceneId, selfId, targetId, tId )
	--ʦ��, ʦ����ͽ�ܵ��Ѻö�
	local	fp_st	= LuaFnGetFriendPoint( sceneId, selfId, tId )
	--ͽ�ܣ�ͽ�ܶ�ʦ�����Ѻö�
	local	fp_ts	= LuaFnGetFriendPoint( sceneId, tId, selfId )
	local	lv_t	= LuaFnGetLevel( sceneId, tId )

	--(1)���ͽ�ܵȼ���[40��45]������˫���Ѻö�>=300
	if lv_t >= 40 and lv_t <= 45 and fp_st >= 300 and fp_ts >=300 then
		--LuaFnAddItemListToHuman( sceneId, selfId )
		--LuaFnAddItemListToHuman( sceneId, tId )

		--ʦ�µ����
		--��ʦ������ʦ�£�X=0-1000000�� N=M��MIN(X=500, ʦ����ͽ�ܵ��Ѻö�*T)
		--local	_M	= 10		--����
		--local	_T	= 5			--��Ȩָ��
		--local	MoralPoint	--ʦ�µ���
		--if fp_st * _T < 500 then
		--	MoralPoint= _M + fp_st * _T
		--else
		--	MoralPoint= _M + 500
		--end

		--ʦ��
		x806007_MsgBox( sceneId, selfId, targetId, "  Xu�t s� th�nh c�ng!" )
		Msg2Player( sceneId, selfId, "Xu�t s� th�nh c�ng!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "C�c h� �� ��t ���c"..x806007_g_itm[2].."M�t", MSG2PLAYER_PARA )
		--Msg2Player( sceneId, selfId, "�õ�ʦ�µ���"..MoralPoint.."��", MSG2PLAYER_PARA )

		--ͽ��
		x806007_MsgBox( sceneId, tId, targetId, "  Xu�t s� th�nh c�ng!" )
		Msg2Player( sceneId, tId, "Xu�t s� th�nh c�ng!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, tId, "C�c h� �� ��t ���c"..x806007_g_itm[2].."M�t", MSG2PLAYER_PARA )

		--�ۻ�ʦ�µ���
		--MoralPoint	= MoralPoint + LuaFnGetMasterMoralPoint( sceneId, selfId )
		--if MoralPoint > 1000000 then
		--	MoralPoint= 1000000
		--end
		--LuaFnSetMasterMoralPoint( sceneId, selfId, MoralPoint )
		
		local	title
		local MasterName	= LuaFnGetName( sceneId, selfId )
		--ʦ���ƺ�
		--title	= x806007_GetTitle( MoralPoint )
		--if title ~= "" then
		--	AwardShiTuTitle( sceneId, selfId, title )
		--	DispatchAllTitle( sceneId, selfId )
		--	Msg2Player( sceneId, selfId, "��óƺţ�"..title.."��", MSG2PLAYER_PARA )
		--end

		--ͽ�ܳƺ�
		title	= MasterName.."а �"
		AwardShiTuTitle( sceneId, tId, title )
		DispatchAllTitle( sceneId, tId )
		Msg2Player( sceneId, tId, "Danh x�ng ��t ���c: "..title..".", MSG2PLAYER_PARA )

	--(2)���ͽ�ܵȼ�����45������˫���Ѻö�С��300
	else
		local	msg	= "Do � h�u h�o ch�a t�i 300 ho�c ��ng c�p � � l�n h�n c�p 45, n�n kh�ng c� t�ng th߷ng"
		--ʦ��
		x806007_MsgBox( sceneId, selfId, targetId, "  Xu�t s� th�nh c�ng!"..msg )
		Msg2Player( sceneId, selfId, "Xu�t s� th�nh c�ng!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, msg, MSG2PLAYER_PARA )
	
		--ͽ��
		x806007_MsgBox( sceneId, tId, targetId, "  Xu�t s� th�nh c�ng!"..msg )
		Msg2Player( sceneId, tId, "Xu�t s� th�nh c�ng!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, tId, msg, MSG2PLAYER_PARA )
	end

	--ȡ��ʦͽ��ϵ
	LuaFnFinishAprentice( sceneId, tId, selfId )
end

--**********************************
--����ʦ�µ㣬��ȡ�ƺ�
--**********************************
function x806007_GetTitle( MoralPoint )
	--local	mp	= MoralPoint
	--if mp >= 100000 then
	--	return "����������"
	--elseif mp >= 50000 then
	--	return "���˲���"
	--elseif mp >= 10000 then
	--	return "һ����ʦ"
	--elseif mp >= 5000 then
	--	return "������ʦ"
	--elseif mp >= 2000 then
	--	return "Ϊ��ʦ��"
	--elseif mp >= 100 then
	--	return "��Ϊ��ʦ"
	--end

	return ""
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806007_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
