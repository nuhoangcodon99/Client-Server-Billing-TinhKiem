--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x008008_OnDefaultEvent( sceneId, selfId,targetId )
  BeginEvent(sceneId)
	  AddText(sceneId,"Ta �� ��nh b�i H�i C�t v� Quy T�, t�n c�ng v�o Ng�c M�n Quan, t�n c�ng v�o Tri�u T�ng ch� l� chuy�n s�m hay mu�n m� th�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

