 --ʦ������

--MisDescBegin
--�ű���
x229007_g_ScriptId = 229007

--��������NPC����
x229007_g_Position_X=96.0455
x229007_g_Position_Z=92.6545
x229007_g_SceneID=16
x229007_g_AccomplishNPC_Name="V߽ng Nhan"
      
--ǰ������
--g_MissionIdPre =

--����Ŀ��npc
x229007_g_Name	= "V߽ng Nhan"

--�����
x229007_g_MissionId = 1095

--�������
x229007_g_MissionKind = 27

--����ȼ�
x229007_g_MissionLevel = 10000
--�Ƿ��Ǿ�Ӣ����
x229007_g_IfMissionElite = 0

--���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������**********************
--�����Ƿ��Ѿ����
x229007_g_IsMissionOkFail = 0		--�����ĵ�0λ

--�����Ƕ�̬**************************************************************

--���������һλ�����洢����õ��Ľű���

--�����ı�����
x229007_g_MissionName="Nhi�m v� s� m�n"
x229007_g_MissionInfo=""  --��������
x229007_g_MissionTarget = "%f"
x229007_g_ContinueInfo="L�m t�t l�m"		--δ��������npc�Ի�
x229007_g_MissionComplete="Vi�c ta giao �� ho�n th�nh ch�a?"					--�������npc˵���Ļ�
x229007_g_MissionRound=17

x229007_g_DoubleExp = 48
x229007_g_AccomplishCircumstance = 1

x229007_g_ShimenTypeIndex = 1
x229007_g_Parameter_Kill_AllRandom={{id=7,numa=3,numb=3,bytenuma=0,bytenumb=1}}
x229007_g_Parameter_Item_IDRandom={{id=6,num=5}}
x229007_g_NpcIdIndicator={{key=2,npcIdIndex=5},{key=9,npcIdIndex=7}}

--���������ַ�����ʽ��������
x229007_g_FormatList = {
								"L�u l�m kh�ng g�p %n r�i, nh� qu� �i. ��y %s l� ch�t l�ng th�nh c�a ta, xin ng߽i h�y ��a t�i gi�p ta. #R #e00f000Nh�c nh�: #e000000#r Ng߽i c� th� �n Tinh T�c H�i t�m #RThi�n Lang T� #W#{_INFOAIM99,150,16, Thi�n Lang T�}, h�y nh� �ng ta ��a ng߽i t�i c�c th�nh th� l�n.",
								"%i c�a ta sao kh�ng th�y ��u? N�u ng߽i c� th� gi�p ta t�m l�i, ta s� kh�ng b�c ��i ng߽i. #R #e00f000Nh�c nh�: #e000000#r Ng߽i c� th� �n Tinh T�c H�i t�m #RThi�n Lang T� #W#{_INFOAIM99,150,16, Thi�n Lang T�}, h�y nh� �ng ta ��a ng߽i t�i c�c th�nh th� l�n.",
								"%n l�m �i�u �c, ta ph�i �i d�y b�o, ��ng ti�c kh�ng c� th�i gian, ng߽i c� th� l�m thay ���c kh�ng? #R #e00f000Nh�c nh�: #e000000#r Ng߽i c� th� �n Tinh T�c H�i t�m #RThi�n Lang T� #W#{_INFOAIM99,150,16, Thi�n Lang T�}, h�y nh� �ng ta ��a ng߽i t�i c�c th�nh th� l�n.",
								"Xin ng߽i h�y � Tinh T�c H�i %s t�m th�y %s, h�y d�ng %s � cho n� �n. #R #e00f000Nh�c nh�: #e000000#r Khi ng߽i t�i g�n r߽ng �c v�t c�n cho �n, �n #gfff0f0Alt+A#g000000c� th� m� m�c v�t ph�m, �n v�o#gfff0f0\"nhi�m v�\"#g000000giao di�n c� th� m� ra m�c v�t ph�m nhi�m v�, nh�y ph�m ph�i#gfff0f0Ng� еc Tr�ng#g000000, l� c� th� ho�n t�t vi�c cho �n.",
								"Xin ng߽i h�y �i t�m %s, mu�i �y s� ��a ng߽i �i th� chi�n %s. #R #e00f000Nh�c nh�: #e000000#r H�ng Ng�c s� mu�i � Tinh T�c H�i #{_INFOAIM128,78,16, H�ng Ng�c}.",
								"Xin ng߽i h�y b�t cho ta m�t con %p v�.#e000000#r V�n H�m Nhi � th�nh L�c D߽ng #{_INFOAIM183,155,0, V�n H�m Nhi} c� th� ��a ng߽i t�i Huy�n V� ��o, nh�ng Huy�n V� ��o c� 1 con �߶ng m�n th�ng qua Th�nh Th� S�n. Ng߽i c� th� b�t tr�n th� m� ta c�n � Huy�n V� ��o ho�c � Th�nh Th� S�n.",
								"Xin ng߽i h�y ki�m tra b�n ph�a � Tinh T�c H�i, t�m cho ta 5 con %s. #R #e00f000Nh�c nh�: #e000000#r Ng߽i c� th� t�m th�y n�t v�ng trong b�n � nh� � g�c ph�i m�n h�nh.",
								"H�y ��a %s t�i 1 c�i %i, l�m xong, ta s� h�u th߷ng cho ng߽i! #R #e00f000Nh�c nh�: #e000000#r T�y V�c D��c L�u T� � Tinh T�c H�i #{_INFOAIM131,48,16, T�y V�c D��c L�u T�}. #R Khi�t �an D��c L�u T� � Tinh T�c H�i #{_INFOAIM136,48,16, Khi�t �an D��c L�u T�}. #R ��i L� D��c L�u T� � Tinh T�c H�i #{_INFOAIM142,48,16, ��i L� D��c L�u T�}.",
								"�i gi�t ch�t %s %s %n.",
								}

--��ʽ�ַ����е�����, ��ʾ��4��ʼ,�����λ��SetMissionByIndex(...)�Ķ��ٶ���
x229007_g_StrForePart=4
x229007_g_ShimenPet_Index = 1

x229007_g_StrList = {
						"Ng� �c tr�ng ",
						"r߽ng c�c �c ",
						"r߽ng r�t �c ",
						"r߽ng nh�n �c ",
						"r߽ng b� c�p �c ",
						"H�ng Ng�c",
						"Ng� Th�n еng ph� b�n",
						"еc ng� c�ng ",
						"еc thi�m th� ",
						"еc tri th� ",
						"T�y v�c D��c L�u T�",
						"Khi�t �an D��c L�u T�",
						"��i L� D��c L�u T�",
						"S�i Mi�u D� Sinh",
						"Nh�t Nguy�t Cung ",
						"ph߽ng tr��ng �i�n ",
						"�i�n Doanh Ch�u ",
						"�i�n B�ng Lai ",
						"0",
						"1",
						"2",
						"3",
						"4",
						"5",
						"6",
						"7",
						"8",
						"9",
						}
--MisDescEnd


--/////////////////////////////////////////////////////////////////////////////////////////////////////

--����������ʹ��Ŷ���
x229007_g_SubMissionTypeEnum = {XunWu=1, SongXin=2, DingDianYinDao=3, FuBenZhanDou=4, BuZhuo=5, ShouJi=6, KaiGuang=7, otherMenpaiFuben=8,  killMonster=9,}

