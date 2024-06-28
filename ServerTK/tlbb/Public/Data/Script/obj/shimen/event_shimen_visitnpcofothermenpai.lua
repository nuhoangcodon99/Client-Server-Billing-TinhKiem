 --师门任务

--MisDescBegin
--脚本号
x229010_g_ScriptId = 229010

--任务号
x229010_g_MissionId = 1060

--任务归类
x229010_g_MissionKind = 2

--任务等级
x229010_g_MissionLevel = 10000

--是否是精英任务
x229010_g_IfMissionElite = 0

--下面几项是动态显示的内容，用于在任务列表中动态显示任务情况**********************
--任务是否已经完成
x229010_g_IsMissionOkFail = 0		--变量的第0位

--以上是动态**************************************************************

--任务变量第一位用来存储随机得到的脚本号

--任务文本描述
x229010_g_MissionName="Nhi甿 v� s� m鬾"
x229010_g_MissionInfo=""  --任务描述
x229010_g_MissionTarget = "Kh� l...... � b眓 m鬾 ta, ng呓i lu鬾 ph醫 d呓ng quang 鹫i, t t鈓 t l馽, c c� l鄊 vi甤. Ta s� giao cho ng呓i 1 nhi甿 v� kh醕., #G%s#Wv譨 疬a cho ta b� c鈛 疬a th�, n骾 h� c gi鷓 疝, ng呓i 餴 t靘 餴 #G%s#W c黙#Y%s#W, 鬾g (b�) ta s� s x猵 nhi甿 v� c黙 ng呓i."
x229010_g_ContinueInfo="L鄊 t痶 l"		--未完成任务的npc对话
x229010_g_MissionComplete="Vi甤 ta giao 疸 ho鄋 th鄋h ch遖?"						--完成任务npc说话的话
x229010_g_MissionRound=17

x229010_g_DoubleExp = 48
x229010_g_AccomplishCircumstance = 1

--格式字符串中的索引, 表示从4开始,后多少位视SetMissionByIndex(...)的多少而定
x229010_g_StrForePart=4

x229010_g_StrList = {
						"Huy玭 Tr靚h#{_INFOAIM61,61,9,Huy玭 Tr靚h}",
						"Th醦 L鈓 ph� b鋘",
						"B鋘 T呔ng#{_INFOAIM35,86,13,B鋘 T呔ng}",
						"M課h Thanh Thanh #{_INFOAIM96,73,15,M課h Thanh Thanh }",
						"Ph 刵#{_INFOAIM41,144,10,Ph 刵}",
						"Ph呓ng L誴#{_INFOAIM89,56,11,Ph呓ng L誴}",
						"C鷆 Ki猰#{_INFOAIM99,45,17,C鷆 Ki猰}",
						"L鈓 Linh T�#{_INFOAIM58,73,12,L鈓 Linh T瘆",
						"Ph鵱g A Tam#{_INFOAIM62,68,14,Ph鵱g A Tam}",
						"H皀g Ng鱟#{_INFOAIM128,78,16,H皀g Ng鱟}", 
						"Th醦 皙 ph� b鋘",
						"朽o Hoa Tr ph� b鋘",
						"Ph� b鋘 h r唼u ",
						"Quang Minh 鸬ng ph� b鋘",
						"Chi猼 Mai Phong ph� b鋘",
						"Linh T韓h Phong ph� b鋘",
						"C痗 懈a ph� b鋘",
						"Ng� Th 械ng ph� b鋘", 
						"Thi猽 L鈓",
						"Thi阯 Long",
						"Nga My",
						"C醝 Bang",
						"Minh Gi醥",
						"Thi阯 S絥",
						"V� 衋ng",
						"Ti陁 Dao",
						"Tinh T鷆",
						}
						
--MisDescEnd

