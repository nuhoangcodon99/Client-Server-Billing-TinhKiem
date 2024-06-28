--Script do all action (�i�u v�n + Ng�c th�i trang)

--***************************************************************************************************************************--
--*  C� ch� g�n �i�u v�n (S�i):                                                                                             *--
--*    M�i l�n c� s� thay �i ngo�i c�nh hay c�c thao t�c th�o l�p trang b� tr�n ng߶i, h�m RefreshEquip s� ���c g�i �n.   *--
--*    Ta ch� c�n b�t s� ki�n n�y v� truy�n v� Server b�o c�o c� s� l�m m�i trang b� tr�n ng߶i.                            *--
--*    Khi �� Server s� check Creator c�a item theo Pos tr�n ng߶i ��nh s� t� 100 �n 118, v� add impact                    *--
--*  Thao t�c k�t th�c.                                                                                                     *--
--***************************************************************************************************************************--

--******************--
x000550_g_scriptId = 000550
--******************--
x000550_g_DW_Impact={}							--�i�u v�n (Lv 1, C�c Lv ti�p theo Impact = Impact Lv tr߾c + 1)
	x000550_g_DW_Impact[0]	=	11920			--C߶ng l�c (C� ch� m�i b�)
	x000550_g_DW_Impact[1]	=	11940			--N�i l�c (C� ch� m�i b�)
	x000550_g_DW_Impact[2]	=	11930			--Th� l�c (C� ch� m�i b�)
	x000550_g_DW_Impact[3]	=	11950			--Tr� l�c (C� ch� m�i b�)
	x000550_g_DW_Impact[4]	=	11960			--Th�n ph�p (C� ch� m�i b�)
	x000550_g_DW_Impact[5]	=	11800			--B�ng c�ng
	x000550_g_DW_Impact[6]	=	11810			--H�a c�ng
	x000550_g_DW_Impact[7]	=	11820			--Huy�n c�ng
	x000550_g_DW_Impact[8]	=	11830			--еc c�ng
	x000550_g_DW_Impact[9]	=	11880			--Gi�m kh�ng B�ng
	x000550_g_DW_Impact[10]	=	11890			--Gi�m kh�ng H�a
	x000550_g_DW_Impact[11]	=	11900			--Gi�m kh�ng Huy�n
	x000550_g_DW_Impact[12]	=	11910			--Gi�m kh�ng еc
	x000550_g_DW_Impact[13]	=	11840			--Kh�ng B�ng
	x000550_g_DW_Impact[14]	=	11850			--Kh�ng H�a
	x000550_g_DW_Impact[15]	=	11860			--Kh�ng Huy�n
	x000550_g_DW_Impact[16]	=	11870			--Kh�ng еc
--******************--
x000550_g_MaxDWLevel=10							--Level t�i �a c�a �i�u v�n
--******************--
x000550_Gem_Impact={}							--Ng�c th�i trang		
	x000550_Gem_Impact[50431001]	= 	10529	--B�ng Lam L�u V�n
	x000550_Gem_Impact[50431002]	= 	10530	--T� Vi Tinh Quang
	x000550_Gem_Impact[50431003]	= 	10531	--Th�y Ng�c Tinh Tr�n
	x000550_Gem_Impact[50431004]	= 	10532	--Tranh �nh Nh� M�ng
	x000550_Gem_Impact[50431005]	= 	10533	--Hoa L�c H�ng Tr�n
--******************--
x000550_g_LongWen=118							--V� tr� Long V�n
x000550_g_WuHun=110								--V� tr� V� H�n
x000550_g_Dress=116								--V� tr� Th�i Trang
--******************--
DWLevel = {10,20,40,70,110,140,170,210,240,280}
DWLevel_K ={4,8,18,36,42,50,60,70,80,90}
DWLevel_KP ={10,20,30,60,100,120,140,170,200,240}
--******************--
x000550_g_ZhongLou	=	{	10422016,	10423024,	10423064,	10420091,	10422155,	10420088,	10423025	}
x000550_g_Impact	=	{	5952,		5953,		5970,		5973,		5969,		5975,		5965		}




--hd add 10/06/2015
function x000550_KiemTraPhienBan (sceneId,selfId)
	
	--******************--
	if GetMissionFlag(sceneId,selfId,MF_CHECKVERSION)==1 or GetHp(sceneId,selfId)<1 then--Sai phi�n b�n ho�c nh�n v�t die
		return 0 -- sai version
	else
		return 1 --dung verison
	end
	--******************--
	
