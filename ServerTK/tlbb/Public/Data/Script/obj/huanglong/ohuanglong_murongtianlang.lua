--����NPC
--Ľ������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x023004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T�ch Nhan n�y lai l�ch m� �m, kh�ng ph�i ng߶i t�c ta, l�ng d� t�t kh�c! Ta �� cho A V�n ch� � h�nh tung c�a n�, nh�ng A V�n l�n n�o c�ng b�o c�o kh�ng c� g� kh�c th߶ng... Ta ngh� ta nh�n ng߶i kh�ng h� sai, nh�t �nh c� x�y ra chuy�n g� kh�c.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
