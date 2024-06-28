--Chiªn trß¶ng T¯ng Liêu
--Author: Kenvin Sói

--************************--
x910072_g_ScriptId=910072							--ID Script
--************************--
x910072_g_On_Event_Time=21 							--Th¶i gian chiªn trß¶ng
x910072_g_ID_Map=314								--ID map chiªn trß¶ng
--************************--
x910072_g_CampID_Song=10							--TrÕng thái chiªn ð¤u bên T¯ng
x910072_g_CampID_Liao=11							--TrÕng thái chiªn ð¤u bên Liêu
--************************--
x910072_g_Pos_Song = {
	["X"]=36,										--Pos X T¯ng	
	["Y"]=28										--Pos Y T¯ng
}

x910072_g_Pos_Liao = {
	["X"]=213,										--Pos X Liêu	
	["Y"]=219										--Pos Y Liêu
} 		
--************************--
x910072_g_Flag_Song=0								--Ðánh d¤u phe T¯ng
x910072_g_Flag_Liao=1								--Ðánh d¤u phe Liêu
--************************--
x910072_g_Map_Out=1									--ID map r¶i khöi chiªn trß¶ng
x910072_g_Out_Pos_X=291								--T÷a ðµ X
x910072_g_Out_Pos_Y=239								--T÷a ðµ Y
--************************--
x910072_g_LimitedMember=5							--S¯ ngß¶i t¯i thi¬u m²i bên
x910072_g_MemberCompare=10							--Ðµ chênh l®ch t¯i ða giæa quân s¯ 2 bên
--************************--
x910072_g_Activity_Index=38							--Ðánh d¤u hoÕt ðµng T¯ng Liêu
x910072_g_Activity_Number_Param=5					--Param Activity
x910072_g_Activity_Time=floor(3900*1000)			--Th¶i gian hoÕt ðµng T¯ng Liêu
--************************--
x910072_g_Activity_Song_Point=0						--Ði¬m s¯ bên T¯ng
x910072_g_Activity_Liao_Point=1						--Ði¬m s¯ bên Liêu
x910072_g_Activity_Song_Mem=2						--Quân s¯ bên T¯ng
x910072_g_Activity_Liao_Mem=3						--Quân s¯ bên Liêu
--************************--
x910072_g_TestMode=0								--Test mode (1~Enable, 0~Disable)
x910072_g_GMName="GM"							--Tên nhân v§t GM phø trách test
x910072_g_GMName1="gm"							--Tên nhân v§t GM phø trách test
x910072_g_GMName2="gm"							--Tên nhân v§t GM phø trách test
--************************--
x910072_g_Human_List={}								--Mäng lßu s¯ ngß¶i ch½i trong chiªn trß¶ng
x910072_g_LimitPointPerKill=5000					--Gi¾i hÕn s¯ ði¬m tích lûy t¯i ða ðÕt ðßþc khi giªt ngß¶i ch½i (Giá tr¸ nhö nh¤t cüa ði¬m hi®n tÕi ngß¶i ch½i b¸ giªt v¾i giá tr¸ này)
--************************--
x910072_g_Title_List=
{
	{	Title="#W%s sÛ binh",			Point_Needed=0		},
	{	Title="#G%s hi®u úy",			Point_Needed=1000	},
	{	Title="#B%s th¯ng lînh",		Point_Needed=5000	},
	{	Title="#cff6633%s phó tß¾ng",	Point_Needed=10000	},
	{	Title="#cFF0000%s ðÕi tß¾ng",	Point_Needed=15000	},
	{	Title="#Y%s nguyên soái",		Point_Needed=30000	},
}
--************************--
x910072_g_Gift={																				--Ph¥n thß·ng
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	30503137,	--Th¶i trang ph¯i sÑc gia công phù
	30503136,	--Th¶i trang ph¯i sÑc thanh tr× phù
	30503135,	--Th¶i trang ph¯i sÑc ði¬m xuyªt phù
	30503134,	--Kim thoa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503061,	--Trang b¸ tinh thông phù
	30010144,	--CNP CÐ
}
--************************--

