--����NPC
--��ͷ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000072_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  B�n ti�u c�c l�y ch� t�n l�m tr�ng, ���c c� h�c b�ch l��ng ��o n� nang, m�i li�n t�c m߶i n�m kh�ng m�t m�t l�n n�o. "..PlayerName..PlayerSex..", c� g� c�n c�c h� c� m� l�i, l�n n�i xu�ng bi�n C�i Nh�t Minh t�i �u s�n s�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
