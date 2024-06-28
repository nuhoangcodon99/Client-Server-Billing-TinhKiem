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
--******************--

--*********************************--
--*         Do All Action         *--
--*********************************--
function x000550_DoAllAction(sceneId,selfId,Request,Param_1,Param_2,Param_3,Param_4,Param_5)
	
	--******************--
	if Request==0 then																--Có sñ làm m¾i Item trên ngß¶i
		SetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT,GetHp(sceneId,selfId))
		SetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT,GetMp(sceneId,selfId))
		LuaFnWashPoints(sceneId,selfId)												--T¦y t¤t cä ði¬m ti«m nång hi®n có
		local Current=GetPlayerRemainPoints(sceneId,selfId)
		SetMissionData(sceneId,selfId,401,Current)
		SetPlayerRemainPoints(sceneId,selfId,Current+5)
	end
	--******************--
	if Request==1 then
		x000550_CancelAllImpact(sceneId,selfId)
		x000550_AddNewImpact(sceneId,selfId)
		local nHP=GetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT)
		local nMP=GetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT)
		SetHp(sceneId,selfId,nHP)
		SetMp(sceneId,selfId,nMP)
		local XiuLian_LiLiang, XiuLian_LingQi, XiuLian_TiLi, XiuLian_DingLi, XiuLian_ShenFa=x000550_Refresh_Xiulian(sceneId,selfId)
		LuaFnWashSomePoints(sceneId,selfId,0,-GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)-XiuLian_LiLiang)
		LuaFnWashSomePoints(sceneId,selfId,1,-GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)-XiuLian_LingQi)
		LuaFnWashSomePoints(sceneId,selfId,2,-GetMissionData(sceneId,selfId,MD_CURRENT_TILI)-XiuLian_TiLi)
		LuaFnWashSomePoints(sceneId,selfId,3,-GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)-XiuLian_DingLi)
		LuaFnWashSomePoints(sceneId,selfId,4,-GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)-XiuLian_ShenFa)
		SetPlayerRemainPoints(sceneId,selfId,GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT))
		--Anti Hack bug Remain points
		local LiLiang=GetMissionData(sceneId,selfId,MD_CURRENT_LILIANG)
		local LingQi=GetMissionData(sceneId,selfId,MD_CURRENT_LINGQI)
		local TiLi=GetMissionData(sceneId,selfId,MD_CURRENT_TILI)
		local DingLi=GetMissionData(sceneId,selfId,MD_CURRENT_DINGLI)
		local ShenFa=GetMissionData(sceneId,selfId,MD_CURRENT_SHENFA)
		local Remain=GetMissionData(sceneId,selfId,401)
		if LiLiang>Remain or LingQi>Remain or TiLi>Remain or DingLi>Remain or ShenFa>Remain or LiLiang+LingQi+TiLi+DingLi+ShenFa~=Remain-GetPlayerRemainPoints(sceneId,selfId) then
			x000550_ResetAllData(sceneId,selfId)
			BeginEvent(sceneId)
				AddText(sceneId,"Có sai sót trong thao tác, t¤t cä ði¬m ti«m nång ðã b¸ Reset lÕi!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			LuaFnWashPoints(sceneId,selfId)												--T¦y t¤t cä ði¬m ti«m nång hi®n có
		end
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
		local Current=GetPlayerRemainPoints(sceneId,selfId)
		SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,Current)
	end
	--******************--
	
end
--*********************************--
--*       Refresh Zhong Lou       *--
--*********************************--
function x000550_Refresh_ZhongLou(sceneId,selfId)

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
				break
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
	LuaFnWashPoints(sceneId,selfId)
	local Current=GetPlayerRemainPoints(sceneId,selfId)
	SetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT,Current)
	SetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT,GetHp(sceneId,selfId))
	SetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT,GetMp(sceneId,selfId))
	local XiuLian_LiLiang, XiuLian_LingQi, XiuLian_TiLi, XiuLian_DingLi, XiuLian_ShenFa=x000550_Refresh_Xiulian(sceneId,selfId)
	LuaFnWashSomePoints(sceneId,selfId,0,-XiuLian_LiLiang)
	LuaFnWashSomePoints(sceneId,selfId,1,-XiuLian_LingQi)
	LuaFnWashSomePoints(sceneId,selfId,2,-XiuLian_TiLi)
	LuaFnWashSomePoints(sceneId,selfId,3,-XiuLian_DingLi)
	LuaFnWashSomePoints(sceneId,selfId,4,-XiuLian_ShenFa)
	SetMissionData(sceneId,selfId,MD_CURRENT_LILIANG,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_LINGQI,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_TILI,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_DINGLI,0)
	SetMissionData(sceneId,selfId,MD_CURRENT_SHENFA,0)
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
	for i=100,118 do
		if i~=x000550_g_LongWen and i~=x000550_g_WuHun and i~=x000550_g_Dress then	--Các item có th¬ ðiêu vån
			x000550_AddDWImpact(sceneId,selfId,i)
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
--*   Cøm thao tác trên Th¶i trang                                                                                        *--
--*************************************************************************************************************************--
--/////////////////////////////////////////////////////////////--

--*********************************--
--*        Add Dress Impact       *--
--*********************************--
function x000550_AddDressImpact(sceneId,selfId)

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