end

function x000550_ActionDW5 (sceneId,selfId)

	--******************--
	return
	--******************--
	
end 
--end hd add 10/06/2015


--******************--

--*********************************--
--*         Do All Action         *--
--*********************************--
function x000550_DoAllAction(sceneId,selfId,Request,Param_1,Param_2,Param_3,Param_4,Param_5)
	
	--******************--
	if GetMissionFlag(sceneId,selfId,MF_CHECKVERSION)==1 or GetHp(sceneId,selfId)<1 then--Sai phi�n b�n ho�c nh�n v�t die
		return
	end
	--******************--
	if Request==0 then																--C� s� l�m m�i Item tr�n ng߶i
		SetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT,GetHp(sceneId,selfId))
		SetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT,GetMp(sceneId,selfId))
		LuaFnWashPoints(sceneId,selfId)												--T�y t�t c� �i�m ti�m n�ng hi�n c�
		local Current=GetPlayerRemainPoints(sceneId,selfId)							--L�y gi� tr� ti�m n�ng c�c ��i m�i
		local x=GetMissionData(sceneId,selfId,MD_FIXBUG)							--L�y gi� tr� ti�m n�ng c�c ��i c�
		SetMissionData(sceneId,selfId,MD_FIXBUG,Current)							--Set gi� tr� ti�m n�ng c�c ��i c�
		SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT)+Current-x)	--So s�nh gi� tr� ti�m n�ng c�c ��i m�i v� c�, n�u c� ch�nh l�ch (Khi �n Levelup) th� c�ng th�m � l�ch v�o gi� tr� ti�m n�ng hi�n t�i.
		SetPlayerRemainPoints(sceneId,selfId,Current+5)								--Set 5 �i�m ti�m n�ng gi�
	end
	--******************--
	if Request==1 then
		x000550_CancelAllImpact(sceneId,selfId)
		x000550_AddNewImpact(sceneId,selfId)
		
		local XiuLian_LiLiang, XiuLian_LingQi, XiuLian_TiLi, XiuLian_DingLi, XiuLian_ShenFa=x000550_Refresh_Xiulian(sceneId,selfId)	--T�nh �i�m tu luy�n
		local Baby_LiLiang, Baby_LingQi, Baby_TiLi, Baby_DingLi, Baby_ShenFa=x000550_Refresh_Baby(sceneId,selfId)					--T�nh �i�m Baby
		local WH_LiLiang, WH_LingQi, WH_TiLi, WH_DingLi, WH_ShenFa=x000550_Refresh_WuHun(sceneId,selfId)							--T�nh �i�m WH
		LuaFnWashSomePoints(sceneId,selfId,0,-GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)-XiuLian_LiLiang-Baby_LiLiang-WH_LiLiang)
		LuaFnWashSomePoints(sceneId,selfId,1,-GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)-XiuLian_LingQi-Baby_LingQi-WH_LingQi)
		LuaFnWashSomePoints(sceneId,selfId,2,-GetMissionData(sceneId,selfId,MD_CURRENT_TILI)-XiuLian_TiLi-Baby_TiLi-WH_TiLi)
		LuaFnWashSomePoints(sceneId,selfId,3,-GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)-XiuLian_DingLi-Baby_DingLi-WH_DingLi)
		LuaFnWashSomePoints(sceneId,selfId,4,-GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)-XiuLian_ShenFa-Baby_ShenFa-WH_ShenFa)
		SetPlayerRemainPoints(sceneId,selfId,GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT))
		
		local nHP=GetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT)
		local nMP=GetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT)
		SetHp(sceneId,selfId,nHP)
		SetMp(sceneId,selfId,nMP)
		
		--Anti Hack bug Remain points
		x000550_Anti_Hack(sceneId,selfId)
		--End anti hack
		
		x000550_Refresh_ZhongLou(sceneId,selfId)
	end
	--******************--
	if Request==2 then																	--C�ng �i�m t� nh�n v�t
		SetMissionData(sceneId,selfId,MD_CURRENT_LILIANG,GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)+Param_1)
		SetMissionData(sceneId,selfId,MD_CURRENT_LINGQI,GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)+Param_2)
		SetMissionData(sceneId,selfId,MD_CURRENT_TILI,GetMissionData(sceneId,selfId,MD_CURRENT_TILI)+Param_3)
		SetMissionData(sceneId,selfId,MD_CURRENT_DINGLI,GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)+Param_4)
		SetMissionData(sceneId,selfId,MD_CURRENT_SHENFA,GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)+Param_5)
		LuaFnWashSomePoints(sceneId,selfId,0,-Param_1)
		LuaFnWashSomePoints(sceneId,selfId,1,-Param_2)
		LuaFnWashSomePoints(sceneId,selfId,2,-Param_3)
		LuaFnWashSomePoints(sceneId,selfId,3,-Param_4)
		LuaFnWashSomePoints(sceneId,selfId,4,-Param_5)
		
		local Current=GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT)												--L�y MD ch� gi� tr� ti�m n�ng hi�n t�i
		SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,Current-Param_1-Param_2-Param_3-Param_4-Param_5)			--Sau khi c�ng �i�m th� set l�i gi� tr� ti�m n�ng hi�n t�i l� hi�u c�a c�c �i�m c�ng v�o

		--Anti Hack bug Remain points
		x000550_Anti_Hack(sceneId,selfId)
		--End anti hack
		
		--Truy�n l�n Client thao t�c c�ng �i�m ho�n th�nh
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,11223249)
		--End
	end
	--******************--
	
