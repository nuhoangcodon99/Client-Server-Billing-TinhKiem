--ؤ��NPC
--ŷ����
--��ͨ

x010035_g_scriptId = 010035

--**********************************
--�¼��������
--**********************************
function x010035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L� kh� d� �� quen th�i v�o h�m r��u �n tr�m r��u, th�t ��ng gh�t, ch�ng ta �� cho ch�ng v�i b�i h�c, l�i kh�ng bi�t n�ng nh� d�m �n t�n c�ng t�ng �� c�a C�i Bang, c� mu�n �i \"d�n m�t\" b�n ch�ng kh�ng?")
		AddNumText(sceneId,x010035_g_scriptId,"�i ng�n ch�n kh� d�",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x010035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<11  then	
			BeginEvent( sceneId )
			local strText = "Kh�ng ���c coi th߶ng l� kh� ��, ta th�y ng߽i n�n ��i v��t qua c�p 11 h�ng quay l�i t�m ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 140,91,151)
		end
	end
end