--��������
x229007_g_DingDianYinDaoList = {
											 {menpai=MP_XINGSU   , itemId=40003034, itemName="Ng� �c tr�ng ", scene=16, AreaName="Nh�t Nguy�t Cung ", subAreaName="r߽ng c�c �c ", posx1=88, posz1=50, posx2=103, posz2=60},
											 {menpai=MP_XINGSU   , itemId=40003034, itemName="Ng� �c tr�ng ", scene=16, AreaName="ph߽ng tr��ng �i�n ", subAreaName="r߽ng r�t �c ", posx1=82, posz1=94, posx2=94, posz2=102},
											 {menpai=MP_XINGSU   , itemId=40003034, itemName="Ng� �c tr�ng ", scene=16, AreaName="�i�n Doanh Ch�u ", subAreaName="r߽ng nh�n �c ", posx1=98, posz1=94, posx2=110, posz2=102},
											 {menpai=MP_XINGSU   , itemId=40003034, itemName="Ng� �c tr�ng ", scene=16, AreaName="�i�n B�ng Lai ", subAreaName="r߽ng b� c�p �c ", posx1=119, posz1=69, posx2=132, posz2=79},
											}


--�����б�
x229007_g_FuBen_List = {
								{menpai=MP_XINGSU   , NpcName="H�ng Ng�c", scene=16, posx=128, posz=78, FubenName="Ng� Th�n еng ph� b�n"},
								}       

--�ռ�
x229007_g_ShouJiList = {
								{menpai=MP_XINGSU   , scene=16, itemId=40003035, itemName="еc ng� c�ng "},-- count=5},
								{menpai=MP_XINGSU   , scene=16, itemId=40003036, itemName="еc thi�m th� "},-- count=5},								
								{menpai=MP_XINGSU   , scene=16, itemId=40003037, itemName="еc tri th� "},-- count=5},								
							}	



--�������npc�б�
x229007_g_AbilityNpcList = {
                    {menpai=MP_XINGSU   ,npcList={{name="T�y v�c D��c L�u T�", scene=16, x=131, z=48},
                                                  {name="Khi�t �an D��c L�u T�", scene=16, x=136, z=48},
                                                  {name="��i L� D��c L�u T�", scene=16, x=142, z=48}}
										},
									}

										
--�����б�
x229007_g_PetList = {
						{petDataId=3000, petName="S�i Mi�u D� Sinh", takeLevel=10},
					}

--ɱ�����
x229007_g_MenpaiYiWuList = {
								{menpainame="Thi�u L�m", menpai=MP_SHAOLIN  , itemName="е �i�p c�a Thi�u L�m � t�", scene=9,  itemId=40004306},
								{menpainame="Thi�n Long", menpai=MP_DALI     , itemName="�n ch߽ng c�a Thi�n Long � t�", scene=13, itemId=40004312},
								{menpainame="Nga My", menpai=MP_EMEI     , itemName="Ki�m tu� c�a Nga My � t�", scene=15, itemId=40004310},
								{menpainame="C�i Bang", menpai=MP_GAIBANG  , itemName="T�i v�i c�a C�i Bang � t�", scene=10, itemId=40004307},
								{menpainame="Minh Gi�o", menpai=MP_MINGJIAO , itemName="H�a l�nh c�a Minh Gi�o � t�", scene=11, itemId=40004308},
								{menpainame="Thi�n S�n", menpai=MP_TIANSHAN , itemName="B�ng b�i c�a Thi�n S�n � t�", scene=17, itemId=40004314},
								{menpainame="V� �ang", menpai=MP_WUDANG   , itemName="Ph�t tr�n c�a V� �ang � t�", scene=12, itemId=40004309},
								{menpainame="Ti�u Dao", menpai=MP_XIAOYAO  , itemName="Ti�u tr� c�a Ti�u Dao � t�", scene=14, itemId=40004313},
								{menpainame="Tinh T�c", menpai=MP_XINGSU   , itemName="C� m�nh c�a Tinh T�c � t�", scene=16, itemId=40004311},
							}
	
--�����������ļ������ñ�
x229007_g_RateOfDropYiWuTable = {
							{playerLevel=20, dropRate=30},
							{playerLevel=30, dropRate=30},
							{playerLevel=40, dropRate=25},
							{playerLevel=50, dropRate=25},
							{playerLevel=60, dropRate=25},
							{playerLevel=70, dropRate=20},
							{playerLevel=80, dropRate=20},
							{playerLevel=90, dropRate=20},
							{playerLevel=100, dropRate=20},
							{playerLevel=110, dropRate=20},
							{playerLevel=120, dropRate=20},
							{playerLevel=130, dropRate=20},
							{playerLevel=140, dropRate=20},
							{playerLevel=150, dropRate=20},
						}
 
x229007_g_DemandKillcountTable = 	{
							{levelBegin=10, levelEnd=19, killcount=20},
							{levelBegin=20, levelEnd=39, killcount=25},
							{levelBegin=40, levelEnd=59, killcount=30},
							{levelBegin=60, levelEnd=79, killcount=35},
							{levelBegin=80, levelEnd=99, killcount=40},
							{levelBegin=100, levelEnd=109, killcount=45},
							{levelBegin=110, levelEnd=119, killcount=50},
							{levelBegin=120, levelEnd=150, killcount=55},
}						
 
--//////////////////////////////////////////////////////
--ɱ�����
function x229007_GetMenpaiYiWuInfo(sceneId, selfId)
	for i, v in x229007_g_MenpaiYiWuList do
		if v.menpai == GetMenPai(sceneId, selfId) then
			return v.menpainame, v.itemName, v.itemId
		end
	end
end

function x229007_GetRateOfDropYiWu(sceneId, selfId)
	local playerLevel = GetLevel(sceneId, selfId)
	for i, v in x229007_g_RateOfDropYiWuTable do
		if v.playerLevel >= playerLevel and playerLevel < v.playerLevel then
			return v.dropRate
		end
	end
end

function x229007_GetDemandKillCount(sceneId, selfId)
	local playerLevel = GetLevel(sceneId, selfId)
	for i, v in x229007_g_DemandKillcountTable do
		if playerLevel >= v.levelBegin and playerLevel <= v.levelEnd then
			return v.killcount
		end
	end
end

function x229007_KillMonster_Accept(sceneId, selfId)--ɱ��
	--PrintStr("x229007_KillMonster_Accept")
	
	local nMonsterId, strMonsterName, strMonsterScene, nScene, nPosX, nPosZ, strDesc, nSex, level
	local playerLevel = GetLevel(sceneId, selfId)
	--PrintStr("1")
	for i=1, 100 do
		nMonsterId, strMonsterName, strMonsterScene, nScene, nPosX, nPosZ, strDesc, nSex, level = GetOneMissionNpc(43)
		if abs(level - playerLevel) < 3  then
			--PrintStr("2")
			break
		end
		if i == 100 then
			--PrintStr("adfdasfdas")
			--ͳͳ����ȥ:((
			x229007_SongXin_Accept(sceneId, selfId)
			return
		end
	end	
	
	--PrintStr("before AddMission...")
	--������������б�
	local bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 1, 0, 1 )
	if bAdd < 1 then
		--PrintStr("AddMission fail...")
		return
	end	
	local killcount = x229007_GetDemandKillCount(sceneId, selfId)
	local countpart1 = x229007_GetStrIndexByStrValue(tostring(floor(killcount / 10)) )
	local countpart2 = x229007_GetStrIndexByStrValue(tostring(floor(mod(killcount, 10))) )
	
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.killMonster)
	
	SetMissionParamByIndexEx(sceneId, selfId, misIndex, 3, 0, killcount) --Ҫ��ɱ����monster������ ���ڻ�û�и�ֵ
	SetMissionParamByIndexEx(sceneId, selfId, misIndex, 3, 1, 0) --�Ѿ�ɱ����monster����
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 8)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, countpart1)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+2, countpart2)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+3, nMonsterId)
		
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskThePos", sceneId, selfId, nScene, nPosX, nPosZ, strMonsterName)	
	
	--PrintStr(strMonsterScene)
	--PrintStr(strMonsterName)
	local strMissionTarget = format("G�n ��y � khu v�c %s %s th߶ng qu�y nhi�u c� d�n xung quanh, ng߽i h�y nh�n l�nh �i tr�ng ph�t ch�ng", 
						strMonsterScene, strMonsterName)
	--PrintStr(strMissionTarget)
	AddText(sceneId, strMissionTarget)

