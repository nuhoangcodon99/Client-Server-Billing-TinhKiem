--Ð¤u trß¶ng Phøng Hoàng C± Thành
--Author: Kenvin Sói

--************************--
x930500_g_ScriptId=930500							--ID Script
--************************--
x930500_g_On_Event_Time=21 							--Th¶i gian chiªn trß¶ng
x930500_g_ID_Map=442								--ID map chiªn trß¶ng
--************************--
x930500_g_Map_Out=0									--ID map r¶i khöi chiªn trß¶ng
x930500_g_Out_Pos_X=264								--T÷a ðµ X
x930500_g_Out_Pos_Y=252								--T÷a ðµ Y
--************************--
x930500_g_LimitedMember=0							--S¯ ngß¶i t¯i thi¬u m²i bên
--************************--
x930500_g_Activity_Index=38							--Ðánh d¤u hoÕt ðµng Phøng Hoàng C± Thành
x930500_g_Activity_Number_Param=8					--Param Activity
x930500_g_Activity_Time=floor(3900*1000)			--Th¶i gian hoÕt ðµng Phøng Hoàng C± Thành
--************************--
x930500_g_Activity_Jin_Point=0						--Ði¬m s¯ bên Kim
x930500_g_Activity_Mu_Point=1						--Ði¬m s¯ bên Mµc
x930500_g_Activity_Shui_Point=2						--Ði¬m s¯ bên Thüy
x930500_g_Activity_Hoa_Point=3						--Ði¬m s¯ bên Höa
x930500_g_Activity_Tu_Point=4						--Ði¬m s¯ bên Th±
x930500_g_Activity_Feng_Point=5						--Ði¬m s¯ bên Phong
x930500_g_Activity_Tian_Point=6						--Ði¬m s¯ bên Thiên
x930500_g_Activity_Di_Point=7						--Ði¬m s¯ bên Ð¸a
--************************--
x930500_g_Guild_Pos=								--T÷a ðµ NPC
{
	["Jin"]					=	{	Index=14000,	Name="Kim sÑ giä",				Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=63,	Pos_Y=36,	ScriptID=930502	},		--Phe Kim						
	["Mu"]					=	{	Index=14000,	Name="Mµc sÑ giä",				Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=251,	Pos_Y=26,	ScriptID=930502	},		--Phe Mµc
	["Shui"]				=	{	Index=14000,	Name="Thüy sÑ giä",				Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=294,	Pos_Y=67,	ScriptID=930502	},		--Phe Thüy
	["Hoa"]					=	{	Index=14000,	Name="Höa sÑ giä",				Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=296,	Pos_Y=256,	ScriptID=930502	},		--Phe Höa
	["Tu"]					=	{	Index=14000,	Name="Th± sÑ giä",				Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=265,	Pos_Y=290,	ScriptID=930502	},		--Phe Th±
	["Feng"]				=	{	Index=14000,	Name="Phong sÑ giä",			Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=63,	Pos_Y=294,	ScriptID=930502	},		--Phe Phong
	["Tian"]				=	{	Index=14000,	Name="Thiên sÑ giä",			Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=27,	Pos_Y=246,	ScriptID=930502	},		--Phe Thiên
	["Di"]					=	{	Index=14000,	Name="Ð¸a sÑ giä",				Title="SÑ giä Phøng Hoàng C± Thành",	Pos_X=35,	Pos_Y=56,	ScriptID=930502	},		--Phe Ð¸a
	["Zhan Qi"]				=	{	Index=14011,	Name="Phøng Hoàng Chiªn KÏ",	Title="",								Pos_X=162,	Pos_Y=161,	ScriptID=930504	},		--Phøng Hoàng Chiªn KÏ
	["Shui Xing - Huang"]	=	{	Index=14008,	Name="Hoàng S¡c Thüy Tinh",		Title="Vô",								Pos_X=92,	Pos_Y=90,	ScriptID=930503	},		--Hoàng S¡c Thüy Tinh
	["Shui Xing - Lv"]		=	{	Index=14010,	Name="Løc S¡c Thüy Tinh",		Title="Vô",								Pos_X=229,	Pos_Y=90,	ScriptID=930503	},		--Løc S¡c Thüy Tinh
	["Shui Xing - Zheng"]	=	{	Index=14006,	Name="Chanh S¡c Thüy Tinh",		Title="Vô",								Pos_X=230,	Pos_Y=230,	ScriptID=930503	},		--Chanh S¡c Thüy Tinh
	["Shui Xing - Zi"]		=	{	Index=14004,	Name="TØ S¡c Thüy Tinh",		Title="Vô",								Pos_X=91,	Pos_Y=229,	ScriptID=930503	},		--TØ S¡c Thüy Tinh
}
--************************--	
x930500_g_Guild_Info=								--Thông tin phe
{
	["Jin"]		=	{	CampID=200,	Pos_X=66,	Pos_Y=34	},	--Phe Kim
	["Mu"]		=	{	CampID=201,	Pos_X=252,	Pos_Y=28	},	--Phe Mµc
	["Shui"]	=	{	CampID=202,	Pos_X=289,	Pos_Y=64	},	--Phe Thüy
	["Hoa"]		=	{	CampID=203,	Pos_X=292,	Pos_Y=252	},	--Phe Höa
	["Tu"]		=	{	CampID=204,	Pos_X=261,	Pos_Y=292	},	--Phe Th±
	["Feng"]	=	{	CampID=205,	Pos_X=66,	Pos_Y=291	},	--Phe Phong
	["Tian"]	=	{	CampID=206,	Pos_X=30,	Pos_Y=239	},	--Phe Thiên
	["Di"]		=	{	CampID=207,	Pos_X=35,	Pos_Y=60	},	--Phe Ð¸a
}
--************************--
x930500_g_TestMode=0								--Test mode (1~Enable, 0~Disable)
x930500_g_GMName="GGG05"							--Tên nhân v§t GM phø trách test
--************************--
x930500_g_Gift={
	{	Index=30503137,	Number=1	},	--Th¶i trang ph¯i sÑc gia công phù
	{	Index=30503136,	Number=1	},	--Th¶i trang ph¯i sÑc thanh tr× phù
	{	Index=30503135,	Number=1	},	--Th¶i trang ph¯i sÑc ði¬m xuyªt phù
	{	Index=30503134,	Number=1	},	--Kim thoa
	{	Index=30010080,	Number=1	},	--Chân nguyên phách
	{	Index=20503062,	Number=10	},	--Ly höa
	{	Index=20503061,	Number=1	},	--Trang b¸ tinh thông phù
}
--************************--
x930500_g_Card=30010083								--Phøng Hoàng Lång Mµ Thông Hành L®nh
--************************--

