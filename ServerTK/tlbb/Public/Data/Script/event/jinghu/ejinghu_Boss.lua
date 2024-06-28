-- 005116
-- ����BOSS

x005116_g_PreTimeHour_1 = 0
x005116_g_PreTimeHour_2 = 0
x005116_g_PreTimeHour_3 = 0

x005116_g_Boss ={
								{x=141,z=96,	b1=885,b2=887,b3=889,n1="B�c H�i H�n Giang Ti�u Long",n2="B�c H�i xu�t �ng Ti�u Giao",n3="B�c H�i phi�n giang Ti�u Th�n"},
								{x=250,z=98,	b1=885,b2=887,b3=889,n1="��ng H�i H�n Giang Ti�u Long",n2="��ng H�i xu�t �ng Ti�u Giao",n3="��ng H�i phi�n giang Ti�u Th�n"},
								
								{x=206,z=253,	b1=885,b2=887,b3=889,n1="Nam H�i H�n Giang Ti�u Long",n2="Nam H�i xu�t �ng Ti�u Giao",n3="Nam H�i phi�n giang Ti�u Th�n"},
								{x=101,z=256,	b1=885,b2=887,b3=889,n1="T�y H�i H�n Giang Ti�u Long",n2="T�y H�i xu�t �ng Ti�u Giao",n3="T�y H�i phi�n giang Ti�u Th�n"},
								
								{x=139,z=133,	b1=884,b2=886,b3=888,n1="H�n Giang Long",n2="Xu�t �ng giao",n3="Phi�n giang th�n"}}

-- ʹ��һЩ������Ψһ��ȫ�ֱ�������������

-- ����ļ�ʱ���ڵ�һ��ҽ��뱾�������Լ������������رա�
function x005116_OnSceneTimer(sceneId)
	
	--Soi delete boss KH
	if 1==1 then
		return
	end
	--end
	
	-- ��õ�ǰʱ��
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	local nHour = GetQuarterTime()
	--local temp = floor(nHour/100)*100
	
	-- ֻ�G�� 10:00 4:00 ֱ�ӵ����ʱ���ڲ��G
	--if nHour-temp>16 and nHour-temp<40    then
	--	return
	--end
	
	local nQuarter = mod(nHour,100);
	-- ֻ�G�� 10:00 4:00 ֱ�ӵ����ʱ���ڲ��G
	if nQuarter > 16 and nQuarter < 40    then
		return
	end
	--end modified by zhangguoxin 090207
	
	--����ֲ���ˢ��ʱ��ˢ��5��BOSS��
	--	��45���ӣ�����BOSS��55����53С�ܳ��֡�()
	--	50���ӣ�����BOSS��55����53С�ܳ��֡�	()
	--	55���ӣ�һ��BOSS��60����58С�ܳ��֡�	()
	--	���һ��BOSS����ʱϵͳ���档	
	
	-- ��45���ӣ�ˢ��һ��BOSS
	if GetMinute() >= 45 and GetMinute() < 50  then 
		-- ��Сʱ��������Ѿ�ˢ��
		if nHour == x005116_g_PreTimeHour_1  then
			return
		end
		
		-- ��¼���ʱ���
		x005116_g_PreTimeHour_1 = nHour
		
		-- ����ǲ������㴴���ֵ�����
		-- ��ⳡ���� x005116_g_Boss[1].b1 �ǲ��ǻ����ڣ�
		-- ���ھͲ����������������С��Ȼ��ˢ���µ���
		if x005116_IsHaveMonster( sceneId, "B�c H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 1, 10 )
		end
		if x005116_IsHaveMonster( sceneId, "��ng H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 2, 11 )
		end

		
	end
	
	-- 55���ӣ�ˢ�ڶ���BOSS
	if GetMinute() >= 50 and GetMinute() < 55  then
		-- ��Сʱ��������Ѿ�ˢ��
		if nHour == x005116_g_PreTimeHour_2  then
			return
		end
		
		-- ��¼���ʱ���
		x005116_g_PreTimeHour_2 = nHour
		
		-- ����ǲ������㴴���ֵ�����
		if x005116_IsHaveMonster( sceneId, "Nam H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 3, 12 )
		end
		if x005116_IsHaveMonster( sceneId, "T�y H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 4, 13 )
		end
		
	end
	
	-- 60���ӣ�ˢ������BOSS
	if GetMinute() >= 55 	then
		-- ��Сʱ��������Ѿ�ˢ��
		if nHour == x005116_g_PreTimeHour_3  then
			return
		end
		
		-- ��¼���ʱ���
		x005116_g_PreTimeHour_3 = nHour
		
		-- ����ǲ������㴴���ֵ�����
		if x005116_IsHaveMonster( sceneId, "H�n Giang Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 5, 14 )
		end
	end
	
		
end

function x005116_IsHaveMonster( sceneId, MonsterName )
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)  == MonsterName  then
			bHaveMonster = 1
		end
	end
	return bHaveMonster
end

function x005116_UpDateMonster( sceneId, nIndex, nGroupId )

	-- ������������ͷ������С��
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n1  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n2  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n3  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
	
	-- �ѹ�ȫ��������
	local nMonId
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b1, x005116_g_Boss[nIndex].x, x005116_g_Boss[nIndex].z, 19, 197, 005117)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n1)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "K�nh H� L�c B�")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b2, x005116_g_Boss[nIndex].x+2, x005116_g_Boss[nIndex].z, 19, 198, 005118)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n2)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "K�nh H� L�c B�")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b3, x005116_g_Boss[nIndex].x-2, x005116_g_Boss[nIndex].z, 19, 199, 005119)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n3)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "K�nh H� L�c B�")
	
	if nIndex == 5   then
		--��������������ˮ�����콭�����Ѿ����첿�³����ھ�����������Ӣ����ȥ����
		-- ˢ��BOSS��ʱ�򣬸�һ�����繫��
		
		local str = "#PTh�y t�c ho�nh h�nh giang h�, gi� ��y #{_BOSS14} th�ng l�nh thu�c h� c�a m�nh �ang xu�t hi�n � #GK�nh H� #P! Xin c�c v� anh h�ng h�y nhanh ch�ng �i ti�u di�t!"
		BroadMsgByChatPipe(sceneId, -1, str, 4)
	end
	
	
end

