----------------
--MisDescBegin
--�ű���
x600048_g_ScriptId	= 600048

--��������NPC����
x600048_g_Position_X=147
x600048_g_Position_Z=96
--���񽻸�npc
x600048_g_AccomplishNPC_Name="бng Ph� Dung "
--�����
x600048_g_MissionId			  = 1141
--����Ŀ��npc
x600048_g_Name 					  = "бng Ph� Dung "
--�������
x600048_g_MissionKind			= 50 --��ҳ���
--����ȼ�
x600048_g_MissionLevel		= 10000
--�Ƿ��Ǿ�Ӣ����
x600048_g_IfMissionElite	= 0
--�����Ƿ��Ѿ����
x600048_g_IsMissionOkFail	= 0		--��������ĵ�0λ
--�����ı�����
x600048_g_MissionName			= "Chi vi�n tri�u ��nh : nhi�m v� Nh�n Linh"
--��������
x600048_g_MissionInfo			= ""
--����Ŀ��
x600048_g_MissionTarget		= "    Thu th�p #YNh�n Linh #W C�c h� c� th� �n  #GTh�i H� Nguy�n Хu T�#W v� #GK�nh H� Chi ��o D�#W. Nh�n nhi�m v� v� ho�n th�nh giao l�c 20:00 c�ng ng�y"
--δ��������npc�Ի�
x600048_g_ContinueInfo		= ""
--�������npc˵�Ļ�
x600048_g_MissionComplete	= ""

-- ����������,���ݶ�̬ˢ��,ռ����������ĵ�1λ
x600048_g_Custom	= { {id="�� t�m ���c : Nh�n Linh",num=1} }
--MisDescEnd
----------------

--**********************************
--����
--**********************************
function x600048_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 1 )
end

--**********************************
--�ύ
--**********************************
function x600048_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 1 )	
end

--**********************************
--����
--**********************************
function x600048_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 1 )	
end
