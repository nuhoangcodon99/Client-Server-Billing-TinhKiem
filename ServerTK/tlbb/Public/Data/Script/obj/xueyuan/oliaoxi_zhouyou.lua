--����
--����
--��ͨ

x021009_g_scriptId = 021009

--**********************************
--�¼��������
--**********************************
function x021009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B�ng h�u, Ng�n Nhai Tuy�t Nguy�n qu�i v�t ng߶i ng߶i �u c� ���c h�n b�ng th�n l�c, ch� c� #G b�ng kh�ng #W c�ng �� t�i cao c� th� � n�i n�y ho�nh h�nh v� k�. T�i h� c� th� gi�p ng߽i t�ng l�n m�t �t b�ng kh�ng, nh�ng c�ng nhi�u  b�ng kh�ng c�n c�n ch�nh ng߽i �n c� g�ng.")
		AddNumText(sceneId, x021009_g_scriptId, "T�ng kh�ng b�ng",6,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x021009_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 153, 0)
	end
end
