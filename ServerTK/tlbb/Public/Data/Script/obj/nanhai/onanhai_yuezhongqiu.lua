--�Ϻ�NPC
--������
--��ͨ

--�ű���
x034003_g_ScriptId = 34003

--**********************************
--�¼��������
--**********************************
function x034003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th�i tr߾c, Ng�c ng� bang c�ng r�t t�t, ch� c� h�nh �ng h�i ki�u c�ng m� th�i, ch�a t�ng l�m vi�c g� qu� x�u. Nh�ng d�n d�n, ch�ng bi�t t� ��u, b�n nh�c �� b�t �u su�t ng�y g�y h�a, l�m sai c�n kh�ng ch�u nh�n, �i... th�t l� nghi�p ch߾ng...")
		
		-- �����������С����ס����������ĺ��ǡ���������񣬿����������õ���
		if IsHaveMission(sceneId,selfId,568) > 0 then
			-- �ж���������ǲ�������Ʒ�� 
			local itemCount
			itemCount = GetItemCount( sceneId, selfId, 40001039 )
			if itemCount < 1   then
				AddNumText(sceneId,x034003_g_ScriptId,"���c m�t mi�ng v� c�y gi�ng l�",7,666);
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x034003_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if	GetNumText()==666	then
		local itemCount
		itemCount = GetItemCount( sceneId, selfId, 40001039 )
		if itemCount < 1   then
			BeginAddItem( sceneId )
				AddItem( sceneId, 40001039, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				--��ʾ���ܽ�������
				Msg2Player(  sceneId, selfId,"#YH�nh trang nhi�m v�#W c�a c�c h� �� �y.", MSG2PLAYER_PARA )
			else
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
end


