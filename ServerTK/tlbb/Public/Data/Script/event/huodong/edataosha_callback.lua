--����ɱ
--�ص��ű�
--line 554
--�ű���
x808003_g_ScriptId			= 808003
x808003_g_rate_1st=100--cfg tuy y
x808003_g_rate_2nd=100--cfg tuy y
x808003_g_rate_3rd=100--cfg tuy y
x808003_g_TickTime			= 60		--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x808003_g_NotifyTime		= 29		--����ʱ�䳤�ȣ���λ��ʱ�ӵ�����
x808003_g_JoinTime			= 3			--����ʱ�䳤�ȣ���λ��ʱ�ӵ�����
x808003_g_AttackTime		= 10		--����ʱ�䳤�ȣ���λ��ʱ�ӵ�����
x808003_g_IdleTime			= 2			--ÿ��֮��Ŀ���ʱ�䳤�ȣ���λ��ʱ�ӵ�����
x808003_g_RoundMax			= 5			--���غ���������Ա64�˵�������
x808003_g_TParamNum			= 8			--����������
x808003_g_CareResultMax	= 5			--״Ԫ����ʱ�����ĵ��������
x808003_g_thuong	=
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},

--�����������
x808003_g_ActParam	=
{
	["tim"]	= 0,	--ʱ���ܵ���
	["pha"]	= 1,	--��׶Σ��غ���*10(1-6�غ�) + �غϱ��(1��������2����ʼ��0������)
	["tab"]	= 2,	--��ID
	["unt"]	= 3,	--����ִ��ʱ�����
	["minl"]= 4,	--��������
	["maxl"]= 5,	--��������
}

--��Ϣ��ʾ
x808003_g_Msg				=
{
	["n_pre"]	= "#PHo�t �ng b�o danh ��i h�i t� v� nh�m #Y��ng c�p %d#P#Y l�n th� %d#P s� b�t �u sau #Y%d ph�t#P n�a, xin c�c v� chu�n b�.",
	["n_bgn"]	= "#PHo�t �ng b�o danh ��i h�i t� v� nh�m #Y��ng c�p %d#P#Y l�n th� %d#P �� b�t �u, Xin c�c v� nhanh ch�ng b�o danh.",
	["n_end"]	= "#PHo�t �ng ��i h�i t� v� nh�m #Y��ng c�p %d#P �n ��y k�t th�c!",
	["n_bny"]	= "#PQu�n Qu�n ��i h�i t� v� nh�m #Y��ng c�p %d#P �� c� , ph�n chia th�nh: #W",
}

--������Ϣ
--�ID�������ڡ�ActivityNotice������
x808003_g_Act				=
{
	--��Ҫ���ù���
	[1]	= { id=22, minLev=40, maxLev=49 },	--����40������
	[2]	= { id=23, minLev=40, maxLev=49 },	--����40������
	--����Ҫ���ù���
	[3]	= { id=30, minLev=50, maxLev=59 },
	[4]	= { id=31, minLev=50, maxLev=59 },
	[5]	= { id=32, minLev=60, maxLev=69 },
	[6]	= { id=33, minLev=60, maxLev=69 },
	[7]	= { id=34, minLev=70, maxLev=79 },
	[8]	= { id=35, minLev=70, maxLev=79 },
	[9]	= { id=44, minLev=80, maxLev=89 },
	[10]= { id=45, minLev=80, maxLev=89 },
	[11]= { id=46, minLev=90, maxLev=99 },
	[12]= { id=47, minLev=90, maxLev=99 },
	[13]= { id=124, minLev=100, maxLev=109 },
	[14]= { id=125, minLev=100, maxLev=109 },
	[15]= { id=126, minLev=110, maxLev=119 },
	[16]= { id=127, minLev=110, maxLev=119 },
}

