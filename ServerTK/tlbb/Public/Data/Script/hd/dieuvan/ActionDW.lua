--Script do all action (Ðiêu vån + Ng÷c th¶i trang)

--***************************************************************************************************************************--
--*  C½ chª g¡n ðiêu vån (Sói):                                                                                             *--
--*    M²i l¥n có sñ thay ð±i ngoÕi cänh hay các thao tác tháo l¡p trang b¸ trên ngß¶i, hàm RefreshEquip s¨ ðßþc g÷i ðªn.   *--
--*    Ta chï c¥n b¡t sñ ki®n này và truy«n v« Server báo cáo có sñ làm m¾i trang b¸ trên ngß¶i.                            *--
--*    Khi ðó Server s¨ check Creator cüa item theo Pos trên ngß¶i ðánh s¯ t× 100 ðªn 118, và add impact                    *--
--*  Thao tác kªt thúc.                                                                                                     *--
--***************************************************************************************************************************--

--******************--
x000550_g_scriptId = 000550
--******************--
x000550_g_DW_Impact={}							--Ðiêu vån (Lv 1, Các Lv tiªp theo Impact = Impact Lv trß¾c + 1)
	x000550_g_DW_Impact[0]	=	11920			--Cß¶ng lñc (C½ chª m¾i bö)
	x000550_g_DW_Impact[1]	=	11940			--Nµi lñc (C½ chª m¾i bö)
	x000550_g_DW_Impact[2]	=	11930			--Th¬ lñc (C½ chª m¾i bö)
	x000550_g_DW_Impact[3]	=	11950			--Trí lñc (C½ chª m¾i bö)
	x000550_g_DW_Impact[4]	=	11960			--Thân pháp (C½ chª m¾i bö)
	x000550_g_DW_Impact[5]	=	11800			--Bång công
	x000550_g_DW_Impact[6]	=	11810			--Höa công
	x000550_g_DW_Impact[7]	=	11820			--Huy«n công
	x000550_g_DW_Impact[8]	=	11830			--Ðµc công
	x000550_g_DW_Impact[9]	=	11880			--Giäm kháng Bång
	x000550_g_DW_Impact[10]	=	11890			--Giäm kháng Höa
	x000550_g_DW_Impact[11]	=	11900			--Giäm kháng Huy«n
	x000550_g_DW_Impact[12]	=	11910			--Giäm kháng Ðµc
	x000550_g_DW_Impact[13]	=	11840			--Kháng Bång
	x000550_g_DW_Impact[14]	=	11850			--Kháng Höa
	x000550_g_DW_Impact[15]	=	11860			--Kháng Huy«n
	x000550_g_DW_Impact[16]	=	11870			--Kháng Ðµc
--******************--
x000550_g_MaxDWLevel=10							--Level t¯i ða cüa Ðiêu vån
--******************--
x000550_Gem_Impact={}							--Ng÷c th¶i trang		
	x000550_Gem_Impact[50431001]	= 	10529	--Bång Lam Lßu Vân
	x000550_Gem_Impact[50431002]	= 	10530	--TØ Vi Tinh Quang
	x000550_Gem_Impact[50431003]	= 	10531	--Thüy Ng÷c Tinh Tr¥n
	x000550_Gem_Impact[50431004]	= 	10532	--Tranh Änh Nhß Mµng
	x000550_Gem_Impact[50431005]	= 	10533	--Hoa LÕc H°ng Tr¥n
