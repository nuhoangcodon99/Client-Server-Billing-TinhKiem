-- 300043 
-- Сϴ�赤
-- ʹ��֮����Խ�ѡ�����Եķ�������е�5���ΪǱ�ܡ�


-- �ű���
x300043_g_scriptId = 300043
x300043_g_ItemId = 30008005  -- ҩˮID
x300043_g_UseScriptId = 300053
--**********************************
-- �¼��������
--**********************************
function x300043_OnDefaultEvent( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId, "#YTi�u T�y T�y �an")
		AddText(sceneId, " T�nh n�ng b� kh�a b�i GM, vui l�ng d�ng ��i T�y T�y �an ti�n h�nh t�y �i�m!")
		--AddText(sceneId, " Sau khi s� d�ng c� th� mang b�t k� 1 thu�c t�nh n�o �� ph�n ph�i l�y #Y100 �i�m#W bi�n th�nh ti�m n�ng.")
		--AddNumText(sceneId, x300043_g_UseScriptId,"Ch�nh 100 �i�m C߶ng l�c", 0, 1)
		--AddNumText(sceneId, x300043_g_UseScriptId,"Ch�nh 100 �i�m N�i l�c", 0, 2)
		--AddNumText(sceneId, x300043_g_UseScriptId,"Ch�nh 100 �i�m Th� l�c", 0, 3)
		--AddNumText(sceneId, x300043_g_UseScriptId,"Ch�nh 100 �i�m Tr� l�c", 0, 4)
		--AddNumText(sceneId, x300043_g_UseScriptId,"Ch�nh 100 �i�m Th�n ph�p", 0, 5)
		--AddNumText(sceneId, x300043_g_UseScriptId,"Sau n�y h�y t�nh", 0, 6)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end


--**********************************
-- 
--**********************************
function x300043_IsSkillLikeScript( sceneId, selfId)
	return 0
end

function x300043_WashPoint(sceneId, selfId, nType, nPoint, szStr)
	-- �۳���ص���Ʒ
	local ret = DelItem(sceneId, selfId, x300043_g_ItemId, 1)
	if ret == 1  then
		local nNumber = LuaFnWashSomePoints(sceneId, selfId, nType, nPoint)
		
		BeginEvent(sceneId)
			AddText(sceneId, "#YTi�u T�y T�y �an")
			AddText(sceneId, "  C�c h� mang th�nh c�ng#Y" .. tonumber(nNumber) .. " �i�m#W �� ph�n ph�i c�a #Y" .. szStr.. "#W thu�c t�nh bi�n th�nh ti�m n�ng.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end		

end
