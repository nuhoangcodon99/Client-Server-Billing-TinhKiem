--�������� ������һֻ����
--��ɫ�ȼ�С��10���͸�һֻ���ӣ�һ����ɫһ��
--MisDescBegin
--�ű���
x210218_g_ScriptId = 210218

--�����
x210218_g_MissionId = 458

--����Ŀ��npc
x210218_g_Name	="V�n Phi�u Phi�u " 

--�������
x210218_g_MissionKind = 13

--����ȼ�
x210218_g_MissionLevel = 1

--�Ƿ��Ǿ�Ӣ����
x210218_g_IfMissionElite = 0

--���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������**********************
--�����Ƿ��Ѿ����
x210218_g_IsMissionOkFail = 0		--�����ĵ�0λ

--�����Ƕ�̬**************************************************************

x210218_g_PetDataID = 3000

--�����ı�����
x210218_g_MissionName="Ta mu�n 1 con th�"
x210218_g_MissionInfo="���c r�i, nh�n ng߽i l� ng߶i m�i �n, cho ng߽i 1 con ti�u th�, ng߽i ph�i y�u th߽ng n�. "  --��������
x210218_g_MissionTarget="    G�i ta 1 ti�ng ch� Phi�u Phi�u. "		--����Ŀ��
x210218_g_ContinueInfo="��y l� con th� ta nu�i d�y ��ng y�u nh�t, ng߽i ph�i ch�m s�c n� c�n th�n. "		--δ��������npc�Ի�
x210218_g_MissionComplete="Ch�i vui v� � ��i L�. "					--�������npc˵���Ļ�

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210218_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	--��������ɹ��������ʵ��������������������Ͳ�����ʾ�������ټ��һ�αȽϰ�ȫ��
    if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
		return
	end
	
	ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210218_g_PetDataID, -1, 0) --���������һֻ����
	if ret == 1 then 
		--�¸����ڣ���ʾ���һЩ��
		BeginEvent(sceneId)
		AddText(sceneId,x210218_g_ContinueInfo)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		--�������
		MissionCom( sceneId,selfId, x210218_g_MissionId )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� kh�ng th� mang qu� nhi�u tr�n th�")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x210218_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ��������
  if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
   	return 
	end
  --����ѽӴ�����
  --else
  if IsHaveMission(sceneId,selfId,x210218_g_MissionId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,2,-1);
    --���������������
    elseif x210218_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,1,-1);
  end
end

--**********************************
--����������
--**********************************
function x210218_CheckAccept( sceneId, selfId )
	--��Ҫ8�����ܽ�
	if GetLevel( sceneId, selfId ) >= 8  then
		return 1
	else
		return 0
	end
end

--**********************************
--����
--**********************************
function x210218_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210218_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210218_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x210218_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x210218_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x210218_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210218_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210218_OnItemChanged( sceneId, selfId, itemdataId )
end
