--��������NPC
--����
--��ͨ

x077001_g_scriptId=077001

--**********************************
--�¼��������
--**********************************
function x077001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ng߶i tr� tu�i, t�m bi�t! T�m bi�t t�c l� kh�ng g�p n�a, v� r�i m�i th� ph�i c�n th�n, ng߽i mu�n �i ��u?")

			if GetLevel(sceneId,selfId)<10 then
				AddNumText(sceneId,x077001_g_scriptId,"��i L�",9,2)
			else
			
				AddNumText(sceneId,x077001_g_scriptId,"L�c D߽ng",9,0)	
				AddNumText(sceneId,x077001_g_scriptId,"��i L�",9,2)	
				AddNumText(sceneId,x077001_g_scriptId,"T� Ch�u",9,1)
				AddNumText(sceneId,x077001_g_scriptId,"Th�c H� C� Tr�n",9,4)
				if GetLevel(sceneId,selfId)>=75 then
					AddNumText(sceneId,x077001_g_scriptId,"L�u Lan",9,1)
				end
				
			end
				
		AddNumText(sceneId,x077001_g_scriptId,"#{DFBZ_081016_01}",11,5)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x077001_OnEventRequest( sceneId, selfId, targetId, eventId )

	-- ����
	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 0,223,321, 10)
			
	-- ����
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 1,202,257, 10)
	
	-- ����
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 2,375,223)

	-- ¥��
	elseif	GetNumText()==5	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 186, 158, 44, 10 )
	end
	
	if	GetNumText()==3	then
		BeginEvent(sceneId)
			AddText( sceneId, "#{DFBZ_081016_02}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return	
	end
	
	-- ���ӹ���
	if	GetNumText()==4	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x077001_g_scriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i kh�ng t�ng s�t kh�, ph�i c�n th�n. C�c h� x�c nh�n ti�n v�o?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
end

--**********************************
--���������ӹ���
--**********************************
function x077001_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
