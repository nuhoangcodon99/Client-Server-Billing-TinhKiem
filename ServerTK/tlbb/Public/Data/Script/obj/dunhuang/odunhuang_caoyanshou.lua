--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x008005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#GNg�c M�n Quan#W n�y t� tr߾c t�i nay l� v�ng �t tranh gi�nh c�a binh gia, anh trai ta #Gl�m th�i th�#W ��n Ho�ng c�ng kh�ng d� d�ng ch�t n�o!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

