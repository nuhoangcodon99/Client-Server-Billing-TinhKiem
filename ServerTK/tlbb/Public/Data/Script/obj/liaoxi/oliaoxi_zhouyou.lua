--����
--����
--��ͨ

x021009_g_scriptId = 021009

--**********************************
--�¼��������
--**********************************
function x021009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B�ng h�u, qu�i v�t tr�n Ng�n Ngai Tuy�t Nguy�n n�y con n�o c�ng c� th�n l�c c�a h�n b�ng, Ch� c� �� �i�m #GKh�ng b�ng#W m�i c� kh� n�ng tung ho�nh � n�i n�y. T�i h� c� th� gi�p c�c h� t�ng 1 �t kh�ng b�ng, nh�ng s� kh�ng b�ng cao c�n xem v�o n� l�c c�a b�n th�n.")
		AddNumText(sceneId, x021009_g_scriptId, "T�ng 1 s� kh�ng b�ng",6,0)
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
