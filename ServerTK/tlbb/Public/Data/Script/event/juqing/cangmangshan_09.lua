-- 200038

-- �������� ���� Ti�u Phong ��

--MisDescBegin
--�ű���
x200038_g_ScriptId = 200038

--�����
x200038_g_MissionId = 32

--ǰ�������
x200038_g_PreMissionId = 31

--Ŀ��NPC
x200038_g_Name	="Ti�u Phong"

--�������
x200038_g_MissionKind = 52

--��ng c�p nhi�m v� 
x200038_g_MissionLevel = 50

--��ng����ngTinhӢ����
x200038_g_IfMissionElite = 0

--������
x200038_g_MissionName="L�c Qu�n T� D�ch"
--��������
x200038_g_MissionInfo="#{Mis_juqing_0032}"
--M�c ti�u nhi�m v�
x200038_g_MissionTarget="#{Mis_juqing_Tar_0032}"		
--�ύʱnpcto� � ��
x200038_g_MissionComplete="  Gia Lu�t H�ng C� l�i nh�n th�y m�t tr�i, t�t c� �u d�a v�o s�c ngh�a � Ti�u Phong v� $N ��i hi�p. Hai v� xin nh�n m�t l�y c�a Gia Lu�t H�ng C�!"		

x200038_g_MoneyBonus=54000
x200038_g_exp=62400

x200038_g_RadioItemBonus={{id=10422007 ,num=1},{id=10422008,num=1},{id=10422009,num=1},{id=10422010,num=1}}

x200038_g_Custom	= { {id="�� h� t�ng Ti�u Phong v� Ho�ng Th�i Th�c quay v� tr�i B�c n�i Th߽ng Mang",num=1} }

--MisDescEnd

--**********************************
--������ں���
--**********************************
function x200038_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	
	if IsHaveMission(sceneId,selfId,x200038_g_MissionId) > 0 then
			--C�n ������ɲſ���
			local misIndex = GetMissionIndexByID(sceneId, selfId, x200038_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
			if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --����������
				BeginEvent(sceneId)
					AddText(sceneId,x200038_g_Name)
					AddText(sceneId,x200038_g_MissionComplete)
					AddText(sceneId,"#{M_MUBIAO}#r")
					AddText(sceneId,x200038_g_MissionTarget)
					AddMoneyBonus( sceneId, x200038_g_MoneyBonus )
					for i, item in x200038_g_RadioItemBonus do
						AddRadioItemBonus( sceneId, item.id, item.num )
					end
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x200038_g_ScriptId, x200038_g_MissionId)
		end
		
	elseif x200038_CheckAccept(sceneId,selfId) > 0 then

		BeginEvent(sceneId)
			AddText(sceneId, x200038_g_MissionName)
			AddText(sceneId, x200038_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId, x200038_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			for i, item in x200038_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x200038_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200038_g_ScriptId,x200038_g_MissionId)
	end	
end

--**********************************
--�о��¼�
--**********************************
function x200038_OnEnumerate( sceneId, selfId, targetId )

	-- ���ǰ������1û�����,��Tr� v�
	if IsMissionHaveDone(sceneId, selfId, x200038_g_PreMissionId) <= 0   then
		return
	end
	-- ����������Ѿ����,��Tr� v�
	if IsMissionHaveDone(sceneId, selfId, x200038_g_MissionId) > 0 then
   	return
	--Th�a m�n�����������
	elseif IsHaveMission(sceneId, selfId, x200038_g_MissionId) > 0 then

		if GetName(sceneId, targetId) == x200038_g_Name then
			--BeginEvent(sceneId)
				AddNumText(sceneId, x200038_g_ScriptId, x200038_g_MissionName,2,-1);
			--EndEvent()	
			DispatchEventList(sceneId, selfId, targetId)
		end
		
	--Th�a m�n�����������
  elseif x200038_CheckAccept(sceneId, selfId) > 0 then
		if GetName(sceneId, targetId) == x200038_g_Name then
			--BeginEvent(sceneId)
				AddNumText(sceneId, x200038_g_ScriptId, x200038_g_MissionName,1,-1);
			--EndEvent()
			DispatchEventList(sceneId, selfId, targetId)	
		end
  end
