x000630_g_ScriptId	= 000630
x000630_g_FuBenScriptId = 000618

function x000630_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local text=" Long Tr� nh�n ���c b�o v�, s�ng s�ng b�t �ng.  #r xem ra c�n ti�u di�t to�n b� qu�i v�t m�i c� th� ti�p t�c �� th�ng Long Tr� ���c."
		AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
