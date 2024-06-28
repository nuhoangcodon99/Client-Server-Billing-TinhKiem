--NPC GiftCode
x001089_g_scriptId = 001089

x001089_g_active_event =1 --kich hoat su kien

x001089_YQThatTruyen={
--yq bt 8
30308111,
30308112,
30308113,
30308114,
30308115,
30308116,
30308117,
30308118,
30308119,

30308121,
30308122,
30308123,
30308124,
30308125,
30308126,
30308127,
30308128,
30308129
}
x001089_BTMP_35 = {
	30308002, --Thiªu Lâm
	30308003, --Minh Giáo
	30308004, --Cái Bang
	30308005, --Võ Ðang
	30308006, --Nga My
	30308007, --Tinh Túc
	30308008, --Thiên Long
	30308009, --Thiên S½n
	30308010, --Tiêu Dao
}
x001089_BTMP_80 = {
	30308101, --Thiªu Lâm
	30308102, --Minh Giáo
	30308103, --Cái Bang
	30308104, --Võ Ðang
	30308105, --Nga My
	30308106, --Tinh Túc
	30308107, --Thiên Long
	30308108, --Thiên S½n
	30308109, --Tiêu Dao
}
x001089_BaoThachC5 = {
	50501001,
	50501002,
	50502001,
	50502002,
	50502003,
	50502004,
	50503001,
	50504002,
	50511001,
	50511002,
	50512001,
	50512002,
	50512003,
	50512004,
	50513001,
	50513002,
	50513003,
	50513004,
	50513005,
	50513006,
	50514001,
	50521001,
	50521002,
	50521003,
	50521004,	
}
x001089_BaoThachC6 = {
	50601001,
	50601002,
	50602001,
	50602002,
	50602003,
	50602004,
	50603001,
	50604002,
	50611001,
	50611002,
	50612001,
	50612002,
	50612003,
	50612004,
	50613001,
	50613002,
	50613003,
	50613004,
	50613005,
	50613006,
	50614001,
	50621001,
	50621002,
	50621003,
	50621004,	
}
--***************
function x001089_OnDefaultEvent( sceneId, selfId, targetId )
	if MD_GIFTCODE_CHECK == nil then
		MD_GIFTCODE_CHECK =303
	end
	
	local kiemtra = GetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK)
	if kiemtra ==0 then
		BeginEvent( sceneId )
			local strText = "Th§t thÑ l²i, b¢ng hæu chßa kích hoÕt Gift Code! Vui lòng xem hß¾ng dçn tÕi trang chü ð¬ nh§n và kích hoÕt Gift Code." 
			AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
