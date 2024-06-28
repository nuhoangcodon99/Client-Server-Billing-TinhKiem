--����NPC
--�غ���
--��ͨ

x000125_g_ScriptId	= 125

--������
x000125_g_Key				=
{
		["do"]					= 100,	--ȷ��
		["undo"]				= 101,	--ȡ��
		["del"]					= 103,	--�Ҿ����˳�����
		["hlp"]					= 104,	--����
}

--**********************************
--�¼��������
--**********************************
function x000125_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta chuy�n l� ng߶i l�m ch� tr� nghi th�c R�a Tay G�c Ki�m cho anh h�ng giang h�. N�u c�c h� mu�n x�a nh�n v�t, r�t kh�i giang h�, th� h�y �n t�m ta." )
		AddNumText( sceneId, x000125_g_ScriptId, "Ta mu�n x�a nh�n v�t", -1, x000125_g_Key["do"] )
		AddNumText( sceneId, x000125_g_ScriptId, "Li�n quan �n x�a nh�n v�t", 11, x000125_g_Key["hlp"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000125_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x000125_g_Key["do"] then
		--1,		//����ɹ�������ɾ��
		--2,		//�ڰ����в�������ɱ
		--3,		//���״̬
		--4,		//��Ʒ��������ɾ��
		--5,		//ӵ������̵�
		--6,		//ӵ�н���ֵ�
		--7,		//ӵ��ʦͽ��ϵ
		BeginEvent(sceneId)
			local result = QueryDeleteCharState(sceneId,selfId)
			if result == 1 then
				AddText(sceneId,"  R�a tay g�c ki�m, r�i b� giang h�")
				AddNumText(sceneId,x000125_g_ScriptId,"Ta quy�t �nh r�i b� giang h�",6,x000125_g_Key["del"])
			end
			if result == 2 then
				AddText(sceneId,"  Kh�ng th� t� s�t trong bang ph�i")
			end
			if result == 3 then
				AddText(sceneId,"  Ng߽i v�n trong tr�ng th�i k�t h�n, kh�ng th� t� s�t")
			end
			if result == 4 then
				AddText(sceneId,"  Ng߽i c� v�t ph�m b� kh�a, kh�ng th� t� s�t")
			end
			if result == 5 then
				AddText(sceneId,"  Ng߽i �ang s� h�u th߽ng ti�m, kh�ng th� t� s�t")
			end
			if result == 6 then
				AddText(sceneId,"  Ng߽i c� huynh � k�t b�i, kh�ng th� t� s�t")
			end
			if result == 7 then
				AddText(sceneId,"  Ng߽i c� quan h� s� �, kh�ng th� t� s�t")
			end
			if result == 8 then
					local lefttime = GetLeftDeleteTime(sceneId,selfId)-11
					if lefttime > 0 then
						AddText(sceneId,"  Th�i gian t� s�t c�a ng߽i ch�a t�i, v�n c�n thi�u" ..lefttime.."Ng�y")
					else
						AddText(sceneId,"  Ng߽i kh�ng ��ng k� xin t� s�t!");
					end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif key == x000125_g_Key["del"] then
		--ExecuteDeleteChar(sceneId, selfId)
		x000125_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )
		
	elseif key == x000125_g_Key["hlp"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_089}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return

	end
end

function x000125_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )    
  BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x000125_g_ScriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,eventId)
		UICommand_AddString(sceneId,"OnMsgAccept");
		local str = format("Ng߽i x�c �nh mu�n x�a nh�n v�t n�y kh�ng?")
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	
	DispatchUICommand(sceneId,selfId, 24)
end

function x000125_OnMsgAccept( sceneId, selfId, targetId, eventId )
    local result = QueryDeleteCharState(sceneId,selfId)
    
    if( 1 == result ) then        
        ExecuteDeleteChar(sceneId, selfId)
    end
    
end
