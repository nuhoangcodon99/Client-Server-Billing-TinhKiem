--Ph� b�n Thi�u Th�t S�n
--Author: Ho�ng Steven

--******************--
x910159_g_ScriptId=910159
--******************--
x910159_g_CopySceneType=FUBEN_SHAOSHISHAN										--C�c tham s� c�a ph� b�n. Tham kh�o "ScriptGlobal.lua"
--******************--
x910159_g_TickTime=1															--Th�i gian hi�n t�i c�a ph� b�n
x910159_g_NoUserTime=5000														--Th�i gian l�u l�i ph� b�n khi kh�ng c�n ai trong ph� b�n (нn v� Mili Gi�y)
x910159_g_Fuben_X=134															--Pos X �i�m h�i sinh ph� b�n
x910159_g_Fuben_Y=225															--Pos Y �i�m h�i sinh ph� b�n
x910159_g_Limit_Member=3														--S� l��ng th�nh vi�n t�i thi�u trong �i ng�
x910159_g_Limit_FuBenTimes=3 --so lan di phu ban toi da
x910159_g_Fuben_Scene="cangjingge_80JQTZ.nav"									--Load file Scene
x910159_g_Fuben_Time=3600000													--Th�i gian ph� b�n
--******************--
x910159_g_Need_Level=80															--Level t�i thi�u tham gia ph� b�n
--******************--
x910159_g_Next_Step=8															--Thao t�c tr�n ph� b�n
x910159_g_Fuben_Level=9															--C�p � ph� b�n
x910159_g_Last_Time=10															--Th�i gian t�n t�i ph� b�n
x910159_g_Fuben_Step=11															--C�c b߾c th�i gian ph� b�n
x910159_g_Tick_Fuben_Time=12													--Th�i gian t�n t�i ph� b�n
x910159_g_Out_Timer=13															--Th�i gian �m ng��c r�i ph� b�n
x910159_g_nTick=14																--Mili gi�y
--******************--
x910159_g_Monk={	Index=14277,	Name="Tri kh�ch t�ng",	Pos_X=134,	Pos_Y=222,	ScriptID=910160	}
--******************--
x910159_g_JiuMoZhi_Disciples=													--Th� Ph�n phi�n t�ng
{
	[1]	=	{	Index=14255,	Name="Th� Ph�n phi�n t�ng",		Pos_X_Start=114,	Pos_Y=178,	Pos_X_Finish=121	},
	[2]	=	{	Index=14260,	Name="Phi�n t�ng ch�p s�",		Pos_X_Start=114,	Pos_Y=176,	Pos_X_Finish=121	},
	[3]	=	{	Index=14255,	Name="Th� Ph�n phi�n t�ng",		Pos_X_Start=126,	Pos_Y=178,	Pos_X_Finish=133	},
	[4]	=	{	Index=14260,	Name="Phi�n t�ng ch�p s�",		Pos_X_Start=126,	Pos_Y=176,	Pos_X_Finish=133	},
	[5]	=	{	Index=14255,	Name="Th� Ph�n phi�n t�ng",		Pos_X_Start=138,	Pos_Y=178,	Pos_X_Finish=146	},
	[6]	=	{	Index=14260,	Name="Phi�n t�ng ch�p s�",		Pos_X_Start=138,	Pos_Y=176,	Pos_X_Finish=146	},
}
--******************--
x910159_g_Boss_List=
{
	["JiuMoZhi"]			=	{	Index=14245,	Name="C�u Ma Tr�",		Title="��i Lu�n Minh V߽ng",		Pos_X=130,	Pos_Y=168,	ScriptID=910162		},	--C�u Ma Tr�
	["ZhuangJuXian"]		=	{	Index=14240,	Name="Trang T� Hi�n",	Title="Ch߷ng Bang Long Хu",		Pos_X=67,	Pos_Y=121,	ScriptID=910163		},	--Trang T� Hi�n
	["MuRongFu"]			=	{	Index=14235,	Name="M� Dung Ph�c",	Title="Y�n V߽ng H�u Du�",			Pos_X=195,	Pos_Y=86,	ScriptID=910164		},	--M� Dung Ph�c
	["DingChunQiu"]			=	{	Index=14230,	Name="�inh Xu�n Thu",	Title="Ch߷ng m�n ph�i Tinh T�c",	Pos_X=130,	Pos_Y=127,	ScriptID=910165		},	--�inh Xu�n Thu
	["XiaoYanShan"]			=	{	Index=14220,	Name="Ti�u Vi�n S�n",	Title="Lo�n th� �n gi�",			Pos_X=123,	Pos_Y=43,	ScriptID=910168		},	--Ti�u Vi�n S�n
	["MuRongBo"]			=	{	Index=14225,	Name="M� Dung B�c",		Title="C� T� M� Dung l�o gia",		Pos_X=123,	Pos_Y=43,	ScriptID=910167		},	--M� Dung B�c
	["XiaoYanShan_Back"]	=	{	Index=14220,	Name="Ti�u Vi�n S�n",	Title="Lo�n th� �n gi�",			Pos_X=121,	Pos_Y=43,	ScriptID=910169		},	--Ti�u Vi�n S�n (Back)
	["MuRongBo_Back"]		=	{	Index=14225,	Name="M� Dung B�c",		Title="C� T� M� Dung l�o gia",		Pos_X=125,	Pos_Y=43,	ScriptID=910158		},	--M� Dung B�c (Back)
}
--******************--
x910159_g_Circle={	Index=1021,	Pos_X=130,	Pos_Y=168	}						--��i hi�n th�n
--******************--
x910159_g_Xing_Xiu_Disciples={	Index=14349,	Name="M�n � ph�i Tinh T�c",	Pos_X_Start=118,	Pos_X_Finish=142,	Pos_Y=118	}
x910159_g_DingChunQiu_Trap=
{
	[1]={	Index=14278,	Name="Huy�t Ch� Vu C�",	Pos_X=144,	Pos_Y=121	},
	[2]={	Index=14278,	Name="Huy�t Ch� Vu C�",	Pos_X=116,	Pos_Y=121	},
	[3]={	Index=14278,	Name="Huy�t Ch� Vu C�",	Pos_X=144,	Pos_Y=133	},
	[4]={	Index=14278,	Name="Huy�t Ch� Vu C�",	Pos_X=116,	Pos_Y=133	},
	[5]={	Index=14278,	Name="Huy�t Ch� Vu C�",	Pos_X=124,	Pos_Y=127	},
	[6]={	Index=14278,	Name="Huy�t Ch� Vu C�",	Pos_X=136,	Pos_Y=127	},
}
--******************--
x910159_g_NPC_List=
{
	[1]	=	{	Index=10,	Name="�o�n Ch�nh Thu�n",	Pos_X=129,	Pos_Y=144	},
	[2]	=	{	Index=9479,	Name="Ph�m Hoa",			Pos_X=131,	Pos_Y=145	},
	[3]	=	{	Index=9489,	Name="Hoa C�ch C�n",		Pos_X=128,	Pos_Y=145	},
	[4]	=	{	Index=9469,	Name="Ba Thi�n Th�ch",		Pos_X=131,	Pos_Y=146	},
	[5]	=	{	Index=9499,	Name="Tr� V�n L�",			Pos_X=128,	Pos_Y=146	},
	[6]	=	{	Index=9509,	Name="C� Яc Th�nh",		Pos_X=131,	Pos_Y=147	},
	[7]	=	{	Index=9519,	Name="Ph� T� Quy",			Pos_X=128,	Pos_Y=147	},
	[8]	=	{	Index=9529,	Name="Chu �an Th�n",		Pos_X=129,	Pos_Y=148	},
	[9]=	{	Index=10048,Name="Gia Lu�t M�c Ca",		Pos_X=118,	Pos_Y=144	},
	[10]=	{	Index=254,	Name="Li�u Binh",			Pos_X=116,	Pos_Y=145	},
	[11]=	{	Index=254,	Name="Li�u Binh",			Pos_X=120,	Pos_Y=145	},
	[12]=	{	Index=254,	Name="Li�u Binh",			Pos_X=116,	Pos_Y=146	},
	[13]=	{	Index=254,	Name="Li�u Binh",			Pos_X=120,	Pos_Y=146	},
	[14]=	{	Index=254,	Name="Li�u Binh",			Pos_X=116,	Pos_Y=147	},
	[15]=	{	Index=254,	Name="Li�u Binh",			Pos_X=120,	Pos_Y=147	},
	[16]=	{	Index=6,	Name="A T�",				Pos_X=118,	Pos_Y=148	},
	[17]=	{	Index=2,	Name="H� Tr�c",				Pos_X=142,	Pos_Y=144	},
	[18]=	{	Index=37,	Name="Lan Ki�m",			Pos_X=144,	Pos_Y=145	},
	[19]=	{	Index=37,	Name="Tr�c Ki�m",			Pos_X=140,	Pos_Y=145	},
	[20]=	{	Index=286,	Name="D� B�",				Pos_X=144,	Pos_Y=146	},
	[21]=	{	Index=286,	Name="Vu B�",				Pos_X=140,	Pos_Y=146	},
	[22]=	{	Index=301,	Name="Ю t� Thi�n S�n",		Pos_X=144,	Pos_Y=147	},
	[23]=	{	Index=301,	Name="Ю t� Thi�n S�n",		Pos_X=140,	Pos_Y=147	},
	[24]=	{	Index=37,	Name="Mai Ki�m",			Pos_X=142,	Pos_Y=148	},
	[25]=	{	Index=15,	Name="V߽ng Ng� Y�n",		Pos_X=193,	Pos_Y=79	},
	[26]=	{	Index=0,	Name="�o�n D�",				Pos_X=196.5,Pos_Y=79	},
	[27]=	{	Index=1,	Name="Ti�u Phong",			Pos_X=74,	Pos_Y=134	},
	[28]=	{	Index=254,	Name="Li�u Binh",			Pos_X=72,	Pos_Y=135	},
	[29]=	{	Index=254,	Name="Li�u Binh",			Pos_X=76,	Pos_Y=135	},
	[30]=	{	Index=254,	Name="Li�u Binh",			Pos_X=72,	Pos_Y=136	},
	[31]=	{	Index=254,	Name="Li�u Binh",			Pos_X=76,	Pos_Y=136	},
	[32]=	{	Index=254,	Name="Li�u Binh",			Pos_X=72,	Pos_Y=137	},
	[33]=	{	Index=254,	Name="Li�u Binh",			Pos_X=76,	Pos_Y=137	},
	[34]=	{	Index=14201,Name="To�n Qu�n Thanh",		Pos_X=61,	Pos_Y=134	},
	[35]=	{	Index=14312,Name="Ю t� C�i Bang",		Pos_X=63,	Pos_Y=135	},
	[36]=	{	Index=14312,Name="Ю t� C�i Bang",		Pos_X=65,	Pos_Y=135	},
	[37]=	{	Index=14312,Name="Ю t� C�i Bang",		Pos_X=63,	Pos_Y=136	},
	[38]=	{	Index=14312,Name="Ю t� C�i Bang",		Pos_X=65,	Pos_Y=136	},
	[39]=	{	Index=14312,Name="Ю t� C�i Bang",		Pos_X=63,	Pos_Y=137	},
	[40]=	{	Index=14312,Name="Ю t� C�i Bang",		Pos_X=65,	Pos_Y=137	},
	[41]=	{	Index=32179,Name="Ю t� Thi�u L�m",		Pos_X=113,	Pos_Y=47	},
	[42]=	{	Index=32179,Name="Ю t� Thi�u L�m",		Pos_X=136,	Pos_Y=47	},
	[43]=	{	Index=14294,Name="T�o иa Th�n T�ng",	Pos_X=121,	Pos_Y=33	},
	[44]=	{	Index=14295,Name="�o�n Di�n Kh�nh",		Pos_X=125,	Pos_Y=56	},
	[45]=	{	Index=14296,Name="Nh�c L�o Tam",		Pos_X=125,	Pos_Y=57	},
	[46]=	{	Index=14297,Name="V�n Trung H�c",		Pos_X=125,	Pos_Y=58	},
	[47]=	{	Index=14298,Name="Уng B�ch Xuy�n",		Pos_X=135,	Pos_Y=56	},
	[48]=	{	Index=14299,Name="Bao B�t аng",		Pos_X=135,	Pos_Y=57	},
	[49]=	{	Index=14300,Name="Phong Ba �c",			Pos_X=135,	Pos_Y=58	},
	[50]=	{	Index=14207,Name="Huy�n N�n",			Pos_X=130,	Pos_Y=83	},
	[51]=	{	Index=32179,Name="Ю t� Thi�u L�m",		Pos_X=132,	Pos_Y=84	},
	[52]=	{	Index=32179,Name="Ю t� Thi�u L�m",		Pos_X=128,	Pos_Y=84	},
	[53]=	{	Index=32179,Name="Ю t� Thi�u L�m",		Pos_X=125,	Pos_Y=205	},
	[54]=	{	Index=32179,Name="Ю t� Thi�u L�m",		Pos_X=135,	Pos_Y=205	},
	[55]=	{	Index=32189,Name="Ю t� Minh Gi�o",		Pos_X=125,	Pos_Y=206	},
	[56]=	{	Index=32189,Name="Ю t� Minh Gi�o",		Pos_X=135,	Pos_Y=206	},
	[57]=	{	Index=32199,Name="Ю t� C�i Bang",		Pos_X=125,	Pos_Y=207	},
	[58]=	{	Index=32199,Name="Ю t� C�i Bang",		Pos_X=135,	Pos_Y=207	},
	[59]=	{	Index=32209,Name="Ю t� V� �ang",		Pos_X=125,	Pos_Y=208	},
	[60]=	{	Index=32209,Name="Ю t� V� �ang",		Pos_X=135,	Pos_Y=208	},
	[61]=	{	Index=32219,Name="Ю t� Nga My",		Pos_X=125,	Pos_Y=209	},
	[62]=	{	Index=32219,Name="Ю t� Nga My",		Pos_X=135,	Pos_Y=209	},
	[63]=	{	Index=32229,Name="Ю t� Tinh T�c",		Pos_X=125,	Pos_Y=210	},
	[64]=	{	Index=32229,Name="Ю t� Tinh T�c",		Pos_X=135,	Pos_Y=210	},
	[65]=	{	Index=32239,Name="Ю t� Thi�n Long",	Pos_X=125,	Pos_Y=211	},
	[66]=	{	Index=32239,Name="Ю t� Thi�n Long",	Pos_X=135,	Pos_Y=211	},
	[67]=	{	Index=32249,Name="Ю t� Thi�n S�n",		Pos_X=125,	Pos_Y=212	},
	[68]=	{	Index=32249,Name="Ю t� Thi�n S�n",		Pos_X=135,	Pos_Y=212	},
	[69]=	{	Index=32259,Name="Ю t� Ti�u Dao",		Pos_X=125,	Pos_Y=213	},
	[70]=	{	Index=32259,Name="Ю t� Ti�u Dao",		Pos_X=135,	Pos_Y=213	},
	[71]=	{	Index=5379,	Name="Ю t� M� Dung",		Pos_X=125,	Pos_Y=214	},
	[72]=	{	Index=5379,	Name="Ю t� M� Dung",		Pos_X=135,	Pos_Y=214	},
	[73]=	{	Index=16470,Name="Ю t� �߶ng M�n",		Pos_X=125,	Pos_Y=215	},
	[74]=	{	Index=16470,Name="Ю t� �߶ng M�n",		Pos_X=135,	Pos_Y=215	},
}
--******************--
x910159_g_NPC_Script=910166
--******************--
x910159_g_Notices=
{
	[1]="Ph� b�n hi�n t�i s� ��ng sau 1 gi�!",
	[2]="Ph� b�n hi�n t�i s� ��ng sau 30 ph�t!",
	[3]="Ph� b�n hi�n t�i s� ��ng sau 15 ph�t!",
	[4]="Ph� b�n hi�n t�i s� ��ng sau 5 ph�t!",
	[5]="Ph� b�n hi�n t�i s� ��ng sau 1 ph�t!",
	[6]="Ph� b�n hi�n t�i s� ��ng sau 30 gi�y!",
	[7]="Ph� b�n hi�n t�i s� ��ng sau 15 gi�y!",
	[8]="Ph� b�n hi�n t�i s� ��ng sau 5 gi�y!",
	[9]="Nhi�m v� ho�n th�nh, c�c h� s� r�i kh�i ��y sau 30 gi�y!",
}
--******************--
x910159_g_YaoXing_Count=10
--******************--
x910159_g_YaoXing=
{
	["Mu Rong Bo"]		=	{	Index=14370,	Name="T�m Ma",	ScriptID=910156	},
	["Xiao Yan Shan"]	=	{	Index=14375,	Name="T�m Ma",	ScriptID=910157	},
}
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910159_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910159_g_ScriptId,"Khi�u chi�n Thi�u Th�t S�n",6,1)		--Khi�u chi�n
	AddNumText(sceneId,x910159_g_ScriptId,"Thi�u L�m T� - Thi�u Th�t S�n",11,0)	--T�m hi�u Thi�u Th�t S�n
	AddNumText(sceneId,x910159_g_ScriptId,"T�i h� ch� �i ngang qua...",-1,2)	--R�i b�
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910159_OnDefaultEvent(sceneId,selfId,targetId)
local key=GetNumText()

	--******************--
	if key==0 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"C�i Bang ph�t Thi�p Anh H�ng, m�i c�c h�o ki�t v� l�m Trung Nguy�n t� t�u � Thi�u L�m, To�n Qu�n Thanh d� �nh l�i d�ng c� h�i l�n n�y khi�n cho C�i Bang g�y �p l�c cho Thi�u L�m � tr� th�nh V� L�m Ю Nh�t, n�m trong tay c� v� l�m Trung Nguy�n.")
			AddText(sceneId,"Kh�ng nh� mong mu�n, s� xu�t hi�n c�a Ti�u Phong, �� khi�n cho chuy�n n�y c� bi�n chuy�n, � tr�n Thi�u Th�t S�n, ba ng߶i Ti�u Phong, �o�n D� v� H� Tr�c k�t ngh�a kim lan, k� vai chi�n �u v�i Trang T� Hi�n, �inh Xu�n Thu v� M� Dung Ph�c, gi�p Thi�u L�m v��t qua ki�p n�n.")
			AddText(sceneId,"Sau �� Ti�u Vi�n S�n v� M� Dung B�c �t ng�t xu�t hi�n, khi�n cho ch�n t߾ng s� vi�c huy�t t�y Nh�n M�n Quan n�m �� b� b�i l� tr߾c m�t m�i ng߶i trong thi�n h�, nh�ng T�o иa Th�n T�ng �n c� trong T�ng Kinh C�c �� d�ng thu�t Sinh T� Lu�n H�i Quy T�c, �� h�a gi�i huy�t h�i th�m th� k�o d�i nhi�u n�m gi�a cha con h� Ti�u v� gia t�c M� Dung.")
			AddText(sceneId,"Ng߶i ch�i#G c�p 80#W tr� l�n c� th� tham gia.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key==1 then
		
		local Check,nTip=x910159_CheckCanEnter(sceneId,selfId)
		if Check==0 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		x910159_MakeCopyScene(sceneId,selfId)									--Kh�i t�o ph� b�n
		
	end
	--******************--
	if key==2 then
	
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910159_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ng߶i ch�i n�y kh�ng c� �i ng�
		return 0,"C�c h� c�n gia nh�p v�o m�t �i ng� t�i thi�u #G"..x910159_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ng߶i ch�i kh�ng ph�i �i tr߷ng
		return 0,"Ch� c� �i tr߷ng m�i c� th� quy�t �nh c� tham gia hay kh�ng. C�c h� h�y g�i �i tr߷ng c�a c�c h� �n n�i chuy�n v�i ta!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910159_g_Limit_Member then					--S� l��ng th�nh vi�n kh�ng ��
		return 0,"T� �i c�n c� t�i thi�u #G"..x910159_g_Limit_Member.."#W th�nh vi�n m�i c� th� tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--еi ng� c� th�nh vi�n kh�ng � g�n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"C�c h� c�n tri�u t�p �� �i ng� c�a m�nh �n ch� ta m�i c� th� ti�n v�o ph� b�n!"
	end
	--******************--
	if GetMissionData(sceneId,selfId,MD_SHAOSHI_DAYTIME)==GetDayTime() then		--�� tham gia ph� b�n h�m nay
		--return 0,"Ng�y h�m nay c�c h� �� tham gia ph� b�n n�y r�i!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910159_g_Need_Level then					--C� th�nh vi�n kh�ng �� c�p � y�u c�u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c�p � kh�ng �� c�p #G"..x910159_g_Need_Level..", kh�ng �� �i�u ki�n tham gia ph� b�n!"
		return 0,msg
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	
	local CurDayTime = GetDayTime()
	
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		local lastTime = GetMissionData( sceneId, PlayerId, MD_SHAOSHI_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end
		
		if lastDayCount >= x910159_g_Limit_FuBenTimes  then --C� th�nh vi�n �� tham gia ph� b�n n�y r�i
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t� �i c�a c�c h� c� "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." trong ng�y h�m nay �� tham gia ph� b�n n�y r�i!"
		return 0,msg
	end
	--******************--
	return 1
	--******************--

end
--**********************************--
--*         Make Copy Scene        *--
--**********************************--
function x910159_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x910159_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID �i tr߷ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910159_g_NoUserTime)					--Th�i gian l�u ph� b�n khi kh�ng c�n ai
	LuaFnSetCopySceneData_Timer(sceneId,x910159_g_TickTime)								--Th�i gian ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,0,x910159_g_CopySceneType)						--Set th�ng s� ph� b�n (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910159_g_ScriptId)							--ID script ph� b�n
	LuaFnSetCopySceneData_Param(sceneId,2,0)
	LuaFnSetCopySceneData_Param(sceneId,3,sceneId)										--C�nh t��ng hi�n t�i
	LuaFnSetCopySceneData_Param(sceneId,4,x)											--T�a � X c�a ng߶i ch�i
	LuaFnSetCopySceneData_Param(sceneId,5,y)											--T�a � Y c�a ng߶i ch�i
	LuaFnSetCopySceneData_Param(sceneId,6,GetTeamId(sceneId,selfId))					--ID nh�m ng߶i ch�i
	LuaFnSetCopySceneData_Param(sceneId,7,0)
	--******************--
	for i=8,31 do
		LuaFnSetCopySceneData_Param(sceneId,i,0)										--Reset l�i c�c th�ng s� cho ph� b�n
	end
	--******************--
	local nSum=0
	local nHumanCount=GetNearTeamCount(sceneId,selfId)
	for i=0,nHumanCount-1 do
		local nHumanId=GetNearTeamMember(sceneId,selfId,i)
		nSum=nSum+GetLevel(sceneId,nHumanId)
	end
	--******************--
	local Current_Level=floor(nSum/nHumanCount)									
	local nDec
	if Current_Level>=80 and Current_Level<90 then
		nDec=0
	elseif Current_Level>=90 and Current_Level<100 then
		nDec=1
	elseif Current_Level>=100 and Current_Level<110 then
		nDec=2
	elseif Current_Level>=110 and Current_Level<120 then
		nDec=3
	else
		nDec=4
	end
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Level,nDec)						--Set Level ph� b�n
	--******************--
	local bRetSceneID=LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!")									--S� b�n sao qu� t�i
		else
			AddText(sceneId,"S� l��ng b�n sao �� qu� t�i, � ngh� l�t n�a th� l�i!")	--C� th� t�o b�n sao m�i
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--******************--

