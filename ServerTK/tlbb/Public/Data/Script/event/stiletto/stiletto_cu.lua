--装备打孔

--脚本号
x311200_g_ScriptId	= 311200
x311200_g_Pos_normal= {{left={269,316},right={275,326}}}
x311200_g_Pos_fashion= {{left={340,268},right={344,273}}}--
x311200_Stiletto_four_ID = {
														10514091,10514092,10514093,10514094,10514095,10514096,10514097,10514098,10515090,10515091,
														10515092,10515093,10515094,10515095,10515096,10515097,10515098,10521090,10521091,10521092,
														10521093,10521094,10521095,10521096,10521097,10521098,10522090,10522091,10522092,10522093,
														10522094,10522095,10522096,10522097,10522098,10523090,10523091,10523092,10523093,10523094,
														10523095,10523096,10523097,10523098,10514090,
														-- 褚少微，2008.6.12。添加102神器极限打孔
														10300100,10300101,10300102, 10301100,10301101,10301102, 10301200,10301201,10301202, 
														10302100,10302101,10302102, 10303100,10303101,10303102, 10303200,10303201,10303202,
														10304100,10304101,10304102, 10305100,10305101,10305102, 10305200,10305201,10305202,
														10422016,10423024,
														--胡凯，2008.8.29。旧100套（五件套）及新96套开放极限打孔
														10510009,10510019,10510029,10510039,10510049,10510059,10510069,10510079,10510089,10511009,
														10511019,10511029,10511039,10511049,10511059,10511069,10511079,10511089,10512009,10512019,
														10512029,10512039,10512049,10512059,10512069,10512079,10512089,10513009,10513019,10513029,
														10513039,10513049,10513059,10513069,10513079,10513089,10511096,10512092,10520092,10522101,
														10523101,10511097,10512093,10520093,10522102,10523102,10511098,10512094,10520094,10522103,
														10523103,10511099,10512095,10520095,10522104,10523104,
														--胡凯，2008.9.18。90级以上（含90）生活技能产出的戒指，护符，肩开放极限打孔
														10215020,10222020,10223020,10222035,10222036,10223035,10223036,
														--胡凯，2008.11.11。90级以上（含90）手工装备开放极限打孔（鞋，腰带，护腕，手套，头盔，武器，护甲，项链）
														10200019,10200020,10201019,10201020,10202019,10202020,10203019,10203020,10204019,10204020,
														10205019,10205020,10210020,10210040,10210060,10213020,10213040,10213060,10212020,10212040,
														10212060,10211020,10211040,10211060,10214020,10221020,10220020,
														--zchw，2008-11-17  TT：41140 90门派套，92级神器开放第四孔													
														10510008,10510038,10510068,
														10511018,10511028,10511048,10511058,10511078,10511088,10512008,10512038,
														10512068,10513008,10513018,10513028,10513038,10513048,10513058,10513068,
														10513078,10513088,10514028,10514058,10514088,10520018,10520028,10520048,
														10520058,10520078,10520088,10521028,10521058,10521088,10522018,10522048,
														10522078,10552008,10552038,10552068,10553008,10553018,10553038,10553048,
														10553068,10553078,
														--zchw 2008-11-26 TT：41771
														10410026, 10410027, 10410034, 10410035, 10423025, 10423026,
														--houzhifang 2008-12-22: dark
														10150001,10150002,
														
													}
																
