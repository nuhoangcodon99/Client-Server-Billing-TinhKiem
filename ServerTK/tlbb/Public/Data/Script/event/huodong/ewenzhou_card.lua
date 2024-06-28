--�����
--������Ϸ�ƹ㿨Ƭ

x808069_g_ScriptId = 808069

function x808069_WenZhouCard(sceneId,selfId,targetId)
	--�Ƿ��Ѿ���ȡ�������ƹ㽱��
	if GetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard ) == 1 then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� �� nh�n ph�n th߷ng ho�t �ng, kh�ng th� nh�n th�m" )
		return
	end
	
	--�Ƿ����20��
	--if GetLevel( sceneId, selfId ) < 20 then
	--	x808069_NotifyFailBox( sceneId, selfId, targetId, "    �����ĵȼ�����20����������ȡ�������" )
	--	return
	--end
	
	--��鱳���ռ�
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    T�i � kh�ng �� ch� tr�ng" )
		return
	end

	--�����뿨�Ž���
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2007 )		
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x808069_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�о��¼�
--**********************************
function x808069_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId, x808069_g_ScriptId, "Nh�n th߷ng �n Ch�u Khuy�n M�i", 1, 1 )
end

--**********************************
--������ں���
--**********************************
function x808069_OnDefaultEvent( sceneId, selfId, targetId )
	local TextNum = GetNumText()

	if TextNum == 1 then
		x808069_WenZhouCard( sceneId, selfId, targetId )
	end
end
