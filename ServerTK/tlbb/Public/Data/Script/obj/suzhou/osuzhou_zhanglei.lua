--����NPC
--����
--һ��

--**********************************
--�¼��������
--**********************************
function x001004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng "
		else
			PlayerSex = " c�c h�"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c�c h� c�ng t�i d� thi? ��i khi thi xong, t�i h� mu�n �n b�i ki�n s� ph� "..PlayerSex.." kh�ng bi�t c� ph�i c�ng �i v� ph�a tr߾c?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
