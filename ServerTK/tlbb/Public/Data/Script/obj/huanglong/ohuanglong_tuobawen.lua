--����NPC
--�ذ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x023001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H�m �� T�ch Nhan �i v�o r�ng ph�a b�c, c� �y l�m g� t�i �u nh�n th�y c�... Nh�ng m�, n�u t�i �em chuy�n n�y n�i cho M� Dung tr߷ng l�o, �ng �y nh�t �nh gi�t ch�t T�ch Nhan... T�i ph�i l�m sao ��y...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