--*****************************--
--*       On Enumerate        *--
--*****************************--
function x930500_OnEnumerate(sceneId,selfId,targetId)

	--*****************--
	local Last_Time_Winner=GetMissionData(sceneId,selfId,MD_FENGHUANG_WINNER)
	local nHours=GetHour()
	if Last_Time_Winner==1 then
		AddNumText(sceneId,x930500_g_ScriptId,"Nh§n ph¥n thß·ng l¥n trß¾c",6,2)
	elseif (nHours==x930500_g_On_Event_Time-1 and nMinutes>=30) or x930500_g_TestMode==1 then
		AddText(sceneId,"#YHi®n tÕi quân s¯ các bên nhß sau:")
		AddText(sceneId,"    Phe #YKim#W: #G"..x930500_CheckMember(sceneId,"Jin"))
		AddText(sceneId,"    Phe #YMµc#W: #G"..x930500_CheckMember(sceneId,"Mu"))
		AddText(sceneId,"    Phe #YThüy#W: #G"..x930500_CheckMember(sceneId,"Shui"))
		AddText(sceneId,"    Phe #YHöa#W: #G"..x930500_CheckMember(sceneId,"Hoa"))
		AddText(sceneId,"    Phe #YTh±#W: #G"..x930500_CheckMember(sceneId,"Tu"))
		AddText(sceneId,"    Phe #YPhong#W: #G"..x930500_CheckMember(sceneId,"Feng"))
		AddText(sceneId,"    Phe #YThiên#W: #G"..x930500_CheckMember(sceneId,"Tian"))
		AddText(sceneId,"    Phe #YÐ¸a#W: #G"..x930500_CheckMember(sceneId,"Di"))
		AddNumText(sceneId,x930500_g_ScriptId,"Báo danh Phøng Hoàng C± Thành",6,0)
	else
		AddText(sceneId,"HoÕt ðµng b¡t ð¥u vào #G21 gi¶#W m²i ngày, th¶i gian báo danh là #G30 phút#W trß¾c khi khai m· ð¤u trß¶ng. Hi®n chßa ðªn gi¶ báo danh, các hÕ tr· lÕi sau!")
	end
	AddNumText(sceneId,x930500_g_ScriptId,"V« Phøng Hoàng C± Thành",11,100)
	--*****************--
	if x930500_g_TestMode==1 and strfind(GetName(sceneId,selfId),x930500_g_GMName) then
		AddNumText(sceneId,x930500_g_ScriptId,"Vào Phøng Hoàng C± Thành",6,11)
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
			AddText(sceneId,"Các hÕ c¥n chú ý nªu s¯ lßþng quân s¯ m²i phe không ðü "..x930500_g_LimitedMember.." thì hoÕt ðµng s¨ b¸ hüy bö.")
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GKim",6,3)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GMµc",6,4)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GThüy",6,5)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GHöa",6,6)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GTh±",6,7)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GPhong",6,8)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GThiên",6,9)
			AddNumText(sceneId,x930500_g_ScriptId,"Gia nh§p #GÐ¸a",6,10)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==2 then		
		x930500_RecieveBonus(sceneId,selfId,targetId)													--Nh§n ph¥n thß·ng l¥n trß¾c		
	end
	--*****************--
	if key==3 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Jin"].CampID)				--Ngß¶i ch½i gia nh§p quân Kim
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YKim#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==4 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Mu"].CampID)				--Ngß¶i ch½i gia nh§p quân Mµc
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YMµc#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==5 then
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Shui"].CampID)			--Ngß¶i ch½i gia nh§p quân Thüy
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YThüy#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key==6 then
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Hoa"].CampID)				--Ngß¶i ch½i gia nh§p quân Höa
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YHöa#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key==7 then
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Tu"].CampID)				--Ngß¶i ch½i gia nh§p quân Th±
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YTh±#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key==8 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Feng"].CampID)			--Ngß¶i ch½i gia nh§p quân Phong
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YPhong#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==9 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Tian"].CampID)			--Ngß¶i ch½i gia nh§p quân Thiên
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YThiên#W thành công.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
	--*****************--
	if key==10 then		
		SetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG,x930500_g_Guild_Info["Di"].CampID)				--Ngß¶i ch½i gia nh§p quân Ð¸a
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã báo danh phe #YÐ¸a#W thành công.")
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
			AddText(sceneId,"N½i chiªn trß¶ng kh¯c li®t mang tên #GPhøng Hoàng C± Thành#W là n½i di­n ra r¤t nhi«u cuµc chiªn ðçm máu cüa qu¥n hùng trên giang h°.")
			AddText(sceneId,"Chiªn trß¶ng chia thành #G8 phe#W là #YKim#W, #YMµc#W, #YThüy#W, #YHöa#W, #YTh±#W, #YPhong#W, #YThiên#W, #YÐ¸a#W cùng nhau tranh ðoÕt #GPhøng Hoàng Chiªn KÏ#W giành ði¬m tích lûy chiªn trß¶ng v« cho phe mình.")
			AddText(sceneId,"Ð¬ tham gia chiªn ð¤u, các hÕ buµc phäi ð¥u quân cho #G1 trong 8 phe#W.")
			AddText(sceneId,"Sau khi báo danh thành công, ðªn ðúng th¶i gian, các hÕ s¨ ðßþc d¸ch chuy¬n vào chiªn trß¶ng #GPhøng Hoàng C± Thành#W khói lØa kh¯c li®t.")
			AddText(sceneId,"Hãy c¯ g¡ng l§p công b¢ng vi®c dành l¤y lãnh ð¸a và mang chiªn kÏ v« cho phe mình và ghi ði¬m.")
			AddText(sceneId,"Cu¯i tr§n chiªn phe nào th¡ng cuµc s¨ nh§n ðßþc ph¥n thß·ng l¾n kinh nghi®m và #GChân Nguyên Tinh Phách (c¯ ð¸nh)#W.")
			AddText(sceneId,"HoÕt ðµng khai m· vào #G21 gi¶#W m²i ngày, báo danh #Gtrß¾c 30 phút#W. Các hÕ hãy n¡m væng l¸ch trình mà tham gia nhé.")
			AddText(sceneId,"Nªu m²i bên quân s¯ không ðü #G"..x930500_g_LimitedMember.."#W thành viên thì tr§n ð¤u s¨ b¸ hüy bö.")
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
	local Jin_Member=x930500_CheckMember(sceneId,"Jin")																								--S¯ ngß¶i ðång ký bên Kim
	local Mu_Member=x930500_CheckMember(sceneId,"Mu")																								--S¯ ngß¶i ðång ký bên Mµc
	local Shui_Member=x930500_CheckMember(sceneId,"Shui")																							--S¯ ngß¶i ðång ký bên Thüy
	local Hoa_Member=x930500_CheckMember(sceneId,"Hoa")																								--S¯ ngß¶i ðång ký bên Höa
	local Tu_Member=x930500_CheckMember(sceneId,"Tu")																								--S¯ ngß¶i ðång ký bên Th±
	local Feng_Member=x930500_CheckMember(sceneId,"Feng")																							--S¯ ngß¶i ðång ký bên Phong
	local Tian_Member=x930500_CheckMember(sceneId,"Tian")																							--S¯ ngß¶i ðång ký bên Thiên
	local Di_Member=x930500_CheckMember(sceneId,"Di")																								--S¯ ngß¶i ðång ký bên Ð¸a
	if Jin_Member<x930500_g_LimitedMember or Mu_Member<x930500_g_LimitedMember or Shui_Member<x930500_g_LimitedMember or Hoa_Member<x930500_g_LimitedMember or Tu_Member<x930500_g_LimitedMember or Feng_Member<x930500_g_LimitedMember or Tian_Member<x930500_g_LimitedMember or Di_Member<x930500_g_LimitedMember then		--Không ðü ði«u ki®n tham chiªn
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RÐ¤u trß¶ng #GPhøng Hoàng C± Thành#R l¥n này quân s¯ các bên không ðÕt yêu c¥u ð« ra, nên tr§n ð¤u ðã b¸ hüy bö!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RCuµc chiªn #GPhøng Hoàng C± Thành#R ðã b¡t ð¥u. Không biªt l¥n này phe nào s¨ dành ðßþc danh hi®u #GBá Chü Phøng Hoàng C± Thành#R ðây? Chúng ta cùng dñ ðoán nhé!")
		local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHuman-1 do
			local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																					--Id ngß¶i ch½i thÑ i
			local mapindex=x930500_g_ID_Map																											--ID map Trác Lµc
			local x																																	--T÷a ðµ X
			local y																																	--T÷a ðµ Y
			for i,Guild in x930500_g_Guild_Info do
				if GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)==Guild.CampID then
					x=Guild.Pos_X
					y=Guild.Pos_Y
					NewWorld(sceneId,HumanId,mapindex,x,y)																							--D¸ch chuy¬n ðªn Phøng Hoàng C± Thành
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
	StartOneActivity(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Time,x930500_g_Activity_Number_Param)										--B¡t ð¥u m· hoÕt ðµng
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Jin_Point,0)																--Ði¬m s¯ phe Kim
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Mu_Point,0)																--Ði¬m s¯ phe Mµc
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Shui_Point,0)																--Ði¬m s¯ phe Thüy
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Hoa_Point,0)																--Ði¬m s¯ phe Höa
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tu_Point,0)																--Ði¬m s¯ phe Th±
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Feng_Point,0)																--Ði¬m s¯ phe Phong
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tian_Point,0)																--Ði¬m s¯ phe Thiên
	SetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Di_Point,0)																--Ði¬m s¯ phe Ð¸a
	--*****************--
	for i,NPC in x930500_g_Guild_Pos do
		local Monster_Index=LuaFnCreateMonster(sceneId,NPC.Index,NPC.Pos_X,NPC.Pos_Y,3,0,NPC.ScriptID)												--Kh·i tÕo NPC
		SetCharacterName(sceneId,Monster_Index,NPC.Name)																							--Set tên cho NPC
		SetCharacterTitle(sceneId,Monster_Index,NPC.Title)																							--Set danh hi®u cho NPC
		SetCharacterDieTime(sceneId,Monster_Index,36000000)																							--Set danh hi®u cho NPC
		if strfind(NPC.Name,"Thüy Tinh") then
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
		if nDay~=GetMissionData(sceneId,playerId,MD_FENGHUANG_LAST_DAY_TIME) then																--Không phäi th¶i gian hoÕt ðµng l¥n này
			x930500_NotifyFailTips(sceneId,playerId,"Cuµc chiªn l¥n trß¾c cüa các hÕ ðã kªt thúc!")
			return
		end
		local nHours=GetHour()
		if nHours~=x930500_g_On_Event_Time then																									--HoÕt ðµng chßa m·
			x930500_NotifyFailTips(sceneId,playerId,"Hi®n chßa phäi th¶i gian Chiªn trß¶ng Phøng Hoàng C± Thành!")
			return
		end
	elseif strfind(GetName(sceneId,playerId),x930500_g_GMName) then
		x930500_OnStartTime(sceneId)
	end
	--*****************--
	local Flag=GetMissionData(sceneId,playerId,MD_FENGHUANG_FLAG)																				--Phe cüa ngß¶i ch½i
	SetUnitCampID(sceneId,playerId,playerId,Flag)																								--TrÕng thái chiªn ð¤u
	--*****************--
	local x,y
	for i,Guild in x930500_g_Guild_Info do
		if Guild.CampID==Flag then
			x=Guild.Pos_X
			y=Guild.Pos_Y
			SetPlayerDefaultReliveInfo(sceneId,playerId,"%100",-1,"0",sceneId,x,y)																--Ð£t t÷a ðµ ði¬m h°i sinh
			if Flag==200 then
				AwardNickTitle(sceneId,playerId,"#YKim chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==201 then
				AwardNickTitle(sceneId,playerId,"#GMµc chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==202 then
				AwardNickTitle(sceneId,playerId,"#BThüy chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==203 then
				AwardNickTitle(sceneId,playerId,"#cFF0000Höa chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==204 then
				AwardNickTitle(sceneId,playerId,"##c993333Th± chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==205 then
				AwardNickTitle(sceneId,playerId,"#WPhong chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==206 then
				AwardNickTitle(sceneId,playerId,"##cff6633Thiên chiªn sÛ")
				DispatchAllTitle(sceneId,playerId)
			elseif Flag==207 then
				AwardNickTitle(sceneId,playerId,"##cff66ccÐ¸a chiªn sÛ")
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
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																		--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																--Id ngß¶i ch½i thÑ i
		local nDay=GetDayTime()
		if x930500_g_TestMode==0 then
			if nDay~=GetMissionData(sceneId,HumanId,MD_FENGHUANG_LAST_DAY_TIME) then											--Không phäi th¶i gian hoÕt ðµng l¥n này
				x930500_NotifyFailTips(sceneId,HumanId,"Cuµc chiªn l¥n trß¾c cüa các hÕ ðã kªt thúc!")
				SetUnitCampID(sceneId,HumanId,HumanId,-1)																		--Reset lÕi trÕng thái chiªn ð¤u
				NewWorld(sceneId,HumanId,x930500_g_Map_Out,x930500_g_Out_Pos_X,x930500_g_Out_Pos_Y)								--Ðßa ngß¶i ch½i v« ð¸a ði¬m báo danh ban ð¥u
				return
			end
			local nHours=GetHour()
			if nHours~=x930500_g_On_Event_Time then																				--HoÕt ðµng chßa m·
				x930500_NotifyFailTips(sceneId,HumanId,"Hi®n chßa phäi th¶i gian Chiªn trß¶ng Phøng Hoàng C± Thành!")
				SetUnitCampID(sceneId,HumanId,HumanId,-1)																		--Reset lÕi trÕng thái chiªn ð¤u
				NewWorld(sceneId,HumanId,x930500_g_Map_Out,x930500_g_Out_Pos_X,x930500_g_Out_Pos_Y)								--Ðßa ngß¶i ch½i v« ð¸a ði¬m báo danh ban ð¥u
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
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)					--Ki¬m tra phe ngß¶i ch½i
		if Flag==nFlag then
			x930500_NotifyFailTips(sceneId,HumanId,GetName(sceneId,selfId).." ðã hµ kÏ thành công, toàn phe gia tång ði¬m tích lûy 200 ði¬m!")
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
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)					--Ki¬m tra phe ngß¶i ch½i
		if Flag==x930500_g_Guild_Info[Guild_String].CampID then
			Member_Count=Member_Count+1													--Tång s¯ ngß¶i ch½i lên
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
		x930500_NotifyFailTips(sceneId,selfId,"Các hÕ c¥n s¡p xªp lÕi ít nh¤t 2 ô tr¯ng trong ô ÐÕo cø và 1 ô Nguyên li®u!")
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
	x930500_NotifyFailTips(sceneId,selfId,"Các hÕ ðã gia tång 50 ði¬m hoÕt ðµng!")
	--*****************--
	TryRecieveItem(sceneId,selfId,x930500_g_Card,1)
	--*****************--
	x930500_NotifyFailTips(sceneId,selfId,"Các hÕ ðã nh§n ðßþc "..nNumber.." cái "..GetItemName(sceneId,nItem).."!")
	x930500_NotifyFailTips(sceneId,selfId,"Các hÕ ðã nh§n ðßþc 1 cái "..GetItemName(sceneId,x930500_g_Card).."!")
	--*****************--
	x930500_ResetAllParam(sceneId,selfId)
	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Nh§n thß·ng thành công!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*****************--

end
--*****************************--
--*       On Exit Time        *--
--*****************************--
function x930500_OnExitTime(sceneId)														

	--*****************--
	local Jin_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Jin_Point)							--Ði¬m s¯ phe Kim
	local Mu_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Mu_Point)							--Ði¬m s¯ phe Mµc
	local Shui_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Shui_Point)						--Ði¬m s¯ phe Thüy
	local Hoa_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Hoa_Point)							--Ði¬m s¯ phe Höa
	local Tu_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tu_Point)							--Ði¬m s¯ phe Th±
	local Feng_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Feng_Point)						--Ði¬m s¯ phe Phong
	local Tian_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tian_Point)						--Ði¬m s¯ phe Thiên
	local Di_Point=GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Di_Point)							--Ði¬m s¯ phe Ð¸a
	--*****************--
	local Winner																											--Tên phe th¡ng cuµc
	local Guild_Winner																										--S¯ hi®u phe th¡ng cuµc
	--*****************--
	local Max_Point=Jin_Point
	Winner="Kim"
	Guild_Winner=x930500_g_Guild_Info["Jin"].CampID
	if Max_Point<Mu_Point then
		Winner="Mµc"
		Guild_Winner=x930500_g_Guild_Info["Mu"].CampID
	end
	if Max_Point<Shui_Point then
		Winner="Thüy"
		Guild_Winner=x930500_g_Guild_Info["Shui"].CampID
	end
	if Max_Point<Hoa_Point then
		Winner="Höa"
		Guild_Winner=x930500_g_Guild_Info["Hoa"].CampID
	end
	if Max_Point<Tu_Point then
		Winner="Th±"
		Guild_Winner=x930500_g_Guild_Info["Tu"].CampID
	end
	if Max_Point<Feng_Point then
		Winner="Phong"
		Guild_Winner=x930500_g_Guild_Info["Feng"].CampID
	end
	if Max_Point<Tian_Point then
		Winner="Thiên"
		Guild_Winner=x930500_g_Guild_Info["Tian"].CampID
	end
	if Max_Point<Di_Point then
		Winner="Ð¸a"
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
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RN½i khói lØa #GPhøng Hoàng C± Thành#R ngày hôm nay, phe #G"..Winner.."#R ðã giành th¡ng lþi tuy®t ð¯i, dành danh hi®u #GBá Chü Phøng Hoàng C± Thành#R, m÷i ngß¶i cùng chúc m×ng h÷ nào!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RN½i khói lØa #GPhøng Hoàng C± Thành#R ngày hôm nay, tiªc là không phe nào dành th¡ng lþi cä, chúng ta cùng ch¶ l¥n sau ð¬ tìm ra danh hi®u #GBá Chü Phøng Hoàng C± Thành#R v§y!")
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_FENGHUANG_FLAG)															--Phe ngß¶i ch½i thÑ i
		if Flag==Guild_Winner then
			local str=format("#Y[Chiªn trß¶ng Phøng Hoàng C± Thành]#r#WTrong tr§n huyªt chiªn v×a r°i tÕi #GPhøng Hoàng C± Thành#W, phe cüa các hÕ là phe #G%s#W ðã ðoÕt ðßþc danh hi®u #GBá Chü Phßþng Hoàng C± Thành#W, chúc m×ng các hÕ. Các hÕ hãy ðªn g£p NPC nh§n ph¥n thß·ng ði!",Winner)								
			LuaFnSendSystemMail(sceneId,GetName(sceneId,HumanId),str)															--Send mail
			SetMissionData(sceneId,HumanId,MD_FENGHUANG_WINNER,1)																--Ngß¶i ch½i này là phe th¡ng cuµc					
		else
			SetMissionData(sceneId,HumanId,MD_FENGHUANG_WINNER,0)																--Ngß¶i ch½i này là phe thua cuµc
		end
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ngß¶i ch½i thÑ i
		SetUnitCampID(sceneId,HumanId,HumanId,-1)																				--Reset lÕi trÕng thái chiªn ð¤u
		x930500_NotifyFailTips(sceneId,HumanId,"Tr§n ð¤u ðã kªt thúc, các hÕ s¨ ðßþc chuy¬n v« thành th¸!")
		local Current_Activity_Point=GetMissionData(sceneId,HumanId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,HumanId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		x930500_NotifyFailTips(sceneId,HumanId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
		NewWorld(sceneId,HumanId,x930500_g_Map_Out,x930500_g_Out_Pos_X,x930500_g_Out_Pos_Y)										--Ðßa ngß¶i ch½i v« ð¸a ði¬m báo danh ban ð¥u
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
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Jin_Point))				--Ði¬m s¯ phe Kim
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Mu_Point))				--Ði¬m s¯ phe Mµc
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Shui_Point))				--Ði¬m s¯ phe Thüy
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Hoa_Point))				--Ði¬m s¯ phe Höa
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tu_Point))				--Ði¬m s¯ phe Th±
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Feng_Point))				--Ði¬m s¯ phe Phong
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Tian_Point))				--Ði¬m s¯ phe Thiên
		UICommand_AddInt(sceneId,GetActivityParam(sceneId,x930500_g_Activity_Index,x930500_g_Activity_Di_Point))				--Ði¬m s¯ phe Ð¸a
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,300620152)
	--*****************--
	
end
--**********************************--
--*        Reset All Param         *--
--**********************************--
function x930500_ResetAllParam(sceneId,playerId)

	--*****************--
	SetMissionData(sceneId,playerId,MD_FENGHUANG_WINNER,0)																		--Reset lÕi phe th¢ng cuµc
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