--*****************************--
--*       On Enumerate        *--
--*****************************--
function x910072_OnEnumerate(sceneId,selfId,targetId)

	--*****************--
	local Last_Time_Rank=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_RANK)
	local nHours=GetHour()
	local nMinutes=GetMinute()
	if Last_Time_Rank>0 then
		AddNumText(sceneId,x910072_g_ScriptId,"Nh§n ph¥n thß·ng l¥n trß¾c",6,2)
	elseif (nHours==x910072_g_On_Event_Time-1 and nMinutes>=30) or x910072_g_TestMode==1 then
		AddText(sceneId,"#YHi®n tÕi quân s¯ hai bên nhß sau:")
		AddText(sceneId,"    Bên #GT¯ng#W là #G"..x910072_CheckSongMember(sceneId).."#W ngß¶i.\n    Bên #GLiêu#W là #G"..x910072_CheckLiaoMember(sceneId).."#W ngß¶i.")
		AddNumText(sceneId,x910072_g_ScriptId,"Báo danh chiªn trß¶ng T¯ng Liêu",6,0)
	else
		AddText(sceneId,"HoÕt ðµng b¡t ð¥u vào #G19 gi¶#W m²i ngày, th¶i gian báo danh là #G30 phút#W trß¾c khi khai m· chiªn trß¶ng. Hi®n chßa ðªn gi¶ báo danh, các hÕ tr· lÕi sau!")
	end
	AddNumText(sceneId,x910072_g_ScriptId,"V« chiªn trß¶ng T¯ng Liêu",11,5)
	--*****************--
	if x910072_g_TestMode==1 and (strfind(GetName(sceneId,selfId),x910072_g_GMName) or strfind(GetName(sceneId,selfId),x910072_g_GMName1) or strfind(GetName(sceneId,selfId),x910072_g_GMName2)) then	
		AddNumText(sceneId,x910072_g_ScriptId,"Vào chiªn trß¶ng T¯ng Liêu",6,6)
	end
	--*****************--
	