end
--*********************************--
--*           Anti Hack           *--
--*********************************--
function x000550_Anti_Hack(sceneId,selfId)

	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--Anti Hack bug Remain points
	local LiLiang=GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)														--L�y gi� tr� C߶ng l�c hi�n t�i
	local LingQi=GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)														--L�y gi� tr� N�i l�c hi�n t�i
	local TiLi=GetMissionData(sceneId,selfId,MD_CURRENT_TILI)															--L�y gi� tr� Th� l�c hi�n t�i
	local DingLi=GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)														--L�y gi� tr� Tr� l�c hi�n t�i
	local ShenFa=GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)														--L�y gi� tr� Th�n ph�p hi�n t�i
	local Remain=GetMissionData(sceneId,selfId,MD_FIXBUG)																--L�y gi� tr� Ti�m n�ng c�c ��i
	local Current_Ramain=GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT)											--L�y gi� tr� ti�m n�ng hi�n t�i
	if Remain<0 or Current_Ramain<0 or LiLiang<0 or LingQi<0 or TiLi<0 or DingLi<0 or ShenFa<0 then
		x000550_ResetAllData(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"C� sai s�t trong thao t�c, t�t c� �i�m ti�m n�ng �� b� Reset l�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
	if LiLiang>Remain or LingQi>Remain or TiLi>Remain or DingLi>Remain or ShenFa>Remain or LiLiang+LingQi+TiLi+DingLi+ShenFa~=Remain-Current_Ramain then	--Ki�m tra n�u c� sai s�t (T�ng �i�m kh�c �i�m ti�m n�ng �� c�ng v�o)
		x000550_ResetAllData(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"C� sai s�t trong thao t�c, t�t c� �i�m ti�m n�ng �� b� Reset l�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
	--End anti hack
	--******************--
	
end
--*********************************--
--*         Refresh Baby          *--
--*********************************--
function x000550_Refresh_Baby(sceneId,selfId)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return 0,0,0,0,0
	end
	--******************--
	for i=12500,12539 do
		while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,i)>0 do
			LuaFnCancelSpecificImpact(sceneId,selfId,i)
		end
	end
	--******************--
	local Skill_1=GetMissionData(sceneId,selfId,MD_WIZI_SKILL_1)
	local Skill_2=GetMissionData(sceneId,selfId,MD_WIZI_SKILL_1)
	local Skill_3=GetMissionData(sceneId,selfId,MD_WIZI_SKILL_1)
	local Skill_4=GetMissionData(sceneId,selfId,MD_WIZI_SKILL_1)
	--******************--
	if Skill_1>0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,12500+Skill_1-1,0)
	end
	--******************--
	if Skill_2>0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,12510+Skill_2-1,0)
	end
	--******************--
	if Skill_3>0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,12520+Skill_3-1,0)
	end
	--******************--
	if Skill_4>0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,12530+Skill_4-1,0)
	end
	--******************--
	local Liliang=GetMissionData(sceneId,selfId,MD_WIZI_LILIANG)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL)
	local Lingqi=GetMissionData(sceneId,selfId,MD_WIZI_LINGQI)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL)
	local Tili=GetMissionData(sceneId,selfId,MD_WIZI_TILI)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL)
	local Dingli=GetMissionData(sceneId,selfId,MD_WIZI_DINGLI)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL)
	local Shenfa=GetMissionData(sceneId,selfId,MD_WIZI_SHENFA)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL)
	--******************--
	return Liliang, Lingqi, Tili, Dingli, Shenfa
	--******************--
	