end

--//////////////////////////////////////////////////////

function x229007_GetStrIndexByStrValue(stringV)
	for i, v in x229007_g_StrList do
		if v == stringV then
			return i-1
		end
	end
	local strText = format("C�n ph�i %s ��ng k� StrList trong", stringV)
	--PrintStr(strText)
	return 0;
end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����item����ϸ��Ϣ
function x229007_GetItemDetailInfo(sceneId,itemId)
  local itemId1 = -1
	local itemName = ""
	local itemDesc = ""
	itemId1, itemName, itemDesc = GetItemInfoByItemId(itemId)
	if itemId1 == -1 then
		local strlog = "event_shimen_xingxiu::x229007_GetItemDetailInfo..itemId="
		 .. itemId1 .. ",itemName=" .. itemName .. ",itemDesc=" .. itemDesc
		MissionLog(sceneId, strlog)
		return
	end
	if itemId1 == -1 then
		local strText = format("%s V�t ph�m � 'MissionItem_HashTable.txt' kh�ng t�m th�y!!", itemName)
		PrintStr(strText)
	end
	return itemId1, itemName, itemDesc
end	
--/////////////////////////////////////////////////////////////////////////////////////////////////////
--������ҵȼ��õ���ӦMissionItem_HashTable.txt�еĵ�Ԫ����
function x229007_GetMissionItemIndex(sceneId, selfId)
	local nPlayerLevel  = GetLevel(sceneId, selfId)
	if nPlayerLevel >= 10 and nPlayerLevel < 20 then
		return 0;
	elseif nPlayerLevel >= 20 and nPlayerLevel < 30 then
		return 1;
	elseif nPlayerLevel >= 30 and nPlayerLevel < 40 then
		return 2;
	elseif nPlayerLevel >= 40 and nPlayerLevel < 60 then
		return 3;
	elseif nPlayerLevel >= 60 and nPlayerLevel < 80 then
		return 4;
	elseif nPlayerLevel >= 80 and nPlayerLevel < 100 then
		return 5;
	elseif nPlayerLevel >= 100 and nPlayerLevel < 120 then
		return 167;
	elseif nPlayerLevel >= 100 then
		return 168;
	end
end

--������ҵȼ��õ���Ӧ��ʦ������Ľ׶�
function x229007_GetShiMenPhaseByPlayerLevel(sceneId, selfId)
	local nPlayerLevel  = GetLevel(sceneId, selfId)
	if nPlayerLevel >= 10 and nPlayerLevel < 20 then
		return 0
	elseif nPlayerLevel >= 20 and nPlayerLevel < 40 then
		return 1
	elseif nPlayerLevel >= 40 and nPlayerLevel < 60 then
		return 2
	elseif nPlayerLevel >= 60 and nPlayerLevel < 80 then 
		return 3
	elseif nPlayerLevel >= 80 and nPlayerLevel < 100 then 
		return 4
	elseif nPlayerLevel >= 100 and nPlayerLevel < 120 then 
		return 243
	elseif nPlayerLevel >= 120 then
		return 244
	end
end
--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_RandomSubMission(sceneId, selfId)
 
	--Ѱ�1/4�������ţ�1/16�����ռ���1/16�������⣨1/16��������������1/16����ս��������1/4������׽��1/4��
	local nRet = 1 + LuaFnGetHumanShimenRandom(sceneId, selfId);
	if nRet then
		if nRet <= 4 then
			x229007_XunWu_Accept(sceneId, selfId)
		elseif nRet <= 5 then
			x229007_SongXin_Accept(sceneId, selfId)
		elseif nRet <= 6 then
			x229007_ShouJi_Accept(sceneId, selfId)
		elseif nRet <= 7 then
			x229007_SongXin_Accept(sceneId, selfId)
		elseif nRet <= 8 then
			x229007_DingDianYinDao_Accept(sceneId, selfId)
		elseif nRet <= 12 then
			x229007_FuBenZhanDou_Accept(sceneId, selfId)
		elseif nRet <= 16 then
			x229007_BuZhuo_Accept(sceneId, selfId)
		else
			return -1
		end
	else
		return -1;
	end
end
--**********************************
--������ҵȼ��ó�����ĵȼ��׶�(1~5)
--**********************************
function x229007_DoSomethingByPlayerLevel(sceneId, selfId)
	CallScriptFunction(229000, "DoSomethingByPlayerLevel", sceneId, selfId, x229007_g_ScriptId)
end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_XunWu_Accept(sceneId, selfId)--Ѱ��
	----PrintStr("XunWu_Accept..")
	--������������б�
	local bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 1 )
	if bAdd < 1 then
		return
	end	
	
	
	local nitemId, strItemName, strItemDesc = GetOneMissionItem(x229007_GetMissionItemIndex(sceneId, selfId))
	Msg2Player(sceneId, selfId, "#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	--print(nitemId, strItemName, strItemDesc)
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.XunWu)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 1)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, nitemId)
	
	local strMissionTarget = format("%s c�a ta sao kh�ng th�y ��u? N�u ng߽i c� th� gi�p ta t�m l�i, ta s� kh�ng b�c ��i ng߽i", strItemName)
	AddText(sceneId, strMissionTarget)
	
	--���������ϵĵ����Ƿ��Ѿ������������
	local bHaveItem = HaveItem(sceneId, selfId, nitemId)
	if bHaveItem == 1 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--��������ɱ�־��Ϊ1
		ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 2)
	end	
	
end	

--/////////////////////////////////////////////////////////////////////////////////////////////////////

function x229007_SongXin_Accept(sceneId, selfId)--����

  local roll = random(3)
	--���ѡ�������ɵ��ز���ţ�ÿ������3���ز�
	x229007_g_Xin_ItemId = x229007_g_ShouJiList[ roll ].itemId
	
	--���������			
	BeginAddItem(sceneId)
		AddItem(sceneId, x229007_g_Xin_ItemId, 1)
	local bAdd = EndAddItem(sceneId, selfId)
	if bAdd < 1 then
		return
	end
		

	--������������б�
	bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	AddItemListToHuman(sceneId, selfId)	
	--Ѱ��, ��������������Ŀ��NPC���¼�Flag
	SetMissionEvent(sceneId, selfId, x229007_g_MissionId, 4)
	

	local nPhase = x229007_GetShiMenPhaseByPlayerLevel(sceneId, selfId)
	local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = GetOneMissionNpc(nPhase-1)
	--print(nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc)
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)
		
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.SongXin)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 0)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, nNpcId)

	local ListIndex = x229007_GetStrIndexByStrValue( x229007_g_ShouJiList[ roll ].itemName )
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+2, ListIndex )

  SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+3, x229007_g_Xin_ItemId )

	local strMissionTarget = format("L�u l�m kh�ng g�p %s %s, ng߽i h�y gi�p ta �em %s giao cho ng߶i �y", strNpcScene, strNpcName, x229007_g_ShouJiList[ roll ].itemName )
	AddText(sceneId, strMissionTarget)
	