end
--*****************************--
--*     On Default Event      *--
--*****************************--
function x910072_OnDefaultEvent(sceneId,selfId,targetId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Phe #GT¯ng#W và phe #GLiêu#W ð«u không ch¸u nhß¶ng nh¸n lçn nhau. Nhân sÛ võ lâm giang h° chï ðßþc phép ch÷n mµt phe mà thôi!")
			AddText(sceneId,"#YHi®n tÕi quân s¯ hai bên nhß sau:")
			AddText(sceneId,"    Bên #GT¯ng#W là #G"..x910072_CheckSongMember(sceneId).."#W ngß¶i.\n    Bên #GLiêu#W là #G"..x910072_CheckLiaoMember(sceneId).."#W ngß¶i.")
			AddNumText(sceneId,x910072_g_ScriptId,"Gia nh§p #GT¯ng",6,3)
			AddNumText(sceneId,x910072_g_ScriptId,"Gia nh§p #GLiêu",6,4)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key == 2 then
		
		x910072_RecieveBonus(sceneId,selfId,targetId)										--Nh§n ph¥n thß·ng l¥n trß¾c
		
	end
	--*****************--
	if key == 3 then
		
		SetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG,x910072_g_Flag_Song)					--Ngß¶i ch½i gia nh§p quân T¯ng
		local Song_Member=x910072_CheckSongMember(sceneId)
		BeginEvent(sceneId)
			AddText(sceneId,"Quân #GT¯ng#W hi®n có #G"..Song_Member.."#W chiªn binh.")
			AddText(sceneId,"Các hÕ ðã ðång ký gia nh§p quân #GT¯ng#W. Tuy nhiên nªu mu¯n ðång ký lÕi, có th¬ ð¯i thoÕi v¾i ta mµt l¥n næa!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key == 4 then
		
		SetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG,x910072_g_Flag_Liao)					--Ngß¶i ch½i gia nh§p quân Liêu
		local Liao_Member=x910072_CheckLiaoMember(sceneId)
		BeginEvent(sceneId)
			AddText(sceneId,"Quân #GLiêu#W hi®n có #G"..Liao_Member.."#W chiªn binh.")
			AddText(sceneId,"Các hÕ ðã ðång ký gia nh§p quân #GLiêu#W. Tuy nhiên nªu mu¯n ðång ký lÕi, có th¬ ð¯i thoÕi v¾i ta mµt l¥n næa!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key==5 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Th¶i gian g¥n ðây, hai nß¾c #GT¯ng Liêu#W chiªn tranh liên miên, khiªn bá tính l¥m than, cuµc s¯ng tüi cñc nay càng khó khån h½n.")
			AddText(sceneId,"V¾i b±n ph§n là nhân sÛ võ lâm giang h°, các v¸ anh hùng hãy tham gia tr§n chiªn này, ðÑng v« bên công lý, d©p ð¸ch càng nhanh thì bách tính càng ðÞ kh±.")
			AddText(sceneId,"Ð¬ tham gia chiªn ð¤u, các hÕ buµc phäi ð¥u quân cho bên #GT¯ng#W ho£c #GLiêu#W.")
			AddText(sceneId,"Sau khi báo danh thành công, ðªn ðúng th¶i gian, các hÕ s¨ ðßþc d¸ch chuy¬n vào chiªn trß¶ng #GTrác Lµc#W khói lØa kh¯c li®t.")
			AddText(sceneId,"Hãy c¯ g¡ng l§p công b¢ng vi®c tiêu di®t các ð¯i thü phe ð¸ch và dành vinh quang v« cho phe cüa mình.")
			AddText(sceneId,"Cu¯i tr§n chiªn bên nào th¡ng cuµc s¨ nh§n ðßþc ph¥n thß·ng l¾n kinh nghi®m và #GÐi¬m tích lûy chiªn trß¶ng#W. Ngoài ra cån cÑ theo thÑ hÕng trong tr§n chiªn cüa mình, các hÕ cûng s¨ nh§n ðßþc mµt lßþng kinh nghi®m và #GÐi¬m tích lûy chiªn trß¶ng#W nh¤t ð¸nh.")
			AddText(sceneId,"HoÕt ðµng khai m· vào #G19 gi¶#W m²i ngày, báo danh #Gtrß¾c 30 phút#W. Các hÕ hãy n¡m væng l¸ch trình mà tham gia nhé.")
			AddText(sceneId,"Nªu m²i bên quân s¯ không ðü #G"..x910072_g_LimitedMember.."#W thành viên ho£c ðµ chênh l®ch thành viên hai bên quá #G"..x910072_g_MemberCompare.."#W thành viên thì tr§n ð¤u s¨ b¸ hüy bö.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key==6 then
		x910072_OnWarStartTime(sceneId)
	end
	--*****************--
	
end
--*****************************--
--*     On War Start Time     *--
--*****************************--
function x910072_OnWarStartTime(sceneId)														

	--*****************--
	local nHuman_Song=x910072_CheckSongMember(sceneId)																								--S¯ ngß¶i ðång ký bên T¯ng
	local nHuman_Liao=x910072_CheckLiaoMember(sceneId)																								--S¯ ngß¶i ðång ký bên Liêu
	if nHuman_Song<x910072_g_LimitedMember or nHuman_Liao<x910072_g_LimitedMember or abs(nHuman_Song-nHuman_Liao)>x910072_g_MemberCompare then		--Không ðü ði«u ki®n tham chiªn
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RCuµc chiªn #GT¯ng Liêu#R l¥n này quân s¯ hai bên không ðÕt yêu c¥u ð« ra, nên tr§n ð¤u ðã b¸ hüy bö!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RCuµc chiªn #GT¯ng Liêu#R ðã b¡t ð¥u. Quân s¯ bên T¯ng là #G"..nHuman_Song.."#R, quân s¯ bên Liêu là #G"..nHuman_Liao.."#R. Không biªt l¥n này ph¥n th¡ng s¨ nghiêng v« bên nào ðây? Chúng ta cùng dñ ðoán nhé!")
		local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHuman-1 do
			local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																					--Id ngß¶i ch½i thÑ i
			local mapindex=x910072_g_ID_Map																											--ID map Trác Lµc
			local x																																	--T÷a ðµ X
			local y																																	--T÷a ðµ Y
			local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)																				--Xác ð¸nh phe cüa ngß¶i ch½i
			local OK=1
			if Flag==x910072_g_Flag_Song then																										--Nªu ðång ký phe T¯ng
				x=x910072_g_Pos_Song["X"]																											--T÷a ðµ X cüa T¯ng trong map Trác Lµc
				y=x910072_g_Pos_Song["Y"]																											--T÷a ðµ Y cüa T¯ng trong map Trác Lµc
			elseif Flag==x910072_g_Flag_Liao then																									--Nªu ðång ký phe Liêu
				x=x910072_g_Pos_Liao["X"]																											--T÷a ðµ X cüa Liêu trong map Trác Lµc
				y=x910072_g_Pos_Liao["Y"]																											--T÷a ðµ Y cüa Liêu trong map Trác Lµc
			else
				OK=0
			end
			if OK==1 then
				x910072_ResetAllParam(sceneId,HumanId)																								--Reset lÕi các thuµc tính
				SetMissionData(sceneId,HumanId,MD_SONGLIAO_LAST_DAY_TIME,GetDayTime())
				NewWorld(sceneId,HumanId,mapindex,x,y)																								--D¸ch chuy¬n vào map Trác Lµc	
			end
		end
	end
	--*****************--