end
--*********************************--
--*        Refresh Wu Hun         *--
--*********************************--
function x000550_Refresh_WuHun(sceneId,selfId)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return 0,0,0,0,0
	end
	--******************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,x000550_g_WuHun)
	--******************--
	if str==nil then
		return 0,0,0,0,0
	end
	--******************--
	local Liliang=tonumber(strsub(str,16,18))
	local Liliang_Base=tonumber(strsub(str,19,21))
	local Lingqi=tonumber(strsub(str,22,24))
	local Lingqi_Base=tonumber(strsub(str,25,27))
	local Tili=tonumber(strsub(str,28,30))
	local Tili_Base=tonumber(strsub(str,31,33))
	local Dingli=tonumber(strsub(str,34,36))
	local Dingli_Base=tonumber(strsub(str,37,39))
	local Shenfa=tonumber(strsub(str,40,42))
	local Shenfa_Base=tonumber(strsub(str,43,45))
	--******************--
	return Liliang+Liliang_Base, Lingqi+Lingqi_Base, Tili+Tili_Base, Dingli+Dingli_Base, Shenfa+Shenfa_Base
	--******************--
	
end
--*********************************--
--*       Refresh Zhong Lou       *--
--*********************************--
function x000550_Refresh_ZhongLou(sceneId,selfId)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--******************--
	for i=1,getn(x000550_g_Impact) do
		while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x000550_g_Impact[i])>0 do
			LuaFnCancelSpecificImpact(sceneId,selfId,x000550_g_Impact[i])
		end
	end
	--******************--
	for i=100,118 do
		local Item_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,i)
		for i=1,getn(x000550_g_ZhongLou) do
			if x000550_g_ZhongLou[i]==Item_Index then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x000550_g_Impact[i],0)
			end
		end
	end
	--******************--
	
end
--*********************************--
--*        Refresh Xiulian        *--
--*********************************--
function x000550_Refresh_Xiulian(sceneId,selfId)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return 0,0,0,0,0
	end
	--******************--
	local Xiu_Lian_Level={0,0,0,0,0}
	Xiu_Lian_Level[1]=mod(GetMissionData(sceneId,selfId,MD_XL1_SKILL1),1000)
	Xiu_Lian_Level[2]=mod(GetMissionData(sceneId,selfId,MD_XL1_SKILL2),1000)
	Xiu_Lian_Level[3]=mod(GetMissionData(sceneId,selfId,MD_XL1_SKILL3),1000)
	Xiu_Lian_Level[4]=mod(GetMissionData(sceneId,selfId,MD_XL1_SKILL4),1000)
	Xiu_Lian_Level[5]=mod(GetMissionData(sceneId,selfId,MD_XL1_SKILL5),1000)
	local Xiu_Lian_Point={0,0,0,0,0}
	for i=1,5 do
		if Xiu_Lian_Level[i]<=30 then
			Xiu_Lian_Point[i]=Xiu_Lian_Level[i]
		elseif Xiu_Lian_Level[i]<=60 then
			Xiu_Lian_Point[i]=30+(Xiu_Lian_Level[i]-30)*2
		elseif Xiu_Lian_Level[i]<=100 then
			if i==3 then
				Xiu_Lian_Point[i]=90+(Xiu_Lian_Level[i]-60)*2
			else
				Xiu_Lian_Point[i]=90+(Xiu_Lian_Level[i]-60)*3
			end
		else
			NewWorld(sceneId,selfId,655,999,888)
		end
	end
	return Xiu_Lian_Point[1], Xiu_Lian_Point[2], Xiu_Lian_Point[3], Xiu_Lian_Point[4], Xiu_Lian_Point[5]
	--******************--
	
