--����NPC
--����è
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"  V�n Phi Phi t� t� l� th�n t��ng c�a t�t c� tr�n th� ch�ng ta. Phi Phi, ta y�u t�, nh� chu�t y�u g�o!")
	elseif roll <= 1 then
			AddText(sceneId,"  ��ng t߷ng r�ng ch�ng ta kh�ng bi�t n�i, Phi Phi t� t� �� d�y ch�ng ta t� l�u r�i. Kh�ng tin, ch�ng ta th� thi �� xem sao")
	else
			AddText(sceneId,"  C�c h� bi�t kh�ng? Nghe n�i Phi Phi t� t� c� 2 ch� em, gi�ng h�t nhau")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
