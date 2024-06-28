--��翷帱��....
--���ϴ�Ի��ű�....

--�ű���
x402272_g_ScriptId = 402272

--�����߼��ű���....
x402272_g_FuBenScriptId = 402263

--ս�����ϴ�Ի��ű���....
x402272_g_LossScriptId = 402275

--**********************************
--������ں���....
--**********************************
function x402272_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "#{PMF_20080521_10}" )
		AddNumText( sceneId, x402272_g_ScriptId, "Khi�u chi�n", 10, 1 )

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 == CallScriptFunction( x402272_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			AddNumText( sceneId, x402272_g_ScriptId, "Quy�t chi�n L� Thu Thu� ?", 10, 2 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x402272_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x402272_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
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

	--������ںͱ��BOSSս���򷵻�....
	local ret, msg = CallScriptFunction( x402272_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	if GetNumText() == 1 then

		--�жϵ�ǰ�Ƿ������ս���ϴ�....	
		if 1 ~= CallScriptFunction( x402272_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "WuLaoDa" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--������翷��ʱ���������Լ�....
		CallScriptFunction( x402272_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402272_g_ScriptId, -1 ,-1 )

	elseif GetNumText() == 2 then

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 ~= CallScriptFunction( x402272_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			return
		end
		--������翷��ʱ������������ˮ....
		CallScriptFunction( x402272_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402272_g_LossScriptId, -1 ,-1 )

	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x402272_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402272_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 5 gi�y n�a s� chi�n �u" )
		return
	end

	if 6 == step then
		CallScriptFunction( x402272_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 4 gi�y n�a s� chi�n �u" )
		return
	end

	if 5 == step then
		CallScriptFunction( x402272_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 3 gi�y n�a s� chi�n �u" )
		return
	end

	if 4 == step then
		CallScriptFunction( x402272_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 2 gi�y n�a s� chi�n �u" )
		return
	end

	if 3 == step then
		CallScriptFunction( x402272_g_FuBenScriptId, "TipAllHuman", sceneId, "C�n 1 gi�y n�a s� chi�n �u" )
		return
	end

	if 2 == step then
		--��ʾս����ʼ....
		CallScriptFunction( x402272_g_FuBenScriptId, "TipAllHuman", sceneId, "B�t �u chi�n �u" )
		--ɾ��NPC....
		CallScriptFunction( x402272_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x402272_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa_BOSS", -1, -1 )
		return
	end

end