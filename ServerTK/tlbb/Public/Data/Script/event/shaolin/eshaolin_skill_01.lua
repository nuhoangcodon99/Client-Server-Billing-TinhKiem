-- 212140
-- �������� ���־���

-- ��ҵȼ����ڵ���30����
-- ��վ�������������Ħ�ľ��������ľ������Ⱦ��ķ��ȼ�����25������������ķ��ȼ�����30������������ڵ㡰�������񡱵�ʱ���ٽ�����ʾ��

--MisDescBegin
--�ű���
x212140_g_ScriptId = 212140

--��������NPC����
x212140_g_Position_X=217
x212140_g_Position_Z=255
x212140_g_SceneID=2
x212140_g_AccomplishNPC_Name="V߽ng Thi�u "

--�����
x212140_g_MissionId = 961

--Ŀ��NPC
x212140_g_Name	="V߽ng Thi�u "

--�������
x212140_g_MissionKind = 20

--����ȼ�
x212140_g_MissionLevel = 30

--�Ƿ��Ǿ�Ӣ����
x212140_g_IfMissionElite = 0

--������
x212140_g_MissionName="Chuy�n c� Thi�u L�m"
x212140_g_MissionInfo="#{Mis_shaolin_961}"
x212140_g_MissionTarget="T�i #Gth�nh ��i L� Tu V�n ��i#W t�m #RV߽ng Thi�u #W#{_INFOAIM217,255,2,V߽ng Thi�u}."
x212140_g_MissionComplete="  C�c h� l� � t� Thi�u L�m �, ph߽ng tr��ng c�a c�c h� Huy�n T� ��i s� v�n kh�a ch� ?"

x212140_g_MoneyBonus=1000
x212140_g_exp=2000

x212140_g_Custom	= { {id="�� t�m ���c V߽ng Thi�u",num=1} }
x212140_g_IsMissionOkFail = 0

--MisDescEnd

x212140_g_Xinfa = {{id=1,limit=10,name="Kim Cang Kinh"},
									 {id=2,limit=25,name="Ph�p Hoa Kinh"},
									 {id=3,limit=30,name="��i Quang Minh Kinh"},
									 {id=4,limit=25,name="��t Ma T�m Kinh"},
									 {id=5,limit=25,name="Long Th� T�m Kinh"},
									 {id=6,limit=25,name="Th�ch Ca Kinh"},
									 }
x212140_g_Menpai = 0

--**********************************
--������ں���
--**********************************
function x212140_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ��������
	if (IsMissionHaveDone(sceneId,selfId,x212140_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212140_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212140_g_Name then
			x212140_OnContinue( sceneId, selfId, targetId )
		end
	
	--���������������
	elseif x212140_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212140_g_Name then
			--�����������ʱ��ʾ����Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212140_g_MissionName)
				AddText(sceneId,x212140_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212140_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212140_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212140_g_ScriptId,x212140_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x212140_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ��������
	if IsMissionHaveDone(sceneId,selfId,x212140_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212140_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212140_g_Name then
			AddNumText(sceneId, x212140_g_ScriptId,x212140_g_MissionName,2,-1);
		end
	--���������������
	elseif x212140_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212140_g_Name then
			AddNumText(sceneId,x212140_g_ScriptId,x212140_g_MissionName,1,-1);
		end
	end

end

--**********************************
--����������
--**********************************
function x212140_CheckAccept( sceneId, selfId )
	-- 1���������ǲ����Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212140_g_MissionId) > 0 ) then
		return 0
	end
		
	-- �ȼ����
	if GetLevel(sceneId, selfId) < x212140_g_MissionLevel then
		return 0
	end
	
	-- ���ɼ��
	if GetMenPai(sceneId, selfId) ~= x212140_g_Menpai  then
		return 0
	end
	
	return 1
end

--**********************************
--����
--**********************************
function x212140_OnAccept( sceneId, selfId, targetId )
	if x212140_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- �����ҵ��ķ��ǲ��Ǵﵽ��Ҫ��ǰ�����ķ��ȼ����ڵ���10����
	if x212140_CheckAllXinfaLevel(sceneId, selfId) == 0  then
		x212140_DispatchXinfaLimit(sceneId, selfId, targetId)
		return
	end

	--������������б�
	local ret = AddMission(sceneId,selfId, x212140_g_MissionId, x212140_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = "#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i"
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = "#Y Ti�p nh�n nhi�m v�: Chuy�n c� Thi�u L�m."
	Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212140_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--����
--**********************************
function x212140_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
  DelMission( sceneId, selfId, x212140_g_MissionId )
end

--**********************************
--����
--**********************************
function x212140_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
  BeginEvent(sceneId)
		AddText(sceneId,x212140_g_MissionName)
		AddText(sceneId,x212140_g_MissionComplete)
		AddMoneyBonus( sceneId, x212140_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212140_g_ScriptId,x212140_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x212140_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212140_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212140_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212140_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x212140_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212140_g_exp)
		DelMission( sceneId, selfId, x212140_g_MissionId )
		MissionCom( sceneId, selfId, x212140_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Chuy�n c� Thi�u L�m ",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212140_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212140_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212140_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����ķ��ǲ���������
--**********************************
function x212140_CheckAllXinfaLevel(sceneId, selfId)
	for i, xinfa in x212140_g_Xinfa do
		if LuaFnGetXinFaLevel(sceneId, selfId, xinfa.id) < xinfa.limit  then
			return 0
		end
	end
	return 1
end

--**********************************
--�������ʾ�ķ����
--**********************************
function x212140_DispatchXinfaLimit(sceneId, selfId, targetId)
	
	BeginEvent(sceneId)
		AddText(sceneId,"#Y" .. x212140_g_MissionName)
		AddText(sceneId,"  ��ng c�p t�m ph�p c�a c�c h� kh�ng �� r�i, vi s� l�m sao d�m � c�c h� m�o hi�m �i t�m V߽ng Thi�u ���c ?")
		AddText(sceneId,"��ng c�p t�m ph�p c�a c�c h�:")
		local str
		local bOk = 0
		for i, xinfa in x212140_g_Xinfa do
			if LuaFnGetXinFaLevel(sceneId, selfId, xinfa.id) < xinfa.limit  then
				str = "[��ng c�p kh�ng ��]"
				bOk = 0
			else
				str = "[Ho�n th�nh]"
				bOk = 1
			end
			local str1 = "    " .. xinfa.name .. ":" .. tostring(LuaFnGetXinFaLevel(sceneId, selfId, xinfa.id)) .. "/" .. xinfa.limit .. str
			if bOk == 1  then
				str1 = "#Y" .. str1
			else
				str1 = "#R" .. str1
			end
			AddText(sceneId,str1)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end