end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_DingDianYinDao_Accept(sceneId, selfId)--��������
	--�����ҵ�����
	local playerMenpai = GetMenPai(sceneId, selfId)
	local a = {}
	local index = 1
	--��һ����ʱ�����洢��Ӧ������x229007_g_DingDianYinDaoList�е�ȫ������
	for i, v in x229007_g_DingDianYinDaoList do
		if v.menpai == playerMenpai then
			a[index] = i
			index = index + 1
		end
	end
	
	local ct = getn(a)
	if ct <= 0 then
		return 0
	end
		
	local ret = random(ct)
	BeginAddItem(sceneId)
		AddItem(sceneId, x229007_g_DingDianYinDaoList[a[ret]].itemId, 1)
	local bAdd = EndAddItem(sceneId,selfId)
	if bAdd < 1 then
		return
	end	
	
	--������������б�
	bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	AddItemListToHuman(sceneId, selfId)	
	Msg2Player(  sceneId, selfId,"#YNg߽i �� ��t ���c 1 chi�c#W" .. x229007_g_DingDianYinDaoList[a[ret]].itemName, MSG2PLAYER_PARA )
	
	local strIndex_Area = x229007_GetStrIndexByStrValue(x229007_g_DingDianYinDaoList[a[ret]].AreaName)
	local strIndex_Item = x229007_GetStrIndexByStrValue(x229007_g_DingDianYinDaoList[a[ret]].itemName)
	local	strIndex_subArea = x229007_GetStrIndexByStrValue(x229007_g_DingDianYinDaoList[a[ret]].subAreaName)
	
	local x1 = x229007_g_DingDianYinDaoList[a[ret]].posx1
	local x2 = x229007_g_DingDianYinDaoList[a[ret]].posx2
	local z1 = x229007_g_DingDianYinDaoList[a[ret]].posz1
	local z2 = x229007_g_DingDianYinDaoList[a[ret]].posz2
	local scene = x229007_g_DingDianYinDaoList[a[ret]].scene
	local tip = x229007_g_DingDianYinDaoList[a[ret]].AreaName .. x229007_g_DingDianYinDaoList[a[ret]].subAreaName
	local x = x1 + (x2-x1)/2
	local z = z1 + (z2-z1)/2

	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
		
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.DingDianYinDao)
	SetMissionByIndex(sceneId, selfId, misIndex, 2, a[ret]) --���ö��������б��е�����
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 3)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, strIndex_Area)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+2, strIndex_subArea) 
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+3, strIndex_Item)
	
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskThePos", sceneId, selfId, scene, x, z, tip)

	local strMissionTarget = format("Xin ng߽i h�y � Tinh T�c H�i %s t�m th�y %s, h�y d�ng %s � cho n� �n", 
		x229007_g_DingDianYinDaoList[a[ret]].AreaName, 
		x229007_g_DingDianYinDaoList[a[ret]].subAreaName, 
		x229007_g_DingDianYinDaoList[a[ret]].itemName)        
		
	AddText(sceneId, strMissionTarget)
	
end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_FuBenZhanDou_Accept(sceneId, selfId)--ս������
	local playerMenpai = GetMenPai(sceneId, selfId)
	if playerMenpai == MP_WUMENPAI then
		return 0
	end	

	local npcName, fubenName, nSceneId, posx, posz
	for i, v in x229007_g_FuBen_List do
		if v.menpai == GetMenPai(sceneId, selfId) then
			npcName =  v.NpcName
			fubenName =  v.FubenName
			nSceneId = v.scene
			posx = v.posx
			posz = v.posz
			break
		end
	end

	--������������б�
	local bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	
	
	local nFormatIndex = GetMissionCacheData(sceneId, selfId, 0)
	local i = GetMissionCacheData(sceneId, selfId, 2)
	local NpcNameIndex = x229007_GetStrIndexByStrValue(npcName)
	local FubenNameIndex = x229007_GetStrIndexByStrValue(fubenName)
	
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
		
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.FuBenZhanDou)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 4)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, NpcNameIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+2, FubenNameIndex)
	
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, posx, posz, npcName)

	local strMissionTarget = format("Xin ng߽i h�y �i t�m %s, ng߶i s� ��a ng߽i �i th� chi�n %s", npcName, fubenName)
	AddText(sceneId, strMissionTarget)
end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_BuZhuo_Accept(sceneId, selfId)--��׽
	local playerLevel = GetLevel(sceneId, selfId)
	local petId, petName, petDesc, takeLevel
	local petHashIndex = CallScriptFunction(229000, "GetMissionPetIndex", sceneId, selfId)
	for i = 1, 100 do
		petId, petName, petDesc = GetOneMissionPet(petHashIndex)
		takeLevel = GetPetTakeLevel(petId)
		if playerLevel > takeLevel  then
			break
		end
		if i == 100 then
			--ͳͳ����ȥ:((
			x229007_SongXin_Accept(sceneId, selfId)
		end
	end	
	--������������б�
	local bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	
	
	SetMissionEvent(sceneId, selfId, x229007_g_MissionId, 3)
	
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.BuZhuo)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 5)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, petId)
		
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	
	local strMissionTarget = format("Xin ng߽i h�y b�t cho ta m�t con %s v�", petName)
	AddText(sceneId, strMissionTarget)
	
	--���������ϵĵ����Ƿ��Ѿ������������
	for i=0, 6 do
		local petDataId = LuaFnGetPet_DataID(sceneId,selfId,i)
		if petDataId == petId then
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--��������ɱ�־��Ϊ1

			ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 3)
			break
		end	
	end	

end
--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_ShouJi_Accept(sceneId, selfId)--�ռ�
	--PrintStr("ShouJi_Accept...")
	local playerMenpai = GetMenPai(sceneId, selfId)
	if playerMenpai == MP_WUMENPAI then
		return 0
	end	
	--PrintStr("playerMenpai="..playerMenpai)
	local a = {}
	local index = 1
	for i, v in x229007_g_ShouJiList do
		if v.menpai == playerMenpai then
			--PrintStr("find...")
			a[index] = i
			index = index + 1
		end	
	end
	local ct = getn(a)
	--PrintStr("ct="..ct)
	if ct <= 0 then
		return 0
	end
	
	local ret = random(ct)
	--������������б�
	local bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 1 )
	if bAdd < 1 then
		return
	end	

	
	local itemNameIndex = x229007_GetStrIndexByStrValue(x229007_g_ShouJiList[a[ret]].itemName)
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.ShouJi)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 6)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, itemNameIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+2, x229007_g_ShouJiList[a[ret]].itemId)
		
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	
	local strMissionTarget = format("Xin ng߽i h�y gi�p ta ki�m 5 %s v�", x229007_g_ShouJiList[a[ret]].itemName)
	AddText(sceneId, strMissionTarget)
