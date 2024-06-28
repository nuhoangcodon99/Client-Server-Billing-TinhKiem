--注意：

--物品技能的逻辑只能使用基础技能和脚本来实现

--脚本:

--脚本号
x331026_g_scriptId = 331026 --临时写这个,真正用的时候一定要改.

-- effect = Client/Config/EffectDefine.txt中定义的
-- time = 持续时间(秒)

x331026_g_itemList = {}
x331026_g_itemList[30509029] = {effect=2, time=60,
	msg1="#W#{_INFOUSR%s}#H th 疸 l鈛 kh鬾g m遖, c鈟 c痠 ru祅g 黏t kh� c, kh鬾g 疣nh l騨g n阯 疸 l 1 %s#H, mi畁g l b, 1 l鷆 sau ch� th m鈟 餰n 餰n k閛 馥y tr秈, m遖 gi� b鉶 b鵱g.",
	msg2="#W#{_INFOUSR%s}#H th �#G%s#H 疸 l鈛 kh鬾g m遖, c鈟 c痠 ru祅g 黏t kh� c, kh鬾g 疣nh l騨g n阯 疸 l 1 %s#H, mi畁g l b, 1 l鷆 sau ch� th m鈟 餰n 餰n k閛 馥y tr秈, m遖 gi� b鉶 b鵱g."}
x331026_g_itemList[30509030] = {effect=3, time=60,
	msg1="#W#{_INFOUSR%s}#H 衋ng 鹧ng t読 ng叨i y陁 c黙 m靚h l l秈 th�, n猽 nh� c� ph� l騨g sau n鄖 s� b� tr秈 疳nh. V譨 n骾 d裻 c鈛, kh鬾g ng� m鈟 餰n k閛 皙n, s ch緋  . L鷆 痼 h� 皙n n閠 m 馥y v� kinh s�. Sau n鄖 ph醫 hi畁 Kh鬾g ng� l� do %s#H l鄊 ra.",
	msg2="#W#{_INFOUSR%s}#H 衋ng 鹧ng t読 ng叨i y陁 c黙 m靚h l l秈 th�, n猽 nh� c� ph� l騨g sau n鄖 s� b� tr秈 疳nh. V譨 n骾 d裻 c鈛, #G%s#H kh鬾g ng� m鈟 餰n k閛 皙n, s ch緋  . L鷆 痼 h� 皙n n閠 m 馥y v� kinh s�. Sau n鄖 ph醫 hi畁 Kh鬾g ng� l� do %s#H l鄊 ra."}
x331026_g_itemList[30509031] = {effect=4, time=60,
	msg1="#W#{_INFOUSR%s}#H b� 1 疳m ti瑄 t� qu r li阯 t鴆 v� kh鬾g c騨 bi畁 ph醦 n鄌 kh醕, ch� c騨 l b鋙 v %s#H 疸 c gi l鈛 nay, g鄌 l阯 1 ti猲g \"Oan!\", tr阯 tr秈 b眓g xu hi畁 1 lu皀g tuy猼 Nga mao r総 xu痭g, l� ti瑄 t� kinh s� qu� b� ch誽.",
	msg2="#W#{_INFOUSR%s}#H t読 G%s#H b� 1 疳m ti瑄 t� qu g li阯 t鴆 v� kh鬾g c騨 bi畁 ph醦 n鄌 kh醕, ch� c騨 l b鋙 v %s#H 疸 c gi l鈛 nay, g鄌 l阯 1 ti猲g \"Oan!\", tr阯 tr秈 b眓g xu hi畁 1 lu皀g tuy猼 Nga mao r総 xu痭g, l� ti瑄 t� kinh s� qu� b� ch誽."}
x331026_g_itemList[30509032] = {effect=5, time=60,
	msg1="#W#{_INFOUSR%s}#H v� gia t錸g kh鬾g kh� c黙 s� l鉵g m課g v緄 ng叨i y陁 c黙 m靚h t読 Hoa ti玭 nguy畉 h�, s� d鴑g %s#H v ph n鄖 kh鬾g d� c� 疬㧟 n鄖 ",
	msg2="#W#{_INFOUSR%s}#H v� gia t錸g kh鬾g kh� c黙 s� l鉵g m課g v緄 ng叨i y陁 c黙 m靚h t読 #G%s#H, s� d鴑g %s#H v ph n鄖 kh鬾g d� c� 疬㧟 n鄖 "}
