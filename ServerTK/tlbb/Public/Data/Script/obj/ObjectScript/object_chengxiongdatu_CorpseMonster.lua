--��̬���ɵĽ�ʬ

x807001_g_scriptId=807001



--**********************************

--�¼��������

--**********************************

function x807001_OnDefaultEvent( sceneId, selfId, targetId )

	--�ж��Ƿ��ܹ������npc������

	--PrintStr("haha...���ǽ�ʬ")

	local npcLevel = GetCharacterLevel(sceneId, targetId)

	local teamCount = GetTeamMemberCount(sceneId, selfId)

	local teamLeaderID = GetTeamLeader(sceneId, selfId)

	local teamLeaderLevel = GetCharacterLevel(sceneId, teamLeaderID)

	

	--PrintNum(teamLeaderID)

	--PrintNum(teamCount)

	--PrintNum(teamLeaderLevel)

	--PrintNum(npcLevel)

	
	--ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if  nearteammembercount < 1 then	

		BeginEvent(sceneId)

			AddText(sceneId, "D�m coi th߶ng ta, ch� �t c�ng ph�i l� 3 ng߶i h�p l�i m�i ���c, ha ha.")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return

	elseif teamLeaderLevel < npcLevel then

		--��ʾ��������

		BeginEvent(sceneId)

			AddText(sceneId, "D�m coi th߶ng ta, ��ng c�p cao h�n s� bi�t l�i h�i c�a ta")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return



	else

		--����npc

		--PrintStr("active npc...")

		--���öԹ�Ϊ�жԵ� Ŀǰ��28���ǵжԵģ�������˸ı�����Ӧ�������������ҾͲ��ˣ���:-(((
		SetUnitReputationID(sceneId, selfId, targetId, 28)


	end

	

end



function x807001_OnDie(sceneId, selfId, killerId)



end