end
--/////////////////////////////////////////////////////////////////////////////////////////////////////
function x229007_Ability_Accept(sceneId, selfId)--����
	--PrintStr("Ability_Accept...")
	--local nPhase = x229007_GetShiMenPhaseByPlayerLevel(sceneId, selfId)
	--local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = GetOneMissionNpc(nPhase-1)
	local strNpcName, scene, x, z
	for i, v in x229007_g_AbilityNpcList do
		if v.menpai == GetMenPai(sceneId, selfId) then
			local ct = getn(v.npcList)
			local index =	random(ct)
			strNpcName = v.npcList[index].name
			scene = v.npcList[index].scene
			x = v.npcList[index].x
			z = v.npcList[index].z
		end
	end
	
	local strNpcIndex = x229007_GetStrIndexByStrValue(strNpcName)
	local itemId, itemName = GetMenpaiItem(sceneId, selfId)


	----PrintStr("itemId="..itemId.."  itemName="..itemName)
	--������������б�
	local bAdd = AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	
	SetMissionEvent(sceneId, selfId, x229007_g_MissionId, 2)
	SetMissionEvent(sceneId, selfId, x229007_g_MissionId, 4)
	
	--�õ�������20�������е����к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.KaiGuang)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 7)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, strNpcIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+2, itemId)
		
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nhi�m v� s� m�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, scene, x, z, strNpcName)
	
	local strMissionTarget = format("H�y ��a %scho%s, ta s� h�u ��i ng߽i!", strNpcName, itemName)
	AddText(sceneId, strMissionTarget)

end
--/////////////////////////////////////////////////////////////////////////////////////////////////////
--**********************************
--������ں���
--**********************************
function x229007_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	----PrintStr("OnDefaultEvent...")
	--���������������Ϣ
	if IsHaveMission(sceneId,selfId,x229007_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x229007_g_Name then
			--���������������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x229007_g_MissionName)
				AddText(sceneId, "Vi�c ta giao �� ho�n th�nh ch�a?")
			EndEvent( )
			bDone = x229007_CheckSubmit( sceneId, selfId )
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x229007_g_ScriptId, x229007_g_MissionId, bDone)
		else
			local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
			
			local demandItemId =0
			local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
			if missionType == x229007_g_SubMissionTypeEnum.SongXin then
			    demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+3)
			else
			    demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
			end	
			
			local _, strDemandItemName, _ = x229007_GetItemDetailInfo(sceneId,demandItemId)
			
			local bHaveItem = HaveItem(sceneId, selfId, demandItemId)
			if bHaveItem == 1 then
				if LuaFnGetAvailableItemCount(sceneId, selfId, demandItemId) >= 1 then
				DelItem(sceneId, selfId, demandItemId, 1)
				BeginEvent(sceneId)
					AddText(sceneId, "Xin c�c h� quay v� n�i v�i S� ph� c�a c�c h�, t�i h� r�t nh� s� ph� c�a c�c h�, r�t c�m �n s� ph� c�a c�c h� t�ng m�n qu� n�y cho t�i h�, ��y l� th� m� t�i h� �ang mu�n c� ���c.")
				EndEvent()
				DispatchEventList(sceneId, selfId, targetId)	
				--���������Ѿ����
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
				ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 4)
				return 1;
			else
				BeginEvent(sceneId)
						AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
					EndEvent( )
					DispatchMissionTips(sceneId,selfId)	
					return	
				end					
			else
				BeginEvent(sceneId)
					AddText(sceneId, "�� mang t�i th� ta c�n ch�a?")
				EndEvent()
				DispatchEventList(sceneId, selfId, targetId)	
				return 1;					
			end
		end
	elseif x229007_CheckAccept(sceneId,selfId) > 0 then
		BeginEvent(sceneId)
		
			AddText(sceneId,x229007_g_MissionName)
			AddText(sceneId,x229007_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			
			x229007_DoSomethingByPlayerLevel(sceneId, selfId)
			--��֤��һ�νӵ����������ǹ̶������
			--ResetMissionCacheData(sceneId, selfId)
			--SetMissionCacheData(sceneId, selfId, 0, 0) --formet�ַ�������
			--SetMissionCacheData(sceneId, selfId, 1, x229007_g_SubMissionTypeEnum.SongXin)
			--SetMissionCacheData(sceneId, selfId, 2, 100001) --����human���ϵ�0λ��������
			--SetMissionCacheData(sceneId, selfId, 7, 1) --�Ƿ��ǵ�һ��
			
			--strMissionTarget = format("�þ�û�м�%s�ˣ�������ʺ�һ����ȥ", "frankwu")
			--AddText(sceneId, strMissionTarget)

			--������������б�
			--AddMission( sceneId,selfId, x229007_g_MissionId, x229007_g_ScriptId, 0, 0, 0 )
			--Ѱ��, ��������������Ŀ��NPC���¼�Flag
			--SetMissionEvent(sceneId, selfId, x229007_g_MissionId, 4)

			--local _, strNpcName, strNpcScene, PosX, PosZ, _ = GetNpcInfoByNpcId(sceneId,100001)
			--Msg2Player(  sceneId, selfId,"#Y��������ʦ������", MSG2PLAYER_PARA )
			--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, PosX, PosZ, strNpcName)
				
			--�õ�������20�������е����к�
			--local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
			
			--SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --���������Ƿ���ɣ�δ��ɣ�
			--SetMissionByIndex(sceneId, selfId, misIndex, 1, x229007_g_SubMissionTypeEnum.SongXin)
			
			--SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart, 0)--formet�ַ�������
			--SetMissionByIndex(sceneId, selfId, misIndex, x229007_g_StrForePart+1, 100001)
		
			
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x229007_OnEnumerate( sceneId, selfId, targetId )
	----PrintStr("807002...OnEnumerate")
--��������ɹ��������
	if IsMissionHaveDone(sceneId,selfId,x229007_g_MissionId) > 0 then
  	return
--���������������
	elseif IsHaveMission(sceneId,selfId,x229007_g_MissionId) > 0 then
		local strNpcName = x229007_g_Name -- temp code
		if GetName(sceneId,targetId) == strNpcName then
			AddNumText(sceneId, x229007_g_ScriptId,x229007_g_MissionName,4,-1);
		end
--���������������
  elseif x229007_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) == x229007_g_Name then
			AddNumText(sceneId,x229007_g_ScriptId,x229007_g_MissionName,3,-1);
		end
  end
end
--**********************************
--����
--**********************************
function x229007_OnAccept( sceneId, selfId )
	--PrintStr("OnAccept...")
	--local nMissionType = GetMissionCacheData(sceneId, selfId, 1)
	--if nMissionType == x229007_g_SubMissionTypeEnum.XunWu then
	--	x229007_XunWu_Accept(sceneId, selfId)
	--elseif nMissionType == x229007_g_SubMissionTypeEnum.SongXin then
	--	x229007_SongXin_Accept(sceneId, selfId)
	--elseif nMissionType == x229007_g_SubMissionTypeEnum.DingDianYinDao then
	--	x229007_DingDianYinDao_Accept(sceneId, selfId)
	--elseif nMissionType == x229007_g_SubMissionTypeEnum.FuBenZhanDou then
	--	x229007_FuBenZhanDou_Accept(sceneId, selfId)
	--elseif nMissionType == x229007_g_SubMissionTypeEnum.BuZhuo then
	--	x229007_BuZhuo_Accept(sceneId, selfId)
	--end
end

--**********************************
--����������
--**********************************
function x229007_CheckAccept( sceneId, selfId )
	local nLevel = GetLevel(sceneId, selfId)
	--��ҵȼ�>=10��
	if nLevel < 10 then
		return 0
	else
		local playerMenpai = GetMenPai(sceneId, selfId)
		if playerMenpai ~= MP_XINGSU then
			return 0
		end	
	end
	return 1;