end
--**********************************--
--*      Make Copy Scene Ready     *--
--**********************************--
function x910159_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Th�ng b�o kh�i t�o ph� b�n
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid);
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910159_g_Fuben_X,x910159_g_Fuben_Y) 			--��a t�t c� th�nh vi�n nh�m �n ph� b�n
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910159_OnCopySceneTimer(sceneId,nowTime)											--H�m n�y check li�n t�c m�i Mili gi�y khi ph� b�n c�n t�n t�i

	--******************--
	x910159_ShowFubenTimer(sceneId,nowTime)													--Th�ng b�o th�i gian ph� b�n
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Next_Step)					--L�y thao t�c tr�n ph� b�n
	if nStep==0 then																		--L�n �u trong ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,1)							--C�p nh�t thao t�c tr�n ph� b�n
		x910159_JiuMoZhiDisciples(sceneId)													--Kh�i t�o tr�n chi�n �u ti�n v�i t�n � c�a C�u Ma Tr�
		x910159_CreatNPC(sceneId)															--Kh�i t�o c�c NPC
	elseif nStep==1 then																	--C�u Ma Tr�
		x910159_JiuMoZhi(sceneId)															--Kh�i t�o tr�n chi�n �u ti�n v�i C�u Ma Tr�
	elseif nStep==2 then																	--Trang T� Hi�n
		x910159_ZhuangJuXian(sceneId)														--Kh�i t�o tr�n chi�n �u ti�n v�i Trang T� Hi�n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C�p nh�t thao t�c tr�n ph� b�n
	elseif nStep==3 then																	--Trang T� Hi�n
		x910159_MuRongFu(sceneId)															--Kh�i t�o tr�n chi�n �u ti�n v�i M� Dung Ph�c
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C�p nh�t thao t�c tr�n ph� b�n
	elseif nStep==4 then																	--Ю t� Tinh T�c
		x910159_XingXiuDisciples(sceneId)													--Kh�i t�o tr�n chi�n v�i c�c � t� Tinh T�c
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,5)							--C�p nh�t thao t�c tr�n ph� b�n
	elseif nStep==5 then																	--�inh Xu�n Thu
		x910159_DingChunQiu(sceneId)														--Kh�i t�o tr�n chi�n v�i �inh Xu�n Thu
	elseif nStep==6 then																	--Ti�u Vi�n S�n
		x910159_XiaoYanShan(sceneId)														--Kh�i t�o tr�n chi�n �u ti�n v�i Ti�u Vi�n S�n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C�p nh�t thao t�c tr�n ph� b�n
	elseif nStep==7 then																	--M� Dung B�c
		x910159_MuRongBo(sceneId)															--Kh�i t�o tr�n chi�n �u ti�n v�i M� Dung B�c
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C�p nh�t thao t�c tr�n ph� b�n
	elseif nStep==8 then																	--M� Dung B�c v� Ti�u Vi�n S�n
		x910159_XiaoYanShan_MuRongBo(sceneId)												--Kh�i t�o tr�n chi�n cu�i v�i M� Dung B�c v� Ti�u Vi�n S�n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C�p nh�t thao t�c tr�n ph� b�n
	elseif nStep==9 then
		x910159_TipAllHuman(sceneId,x910159_g_Notices[9])									--Th�ng b�o ho�n th�nh nhi�m v�
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,10)							--C�p nh�t b߾c ho�t �ng ph� b�n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Out_Timer,30000)						--C�p nh�t th�i gian r�i ph� b�n
	elseif nStep==10 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Out_Timer)
		local nTick=LuaFnGetCopySceneData_Param(sceneId,x910159_g_nTick)
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			x910159_KickOutAllPlayer(sceneId)												--��a ng߶i ch�i ra kh�i map
		end
	end
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910159_OnPickUpItem(sceneId,selfId,Item_Pos)

	--******************--
	local Item_Infor=GetBagItemTransfer(sceneId,selfId,Item_Pos)
	local Player_Name=GetName(sceneId,selfId)
	--******************--
	local str=format("#PH�m nay v� thi�u hi�p #{_INFOUSR%s} c�ng �ng �i #P��i n�o #GThi�u Th�t S�n#P. H�u sinh kh� �y qu� kh�ng sai. Nh�t l�n v�t ph�m #{_INFOMSG%s}#P, l�ng vui m�ng kh� t�!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*           Tick Timer           *--
--**********************************--
function x910159_TickTimer(sceneId,nowTime)
	
	--******************--
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Last_Time)			--L�y th�i gian tr߾c ��
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Last_Time,nowTime)					--C�p nh�t th�i gian hi�n t�i c�a ph� b�n
	return nowTime-Last_Time															--L�y mili gi�y hi�n t�i t�nh t� th�i gian tr߾c
	--******************--
	
