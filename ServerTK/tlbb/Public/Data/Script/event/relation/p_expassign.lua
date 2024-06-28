--�������

--�ű���
x806018_g_ScriptId					= 806018

--ÿ������ðﹱ�һ��ľ������Ϊ200*600=12���
x806018_g_AssignExpDateMax	= 120000

--**********************************
--������ں���
--**********************************
function x806018_OnDefaultEvent( sceneId, selfId, targetId )

	local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )
	if nMlevel < 1 or nMlevel > 4 then
		x806018_MsgBox( sceneId, selfId, targetId, "  ��ng c�p s� ��c kh�ng ��" )
		return
	end
	if LuaGetPrenticeSupplyExp( sceneId, selfId ) == 0 then
		x806018_MsgBox( sceneId, selfId, targetId, "  Kh�ng c� kinh nghi�m c� th� l�nh" )
		return
	end
	
	--��ȡ����
	local	nOldTime		= GetMissionData( sceneId, selfId, MD_PEXP_GP_TIME )
	local	nOldValue		= GetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE )
	local	nNewTime		= GetDayTime()
	if nOldTime == nNewTime and nOldValue >= x806018_g_AssignExpDateMax then
		x806018_MsgBox( sceneId, selfId, targetId, "  C�c h� h�m nay d�ng � c�ng hi�n �i kinh nghi�m �� m�c c�c h�n, ng�y mai h�y �n nh�n l�nh ti�p" )
		return
	end
	
	--�򿪿ͻ��˰��ɹ��׶ȶһ����鴰��
	LuaFnExpAssign( sceneId, selfId, 2 )
	--�رմ���
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 ) 

end

--**********************************
--�о��¼�
--**********************************
function x806018_OnEnumerate( sceneId, selfId, targetId )

	--AddNumText( sceneId, x806018_g_ScriptId, "Ta mu�n d�ng � c�ng hi�n bang h�i nh�n l�nh kinh nghi�m", 6, -1 )

end

--**********************************
--C++�ص��ӿڣ�
--��ṱ�׶���ȡʦ������
--**********************************
function x806018_CallBackExpAssignByGuildPoint( sceneId, selfId, nExp )

	--�Ƿ����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	local	nAssignExp	= nExp
	local	nMlevel			= LuaFnGetmasterLevel( sceneId, selfId )
	if nMlevel < 1 or nMlevel > 4 then
		x806018_MsgTip( sceneId, selfId, "Sai ��ng c�p s� ��c" )
		return 0
	end
	if nAssignExp < 0 or nAssignExp > LuaGetPrenticeSupplyExp( sceneId, selfId ) then
		x806018_MsgTip( sceneId, selfId, "Nh�n l�nh g�a tr� kinh nghi�m sai" )
		return 0
	end
	if IsLocked( sceneId, selfId, 0 ) == 1 then
		x806018_MsgTip( sceneId, selfId, "е c�ng hi�n bang h�i b� kh�a, xin l�t sau hay th� l�i" )
		return 0
	end
	
	--��ȡ����
	local	nOldTime		= GetMissionData( sceneId, selfId, MD_PEXP_GP_TIME )
	local	nOldValue		= GetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE )
	local	nNewTime		= GetDayTime()
	if nOldTime == nNewTime and nOldValue >= x806018_g_AssignExpDateMax then
		x806018_MsgTip( sceneId, selfId, "H�m nay �� �i �n m�c t�i �a" )
		return 0
	end
	if nOldTime ~= nNewTime then
		nOldValue				= 0
	end
	if nAssignExp + nOldValue > x806018_g_AssignExpDateMax then
		nAssignExp			= x806018_g_AssignExpDateMax - nOldValue
		x806018_MsgTip( sceneId, selfId, "M�i ng�y �i t�i �a"..x806018_g_AssignExpDateMax.."�i�m kinh nghi�m, c�c h� ch� c�n s� d�"..nAssignExp.."�i�m" )
	end
	
	local	nBasePoint	= 0
	if nMlevel == 1 then
		nBasePoint			= 250
	elseif nMlevel == 2 then
		nBasePoint			= 300
	elseif nMlevel == 3 then
		nBasePoint			= 400
	elseif nMlevel == 4 then
		nBasePoint			= 600
	end
	local	nGPValue		= ceil( nAssignExp / nBasePoint )
	if nGPValue > CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT ) then
		x806018_MsgTip( sceneId, selfId, "е c�ng hi�n bang h�i kh�ng ��" )
		return 0
	end
	--���ٰ��ɹ��׶�
	CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -nGPValue )
	--����ͽ�ܹ��׵ľ���
	LuaAddPrenticeProExp( sceneId, selfId, 0, -nAssignExp )
	--���Ӿ���
	AddExp( sceneId, selfId, nAssignExp )
	--����ͳ��
	LuaFnAuditMasterExp( sceneId, selfId, nGPValue, nAssignExp, 2 )

	--��ȡ��¼
	if nOldTime ~= nNewTime then
		SetMissionData( sceneId, selfId, MD_PEXP_GP_TIME, nNewTime )
		SetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE, nAssignExp )
	else
		SetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE, nOldValue + nAssignExp )
	end

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806018_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x806018_MsgTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
