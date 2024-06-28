--̫��NPC
--�췴����
--��ͨ

--�ű���
x005112_g_ScriptId	= 005112

--**********************************
--�¼��������
--**********************************
function x005112_OnDefaultEvent( sceneId, selfId,targetId )
	
	x005112_UpdateEventList( sceneId, selfId, targetId )
	
	
end


--**********************************
--�¼��б�
--**********************************
function x005112_UpdateEventList( sceneId, selfId, targetId )
	
	local nYaoDingCount = GetItemCount(sceneId, selfId, 40004415);
	
	if nYaoDingCount <= 0 then
		BeginEvent(sceneId)

			AddText(sceneId,"Linh d��c �� ch� luy�n th�nh c�ng, ch� c� ng߶i luy�n ���c m�i c� linh d��c - ��i ho�n �n.")
		
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif nYaoDingCount >= 1 then
	
		local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 40004415);
				
		local actId = 36;
		
		local status = GetActivityParam( sceneId, actId, 0 );
				
		local YaoDing_LianYao_TimeCur = GetActivityParam( sceneId, actId, 4 );	
		local YaoDing_LianYao_TimeItem = GetBagItemParam( sceneId, selfId, nItemBagIndex, 3, 2 );
		
		if YaoDing_LianYao_TimeCur ~= YaoDing_LianYao_TimeItem then
			DelItem(sceneId, selfId, 40004415, 1)
			return 0;
		end
		
		BeginEvent(sceneId)

			AddText(sceneId,"Linh d��c - ��i ho�n �n �� ch� luy�n th�nh c�ng, xin h�i c�c h� li�u mu�n nh�n b�y gi�?")
			AddNumText(sceneId, x005112_g_ScriptId, "Nh�n ��i ho�n �n", 2, 0)

		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	
	end 
	
end


--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x005112_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	GetNumText()==0 then
	
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x808004_MsgBox( sceneId, selfId, targetId, "Kh�ng gian trong H�nh trang c�a c�c h� kh�ng ��. Ch�nh l� xong h�y t�i t�m t�i h�." )
			return 0;
		end
		
		
		if TryRecieveItem( sceneId, selfId, 30505076, 1 ) >= 0 then
			str		= "#YC�c h� �� nh�n ���c "..GetItemName( sceneId, 30505076 ).."."
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x005112_NotifyTip( sceneId, selfId, str )
			
			DelItem(sceneId, selfId, 40004415, 1)
			
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� c� ���c ��i ho�n �n r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			LuaFnDeleteMonster(sceneId, targetId)
			
			--ͳ����Ϣ
			local guidSelf = 
			LuaFnAuditHDXianCaoZhengDuo(sceneId, selfId, "S� d�ng ��i Ho�n �an th�nh c�ng!");

		end		
		
		
	end
	
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x005112_NotifyTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
