--����NPC
--��ӱ��
--��ҩ��

x000085_g_shoptableindex=29

--**********************************
--�¼��������
--**********************************
function x000085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  T�i h� �ang nghi�n c�u b�o ch� b� d��c d߾i s� h߾ng d�n c�a s� ph�, ��i h�m n�o th�nh c�ng, t�i h� c� th� b�n v�n cho c�c h�. Su�t -... Ng߶i b�nh th߶ng t�i h� kh�ng bao gi� cho bi�t")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--DispatchShopItem( sceneId, selfId,targetId, x000085_g_shoptableindex )
end