end
--*****************************--
--*       On Start Time       *--
--*****************************--
function x910072_OnStartTime(sceneId)														

	--*****************--
	StartOneActivity(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Time,x910072_g_Activity_Number_Param)										--B¡t ð¥u m· hoÕt ðµng
	SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point,0)																--Ði¬m s¯ bên T¯ng
	SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point,0)																--Ði¬m s¯ bên Liêu																--Khai m· Event
	--*****************--

end
--*****************************--
--*     Check Song Member     *--
--*****************************--
function x910072_CheckSongMember(sceneId)														

	--*****************--
	local Song_Mem=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki¬m tra phe ngß¶i ch½i
		if Flag==x910072_g_Flag_Song then
			Song_Mem=Song_Mem+1															--Tång s¯ ngß¶i ch½i bên T¯ng
		end
	end
	--*****************--
	return Song_Mem
	--*****************--

end
--*****************************--
--*     Check Liao Member     *--
--*****************************--
function x910072_CheckLiaoMember(sceneId)														

	--*****************--
	local Liao_Mem=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki¬m tra phe ngß¶i ch½i
		if Flag==x910072_g_Flag_Liao then
			Liao_Mem=Liao_Mem+1															--Tång s¯ ngß¶i ch½i bên Liêu
		end
	end
	--*****************--
	return Liao_Mem
	--*****************--

end
--*****************************--
--*      On Player Enter      *--
--*****************************--
function x910072_OnPlayerEnter(sceneId,playerId)														

	--*****************--
	if x910072_g_TestMode~=1 then
		local nDay=GetDayTime()
		if nDay~=GetMissionData(sceneId,playerId,MD_SONGLIAO_LAST_DAY_TIME) then																--Không phäi th¶i gian hoÕt ðµng l¥n này
			x910072_NotifyFailTips(sceneId,playerId,"Cuµc chiªn l¥n trß¾c cüa các hÕ ðã kªt thúc!")
			return
		end
		--*****************--
		local nHours=GetHour()
		if nHours~=x910072_g_On_Event_Time then																									--HoÕt ðµng chßa m·
			x910072_NotifyFailTips(sceneId,playerId,"Hi®n chßa phäi th¶i gian Chiªn trß¶ng!")
			return
		end
	elseif (strfind(GetName(sceneId,playerId),x910072_g_GMName) or strfind(GetName(sceneId,playerId),x910072_g_GMName1) or strfind(GetName(sceneId,playerId),x910072_g_GMName2)) then
		x910072_OnStartTime(sceneId)
		x910072_RefreshMonster(sceneId)
	end
	--*****************--
	local Flag=GetMissionData(sceneId,playerId,MD_SONGLIAO_FLAG)																			--Phe cüa ngß¶i ch½i
	local x
	local y
	if Flag==x910072_g_Flag_Song then
		x=x910072_g_Pos_Song["X"]																											--T÷a ðµ ði¬m h°i sinh bên T¯ng
		y=x910072_g_Pos_Song["Y"]
		SetUnitCampID(sceneId,playerId,playerId,x910072_g_CampID_Song)																		--TrÕng thái chiªn ð¤u bên T¯ng
	else
		x=x910072_g_Pos_Liao["X"]																											--T÷a ðµ ði¬m h°i sinh bên Liêu
		y=x910072_g_Pos_Liao["Y"]
		SetUnitCampID(sceneId,playerId,playerId,x910072_g_CampID_Liao)																		--TrÕng thái chiªn ð¤u bên Liêu
	end
	--*****************--
	SetPlayerDefaultReliveInfo(sceneId,playerId,"%100",-1,"0",x910072_g_ID_Map,x,y)															--Ð£t t÷a ðµ ði¬m h°i sinh
	--*****************--
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,playerId,12356789)																							--M· khung thông báo ði¬m
	--*****************--