end

--**********************************
-- 
--**********************************
function x200038_OnLockedTarget( sceneId, selfId, targetId )

end

--**********************************
--���Ti�p th�����
--**********************************
function x200038_CheckAccept( sceneId, selfId )
	-- ������to� � ������ng,����ﵽ20c�p����,���������ǰ������
	
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200038_g_MissionId) > 0 ) then
		return 0
	end

	if GetLevel(sceneId, selfId) < x200038_g_MissionLevel   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200038_g_PreMissionId ) < 1   then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200038_OnAccept( sceneId, selfId, targetId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x200038_g_MissionId) > 0   then
		return
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x200038_g_MissionId, x200038_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: L�c Qu�n T� D�ch" , MSG2PLAYER_PARA )
	
	-- T�i ��������m�t c�i����,
	if LuaFnGetCopySceneData_Param(sceneId, 8) < 10  then
		LuaFnSetCopySceneData_Param(sceneId, 8, 10)
		LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	end

end

--**********************************
--����
--**********************************
function x200038_OnAbandon( sceneId, selfId )
  --������npc˲�ƻ�ԭ��λ��
  DelMission(sceneId, selfId, x200038_g_MissionId)
  
end

--**********************************
--����
--**********************************
function x200038_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200038_g_Name)
		AddText(sceneId,x200038_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200038_g_MissionTarget)
		AddMoneyBonus( sceneId, x200038_g_MoneyBonus )
		for i, item in x200038_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200038_g_ScriptId, x200038_g_MissionId)

end

--**********************************
--�����ng������ύ
--**********************************
function x200038_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200038_g_MissionId)
	
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete > 0 then
		return 1
	else
		return 0
	end
	
end

--**********************************
--�ύ
--**********************************
function x200038_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- �����ng����ngTh�a m�nHo�n t�t nhi�m v�to� � ����
	if x200038_CheckSubmit(sceneId, selfId) < 1 then 
		return
	end

	BeginAddItem(sceneId)
	for i, item in x200038_g_RadioItemBonus do
		if item.id == selectRadioId then

			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--���������
	if ret < 1 then
		--������û�мӳɹ�
		BeginEvent(sceneId)
			strText = "Nhi�m v� th�t b�i!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)
	
	--���������
	AddMoney(sceneId,selfId, x200038_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId, x200038_g_exp)

	DelMission( sceneId,selfId, x200038_g_MissionId )
	--���������Ѿ�����ɹ�
	MissionCom( sceneId,selfId, x200038_g_MissionId )
	Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: L�c Qu�n T� D�ch",MSG2PLAYER_PARA )

	Msg2Player( sceneId, selfId,"C�c h� �� ho�n th�nh xong m�t lo�t nhi�m v�#G Th߽ng Mang S�n#W",MSG2PLAYER_PARA )
	local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
	LuaFnSendMailToGUID(sceneId, selfGuid, "C�c h� �� ho�n th�nh xong 1 lo�t nhi�m v�#G Th߽ng Mang S�n #W. Sau khi ��t t�i c�p 60, t�i t�m Tri�u Thi�n S� � ��i L�, M� h� th�ng nhi�m v� #Gn�i C� L�i #W")

	-- ��ɲ�ãɽ����,��10 �i�m���� �i�m
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
	
	-- ֪ͨ���,����������ѭ��������
	-- ����T�i ����ȥAA��to� � [bb,cc]�ҵ�DD,Ti�p th�DDѭ������.
	local strText1 = "#{LOOTMISSION_MAIL_09}"
	LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
	
	BeginEvent(sceneId)
		AddText(sceneId,"#{LOOTMISSION_INFO_04}");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

function x200038_OnHumanDie(sceneId, selfId)

end

--**********************************
--��ʱ�¼�
--**********************************
function x200038_OnTimer(sceneId,selfId)

end
