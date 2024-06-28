
x050024_g_ScriptId	= 050024

x050024_g_PosTbl = {

	{{134,262},{129,261},{129,267}},
	{{129,277},{132,277},{141,277}},
	{{146,277},{ 154,277},{ 162,277}},
	{{ 170,277},{ 178,277},{ 186,277}},
	{{ 194,277},{ 202,277},{ 210,277}},
	{{ 218,277},{ 226,277},{ 234,277}},
	{{ 242,277},{ 250,277},{ 258,277}},
	{{ 266,277},{274,277},{282,277}},
	{{290,277},{298,277},{306,277}},
	{{314,277},{322,277},{330,277}},
	{{338,277},{346,277},{352,277}},
	{{352,270},{346,270},{338,270}},
	{{330,270},{322,270},{314,270}},
	{{306,270},{298,270},{290,270}},
	{{282,270},{274,270},{266,270}},
	{{258,270},{250,270},{242,270}},
	{{218,270},{226,270},{234,270}},
	{{194,270},{202,270},{210,161}},
	{{186,270},{178,270},{170,270}},
	{{162,270},{154,270},{146,270}},
	{{248,286},{248,292},{248,298}},
	{{248,304},{248,310},{248,316}},
	{{248,322},{248,328},{248,334}},
	{{248,340},{248,346},{248,352}},
	{{260,334},{260,328},{260,322}},
	{{248,356},{260,356},{260,352}},
	{{260,316},{260,310},{260,304}},
	{{260,298},{260,292},{260,286}},
	{{248,362},{248,370},{248,376}},
	{{248,384},{260,384},{260,376}},
	{{260,370},{260,362},{306,340}},
	{{300,340},{294,340},{288,340}},
	{{282,340},{276,340},{270,340}},
	{{264,340},{258,340},{ 252,340}},
	{{ 246,340},{ 240,340},{ 234,340}},
	{{ 228,340},{ 222,340},{ 216,340}},
	{{ 216,351},{ 222,351},{ 228,351}},
	{{ 234,351},{ 240,351},{ 246,351}},
	{{ 252, 351},{ 258, 351},{ 264, 351}},
	{{ 270, 351},{ 276, 351},{ 282, 351}},
	{{ 294, 351},{ 300, 351},{ 306, 351}},
	{{ 296, 334},{ 296, 326},{ 296, 318}},
	{{296, 310},{296, 302},{296, 294}},
	{{296, 286},{296, 284},{296, 282}},
	{{207, 286},{207, 284},{207, 282}},
	{{207, 310},{207, 302},{207, 294}},
	{{207, 318},{207, 326},{207, 334}},
	{{207, 342},{207, 350},{207, 356}},
	{{227, 345},{235, 245},{244, 345}},
	{{269, 345},{281, 345},{299, 345}}

}

x050024_g_IDXLastGiveTime	= 0

function x050024_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--¼ì²âÊÇ·ñÊÇ»î¶¯Ê±¼ä....
	if 0 == x050024_CheckActivityTime() then
		return
	end

	--¿ªÆô»î¶¯....
	StartOneActivity( sceneId, actId, 5*60*1000, iNoticeType )
	SetActivityParam( sceneId, actId, x050024_g_IDXLastGiveTime, 0 )

end

function x050024_CheckActivityTime()

	--2008-12-24 ~ 2009-1-8

	local curDayTime = GetDayTime()
	--if curDayTime >= 8358 and curDayTime < 9007 then
		return 0 --hd edit
	--end

	--return 0

end

function x050024_OnTimerNoel( sceneId, selfId )
	x050024_DropSnow(sceneId)
	CallScriptFunction( 50023, "OnTimerSnowMan", sceneId, selfId )
end

function x050024_DropSnow(sceneId)

	local CurHourTime = GetQuarterTime()

	local QTime = mod(CurHourTime,100)
	if mod(QTime,8) ~= 0 then
		return
	end
	--BroadMsgByChatPipe(sceneId,0,"@*;SrvMsg;SCA:" .. "#PNhæng ø tuyªt ¦n chÑa trong nó #YTuyªt C¥u HÕnh Phúc #Plà v§t ph¦m r¤t thú v¸ chï dùng trong d¸p Giáng Sinh. #PB¢ng hæu hãy mau mau thu th§p #YTuyªt C¥u HÕnh Phúc#P và cùng häo hæu cüa mình ch½i ném tuyªt m×ng Giáng Sinh nhé!!",4)
	BroadMsgByChatPipe(sceneId,0," " .. "#PNhæng ø tuyªt ¦n chÑa trong nó #YTuyªt C¥u HÕnh Phúc #Plà v§t ph¦m r¤t thú v¸ chï dùng trong d¸p Giáng Sinh. #PB¢ng hæu hãy mau mau thu th§p #YTuyªt C¥u HÕnh Phúc#P và cùng häo hæu cüa mình ch½i ném tuyªt m×ng Giáng Sinh nhé!!",4)
	x050024_GiveXueDui( sceneId )

end

function x050024_GiveXueDui( sceneId )

	local idx = 1
	local ItemBoxId = -1
	local Pos = nil

	for _, PosGroup in x050024_g_PosTbl do

		idx = random(3)
		Pos = PosGroup[idx]

		ItemBoxId = ItemBoxEnterScene( Pos[1], Pos[2], 778, sceneId, QUALITY_MUST_BE_CHANGE, 1, 30505146 )
		AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30501106 )

		local rand = random(100)
		if rand < 20 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30505146 )
		end
		rand = random(100)
		if rand < 33 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30501106 )
		end
		
		SetItemBoxMaxGrowTime( sceneId, ItemBoxId, 5400000 )

	end

end