end
--*****************************--
--*        Kill Player        *--
--*****************************--
function x910072_KillPlayer(sceneId,killerId,diedId)

	--*****************--
	local Kills_Num=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_KILLS_NUM)															--T±ng s¯ Died cüa Killer
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_KILLS_NUM,Kills_Num+1)			
	--*****************--	
	local Died_Num=GetMissionData(sceneId,diedId,MD_SONGLIAO_HUMAN_DIED_NUM)																--T±ng s¯ l¥n tØ vong cüa Died
	SetMissionData(sceneId,diedId,MD_SONGLIAO_HUMAN_DIED_NUM,Died_Num+1)
	--*****************--
	local Flag_Killer=GetMissionData(sceneId,killerId,MD_SONGLIAO_FLAG)																		--Phe cüa Killer
	local Point_Killer=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)																--T±ng ði¬m cüa Killer
	local Point_Died=GetMissionData(sceneId,diedId,MD_SONGLIAO_HUMAN_POINT)																	--T±ng ði¬m cüa Died
	local Bonus=min(Point_Died+1,x910072_g_LimitPointPerKill)																				--S¯ ði¬m thß·ng cho Killer
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Point_Killer+Bonus)																--C§p nh§t ði¬m cho Killer
	--*****************--
	local Point_Killer_Guild																												--T±ng ði¬m phe cüa Killer
	local Point_Died_Guild																													--T±ng ði¬m phe cüa Died
	if Flag_Killer==x910072_g_Flag_Song then
		local nPoint=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)					
		SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point,nPoint+Bonus)										--C§p nh§t ði¬m cho phe T¯ng
		Point_Killer_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)									--T±ng ði¬m cüa phe T¯ng
		Point_Died_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)									--T±ng ði¬m cüa phe Liêu
	else
		local nPoint=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)
		SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point,nPoint+Bonus)										--C§p nh§t ði¬m cho phe Liêu
		Point_Killer_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)									--T±ng ði¬m cüa phe Liêu
		Point_Died_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)									--T±ng ði¬m cüa phe T¯ng
	end
	--*****************--
	local Died_Name=GetName(sceneId,diedId)																									--Tên cüa Died
	x910072_NotifyFailTips(sceneId,killerId,"Các hÕ ðã ðánh bÕi ð¯i thü #H"..Died_Name.."#W!")																				
	--*****************--
	local Killer_Name=GetName(sceneId,killerId)																								--Tên cüa Killer				
	x910072_NotifyFailTips(sceneId,diedId,"Các hÕ ðã b¸ ð¯i thü #H"..Killer_Name.."#W ðánh bÕi!")																						
	--*****************--

end
--*****************************--
--*       Recieve Bonus       *--
--*****************************--
function x910072_RecieveBonus(sceneId,playerId,targetId)														

	--*****************--
	local nPoint=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT)			--L¤y t±ng s¯ ði¬m cüa ngß¶i ch½i
	local nRank=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_RANK)				--L¤y thÑ hÕng cüa ngß¶i ch½i
	local IsWinner=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_WINNER)		--Ki¬m tra có phäi thành viên ðµi th¡ng cuµc hay không
	--*****************--
	if nRank<=0 then
		return
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,playerId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi mµt ô tr¯ng trong ô ÐÕo cø!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,playerId)
		return
	end
	--*****************--
	local Bonus_EXP=floor(nPoint/nRank)+floor(nPoint/nRank)*IsWinner+1				--Tính ði¬m kinh nghi®m thß·ng
	--*****************--
	local str=format("#Y[Chiªn trß¶ng T¯ng Liêu]#r#WTrong tr§n ð¤u #GT¯ng Liêu#W v×a r°i, các hÕ dành ðßþc #G%d ði¬m#W, ðÑng thÑ hÕng #G%d.#W Các hÕ nh§n ðßþc ph¥n thß·ng #G%d EXP#W!",nPoint,nRank,Bonus_EXP)								
	BeginEvent(sceneId)
		AddText(sceneId,str)
	EndEvent(sceneId)
	DispatchEventList(sceneId,playerId,targetId)
	--*****************--
	local Item_Index=x910072_g_Gift[random(getn(x910072_g_Gift))]
	local nPoint=10
	local Bind_Status=0
	if nRank<=5 then
		Item_Index=30010145													--Nh§n CN Tinh Phách CÐ
		nPoint=100
		Bind_Status=1
	elseif nRank<=20 then
		Item_Index=30010144													--Nh§n CN Phách CÐ
		nPoint=50
		Bind_Status=1
	end
	--*****************--
	local Current_Activity_Point=GetMissionData(sceneId,playerId,MD_CURRENT_ACTIVITY_POINT)
	SetMissionData(sceneId,playerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+nPoint)
	x910072_NotifyFailTips(sceneId,playerId,"Các hÕ ðã gia tång "..nPoint.." ði¬m hoÕt ðµng!")
	--*****************--
	local Pos=TryRecieveItem(sceneId,playerId,Item_Index,1)
	--*****************--
	--if Bind_Status==1 then
	--	LuaFnItemBind(sceneId,playerId,Pos)
	--end
	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã nh§n ðßþc 1 cái "..GetItemName(sceneId,Item_Index).."!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,playerId)
	--*****************--
	LuaFnSendSystemMail(sceneId,GetName(sceneId,playerId),str)																			
	--*****************--
	x910072_ResetAllParam(sceneId,playerId)
	--*****************--