end

--**********************************
--����
--**********************************
function x229007_OnAbandon( sceneId, selfId )
	----PrintStr("OnAbandon...")
	if IsHaveMission(sceneId, selfId, x229007_g_MissionId) > 0 then	
		local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)		--�õ�������20�������е����к�
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		
		if missionType == x229007_g_SubMissionTypeEnum.SongXin then
			local missionItem = GetMissionParam(sceneId, selfId, misIndex,x229007_g_StrForePart+3)
			if HaveItem(sceneId, selfId, missionItem) == 1 then
			if LuaFnGetAvailableItemCount(sceneId, selfId, missionItem) >= 1 then
			DelItem(sceneId, selfId, missionItem, 1)		
			else
				BeginEvent(sceneId)
					AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
				EndEvent( )
				DispatchMissionTips(sceneId,selfId)	
				return	
			end				
			end	
		elseif missionType == x229007_g_SubMissionTypeEnum.DingDianYinDao	then
			local index = GetMissionParam(sceneId, selfId, misIndex,2)
			if HaveItem(sceneId, selfId, x229007_g_DingDianYinDaoList[index].itemId) == 1 then
			if LuaFnGetAvailableItemCount(sceneId, selfId, x229007_g_DingDianYinDaoList[index].itemId) >= 1 then
			DelItem(sceneId, selfId,x229007_g_DingDianYinDaoList[index].itemId,1)
			else
				BeginEvent(sceneId)
					AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
				EndEvent( )
				DispatchMissionTips(sceneId,selfId)	
				return	
			end				
			end
		elseif missionType == x229007_g_SubMissionTypeEnum.ShouJi then
			local itemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
			if HaveItem(sceneId, selfId, itemId) == 1 then
			if LuaFnGetAvailableItemCount(sceneId, selfId, itemId) >= 5 then
			DelItem(sceneId, selfId,itemId,5)
			else	
				BeginEvent(sceneId)
					AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
				EndEvent( )
				DispatchMissionTips(sceneId,selfId)	
				return	
			end	
		end
		end
		--ɾ����������б��ж�Ӧ������
	  DelMission( sceneId, selfId, x229007_g_MissionId )
	  SetMissionData(sceneId,selfId,MD_SHIMEN_HUAN,0)	--������0
	end	
 	--����ͨ�÷����ӿ�
	------------------------------------------------------------------
	 CallScriptFunction( 500501, "Abandon_Necessary", sceneId, selfId )
	-------------------------------------------------------------------
 
end

--**********************************
--����
--**********************************
function x229007_OnContinue( sceneId, selfId, targetId )
	----PrintStr("OnContinue...")
	if x229007_CheckAccept(sceneId,selfId) > 0 then
		BeginEvent(sceneId)
		
			AddText(sceneId,x229007_g_MissionName)
			AddText(sceneId,x229007_g_MissionComplete)
			
		  --x229007_DoSomethingByPlayerLevel(sceneId, selfId)
		  
		EndEvent( )
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x229007_g_ScriptId, x229007_g_MissionId)
	end	
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x229007_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x229007_g_MissionId ) <= 0 then
		return 0
	end

	--�ڴ��ж��ύ�����Ƿ���ϣ���������Ӧ����
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	
	if missionType == x229007_g_SubMissionTypeEnum.XunWu then
		local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
		if GetItemCount(sceneId,selfId,demandItemId) <= 0 then --û����Ҫ����Ʒ
			return 0
		end
		if IsEquipItem(demandItemId) == 1 and IsWhiteEquip(demandItemId) ~= 1 then
			return 2
		else
			return 1
		end		
	elseif missionType == x229007_g_SubMissionTypeEnum.ShouJi then
	 	local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
	 	if GetItemCount(sceneId,selfId,demandItemId) < 5 then --û����Ҫ����Ʒ
	 		return 0
	 	else
	 		return 1		
	 	end
	elseif missionType == x229007_g_SubMissionTypeEnum.BuZhuo then
		return 2
	elseif GetMissionParam(sceneId, selfId, misIndex, 0) > 0 then	--�쿴�����Ƿ����
		return 1
	end

	return 0
end

function x229007_OnLockedTarget(sceneId, selfId, objId )
	----PrintStr("OnLockedTarget...")
	if GetName(sceneId, objId) == x229007_g_Name  then
		return 0
	end
	
	-- �ж��ǲ���������Npc
	if IsHaveMission(sceneId, selfId, x229007_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)		--�õ�������20�������е����к�
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		
		local nNpcId, strNpcName, strNpcScene, PosX, PosZ, desc
		if missionType == x229007_g_SubMissionTypeEnum.KaiGuang then
			nNpcIndex = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
			strNpcName = x229007_g_StrList[nNpcIndex+1]
		else
			nNpcId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
			nNpcId, strNpcName, strNpcScene, PosX, PosZ, desc = GetNpcInfoByNpcId(sceneId,nNpcId)
		end

		if GetName(sceneId, objId) == strNpcName then
			TAddNumText(sceneId,x229007_g_ScriptId,x229007_g_MissionName,4,-1,x229007_g_ScriptId);
		end

	end
	
	return 0;

end

function x229007_CheckCondition_UseItem( sceneId, selfId, targetId, eventId )
	------PrintStr("OnUseItem...")
	local misIndex = GetMissionIndexByID(sceneId, selfId, x229007_g_MissionId)

	--��ø��������������
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	if missionType ~= x229007_g_SubMissionTypeEnum.DingDianYinDao then
		return 0
	end
	
	local index = GetMissionParam(sceneId, selfId, misIndex, 2)
	local targetSceneId = x229007_g_DingDianYinDaoList[index].scene
	--PrintNum(sceneId)
	if sceneId ~= targetSceneId then
		BeginEvent(sceneId)

			AddText(sceneId,"H�nh nh� � ��y kh�ng ���c b�n")

		EndEvent(sceneId)

		DispatchMissionTips(sceneId,selfId)

		return 0
	end
	
	local posx1 = x229007_g_DingDianYinDaoList[index].posx1
	local posz1 = x229007_g_DingDianYinDaoList[index].posz1
	local posx2 = x229007_g_DingDianYinDaoList[index].posx2
	local posz2 = x229007_g_DingDianYinDaoList[index].posz2

	--ȡ����ҵ�ǰ����

	local PlayerX = GetHumanWorldX(sceneId,selfId)

	local PlayerZ = GetHumanWorldZ(sceneId,selfId)

	
	--���������Ŀ���ľ���
	if PlayerX >= posx1 and PlayerX < posx2 then
		------PrintStr("PlayerX >= posx1 and PlayerX < posx2...")
		if PlayerZ >= posz1 and PlayerZ < posz2 then
			------PrintStr("PlayerZ >= posz1 and PlayerZ < posz2...")
			return 1
		end
	end	

	BeginEvent(sceneId)

		AddText(sceneId, "Ch� ���c s� d�ng trong khu v�c ch� �nh!")

	EndEvent(sceneId)

	DispatchMissionTips(sceneId,selfId)
	return 0

end

--**********************************
--����ʹ��
--**********************************
function x229007_Active_UseItem( sceneId, selfId, param0 )
	local misIndex = GetMissionIndexByID(sceneId, selfId, x229007_g_MissionId)

	--��ø��������������
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	if missionType ~= x229007_g_SubMissionTypeEnum.DingDianYinDao then
		return 0
	end
	
	local index = GetMissionParam(sceneId, selfId, misIndex, 2)
	if LuaFnGetAvailableItemCount(sceneId, selfId, x229007_g_DingDianYinDaoList[index].itemId) >= 1 then
		DelItem( sceneId, selfId, x229007_g_DingDianYinDaoList[index].itemId, 1 )
	--������״̬��������Ϊ1,��ʾ�Ѿ����
	SetMissionByIndex(sceneId,selfId,misIndex,0,1)
	else
		BeginEvent(sceneId)
			AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)	
		return	
	end		