end
--**********************************--
--*        Show Fuben Timer        *--
--**********************************--
function x910159_ShowFubenTimer(sceneId,nowTime)

	--******************--
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Last_Time)					--L�y th�i gian tr߾c ��
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Last_Time,nowTime)						--C�p nh�t th�i gian hi�n t�i
	--******************--
	if nTime==0 then
		nTime=nowTime
	end
	--******************--
	local nTick=nowTime-nTime
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_nTick,nTick)
	local Exist_Time=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Tick_Fuben_Time)			--L�y th�i gian t�n t�i ph� b�n t�nh �n hi�n t�i
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Tick_Fuben_Time,Exist_Time+nTick)
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Step)
	--******************--
	if nStep==0 and Exist_Time>=5000 then													--Th�ng b�o c�n 1 gi�
		x910159_TipAllHuman(sceneId,x910159_g_Notices[1])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,1)
	elseif nStep==1 and Exist_Time>=1800000 then											--Th�ng b�o c�n 30 ph�t
		x910159_TipAllHuman(sceneId,x910159_g_Notices[2])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,2)
	elseif nStep==2 and Exist_Time>=2700000 then											--Th�ng b�o c�n 15 ph�t
		x910159_TipAllHuman(sceneId,x910159_g_Notices[3])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,3)
	elseif nStep==3 and Exist_Time>=3300000 then											--Th�ng b�o c�n 5 ph�t
		x910159_TipAllHuman(sceneId,x910159_g_Notices[4])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,4)
	elseif nStep==4 and Exist_Time>=3540000 then											--Th�ng b�o c�n 1 ph�t
		x910159_TipAllHuman(sceneId,x910159_g_Notices[5])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,5)
	elseif nStep==5 and Exist_Time>=3570000 then											--Th�ng b�o c�n 30 gi�y
		x910159_TipAllHuman(sceneId,x910159_g_Notices[6])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,6)
	elseif nStep==6 and Exist_Time>=3585000 then											--Th�ng b�o c�n 15 gi�y
		x910159_TipAllHuman(sceneId,x910159_g_Notices[7])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,7)
	elseif nStep==7 and Exist_Time>=3595000 then											--Th�ng b�o c�n 5 gi�y
		x910159_TipAllHuman(sceneId,x910159_g_Notices[8])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,8)
	elseif Exist_Time>=x910159_g_Fuben_Time then
		x910159_KickOutAllPlayer(sceneId)
	end
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910159_OnPlayerEnter(sceneId,selfId)

	--******************--
	local lastTime = GetMissionData( sceneId, selfId, MD_SHAOSHI_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_SHAOSHI_DAYTIME, lastTime )
	--SetMissionData(sceneId,selfId,MD_SHAOSHI_DAYTIME,GetDayTime())							--��nh d�u h�m nay �� tham gia ph� b�n
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910159_g_Fuben_X,x910159_g_Fuben_Y)		--Уt �i�m h�i sinh t�i ph� b�n
	--******************--
	SetUnitCampID(sceneId,selfId,selfId,109)
	--******************--
	