--**********************************
--�ű���ں���
--C++�ص�����
--**********************************
function x808003_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--һ�����Ӧһ�����
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--û���ҵ�������Ļ
		return
	end

	--����˵��������ID���ID��ʱ���������룩
	StartOneActivity( sceneId, ActInfo.id, floor(x808003_g_TickTime*1000), iNoticeType )
	--ע�����а������ע���ڻ����ʱ�ͷ�
	tabId	= HitParadeRegisterTab( sceneId )

	--�������
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["tim"], 0 )			--����ʱ���ܵ���
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["pha"], 0 )			--�����׶�
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["tab"], tabId )	--�����ID
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["minl"], ActInfo.minLev )
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["maxl"], ActInfo.maxLev )

	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_OnDefaultEvent( sceneId=%d, actId=%d, iNoticeType=%d ), tabId=%d, minLev=%d, maxLev=%d",
		sceneId, actId, iNoticeType, tabId, ActInfo.minLev, ActInfo.maxLev )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--��������
--C++�ص�����
--**********************************
function x808003_OnTimer( sceneId, actId, uTime )

	--һ�����Ӧһ�����
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--û���ҵ�������Ļ
		return
	end

	local	m_actId	= actId

	--��ID
	tabId	= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["tab"] )
	if tabId < 0 then
		return
	end

	--�������
	tim		= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["tim"] )
	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["tim"], tim+1 )	--����ʱ���ܵ���

	--�����׶Σ���ʱ�仮�֣�
	--7��00����
	--��һ�λ����7��30�����ʼ7��35�������7��45��
	--�ڶ��ο�ʼ����7��50�����ʼ7��55�������8��05��
	--�Ժ�ÿ�λ��������ʱ��5���ӣ�����5���ӣ��ʱ��10���ӡ�
	local	tim_0		= x808003_g_NotifyTime	--����ʱ��㣬����һ�غϵı���ʱ��
	local	tim_pnt	=
	{
		["jon"]	= 0,									--���غϵĵ�0��ʱ��㿪ʼ����
		["bgn"]	= x808003_g_JoinTime,	--���غϵĵ�5��ʱ��㿪ʼ����
		["end"]	= x808003_g_JoinTime + x808003_g_AttackTime,											--���غϵĵ�15��ʱ������
		["idl"]	= x808003_g_JoinTime + x808003_g_AttackTime + x808003_g_IdleTime,	--��������20��ʱ��㿪ʼ��һ�غ�
	}
	local	tim_all	= tim_pnt["idl"]
	pha			= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"] )
	tmp_mul	= floor( (tim-tim_0) / tim_all )
	tmp_mod	=	(tim-tim_0) - tmp_mul * tim_all
	local	str
	
	if tmp_mul > x808003_g_RoundMax then
		x808003_OnActivityEnd( sceneId, m_actId, tabId )
		--ȫ�򹫸�
		str		= format( x808003_g_Msg["n_end"], ActInfo.minLev )
		x808003_MyGlobalNews( sceneId, str )
		return
	end
	
	--����ִ��ʱ�����
	if tmp_mod < 0 or tmp_mod >= tim_all then
		SetActivityParam( sceneId, m_actId, x808003_g_ActParam["unt"], 0 )
	else
		SetActivityParam( sceneId, m_actId, x808003_g_ActParam["unt"], tmp_mod )
	end

	--�����
	if pha == 0 then	--��һ�غ�
	
		--�Ԥ��
		if tim == floor(tim_0-x808003_g_IdleTime) then
			str	= format( x808003_g_Msg["n_pre"], ActInfo.minLev, 1, x808003_g_IdleTime )
			--ȫ�򹫸�
			x808003_MyGlobalNews( sceneId, str )
		end

		--��ʼ����
		if tim >= tim_0 then
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+1 )
			str	= format( x808003_g_Msg["n_bgn"], ActInfo.minLev, (tmp_mul+1) )
			--ȫ�򹫸�
			x808003_MyGlobalNews( sceneId, str )
			--����ʼ��
			for i = 0, x808003_g_TParamNum do
				HitParadeSetTabParam( sceneId, tabId, i, 0 )
			end
		end

	else
		if tmp_mod == tim_pnt["jon"] then					--������
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+1 )
			
			if tmp_mul >= 1 then
				--�����������ʤ������������1ʱ�ھ�����
				if x808003_OnActivitySort( sceneId, m_actId, tabId ) > 1 then
					--�������ֱ���
					str	= format( x808003_g_Msg["n_bgn"], ActInfo.minLev, (tmp_mul+1) )
					--ȫ�򹫸�
					x808003_MyGlobalNews( sceneId, str )
					--����ʼ��
					for i = 0, x808003_g_TParamNum do
						HitParadeSetTabParam( sceneId, tabId, i, 0 )
					end
				end
			end

		elseif tmp_mod == tim_pnt["bgn"] then			--������
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+2 )
		elseif tmp_mod == tim_pnt["end"] then			--������
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10 )
		elseif tmp_mod == (tim_pnt["end"]+2) then	--������
			str		= format( x808003_g_Msg["n_pre"], ActInfo.minLev, (tmp_mul+2), (x808003_g_IdleTime-2) )
			--ȫ�򹫸�
			x808003_MyGlobalNews( sceneId, str )
		end

	end