function x311200_OnStiletto( sceneId, selfId, idBagPos, idBagPosStuff )

	--可打孔的装备
	--0武器，1帽子，2衣服，3手套，4鞋
	--5腰带，6戒指，7项链，12护符，14护腕
	--15护肩
	local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 10, 12, 14, 15, 16, 17 }

	local	Bore_Count			= GetBagGemCount( sceneId, selfId, idBagPos )
	local nLevel					= GetBagItemLevel( sceneId, selfId, idBagPos )
	local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, idBagPos )
	local find						= 0

	for i, gem in tEquipGemTable do
		if gem == EquipType then
			find							= 1
		end
	end
	if find == 0 then
		x311200_NotifyTip( sceneId, selfId, "Trang b� n鄖 kh鬾g th� th阭 l� kh鋗 !!" )
		return
	end
	
	-- 褚少微，2008.6.2。极品装备放出，重楼戒10422016，重楼玉10423024不能打孔
	-- 褚少微，2008.7.1。重楼戒、重楼玉的机制修改：1、可以打孔；2、可以镶嵌宝石，但只能镶嵌不绑定的宝石
	--local itemID = GetItemTableIndexByIndex(sceneId, selfId, idBagPos )
	--if itemID == 10422016 or itemID == 10423024 then
	--	x311200_NotifyTip( sceneId, selfId, "该装备不能打孔。" )
	--	return
	-- end
	local posX,posZ = GetWorldPos(sceneId, selfId)
	for i=1,getn( x311200_g_Pos_normal ) do
		if EquipType ==16 then

			if x311200_g_Pos_normal[i].left[1] <= posX and posX <= x311200_g_Pos_normal[i].right[1] and x311200_g_Pos_normal[i].left[2] <= posZ and posZ <= x311200_g_Pos_normal[i].right[2] then
				local text = "Th th� l瞚. N絠 n鄖 kh鬾g h� tr� t誳 l� kh鋗 cho th秈 trang !! H銀 皙n L誧 D呓ng (342,270) 瓞 th馽 hi畁 t誳 l� cho th秈 trang ! " 
				x311200_NotifyTip( sceneId, selfId, text)
				return
			else
				local itemID = GetItemTableIndexByIndex(sceneId, selfId, idBagPosStuff )
					if itemID ~= 30503134 then
						x311200_NotifyTip( sceneId, selfId, "B課 ph鋓 cho v鄌 Kim Thoa m緄 c� th� 瘌c l� th秈 trang 疬㧟")
						return
					end
			end
		end
	end
	for j=1,getn( x311200_g_Pos_fashion ) do
		if EquipType ~=16 then
			if x311200_g_Pos_fashion[j].left[1] <= posX and posX <= x311200_g_Pos_fashion[j].right[1] and x311200_g_Pos_fashion[j].left[2] <= posZ and posZ <= x311200_g_Pos_fashion[j].right[2] then  
				local text = "Th th� l瞚, khu n鄖 ch� h� tr� kh鋗 ng鱟 cho th秈 trang !! Xin h銀 t緄 L誧 D呓ng (274,321) 瓞 t誳 l� kh鋗 cho trang b� ! " 
				x311200_NotifyTip( sceneId, selfId, text )
				return
			end
		end
	end
	--打孔消耗
	ret	= LuaFnStilettoCostExe( sceneId, selfId, nLevel*100+1+Bore_Count, idBagPosStuff, 1 )
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "Ki琺 tra tay n鋓 c� sai s髏. Li阯 h� Game Master" )
		return
	elseif ret == -2 then
		x311200_NotifyTip( sceneId, selfId, "B課 kh鬾g c� 瘊ng lo読 nguy阯 li畊 c thi猼, kh鬾g th� th馽 hi畁 h鄋h 鸬ng n鄖 !!" )
		return
	elseif ret == -3 then
		x311200_NotifyTip( sceneId, selfId, "B課 kh鬾g c� 瘘 ti玭, kh鬾g th� ti猲 h鄋h t誳 l� kh鋗 !" )
		return
	elseif ret == -4 then
		x311200_NotifyTip( sceneId, selfId, "B課 kh鬾g 瘘 nguy阯 li畊, kh鬾g th� th馽 hi畁 t誳 l� kh鋗 !!" )
		return
	elseif ret == 0 then
		x311200_NotifyTip( sceneId, selfId, "Kh tr� ti猲 th b読 !" );
		return
	end

	--打孔执行
	--函数要改
	ret	= AddBagItemSlot( sceneId, selfId, idBagPos )
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "T誳 l� kh鋗 th b読 !!" )
	elseif ret == -2 then
		x311200_NotifyTip( sceneId, selfId, "L瞚 nghi阭 tr鱪g" )
	elseif ret == -3 then
		x311200_NotifyTip( sceneId, selfId, "C cho trang b� v鄌" )
	elseif ret == -4 then
		x311200_NotifyTip( sceneId, selfId, "N絠 n鄖 ch� h� tr� kh鋗 3 l�" ) --modi:lby2008-5-21当玩家企图打第四个空的时候报错
		--x311200_NotifyTip( sceneId, selfId, "不能再打孔了" ) 	
	elseif ret == 1 then
		x311200_NotifyTip( sceneId, selfId, "T誳 l� kh鋗 th鄋h c鬾g !!" )
		--增加特效
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		
	end


end