end
--**********************************--
--*      Self Song Liao Rank       *--
--**********************************--
function x910072_SelfSongLiaoRank(sceneId,playerId)

	--*****************--
	local nRank=1
	local Point=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT)				--T±ng ði¬m tích lûy cüa ngß¶i ch½i
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)			--T±ng s¯ ði¬m tích lûy cüa ngß¶i ch½i thÑ i
		if Point<nPoint then
			nRank=nRank+1																--C§p nh§t rank cüa ngß¶i ch½i
		end
	end
	--*****************--
	return nRank
	--*****************--
	
end
--**********************************--
--*     Update Song Liao Score     *--
--**********************************--
function x910072_UpdateSongLiaoScore(sceneId)

	--*****************--
	local Point_Song=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)							--Ði¬m s¯ bên T¯ng
	local Point_Liao=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)							--Ði¬m s¯ bên Liêu
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if x910072_g_TestMode==0 then
			local nDay=GetDayTime()
			if nDay~=GetMissionData(sceneId,HumanId,MD_SONGLIAO_LAST_DAY_TIME) then																--Không phäi th¶i gian hoÕt ðµng l¥n này
				NewWorld(sceneId,HumanId,x910072_g_Map_Out,x910072_g_Out_Pos_X,x910072_g_Out_Pos_Y)												--Ðßa ngß¶i ch½i v« ð¸a ði¬m báo danh ban ð¥u
				return
			end
			local nHours=GetHour()
			if nHours~=x910072_g_On_Event_Time then																									--HoÕt ðµng chßa m·
				NewWorld(sceneId,HumanId,x910072_g_Map_Out,x910072_g_Out_Pos_X,x910072_g_Out_Pos_Y)												--Ðßa ngß¶i ch½i v« ð¸a ði¬m báo danh ban ð¥u
				return
			end
		end
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,Point_Song)
			UICommand_AddInt(sceneId,Point_Liao)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,HumanId,1235679)
	end
	--*****************--
	
end
--**********************************--
--*         Refresh Monster        *--
--**********************************--
function x910072_RefreshMonster(sceneId)

	--*****************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if strfind(GetName(sceneId,MonsterId),"T¯ng")~=nil then
			SetUnitCampID(sceneId,MonsterId,MonsterId,x910072_g_CampID_Song)
		elseif strfind(GetName(sceneId,MonsterId),"Liêu")~=nil then
			SetUnitCampID(sceneId,MonsterId,MonsterId,x910072_g_CampID_Liao)
		end
	end
	--*****************--
	
end
--**********************************--
--*     Update Song Liao Ranks     *--
--**********************************--
function x910072_UpdateSongLiaoRanks(sceneId,selfId)

	--*****************--
	local Self_Flag=GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)
	if Self_Flag==x910072_g_Flag_Song then
		CallScriptFunction(910081,"OnDefaultEvent",sceneId,selfId,selfId)														--M· khung báo thành tích cá nhân bên T¯ng
	else
		CallScriptFunction(910082,"OnDefaultEvent",sceneId,selfId,selfId)														--M· khung báo thành tích cá nhân bên Liêu
	end
	--*****************--
	
end
--**********************************--
--*  Update Song Liao Multi Score  *--
--**********************************--
function x910072_UpdateSongLiaoMultiScore(sceneId,selfId,nTabSelected,leaftrol)

	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	--*****************--
	if (leaftrol==1 and floor(nHuman/12)<nTabSelected-1) or (leaftrol==0 and nTabSelected==0) then
		return
	end
	--*****************--
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		x910072_g_Human_List[i+1]=HumanId		
	end
	--*****************--
	x910072_HeapSort(sceneId,nHuman)
	--*****************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,nTabSelected)
		local str
		for i=0,5 do
			str=""
			if 2*i+1+12*(nTabSelected-1)>nHuman then
				str=str.."~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			else
				local str1
				
				str1=GetName(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)])
				while strlen(str1)<18 do
					str1="~"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)],MD_SONGLIAO_FLAG))
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_KILLS_NUM))
				while strlen(str1)<4 do
					str1="0"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_POINT))
				while strlen(str1)<10 do
					str1="0"..str1
				end
				str=str..str1
			end
			
			if 2*i+2+12*(nTabSelected-1)>nHuman then
				str=str.."~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			else
				local str1
				
				str1=GetName(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)])
				while strlen(str1)<18 do
					str1="~"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)],MD_SONGLIAO_FLAG))
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_KILLS_NUM))
				while strlen(str1)<4 do
					str1="0"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_POINT))
				while strlen(str1)<10 do
					str1="0"..str1
				end
				str=str..str1
			end
			UICommand_AddString(sceneId,str)			
		end
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,240620152)
	--*****************--
	
