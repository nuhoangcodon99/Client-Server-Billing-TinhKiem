--��翷帱��....
--ս�����ϴ�Ի��ű�....

--�ű���
x402275_g_ScriptId = 402275

--�����߼��ű���....
x402275_g_FuBenScriptId = 402263


--**********************************
--������ں���....
--**********************************
function x402275_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "#{PMF_20080521_19}" )

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 == CallScriptFunction( x402275_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			AddNumText( sceneId, x402275_g_ScriptId, "Quy�t chi�n L� Thu Thu� ?", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x402275_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x402275_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�жϵ�ǰ�Ƿ������ս����ˮ....	
	if 1 ~= CallScriptFunction( x402275_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
		return
	end

	--������ںͱ��BOSSս���򷵻�....
	local ret, msg = CallScriptFunction( x402275_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--������翷��ʱ���������Լ�....
	CallScriptFunction( x402275_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402275_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x402275_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402275_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 5 gi�y n�a s� chi�n �u" )
		return
	end

	if 6 == step then
		CallScriptFunction( x402275_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 4 gi�y n�a s� chi�n �u" )
		return
	end

	if 5 == step then
		CallScriptFunction( x402275_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 3 gi�y n�a s� chi�n �u" )
		return
	end

	if 4 == step then
		CallScriptFunction( x402275_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 2 gi�y n�a s� chi�n �u" )
		return
	end

	if 3 == step then
		CallScriptFunction( x402275_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 1 gi�y n�a s� chi�n �u" )
		return
	end

	if 2 == step then
		--��ʾս����ʼ....
		CallScriptFunction( x402275_g_FuBenScriptId, "TipAllHuman", sceneId, "B�t �u chi�n �u" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x402275_g_FuBenScriptId, "CreateBOSS", sceneId, "LiQiuShui_BOSS", -1, -1 )
		return
	end

end
