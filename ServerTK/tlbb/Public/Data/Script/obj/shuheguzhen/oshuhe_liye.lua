x001218_g_ScriptId	= 001218

--**********************************
--�¼��������
--**********************************
function x001218_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "#cFF0000M�t con �߶ng d�c xu�ng  ch�nh l� �n Ph��ng Ho�ng C� Th�nh, Kh�ng c� ng߶i bi�t �i nh� th� n�o theo h߾ng xu�ng d�c , Nh�ng v�n nh� c� ch�t ch�a ��i l��ng b�o t�ng, L� binh gia v�ng giao tranh. аng th�i c�ng h�p d�n ph�n l�n ��o M� T�c, Trong �� t� B�n S�n ��o Nh�n su�t l�nh �n S� Kim Gi�o �y l�i minh m�c tr߽ng ��m. Ta c� th� ��a ng߽i �i v�o. Nh�ng s� sinh t� c�a ng߽i ta kh�ng ph� tr�ch.#W[ Ngo�i c�p 80 h�y ti�n v�o ]")
		AddNumText(sceneId, x001218_g_ScriptId,"Ti�n v�o Ph��ng Ho�ng C� Th�nh", 6, 101)
		--AddNumText(sceneId, x001218_g_ScriptId,"Ta bi�t r�i, ta c� m�t s� th� thay �i � ��y.", 5, 102)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001218_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 101  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev>=80 then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 441, 161, 161 )
		end
	elseif GetNumText() == 102  then
		local reply = CostMoney(sceneId,selfId,5000000)
		if reply == -1 then
			x001218_MsgBox( sceneId, selfId, targetId, "    #YTi�u t�, � qua ��y ng߽i c�n ph�i c� �� ti�n m�i ���c nh�!" )
			return	
		end
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 584, 258, 310 )
	end
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x001218_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