end
--*********************************--
--*         Reset All Data        *--
--*********************************--
function x000550_ResetAllData(sceneId,selfId)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--******************--
	LuaFnWashPoints(sceneId,selfId)
	local Current=GetPlayerRemainPoints(sceneId,selfId)
	SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,Current)
	SetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT,GetHp(sceneId,selfId))
	SetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT,GetMp(sceneId,selfId))
	local XiuLian_LiLiang, XiuLian_LingQi, XiuLian_TiLi, XiuLian_DingLi, XiuLian_ShenFa=x000550_Refresh_Xiulian(sceneId,selfId)
	local Baby_LiLiang, Baby_LingQi, Baby_TiLi, Baby_DingLi, Baby_ShenFa=x000550_Refresh_Baby(sceneId,selfId)
	LuaFnWashSomePoints(sceneId,selfId,0,-GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)-XiuLian_LiLiang-Baby_LiLiang)
	LuaFnWashSomePoints(sceneId,selfId,1,-GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)-XiuLian_LingQi-Baby_LingQi)
	LuaFnWashSomePoints(sceneId,selfId,2,-GetMissionData(sceneId,selfId,MD_CURRENT_TILI)-XiuLian_TiLi-Baby_TiLi)
	LuaFnWashSomePoints(sceneId,selfId,3,-GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)-XiuLian_DingLi-Baby_DingLi)
	LuaFnWashSomePoints(sceneId,selfId,4,-GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)-XiuLian_ShenFa-Baby_ShenFa)
	SetMissionData(sceneId,selfId,MD_CURRENT_LILIANG,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_LINGQI,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_TILI,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_DINGLI,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_SHENFA,0)
	SetMissionData(sceneId,selfId,MD_FIXBUG,Current)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,11223249)
	--******************--
	
end
--*********************************--
--*       Cancel All Impact       *--
--*********************************--
function x000550_CancelAllImpact(sceneId,selfId)
	
	--******************--
	for i,impact in x000550_g_DW_Impact do											--Cancel t�t c� Impact �i�u v�n hi�n c�
		for j=0,x000550_g_MaxDWLevel-1 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do	
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
		end
	end
	--******************--
	for i,impact in x000550_Gem_Impact do											--Cancel t�t c� Impact ng�c th�i trang hi�n c�
		while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact)>0 do		
			LuaFnCancelSpecificImpact(sceneId,selfId,impact)
		end
	end
	--******************--
	
end
--*********************************--
--*         Add New Impact        *--
--*********************************--
function x000550_AddNewImpact(sceneId,selfId)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--******************--
	for i=100,118 do
		if i~=x000550_g_LongWen and i~=x000550_g_WuHun and i~=x000550_g_Dress then	--C�c item c� th� �i�u v�n
			x000550_AddDWImpact(sceneId,selfId,i)									--�i�u v�n
			x000550_AddPUImpact(sceneId,selfId,i)									--Tinh th�ng	
		elseif i==x000550_g_Dress then												--Th�i trang
			x000550_AddDressImpact(sceneId,selfId)
		end
	end
	--******************--
	
end

--/////////////////////////////////////////////////////////////--
--*************************************************************************************************************************--
--*   C�m thao t�c tr�n �i�u v�n trang b�                                                                                 *--
--*************************************************************************************************************************--
--/////////////////////////////////////////////////////////////--

--*********************************--
--*      Add Diao Wen Impact      *--
--*********************************--
function x000550_AddDWImpact(sceneId,selfId,Pos)
	
	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--******************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,Pos)
	--******************--
	if str==nil or str=="" then														--Trang b� n�y ch�a g�n �i�u v�n
		return
	else
		if strsub(str,1,1)=="*" then
			str=strsub(str,1,7)
		end
		if x000550_IsDiaoWenEquip(str)==0 then										--Trang b� n�y kh�ng ph�i trang b� �i�u v�n
			return
		end
	end
	--******************--
	local nLevel=x000550_GetDiaoWenLevel(str)
	local nType=x000550_GetDiaoWenType(str)
	--******************--
	if nType>=0 and nType<=4 then													--�i�u v�n th߶ng
		LuaFnWashSomePoints(sceneId,selfId,nType,-DWLevel[nLevel])
	else																			--�i�u v�n thu�c t�nh
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x000550_g_DW_Impact[nType]+nLevel-1,0)	--Add Impact v�o trang b� �i�u v�n thu�c t�nh
	end
	--******************--
	