end

--**********************************
--�����������ʤ������������1ʱ�ھ�����
--**********************************
function x808003_OnActivitySort( sceneId, actId, tabId )

	--һ�����Ӧһ�����
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--û���ҵ�������Ļ
		return 0
	end

	local	m_actId	= actId

	--�������м�ֵ���������򣨼�ֵԽ������Խ��ǰ��
	HitParadeSort( sceneId, tabId )
	--��ȡ��ǰ��������
	local	jon_num	= HitParadeGetTabInfo( sceneId, tabId )
	if jon_num == nil then
		return 0
	else
		--Add Log
		LogInfo	= format( "[TAOSHA]: HitParadeGetTabInfo( sceneId=%d, tabId=%d ), JoinNum=%d",
			sceneId, tabId, jon_num )
		MissionLog( sceneId, LogInfo )
		--�����ǰ5�����㹻
		if jon_num > x808003_g_CareResultMax then
			jon_num		= x808003_g_CareResultMax
		end
	end
	--��ȡ�����ɼ�
	local	no1_num	= 0
	local	guid		= {}
	local	key			= {}
	for i = 0, jon_num do
		guid[i], key[i]	= HitParadeGetPlyInfo( sceneId, tabId, i )
		--Add Log
		if guid[i] ~= nil and key[i] ~= nil then
			LogInfo	= format( "[TAOSHA]: HitParadeGetPlyInfo( sceneId=%d, tabId=%d, i=%d ), GUID=%0X, key=%d",
				sceneId, tabId, i, guid[i], key[i] )
		else
			LogInfo	= format( "[TAOSHA]: HitParadeGetPlyInfo( sceneId=%d, tabId=%d, i=%d ), GUID=NIL, key=NIL",
				sceneId, tabId, i )
		end
		MissionLog( sceneId, LogInfo )
	end

	--��ȡ�ھ�������������ǿ��
	for i = 0, jon_num do
		if guid[i] == nil then
			break
		end
		if key[i] ~= nil and key[i] == key[0] and mod( key[i], 3 ) > 0 then
			no1_num		= no1_num + 1
		else
			break
		end
	end

	--��ʱδ��ѡ����ǿ������������һ��
	if no1_num > 4 then
		return no1_num
	end

	--�ھ�ʤ���������
	local	name1, name2
	if no1_num <= 1 then
		--��������
		if key[0] ~= nil and mod( key[0], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[0], 1, tabId )
		else
			guid[0]	= nil
		end
		if key[1] ~= nil and mod( key[1], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[1], 2, tabId )
		else
			guid[1]	= nil
		end
		if key[2] ~= nil and mod( key[2], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[2], 3, tabId )
		else
			guid[2]	= nil
		end
		--�����
		x808003_OnActivityEnd( sceneId, m_actId, tabId )
		--ȫ�򹫸�
		name1	= x808003_GetPlyName( sceneId, guid[0] )
		name2	= x808003_GetPlyName( sceneId, guid[1] )
		str		= format( x808003_g_Msg["n_bny"], ActInfo.minLev )
		x808003_MyGlobalNews( sceneId, str.."Tr�ng Nguy�n "..name1..", B�ng Nh�n "..name2.."." )

	--������ʼ����
	elseif no1_num == 2 then

	--������ʼ��ǿ������ȻҲ��ֻ����ǿ
	elseif no1_num <= 4 then

	end
	return no1_num