--******************--
x000550_g_LongWen=118							--V¸ trí Long Vån
x000550_g_WuHun=110								--V¸ trí Võ H°n
x000550_g_Dress=116								--V¸ trí Th¶i Trang
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
	if GetMissionFlag(sceneId,selfId,MF_CHECKVERSION)==1 or GetHp(sceneId,selfId)<1 then--Sai phiên bän ho£c nhân v§t die
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
	if GetMissionFlag(sceneId,selfId,MF_CHECKVERSION)==1 or GetHp(sceneId,selfId)<1 then--Sai phiên bän ho£c nhân v§t die
		return
	end
	--******************--
	if Request==0 then																--Có sñ làm m¾i Item trên ngß¶i
		SetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT,GetHp(sceneId,selfId))
		SetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT,GetMp(sceneId,selfId))
		LuaFnWashPoints(sceneId,selfId)												--T¦y t¤t cä ði¬m ti«m nång hi®n có
		local Current=GetPlayerRemainPoints(sceneId,selfId)							--L¤y giá tr¸ ti«m nång cñc ðÕi m¾i
		local x=GetMissionData(sceneId,selfId,MD_FIXBUG)							--L¤y giá tr¸ ti«m nång cñc ðÕi cû
		SetMissionData(sceneId,selfId,MD_FIXBUG,Current)							--Set giá tr¸ ti«m nång cñc ðÕi cû
		SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT)+Current-x)	--So sánh giá tr¸ ti«m nång cñc ðÕi m¾i và cû, nªu có chênh l®ch (Khi ¤n Levelup) thì cµng thêm ðµ l®ch vào giá tr¸ ti«m nång hi®n tÕi.
		SetPlayerRemainPoints(sceneId,selfId,Current+5)								--Set 5 ði¬m ti«m nång giä
	end
	--******************--
	if Request==1 then
		x000550_CancelAllImpact(sceneId,selfId)
		x000550_AddNewImpact(sceneId,selfId)
		
		local XiuLian_LiLiang, XiuLian_LingQi, XiuLian_TiLi, XiuLian_DingLi, XiuLian_ShenFa=x000550_Refresh_Xiulian(sceneId,selfId)	--Tính ði¬m tu luy®n
		local Baby_LiLiang, Baby_LingQi, Baby_TiLi, Baby_DingLi, Baby_ShenFa=x000550_Refresh_Baby(sceneId,selfId)					--Tính ði¬m Baby
		local WH_LiLiang, WH_LingQi, WH_TiLi, WH_DingLi, WH_ShenFa=x000550_Refresh_WuHun(sceneId,selfId)							--Tính ði¬m WH
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
	if Request==2 then																	--Cµng ði¬m t× nhân v§t
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
		
		local Current=GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT)												--L¤y MD chï giá tr¸ ti«m nång hi®n tÕi
		SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,Current-Param_1-Param_2-Param_3-Param_4-Param_5)			--Sau khi cµng ði¬m thì set lÕi giá tr¸ ti«m nång hi®n tÕi là hi®u cüa các ði¬m cµng vào

		--Anti Hack bug Remain points
		x000550_Anti_Hack(sceneId,selfId)
		--End anti hack
		
		--Truy«n lên Client thao tác cµng ði¬m hoàn thành
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
	local LiLiang=GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)														--L¤y giá tr¸ Cß¶ng lñc hi®n tÕi
	local LingQi=GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)														--L¤y giá tr¸ Nµi lñc hi®n tÕi
	local TiLi=GetMissionData(sceneId,selfId,MD_CURRENT_TILI)															--L¤y giá tr¸ Th¬ lñc hi®n tÕi
	local DingLi=GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)														--L¤y giá tr¸ Trí lñc hi®n tÕi
	local ShenFa=GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)														--L¤y giá tr¸ Thân pháp hi®n tÕi
	local Remain=GetMissionData(sceneId,selfId,MD_FIXBUG)																--L¤y giá tr¸ Ti«m nång cñc ðÕi
	local Current_Ramain=GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT)											--L¤y giá tr¸ ti«m nång hi®n tÕi
	if Remain<0 or Current_Ramain<0 or LiLiang<0 or LingQi<0 or TiLi<0 or DingLi<0 or ShenFa<0 then
		x000550_ResetAllData(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Có sai sót trong thao tác, t¤t cä ði¬m ti«m nång ðã b¸ Reset lÕi!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
	if LiLiang>Remain or LingQi>Remain or TiLi>Remain or DingLi>Remain or ShenFa>Remain or LiLiang+LingQi+TiLi+DingLi+ShenFa~=Remain-Current_Ramain then	--Ki¬m tra nªu có sai sót (T±ng ði¬m khác ði¬m ti«m nång ðã cµng vào)
		x000550_ResetAllData(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Có sai sót trong thao tác, t¤t cä ði¬m ti«m nång ðã b¸ Reset lÕi!")
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
	for i,impact in x000550_g_DW_Impact do											--Cancel t¤t cä Impact Ðiêu vån hi®n có
		for j=0,x000550_g_MaxDWLevel-1 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do	
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
		end
	end
	--******************--
	for i,impact in x000550_Gem_Impact do											--Cancel t¤t cä Impact ng÷c th¶i trang hi®n có
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
		if i~=x000550_g_LongWen and i~=x000550_g_WuHun and i~=x000550_g_Dress then	--Các item có th¬ ðiêu vån
			x000550_AddDWImpact(sceneId,selfId,i)									--Ðiêu vån
			x000550_AddPUImpact(sceneId,selfId,i)									--Tinh thông	
		elseif i==x000550_g_Dress then												--Th¶i trang
			x000550_AddDressImpact(sceneId,selfId)
		end
	end
	--******************--
	
end

--/////////////////////////////////////////////////////////////--
--*************************************************************************************************************************--
--*   Cøm thao tác trên Ðiêu vån trang b¸                                                                                 *--
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
	if str==nil or str=="" then														--Trang b¸ này chßa g¡n ðiêu vån
		return
	else
		if strsub(str,1,1)=="*" then
			str=strsub(str,1,7)
		end
		if x000550_IsDiaoWenEquip(str)==0 then										--Trang b¸ này không phäi trang b¸ Ðiêu vån
			return
		end
	end
	--******************--
	local nLevel=x000550_GetDiaoWenLevel(str)
	local nType=x000550_GetDiaoWenType(str)
	--******************--
	if nType>=0 and nType<=4 then													--Ðiêu vån thß¶ng
		LuaFnWashSomePoints(sceneId,selfId,nType,-DWLevel[nLevel])
	else																			--Ðiêu vån thuµc tính
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x000550_g_DW_Impact[nType]+nLevel-1,0)	--Add Impact vào trang b¸ ðiêu vån thuµc tính
	end
	--******************--
	
end
--*********************************--
--*       Is Diao Wen Equip       *--
--*********************************--
function x000550_IsDiaoWenEquip(str)												--Hàm này trä ra giá tr¸ 1 nªu là trang b¸ ðiêu vån và 0 nªu không phäi
	
	--******************--
	if strlen(str)==7 then
		if strsub(str,1,1)=="*" and strsub(str,strlen(str),strlen(str))=="*" then	--Ðây là chu²i mã hóa cho Ðiêu vån
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
function x000550_GetDiaoWenLevel(str)												--Hàm này trä ra giá tr¸ Level cüa Ðiêu vån trên trang b¸ (Over write of Duyên)
	
	--******************--
	local npoint=x000550_GetDiaoWenPoint(str)										--L¤y s¯ ði¬m cµng cüa ðiêu vån
	local ntype=x000550_GetDiaoWenType(str)											--L¤y loÕi cüa Ðiêu vån
	--******************--
	--Check Level ðiêu vån dña vào ði¬m cµng tß½ng Ñng cüa ðiêu vån trong 3 mäng khai báo bên trên.
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
function x000550_GetDiaoWenType(str)												--Hàm này trä ra giá tr¸ Type cüa Ðiêu vån trên trang b¸
	
	--******************--
	return tonumber(strsub(str,2,3))
	--******************--
	
end
--*********************************--
--*       Get Diao Wen Point      *--
--*********************************--
function x000550_GetDiaoWenPoint(str)												--Hàm này trä ra giá tr¸ Point cüa Ðiêu vån trên trang b¸
	
	--******************--
	return tonumber(strsub(str,4,6))
	--******************--
	
end
--/////////////////////////////////////////////////////////////--
--*************************************************************************************************************************--
--*   Cøm thao tác trên Thông tinh trang b¸                                                                               *--
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
	if str==nil or str=="" then														--Trang b¸ này chßa g¡n ðiêu vån
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
--*   Cøm thao tác trên Th¶i trang                                                                                        *--
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
	local Gem_Count=GetGemEmbededCount(sceneId,selfId,x000550_g_Dress)				--L¤y t±ng s¯ l² trên trang b¸
	--******************--
	for i=0,Gem_Count-1 do
		local Gem_Index=GetGemEmbededType(sceneId,selfId,x000550_g_Dress,i)			--L¤y ID viên ng÷c hi®n khäm · l² thÑ i trên trang b¸
		if x000550_Gem_Impact[Gem_Index]~=nil then									--Nªu ðây ðúng là ng÷c th¶i trang thì add impact và d×ng luôn
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x000550_Gem_Impact[Gem_Index],0)
			return
		end
	end
	--******************--

end
--/////////////////////////////////////////////////////////////--