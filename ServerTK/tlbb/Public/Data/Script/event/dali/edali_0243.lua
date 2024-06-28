-- 210243
-- ����ѩԭ�һ�ʱװ

x210243_g_ScriptId = 210243

x210243_g_ItemId = {
										{mp=0,Item=10124009,mpname="Ph�i Thi�u L�m"},
										{mp=1,Item=10124010,mpname="Minh Gi�o"},
										{mp=2,Item=10124011,mpname="C�i Bang"},
										{mp=4,Item=10124012,mpname=" Nga My"},
										{mp=3,Item=10124013,mpname="Ph�i V� �ang"},
										{mp=5,Item=10124014,mpname=" Tinh T�c"},
										{mp=7,Item=10124015,mpname=" Thi�n S�n"},
										{mp=8,Item=10124016,mpname="Ph�i Ti�u Dao"},
										{mp=6,Item=10124017,mpname="Thi�n Long ph�i"},
										{mp=9,Item=0},
}

x210243_g_Stone = {id=30505122, num=20}
x210243_g_Stone2 = {id=30505135, num=20} --HD add
--**********************************
--������ں���
--**********************************
function x210243_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y Nh�n l�nh cao c�p th�i trang m�n ph�i" );
			AddText(sceneId, "  C� 1 v� l� h�nh gia �� ph�t hi�n 1 c�ch kinh ng�c, tr�n Ng�n Ngai Tuy�t Nguy�n c� 1 s� qu�i v�t tr�n ng߶i mang theo b� m�t c�a #Yquy�n nh�t k� c�a qu�i v�t#W. N�u c�c h� c� th� gi�p h�n t�m 20 quy�n #YNh�t k� c�a qu�i v�t#W, l� s� nh�n ���c 1 m�n cao c�p th�i trang m�n ph�i.#r sao ��y, c�c h� c� mu�n �i kh�ng ?" );
			AddNumText(sceneId, x210243_g_ScriptId,"бi", 8, 3);
			AddNumText(sceneId, x210243_g_ScriptId,"Hu�", 8, 4);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if GetNumText() == 3   then
		-- 0��������ǲ�������ȷ������
		local nMenpai = GetMenPai(sceneId,selfId)
		if nMenpai<0 or nMenpai>8   then
			BeginEvent(sceneId)
				AddText(sceneId, "  C�c h� v�n ch�a gia nh�p m�n ph�i n�o, ch� c� � t� c�a c�u ��i m�n ph�i m�i c� th� �i cao c�p th�i trang m�n ph�i." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 1�������������ǲ������㹻��ʯͷ
		local HaveAllItem = 0
		if (GetItemCount(sceneId, selfId, x210243_g_Stone.id) >= x210243_g_Stone.num)  then
			HaveAllItem = 1
		end
		
		--hd add
		if (GetItemCount(sceneId, selfId, x210243_g_Stone2.id) >= x210243_g_Stone2.num) then
			HaveAllItem = 1
		end
		--end hd add
		
		
		if HaveAllItem == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "  C�c h� c�n mang 20 quy�n Nh�t k� c�a qu�i v�t m�i c� th� �i cao c�p th�i trang m�n ph�i." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 2�������ҵ�������Ƭ�ǲ��Ƕ��ܹ�ɾ��
		local AllItemCanDelete = 0
		if (LuaFnGetAvailableItemCount(sceneId, selfId, x210243_g_Stone.id) < x210243_g_Stone.num) and (LuaFnGetAvailableItemCount(sceneId, selfId, x210243_g_Stone2.id) < x210243_g_Stone2.num)  then
			AllItemCanDelete = 1
		end
		
		
		
		
		if AllItemCanDelete == 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "    Kh�u tr� v�t ph�m tr�n ng߶i c�c h� th�t b�i, xin ki�m tra l�i ph�i ch�ng v�t ph�m �� b� kh�a ho�c v�t ph�m �ang trong tr�ng th�i giao d�ch." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 3�������������ǲ����пռ�Ž���
		local nItemId = 0
		local nMenpaiName = ""
		for i=1, 10  do
			if nMenpai == x210243_g_ItemId[i].mp  then
				nItemId = x210243_g_ItemId[i].Item
				nMenpaiName = x210243_g_ItemId[i].mpname
			end
		end
		
		if nItemId==0  then
			return
		end

	 	BeginAddItem(sceneId)
			AddItem( sceneId, nItemId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		local delret = 0
		if ret == 1  then
			if (LuaFnDelAvailableItem(sceneId, selfId, x210243_g_Stone.id, x210243_g_Stone.num) == 0 ) and (LuaFnDelAvailableItem(sceneId, selfId, x210243_g_Stone2.id, x210243_g_Stone2.num) == 0)then
				delret = 1
			end
			
			--end HD add
			if delret == 0  then
				AddItemListToHuman(sceneId,selfId)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
				
				-- ��ʾ���
				BeginEvent(sceneId)
					AddText(sceneId, "C�c h� �� ��t ���c" .. nMenpaiName .. " cao c�p th�i trang m�n ph�i." );
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				-- �����繫��
				local str = ""
				local rand = random(3)
				
				if rand == 1  then
					str = format("#cff99ccB�ng nhi�n! B�u tr�i u �m, m�i ng߶i kh�ng bi�t chuy�n g�, th� ra l� #{_INFOUSR%s} s� d�ng#G20 quy�n#Y [Nh�t k� c�a qu�i v�t] #cff99cc �i ���c #G %s cao c�p th�i trang m�n ph�i#cff99cc! ", GetName(sceneId,selfId), nMenpaiName)
				elseif rand == 2  then
					str = format("#cff99ccWoo! #{_INFOUSR%s} s� d�ng #G20 quy�n#Y [Nh�t k� c�a qu�i v�t]#cff99cc �i ���c #G %s cao c�p th�i trang m�n ph�i#cff99cc, m�c l�n ng߶i l�m ai c�ng ph�i nh�n 1 c�ch ng�c nhi�n! ", GetName(sceneId,selfId), nMenpaiName)
				else
					str = format("#cff99cc#{_INFOUSR%s} s� d�ng #G20 quy�n#Y [Nh�t k� c�a qu�i v�t] #cff99cc �i ���c#G %s cao c�p th�i trang m�n ph�i#cff99cc! Ch�c m�ng! Ch�c M�ng! Ch�c M�ng! ", GetName(sceneId,selfId), nMenpaiName)
				end
				
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
				
				-- �رմ���
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				return
			end
		end
		return

	end
	
	if GetNumText() == 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "#{function_help_094}" );
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

--**********************************
--�о��¼�
--**********************************
function x210243_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId, x210243_g_ScriptId,"Nh�n th�i trang cao c�p m�n ph�i", 6, 1);
	AddNumText(sceneId, x210243_g_ScriptId,"Gi�i thi�u nh�n th�i trang cao c�p m�n ph�i", 0, 2);

end

--**********************************
--����������
--**********************************
function x210243_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210243_OnAccept( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x210243_OnAbandon( sceneId, selfId )
end


--**********************************
--����Ƿ�����ύ
--**********************************
function x210243_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x210243_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--���������¼�
--**********************************
function x210243_OnEnterZone( sceneId, selfId, zoneId )
end

