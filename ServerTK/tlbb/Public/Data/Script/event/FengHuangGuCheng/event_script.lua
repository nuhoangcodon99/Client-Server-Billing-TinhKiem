--Фu tr߶ng Ph�ng Ho�ng C� Th�nh
--Author: Kenvin S�i

--************************--
x930500_g_ScriptId=930500							--ID Script
--************************--
x930500_g_On_Event_Time=21 							--Th�i gian chi�n tr߶ng
x930500_g_ID_Map=442								--ID map chi�n tr߶ng
--************************--
x930500_g_Map_Out=0									--ID map r�i kh�i chi�n tr߶ng
x930500_g_Out_Pos_X=264								--T�a � X
x930500_g_Out_Pos_Y=252								--T�a � Y
--************************--
x930500_g_LimitedMember=0							--S� ng߶i t�i thi�u m�i b�n
--************************--
x930500_g_Activity_Index=38							--��nh d�u ho�t �ng Ph�ng Ho�ng C� Th�nh
x930500_g_Activity_Number_Param=8					--Param Activity
x930500_g_Activity_Time=floor(3900*1000)			--Th�i gian ho�t �ng Ph�ng Ho�ng C� Th�nh
--************************--
x930500_g_Activity_Jin_Point=0						--�i�m s� b�n Kim
x930500_g_Activity_Mu_Point=1						--�i�m s� b�n M�c
x930500_g_Activity_Shui_Point=2						--�i�m s� b�n Th�y
x930500_g_Activity_Hoa_Point=3						--�i�m s� b�n H�a
x930500_g_Activity_Tu_Point=4						--�i�m s� b�n Th�
x930500_g_Activity_Feng_Point=5						--�i�m s� b�n Phong
x930500_g_Activity_Tian_Point=6						--�i�m s� b�n Thi�n
x930500_g_Activity_Di_Point=7						--�i�m s� b�n иa
--************************--
x930500_g_Guild_Pos=								--T�a � NPC
{
	["Jin"]					=	{	Index=14000,	Name="Kim s� gi�",				Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=63,	Pos_Y=36,	ScriptID=930502	},		--Phe Kim						
	["Mu"]					=	{	Index=14000,	Name="M�c s� gi�",				Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=251,	Pos_Y=26,	ScriptID=930502	},		--Phe M�c
	["Shui"]				=	{	Index=14000,	Name="Th�y s� gi�",				Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=294,	Pos_Y=67,	ScriptID=930502	},		--Phe Th�y
	["Hoa"]					=	{	Index=14000,	Name="H�a s� gi�",				Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=296,	Pos_Y=256,	ScriptID=930502	},		--Phe H�a
	["Tu"]					=	{	Index=14000,	Name="Th� s� gi�",				Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=265,	Pos_Y=290,	ScriptID=930502	},		--Phe Th�
	["Feng"]				=	{	Index=14000,	Name="Phong s� gi�",			Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=63,	Pos_Y=294,	ScriptID=930502	},		--Phe Phong
	["Tian"]				=	{	Index=14000,	Name="Thi�n s� gi�",			Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=27,	Pos_Y=246,	ScriptID=930502	},		--Phe Thi�n
	["Di"]					=	{	Index=14000,	Name="иa s� gi�",				Title="S� gi� Ph�ng Ho�ng C� Th�nh",	Pos_X=35,	Pos_Y=56,	ScriptID=930502	},		--Phe иa
	["Zhan Qi"]				=	{	Index=14011,	Name="Ph�ng Ho�ng Chi�n K�",	Title="",								Pos_X=162,	Pos_Y=161,	ScriptID=930504	},		--Ph�ng Ho�ng Chi�n K�
	["Shui Xing - Huang"]	=	{	Index=14008,	Name="Ho�ng S�c Th�y Tinh",		Title="V�",								Pos_X=92,	Pos_Y=90,	ScriptID=930503	},		--Ho�ng S�c Th�y Tinh
	["Shui Xing - Lv"]		=	{	Index=14010,	Name="L�c S�c Th�y Tinh",		Title="V�",								Pos_X=229,	Pos_Y=90,	ScriptID=930503	},		--L�c S�c Th�y Tinh
	["Shui Xing - Zheng"]	=	{	Index=14006,	Name="Chanh S�c Th�y Tinh",		Title="V�",								Pos_X=230,	Pos_Y=230,	ScriptID=930503	},		--Chanh S�c Th�y Tinh
	["Shui Xing - Zi"]		=	{	Index=14004,	Name="T� S�c Th�y Tinh",		Title="V�",								Pos_X=91,	Pos_Y=229,	ScriptID=930503	},		--T� S�c Th�y Tinh
}
--************************--	
x930500_g_Guild_Info=								--Th�ng tin phe
{
	["Jin"]		=	{	CampID=200,	Pos_X=66,	Pos_Y=34	},	--Phe Kim
	["Mu"]		=	{	CampID=201,	Pos_X=252,	Pos_Y=28	},	--Phe M�c
	["Shui"]	=	{	CampID=202,	Pos_X=289,	Pos_Y=64	},	--Phe Th�y
	["Hoa"]		=	{	CampID=203,	Pos_X=292,	Pos_Y=252	},	--Phe H�a
	["Tu"]		=	{	CampID=204,	Pos_X=261,	Pos_Y=292	},	--Phe Th�
	["Feng"]	=	{	CampID=205,	Pos_X=66,	Pos_Y=291	},	--Phe Phong
	["Tian"]	=	{	CampID=206,	Pos_X=30,	Pos_Y=239	},	--Phe Thi�n
	["Di"]		=	{	CampID=207,	Pos_X=35,	Pos_Y=60	},	--Phe иa
}
--************************--
x930500_g_TestMode=0								--Test mode (1~Enable, 0~Disable)
x930500_g_GMName="GGG05"							--T�n nh�n v�t GM ph� tr�ch test
--************************--
x930500_g_Gift={
	{	Index=30503137,	Number=1	},	--Th�i trang ph�i s�c gia c�ng ph�
	{	Index=30503136,	Number=1	},	--Th�i trang ph�i s�c thanh tr� ph�
	{	Index=30503135,	Number=1	},	--Th�i trang ph�i s�c �i�m xuy�t ph�
	{	Index=30503134,	Number=1	},	--Kim thoa
	{	Index=30010080,	Number=1	},	--Ch�n nguy�n ph�ch
	{	Index=20503062,	Number=10	},	--Ly h�a
	{	Index=20503061,	Number=1	},	--Trang b� tinh th�ng ph�
}
--************************--
x930500_g_Card=30010083								--Ph�ng Ho�ng L�ng M� Th�ng H�nh L�nh
--************************--

