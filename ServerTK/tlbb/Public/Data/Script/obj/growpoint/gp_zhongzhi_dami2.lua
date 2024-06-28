--生长点脚本，大米2
--脚本号
--g_ScriptId = 711004

--此生长点编号
x711004_g_GpId = 505

--下一个生长点的编号
x711004_g_GpIdNext = 506

function	 x711004_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711004_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,1,20104002)
	
	--得到生长点的主人ID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--参数是SceneID，ItemBoxID
	--给ItemBox设定主人
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)
	SetItemBoxPickOwnerTime(sceneId,ItemBoxId,600000)	--设定绑定时间
	EnableItemBoxPickOwnerTime(sceneId,ItemBoxId)		--保护时间开始计时

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,600000)	--设定回收时间

	--取得生长点的坐标
	GP_X = GetItemBoxWorldPosX(sceneId,targetId)
	GP_Z = GetItemBoxWorldPosZ(sceneId,targetId)
	--下取整
	GP_X = floor(GP_X)
	GP_Z = floor(GP_Z)
	--判断种植牌的位置在哪个种植牌管辖的范围内
	local num = 0
	for i, findid in PLANTNPC_ADDRESS do
		if	(GP_X >= findid.X_MIN)  and (GP_Z >= findid.Z_MIN) and (GP_X <= findid.X_MAX)  and (GP_Z <= findid.Z_MAX) and (sceneId == findid.Scene) then
			num = i	
			break
		end
	end
	
	--如果找不到正确的位置则返回
	if num == 0 then
		return
	end

	--判断种植牌是否是8，如果是8则通知玩家
	if PLANTFLAG[num] == 8 then
		LuaFnSendMailToGUID(sceneId,ItemBoxOwnerGUID,"Th馽 v do c醕 h� tr皀g 疸 ch韓 t緄, xin h銀 thu ho誧h trong v騨g 10 ph鷗")
	end
	--找到正确的编号，把种植牌-1
	PLANTFLAG[num] = PLANTFLAG[num] - 1

	return 1
end
