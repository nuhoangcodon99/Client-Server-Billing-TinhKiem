--Ê¹ÓÃÅä·½µÄ½Å±¾

--½Å±¾ºÅ
x890100_g_scriptId = 890100

x890100_g_SkillBooks = {}



x890100_g_SkillBooks[30311001] = {id=1914,skill1=1851,skill2=1852,skill3=1853}
x890100_g_SkillBooks[30311002] = {id=1915,skill1=1854,skill2=1855,skill3=1856}
x890100_g_SkillBooks[30311003] = {id=1916,skill1=1857,skill2=1858,skill3=1859}
x890100_g_SkillBooks[30311004] = {id=1917,skill1=1860,skill2=1861,skill3=1862}
x890100_g_SkillBooks[30311005] = {id=1918,skill1=1863,skill2=1864,skill3=1865}
x890100_g_SkillBooks[30311006] = {id=1919,skill1=1866,skill2=1867,skill3=1868}
x890100_g_SkillBooks[30311007] = {id=1920,skill1=1869,skill2=1870,skill3=1871}
x890100_g_SkillBooks[30311008] = {id=1921,skill1=1872,skill2=1873,skill3=1874}
x890100_g_SkillBooks[30311009] = {id=1922,skill1=1875,skill2=1876,skill3=1877}
x890100_g_SkillBooks[30311010] = {id=1923,skill1=1878,skill2=1879,skill3=1880}

x890100_g_SkillBooks[30311011] = {id=1924,skill1=1881,skill2=1882,skill3=1883}
x890100_g_SkillBooks[30311012] = {id=1925,skill1=1884,skill2=1885,skill3=1886}
x890100_g_SkillBooks[30311013] = {id=1926,skill1=1887,skill2=1888,skill3=1889}
x890100_g_SkillBooks[30311014] = {id=1927,skill1=1890,skill2=1891,skill3=1892}
x890100_g_SkillBooks[30311015] = {id=1928,skill1=1893,skill2=1894,skill3=1895}
x890100_g_SkillBooks[30311016] = {id=1929,skill1=1896,skill2=1897,skill3=1898}

function x890100_IsSkillLikeScript( sceneId, selfId )
	return 1
end


function x890100_CancelImpacts( sceneId, selfId )
	return 0
end


function x890100_OnConditionCheck( sceneId, selfId )
	if LuaFnVerifyUsedItem( sceneId, selfId ) ~= 1 then
		return 0
	end
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local skillBook = x890100_g_SkillBooks[itemTblIndex]
	if not skillBook then
		return 0
	end

	if GetLevel( sceneId, selfId ) < 75 then
		x890100_NotifyFailTips( sceneId, selfId, "#{WLMJ_130121_01}" )
		return 0
	end

	local BookVT = GetMissionData(sceneId,selfId,MD_MJ_BOOKVT)	--xxx-yyy-zzz
	local BookVTBT = {1000+floor(BookVT/1000000),1000-floor(BookVT/1000000)*1000+floor(BookVT/1000),1000+mod(BookVT,1000)}
	if (BookVTBT[1]-1000) ~= 0 and (BookVTBT[2]-1000) ~= 0 and (BookVTBT[3]-1000) ~= 0 then
		x890100_NotifyFailTips( sceneId, selfId, "#{WLMJ_130121_03}" )
		return 0
	end
	if HaveSkill( sceneId, selfId, skillBook.id ) == 1 then
		x890100_NotifyFailTips( sceneId, selfId, "Ðã h÷c Võ Lâm Bí T¸ch này, không th¬ h÷c tiªp." )
		return 0
	end

	return 1
end


function x890100_OnDeplete( sceneId, selfId )
	if LuaFnDepletingUsedItem( sceneId, selfId ) > 0 then
		return 1
	end

	return 0
end


function x890100_OnActivateOnce( sceneId, selfId )

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local skillBook = x890100_g_SkillBooks[itemTblIndex]
	local BookVT = GetMissionData(sceneId,selfId,MD_MJ_BOOKVT)	--xxx-yyy-zzz
	local BookVTBT = {1000+floor(BookVT/1000000),1000-floor(BookVT/1000000)*1000+floor(BookVT/1000),1000+mod(BookVT,1000)}
	local BookLevel = GetMissionData(sceneId,selfId,MD_MJ_BOOKLV)	--xx--yy--zz
	local BookLV={}
	BookLV[1] = floor(BookLevel/10000)
	BookLV[2] = floor(BookLevel/100)-BookLV[1]*100
	BookLV[3] = mod(BookLevel,100)

	if not skillBook then
		return 0
	end
	if (BookVTBT[1]-1000) ~= 0 and (BookVTBT[2]-1000) ~= 0 and (BookVTBT[3]-1000) ~= 0 then
		x890100_NotifyFailTips( sceneId, selfId, "#{WLMJ_130121_03}" )
		return 0
	end
	if HaveSkill( sceneId, selfId, skillBook.id ) == 1 then
		x890100_NotifyFailTips( sceneId, selfId, "Ðã h÷c Võ Lâm Bí T¸ch này, không th¬ h÷c tiªp." )
		return 0
	else
		local SetData = 0
		local DataSet = 0
			AddSkill( sceneId, selfId, skillBook.id )
			AddSkill( sceneId, selfId, skillBook.skill1 )
			AddSkill( sceneId, selfId, skillBook.skill2 )
			AddSkill( sceneId, selfId, skillBook.skill3 )
		if BookVTBT[1]-1000 == 0 then 
			SetData = (skillBook.id-1000)*1000000+(BookVTBT[2]-1000)*1000+(BookVTBT[3]-1000)
			DataSet =10000+ BookLV[2]*100+BookLV[3]
		elseif BookVTBT[2]-1000 == 0 then 
			SetData = (BookVTBT[1]-1000)*1000000+(skillBook.id-1000)*1000+(BookVTBT[3]-1000)
			DataSet =(BookLV[1])*10000+100+BookLV[3]
			x890100_NotifyFailTips( sceneId, selfId, " "..DataSet )
		elseif BookVTBT[3]-1000 == 0 then 
			SetData = (BookVTBT[1]-1000)*1000000+(BookVTBT[2]-1000)*1000+(skillBook.id-1000)
			DataSet =(BookLV[1])*10000+ BookLV[2]*100+1
		end
		SetMissionData(sceneId,selfId,MD_MJ_BOOKVT,SetData)
		SetMissionData(sceneId,selfId,MD_MJ_BOOKLV,DataSet)
	end
	local TAMDAC = GetMissionData(sceneId,selfId,MD_MJ_TAMDAC)
	local BookLevel = GetMissionData(sceneId,selfId,MD_MJ_BOOKLV) 
	local BookVT = GetMissionData(sceneId,selfId,MD_MJ_BOOKVT)	--xxx-yyy-zzz
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, TAMDAC )
		UICommand_AddInt( sceneId, BookLevel )
		UICommand_AddInt( sceneId, BookVT )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 4000001 )	-- trä vê cl chï s¯

	--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, skillBook.specialEffectID, 0 )
	return 1
end


function x890100_OnActivateEachTick( sceneId, selfId )
	return 1
end


function x890100_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