--*****************************--
--*       On Enumerate        *--
--*****************************--
function x930500_OnEnumerate(sceneId,selfId,targetId)

	--*****************--
	local Last_Time_Winner=GetMissionData(sceneId,selfId,MD_FENGHUANG_WINNER)
	local nHours=GetHour()
	if Last_Time_Winner==1 then
		AddNumText(sceneId,x930500_g_ScriptId,"Nh�n ph�n th߷ng l�n tr߾c",6,2)
	elseif (nHours==x930500_g_On_Event_Time-1 and nMinutes>=30) or x930500_g_TestMode==1 then
		AddText(sceneId,"#YHi�n t�i qu�n s� c�c b�n nh� sau:")
		AddText(sceneId,"    Phe #YKim#W: #G"..x930500_CheckMember(sceneId,"Jin"))
		AddText(sceneId,"    Phe #YM�c#W: #G"..x930500_CheckMember(sceneId,"Mu"))
		AddText(sceneId,"    Phe #YTh�y#W: #G"..x930500_CheckMember(sceneId,"Shui"))
		AddText(sceneId,"    Phe #YH�a#W: #G"..x930500_CheckMember(sceneId,"Hoa"))
		AddText(sceneId,"    Phe #YTh�#W: #G"..x930500_CheckMember(sceneId,"Tu"))
		AddText(sceneId,"    Phe #YPhong#W: #G"..x930500_CheckMember(sceneId,"Feng"))
		AddText(sceneId,"    Phe #YThi�n#W: #G"..x930500_CheckMember(sceneId,"Tian"))
		AddText(sceneId,"    Phe #Yиa#W: #G"..x930500_CheckMember(sceneId,"Di"))
		AddNumText(sceneId,x930500_g_ScriptId,"B�o danh Ph�ng Ho�ng C� Th�nh",6,0)
	else
		AddText(sceneId,"Ho�t �ng b�t �u v�o #G21 gi�#W m�i ng�y, th�i gian b�o danh l� #G30 ph�t#W tr߾c khi khai m� �u tr߶ng. Hi�n ch�a �n gi� b�o danh, c�c h� tr� l�i sau!")
	end
	AddNumText(sceneId,x930500_g_ScriptId,"V� Ph�ng Ho�ng C� Th�nh",11,100)
	--*****************--
	if x930500_g_TestMode==1 and strfind(GetName(sceneId,selfId),x930500_g_GMName) then
		AddNumText(sceneId,x930500_g_ScriptId,"V�o Ph�ng Ho�ng C� Th�nh",6,11)
	end
	--*****************--
	
