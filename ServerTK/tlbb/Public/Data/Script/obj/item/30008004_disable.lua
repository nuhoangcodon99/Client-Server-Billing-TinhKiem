-- 300052 
-- ��ϴ�赤
-- ʹ��֮����Խ����е��ѷ��������ΪǱ�ܡ�


-- �ű���
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- ҩˮID

--**********************************
-- �¼��������
--**********************************
function x300052_OnDefaultEvent( sceneId, selfId )

	-- ��ҩϴ��
	BeginEvent(sceneId)
		AddText(sceneId, "#Y��i T�y T�y �an")
		AddText(sceneId, " T�nh n�ng t�m ��ng. Vui l�ng th� l�i sau")
		AddText(sceneId, " Function is temporary in closed. Please try again later")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return 0;
	
	
end

--**********************************
-- 
--**********************************
function x300052_IsSkillLikeScript( sceneId, selfId)
	return 0
end
