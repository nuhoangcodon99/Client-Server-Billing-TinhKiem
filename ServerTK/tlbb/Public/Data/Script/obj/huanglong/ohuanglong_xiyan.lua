--����NPC
--Ϧ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x023003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T�i h� ch� � v�i ng�y � tr�n Ho�ng Long, nh�ng v�i ng�y �� cho t�i h� c�m gi�c v� c�ng �m �p y�n l�nh. So v�i cu�c s�ng �a ng�c tr߾c ��y, th�c s� l� t�t h�n kh�ng bi�t bao nhi�u l�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