end
--**********************************--
--*          On Scene Timer        *--
--**********************************--
function x910072_OnSceneTimer(sceneId)

	--*****************--
	if LuaFnGetCopyScene_HumanCount(sceneId)<=0 then
		return
	end
	--*****************--
	x910072_UpdateSongLiaoScore(sceneId)																						--C§p nh§t ði¬m s¯ hai bên
	--*****************--
	x910072_UpdateSongLiaoTitle(sceneId)
	--*****************--
	
end
--**********************************--
--*          On Scene Timer        *--
--**********************************--
function x910072_UpdateSongLiaoTitle(sceneId)

	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
		local nFlag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)
		local str=""
		if nFlag==0 then
			str="T¯ng"
		elseif nFlag==1 then
			str="Liêu"
		end
		for i,Title_Info in x910072_g_Title_List do
			if Title_Info.Point_Needed<=nPoint then
				local str1=format(Title_Info.Title,str)
				AwardNickTitle(sceneId,HumanId,str1)
				DispatchAllTitle(sceneId,HumanId)
			end
		end
	end
	--*****************--
	
end
--*****************************--
--*       On Exit Time        *--
--*****************************--
function x910072_OnExitTime(sceneId)														

	--*****************--
	local Point_Song=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)							--Ði¬m s¯ bên T¯ng
	local Point_Liao=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)							--Ði¬m s¯ bên Liêu
	local Winner																												--Tên phe th¡ng cuµc
	local Guild_Winner																											--ID phe th¡ng cuµc
	local Lost																													--Tên phe thua cuµc
	--*****************--
	if Point_Song>Point_Liao then
		Winner="T¯ng"																											--Phe th¡ng cuµc là T¯ng
		Guild_Winner=x910072_g_Flag_Song																						--ID phe
		Lost="Liêu"																												--Phe thua cuµc là Liêu
	elseif Point_Song<Point_Liao then
		Winner="Liêu"																											--Phe th¡ng cuµc là Liêu
		Guild_Winner=x910072_g_Flag_Liao																						--ID phe
		Lost="T¯ng"																												--Phe thua cuµc là T¯ng
	else
		Winner=nil																												--Hai bên hòa
		Guild_Winner=-1																											--Không ðµi nào chiªn th¡ng
	end
	--*****************--
	if Winner then
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RTrong tr§n ð¤u #GT¯ng Liêu#R rñc lØa v×a di­n ra, phe #G"..Winner.."#R ðã giành th¡ng lþi tuy®t ð¯i. Nhân sÛ phe #G"..Lost.."#R l¥n sau hãy c¯ g¡ng h½n!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RTrong tr§n ð¤u #GT¯ng Liêu#R rñc lØa v×a di­n ra, kªt quä cä hai phe #GT¯ng#R và #GLiêu#R hòa nhau v¾i cùng ði¬m s¯. Hy v÷ng l¥n sau s¨ có bên vßþt trµi h½n!")
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ngß¶i ch½i thÑ i
		local nRank=x910072_SelfSongLiaoRank(sceneId,HumanId)																	--Tính thÑ hÕng chung kªt cüa ngß¶i ch½i thÑ i
		SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_RANK,nRank)															--C§p nh§t thÑ hÕng chung kªt cüa ngß¶i ch½i thÑ i
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
		local str=format("#Y[Chiªn trß¶ng T¯ng Liêu]#r#WTrong tr§n ð¤u #GT¯ng Liêu#W v×a r°i, các hÕ dành ðß½c #G%d#W ði¬m tích lûy, ðÑng · v¸ trí #G%d#W, hãy ðªn g£p ngß¶i phø trách chiªn trß¶ng ð¬ nh§n thß·ng!",nPoint,nRank)								
		LuaFnSendSystemMail(sceneId,GetName(sceneId,HumanId),str)																--Send mail	
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)																--Phe ngß¶i ch½i thÑ i
		if Flag==Guild_Winner then
			local str=format("#Y[Chiªn trß¶ng T¯ng Liêu]#r#WTrong tr§n ð¤u #GT¯ng Liêu#W v×a r°i, phe cüa các hÕ là phe #G%s#W ðã dành th¡ng lþi chung cuµc, dçn ð¥u ði¬m s¯. Chúc m×ng các hÕ cùng toàn th¬ thành viên phe #G%s#W!",Winner,Winner)								
			LuaFnSendSystemMail(sceneId,GetName(sceneId,HumanId),str)															--Send mail
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_WINNER,1)															--Ngß¶i ch½i này là phe th¡ng cuµc					
		else
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_WINNER,0)															--Ngß¶i ch½i này là phe thua cuµc
		end
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ngß¶i ch½i thÑ i
		SetUnitCampID(sceneId,HumanId,HumanId,-1)																				--Reset lÕi trÕng thái chiªn ð¤u
		x910072_NotifyFailTips(sceneId,HumanId,"Tr§n ð¤u ðã kªt thúc!")
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,HumanId,2356789)																				--Ðóng khung báo thành tích
		NewWorld(sceneId,HumanId,x910072_g_Map_Out,x910072_g_Out_Pos_X,x910072_g_Out_Pos_Y)										--Ðßa ngß¶i ch½i v« ð¸a ði¬m báo danh ban ð¥u
	end
	--*****************--
	StopOneActivity(sceneId,x910072_g_Activity_Index)
	--*****************--
	