end
--*****************************--
--*     On Default Event      *--
--*****************************--
function x930500_OnDefaultEvent(sceneId,selfId,targetId)

	--*****************--
	local key=GetNumText()
	--*****************--
	if key==0 then		
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n ch� � n�u s� l��ng qu�n s� m�i phe kh�ng �� "..x930500_g_LimitedMember.." th� ho�t �ng s� b� h�y b�.")
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GKim",6,3)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GM�c",6,4)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GTh�y",6,5)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GH�a",6,6)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GTh�",6,7)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GPhong",6,8)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #GThi�n",6,9)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh�p #Gиa",6,10)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==2 then		
		x930500_RecieveBonus(sceneId,selfId,targetId)													--Nh�n ph�n th߷ng l�n tr߾c		
	end
	--*****************--
	if key==3 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Jin"].CampID)				--Ng߶i ch�i gia nh�p qu�n Kim
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YKim#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==4 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Mu"].CampID)				--Ng߶i ch�i gia nh�p qu�n M�c
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YM�c#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==5 then
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Shui"].CampID)			--Ng߶i ch�i gia nh�p qu�n Th�y
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YTh�y#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key==6 then
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Hoa"].CampID)				--Ng߶i ch�i gia nh�p qu�n H�a
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YH�a#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key==7 then
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Tu"].CampID)				--Ng߶i ch�i gia nh�p qu�n Th�
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YTh�#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key==8 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Feng"].CampID)			--Ng߶i ch�i gia nh�p qu�n Phong
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YPhong#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==9 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Tian"].CampID)			--Ng߶i ch�i gia nh�p qu�n Thi�n
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #YThi�n#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==10 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Di"].CampID)				--Ng߶i ch�i gia nh�p qu�n иa
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� b�o danh phe #Yиa#W th�nh c�ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==11 then		
		x930500_OnWarStartTime(sceneId)		
	end
	--*****************--
	if key==100 then	
		BeginEvent(sceneId)
			AddText(sceneId,"N�i chi�n tr߶ng kh�c li�t mang t�n #GPh�ng Ho�ng C� Th�nh#W l� n�i di�n ra r�t nhi�u cu�c chi�n ��m m�u c�a qu�n h�ng tr�n giang h�.")
			AddText(sceneId,"Chi�n tr߶ng chia th�nh #G8 phe#W l� #YKim#W, #YM�c#W, #YTh�y#W, #YH�a#W, #YTh�#W, #YPhong#W, #YThi�n#W, #Yиa#W c�ng nhau tranh �o�t #GPh�ng Ho�ng Chi�n K�#W gi�nh �i�m t�ch l�y chi�n tr߶ng v� cho phe m�nh.")
			AddText(sceneId,"Ь tham gia chi�n �u, c�c h� bu�c ph�i �u qu�n cho #G1 trong 8 phe#W.")
			AddText(sceneId,"Sau khi b�o danh th�nh c�ng, �n ��ng th�i gian, c�c h� s� ���c d�ch chuy�n v�o chi�n tr߶ng #GPh�ng Ho�ng C� Th�nh#W kh�i l�a kh�c li�t.")
			AddText(sceneId,"H�y c� g�ng l�p c�ng b�ng vi�c d�nh l�y l�nh �a v� mang chi�n k� v� cho phe m�nh v� ghi �i�m.")
			AddText(sceneId,"Cu�i tr�n chi�n phe n�o th�ng cu�c s� nh�n ���c ph�n th߷ng l�n kinh nghi�m v� #GCh�n Nguy�n Tinh Ph�ch (c� �nh)#W.")
			AddText(sceneId,"Ho�t �ng khai m� v�o #G21 gi�#W m�i ng�y, b�o danh #Gtr߾c 30 ph�t#W. C�c h� h�y n�m v�ng l�ch tr�nh m� tham gia nh�.")
			AddText(sceneId,"N�u m�i b�n qu�n s� kh�ng �� #G"..x930500_g_LimitedMember.."#W th�nh vi�n th� tr�n �u s� b� h�y b�.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	
end
--*****************************--
--*     On War Start Time     *--
--*****************************--
function x930500_OnWarStartTime(sceneId)														

	--*****************--
	local Jin_Member=x930500_CheckMember(sceneId,"Jin")																								--S� ng߶i ��ng k� b�n Kim
	local Mu_Member=x930500_CheckMember(sceneId,"Mu")																								--S� ng߶i ��ng k� b�n M�c
	local Shui_Member=x930500_CheckMember(sceneId,"Shui")																							--S� ng߶i ��ng k� b�n Th�y
	local Hoa_Member=x930500_CheckMember(sceneId,"Hoa")																								--S� ng߶i ��ng k� b�n H�a
	local Tu_Member=x930500_CheckMember(sceneId,"Tu")																								--S� ng߶i ��ng k� b�n Th�
	local Feng_Member=x930500_CheckMember(sceneId,"Feng")																							--S� ng߶i ��ng k� b�n Phong
	local Tian_Member=x930500_CheckMember(sceneId,"Tian")																							--S� ng߶i ��ng k� b�n Thi�n
	local Di_Member=x930500_CheckMember(sceneId,"Di")																								--S� ng߶i ��ng k� b�n иa
	if Jin_Member<x930500_g_LimitedMember or Mu_Member<x930500_g_LimitedMember or Shui_Member<x930500_g_LimitedMember or Hoa_Member<x930500_g_LimitedMember or Tu_Member<x930500_g_LimitedMember or Feng_Member<x930500_g_LimitedMember or Tian_Member<x930500_g_LimitedMember or Di_Member<x930500_g_LimitedMember then		--Kh�ng �� �i�u ki�n tham chi�n
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RФu tr߶ng #GPh�ng Ho�ng C� Th�nh#R l�n n�y qu�n s� c�c b�n kh�ng ��t y�u c�u � ra, n�n tr�n �u �� b� h�y b�!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RCu�c chi�n #GPh�ng Ho�ng C� Th�nh#R �� b�t �u. Kh�ng bi�t l�n n�y phe n�o s� d�nh ���c danh hi�u #GB� Ch� Ph�ng Ho�ng C� Th�nh#R ��y? Ch�ng ta c�ng d� �o�n nh�!")
		local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHuman-1 do
			local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																					--Id ng߶i ch�i th� i
			local mapindex=x930500_g_ID_Map																											--ID map Tr�c L�c
			local x																																	--T�a � X
			local y																																	--T�a � Y
			for i,Guild in x930500_g_Guild_Info do
				if GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)==Guild.CampID then
					x=Guild.Pos_X
					y=Guild.Pos_Y
					NewWorld(sceneId,HumanId,mapindex,x,y)																							--D�ch chuy�n �n Ph�ng Ho�ng C� Th�nh
					break
				end
			end
		end
	end
	--*****************--

