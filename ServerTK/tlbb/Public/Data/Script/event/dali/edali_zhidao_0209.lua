--ѧϰ����
--�Ŵ����ɼ��ܴ���

--MisDescBegin
--�ű���
x210209_g_ScriptId = 210209

--�����
x210209_g_MissionId = 449




--�������
x210209_g_MissionKind = 13

--������߱��
x210209_g_ItemId = 40002108

--����ȼ�
x210209_g_MissionLevel = 1

--�Ƿ��Ǿ�Ӣ����
x210209_g_IfMissionElite = 0

--������
x210209_g_MissionName="K� n�ng h�c t�p"
x210209_g_MissionInfo="  H�y �i t�m � t� c�u ��i m�n ph�i � h�c k� n�ng n�y"
x210209_g_MissionTarget="K� n�ng h�c t�p"
x210209_g_MissionComplete="  C�c h� �� c�m theo th� gi�i thi�u t�i, v�y ta s� d�y cho c�c h� 1 k� n�ng t�n th�, ph�i h�c cho t�t, luy�n nhi�u m�i ���c"
x210209_g_Name_0="Tri�u Thi�n S� "
x210209_g_Name_1="Tu� D�ch "
x210209_g_Name_2="Th�ch B�o "
x210209_g_Name_3="Gi�n Ninh "
x210209_g_Name_4="Tr߽ng Ho�ch "
x210209_g_Name_5="L� Tam N߽ng "
x210209_g_Name_6="H�i Phong T� "
x210209_g_Name_7="Ph� Tham "
x210209_g_Name_8="Tr�nh Thanh S߽ng "
x210209_g_Name_9="��m ��i T� V� "

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210209_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName(sceneId,targetId) ~= x210209_g_Name_0 then
		x210209_OnContinue( sceneId, selfId, targetId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x210209_OnEnumerate( sceneId, selfId, targetId )
	
	if x210209_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) == x210209_g_Name_1 then
			if	HaveSkill(  sceneId, selfId, 241)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_2	 then
			if	HaveSkill(  sceneId, selfId, 242)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_3	 then
			if	HaveSkill(  sceneId, selfId, 243)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_4	then
			if	HaveSkill(  sceneId, selfId, 244)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_5 then
			if	HaveSkill(  sceneId, selfId, 245)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_6 then
			if	HaveSkill(  sceneId, selfId, 246)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_7 then
			if	HaveSkill(  sceneId, selfId, 247)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_8 then
			if	HaveSkill(  sceneId, selfId, 248)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_9 then
			if	HaveSkill(  sceneId, selfId, 249)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		end
	end
	
	if GetName(sceneId,targetId) == x210209_g_Name_1 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch Thi�u L�m ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng ph�i Thi�u L�m",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng Thi�u L�m",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Ch�a c� Thi�u L�m",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_2	 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch Minh Gi�o ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng chi�n �u Minh Gi�o",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng Minh Gi�o",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"��i Quang Minh ��nh",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_3	 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch C�i Bang ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng chi�n �u C�i Bang",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng C�i Bang",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"C�i Bang T�ng �� ",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_4	then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch V� �ang ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng ph�i V� �ang",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng V� �ang",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"V� �ang Ti�n Phong",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_5 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch Nga My ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng ph�i Nga My",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng Nga My",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Nga My Thi�n h� t�",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_6 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch Tinh T�c ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng ph�i Tinh T�c",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng Tinh T�c",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Tinh T�c Xu�n Thu",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_7 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l�ch Thi�n Long ph�i",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng ph�i Thi�n Long",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng Thi�n Long",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Thi�n Long Phong T�nh",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_8 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Nguy�n do c�a ph�i Thi�n S�n",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng ph�i Thi�n S�n",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Уc tr�ng cu�c s�ng Thi�n S�n",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Phi�u Di�u Thi�n S�n",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_9 then
		--������ɽ���
		AddNumText(sceneId, x210209_g_ScriptId,"Xu�t x� c�a ph�i Ti�u Dao",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Chi�n �u �c s�c c�a ph�i Ti�u Dao",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Cu�c s�ng �c s�c c�a ph�i Ti�u Dao",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"L�ng Ba Ti�u Dao",11,13);
	end

end

--**********************************
--����������
--**********************************
function x210209_CheckAccept( sceneId, selfId )
	--��Ҫ�е��߲��ܽ�
	if	HaveItemInBag ( sceneId, selfId, x210209_g_ItemId)>0	then
		return 1
	else
		return 0
	end
end

--**********************************
--����
--**********************************
function x210209_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210209_g_MissionId, x210209_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: k� n�ng h�c t�p",MSG2PLAYER_PARA )
end

--**********************************
--����
--**********************************
function x210209_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
    DelMission( sceneId, selfId, x210209_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210209_OnContinue( sceneId, selfId, targetId )
    --�ύ����ʱ��˵����Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210209_g_MissionName)
		AddText(sceneId,x210209_g_MissionComplete)
		AddText(sceneId,"C�c h� s� ���c h�c 1 k� n�ng m�i")
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210209_g_ScriptId,x210209_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x210209_CheckSubmit( sceneId, selfId, selectRadioId )
	if	HaveItemInBag (  sceneId, selfId, x210209_g_ItemId)==1	then
		return 1
	else
		return 0
	end
end

--**********************************
--�ύ
--**********************************
function x210209_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210209_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		DelMission( sceneId, selfId, x210209_g_MissionId )
		MissionCom( sceneId, selfId, x210209_g_MissionId )
		if  GetName(sceneId,targetId) == x210209_g_Name_1	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 241) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 241)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Thi�u L�m: Ngo�i c�ng h� th�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_2	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 242) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 242)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Minh Gi�o: Ra s�c c�ng k�ch"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_3	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 243) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 243)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� C�i Bang: C�ng k�ch Y�u Hi�m"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_4	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 244) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 244)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� V� �ang: C�ng k�ch N�i K�nh"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_5	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 245) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 245)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Nga My: Tr� li�u s� c�p"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_6	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 246) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 246)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Tinh T�c: N�i c�ng h� th�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_7	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 247) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 247)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Thi�n Long: C�ng k�ch y�u �i�m"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_8	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 248) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 248)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Thi�n S�n: �nh еn s� c�p"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_9	then
			--�ж�����ǲ����Ѿ�ѧ����������ܣ����˾Ͳ�����ѧϰ��
			if  HaveSkill(sceneId, selfId, 249) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 249)
			BeginEvent(sceneId)
				strText = "Ng߽i �� h�c ���c k� n�ng m�i: k� n�ng T�n th� Thi�u L�m: B�ng Ch�y C�m B�y"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		--�۳�������Ʒ
		DelItem( sceneId, selfId, x210209_g_ItemId, 1 )
	end
	Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�: k� n�ng h�c t�p",MSG2PLAYER_PARA )
end

--**********************************
--ɱ����������
--**********************************
function x210209_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210209_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210209_OnItemChanged( sceneId, selfId, itemdataId )
end