end
--**********************************--
--*        Reset All Param         *--
--**********************************--
function x910072_ResetAllParam(sceneId,playerId)

	--*****************--
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT,0)																	--Reset lÕi ði¬m chiªn trß¶ng
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_KILLS_NUM,0)																--Reset lÕi t±ng s¯ l¥n tØ nÕn
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_DIED_NUM,0)																--Reset lÕi s¯ l¥n tØ nÕn
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_RANK,0)																	--Reset lÕi thÑ hÕng cüa ngß¶i ch½i
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_WINNER,0)																	--Reset lÕi ðµi th¡ng cuµc
	--*****************--
	
end
--**********************************--
--*        Notify Fail Tips        *--
--**********************************--
function x910072_NotifyFailTips(sceneId,selfId,Tip)

	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*****************--
	
end
--===============HEAPSORT=================--
--**********************************--
--**********************************--
function x910072_DownHeap(sceneId,start,finish)

	--*****************--
	local root=start
    while root*2<=finish do
        local leaf=root*2
		
		local nPoint_Leaf_1=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_POINT)
		local nRank_Leaf_1=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_RANK)
		
		local nPoint_Leaf_2=999999999
		local nRank_Leaf_2=999999999
		
		if leaf<finish then
			nPoint_Leaf_2=GetMissionData(sceneId,x910072_g_Human_List[leaf+1],MD_SONGLIAO_HUMAN_POINT)
			nRank_Leaf_2=GetMissionData(sceneId,x910072_g_Human_List[leaf+1],MD_SONGLIAO_HUMAN_RANK)
		end
		
        if leaf<finish and (nPoint_Leaf_1>nPoint_Leaf_2 or (nPoint_Leaf_1==nPoint_Leaf_2 and nPoint_Leaf_1>nPoint_Leaf_2)) then 
			leaf=leaf+1
		end
		
		local nPoint_Root=GetMissionData(sceneId,x910072_g_Human_List[root],MD_SONGLIAO_HUMAN_POINT)
		local nRank_Root=GetMissionData(sceneId,x910072_g_Human_List[root],MD_SONGLIAO_HUMAN_RANK)
		
		local nPoint_Leaf=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_POINT)
		local nRank_Leaf=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_RANK)
		
		if nPoint_Root<nPoint_Leaf or (nPoint_Root==nPoint_Leaf and nRank_Root<nRank_Leaf) then
			return
		end
       
        local key=x910072_g_Human_List[root]
        x910072_g_Human_List[root]=x910072_g_Human_List[leaf]
        x910072_g_Human_List[leaf]=key
		
        root=leaf
    end
	--*****************--

end
--**********************************--
--**********************************--
function x910072_UpHeap(sceneId,n)

	--*****************--
	local root=floor(n/2)
	while root>0 do
		x910072_DownHeap(sceneId,root,n)
		root=root-1
	end
	--*****************--

end
--**********************************--
--*      Heap Sort Algorithm       *--
--**********************************--
function x910072_HeapSort(sceneId,n)

	--*****************--
	x910072_UpHeap(sceneId,n)
	--*****************--
	while n>0 do
        local key=x910072_g_Human_List[1]
        x910072_g_Human_List[1]=x910072_g_Human_List[n]
        x910072_g_Human_List[n]=key
        n=n-1
        x910072_DownHeap(sceneId,1,n)
    end
	--*****************--

end
--==================END===================--