end
--*****************************--
--*       On Start Time       *--
--*****************************--
function x930500_OnStartTime(sceneId)														

	--*****************--
	StartOneActivity(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Time,x930500_g_Activity_Number_Param)										--B�t �u m� ho�t �ng
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Jin_Point,0)																--�i�m s� phe Kim
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Mu_Point,0)																--�i�m s� phe M�c
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Shui_Point,0)																--�i�m s� phe Th�y
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Hoa_Point,0)																--�i�m s� phe H�a
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tu_Point,0)																--�i�m s� phe Th�
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Feng_Point,0)																--�i�m s� phe Phong
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tian_Point,0)																--�i�m s� phe Thi�n
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Di_Point,0)																--�i�m s� phe иa
	--*****************--
	for i,NPC in x930500_g_Guild_Pos do
		local Monster_Index=LuaFnCreateMonster(sceneId,NPC.Index,NPC.Pos_X,NPC.Pos_Y,3,0,NPC.ScriptID)												--Kh�i t�o NPC
		SetCharacterName(sceneId,Monster_Index,NPC.Name)																							--Set t�n cho NPC
		SetCharacterTitle(sceneId,Monster_Index,NPC.Title)																							--Set danh hi�u cho NPC
		SetCharacterDieTime(sceneId,Monster_Index,36000000)																							--Set danh hi�u cho NPC
		if strfind(NPC.Name,"Th�y Tinh") then
			SetUnitCampID(sceneId,Monster_Index,Monster_Index,208)
		end
	end
	--*****************--