x331026_g_itemList[30509033] = {effect=6, time=60,
	msg1="#W#{_INFOUSR%s}#H 餫ng c鵱g cao th� v� l鈓 t� v� %s#H, khi th tr鷆 di畃 bay 馥y tr秈, ngay l t裞 tr� n阯 kh� th� h絥 ng叨i.",
	msg2="#W#{_INFOUSR%s}#H 餫ng c鵱g cao th� v� l鈓 � #G%s#Ht� v�, s� d鴑g tr呔c 1 %s#H, khi th tr鷆 di畃 bay 馥y tr秈, ngay l t裞 tr� n阯 kh� th� h絥 ng叨i."}
x331026_g_itemList[30509034] = {effect=7, time=60,
	msg1="#W#{_INFOUSR%s}#H trong l鷆 餫ng 餴 d誳, ng鐄 h裯g l鄊 th�, s� d鴑g 1 %s#H, m nh靚 phong di畃 bay 馥y tr秈, bu礳 mi畁g ng鈓 ra c鈛 \"S呓ng di畃 h皀g vu nh� nguy畉 hoa\", l鄊 ng叨i 餴 疬秐g r  t唼ng.",
	msg2="#W#{_INFOUSR%s}#H �#G%s#H trong l鷆 餫ng 餴 d誳, ng鐄 h裯g l鄊 th�, s� d鴑g 1 %s#H, m nh靚 phong di畃 bay 馥y tr秈, bu礳 mi畁g ng鈓 ra c鈛 \"S呓ng di畃 h皀g vu nh� nguy畉 hoa\", l鄊 ng叨i 餴 疬秐g r  t唼ng."}
x331026_g_itemList[30509035] = {effect=8, time=60,
	msg1="#W#{_INFOUSR%s}#H 皤u b� m鱥 ng叨i ch� khu鬾 m c黙 m靚h, trong l騨g kh鬾g cam t鈓, trong l鷆 gi d� 疸 s� d鴑g 1 %s#H, sau 痼 t� trong b tr秈 馥y c醫 b鴌 餴 ra, r h鄆 l騨g v緄 s� thay 鸨i c黙 b鋘 th鈔.",
	msg2="#W#{_INFOUSR%s}#H 皤u b� m鱥 ng叨i ch� khu鬾 m c黙 m靚h, trong l騨g kh鬾g cam t鈓, 疸 � #G%s#H s� d鴑g 1 %s#H, sau 痼 t� trong b tr秈 馥y c醫 b鴌 餴 ra, r h鄆 l騨g v緄 s� thay 鸨i c黙 b鋘 th鈔."}
x331026_g_itemList[30509036] = {effect=9, time=60,
	msg1="#W#{_INFOUSR%s}#H n m� c鹡g mu痭 ph醫 t鄆, cho n阯 s� d鴑g 1 %s#H, ngay l t裞 nguy阯 b鋙 r絠 nh� m遖, m鱥 ng叨i vui m譶g hoan h�.",
	msg2="#W#{_INFOUSR%s}#H n m� c鹡g mu痭 ph醫 t鄆, n阯 � #G%s#H s� d鴑g 1 %s#H, ngay l t裞 nguy阯 b鋙 r絠 nh� m遖, m鱥 ng叨i vui m譶g hoan h�."}
x331026_g_itemList[30509052] = {effect=10, time=60,
	msg1="#H五月，是一場雷鳴後大雨來臨，南飛的大雁跋山涉水歸家的日子；在這爛漫的季節#W#{_INFOUSR%s}#H使用了一個#W%s#H，藉以讚美這冬麥揚穗農民揮汗荷鋤，辛勤耕耘的好光景。",
	msg2="#H勞動是神奇的，勞動是偉大的。勞動者用勤勞的雙手和智慧，編織了這個五彩班斕的世界，創造了人類的文明。#W#{_INFOUSR%s}#H在這個特別的日子裡，在#G%s#H使用了一個#W%s#H向全世界的勞動者致敬！"}