--add by xindefeng
--x229010_GetStrIndexByStrValue(),x229010_GetStrValueByStrIndex()函数使用x229010_g_StrList来查找Index和NPC名字,而加上自动寻路信息后,无法找到正确Index,因此建立
--此表给x229010_GetStrIndexByStrValue(),x229010_GetStrValueByStrIndex()使用来找到正确Index和NPC名字
x229010_g_StrList2 = {
						"Huy玭 Tr靚h",
						"Th醦 L鈓 ph� b鋘",
						"B鋘 T呔ng", 
						"M課h Thanh Thanh ",
						"Ph 刵", 
						"Ph呓ng L誴", 
						"C鷆 Ki猰", 
						"L鈓 Linh T�",
						"Ph鵱g A Tam",
						"H皀g Ng鱟", 
						"Th醦 皙 ph� b鋘",
						"朽o Hoa Tr ph� b鋘",
						"Ph� b鋘 h r唼u ",
						"Quang Minh 鸬ng ph� b鋘",
						"Chi猼 Mai Phong ph� b鋘",
						"Linh T韓h Phong ph� b鋘",
						"C痗 懈a ph� b鋘",
						"Ng� Th 械ng ph� b鋘", 
						"Thi猽 L鈓",
						"Thi阯 Long",
						"Nga My",
						"C醝 Bang",
						"Minh Gi醥",
						"Thi阯 S絥",
						"V� 衋ng",
						"Ti陁 Dao",
						"Tinh T鷆",
						}
						
--/////////////////////////////////////////////////////////////////////////////////////////////////////
            
--子任务的类型代号定义
x229010_g_SubMissionTypeEnum = {XunWu=1, SongXin=2, DingDianYinDao=3, FuBenZhanDou=4, BuZhuo=5, ShouJi=6, KaiGuang=7, otherMenpaiFuben=8}

--副本列表
x229010_g_FuBen_List = {
								{menpainame="Thi猽 L鈓", menpai=MP_SHAOLIN  , NpcName="Huy玭 Tr靚h", scene=9, posx=61, posz=61, FubenName="Th醦 L鈓 ph� b鋘"},
								{menpainame="Thi阯 Long", menpai=MP_DALI     , NpcName="B鋘 T呔ng", scene=13, posx=35, posz=86, FubenName="Th醦 皙 ph� b鋘"},
								{menpainame="Nga My", menpai=MP_EMEI     , NpcName="M課h Thanh Thanh ", scene=15, posx=96, posz=73, FubenName="朽o Hoa Tr ph� b鋘"},
								{menpainame="C醝 Bang", menpai=MP_GAIBANG  , NpcName="Ph 刵", scene=10, posx=41, posz=144, FubenName="Ph� b鋘 h r唼u "},
								{menpainame="Minh Gi醥", menpai=MP_MINGJIAO , NpcName="Ph呓ng L誴", scene=11, posx=89, posz=56, FubenName="Quang Minh 鸬ng ph� b鋘"},
								{menpainame="Thi阯 S絥", menpai=MP_TIANSHAN , NpcName="C鷆 Ki猰", scene=17, posx=99, posz=45, FubenName="Chi猼 Mai Phong ph� b鋘"},
								{menpainame="V� 衋ng", menpai=MP_WUDANG   , NpcName="L鈓 Linh T�", scene=12, posx=58, posz=73, FubenName="Linh T韓h Phong ph� b鋘"},
								{menpainame="Ti陁 Dao", menpai=MP_XIAOYAO  , NpcName="Ph鵱g A Tam", scene=14, posx=62, posz=68, FubenName="C痗 懈a ph� b鋘"},
								{menpainame="Tinh T鷆", menpai=MP_XINGSU   , NpcName="H皀g Ng鱟", scene=16, posx=128, posz=78, FubenName="Ng� Th 械ng ph� b鋘"},
							}
	
--changed by xindefeng                								
function x229010_GetStrIndexByStrValue(stringV)
	for i, v in x229010_g_StrList2 do
		if v == stringV then
			return i-1
		end
	end
	local strText = format("C ph鋓 %s 疱ng k� StrList trong", stringV)
	--PrintStr(strText)
	return 0;
end

