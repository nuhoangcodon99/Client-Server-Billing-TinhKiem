--����NPC
--�����
--��ͨ

x016035_g_scriptId = 016035

--**********************************
--�¼��������
--**********************************
function x016035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�o m�ng �� t�i v�i Tinh T�c, m�n ph�i l�i h�i nh�t v� �c d��c !!")
		AddNumText(sceneId,x016035_g_scriptId,"Di�t Nh�n �c",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x016035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<51  then	
			BeginEvent( sceneId )
			local strText = "B�ng h�u c�n ��t t�i ��ng c�p 51 m�i c� th� v�o b�n � n�y !!"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 146,91,144)
		end
	end
end