end
--*****************************--
--*      On Player Enter      *--
--*****************************--
function x930500_OnPlayerEnter(sceneId,playerId)														

	--*****************--
	if x930500_g_TestMode==0 then
		local nDay=GetDayTime()
		if nDay~=GetMissionData(sceneId,playerId,MD_FENGHUANG_LAST_DAY_TIME) then																--Kh�ng ph�i th�i gian ho�t �ng l�n n�y
			x930500_NotifyFailTips(sceneId,playerId,"Cu�c chi�n l�n tr߾c c�a c�c h� �� k�t th�c!")
			return
		end
		local nHours=GetHour()
		if nHours~=x930500_g_On_Event_Time then																									--Ho�t �ng ch�a m�
			x930500_NotifyFailTips(sceneId,playerId,"Hi�n ch�a ph�i th�i gian Chi�n tr߶ng Ph�ng Ho�ng C� Th�nh!")
			return
		end
	elseif strfind(GetName(sceneId,playerId),x930500_g_GMName) then
		x930500_OnStartTime(sceneId)
	end
	--*****************--
	local Flag=GetMissionData(sceneId,playerId,MD_FENGHUANG_FLAG)																				--Phe c�a ng߶i ch�i
	SetUnitCampID(sceneId,playerId,playerId,Flag)																								--Tr�ng th�i chi�n �u
	--*****************--
	local x,y
	for i,Guild in x930500_g_Guild_Info do
		if Guild.CampID==Flag then
			x=Guild.Pos_X
			y=Guild.Pos_Y
			SetPlayerDefaultReliveInfo(sceneId,playerId,"%100",-1,"0",sceneId,x,y)																--Уt t�a � �i�m h�i sinh
			if Flag==200 then
				AwardNickTitle(sceneId,playerId,"#YKim chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==201 then
				AwardNickTitle(sceneId,playerId,"#GM�c chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==202 then
				AwardNickTitle(sceneId,playerId,"#BTh�y chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==203 then
				AwardNickTitle(sceneId,playerId,"#cFF0000H�a chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==204 then
				AwardNickTitle(sceneId,playerId,"##c993333Th� chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==205 then
				AwardNickTitle(sceneId,playerId,"#WPhong chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==206 then
				AwardNickTitle(sceneId,playerId,"##cff6633Thi�n chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==207 then
				AwardNickTitle(sceneId,playerId,"##cff66ccиa chi�n s�")
				DispatchAllTitle(sceneId,playerId)
			end
			break
		end
	end
	--*****************--
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,playerId,30062015)
	--*****************--

end
--**********************************--
--*         On Scene Timer         *--
--**********************************--
function x930500_OnSceneTimer(sceneId)

	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																		--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																--Id ng߶i ch�i th� i
		local nDay=GetDayTime()
		if x930500_g_TestMode==0 then
			if nDay~=GetMissionData(sceneId,HumanId,MD_FENGHUANG_LAST_DAY_TIME) then											--Kh�ng ph�i th�i gian ho�t �ng l�n n�y
				x930500_NotifyFailTips(sceneId,HumanId,"Cu�c chi�n l�n tr߾c c�a c�c h� �� k�t th�c!")
				SetUnitCampID(sceneId,HumanId,HumanId,-1)																		--Reset l�i tr�ng th�i chi�n �u
				NewWorld(sceneId,HumanId,x930500_g_Map_Out,x930500_g_Out_Pos_X,x930500_g_Out_Pos_Y)								--��a ng߶i ch�i v� �a �i�m b�o danh ban �u
				return
			end
			local nHours=GetHour()
			if nHours~=x930500_g_On_Event_Time then																				--Ho�t �ng ch�a m�
				x930500_NotifyFailTips(sceneId,HumanId,"Hi�n ch�a ph�i th�i gian Chi�n tr߶ng Ph�ng Ho�ng C� Th�nh!")
				SetUnitCampID(sceneId,HumanId,HumanId,-1)																		--Reset l�i tr�ng th�i chi�n �u
				NewWorld(sceneId,HumanId,x930500_g_Map_Out,x930500_g_Out_Pos_X,x930500_g_Out_Pos_Y)								--��a ng߶i ch�i v� �a �i�m b�o danh ban �u
				return
			end
		end
		x930500_UpdateFengHuangScore(sceneId,HumanId)
	end
	--*****************--
	
end
--*****************************--
--*     Finish Steal Flag     *--
--*****************************--
function x930500_FinishStealFlag(sceneId,selfId)														

	--*****************--
	local nFlag=GetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG)
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)					--Ki�m tra phe ng߶i ch�i
		if Flag==nFlag then
			x930500_NotifyFailTips(sceneId,HumanId,GetName(sceneId,selfId).." �� h� k� th�nh c�ng, to�n phe gia t�ng �i�m t�ch l�y 200 �i�m!")
		end
	end
	--*****************--
	for i,Guild in x930500_g_Guild_Info do
		if Guild.CampID==nFlag then
			local Current_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,nFlag-200)
			SetActivityParam(sceneId,x930500_g_Activity_Index,nFlag-200,Current_Point+200)
			break
		end
	end
	--*****************--

end
--*****************************--
--*      On Stolen Stone      *--
--*****************************--
function x930500_OnStolenStone(sceneId,nFlag)														

	--*****************--
	local Current_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,nFlag-200)
	SetActivityParam(sceneId,x930500_g_Activity_Index,nFlag-200,Current_Point+20)
	--*****************--

end
--*****************************--
--*       Check Member        *--
--*****************************--
function x930500_CheckMember(sceneId,Guild_String)														

	--*****************--
	local Member_Count=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)					--Ki�m tra phe ng߶i ch�i
		if Flag==x930500_g_Guild_Info[Guild_String].CampID then
			Member_Count=Member_Count+1													--T�ng s� ng߶i ch�i l�n
		end
	end
	--*****************--
	return Member_Count
	--*****************--

end
--*****************************--
--*       Recieve Bonus       *--
--*****************************--
function x930500_RecieveBonus(sceneId,selfId,targetId)														

	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<2 or LuaFnGetMaterialBagSpace(sceneId,selfId)<1 then
		x930500_NotifyFailTips(sceneId,selfId,"C�c h� c�n s�p x�p l�i �t nh�t 2 � tr�ng trong � ��o c� v� 1 � Nguy�n li�u!")
		return
	end															
	--*****************--
	local nSelection=random(getn(x930500_g_Gift))
	local nItem,nNumber=x930500_g_Gift[nSelection].Index,x930500_g_Gift[nSelection].Number
	for i=1,nNumber do
		TryRecieveItem(sceneId,selfId,nItem,1)
	end
	--*****************--
	local Current_Activity_Point=GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT)
	SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+100)
	--*****************--
	x930500_NotifyFailTips(sceneId,selfId,"C�c h� �� gia t�ng 50 �i�m ho�t �ng!")
	--*****************--
	TryRecieveItem(sceneId,selfId,x930500_g_Card,1)
	--*****************--
	x930500_NotifyFailTips(sceneId,selfId,"C�c h� �� nh�n ���c "..nNumber.." c�i "..GetItemName(sceneId,nItem).."!")
	x930500_NotifyFailTips(sceneId,selfId,"C�c h� �� nh�n ���c 1 c�i "..GetItemName(sceneId,x930500_g_Card).."!")
	--*****************--
	x930500_ResetAllParam(sceneId,selfId)
	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Nh�n th߷ng th�nh c�ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*****************--