--******************* check loÕi code. M²i loÕi lÕi có thêm nhæng NumText tß½ng Ñng gói quà
	if x001089_g_active_event ==1 then
		if kiemtra >=100 and kiemtra < 200 then
			BeginEvent( sceneId )
				local strText = "TÕ hÕ là Thiên Long SÑ Giä, ngß¶i phø trách trao quà cho t¤t cä ngß¶i ch½i #Yðã kích hoÕt giftcode #Wtrong thª gi¾i #YThiên Long Bát Bµ Tình Kiªm. "
				AddText( sceneId, strText )
				local text="B¢ng hæu là ngß¶i ðã kích hoÕt giftcode. Hãy nh§n quà t× Thiên Long SÑ Giä !!"
				AddText( sceneId, text )
					AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà",3 , 100)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if kiemtra >=200 and kiemtra < 300 then
			BeginEvent( sceneId )
				local strText = "TÕ hÕ là Thiên Long SÑ Giä, ngß¶i phø trách trao quà cho t¤t cä ngß¶i ch½i #Yðã kích hoÕt giftcode #Wtrong thª gi¾i #YThiên Long Bát Bµ Tình Kiªm. "
				AddText( sceneId, strText )
				local text="B¢ng hæu là ngß¶i ðã kích hoÕt giftcode. Hãy nh§n quà t× Thiên Long SÑ Giä !!"
				AddText( sceneId, text )
					AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà",3 , 200)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if kiemtra >=300 and kiemtra < 400 then
			BeginEvent( sceneId )
				local strText = "TÕ hÕ là Thiên Long SÑ Giä, ngß¶i phø trách trao quà cho t¤t cä ngß¶i ch½i #Yðã kích hoÕt giftcode #Wtrong thª gi¾i #YThiên Long Bát Bµ Tình Kiªm. "
				AddText( sceneId, strText )
				local text="B¢ng hæu là ngß¶i ðã kích hoÕt giftcode. Hãy nh§n quà t× Thiên Long SÑ Giä !!"
				AddText( sceneId, text )
					AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà",3 , 300)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		--goi giftcode lao huu qui lai + huynh de tuong phung
		if kiemtra >=10000 and kiemtra < 20000 then --goi lao huu => set o web = 10000
			BeginEvent( sceneId )
				local strText = "TÕ hÕ là Thiên Long SÑ Giä, ngß¶i phø trách trao quà cho t¤t cä ngß¶i ch½i #Yðã kích hoÕt giftcode #Wtrong thª gi¾i #YThiên Long Bát Bµ Tình Kiªm. "
				AddText( sceneId, strText )
				local text="B¢ng hæu là ngß¶i ðã kích hoÕt giftcode. Hãy nh§n quà t× Thiên Long SÑ Giä !!"
				AddText( sceneId, text )
					AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà",3 , 10000)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if kiemtra >=20000 and kiemtra < 30000 then --goi huynh de => set o web =20000
			BeginEvent( sceneId )
				local strText = "TÕ hÕ là Thiên Long SÑ Giä, ngß¶i phø trách trao quà cho t¤t cä ngß¶i ch½i #Yðã kích hoÕt giftcode #Wtrong thª gi¾i #YThiên Long Bát Bµ Tình Kiªm. "
				AddText( sceneId, strText )
				local text="B¢ng hæu là ngß¶i ðã kích hoÕt giftcode. Hãy nh§n quà t× Thiên Long SÑ Giä !!"
				AddText( sceneId, text )
					AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà",3 , 20000)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		--end giftcode lao huu qui lai + huynh de tuong phung
		
	end
	--cac truong hop khac
	BeginEvent( sceneId )
		local strText = "TÕ hÕ là Thiên Long SÑ Giä, ngß¶i phø trách trao quà cho t¤t cä ngß¶i ch½i #Yðã kích hoÕt giftcode #Wtrong thª gi¾i #YThiên Long Bát Bµ Tình Kiªm. "
		AddText( sceneId, strText )
		local text="Có l²i xäy ra trong quá trình kích hoÕt CODE, mã l²i "..kiemtra..". #rVui lòng liên h® ADMIN ð¬ ðßþc trþ giúp!"
		AddText( sceneId, text )				
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	return
end
--************* end check loÕi code

