-- ��ȡǮ����ƺ�

-- �ű���
x050106_g_scriptId = 050106

-- �ƺ��б�
x050106_g_TitleList = {
	{
		relation = 1000,
		title = "Ti�u Ph� Ngh�a S�",
		failMsg = "    Mu�n nh�n ���c danh hi�u c�p 1, gi� tr� quan h� c�a ta v� c�c h� t�i thi�u 1000, c�n ph�i ho�n th�nh th�m v�i l��t S�o huy�t th� ph� h�y �n t�m ta.",
		succMsg = "    T�i h� v� c�ng kh�m ph�c v� c�ng c�a c�c h�, giang h� �n r�ng c�c h� ch�nh l�#R Ti�u Ph� Ngh�a S�#W, ta th�y m� kh�ng h� th�n!",
	},
	{
		relation = 2000,
		title = "Ph� Ph� Hi�p S�",
		failMsg = "    Mu�n nh�n ���c danh hi�u c�p 2, gi� tr� quan h� c�a ta v� c�c h� t�i thi�u 2000, c�n ph�i ho�n th�nh th�m v�i l��t S�o huy�t th� ph� h�y �n t�m ta.",
		succMsg = "    T�i h� v� c�ng kh�m ph�c v� c�ng c�a c�c h�, giang h� �n r�ng c�c h� ch�nh l�#R Ph� Ph� Hi�p S�#W, ta th�y m� kh�ng h� th�n!",
	},
	{
		relation = 4000,
		title = "Tr�n Ph� Anh Hi�p",
		failMsg = "    Mu�n nh�n ���c danh hi�u c�p 3, gi� tr� quan h� c�a ta v� c�c h� t�i thi�u 4000, c�n ph�i ho�n th�nh th�m v�i l��t S�o huy�t th� ph� h�y �n t�m ta.",
		succMsg = "    T�i h� v� c�ng kh�m ph�c v� c�ng c�a c�c h�, giang h� �n r�ng c�c h� ch�nh l�#R Tr�n Ph� Anh Hi�p#W, ta th�y m� kh�ng h� th�n!",
	},
	{
		relation = 6500,
		title = "Thi�n H� Ph� Ki�n S�u",
		failMsg = "    Mu�n nh�n ���c danh hi�u c�p 4, gi� tr� quan h� c�a ta v� c�c h� t�i thi�u 6500, c�n ph�i ho�n th�nh th�m v�i l��t S�o huy�t th� ph� h�y �n t�m ta.",
		succMsg = "    T�i h� v� c�ng kh�m ph�c v� c�ng c�a c�c h�, giang h� �n r�ng c�c h� ch�nh l�#R Thi�n H� Ph� Ki�n S�u#W, ta th�y m� kh�ng h� th�n!",
	},
}

--**********************************
-- �¼��������
--**********************************
function x050106_OnDefaultEvent( sceneId, selfId, targetId )
	local opt = GetNumText()
	if opt == 7 then							-- ��ȡ�ƺ�
		x050106_GetTitleOptions( sceneId, selfId, targetId )
	elseif opt == 8 then						-- ��ȡ�µĳƺ�
		x050106_GetNewTitle( sceneId, selfId, targetId )
	end
end

--**********************************
-- �о��¼�
--**********************************
function x050106_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x050106_g_scriptId, "Nh�n danh hi�u", 8, 7 )
end

--**********************************
-- �����ȡ�ƺ�ѡ��
--**********************************
function x050106_GetTitleOptions( sceneId, selfId, targetId )
	local str = format( "    A, %s, ta v� c�ng kh�m ph�c c�c anh h�ng �� ho�n th�nh nhi�m v�, gi� gi� tr� quan h� c�a ta v� c�c h� l� %d, khi gi� tr� quan h� ��t �n 1000, 2000, 4000, 6500 th� c� th� �n ch� ta �i danh hi�u",
		GetName( sceneId, selfId ), GetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU ) )

	BeginEvent( sceneId )
		AddText( sceneId, str )
		AddNumText( sceneId, x050106_g_scriptId, "L�nh nh�n danh hi�u m�i", 8, 8 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- �����ȡ�³ƺ�ѡ��
--**********************************
function x050106_GetNewTitle( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local str = ""
		local curTitle = GetQHYTitle( sceneId, selfId )
		local relation = GetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU )
		local loc = 1

		for i = 1, getn( x050106_g_TitleList ) do
			if curTitle == x050106_g_TitleList[i].title then
				loc = i
				break
			end
		end

		if loc == getn( x050106_g_TitleList ) then
			str = "    Gi� c�c h� �� l� Thi�n H� Ph� Ki�n S�u c�a giang h�, tr�n giang b�n ph� nghe danh c�c h� �u run s�, ai c�ng kinh h�i. �� kh�ng c�n danh hi�u n�o � di�n t� n�ng l�c c�a c�c h� n�a r�i."
		else
			for i = loc, getn( x050106_g_TitleList ) do
				if relation < x050106_g_TitleList[i].relation then
					str = x050106_g_TitleList[i].failMsg
					break
				elseif x050106_g_TitleList[i].title ~= GetQHYTitle( sceneId, selfId ) then		-- ��ǰ�ƺŲ��Ǳ��ƺ�
					SetQHYTitle( sceneId, selfId, x050106_g_TitleList[i].title )
					DispatchAllTitle( sceneId, selfId )
					str = x050106_g_TitleList[i].succMsg
					break
				end
			end
		end

		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
