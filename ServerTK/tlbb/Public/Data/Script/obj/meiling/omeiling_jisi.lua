--÷��NPC
--��˾
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nghe n�i V� Di s�n ch� T� Vi t� t� x�y ra nhi�u chuy�n, r�t nhi�u t� mu�i �� ch�t.... T�i ch� bi�t c� th�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
