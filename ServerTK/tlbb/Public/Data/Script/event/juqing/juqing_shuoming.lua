-- 200100
-- ����ѭ������to� � � �i�m�

x200100_g_ScriptId = 200100
x200100_g_Info = {	
		{name="M�c Uy�n Thanh",  mis=8,s1="#{help_JQXH_001}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}", s4="#{help_JQXH_018}"},
		{name="Chung Linh",    mis=8,s1="#{help_JQXH_002}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}", s4="#{help_JQXH_031}"},
		{name="�o�n Di�n Kh�nh",  mis=8,s1="#{help_JQXH_003}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}", s4="#{help_JQXH_032}"},
		{name="C�u Ma Tr�",  mis=37,s1="#{help_JQXH_004}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_040}"},
		{name="Nguy�n Tinh Tr�c",  mis=15,s1="#{help_JQXH_005}" ,s2="#{help_JQXH_020}",s3="#{help_JQXH_021}",s4="#{help_JQXH_034}"},
		{name="A B�ch",    mis=15,s1="#{help_JQXH_006}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_035}"},
		{name="V߽ng Phu Nh�n",  mis=15,s1="#{help_JQXH_007}" ,s2="#{help_JQXH_022}",s3="#{help_JQXH_023}",s4="#{help_JQXH_036}"},
		{name="A T�",    mis=32,s1="#{help_JQXH_008}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_037}"},
		{name="H�ch Li�n Thi�t Th�",mis=45,s1="#{help_JQXH_009}" ,s2="#{help_JQXH_024}",s3="#{help_JQXH_025}",s4="#{help_JQXH_041}"},
		{name="M� Dung Ph�c",  mis=37,s1="#{help_JQXH_010}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_038}"},
		{name="�o�n Ch�nh Thu�n",  mis=8,s1="#{help_JQXH_011}" ,s2="#{help_JQXH_026}",s3="#{help_JQXH_027}", s4="#{help_JQXH_033}"},
		{name="Gia Lu�t ��i Th�ch",mis=23,s1="#{help_JQXH_012}" ,s2="#{help_JQXH_015}",s3="#{help_JQXH_017}",s4="#{help_JQXH_019}"},
		{name="Di�p Nh� N߽ng",  mis=37,s1="#{help_JQXH_013}" ,s2="#{help_JQXH_028}",s3="#{help_JQXH_029}",s4="#{help_JQXH_039}"}
}
--ľ����			��i L�     
--��Linh        ����ɽ   
--������      ��i L� 
--C�u Ma Tr�      ��n Ho�ng     
--Nguy�n Tinh Tr�c      K�nh K� 
--����        T� Ch�u     
--������      T� Ch�u   
--����        L�c D߽ng     
--��������    L�c D߽ng  
--M� Dung Ph�c      T� Ch�u     
--������      ��i L�  
--Ү�ɴ�ʯ    L�c D߽ng     
--Ҷ����      ��i L�     

--(���)20c�p��ʼto� � NPC 8 : ľ���塢��Linh�������졢�o�n D�(������)
--(����)30c�p��ʼto� � NPC 15: A Ch�u(Nguy�n Tinh Tr�c)�����̡�������(������)
--(����)40c�p��ʼto� � NPC 23: Ti�u Phong(Ү�ɴ�ʯ)
--(��ã)50c�p��ʼto� � NPC 32: ����
--(�޹�)60c�p��ʼto� � NPC 37: M� Dung Ph�c��H� Tr�c(Ҷ����)��C�u Ma Tr�
--(m�t Ʒ)70c�p��ʼto� � NPC 45: ��������(��������)

--**********************************
--�о��¼�
--**********************************
function x200100_OnEnumerate( sceneId, selfId, targetId )

	AddNumText(sceneId, x200100_g_ScriptId,"Ta l� ai ?",8,1);
	
	-- ��������ؾ��������,���ܿ���C�i n�y ѡ��
	local szNpcName = GetName(sceneId, targetId)
	local nIndex = 0
	for i=1,13   do
		if szNpcName == x200100_g_Info[i].name   then
			nIndex = i
		end
	end
	
	if (IsMissionHaveDone(sceneId,selfId,x200100_g_Info[nIndex].mis) > 0 ) then
		AddNumText(sceneId, x200100_g_ScriptId,"Gi� tr� quan h� l� g� ?",11,2);
		AddNumText(sceneId, x200100_g_ScriptId,"Nhi�m v� k�ch t�nh tu�n ho�n l� g� ?",11,3);
	  AddNumText(sceneId, x200100_g_ScriptId,"#{help_JQXH_030}",11,4);
	end
	
	if (GetLevel(sceneId, selfId) >= 20) then
		AddNumText(sceneId, x200100_g_ScriptId,"#{AQFC_090115_12}",11,5);	  
	end
	
end

--**********************************
--������ں���
--**********************************
function x200100_OnDefaultEvent( sceneId, selfId, targetId )
	local szNpcName = GetName(sceneId, targetId)
	local nIndex = 0
	for i=1,13   do
		if szNpcName == x200100_g_Info[i].name   then
			nIndex = i
		end
	end
	
	if GetNumText() == 1  then
		if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y Ta l� ai ?" )
				AddText( sceneId, x200100_g_Info[nIndex].s1 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
				
	elseif GetNumText() == 2  then
		if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y Gi� tr� quan h� l� g� ?" )
				AddText( sceneId, x200100_g_Info[nIndex].s3 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	
	elseif GetNumText() == 3  then
		if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y Nhi�m v� k�ch t�nh tu�n ho�n l� g� ? " )
				AddText( sceneId, x200100_g_Info[nIndex].s2 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
			
	elseif GetNumText() == 4  then
      if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y#{help_JQXH_030}" )
				AddText( sceneId, x200100_g_Info[nIndex].s4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
  elseif GetNumText() == 5  then--[tx43452]
		BeginEvent( sceneId )
			AddText( sceneId, "#{AQFC_090115_12}" )
			AddText( sceneId, "#{AQFC_090115_15}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )--[/tx43452]				
	end
	
end
