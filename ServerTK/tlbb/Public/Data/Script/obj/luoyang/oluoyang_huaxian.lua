--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000094_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
 	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  D߽ng li�u thanh thanh giang thu� b�nh #rV�n lang giang th��ng s߾ng ca thanh #r��ng bi�n nh�t xu�t t�y bi�n v�#r ��o th� v� t�nh kh߾c h�u t�nh.#r"..PlayerName..PlayerSex..", c� th�ch cu�c s�ng ch� l�m uy�n ߽ng kh�ng l�m ti�n kh�ng?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
