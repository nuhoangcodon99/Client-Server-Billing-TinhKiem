--S� gi� Tinh th�ng trang b�
--T� Ch�u - M� B�ch
--Code by: S�i

--*********************--
x920501_g_scriptId = 920501
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x920501_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"M�i m�n trang b� �u ti�m �n m�t s�c m�nh m� �t ai c� ���c. Ng߶i �i g�i �� l� #GTinh th�ng trang b�#W.")
		--local strGUID = LuaFnGetGUID( sceneId, selfId )
		--if strGUID == 1010000003 then
			AddNumText(sceneId,x920501_g_scriptId,"Gi�i phong #GTinh th�ng trang b�",6,0)
			AddNumText(sceneId,x920501_g_scriptId,"Th�ng c�p #GTinh th�ng trang b�",6,1)
		--end
		AddNumText(sceneId,x920501_g_scriptId,"V� #GTinh th�ng trang b�",11,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x920501_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*********************--
	if GetNumText()==0	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,0)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,200907251)
	elseif GetNumText()==1	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,1)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,200907251)
	elseif GetNumText()==2 then
		BeginEvent(sceneId)
			AddText(sceneId,"M�i m�n trang b� �u ti�m �n m�t s�c m�nh m� �t ai c� ���c. Ng߶i �i g�i �� l� #GTinh th�ng trang b�#W.")
			AddText(sceneId,"Mu�n #GTinh th�ng trang b�#W, ch� c�n �n #GT� Ch�u (345,227)#R M� B�ch#W ti�n h�nh thao t�c.")
			AddText(sceneId,"Ь gi�i phong #GTinh th�ng trang b�#W, c�n ti�u t�n m�t c�i #GTrang b� Tinh th�ng ph�#W.")
			AddText(sceneId,"Ь th�ng c�p #GTinh th�ng trang b�#W, c�n ti�u t�n m�t s� l��ng #GLy H�a#W nh�t �nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	
end