--**********************************
--醒目提示
--**********************************
function x311200_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

																
--add:lby20080523在楼南打第四个空
function x311200_OnStiletto_Four( sceneId, selfId, idBagPos, idBagPosStuff, type )

	--可打孔的装备
	--0武器，1帽子，2衣服，3手套，4鞋
	--5腰带，6戒指，7项链，12护符，14护腕
	--15护肩
	

	--x311200_NotifyTip( sceneId, selfId, "test11" )
	
	local taozhuangid = GetItemTableIndexByIndex( sceneId, selfId, idBagPos )
	local slotcailiao = GetItemTableIndexByIndex( sceneId, selfId, idBagPosStuff )
	
	local szCailiao = GetBagItemTransfer(sceneId,selfId, idBagPosStuff)
	
	--装备是否是绑定
	local isequipbind = LuaFnGetItemBindStatus( sceneId, selfId, idBagPos )
	--材料是否是绑定
	local isstuffbind = LuaFnGetItemBindStatus( sceneId, selfId, idBagPosStuff )
	--PrintStr("isequipbind "..isequipbind.." isstuffbind "..isstuffbind)
	
	-- 褚少微，2008.6.2。极品装备放出，重楼戒10422016，重楼玉10423024不能打孔
	-- 褚少微，2008.7.1。重楼戒、重楼玉的机制修改：1、可以打孔；2、可以镶嵌宝石，但只能镶嵌不绑定的宝石
	--local itemID = GetItemTableIndexByIndex(sceneId, selfId, idBagPos )
	--if itemID == 10422016 or itemID == 10423024 then
	--	x311200_NotifyTip( sceneId, selfId, "该装备不能打孔。" )
	--	return
	--end
	
	local istaozhuang = 1--0		  --hd edit
	 
	--for i, Data in x311200_Stiletto_four_ID do
	--	if x311200_Stiletto_four_ID[i] == taozhuangid then
	--		istaozhuang = 1
	--	end
	--end
	
	if (IsItemDark(sceneId, selfId, taozhuangid) == 1) then
		istaozhuang = 1
	end
	   
	 if istaozhuang == 0 then
	    x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_02}" )
			return
	 end
	 
	 if type ~= 1 and type ~= 2 then
	    x311200_NotifyTip( sceneId, selfId, "Trang b� c� sai s髏 !!" )
			return
	 end
	
	
	local	Bore_Count			= GetBagGemCount( sceneId, selfId, idBagPos )
	local nLevel					= GetBagItemLevel( sceneId, selfId, idBagPos )
	--打孔消耗
	ret	= LuaFnStilettoCostExe( sceneId, selfId, nLevel*100+1+Bore_Count, idBagPosStuff, type  )
	

	
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "Ki琺 tra l瞚 th b読. Li阯 h� v緄 Game Master !" )
		return
	elseif ret == -2 then
		if type == 1 then
			x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_07}" )
		else
			x311200_NotifyTip( sceneId, selfId, "#{JCDK_80905_07}" )
		end
		return
	elseif ret == -3 then
		if type == 1 then
			x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_08}" )
		else
			x311200_NotifyTip( sceneId, selfId, "#{JCDK_80905_08}" )
		end
		return
	elseif ret == -4 then
		if type == 1 then
			x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_07}" )
		else
			x311200_NotifyTip( sceneId, selfId, "#{JCDK_80905_07}" )
		end
		return
	elseif ret == 0 then --zchw
		x311200_NotifyTip( sceneId, selfId, "Kh tr� ti玭 th b読 ! !!" );
		return
	end

	--打孔执行
	ret	= AddBagItemSlotFour( sceneId, selfId, idBagPos )
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "T誳 l� kh鋗 th b読 !!" )
	elseif ret == -2 then
		x311200_NotifyTip( sceneId, selfId, "秀 c� l瞚 nghi阭 tr鱪g !!" )
	elseif ret == -3 then
		x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_06}" )
	elseif ret == -4 then
		x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_04}" ) 
	elseif ret == 1 then
	--写行为日志
	  local strLog =  format( "equip:%d level:%d material:%d", taozhuangid, nLevel, slotcailiao)
	  AuditSlotFour(sceneId, selfId, strLog)
	  
		x311200_NotifyTip( sceneId, selfId, "T誳 l� kh鋗 th鄋h c鬾g !!" )
		
		if isequipbind == 0 and isstuffbind == 1 and type == 2 then
			LuaFnItemBind( sceneId, selfId, idBagPos )
		end

	 	--成功公告
	 	local transfer = GetBagItemTransfer(sceneId,selfId,idBagPos)
	 	local str = ""
	 	if type == 1 then
	 		str = format( "#{_INFOUSR%s}#{AQ_11}#{_INFOMSG%s}#{AQ_32}#{_INFOMSG%s}#{AQ_12}", GetName(sceneId,selfId),szCailiao,transfer )
	 	else
	 		str = format( "#{_INFOUSR%s}#{AQ_11}#{_INFOMSG%s}#{AQ_31}#{_INFOMSG%s}#{AQ_12}", GetName(sceneId,selfId),szCailiao,transfer )
	 	end
	 	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

		--增加特效
	 	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
	end
end