end

--**********************************
--�����
--**********************************
function x808003_OnActivityEnd( sceneId, actId, tabId )

	local	m_actId	= actId

	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], 0 )			--�����׶�
	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["tab"], -1 )			--�����ID
	StopOneActivity( sceneId, m_actId )
	HitParadeReleaseTab( sceneId, tabId )
	
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_OnActivityEnd( sceneId=%d, actId=%d, tabId=%d )",
		sceneId, actId, tabId )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--������ҵȼ���ȡ�����Ϣ
--**********************************
function x808003_GetGroupInfo( sceneId, selfId )

	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return nil
	end

	local	lev			= GetLevel( sceneId, selfId )
	local	ActInfo	= nil
	local	minl		= 0
	local	maxl		= 0
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		minl				= GetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["minl"] )
		maxl				= GetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["maxl"] )
		if lev >= ActInfo.minLev and	--�ʺϵȼ�
			lev <= ActInfo.maxLev and
			minl > 0 and								--�˻�ѿ���
			maxl > 0 then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--û���ҵ�������Ļ
		return nil
	end
	return ActInfo.id, ActInfo.minLev, ActInfo.maxLev

end

--**********************************
--�Ƿ��ڱ����׶�
--**********************************
function x808003_IsJoinDoing( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	ret	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["pha"] )
	ret	= ret - floor(ret/10) * 10
	if ret == 1 then
		return 1
	end
	return 0

end