--changed by xindefeng
--被x229000_IsFubenMission(),x229000_SetFubenMissionSucc()调用
function x229010_GetStrValueByStrIndex(sceneId, index)
	if index+1 >= 1 and index+1 <= getn(x229010_g_StrList2) then
		return x229010_g_StrList2[index+1]	
	end
	return ""
end

function x229010_AddOtherMenpaiFubenMission(sceneId, selfId, missionId, targetId)
	local index	= 1
	local a = {}
		
	for i, v in x229010_g_FuBen_List do
		if v.menpai ~= GetMenPai(sceneId, selfId) then
			a[index] = i
			index = index + 1
		end	
	end
	
	index = a[random(getn(a))]
	
	local menpaiName = x229010_g_FuBen_List[index].menpainame
	local npcName =  x229010_g_FuBen_List[index].NpcName
	local fubenName =  x229010_g_FuBen_List[index].FubenName
	local nSceneId = x229010_g_FuBen_List[index].scene
	local posx = x229010_g_FuBen_List[index].posx
	local posz = x229010_g_FuBen_List[index].posz
	
	--增加接收任务的必要判断
	CallScriptFunction( 500501, "CheckAccept_Necessary", sceneId, selfId)
	
	--加入任务到玩家列表
	local bAdd = AddMission( sceneId,selfId, missionId, x229010_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	
	local nFormatIndex = GetMissionCacheData(sceneId, selfId, 0)
	local NpcNameIndex = x229010_GetStrIndexByStrValue(npcName)
	local MenpaiNameIndex = x229010_GetStrIndexByStrValue(menpaiName)
	
	--得到任务在20个任务中的序列号
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
		
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --设置任务是否完成（未完成）
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229010_g_SubMissionTypeEnum.otherMenpaiFuben)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229010_g_StrForePart, MenpaiNameIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229010_g_StrForePart+1, MenpaiNameIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229010_g_StrForePart+2, NpcNameIndex)
	
	Msg2Player(  sceneId, selfId,"#YNh nhi甿 v�#W: Nhi甿 v� s� m鬾", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, posx, posz, npcName)

	local strMissionTarget = format("Kh� l...... � b眓 m鬾 ta, ng呓i lu鬾 ph醫 d呓ng quang 鹫i, t t鈓 t l馽, c c� l鄊 vi甤. Ta s� giao cho ng呓i 1 nhi甿 v� kh醕. %s v譨 d鵱g b� c鈛 疬a th� cho ta n骾 h� c gi鷓 疝, ng呓i h銀 餴 t靘 %s %s, 鬾g ta s� s x猵 nhi甿 v� c黙 ng呓i",
			menpaiName, menpaiName, npcName)
			
	BeginEvent(sceneId)
		AddText(sceneId, strMissionTarget)
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)	
	
	--得到环数
	local round = GetMissionData(sceneId,selfId,MD_SHIMEN_HUAN)

	round = round + 1

	if	round >= 21 then
		SetMissionData(sceneId, selfId, MD_SHIMEN_HUAN, 1)
	else
		SetMissionData(sceneId, selfId, MD_SHIMEN_HUAN, round)
	end
	
end

--**********************************
--列举事件
--**********************************
function x229010_OnEnumerate( sceneId, selfId, targetId )
	return
end

--**********************************
--放弃
--**********************************
function x229010_OnAbandon( sceneId, selfId )
	local shimenMissionIdList = {1080, 1090, 1065, 1070, 1060, 1100, 1075, 1085, 1095}
	for i, v in shimenMissionIdList do
		if IsHaveMission(sceneId,selfId,v) > 0	 then
			--删除玩家任务列表中对应的任务
	  	DelMission( sceneId, selfId, v )
	  	SetMissionData(sceneId,selfId,MD_SHIMEN_HUAN,0)	--环数清0
 			--调用通用放弃接口
			------------------------------------------------------------------
		  CallScriptFunction( 500501, "Abandon_Necessary", sceneId, selfId )
			-------------------------------------------------------------------
			break
		end	
	end
end

