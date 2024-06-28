--新脚本劫天牢

--脚本号
x900016_g_ScriptId = 900016

--进入物品ID

x900016_g_ItemId = 20309019

--**********************************
--事件列表
--**********************************
function x900016_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText(sceneId,"    #W此处为九黎前线标记信标，用于#G九黎部族前线指挥官#W在此发号施令。#G注：在此提交10个九黎饰物可吸引九黎头领前来") 
		AddNumText( sceneId, x900016_g_scriptId, "放置50个九黎饰物", 6, 10)
		AddNumText( sceneId, x900016_g_scriptId, "关于鏖战九黎", 11, 11)
		AddNumText( sceneId, x900016_g_ScriptId, "关于追寻女娲石", 11, 12 )
		AddNumText( sceneId, x900016_g_scriptId, "关于追寻女娲神石", 11, 13)
        EndEvent(sceneId)
        DispatchEventList(sceneId,selfId,targetId)

  end


--**********************************
--事件列表选中一项
--**********************************
function x900016_OnEventRequest( sceneId, selfId, targetId, eventId )
  
  if GetNumText()  == 10 then
	  --检查包内是否有位置
	if GetItemCount(sceneId, selfId, x900016_g_ItemId) < 50  then
	BeginEvent( sceneId )
		AddText(sceneId,"你身上必须有10个#cFF0000九黎饰物，#W才可以吸引#cff99cc九黎头领#W的前来")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
	LuaFnDelAvailableItem(sceneId,selfId,x900016_g_ItemId,50)	--删除物品
	--删除该物品
		
	local bRet = 0;
		
	local	bagpos = GetItemBagPos( sceneId, selfId, 20309019, 0 )
	
	if LuaFnLockCheck( sceneId, selfId, bagpos, 0 ) < 1 then
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, 20309019 );		
		if nItemNum <= 0 then
			x900016_MsgBox( sceneId, selfId, targetId, "此物品已被锁定！" )
			return 0;
		end
	end


--开始执行随机事件
		BeginEvent( sceneId )
		LuaFnCreateMonster(549, 15702, 70, 36, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#b#cff00f0九黎族长:“是谁，把我从沉睡中给吵醒了？竟敢打扰我睡觉，你们会为此付出代价的”", playername)		
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

  if GetNumText()  == 11 then
	BeginEvent( sceneId )
		      AddText( sceneId, "   蚩尤后裔#G九黎部落#W入侵#G玄海#W,他们希望收集散落在这片区域中，由#G五彩神石#W所滋养出的#Y玄兵石#W来打造新的#G神器#W,并寄希望于寻找蚩尤之斧来复活蚩尤,重新入侵九州大陆。而破灭他们企图的重任只能由来自中原的各位侠士来承担。" )
		      AddText( sceneId, "   每日#G10时至10时30分#W、#G16时至16时30分#W、#G20时至20时30分#W,在天荒古境的#G玄海#W中都会出现大量的#cff99cc九黎战士#W。击杀#cff99cc九黎战士后可获得#Y九黎饰物#W以及#Y玄兵石#W。积攒#Y玄兵石#W可前往#G洛阳城#cff99cc无崖子#W处将#G神器#W炼化为#G上古神器。" )
		      AddText( sceneId, "   同时,击杀#cff99cc九黎战士#W可获得#Y九黎饰物#W。使用积攒的#Y九黎饰物#W可以随时在#G玄海#W中的#cff99cc九黎祭坛#W以及#cff99cc九黎上古祭坛#W处召唤#cff99cc九黎头领#W与#cff99cc九黎族长#W,击杀#cff99cc九黎头领#W和#cff99cc九黎族长#W可获得大量的#Y玄兵石#W。" )
		      AddText( sceneId, "在#cff99cc九黎中祭坛#W处使用#G10个#Y九黎饰物#W即可将召唤#cff99cc九黎头领#W前来迎战,而在#cff99cc九黎大祭坛#W处则需要使用#G50个#Y九黎饰物#W将可召唤#cff99cc九黎族长#W前来迎战。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

		if GetNumText()  == 12 then
	BeginEvent( sceneId )
		 AddText( sceneId, "#Y关于追寻女娲石：" )
		 AddText( sceneId, "      " )
		 AddText( sceneId, "  #Y女娲石#W作为神器#G六星升七星#W的进阶主要材料,玩家只有到达#G玄海#W中,在#cff99cc乾元九黎头领#W、#cff99cc太坤九黎头领#W、#cff99cc荒日九黎头领#W、#cff99cc古月九黎头领#W、#cff99cc绝星九黎头领#W、#cff99cc苍云九黎头领#W死亡后，需要分别收集其败后掉落的九黎元气。" )
		 AddText( sceneId, "#W收集如上#G六种九黎元气#W既可返回#G洛阳广场#W,处换取#Y女娲石" )
		 EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

		if GetNumText()  == 13 then
	BeginEvent( sceneId )
		 AddText( sceneId, "#Y关于追寻女娲神石：" )
		 AddText( sceneId, "      " )
		 AddText( sceneId, "   #Y女娲神石#W作为神器#G七星升八星#W的进阶主要材料,玩家只有到达#G玄海#W中,在#cff99cc乾元九黎头领#W、#cff99cc太坤九黎头领#W、#cff99cc荒日九黎头领#W、古月九黎头领#W、绝星九黎头领#W、苍云九黎头领#W死亡后，需要分别收集其败后掉落的九黎元气。" )
		 AddText( sceneId, "#W收集如上#G六种九黎元气#W既可返回#G洛阳广场#W,处换取#Y女娲神石" )
		 AddText( sceneId, "#W使用#Y女娲神石#W进阶到八星的#G神器#W,可使用#Y聚灵石#W,在#G洛阳#W,进行神器#G通灵#W，#G通灵#W之后的神器,将进阶更高一个级别的#G神器#W,同时外观也将变成#G四代102级#W的神器外观，属性更加强大" )
		 EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
  
 end