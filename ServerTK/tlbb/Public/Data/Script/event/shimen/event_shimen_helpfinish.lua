--ͬ������
--����һЩ���ɹ�����ֱ�����һ��ʦ������....

x229011_g_scriptId = 229011

x229011_g_strHelpFinishedText = "  аng m�n g�p n�n, ph�i ra tay t߽ng tr�, nhi�m v� c�a c�c h� ta �� giao cho �ng m�n kh�c �i ho�n th�nh r�i. #r#Gnhi�m v� ho�n th�nh! #W"

--**********************************
--������ں���
--**********************************
function x229011_OnDefaultEvent( sceneId, selfId, targetId, menpaiId, numTextId )

	if numTextId == 1 then

		BeginEvent( sceneId )

			if IsHaveMission(sceneId,selfId,MENPAI_SHIMEN_MISID[menpaiId+1]) <= 0 then
				AddText( sceneId, "H�nh nh� c�c h� kh�ng c� ti�p nh�n nhi�m v� s� m�n.")
			else
				local strText = "  V�n doanh s� m�n, ng߶i ng߶i c� ph�c! M�i ng�y nh�ng � t� kh�ng ng�ng n� l�c l�m nhi�m v� s� m�n ch�ng t�i s� th߷ng cho ph�n th߷ng qu� gi�, �߽ng nhi�n, � t� khi l�m nhi�m v� s� m�n g�p ph�i kh� kh�n ch�ng t�i s� t�n t�m tr� gi�p. #Rc�c h� quy�t �nh ti�u hao #G%d �i�m #W c�a � c�ng hi�n s� m�n, v� nh�ng s� huynh s� t� c� th� gi�p c�c h� ho�n th�nh nhi�m v� s� m�n hi�n gi� nh�?"
				strText = format( strText, x229011_GetHelpFinishNeed( sceneId, selfId ) )
				AddText( sceneId, strText )
				AddNumText( sceneId, x229011_g_scriptId, "Duy�t", 6, 2 )
				AddNumText( sceneId, x229011_g_scriptId, "R�i kh�i", 8, 3 )
			end

		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif numTextId == 2 then

		CallScriptFunction( MENPAI_SHIMEN_SCRIPTID[menpaiId+1], "HelpFinishOneHuan", sceneId, selfId, targetId )

	elseif numTextId == 3 then

		--�رնԻ�����....
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		
	end

end

--**********************************
--�о��¼�
--**********************************
function x229011_OnEnumerate( sceneId, selfId, targetId, menpaiId )

	--�����Ҳ��Ǹñ����ɵľͲ���ʾ....
	if menpaiId == GetMenPai( sceneId, selfId ) then
		AddNumText( sceneId, x229011_g_scriptId, "аng m�n t߽ng tr�", 6, 1 );
	end

end

--**********************************
--����ͬ��������������ɹ���....
--**********************************
function x229011_GetHelpFinishNeed( sceneId, selfId )

	--ͬ���������蹱�׶�=���20���Ĺ��׶� * 80%
	
	--ÿ��ʵ�ʽ������׶�=����ҵȼ�-�����ȼ���* �ȼ�Ӱ����� + �������׶�
	--���20���Ĺ��׶�=����ҵȼ�-�����ȼ���* �ȼ�Ӱ����� * 20 + 20���������׶��ܺ�(=40)
	
	local level = GetLevel(sceneId, selfId)
	local need = (level - 10) * 0.05 * 20 + 40
	need = need * 0.8
	need = floor( need )

	return need

end

--**********************************
--��Ⲣ�۳�ͬ��������������ɹ���....
--**********************************
function x229011_CheckAndDepleteHelpFinishMenPaiPoint( sceneId, selfId, targetId )

	local needPoint = x229011_GetHelpFinishNeed( sceneId, selfId )
	local menpaiPoint = GetHumanMenpaiPoint( sceneId, selfId )

	if menpaiPoint < needPoint then
		BeginEvent(sceneId)
			AddText( sceneId, "  H�nh nh� c�c h� kh�ng c� �� �i�m c�ng hi�n s� m�n, h�y v� s� ph� l�m th�m t� vi�c, c�c �ng m�n s� to�n l�c gi�p c�c h�." )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0
	else
		SetHumanMenpaiPoint( sceneId, selfId, menpaiPoint-needPoint )
		return 1
	end

end