function x001089_OnEventRequest( sceneId, selfId, targetId, eventId )
	if MD_GIFTCODE_CHECK == nil then
		MD_GIFTCODE_CHECK =303
	end
	local level =GetLevel(sceneId,selfId)
	local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
	local slot2 =LuaFnGetMaterialBagSpace( sceneId, selfId) --check slot bag nl
	local checkmd = GetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK)

	if GetNumText()== 100 then
		BeginEvent( sceneId )
			local text = "M¶i B¢ng hæu lña ch÷n gói quà mu¯n nh§n. #r#RLßu ý: #Wnªu b¢ng hæu nh§n gói c¤p cao thì s¨ #Gkhông th¬ #Wnh§n #Ygói quà · c¤p dß¾i #Wtrong cä trß¶ng hþp#Y chßa nh§n gói quà c¤p dß¾i"
			AddText(sceneId,text)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 1",3 , 101)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 10",3 , 110)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 20",3 , 120)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 30",3 , 130)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 40",3 , 140)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 50",3 , 150)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()== 200 then
		BeginEvent( sceneId )
			local text = "M¶i B¢ng hæu lña ch÷n gói quà mu¯n nh§n. #r#RLßu ý: #Wnªu b¢ng hæu nh§n gói c¤p cao thì s¨ #Gkhông th¬ #Wnh§n #Ygói quà · c¤p dß¾i #Wtrong cä trß¶ng hþp#Y chßa nh§n gói quà c¤p dß¾i"
			AddText(sceneId,text)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 1",3 , 201)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 10",3 , 210)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 20",3 , 220)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 30",3 , 230)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 40",3 , 240)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 50",3 , 250)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 60",3 , 260)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 70",3 , 270)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()== 300 then
		BeginEvent( sceneId )
			local text = "M¶i B¢ng hæu lña ch÷n gói quà mu¯n nh§n. #r#RLßu ý: #Wnªu b¢ng hæu nh§n gói c¤p cao thì s¨ #Gkhông th¬ #Wnh§n #Ygói quà · c¤p dß¾i #Wtrong cä trß¶ng hþp#Y chßa nh§n gói quà c¤p dß¾i"
			AddText(sceneId,text)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 1",3 , 301)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 10",3 , 310)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 20",3 , 320)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 30",3 , 330)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 40",3 , 340)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 50",3 , 350)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 60",3 , 360)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 70",3 , 370)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 80",3 , 380)
			AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà c¤p ðµ 90",3 , 390)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()== 10000 then
		BeginEvent( sceneId )
			local text = "M¶i B¢ng hæu lña ch÷n gói quà mu¯n nh§n. #r#RLßu ý: #Wnªu b¢ng hæu nh§n gói c¤p cao thì s¨ #Gkhông th¬ #Wnh§n #Ygói quà · c¤p dß¾i #Wtrong cä trß¶ng hþp#Y chßa nh§n gói quà c¤p dß¾i"
			AddText(sceneId,text)
			
			--giftcode luu dang: xyzzzz 10201
			--x : mã gói quà, 1: lao huu;2 : huynh de
			--y : biªn phø, lßu xem ðã nh§n ðßþc mÑc nào trong gói
			--zzzz : th¶i gian nh§n quà l¥n trß¾c
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			local DayTime_pre = mod (checkmd , 1000) --thoi gian nhan lan truoc
			local time_span = DayTime - DayTime_pre --khoang cach thoi gian nhan
			if DayTime_pre ==0 then --chua nhan lan nao
				time_span =0;
			end
			local num_goiqua = floor (mod (checkmd , 10000) /1000) -- x y zzz  =>  y
			
			
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 1",3 , 10001)
			
			
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 2",3 , 10002)
			
			
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 3",3 , 10003)
			
			--if time_span >=15 and num_goiqua < 4 then --c¥n online sau 5 ngày + chßa nh§n quà gói 4
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 4",3 , 10004)
			--end
			if time_span >=20 and num_goiqua < 5 then --c¥n online sau 5 ngày + chßa nh§n quà gói 5
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 5",3 , 10005)
			end
			if time_span >=25 and num_goiqua < 6 then --c¥n online sau 5 ngày + chßa nh§n quà gói 6
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 6",3 , 10006)
			end
			--if time_span >=30 and num_goiqua < 7 then --c¥n online sau 5 ngày + chßa nh§n quà gói 7
			--	AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 7",3 , 10007)
			--end
			--if time_span >=35 and num_goiqua < 8 then --c¥n online sau 5 ngày + chßa nh§n quà gói 8
			--	AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 8",3 , 10008)	
			--end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()== 20000 then
		BeginEvent( sceneId )
			local text = "M¶i B¢ng hæu lña ch÷n gói quà mu¯n nh§n. #r#RLßu ý: #Wnªu b¢ng hæu nh§n gói c¤p cao thì s¨ #Gkhông th¬ #Wnh§n #Ygói quà · c¤p dß¾i #Wtrong cä trß¶ng hþp#Y chßa nh§n gói quà c¤p dß¾i"
			AddText(sceneId,text)
			
			--giftcode luu dang: xyzzzz 10201
			--x : mã gói quà, 1: lao huu;2 : huynh de
			--y : biªn phø, lßu xem ðã nh§n ðßþc mÑc nào trong gói
			--zzzz : th¶i gian nh§n quà l¥n trß¾c
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			local DayTime_pre = mod (checkmd , 1000) --thoi gian nhan lan truoc
			local time_span = DayTime - DayTime_pre --khoang cach thoi gian nhan
			if DayTime_pre ==0 then --chua nhan lan nao
				time_span =0;
			end
			local num_goiqua = floor (mod (checkmd , 10000) /1000) -- x y zzz  =>  y
			
			if time_span ==0 and num_goiqua < 1 then -- c¥n online sau 0 ngày + chßa nh§n quà gói 1
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 1",3 , 20001)
			end
			if time_span >=5 and num_goiqua < 2 then --c¥n online sau 5 ngày + chßa nh§n quà gói 2
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 2",3 , 20002)
			end
			if time_span >=10 and num_goiqua < 3 then --c¥n online sau 5 ngày + chßa nh§n quà gói 3
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 3",3 , 20003)
			end
			if time_span >=15 and num_goiqua < 4 then --c¥n online sau 5 ngày + chßa nh§n quà gói 4
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 4",3 , 20004)
			end
			if time_span >=20 and num_goiqua < 5 then --c¥n online sau 5 ngày + chßa nh§n quà gói 5
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 5",3 , 20005)
			end
			if time_span >=25 and num_goiqua < 6 then --c¥n online sau 5 ngày + chßa nh§n quà gói 6
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 6",3 , 20006)
			end
			if time_span >=30 and num_goiqua < 7 then --c¥n online sau 5 ngày + chßa nh§n quà gói 7
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 7",3 , 20007)
			end
			if time_span >=35 and num_goiqua < 8 then --c¥n online sau 5 ngày + chßa nh§n quà gói 8
				AddNumText( sceneId, x001089_g_scriptId, "Nh§n quà l¥n 8",3 , 20008)	
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
--*************************************

	--************NH§n QUÀ***********
	--**************gói tân thü max 50********************
	if checkmd >=100 and checkmd <200 then

		if GetNumText()== 101 then
			if checkmd >=101 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			elseif slot< 6 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ðü 6 ô tr¯ng")
				return
			end
			--add thong thien linh dan
			for i = 1,5 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30008014, QUALITY_MUST_BE_CHANGE ) --thong thien linh dan
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,101) 
			x001089_thongbao_kt(sceneId,selfId)
			return --thoat
		end
		--***********ADD KNB C¯ Ð¸nh · mÑc level 10
		if GetNumText()== 110 then
			if level < 10 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=110 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <101 then 
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			--set knb co dinh
			SetMissionData(sceneId, selfId, MD_KNB_BIND,10000)
			--end set knb co dinh
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,110) 
			x001089_thongbao_kt(sceneId,selfId)
			return --thoat
		end
		--***********thoi tang bach hoa thien thao 30 ngay
		if GetNumText()== 120 then
			if level < 20 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=120 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <110 then --hd fix  <=100 ==> <110
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
			--add thoi trang 
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10124536, QUALITY_MUST_BE_CHANGE ) --add bach hoa thien thao 30
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,120) 
			x001089_thongbao_kt(sceneId,selfId)
			return --thoat
		end
		
		--***********bi tich 35 mon phai
		if GetNumText()== 130 then
			if level < 30 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=130 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <120 then --hd fix <=100 ==> <130
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
			--add bi tich
			local mp = GetMenPai(sceneId, selfId)
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BTMP_35[mp+1], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,130)
			x001089_thongbao_kt(sceneId,selfId)
			return --thoat
		end
		
		--***********nguyet ma huong cau
		if GetNumText()== 140 then
			if level < 40 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=140 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <130 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				--for i = 1,5 do
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10141557, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,140)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--***********trung tran thu Tr?ng trân thú B?o T?u Hùng Miêu
		if GetNumText()== 150 then
			if level < 50 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=150 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <140 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				--for i = 1,5 do
			local 	BagPos = TryRecieveItem( sceneId, selfId, 30309078, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,150)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		return
	end

	--**************end gói max 50*************
	--****************** gói max 70***********
	if checkmd >=200 and checkmd <300 then
		if GetNumText()== 201 then
			if checkmd >=201 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if slot< 10 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ðü 10 ô tr¯ng")
				return
			end
			for i = 1,10 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30008014, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,201)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--******************ADD KNB C Ð¸nh mÑc LV 10
		if GetNumText()== 210 then
			if level < 10 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=210 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <201 then --hd fix
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			--set knb co dinh
			SetMissionData(sceneId, selfId, MD_KNB_BIND,20000)
			--end set knb co dinh
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,210)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--***********************--  --bach hoa thien thao
		if GetNumText()== 220 then
			if level < 20 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=220 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <210 then --hd fix
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				--for i = 1,5 do
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10124536, QUALITY_MUST_BE_CHANGE ) --bach hoa thien thao
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,220)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--***********************-- bi tich 35
		if GetNumText()== 230 then
			if level < 30 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=230 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <220 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
			
			local mp = GetMenPai(sceneId, selfId)
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BTMP_35[mp+1], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,230)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************-- nguyen ma huong cau 30
		if GetNumText()== 240 then
			if level < 40 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=240 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <230 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				--for i = 1,5 do
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10141557, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,240)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--***********************-- TrÑng trân thú: BÕo T¦u Hùng Miêu
		if GetNumText()== 250 then
			if level < 50 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=250 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <240 then --hd edit
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			local 	BagPos = TryRecieveItem( sceneId, selfId, 30309078, QUALITY_MUST_BE_CHANGE ) ---- TrÑng trân thú: BÕo T¦u Hùng Miêu
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,250) --hd fix 210 ==> 250
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************-- cao c¤p hþp thành phù
		if GetNumText()== 260 then
			if level < 60 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=260 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <250 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 2 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 2 ô tr¯ng")
				return
			end
			--add item cchtp
			for i = 1,2 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30900016, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			--end add item
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,260)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************--Bí t¸ch môn phái th¤t truy«n c¤p 80
		if GetNumText()== 270 then
			if level < 70 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=270 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <260 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
			
			local mp = GetMenPai(sceneId, selfId)
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BTMP_80[mp+1], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,270)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		return
	end
	--*******************END GÓI MAX 70*********************
	--*****************Gói MAX 90*************************
	if checkmd >=300 and checkmd <400 then
		if GetNumText()== 301 then
			if checkmd >=301 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if slot< 15 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ðü 15 ô tr¯ng")
				return
			end
			for i = 1,15 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30008014, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,301)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************ADDD KNB MºC LV 10**********************
		if GetNumText()== 310 then
			if level < 10 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=310 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <301 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			--add knb co dinh
			SetMissionData(sceneId, selfId, MD_KNB_BIND,30000)
			--end add knb co dinh
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,310)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end

		--***********************--  --bach hoa thien thao
		if GetNumText()== 320 then
			if level < 20 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=320 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <310 then --hd fix
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				--for i = 1,5 do
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10124536, QUALITY_MUST_BE_CHANGE ) --bach hoa thien thao
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,320)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--***********************-- bi tich 35
		if GetNumText()== 330 then
			if level < 30 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=330 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <320 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
			
			local mp = GetMenPai(sceneId, selfId)
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BTMP_35[mp+1], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,330)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************-- nguyen ma huong cau 30
		if GetNumText()== 340 then
			if level < 40 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=340 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <330 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10141557, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,340)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--***********************-- TrÑng trân thú: BÕo T¦u Hùng Miêu
		if GetNumText()== 350 then
			if level < 50 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=350 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <340 then --hd edit
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			local 	BagPos = TryRecieveItem( sceneId, selfId, 30309078, QUALITY_MUST_BE_CHANGE ) ---- TrÑng trân thú: BÕo T¦u Hùng Miêu
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,350) --hd fix 210 ==> 250
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************-- cao c¤p hþp thành phù
		if GetNumText()== 360 then
			if level < 60 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=360 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <350 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 3 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 3 ô tr¯ng")
				return
			end
			--add item cchtp
			for i = 1,3 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30900016, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			--end add item
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,360)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************--Bí t?ch môn phái th?t truy?n c?p 80
		if GetNumText()== 370 then
			if level < 70 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=370 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <360 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
			
			local mp = GetMenPai(sceneId, selfId)
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BTMP_80[mp+1], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,370)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************--long van
		if GetNumText()== 380 then
			if level < 80 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=380 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <370 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )--long van co dinh
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,380)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--***********************--long van
		if GetNumText()== 390 then
			if level < 90 then
				x001089_FailTips(sceneId, selfId,"BÕn chßa ðü c¤p ðµ ð¬ nh§n gói quà này!")
				return
			end
			if checkmd >=390 then
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà c¤p ðµ này r°i!")
				return
			end
			if checkmd <380 then
				x001089_FailTips(sceneId, selfId,"BÕn phäi nh§n gói quà · c¤p ðµ trß¾c ðó!")
				return
			end
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Tay näi cüa bÕn phäi ð¬ ít nh¤t 1 ô tr¯ng")
				return
			end
				
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310181, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,390)
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		return
	end
	--**************end gói max 90*************
	
	--*****************Gói lao huu*************************
	if checkmd >=10000 and checkmd <20000 then
		if GetNumText()== 10001 then
			
			--check dieu kien nhan qua
			local num_goiqua =1 -- so thu tu cua goi qua
			local daytime_span =0 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			--x001089_FailTips (sceneId, selfId,"dieukien: "..dieukien)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 7 or slot2 <10 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 7 ô tr¯ng, ô Nguyên Li®u phäi có ðü 10 ô tr¯ng")
				return
			end
			for i = 1,10 do
				--add bao thach ngau nhien
				local ran = random(getn(x001089_BaoThachC5))
				local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BaoThachC5[ran], QUALITY_MUST_BE_CHANGE )
				--end add bao thach ngau nhien
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			--Thú cu?i Ung Long Huy?n H?n
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10141505, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			--Cao c?p h?p thành phù x5
			for i = 1,5 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30900016, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			--Y?u quy?t môn phái th?t truy?n x1
			local mp = GetMenPai(sceneId, selfId)
			
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_YQThatTruyen[mp+1], QUALITY_MUST_BE_CHANGE )
			--end add bao thach ngau nhien
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,10000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 2**********************
		if GetNumText()== 10002 then
			
			--check dieu kien nhan qua
			local num_goiqua =2 -- so thu tu cua goi qua
			local daytime_span =5 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng")
				return
			end
			
			--Tr?ng trân thú Huy?n Hoang Ð?ng Xà x1
			local 	BagPos = TryRecieveItem( sceneId, selfId, 30504156, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,10000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 3**********************
		if GetNumText()== 10003 then
			
			--check dieu kien nhan qua
			local num_goiqua =3 -- so thu tu cua goi qua
			local daytime_span =10 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 or slot2 <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng, ô Nguyên Li®u phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Long van x1 + Xuy?t Long Th?ch Nguyên x1
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310181, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,10000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 4**********************
		if GetNumText()== 10004 then
			
			--check dieu kien nhan qua
			local num_goiqua =4 -- so thu tu cua goi qua
			local daytime_span =15 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 or slot2 <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng, ô Nguyên Li®u phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Long van x1 + Xuy?t Long Th?ch B?o x1
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310182, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,10000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 5**********************
		if GetNumText()== 10005 then
			
			--check dieu kien nhan qua
			local num_goiqua =5 -- so thu tu cua goi qua
			local daytime_span =20 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 or slot2 <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng, ô Nguyên Li®u phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Long van x1 + Xuy?t Long Th?ch Thuong x1			
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310183, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,10000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 6**********************
		if GetNumText()== 10006 then
			
			--check dieu kien nhan qua
			local num_goiqua =6 -- so thu tu cua goi qua
			local daytime_span =25 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot2 <3 then
				x001089_FailTips(sceneId, selfId,"Ô Nguyên Li®u phäi có ðü 3 ô tr¯ng")
				return
			end
			
			--B?o th?ch c?p 6 ng?u nhiên x3
			for i = 1,3 do
				--add bao thach ngau nhien
				local ran = random(getn(x001089_BaoThachC6))
				local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BaoThachC6[ran], QUALITY_MUST_BE_CHANGE )
				--end add bao thach ngau nhien
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,10000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--exit
		return
	end
	
	--**************end gói lao huu*************
	--*****************Gói huynh de*************************
	if checkmd >=20000 and checkmd <30000 then
		if GetNumText()== 20001 then
			
			--check dieu kien nhan qua
			local num_goiqua =1 -- so thu tu cua goi qua
			local daytime_span =0 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 7 or slot2 <10 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 7 ô tr¯ng, ô Nguyên Li®u phäi có ðü 10 ô tr¯ng")
				return
			end
			for i = 1,10 do
				--add bao thach ngau nhien
				local ran = random(getn(x001089_BaoThachC5))
				local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BaoThachC5[ran], QUALITY_MUST_BE_CHANGE )
				--end add bao thach ngau nhien
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			--Thú cu?i Ung Long Huy?n H?n
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10141505, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			--Cao c?p h?p thành phù x5
			for i = 1,5 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 30900016, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			--Y?u quy?t môn phái th?t truy?n x1
			local mp = GetMenPai(sceneId, selfId)
			
			local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_YQThatTruyen[mp+1], QUALITY_MUST_BE_CHANGE )
			--end add bao thach ngau nhien
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 2**********************
		if GetNumText()== 20002 then
			
			--check dieu kien nhan qua
			local num_goiqua =2 -- so thu tu cua goi qua
			local daytime_span =5 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng")
				return
			end
			
			--Tr?ng trân thú Huy?n Hoang Ð?ng Xà x1
			local 	BagPos = TryRecieveItem( sceneId, selfId, 30504156, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 3**********************
		if GetNumText()== 20003 then
			
			--check dieu kien nhan qua
			local num_goiqua =3 -- so thu tu cua goi qua
			local daytime_span =10 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 or slot2 <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng, ô Nguyên Li®u phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Long van x1 + Xuy?t Long Th?ch Nguyên x1
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310181, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 4**********************
		if GetNumText()== 20004 then
			
			--check dieu kien nhan qua
			local num_goiqua =4 -- so thu tu cua goi qua
			local daytime_span =15 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 or slot2 <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng, ô Nguyên Li®u phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Long van x1 + Xuy?t Long Th?ch B?o x1
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310182, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 5**********************
		if GetNumText()== 20005 then
			
			--check dieu kien nhan qua
			local num_goiqua =5 -- so thu tu cua goi qua
			local daytime_span =20 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot< 1 or slot2 <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø cüa bÕn phäi ðü 1 ô tr¯ng, ô Nguyên Li®u phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Long van x1 + Xuy?t Long Th?ch Thuong x1			
			local 	BagPos = TryRecieveItem( sceneId, selfId, 10157002, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			local 	BagPos = TryRecieveItem( sceneId, selfId, 20310183, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		--*****************goi lao huu 6**********************
		if GetNumText()== 20006 then
			
			--check dieu kien nhan qua
			local num_goiqua =6 -- so thu tu cua goi qua
			local daytime_span =25 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot2 <3 then
				x001089_FailTips(sceneId, selfId,"Ô Nguyên Li®u phäi có ðü 3 ô tr¯ng")
				return
			end
			
			--B?o th?ch c?p 6 ng?u nhiên x3
			for i = 1,3 do
				--add bao thach ngau nhien
				local ran = random(getn(x001089_BaoThachC6))
				local 	BagPos = TryRecieveItem( sceneId, selfId, x001089_BaoThachC6[ran], QUALITY_MUST_BE_CHANGE )
				--end add bao thach ngau nhien
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--*****************goi lao huu 7**********************
		if GetNumText()== 20007 then
			
			--check dieu kien nhan qua
			local num_goiqua =7 -- so thu tu cua goi qua
			local daytime_span =30 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot <1 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø phäi có ðü 1 ô tr¯ng")
				return
			end
			
			--Tr?ng trân thú Ti?u Mã Ca
			
			local 	BagPos = TryRecieveItem( sceneId, selfId, 30309080, QUALITY_MUST_BE_CHANGE )
			
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--*****************goi lao huu 8**********************
		if GetNumText()== 20008 then
			
			--check dieu kien nhan qua
			local num_goiqua =8 -- so thu tu cua goi qua
			local daytime_span =35 --so ngay online can thiet
			local dieukien = x001089_Check_NhanQua (sceneId, selfId, num_goiqua,daytime_span)
			if dieukien ~= 1 then 
				x001089_FailTips(sceneId, selfId,"BÕn ðã nh§n qua gói quà này ho£c chßa ðü ði«u ki®n ð¬ nh§n. Vui lòng xem thông tin chi tiªt tÕi trang chü và Fanpage.")
				return
			end
			--end check dieu kien
			
			if slot <3 then
				x001089_FailTips(sceneId, selfId,"Ô ÐÕo Cø phäi có ðü 3 ô tr¯ng")
				return
			end
			
			--Chú Van Tinh Ng?c x3
			for i = 1,3 do
				local 	BagPos = TryRecieveItem( sceneId, selfId, 38000152, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
			end
			

			
			local CurDayTime = GetDayTime()			--14201
			local DayTime = mod( CurDayTime , 1000 )	--201
			
			
			SetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK,20000+num_goiqua*1000+DayTime)--11201
			x001089_thongbao_kt(sceneId,selfId)
			return
		end
		
		--exit
		return
	end
	
	--**************end gói huynh de*************
	
	
	--cac truong hop khac
	BeginEvent( sceneId )
		local text="Có l²i xäy ra trong quá trình kích hoÕt CODE, mã l²i "..checkmd..". #rVui lòng liên h® ADMIN ð¬ ðßþc trþ giúp!"
		AddText( sceneId, text )				
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	return
	--end truong hop khac
end

function x001089_thongbao_kt(sceneId,selfId)
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
	BeginEvent(sceneId)
		local Tips ="Nh§n quà thành công! Hãy nh¾ ðªn g£p ta khi ðü ði«u ki®n nh§n quà tiªp theo nhé!"
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
--***************
function x001089_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

function x001089_Check_NhanQua (sceneId, selfId, goiqua, daytime_span)
	if MD_GIFTCODE_CHECK == nil then
		MD_GIFTCODE_CHECK =303
	end
	--giftcode luu dang: xyzzzz 10201
	--x : mã gói quà, 1: lao huu;2 : huynh de
	--y : biªn phø, lßu xem ðã nh§n ðßþc mÑc nào trong gói
	--zzzz : th¶i gian nh§n quà l¥n trß¾c
	local checkmd = GetMissionData(sceneId,selfId,MD_GIFTCODE_CHECK)
	local CurDayTime = GetDayTime()			--14201
	local DayTime = mod( CurDayTime , 1000 )	--201
	local DayTime_pre = mod (checkmd , 1000) --thoi gian nhan lan truoc
	local time_span = DayTime - DayTime_pre --khoang cach thoi gian nhan
	if DayTime_pre ==0 then --chua nhan lan nao
		time_span =0;
	end
	
	local num_goiqua = floor (mod (checkmd , 10000) /1000)
	
	if num_goiqua < goiqua and time_span >= daytime_span then
		return 1 --thöa ði«u ki®n chßa nh§n quà
	else
		return 0 --không thöa
	end
	
	
end
