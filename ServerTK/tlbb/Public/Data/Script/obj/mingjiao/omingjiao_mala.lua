--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x011007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B�ch Hoa mu�i mu�i n�i Trung Th� c� t�a H�n Ng�c Th�p, trong �� c� r�t nhi�u truy�n thuy�t, th�t s� mu�n �i xem l�m.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