end
--**********************************--
--*          On Human Die          *--
--**********************************--
function x910159_OnHumanDie(sceneId,selfId,killerId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*            Creat NPC           *--
--**********************************--
function x910159_CreatNPC(sceneId)
	
	--******************--
	local Monk_Index=LuaFnCreateMonster(sceneId,x910159_g_Monk.Index,x910159_g_Monk.Pos_X,x910159_g_Monk.Pos_Y,3,0,x910159_g_Monk.ScriptID)	---Kh�i t�o NPC tri kh�ch t�ng
	SetCharacterName(sceneId,Monk_Index,x910159_g_Monk.Name)
	--******************--
	for i=1,getn(x910159_g_NPC_List) do
		local NPC_Index=LuaFnCreateMonster(sceneId,x910159_g_NPC_List[i].Index,x910159_g_NPC_List[i].Pos_X,x910159_g_NPC_List[i].Pos_Y,3,0,x910159_g_NPC_Script)
		SetCharacterName(sceneId,NPC_Index,x910159_g_NPC_List[i].Name)
	end
	--******************--
	
end
--**********************************--
--*      Jiu Mo Zhi Disciples      *--
--**********************************--
function x910159_JiuMoZhiDisciples(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	for i=1,getn(x910159_g_JiuMoZhi_Disciples) do
		for j=x910159_g_JiuMoZhi_Disciples[i].Pos_X_Start,x910159_g_JiuMoZhi_Disciples[i].Pos_X_Finish do
			local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_JiuMoZhi_Disciples[i].Index+nDec,j,x910159_g_JiuMoZhi_Disciples[i].Pos_Y,27,0,-1)--Kh�i t�o Th� ph�n �c t�ng
			SetCharacterName(sceneId,Monster_Index,x910159_g_JiuMoZhi_Disciples[i].Name)
			SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
		end
	end
	--******************--
	
end
--**********************************--
--*       Xing Xiu Disciples       *--
--**********************************--
function x910159_XingXiuDisciples(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local i=x910159_g_Xing_Xiu_Disciples.Pos_X_Start
	while i<x910159_g_Xing_Xiu_Disciples.Pos_X_Finish do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Xing_Xiu_Disciples.Index+nDec,i,x910159_g_Xing_Xiu_Disciples.Pos_Y,27,0,-1)--Kh�i t�o Ю t� Tinh T�c
		SetCharacterName(sceneId,Monster_Index,x910159_g_Xing_Xiu_Disciples.Name)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
		i=i+2
	end
	--******************--
	
end
--**********************************--
--*       Ding Chun Qiu Trap       *--
--**********************************--
function x910159_DingChunQiuTrap(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	for i=1,getn(x910159_g_DingChunQiu_Trap) do
		local Trap_Index=LuaFnCreateMonster(sceneId,x910159_g_DingChunQiu_Trap[i].Index+nDec,x910159_g_DingChunQiu_Trap[i].Pos_X,x910159_g_DingChunQiu_Trap[i].Pos_Y,3,0,-1)--Kh�i t�o Huy�t Ch� Vu C�
		SetCharacterName(sceneId,Trap_Index,x910159_g_DingChunQiu_Trap[i].Name)
		SetUnitCampID(sceneId,Trap_Index,Trap_Index,109)
		CreateSpecialObjByDataIndex(sceneId,Trap_Index,1023,x910159_g_DingChunQiu_Trap[i].Pos_X,x910159_g_DingChunQiu_Trap[i].Pos_Y,0)
	end
	--******************--
	
end
--**********************************--
--*   Jiu Mo Zhi Disciples Left    *--
--**********************************--
function x910159_JiuMoZhiDisciplesLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then
			for j=1,2 do
				if GetName(sceneId,MonsterId)==x910159_g_JiuMoZhi_Disciples[j].Name then
					return 1
				end
			end
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*  Ding Chun Qiu Disciples Left  *--
--**********************************--
function x910159_DingChunQiuDisciplesLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then
			for j=1,2 do
				if GetName(sceneId,MonsterId)==x910159_g_Xing_Xiu_Disciples.Name then
					return 1
				end
			end
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*           Jiu Mo Zhi           *--
--**********************************--
function x910159_JiuMoZhi(sceneId)
	
	--******************--
	local nLeft=x910159_JiuMoZhiDisciplesLeft(sceneId)										--Ki�m tra s� l��ng phi�n t�ng v� c�c t�ng c�n l�i
	--******************--
	if nLeft>0 then
		return
	end
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["JiuMoZhi"].Index+nDec,x910159_g_Boss_List["JiuMoZhi"].Pos_X,x910159_g_Boss_List["JiuMoZhi"].Pos_Y,27,0,x910159_g_Boss_List["JiuMoZhi"].ScriptID)--Kh�i t�o C�u Ma Tr�
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["JiuMoZhi"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["JiuMoZhi"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	CreateSpecialObjByDataIndex(sceneId,Monster_Index,x910159_g_Circle.Index,x910159_g_Circle.Pos_X,x910159_g_Circle.Pos_Y,0)
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)							--C�p nh�t thao t�c tr�n ph� b�n
	--******************--
	
end
--**********************************--
--*         Zhuang Ju Xian         *--
--**********************************--
function x910159_ZhuangJuXian(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["ZhuangJuXian"].Index+nDec,x910159_g_Boss_List["ZhuangJuXian"].Pos_X,x910159_g_Boss_List["ZhuangJuXian"].Pos_Y,27,0,x910159_g_Boss_List["ZhuangJuXian"].ScriptID)--Kh�i t�o Trang T� Hi�n
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["ZhuangJuXian"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["ZhuangJuXian"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	
end
--**********************************--
--*           Mu Rong Fu           *--
--**********************************--
function x910159_MuRongFu(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["MuRongFu"].Index+nDec,x910159_g_Boss_List["MuRongFu"].Pos_X,x910159_g_Boss_List["MuRongFu"].Pos_Y,27,0,x910159_g_Boss_List["MuRongFu"].ScriptID)--Kh�i t�o M� Dung Ph�c
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["MuRongFu"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["MuRongFu"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	
end
--**********************************--
--*          Ding Chun Qiu         *--
--**********************************--
function x910159_DingChunQiu(sceneId)
	
	--******************--
	local nLeft=x910159_DingChunQiuDisciplesLeft(sceneId)									--S� � t� Tinh T�c c�n l�i
	if nLeft>0 then
		return
	end
	--******************--
	x910159_DingChunQiuTrap(sceneId)														--Kh�i t�o Huy�t Ch� Vu C�
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["DingChunQiu"].Index+nDec,x910159_g_Boss_List["DingChunQiu"].Pos_X,x910159_g_Boss_List["DingChunQiu"].Pos_Y,27,0,x910159_g_Boss_List["DingChunQiu"].ScriptID)--Kh�i t�o �inh Xu�n Thu
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["DingChunQiu"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["DingChunQiu"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)							--C�p nh�t thao t�c tr�n ph� b�n
	--******************--
	
end
--**********************************--
--*          Xiao Yan Shan         *--
--**********************************--
function x910159_XiaoYanShan(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["XiaoYanShan"].Index+nDec,x910159_g_Boss_List["XiaoYanShan"].Pos_X,x910159_g_Boss_List["XiaoYanShan"].Pos_Y,27,0,x910159_g_Boss_List["XiaoYanShan"].ScriptID)--Kh�i t�o Ti�u Vi�n S�n
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["XiaoYanShan"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["XiaoYanShan"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	
end
--**********************************--
--*           Mu Rong Bo           *--
--**********************************--
function x910159_MuRongBo(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["MuRongBo"].Index+nDec,x910159_g_Boss_List["MuRongBo"].Pos_X,x910159_g_Boss_List["MuRongBo"].Pos_Y,27,0,x910159_g_Boss_List["MuRongBo"].ScriptID)			--Kh�i t�o M� Dung B�c
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["MuRongBo"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["MuRongBo"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	
end
--**********************************--
--*    Mu Rong Bo Xiao Yan Shan    *--
--**********************************--
function x910159_XiaoYanShan_MuRongBo(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L�y level ph� b�n
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["XiaoYanShan_Back"].Index+nDec,x910159_g_Boss_List["XiaoYanShan_Back"].Pos_X,x910159_g_Boss_List["XiaoYanShan_Back"].Pos_Y,27,0,x910159_g_Boss_List["XiaoYanShan_Back"].ScriptID)--Kh�i t�o Ti�u Vi�n S�n
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["XiaoYanShan_Back"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["XiaoYanShan_Back"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["MuRongBo_Back"].Index+nDec,x910159_g_Boss_List["MuRongBo_Back"].Pos_X,x910159_g_Boss_List["MuRongBo_Back"].Pos_Y,27,0,x910159_g_Boss_List["MuRongBo_Back"].ScriptID)			--Kh�i t�o M� Dung B�c
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["MuRongBo_Back"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["MuRongBo_Back"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	for i=1,x910159_g_YaoXing_Count do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_YaoXing["Mu Rong Bo"].Index+nDec,x910159_g_Boss_List["MuRongBo_Back"].Pos_X+random(5)-random(5),x910159_g_Boss_List["MuRongBo_Back"].Pos_Y+random(5)-random(5),10,0,x910159_g_YaoXing["Mu Rong Bo"].ScriptID)	--Kh�i t�o T�m ma M� Dung B�c
		SetCharacterName(sceneId,Monster_Index,x910159_g_YaoXing["Mu Rong Bo"].Name)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
		
		local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_YaoXing["Xiao Yan Shan"].Index+nDec,x910159_g_Boss_List["XiaoYanShan_Back"].Pos_X+random(5)-random(5),x910159_g_Boss_List["XiaoYanShan_Back"].Pos_Y+random(5)-random(5),10,0,x910159_g_YaoXing["Xiao Yan Shan"].ScriptID)	--Kh�i t�o T�m ma Ti�u Vi�n S�n
		SetCharacterName(sceneId,Monster_Index,x910159_g_YaoXing["Xiao Yan Shan"].Name)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	end
	--******************--
	
end
--**********************************--
--*      Kick Out All Player       *--
--**********************************--
function x910159_KickOutAllPlayer(sceneId)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	local Scene=LuaFnGetCopySceneData_Param(sceneId,3)
	local x=LuaFnGetCopySceneData_Param(sceneId,4)
	local y=LuaFnGetCopySceneData_Param(sceneId,5)
	for i=0,nHumanNum-1 do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 then
			CallScriptFunction((400900),"TransferFunc",sceneId,PlayerId,Scene,x,y)
		end
	end
	--******************--

end
--**********************************--
--*          Tip All Human         *--
--**********************************--
function x910159_TipAllHuman(sceneId,nTip)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1 do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,PlayerId)
		end
	end
	--******************--

end