x331026_g_itemList[30509066] = {effect=20, time=60,
	msg1="#H七夕將至，#W#{_INFOUSR%s}#H昨夜夢見牛郎織女鵲橋相會，羨慕無比，於是使用了一個#W%s#H，以此來向所有單身的人們散播愛的訊號！",
	msg2="#H七夕，鵲橋，銀河，牛郎織女......#W#{_INFOUSR%s}#H在這個特別的日子裡，突然心有所感，向#G%s#H的天空擲去一把#W%s#H，登時花雨紛飛。"}
x331026_g_itemList[30509071] = {effect=21, time=60,
	msg1="#{AOYYH_8804_01}#W#{_INFOUSR%s}#H激情澎湃地#{AOYYH_8804_03}%s#{AOYYH_8804_04}",
	msg2="#{AOYYH_8804_01}#W#{_INFOUSR%s}#H激情澎湃地在#G%s#{AOYYH_8804_03}%s#{AOYYH_8804_04}"}
x331026_g_itemList[30509083] = {effect=22, time=60,
	msg1="#H时至挚友生辰，#W#{_INFOUSR%s}#H亦喜不自禁，于是使用了一个#W%s#H，以此来表达对朋友最真挚的生日祝福！",
	msg2="#W#{_INFOUSR%s}#H在至交生日之际，于#G%s#H燃放了一个#W%s#H，并祝福道：愿所有的快乐、所有的幸福、所有的温馨、所有的好运都围绕在你身边，生日快乐！"}
--**********************************
--事件交互入口
--**********************************
function x331026_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function x331026_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x331026_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x331026_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local curItem = x331026_g_itemList[itemTblIndex];
	if not curItem then
		x331026_NotifyFailTips(sceneId, selfId, "Ch遖 m� 鹫o c�, kh鬾g th� s� d鴑g.");
		return 0;
	end
	
	local curWeather = LuaFnGetSceneWeather(sceneId);
	if not curWeather or curWeather ~= -1 then
		x331026_NotifyFailTips(sceneId, selfId, "Trong kh鬾g kh� 穑c th� kh鬾g th� s� d鴑g v ph n鄖.");
		return 0;
	end

	return 1; --不需要任何条件，并且始终返回1。
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function x331026_OnDeplete( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local curItem = x331026_g_itemList[itemTblIndex];
	if not curItem then
		x331026_NotifyFailTips(sceneId, selfId, "Ch遖 m� 鹫o c�, kh鬾g th� s� d鴑g.");
		return 0;
	end
	
	local itemBagIndex = LuaFnGetBagIndexOfUsedItem(sceneId, selfId);
	local szTransferItem = GetBagItemTransfer(sceneId, selfId, itemBagIndex);
	local selfName = GetName(sceneId, selfId);
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		if szTransferItem and selfName then
			local sceneType = LuaFnGetSceneType(sceneId);
			local strMsg;
			if sceneType and sceneType == 0 then
				local sceneName = GetSceneName(sceneId);
				strMsg = format(curItem.msg2, selfName, sceneName, "#{_INFOMSG"..szTransferItem.."}");
			else
				strMsg = format(curItem.msg1, selfName, "#{_INFOMSG"..szTransferItem.."}");
			end
			BroadMsgByChatPipe(sceneId, selfId, strMsg, 4);
		end
		return 1;
	end
	return 0;
end

--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function x331026_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local curItem = x331026_g_itemList[itemTblIndex];
	if not curItem then
		x331026_NotifyFailTips(sceneId, selfId, "Ch遖 m� 鹫o c�, kh鬾g th� s� d鴑g.");
		return 0;
	end
	
	LuaFnSetSceneWeather(sceneId, curItem.effect, curItem.time * 1000 );
	return 1;
end

--**********************************
--引导心跳处理入口：
--引导技能会在每次心跳结束时调用这个接口。
--返回：1继续下次心跳；0：中断引导。
--注：这里是技能生效一次的入口
--**********************************
function x331026_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end

--**********************************
-- 醒目失败提示
--**********************************
function x331026_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