end
--*****************************--
--*       On Exit Time        *--
--*****************************--
function x930500_OnExitTime(sceneId)														

	--*****************--
	local Jin_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Jin_Point)							--�i�m s� phe Kim
	local Mu_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Mu_Point)							--�i�m s� phe M�c
	local Shui_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Shui_Point)						--�i�m s� phe Th�y
	local Hoa_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Hoa_Point)							--�i�m s� phe H�a
	local Tu_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tu_Point)							--�i�m s� phe Th�
	local Feng_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Feng_Point)						--�i�m s� phe Phong
	local Tian_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tian_Point)						--�i�m s� phe Thi�n
	local Di_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Di_Point)							--�i�m s� phe иa
	--*****************--
	local Winner																											--T�n phe th�ng cu�c
	local Guild_Winner																										--S� hi�u phe th�ng cu�c
	--*****************--
	local Max_Point=Jin_Point
	Winner="Kim"
	Guild_Winner=x930500_g_Guild_Info["Jin"].CampID
	if Max_Point<Mu_Point then
		Winner="M�c"
		Guild_Winner=x930500_g_Guild_Info["Mu"].CampID
	end
	if Max_Point<Shui_Point then
		Winner="Th�y"
		Guild_Winner=x930500_g_Guild_Info["Shui"].CampID
	end
	if Max_Point<Hoa_Point then
		Winner="H�a"
		Guild_Winner=x930500_g_Guild_Info["Hoa"].CampID
	end
	if Max_Point<Tu_Point then
		Winner="Th�"
		Guild_Winner=x930500_g_Guild_Info["Tu"].CampID
	end
	if Max_Point<Feng_Point then
		Winner="Phong"
		Guild_Winner=x930500_g_Guild_Info["Feng"].CampID
	end
	if Max_Point<Tian_Point then
		Winner="Thi�n"
		Guild_Winner=x930500_g_Guild_Info["Tian"].CampID
	end
	if Max_Point<Di_Point then
		Winner="иa"
		Guild_Winner=x930500_g_Guild_Info["Di"].CampID
	end
	--*****************--
	local OK=1
	if Winner==Jin_Point then
		OK=OK+1
	end
	if Winner==Mu_Point then
		OK=OK+1
	end
	if Winner==Shui_Point then
		OK=OK+1
	end
	if Winner==Hoa_Point then
		OK=OK+1
	end
	if Winner==Tu_Point then
		OK=OK+1
	end
	if Winner==Feng_Point then
		OK=OK+1
	end
	if Winner==Tian_Point then
		OK=OK+1
	end
	if Winner==Di_Point then
		OK=OK+1
	end
	if OK~=1 then
		Winner=nil
	end
	--*****************--
	if Winner then
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RN�i kh�i l�a #GPh�ng Ho�ng C� Th�nh#R ng�y h�m nay, phe #G"..Winner.."#R �� gi�nh th�ng l�i tuy�t �i, d�nh danh hi�u #GB� Ch� Ph�ng Ho�ng C� Th�nh#R, m�i ng߶i c�ng ch�c m�ng h� n�o!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RN�i kh�i l�a #GPh�ng Ho�ng C� Th�nh#R ng�y h�m nay, ti�c l� kh�ng phe n�o d�nh th�ng l�i c�, ch�ng ta c�ng ch� l�n sau � t�m ra danh hi�u #GB� Ch� Ph�ng Ho�ng C� Th�nh#R v�y!")
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)															--Phe ng߶i ch�i th� i
		if Flag==Guild_Winner then
			local str=format("#Y[Chi�n tr߶ng Ph�ng Ho�ng C� Th�nh]#r#WTrong tr�n huy�t chi�n v�a r�i t�i #GPh�ng Ho�ng C� Th�nh#W, phe c�a c�c h� l� phe #G%s#W �� �o�t ���c danh hi�u #GB� Ch� Ph��ng Ho�ng C� Th�nh#W, ch�c m�ng c�c h�. C�c h� h�y �n g�p NPC nh�n ph�n th߷ng �i!",Winner)								
			LuaFnSendSystemMail(sceneId,GetName(sceneId,HumanId),str)															--Send mail
			SetMissionData(sceneId,HumanId,MD_FENGHUANG_WINNER,1)																--Ng߶i ch�i n�y l� phe th�ng cu�c					
		else
			SetMissionData(sceneId,HumanId,MD_FENGHUANG_WINNER,0)																--Ng߶i ch�i n�y l� phe thua cu�c
		end
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ng߶i ch�i th� i
		SetUnitCampID(sceneId,HumanId,HumanId,-1)																				--Reset l�i tr�ng th�i chi�n �u
		x930500_NotifyFailTips(sceneId,HumanId,"Tr�n �u �� k�t th�c, c�c h� s� ���c chuy�n v� th�nh th�!")
		local Current_Activity_Point=GetMissionData(sceneId,HumanId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,HumanId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		x930500_NotifyFailTips(sceneId,HumanId,"C�c h� �� gia t�ng 10 �i�m ho�t �ng!")
		NewWorld(sceneId,HumanId,x930500_g_Map_Out,x930500_g_Out_Pos_X,x930500_g_Out_Pos_Y)										--��a ng߶i ch�i v� �a �i�m b�o danh ban �u
	end
	--*****************--
	StopOneActivity(sceneId,x930500_g_Activity_Index)
	--*****************--
	
end
--**********************************--
--*    Update Feng Huang Score     *--
--**********************************--
function x930500_UpdateFengHuangScore(sceneId,selfId)

	--*****************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Jin_Point))				--�i�m s� phe Kim
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Mu_Point))				--�i�m s� phe M�c
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Shui_Point))				--�i�m s� phe Th�y
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Hoa_Point))				--�i�m s� phe H�a
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tu_Point))				--�i�m s� phe Th�
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Feng_Point))				--�i�m s� phe Phong
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tian_Point))				--�i�m s� phe Thi�n
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Di_Point))				--�i�m s� phe иa
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,300620152)
	--*****************--
	
end
--**********************************--
--*        Reset All Param         *--
--**********************************--
function x930500_ResetAllParam(sceneId,playerId)

	--*****************--
	SetMissionData(sceneId,playerId,MD_FENGHUANG_WINNER,0)																		--Reset l�i phe th�ng cu�c
	--*****************--
	
end
--**********************************--
--*        Notify Fail Tips        *--
--**********************************--
function x930500_NotifyFailTips(sceneId,selfId,Tip)

	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*****************--
	
end