end

--**********************************
--���߸ı�
--**********************************
function x229007_OnItemChanged( sceneId, selfId, itemdataId )
	----PrintStr("OnItemChanged")
	local misIndex = GetMissionIndexByID(sceneId, selfId, x229007_g_MissionId)

	--��ø��������������
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	if missionType == x229007_g_SubMissionTypeEnum.XunWu then
		local _, strItemName, _ = x229007_GetItemDetailInfo(sceneId,itemdataId)
		local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
		if demandItemId == nil or demandItemId < 0 then
			local strlog = "event_shimen_xingxiu::x229007_OnItemChanged..XunWu:sceneId="
				.. sceneId .. ",selfId=" .. selfId .. ",demandItemId=" .. type(demandItemId)
			MissionLog(sceneId, strlog)
			return
		end
		local _, strDemandItemName, _ = x229007_GetItemDetailInfo(sceneId,demandItemId)
		
		if strItemName == strDemandItemName then
			BeginEvent(sceneId)

				
				strText = format("�� ��t ���c %s", strItemName)
				AddText(sceneId,strText)
			EndEvent(sceneId)

			DispatchMissionTips(sceneId,selfId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 2)
		end
	elseif missionType == x229007_g_SubMissionTypeEnum.KaiGuang then
		local _, strItemName, _ = x229007_GetItemDetailInfo(sceneId,itemdataId)
		local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
		if demandItemId == nil or demandItemId < 0 then
			local strlog = "event_shimen_xingxiu::x229007_OnItemChanged..KaiGuang:sceneId="
				.. sceneId .. ",selfId=" .. selfId .. ",demandItemId=" .. type(demandItemId)
			MissionLog(sceneId, strlog)
			return
		end
		
		local _, strDemandItemName, _ = x229007_GetItemDetailInfo(sceneId,demandItemId)
		
		if strItemName == strDemandItemName then
			BeginEvent(sceneId)
				strText = format("�� ��t ���c %s", strItemName)
				AddText(sceneId,strText)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 2)
		end
		
	elseif missionType == x229007_g_SubMissionTypeEnum.ShouJi then
		local itemCount = GetItemCount(sceneId,selfId,itemdataId)
		local _, strItemName, _ = x229007_GetItemDetailInfo(sceneId,itemdataId)
		local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
		if demandItemId == nil or demandItemId < 0 then
			local strlog = "event_shimen_xingxiu::x229007_OnItemChanged..ShouJi:sceneId="
				.. sceneId .. ",selfId=" .. selfId .. ",demandItemId=" .. type(demandItemId)
			MissionLog(sceneId, strlog)
			return
		end
		local _, strDemandItemName, _ = x229007_GetItemDetailInfo(sceneId,demandItemId)
		
		if strItemName == strDemandItemName then
			BeginEvent(sceneId)
				local _, strItemName, _ = x229007_GetItemDetailInfo(sceneId,itemdataId)
				strText = format("�� ��t ���c %s%d/5", strItemName, itemCount)
				AddText(sceneId,strText)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			if itemCount == 5 then
				SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 2)
			end	
		end
	elseif missionType == x229007_g_SubMissionTypeEnum.killMonster then
		local _, _, itemId = x229007_GetMenpaiYiWuInfo(sceneId, selfId)
		if itemdataId == itemId  then
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 0)
			ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 2)
		end
		
	end

end

--**********************************
--���޸ı�
--**********************************
function x229007_OnPetChanged( sceneId, selfId, petDataId)
	----PrintStr("OnPetChanged...")
	local misIndex = GetMissionIndexByID(sceneId, selfId, x229007_g_MissionId)

	--��ø��������������
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	if missionType == x229007_g_SubMissionTypeEnum.BuZhuo then
		local demandPetDataId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
		
		if petDataId == demandPetDataId then
			BeginEvent(sceneId)
				local strText = format("�� ��t ���c %s", GetPetName(petDataId))
				AddText(sceneId,strText)
			EndEvent(sceneId)

			DispatchMissionTips(sceneId,selfId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			ResetMissionEvent(sceneId, selfId, x229007_g_MissionId, 3)
		end
	end
end
--**********************************
--�ύ
--**********************************
function x229007_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	----PrintStr("OnSubmit...")
	local misIndex = GetMissionIndexByID(sceneId, selfId, x229007_g_MissionId)

	if x229007_CheckSubmit( sceneId, selfId, selectRadioId ) >= 1 then

		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		if missionType == x229007_g_SubMissionTypeEnum.XunWu then
			local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
			--PrintStr("demandItemId"..demandItemId)
			if LuaFnGetAvailableItemCount(sceneId, selfId, demandItemId) >= 1 then
			local ret = DelItem(sceneId, selfId, demandItemId, 1)
			if ret <= 0 then
				BeginEvent(sceneId)
					AddText(sceneId, "Kh�ng �� v�t ph�m c�n, nhi�m v� kh�ng th� giao")
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			end
			else
				BeginEvent(sceneId)
					AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
				EndEvent( )
				DispatchMissionTips(sceneId,selfId)	
				return	
			end	
--		elseif missionType == x229007_g_SubMissionTypeEnum.killMonster then
--			local _, _, demandItemId  = x229007_GetMenpaiYiWuInfo(sceneId, selfId)
--			local ret = DelItem(sceneId, selfId, demandItemId, 1)
--			if ret <= 0 then
--				BeginEvent(sceneId)
--					AddText(sceneId, "û���㹻��������Ʒ�������޷��ύ")
--				EndEvent()
--				DispatchMissionTips(sceneId, selfId)
--				return
--			end
		elseif missionType == x229007_g_SubMissionTypeEnum.ShouJi then
			local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
			if LuaFnGetAvailableItemCount(sceneId, selfId, demandItemId) >= 5 then
			local ret = DelItem(sceneId, selfId, demandItemId, 5)
			if ret <= 0 then
				BeginEvent(sceneId)
					AddText(sceneId, "Kh�ng �� v�t ph�m c�n, nhi�m v� kh�ng th� giao")
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			end
			else
				BeginEvent(sceneId)
					AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a")
				EndEvent( )
				DispatchMissionTips(sceneId,selfId)	
				return	
			end				
		end

		DelMission( sceneId, selfId, x229007_g_MissionId )
		--����ͨ���ύ����ӿڽӿ�

		------------------------------------------------------------------
		local Reward_Append, MissionRound = CallScriptFunction( 500501, "OnSubmit_Necessary", sceneId, selfId, targetId )
		if Reward_Append == 2 and MissionRound == 20 then
			CallScriptFunction(229010, "AddOtherMenpaiFubenMission", sceneId, selfId, x229007_g_MissionId, targetId)
		end
		-------------------------------------------------------------------

		--x229007_OnDefaultEvent( sceneId, selfId, targetId )
		
	end
end

function x229007_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, petindex )
  if x229007_CheckSubmit( sceneId, selfId) < 1 then
    return 0
  end
	--PrintStr("OnMissionCheck...")
	print(sceneId, selfId, npcid, scriptId, index1, index2, index3, petindex)
	local misIndex = GetMissionIndexByID(sceneId, selfId, x229007_g_MissionId)

	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	if missionType == x229007_g_SubMissionTypeEnum.XunWu then
		local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
		local _, strDemandItemName, _ = x229007_GetItemDetailInfo(sceneId,demandItemId)
		--PrintStr("strDemandItemName="..strDemandItemName)
		--����ͨ���ύ����ӿڽӿ�

		------------------------------------------------------------------

		local find = CallScriptFunction( 500501, "OnMissionCheck_NecessaryEx", sceneId, selfId, index1, index2, index3, demandItemId )

		-------------------------------------------------------------------


		if find < 0 then

			BeginEvent(sceneId)

				local strText = format("Sao ng߽i v�n ch�a �em %s v� ���c m� �� quay v�?", strDemandItemName)
				AddText(sceneId,strText)
				AddItemBonus( sceneId, demandItemId, 1 )
			EndEvent(sceneId)

			DispatchEventList(sceneId,selfId,-1)

			return
		end
		
		local ret = EraseItem( sceneId, selfId, find )
		if	ret > 0 then

			DelMission( sceneId, selfId, x229007_g_MissionId )

			--����ͨ���ύ����ӿڽӿ�

			------------------------------------------------------------------
			local Reward_Append, MissionRound = CallScriptFunction( 500501, "OnSubmit_Necessary", sceneId, selfId, -1 )
			if Reward_Append == 2 and MissionRound == 20 then
				CallScriptFunction(229010, "AddOtherMenpaiFubenMission", sceneId, selfId, x229007_g_MissionId)
			end
			-------------------------------------------------------------------

		else
			BeginEvent(sceneId)

				local strText = format("Sao ng߽i v�n ch�a �em %s v� ���c m� �� quay v�?", strDemandItemName)
				AddText(sceneId,strText)
				AddItemBonus( sceneId, demandItemId, 1 )
			EndEvent(sceneId)

			DispatchEventList(sceneId,selfId,-1)
		end	
	elseif missionType == x229007_g_SubMissionTypeEnum.BuZhuo then
		----PrintStr("OnMissionCheck...BuZhuo...")
		local demandPetId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+1)
		local petId = LuaFnGetPet_DataID(sceneId, selfId, petindex)
		if petId == demandPetId then
			if LuaFnIsPetAvailable(sceneId, selfId, petindex) >= 1 then
				LuaFnDeletePet(sceneId, selfId, petindex)
				----PrintStr("DeletePet"..petId..demandPetId)
				DelMission( sceneId, selfId, x229007_g_MissionId )

				--����ͨ���ύ����ӿڽӿ�

				------------------------------------------------------------------
				local Reward_Append, MissionRound = CallScriptFunction( 500501, "OnSubmit_Necessary", sceneId, selfId, -1 )
				if Reward_Append == 2 and MissionRound == 20 then
					CallScriptFunction(229010, "AddOtherMenpaiFubenMission", sceneId, selfId, x229007_g_MissionId)
				end
				-------------------------------------------------------------------
			end	
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Sao ng߽i v�n ch�a �em tr�n th� m� ta c�n v� ���c m� �� quay v�?")
				AddItemBonus( sceneId, demandItemId, 1 )
			EndEvent(sceneId)

			DispatchEventList(sceneId,selfId,-1)

		end

	end -- endif
	