--**********************************
--��ȡ��ID
--**********************************
function x808003_GetTableID( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

  return GetActivityParam( sceneId, ActID, x808003_g_ActParam["tab"] )

end

--**********************************
--��ȡ����غ���
--**********************************
function x808003_GetRound( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	ret	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["pha"] )
	return floor(ret/10)

end

--**********************************
--��ȡ����ִ��ʱ��
--**********************************
function x808003_GetCurrentUnitTime( sceneId, selfId, TickTime )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	tim	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["unt"] )
	ret	= floor( tim * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--��ȡһ���غ��еı���ʱ�䳤��
--**********************************
function x808003_GetJoinTime( sceneId, TickTime )

	--�ú���ֻ��ʹ��ȫ�ֱ����뺯������
	--ԭ�򣺱������������ݣ������䳡�����������ڲ�ͬ�̣߳��ú������ڲ�ͬ����������Ľű��е���
	ret	= floor( x808003_g_JoinTime * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--��ȡһ���غ��еı���ʱ�䳤��
--**********************************
function x808003_GetAttackTime( sceneId, TickTime )

	--�ú���ֻ��ʹ��ȫ�ֱ����뺯������
	--ԭ�򣺱������������ݣ������䳡�����������ڲ�ͬ�̣߳��ú������ڲ�ͬ����������Ľű��е���
	ret	= floor( x808003_g_AttackTime * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--����GUID��ȡ�������
--**********************************
function x808003_GetPlyName( sceneId, guid )

	--����Ƿ��ڸó���
	if guid == nil then
		return "[ tr�ng ]"
	end
	ObjId		= LuaFnGuid2ObjId( sceneId, guid )
	if LuaFnIsObjValid( sceneId, ObjId ) ~= 1 then
		str		= format( "[%0X]", guid )
		return str
	end

	objNam	= GetName( sceneId, ObjId )
	if objNam ~= nil then
		str		= "#{_INFOUSR"..objNam.."}"
	else
		str		= "[ tr�ng ]"
	end
	return str

end

--**********************************
--���׽���
--**********************************
function x808003_OnPlyBounty( sceneId, guid, place, tabId )

	--ֻ����ǰ����
	if place < 1 or place > 3 then
		return
	end
	--����Ƿ��ڸó���
	if guid == nil then
		return
	end

	--�������ɼ�
	local	guid_tmp
	local	key_tmp
	local	isFind				= 0
	for i = 0, x808003_g_CareResultMax do
		guid_tmp, key_tmp	= HitParadeGetPlyInfo( sceneId, tabId, i )
		if guid_tmp ~= nil and key_tmp ~= nil and guid_tmp == guid then
			isFind					= 1
		end
	end
	if isFind == 0 then
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808003_OnPlyBounty( sceneId=%d, GUID=%0X ), Not Find",
			sceneId,
			guid )
		MissionLog( sceneId, LogInfo )
		return
	end

	ObjId		= LuaFnGuid2ObjId( sceneId, guid )
	if LuaFnIsObjValid( sceneId, ObjId ) ~= 1 then
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808003_OnPlyBounty( sceneId=%d, GUID=%0X ), Not OnScene",
			sceneId,
			guid )
		MissionLog( sceneId, LogInfo )
		return
	end

	local	lev		= GetLevel( sceneId, ObjId )
	local	gold	= 0
	--״Ԫ
	local ran1 = random(1,100)
	if place == 1 then

		if ran1 < x808003_g_rate_1st then
			local ranit1=random(1,getn(x808003_g_thuong))
			--TryRecieveItem(sceneId,selfId,x808003_g_thuong[ranit1], QUALITY_MUST_BE_CHANGE )
			local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, x808003_g_thuong[ranit1], 1 )

			if nBagIndex == -1
					x808003_MsgBox( sceneId, ObjId, "R�t ti�c, kh�ng gian tay n�i kh�ng ��" )
			else
			szTranEqp	= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
			end
		end
		gold	= lev * 1000
		AddMoney( sceneId, ObjId, gold )
	--����
	elseif place == 2 then
		if ran1 < x808003_g_rate_2nd then
			local ranit2=random(1,getn(x808003_g_thuong))
			--TryRecieveItem(sceneId,selfId,x808003_g_thuong[ranit2], QUALITY_MUST_BE_CHANGE )
			local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, x808003_g_thuong[ranit2], 1 )

			if nBagIndex == -1
				x808003_MsgBox( sceneId, ObjId, "R�t ti�c, kh�ng gian tay n�i kh�ng ��" )
			else
				szTranEqp	= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
			end
		end		
		gold	= lev * 500
		AddMoney( sceneId, ObjId, gold )
	--̽��
	elseif place == 3 then
		if ran1 < x808003_g_rate_3rd then
			local ranit3=random(1,getn(x808003_g_thuong))
			--TryRecieveItem(sceneId,selfId,x808003_g_thuong[ranit3], QUALITY_MUST_BE_CHANGE )
			local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, x808003_g_thuong[ranit3], 1 )

			if nBagIndex == -1
				x808003_MsgBox( sceneId, ObjId, "R�t ti�c, kh�ng gian tay n�i kh�ng ��" )
			else
				szTranEqp	= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
			end
		end
		gold	= lev * 200
		AddMoney( sceneId, ObjId, gold )
	end

	--��Ǯ����


	--��Ʒ����
	local	item_lst	=
	{
		--״Ԫ��������ʯ
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},
		--���ۣ�������ʯ
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},
		--̽����һ����ʯ
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},
	}
	local	item_unt	= item_lst[place]
	local	item_rnd	= random( getn( item_unt ) )
	local	item_nam	= GetItemName( sceneId, item_unt[item_rnd] )
	if item_nam ~= nil then
		x808003_MsgBox( sceneId, ObjId, "��t ���c "..item_nam )
	end

	--local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, item_unt[item_rnd], 1 )
	--local	szTranEqp	= nil
	--if  nBagIndex == -1 then
	--	x808003_MsgBox( sceneId, ObjId, "R�t ti�c, kh�ng gian tay n�i kh�ng ��" )
	--else
	--	szTranEqp			= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
	--end


	local	title_lst	=
	{
		{ 136,	"#cff99ccT� V� Tr�ng Nguy�n" },		--״Ԫ
		{ 137,	"#cff99ccT� V� B�ng Nh�n" },		--����
		{ 138,	"#cff99ccT� V� Th�m Hoa" },		--̽��
	}
	local	title			= title_lst[place]
	x808003_MsgBox( sceneId, ObjId, "��t ���c "..title[2].." danh hi�u" )
	LuaFnAwardTitle( sceneId, ObjId, 7, title[1], 7*24 )	--�ƺŵ���Ч��һ�ܣ�UsefulLife��λСʱ
	LuaFnDispatchAllTitle( sceneId, ObjId )								--�������гƺŵ�CLIENT
	
	local	strMsg
	local	rndMsg		= random( 3 )
	if szTranEqp ~= nil then
		if rndMsg == 1 then	
		  strMsg	= format( "#W#{_INFOUSR%s}#P trong ��i h�i t� v� �� �p ��o qu�n h�ng, khi�n thi�n h� anh h�ng khen ng�i kh�ng ng�t, ��t t�i danh hi�u #Y%s#P trong th�c trao gi�i c�c ng߶i �ng h� nhi�t t�nh �� g�i l�n #W#{_INFOMSG%s}#P v� #W#{_MONEY%d}#P t� l�ng y�u th�ch.",
		  	LuaFnGetName( sceneId, ObjId ),
		  	title[2],
		  	szTranEqp, gold )
		elseif rndMsg == 2 then
			strMsg	= format( "#W#{_INFOUSR%s}#P � ��i h�i t� v� l�n n�y �� bi�u hi�n xu�t ch�ng, kinh ng�c �n tri�u ��nh, ban th߷ng ri�ng Danh hi�u #W%s#P c�ng #W#{_INFOMSG%s}#P v� #W#{_MONEY%d}#P � th� hi�n ho�ng �n.",
				LuaFnGetName( sceneId, ObjId ),
				title[2],
				szTranEqp, gold )
		else
			strMsg	= format( "#W#{_INFOUSR%s}#P do �o�t ���c danh hi�u #W%s#P trong ��i h�i t� v� n�y �� l�m cho c�c m�n ph�i ���c d߽ng danh giang h�, ch߷ng m�n m�n ph�i n�y r�t l� h�i l�ng, l�i t�ng th�m #W#{_INFOMSG%s}#P v� #W#{_MONEY%d}#P l�y c�ng �� l�m g߽ng s�ng. ",
				LuaFnGetName( sceneId, ObjId ),
				title[2],
				szTranEqp, gold )
		end
		x808003_MyGlobalNews( sceneId, strMsg )
	end

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808003_MsgBox( sceneId, selfId, Msg )

	if Msg == nil then
		return
	end
	--�Ƿ����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_MsgBox( sceneId=%d, GUID=%0X ), %s",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ),
		Msg )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--ȫ�򹫸�
--**********************************
function x808003_MyGlobalNews( sceneId, Msg )

	if Msg == nil then
		return
	end

	AddGlobalCountNews( sceneId, Msg )
	--Add Log
	MissionLog( sceneId, "[TAOSHA]: "..Msg )

end