end
--*********************************--
--*       Is Diao Wen Equip       *--
--*********************************--
function x000550_IsDiaoWenEquip(str)												--H�m n�y tr� ra gi� tr� 1 n�u l� trang b� �i�u v�n v� 0 n�u kh�ng ph�i
	
	--******************--
	if strlen(str)==7 then
		if strsub(str,1,1)=="*" and strsub(str,strlen(str),strlen(str))=="*" then	--��y l� chu�i m� h�a cho �i�u v�n
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--*********************************--
--*       Get Diao Wen Level      *--
--*********************************--
function x000550_GetDiaoWenLevel(str)												--H�m n�y tr� ra gi� tr� Level c�a �i�u v�n tr�n trang b� (Over write of Duy�n)
	
	--******************--
	local npoint=x000550_GetDiaoWenPoint(str)										--L�y s� �i�m c�ng c�a �i�u v�n
	local ntype=x000550_GetDiaoWenType(str)											--L�y lo�i c�a �i�u v�n
	--******************--
	--Check Level �i�u v�n d�a v�o �i�m c�ng t߽ng �ng c�a �i�u v�n trong 3 m�ng khai b�o b�n tr�n.
	--******************--
	if ntype>8 then
		for i=1,x000550_g_MaxDWLevel do
			if npoint==DWLevel_K[i] then
				return i
			end
		end
	elseif ntype>4 then
		for i=1,x000550_g_MaxDWLevel do
			if npoint==DWLevel_KP[i] then
				return i
			end
		end
	else
		for i=1,x000550_g_MaxDWLevel do
			if npoint==DWLevel[i] then
				return i
			end
		end
	end
	--******************--
	return 0
	--******************--
	
end
--*********************************--
--*       Get Diao Wen Type       *--
--*********************************--
function x000550_GetDiaoWenType(str)												--H�m n�y tr� ra gi� tr� Type c�a �i�u v�n tr�n trang b�
	
	--******************--
	return tonumber(strsub(str,2,3))
	--******************--
	
end
--*********************************--
--*       Get Diao Wen Point      *--
--*********************************--
function x000550_GetDiaoWenPoint(str)												--H�m n�y tr� ra gi� tr� Point c�a �i�u v�n tr�n trang b�
	
	--******************--
	return tonumber(strsub(str,4,6))
	--******************--
	
end
--/////////////////////////////////////////////////////////////--
--*************************************************************************************************************************--
--*   C�m thao t�c tr�n Th�ng tinh trang b�                                                                               *--
--*************************************************************************************************************************--
--*********************************--
--*      Add Power Up Impact      *--
--*********************************--
function x000550_AddPUImpact(sceneId,selfId,Pos)

	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--******************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,Pos)
	--******************--
	if str==nil or str=="" then														--Trang b� n�y ch�a g�n �i�u v�n
		return
	else
		local x="~%d%d%d~"
		local y=strfind(str,x)
		if not y then
			return
		end
	end
	--******************--
	local x="~%d%d%d~"
	local y=strfind(str,x)
	local nLevel=tonumber(strsub(str,y+1,y+3))
	--******************--
	for i=0,4 do
		LuaFnWashSomePoints(sceneId,selfId,i,-nLevel*3)
	end
	--******************--
	
end
--/////////////////////////////////////////////////////////////--
--*************************************************************************************************************************--
--*   C�m thao t�c tr�n Th�i trang                                                                                        *--
--*************************************************************************************************************************--
--/////////////////////////////////////////////////////////////--

--*********************************--
--*        Add Dress Impact       *--
--*********************************--
function x000550_AddDressImpact(sceneId,selfId)

	--******************--
	if x000550_KiemTraPhienBan (sceneId,selfId) == 0 then
		return
	end
	--******************--
	if LuaFnGetItemTableIndexByIndex(sceneId,selfId,x000550_g_Dress)<=0 then
		return
	end
	--******************--
	local Gem_Count=GetGemEmbededCount(sceneId,selfId,x000550_g_Dress)				--L�y t�ng s� l� tr�n trang b�
	--******************--
	for i=0,Gem_Count-1 do
		local Gem_Index=GetGemEmbededType(sceneId,selfId,x000550_g_Dress,i)			--L�y ID vi�n ng�c hi�n kh�m � l� th� i tr�n trang b�
		if x000550_Gem_Impact[Gem_Index]~=nil then									--N�u ��y ��ng l� ng�c th�i trang th� add impact v� d�ng lu�n
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x000550_Gem_Impact[Gem_Index],0)
			return
		end
	end
	--******************--

end
--/////////////////////////////////////////////////////////////--