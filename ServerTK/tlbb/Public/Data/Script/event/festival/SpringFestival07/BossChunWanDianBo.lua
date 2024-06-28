--BOSS����㲥�ű�

--�ű���
x050044_g_ScriptId = 050044

--�������ؽű��ű���....
x050044_g_MainScriptId = 050030

--��ͨ�㲥ȯ��Ŀ��....
x050044_g_ChapterTblA = {

	[1] = { id=2,  name="Ca kh�c :  H߾ng thi�n t�i t� ng� b�ch ni�n"				},
	[2] = { id=3,  name="Ca kh�c :  B�o v� tam li�n ho�n"						},
	[3] = { id=5,  name="Ca kh�c :  Ki�n khang ca"								},
	[4] = { id=6,  name="Ti�u ph�m : X� nga v߽ng ��ch c� s�"					},
	[5] = { id=8,  name="Ca kh�c :  Song ti�t c�n"								},
	[6] = { id=10, name="Ti�u ph�m : Nh�t ki�n chung t�nh"							}

}

--�߼��㲥ȯ��Ŀ��....
x050044_g_ChapterTblB = {

	[1] = { id=2,  name="Ca kh�c :  H߾ng thi�n t�i t� ng� b�ch ni�n"				},
	[2] = { id=3,  name="Ca kh�c :  B�o v� tam li�n ho�n"						},
	[3] = { id=5,  name="Ca kh�c :  Ki�n khang ca"								},
	[4] = { id=6,  name="Ti�u ph�m : X� nga v߽ng ��ch c� s�"					},
	[5] = { id=7,  name="V� ��o : в b� v�"								},
	[6] = { id=8,  name="Ca kh�c :  Song ti�t c�n"								},
	[7] = { id=10, name="Ti�u ph�m : Nh�t ki�n chung t�nh"							},
	[8] = { id=11, name="Ca kh�c :  Ch�ng ta l� nh�ng b�o v�t c�c ph�m"	}

}

--��ͨ�㲥ȯID....
x050044_g_TicketIdA = 30900046

--�߼��㲥ȯID....
x050044_g_TicketIdB = 30900047


--**********************************
--�¼��������
--**********************************
function x050044_OnDefaultEvent( sceneId, selfId,targetId )

	local NumText = GetNumText()

	if NumText == 0	then

		--��ʾ��ͨ�㲥ȯ��Ŀ�б�....
		BeginEvent(sceneId)
			AddText(sceneId,"#{CWDB_20080225_02}")
			local ChapterCount = getn( x050044_g_ChapterTblA )
			for i=1, ChapterCount do
				AddNumText( sceneId, x050044_g_ScriptId, x050044_g_ChapterTblA[i].name, 6, i+100 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 1	then

		--��ʾ�߼��㲥ȯ��Ŀ�б�....
		BeginEvent(sceneId)
			AddText(sceneId,"#{CWDB_20080225_03}")
			local ChapterCount = getn( x050044_g_ChapterTblB )
			for i=1, ChapterCount do
				AddNumText( sceneId, x050044_g_ScriptId, x050044_g_ChapterTblB[i].name, 6, i+200 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

	if NumText > 200 then

		--ʹ�ø߼��㲥ȯ�㲥��Ŀ....
		x050044_DianBo( sceneId, selfId, targetId, 2, NumText - 200 )

	elseif NumText > 100 then

		--ʹ����ͨ�㲥ȯ�㲥��Ŀ....
		x050044_DianBo( sceneId, selfId, targetId, 1, NumText - 100 )

	end

end


--**********************************
--�о��¼�
--**********************************
function x050044_OnEnumerate( sceneId, selfId, targetId )
	local strGUID = LuaFnGetGUID( sceneId, selfId )
	if strGUID == 1010000001 then
		AddNumText( sceneId, x050044_g_ScriptId, "Ph� th�ng �i�m b� kho�n", 6, 0 )
		AddNumText( sceneId, x050044_g_ScriptId, "Cao c�p �i�m b� kho�n", 6, 1 )
	end
end


--**********************************
--�㲥ָ����Ŀ....
--**********************************
function x050044_DianBo( sceneId, selfId, targetId, type, idx )

	--��⵱ǰ�Ƿ��ڲ��Ž�Ŀ....
	if 1 == CallScriptFunction( x050044_g_MainScriptId, "IsChapterPlaying", sceneId ) then
		BeginEvent(sceneId)
			AddText( sceneId, "#{CWDB_20080225_04}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	local ChapterData = nil
	if type == 1 then
		ChapterData = x050044_g_ChapterTblA[idx]
	elseif type == 2 then
		ChapterData = x050044_g_ChapterTblB[idx]
	end
	if not ChapterData then
		return
	end

	local needItemId = -1
	if type == 1 then
		needItemId = x050044_g_TicketIdA
	elseif type == 2 then
		needItemId = x050044_g_TicketIdB
	end

	local needItemName = "#{_ITEM"..needItemId.."}"
	local msgNoItem = "C�c h� c�n c� "..needItemName.." v� xem ti�t m�c l� h�i"

	--����Ƿ��е㲥����....
	if LuaFnGetAvailableItemCount(sceneId, selfId, needItemId) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--ɾ��ǰ��ȡ���ߵ�Transfer....
	local itemPos = GetItemBagPos( sceneId, selfId, needItemId, 1 )
	if itemPos < 0 then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	local needItemTransfer = GetBagItemTransfer(sceneId,selfId,itemPos)

	--ɾ���㲥����....
	if 1 ~= LuaFnDelAvailableItem( sceneId, selfId, needItemId, 1 ) then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--�㲥....
	CallScriptFunction( x050044_g_MainScriptId, "PlayChapter", sceneId, ChapterData.id )

	--����....
	local PlayerName = GetName(sceneId, selfId)
	local str
	if type == 1 then
		str = format( "#{_INFOUSR%s}#P �� s� d�ng #{_INFOMSG%s}#P y�u c�u c�c BOSS mua h�t ch�c m�ng n�m m�i, h�y nhanh ch�ng t�i xem ti�t m�c kh�ng th� b� qua !!!", PlayerName, needItemTransfer )
	elseif type == 2 then
		str = format( "#{_INFOUSR%s}#P �� s� d�ng #{_INFOMSG%s}#P y�u c�u c�c BOSS mua h�t ch�c m�ng n�m m�i, h�y nhanh ch�ng t�i xem ti�t m�c kh�ng th� b� qua !!!", PlayerName, needItemTransfer )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

	--�رնԻ���....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end