end

--**********************************
--ɱ����������
--**********************************
function x229007_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼�������š����objId�������λ�úš�����
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	local nMonsterId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+3)
	local _, strMonsterName = GetNpcInfoByNpcId(sceneId,nMonsterId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if strMonsterName == monsterName  then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for i=0,num-1  do
			-- ȡ��ӵ�з���Ȩ���˵�objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
			--PrintStr("humanObjId=" .. humanObjId)
			-- ��������ǲ������������
			if IsHaveMission(sceneId, humanObjId, x229007_g_MissionId) > 0 then
				-- ���ж��ǲ����Ѿ���������ɱ�־
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x229007_g_MissionId)
				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
					--SetMissionParamByIndexEx(sceneId, humanObjId, misIndex, 3, 0, 30)
					local demandKillCount = GetMissionParamEx(sceneId, humanObjId, misIndex, 3, 0)
					--PrintStr("demandKillCount=" .. demandKillCount)
					local killedCount =	GetMissionParamEx(sceneId, humanObjId, misIndex, 3, 1)
					killedCount = killedCount + 1
					SetMissionParamByIndexEx(sceneId, humanObjId, misIndex, 3, 1, killedCount)
					--PrintStr("killedCount=" .. killedCount)
					BeginEvent(sceneId)
						local str = format("�� gi�t ch�t %d/%d%s", killedCount, demandKillCount, monsterName)
						AddText(sceneId, str)
					EndEvent()
					DispatchMissionTips(sceneId, humanObjId)
					if killedCount == demandKillCount then
						SetMissionByIndex(sceneId, humanObjId, misIndex, 0, 1)
		end
				end --if
			end --if
		end --for				
	end

end


--**********************************
--ͬ������....ֱ����ɵ�ǰ��....
--**********************************
function x229007_HelpFinishOneHuan( sceneId, selfId, targetId )

	--�Ƿ��Ǳ����ɵ���....
	if MP_XINGSU ~= GetMenPai( sceneId, selfId ) then
		return
	end

	--�Ƿ����ʦ������....
	if IsHaveMission(sceneId,selfId,x229007_g_MissionId) <= 0 then
		return
	end

	--��Ⲣ�۳�ͬ�����������ʦ�Ź���....
	local ret = CallScriptFunction( 229011, "CheckAndDepleteHelpFinishMenPaiPoint", sceneId, selfId, targetId )
	if ret == 0 then
		return
	end

	--��ȡʦ�����������....
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229007_g_MissionId)
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)

	--���������Ʒ....
	local itemId = -1
	local itemCount = -1

	if missionType == x229007_g_SubMissionTypeEnum.SongXin then
		itemId = GetMissionParam(sceneId, selfId, misIndex,x229007_g_StrForePart+3)
		itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, itemId)
		if itemCount >= 1 then
			DelItem(sceneId, selfId, itemId, 1)
		end
	elseif missionType == x229007_g_SubMissionTypeEnum.DingDianYinDao	then
		local index = GetMissionParam(sceneId, selfId, misIndex,2)
		itemId = x229007_g_DingDianYinDaoList[index].itemId
		itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, itemId)
		if itemCount >= 1 then
			DelItem(sceneId, selfId, itemId, 1)	
		end
	elseif missionType == x229007_g_SubMissionTypeEnum.ShouJi then
		itemId = GetMissionParam(sceneId, selfId, misIndex, x229007_g_StrForePart+2)
		itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, itemId)
		if itemCount > 5 then
			itemCount = 5
		end
		if itemCount > 0 then
			DelItem(sceneId, selfId, itemId, itemCount)
		end
	end

	--ɾ����������б��ж�Ӧ������....
	DelMission( sceneId, selfId, x229007_g_MissionId )

	--����ͨ���ύ����ӿڽӿ�....
	local Reward_Append, MissionRound = CallScriptFunction( 500501, "OnSubmit_Necessary", sceneId, selfId, targetId, 1 )

	if Reward_Append == 2 and MissionRound == 20 then
		--�������һ��ȥ������ɸ�����ʦ������....
		CallScriptFunction(229010, "AddOtherMenpaiFubenMission", sceneId, selfId, x229007_g_MissionId, targetId)
	end

end
