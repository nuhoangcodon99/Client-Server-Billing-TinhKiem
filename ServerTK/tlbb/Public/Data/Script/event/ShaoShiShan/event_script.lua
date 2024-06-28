--Phø bän Thiªu Th¤t S½n
--Author: Hoàng Steven

--******************--
x910159_g_ScriptId=910159
--******************--
x910159_g_CopySceneType=FUBEN_SHAOSHISHAN										--Các tham s¯ cüa phø bän. Tham khäo "ScriptGlobal.lua"
--******************--
x910159_g_TickTime=1															--Th¶i gian hi®n tÕi cüa phø bän
x910159_g_NoUserTime=5000														--Th¶i gian lßu lÕi phø bän khi không còn ai trong phø bän (Ð½n v¸ Mili Giây)
x910159_g_Fuben_X=134															--Pos X ði¬m h°i sinh phø bän
x910159_g_Fuben_Y=225															--Pos Y ði¬m h°i sinh phø bän
x910159_g_Limit_Member=3														--S¯ lßþng thành viên t¯i thi¬u trong ðµi ngû
x910159_g_Limit_FuBenTimes=3 --so lan di phu ban toi da
x910159_g_Fuben_Scene="cangjingge_80JQTZ.nav"									--Load file Scene
x910159_g_Fuben_Time=3600000													--Th¶i gian phø bän
--******************--
x910159_g_Need_Level=80															--Level t¯i thi¬u tham gia phø bän
--******************--
x910159_g_Next_Step=8															--Thao tác trên phø bän
x910159_g_Fuben_Level=9															--C¤p ðµ phø bän
x910159_g_Last_Time=10															--Th¶i gian t°n tÕi phø bän
x910159_g_Fuben_Step=11															--Các bß¾c th¶i gian phø bän
x910159_g_Tick_Fuben_Time=12													--Th¶i gian t°n tÕi phø bän
x910159_g_Out_Timer=13															--Th¶i gian ðªm ngßþc r¶i phø bän
x910159_g_nTick=14																--Mili giây
--******************--
x910159_g_Monk={	Index=14277,	Name="Tri khách tång",	Pos_X=134,	Pos_Y=222,	ScriptID=910160	}
--******************--
x910159_g_JiuMoZhi_Disciples=													--Th± Ph°n phiên tång
{
	[1]	=	{	Index=14255,	Name="Th± Ph°n phiên tång",		Pos_X_Start=114,	Pos_Y=178,	Pos_X_Finish=121	},
	[2]	=	{	Index=14260,	Name="Phiên tång ch¤p sñ",		Pos_X_Start=114,	Pos_Y=176,	Pos_X_Finish=121	},
	[3]	=	{	Index=14255,	Name="Th± Ph°n phiên tång",		Pos_X_Start=126,	Pos_Y=178,	Pos_X_Finish=133	},
	[4]	=	{	Index=14260,	Name="Phiên tång ch¤p sñ",		Pos_X_Start=126,	Pos_Y=176,	Pos_X_Finish=133	},
	[5]	=	{	Index=14255,	Name="Th± Ph°n phiên tång",		Pos_X_Start=138,	Pos_Y=178,	Pos_X_Finish=146	},
	[6]	=	{	Index=14260,	Name="Phiên tång ch¤p sñ",		Pos_X_Start=138,	Pos_Y=176,	Pos_X_Finish=146	},
}
--******************--
x910159_g_Boss_List=
{
	["JiuMoZhi"]			=	{	Index=14245,	Name="Cßu Ma Trí",		Title="ÐÕi Luân Minh Vß½ng",		Pos_X=130,	Pos_Y=168,	ScriptID=910162		},	--Cßu Ma Trí
	["ZhuangJuXian"]		=	{	Index=14240,	Name="Trang Tø Hi«n",	Title="Chß·ng Bang Long Ð¥u",		Pos_X=67,	Pos_Y=121,	ScriptID=910163		},	--Trang Tø Hi«n
	["MuRongFu"]			=	{	Index=14235,	Name="Mµ Dung Phøc",	Title="Yªn Vß½ng H§u Du®",			Pos_X=195,	Pos_Y=86,	ScriptID=910164		},	--Mµ Dung Phøc
	["DingChunQiu"]			=	{	Index=14230,	Name="Ðinh Xuân Thu",	Title="Chß·ng môn phái Tinh Túc",	Pos_X=130,	Pos_Y=127,	ScriptID=910165		},	--Ðinh Xuân Thu
	["XiaoYanShan"]			=	{	Index=14220,	Name="Tiêu Vi­n S½n",	Title="LoÕn thª ¦n giä",			Pos_X=123,	Pos_Y=43,	ScriptID=910168		},	--Tiêu Vi­n S½n
	["MuRongBo"]			=	{	Index=14225,	Name="Mµ Dung Bác",		Title="Cô Tô Mµ Dung lão gia",		Pos_X=123,	Pos_Y=43,	ScriptID=910167		},	--Mµ Dung Bác
	["XiaoYanShan_Back"]	=	{	Index=14220,	Name="Tiêu Vi­n S½n",	Title="LoÕn thª ¦n giä",			Pos_X=121,	Pos_Y=43,	ScriptID=910169		},	--Tiêu Vi­n S½n (Back)
	["MuRongBo_Back"]		=	{	Index=14225,	Name="Mµ Dung Bác",		Title="Cô Tô Mµ Dung lão gia",		Pos_X=125,	Pos_Y=43,	ScriptID=910158		},	--Mµ Dung Bác (Back)
}
--******************--
x910159_g_Circle={	Index=1021,	Pos_X=130,	Pos_Y=168	}						--Ðài hiªn thân
--******************--
x910159_g_Xing_Xiu_Disciples={	Index=14349,	Name="Môn ð° phái Tinh Túc",	Pos_X_Start=118,	Pos_X_Finish=142,	Pos_Y=118	}
x910159_g_DingChunQiu_Trap=
{
	[1]={	Index=14278,	Name="Huyªt Chú Vu C±",	Pos_X=144,	Pos_Y=121	},
	[2]={	Index=14278,	Name="Huyªt Chú Vu C±",	Pos_X=116,	Pos_Y=121	},
	[3]={	Index=14278,	Name="Huyªt Chú Vu C±",	Pos_X=144,	Pos_Y=133	},
	[4]={	Index=14278,	Name="Huyªt Chú Vu C±",	Pos_X=116,	Pos_Y=133	},
	[5]={	Index=14278,	Name="Huyªt Chú Vu C±",	Pos_X=124,	Pos_Y=127	},
	[6]={	Index=14278,	Name="Huyªt Chú Vu C±",	Pos_X=136,	Pos_Y=127	},
}
--******************--
x910159_g_NPC_List=
{
	[1]	=	{	Index=10,	Name="Ðoàn Chính Thu¥n",	Pos_X=129,	Pos_Y=144	},
	[2]	=	{	Index=9479,	Name="PhÕm Hoa",			Pos_X=131,	Pos_Y=145	},
	[3]	=	{	Index=9489,	Name="Hoa Cách C¤n",		Pos_X=128,	Pos_Y=145	},
	[4]	=	{	Index=9469,	Name="Ba Thiên ThÕch",		Pos_X=131,	Pos_Y=146	},
	[5]	=	{	Index=9499,	Name="TrØ VÕn Lý",			Pos_X=128,	Pos_Y=146	},
	[6]	=	{	Index=9509,	Name="C± Ð¯c Thành",		Pos_X=131,	Pos_Y=147	},
	[7]	=	{	Index=9519,	Name="Phó Tß Quy",			Pos_X=128,	Pos_Y=147	},
	[8]	=	{	Index=9529,	Name="Chu Ðan Th¥n",		Pos_X=129,	Pos_Y=148	},
	[9]=	{	Index=10048,Name="Gia Lu§t MÕc Ca",		Pos_X=118,	Pos_Y=144	},
	[10]=	{	Index=254,	Name="Liêu Binh",			Pos_X=116,	Pos_Y=145	},
	[11]=	{	Index=254,	Name="Liêu Binh",			Pos_X=120,	Pos_Y=145	},
	[12]=	{	Index=254,	Name="Liêu Binh",			Pos_X=116,	Pos_Y=146	},
	[13]=	{	Index=254,	Name="Liêu Binh",			Pos_X=120,	Pos_Y=146	},
	[14]=	{	Index=254,	Name="Liêu Binh",			Pos_X=116,	Pos_Y=147	},
	[15]=	{	Index=254,	Name="Liêu Binh",			Pos_X=120,	Pos_Y=147	},
	[16]=	{	Index=6,	Name="A TØ",				Pos_X=118,	Pos_Y=148	},
	[17]=	{	Index=2,	Name="Hß Trúc",				Pos_X=142,	Pos_Y=144	},
	[18]=	{	Index=37,	Name="Lan Kiªm",			Pos_X=144,	Pos_Y=145	},
	[19]=	{	Index=37,	Name="Trúc Kiªm",			Pos_X=140,	Pos_Y=145	},
	[20]=	{	Index=286,	Name="Dß Bà",				Pos_X=144,	Pos_Y=146	},
	[21]=	{	Index=286,	Name="Vu Bà",				Pos_X=140,	Pos_Y=146	},
	[22]=	{	Index=301,	Name="Ð® tØ Thiên S½n",		Pos_X=144,	Pos_Y=147	},
	[23]=	{	Index=301,	Name="Ð® tØ Thiên S½n",		Pos_X=140,	Pos_Y=147	},
	[24]=	{	Index=37,	Name="Mai Kiªm",			Pos_X=142,	Pos_Y=148	},
	[25]=	{	Index=15,	Name="Vß½ng Ngæ Yên",		Pos_X=193,	Pos_Y=79	},
	[26]=	{	Index=0,	Name="Ðoàn Dñ",				Pos_X=196.5,Pos_Y=79	},
	[27]=	{	Index=1,	Name="Tiêu Phong",			Pos_X=74,	Pos_Y=134	},
	[28]=	{	Index=254,	Name="Liêu Binh",			Pos_X=72,	Pos_Y=135	},
	[29]=	{	Index=254,	Name="Liêu Binh",			Pos_X=76,	Pos_Y=135	},
	[30]=	{	Index=254,	Name="Liêu Binh",			Pos_X=72,	Pos_Y=136	},
	[31]=	{	Index=254,	Name="Liêu Binh",			Pos_X=76,	Pos_Y=136	},
	[32]=	{	Index=254,	Name="Liêu Binh",			Pos_X=72,	Pos_Y=137	},
	[33]=	{	Index=254,	Name="Liêu Binh",			Pos_X=76,	Pos_Y=137	},
	[34]=	{	Index=14201,Name="Toàn Quán Thanh",		Pos_X=61,	Pos_Y=134	},
	[35]=	{	Index=14312,Name="Ð® tØ Cái Bang",		Pos_X=63,	Pos_Y=135	},
	[36]=	{	Index=14312,Name="Ð® tØ Cái Bang",		Pos_X=65,	Pos_Y=135	},
	[37]=	{	Index=14312,Name="Ð® tØ Cái Bang",		Pos_X=63,	Pos_Y=136	},
	[38]=	{	Index=14312,Name="Ð® tØ Cái Bang",		Pos_X=65,	Pos_Y=136	},
	[39]=	{	Index=14312,Name="Ð® tØ Cái Bang",		Pos_X=63,	Pos_Y=137	},
	[40]=	{	Index=14312,Name="Ð® tØ Cái Bang",		Pos_X=65,	Pos_Y=137	},
	[41]=	{	Index=32179,Name="Ð® tØ Thiªu Lâm",		Pos_X=113,	Pos_Y=47	},
	[42]=	{	Index=32179,Name="Ð® tØ Thiªu Lâm",		Pos_X=136,	Pos_Y=47	},
	[43]=	{	Index=14294,Name="Täo Ð¸a Th¥n Tång",	Pos_X=121,	Pos_Y=33	},
	[44]=	{	Index=14295,Name="Ðoàn Diên Khánh",		Pos_X=125,	Pos_Y=56	},
	[45]=	{	Index=14296,Name="NhÕc Lão Tam",		Pos_X=125,	Pos_Y=57	},
	[46]=	{	Index=14297,Name="Vân Trung HÕc",		Pos_X=125,	Pos_Y=58	},
	[47]=	{	Index=14298,Name="Ð£ng Bách Xuyên",		Pos_X=135,	Pos_Y=56	},
	[48]=	{	Index=14299,Name="Bao B¤t Ð°ng",		Pos_X=135,	Pos_Y=57	},
	[49]=	{	Index=14300,Name="Phong Ba Ác",			Pos_X=135,	Pos_Y=58	},
	[50]=	{	Index=14207,Name="Huy«n NÕn",			Pos_X=130,	Pos_Y=83	},
	[51]=	{	Index=32179,Name="Ð® tØ Thiªu Lâm",		Pos_X=132,	Pos_Y=84	},
	[52]=	{	Index=32179,Name="Ð® tØ Thiªu Lâm",		Pos_X=128,	Pos_Y=84	},
	[53]=	{	Index=32179,Name="Ð® tØ Thiªu Lâm",		Pos_X=125,	Pos_Y=205	},
	[54]=	{	Index=32179,Name="Ð® tØ Thiªu Lâm",		Pos_X=135,	Pos_Y=205	},
	[55]=	{	Index=32189,Name="Ð® tØ Minh Giáo",		Pos_X=125,	Pos_Y=206	},
	[56]=	{	Index=32189,Name="Ð® tØ Minh Giáo",		Pos_X=135,	Pos_Y=206	},
	[57]=	{	Index=32199,Name="Ð® tØ Cái Bang",		Pos_X=125,	Pos_Y=207	},
	[58]=	{	Index=32199,Name="Ð® tØ Cái Bang",		Pos_X=135,	Pos_Y=207	},
	[59]=	{	Index=32209,Name="Ð® tØ Võ Ðang",		Pos_X=125,	Pos_Y=208	},
	[60]=	{	Index=32209,Name="Ð® tØ Võ Ðang",		Pos_X=135,	Pos_Y=208	},
	[61]=	{	Index=32219,Name="Ð® tØ Nga My",		Pos_X=125,	Pos_Y=209	},
	[62]=	{	Index=32219,Name="Ð® tØ Nga My",		Pos_X=135,	Pos_Y=209	},
	[63]=	{	Index=32229,Name="Ð® tØ Tinh Túc",		Pos_X=125,	Pos_Y=210	},
	[64]=	{	Index=32229,Name="Ð® tØ Tinh Túc",		Pos_X=135,	Pos_Y=210	},
	[65]=	{	Index=32239,Name="Ð® tØ Thiên Long",	Pos_X=125,	Pos_Y=211	},
	[66]=	{	Index=32239,Name="Ð® tØ Thiên Long",	Pos_X=135,	Pos_Y=211	},
	[67]=	{	Index=32249,Name="Ð® tØ Thiên S½n",		Pos_X=125,	Pos_Y=212	},
	[68]=	{	Index=32249,Name="Ð® tØ Thiên S½n",		Pos_X=135,	Pos_Y=212	},
	[69]=	{	Index=32259,Name="Ð® tØ Tiêu Dao",		Pos_X=125,	Pos_Y=213	},
	[70]=	{	Index=32259,Name="Ð® tØ Tiêu Dao",		Pos_X=135,	Pos_Y=213	},
	[71]=	{	Index=5379,	Name="Ð® tØ Mµ Dung",		Pos_X=125,	Pos_Y=214	},
	[72]=	{	Index=5379,	Name="Ð® tØ Mµ Dung",		Pos_X=135,	Pos_Y=214	},
	[73]=	{	Index=16470,Name="Ð® tØ Ðß¶ng Môn",		Pos_X=125,	Pos_Y=215	},
	[74]=	{	Index=16470,Name="Ð® tØ Ðß¶ng Môn",		Pos_X=135,	Pos_Y=215	},
}
--******************--
x910159_g_NPC_Script=910166
--******************--
x910159_g_Notices=
{
	[1]="Phø bän hi®n tÕi s¨ ðóng sau 1 gi¶!",
	[2]="Phø bän hi®n tÕi s¨ ðóng sau 30 phút!",
	[3]="Phø bän hi®n tÕi s¨ ðóng sau 15 phút!",
	[4]="Phø bän hi®n tÕi s¨ ðóng sau 5 phút!",
	[5]="Phø bän hi®n tÕi s¨ ðóng sau 1 phút!",
	[6]="Phø bän hi®n tÕi s¨ ðóng sau 30 giây!",
	[7]="Phø bän hi®n tÕi s¨ ðóng sau 15 giây!",
	[8]="Phø bän hi®n tÕi s¨ ðóng sau 5 giây!",
	[9]="Nhi®m vø hoàn thành, các hÕ s¨ r¶i khöi ðây sau 30 giây!",
}
--******************--
x910159_g_YaoXing_Count=10
--******************--
x910159_g_YaoXing=
{
	["Mu Rong Bo"]		=	{	Index=14370,	Name="Tâm Ma",	ScriptID=910156	},
	["Xiao Yan Shan"]	=	{	Index=14375,	Name="Tâm Ma",	ScriptID=910157	},
}
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910159_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910159_g_ScriptId,"Khiêu chiªn Thiªu Th¤t S½n",6,1)		--Khiêu chiªn
	AddNumText(sceneId,x910159_g_ScriptId,"Thiªu Lâm Tñ - Thiªu Th¤t S½n",11,0)	--Tìm hi¬u Thiªu Th¤t S½n
	AddNumText(sceneId,x910159_g_ScriptId,"TÕi hÕ chï ði ngang qua...",-1,2)	--R¶i bö
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
			AddText(sceneId,"Cái Bang phát Thi®p Anh Hùng, m¶i các hào ki®t võ lâm Trung Nguyên t« tñu · Thiªu Lâm, Toàn Quán Thanh dñ ð¸nh lþi døng c½ hµi l¥n này khiªn cho Cái Bang gây áp lñc cho Thiªu Lâm ð¬ tr· thành Võ Lâm Ð® Nh¤t, n¡m trong tay cä võ lâm Trung Nguyên.")
			AddText(sceneId,"Không nhß mong mu¯n, sñ xu¤t hi®n cüa Tiêu Phong, ðã khiªn cho chuy®n này có biªn chuy¬n, · trên Thiªu Th¤t S½n, ba ngß¶i Tiêu Phong, Ðoàn Dñ và Hß Trúc kªt nghîa kim lan, k« vai chiªn ð¤u v¾i Trang Tø Hi«n, Ðinh Xuân Thu và Mµ Dung Phøc, giúp Thiªu Lâm vßþt qua kiªp nÕn.")
			AddText(sceneId,"Sau ðó Tiêu Vi­n S½n và Mµ Dung Bác ðµt ngµt xu¤t hi®n, khiªn cho chân tß¾ng sñ vi®c huyªt t¦y NhÕn Môn Quan nåm ðó b¸ bÕi lµ trß¾c m£t m÷i ngß¶i trong thiên hÕ, nhßng Täo Ð¸a Th¥n Tång ¦n cß trong Tàng Kinh Các ðã dùng thu§t Sinh TØ Luân H°i Quy TÑc, ðã hóa giäi huyªt häi thâm thù kéo dài nhi«u nåm giæa cha con h÷ Tiêu và gia tµc Mµ Dung.")
			AddText(sceneId,"Ngß¶i ch½i#G c¤p 80#W tr· lên có th¬ tham gia.")
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
		x910159_MakeCopyScene(sceneId,selfId)									--Kh·i tÕo phø bän
		
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
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ngß¶i ch½i này không có ðµi ngû
		return 0,"Các hÕ c¥n gia nh§p vào mµt ðµi ngû t¯i thi¬u #G"..x910159_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ngß¶i ch½i không phäi ðµi trß·ng
		return 0,"Chï có ðµi trß·ng m¾i có th¬ quyªt ð¸nh có tham gia hay không. Các hÕ hãy g÷i ðµi trß·ng cüa các hÕ ðªn nói chuy®n v¾i ta!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910159_g_Limit_Member then					--S¯ lßþng thành viên không ðü
		return 0,"T± ðµi c¥n có t¯i thi¬u #G"..x910159_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--Ðµi ngû có thành viên không · g¥n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Các hÕ c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² ta m¾i có th¬ tiªn vào phø bän!"
	end
	--******************--
	if GetMissionData(sceneId,selfId,MD_SHAOSHI_DAYTIME)==GetDayTime() then		--Ðã tham gia phø bän hôm nay
		--return 0,"Ngày hôm nay các hÕ ðã tham gia phø bän này r°i!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910159_g_Need_Level then					--Có thành viên không ðü c¤p ðµ yêu c¥u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c¤p ðµ không ðü c¤p #G"..x910159_g_Need_Level..", không ðü ði«u ki®n tham gia phø bän!"
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
		
		if lastDayCount >= x910159_g_Limit_FuBenTimes  then --Có thành viên ðã tham gia phø bän này r°i
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." trong ngày hôm nay ðã tham gia phø bän này r°i!"
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
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID ðµi trß·ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910159_g_NoUserTime)					--Th¶i gian lßu phø bän khi không còn ai
	LuaFnSetCopySceneData_Timer(sceneId,x910159_g_TickTime)								--Th¶i gian phø bän
	LuaFnSetCopySceneData_Param(sceneId,0,x910159_g_CopySceneType)						--Set thông s¯ phø bän (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910159_g_ScriptId)							--ID script phø bän
	LuaFnSetCopySceneData_Param(sceneId,2,0)
	LuaFnSetCopySceneData_Param(sceneId,3,sceneId)										--Cänh tßþng hi®n tÕi
	LuaFnSetCopySceneData_Param(sceneId,4,x)											--T÷a ðµ X cüa ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,5,y)											--T÷a ðµ Y cüa ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,6,GetTeamId(sceneId,selfId))					--ID nhóm ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,7,0)
	--******************--
	for i=8,31 do
		LuaFnSetCopySceneData_Param(sceneId,i,0)										--Reset lÕi các thông s¯ cho phø bän
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
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Level,nDec)						--Set Level phø bän
	--******************--
	local bRetSceneID=LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!")									--S¯ bän sao quá täi
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã quá täi, ð« ngh¸ lát næa thØ lÕi!")	--Có th¬ tÕo bän sao m¾i
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
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Thông báo kh·i tÕo phø bän
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid);
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910159_g_Fuben_X,x910159_g_Fuben_Y) 			--Ðßa t¤t cä thành viên nhóm ðªn phø bän
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910159_OnCopySceneTimer(sceneId,nowTime)											--Hàm này check liên tøc m²i Mili giây khi phø bän còn t°n tÕi

	--******************--
	x910159_ShowFubenTimer(sceneId,nowTime)													--Thông báo th¶i gian phø bän
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Next_Step)					--L¤y thao tác trên phø bän
	if nStep==0 then																		--L¥n ð¥u trong phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,1)							--C§p nh§t thao tác trên phø bän
		x910159_JiuMoZhiDisciples(sceneId)													--Kh·i tÕo tr§n chiªn ð¥u tiên v¾i tín ð° cüa Cßu Ma Trí
		x910159_CreatNPC(sceneId)															--Kh·i tÕo các NPC
	elseif nStep==1 then																	--Cßu Ma Trí
		x910159_JiuMoZhi(sceneId)															--Kh·i tÕo tr§n chiªn ð¥u tiên v¾i Cßu Ma Trí
	elseif nStep==2 then																	--Trang Tø Hi«n
		x910159_ZhuangJuXian(sceneId)														--Kh·i tÕo tr§n chiªn ð¥u tiên v¾i Trang Tø Hi«n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C§p nh§t thao tác trên phø bän
	elseif nStep==3 then																	--Trang Tø Hi«n
		x910159_MuRongFu(sceneId)															--Kh·i tÕo tr§n chiªn ð¥u tiên v¾i Mµ Dung Phøc
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C§p nh§t thao tác trên phø bän
	elseif nStep==4 then																	--Ð® tØ Tinh Túc
		x910159_XingXiuDisciples(sceneId)													--Kh·i tÕo tr§n chiªn v¾i các ð® tØ Tinh Túc
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,5)							--C§p nh§t thao tác trên phø bän
	elseif nStep==5 then																	--Ðinh Xuân Thu
		x910159_DingChunQiu(sceneId)														--Kh·i tÕo tr§n chiªn v¾i Ðinh Xuân Thu
	elseif nStep==6 then																	--Tiêu Vi­n S½n
		x910159_XiaoYanShan(sceneId)														--Kh·i tÕo tr§n chiªn ð¥u tiên v¾i Tiêu Vi­n S½n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C§p nh§t thao tác trên phø bän
	elseif nStep==7 then																	--Mµ Dung Bác
		x910159_MuRongBo(sceneId)															--Kh·i tÕo tr§n chiªn ð¥u tiên v¾i Mµ Dung Bác
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C§p nh§t thao tác trên phø bän
	elseif nStep==8 then																	--Mµ Dung Bác và Tiêu Vi­n S½n
		x910159_XiaoYanShan_MuRongBo(sceneId)												--Kh·i tÕo tr§n chiªn cu¯i v¾i Mµ Dung Bác và Tiêu Vi­n S½n
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)						--C§p nh§t thao tác trên phø bän
	elseif nStep==9 then
		x910159_TipAllHuman(sceneId,x910159_g_Notices[9])									--Thông báo hoàn thành nhi®m vø
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,10)							--C§p nh§t bß¾c hoÕt ðµng phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Out_Timer,30000)						--C§p nh§t th¶i gian r¶i phø bän
	elseif nStep==10 then
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Out_Timer)
		local nTick=LuaFnGetCopySceneData_Param(sceneId,x910159_g_nTick)
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Out_Timer,nTime-nTick)
		if nTime-nTick<=0 then
			x910159_KickOutAllPlayer(sceneId)												--Ðßa ngß¶i ch½i ra khöi map
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
	local str=format("#PHôm nay v¸ thiªu hi®p #{_INFOUSR%s} cùng ð°ng ðµi #PðÕi náo #GThiªu Th¤t S½n#P. H§u sinh khä úy quä không sai. Nh£t lên v§t ph¦m #{_INFOMSG%s}#P, lòng vui m×ng khó tä!",Player_Name,Item_Infor)
	--******************--
	AddGlobalCountNews(sceneId,str)
	--******************--
	
end
--**********************************--
--*           Tick Timer           *--
--**********************************--
function x910159_TickTimer(sceneId,nowTime)
	
	--******************--
	local Last_Time=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Last_Time)			--L¤y th¶i gian trß¾c ðó
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Last_Time,nowTime)					--C§p nh§t th¶i gian hi®n tÕi cüa phø bän
	return nowTime-Last_Time															--L¤y mili giây hi®n tÕi tính t× th¶i gian trß¾c
	--******************--
	
end
--**********************************--
--*        Show Fuben Timer        *--
--**********************************--
function x910159_ShowFubenTimer(sceneId,nowTime)

	--******************--
	local nTime=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Last_Time)					--L¤y th¶i gian trß¾c ðó
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Last_Time,nowTime)						--C§p nh§t th¶i gian hi®n tÕi
	--******************--
	if nTime==0 then
		nTime=nowTime
	end
	--******************--
	local nTick=nowTime-nTime
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_nTick,nTick)
	local Exist_Time=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Tick_Fuben_Time)			--L¤y th¶i gian t°n tÕi phø bän tính ðªn hi®n tÕi
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Tick_Fuben_Time,Exist_Time+nTick)
	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Step)
	--******************--
	if nStep==0 and Exist_Time>=5000 then													--Thông báo còn 1 gi¶
		x910159_TipAllHuman(sceneId,x910159_g_Notices[1])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,1)
	elseif nStep==1 and Exist_Time>=1800000 then											--Thông báo còn 30 phút
		x910159_TipAllHuman(sceneId,x910159_g_Notices[2])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,2)
	elseif nStep==2 and Exist_Time>=2700000 then											--Thông báo còn 15 phút
		x910159_TipAllHuman(sceneId,x910159_g_Notices[3])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,3)
	elseif nStep==3 and Exist_Time>=3300000 then											--Thông báo còn 5 phút
		x910159_TipAllHuman(sceneId,x910159_g_Notices[4])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,4)
	elseif nStep==4 and Exist_Time>=3540000 then											--Thông báo còn 1 phút
		x910159_TipAllHuman(sceneId,x910159_g_Notices[5])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,5)
	elseif nStep==5 and Exist_Time>=3570000 then											--Thông báo còn 30 giây
		x910159_TipAllHuman(sceneId,x910159_g_Notices[6])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,6)
	elseif nStep==6 and Exist_Time>=3585000 then											--Thông báo còn 15 giây
		x910159_TipAllHuman(sceneId,x910159_g_Notices[7])
		LuaFnSetCopySceneData_Param(sceneId,x910159_g_Fuben_Step,7)
	elseif nStep==7 and Exist_Time>=3595000 then											--Thông báo còn 5 giây
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
	--SetMissionData(sceneId,selfId,MD_SHAOSHI_DAYTIME,GetDayTime())							--Ðánh d¤u hôm nay ðã tham gia phø bän
	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910159_g_Fuben_X,x910159_g_Fuben_Y)		--Ð£t ði¬m h°i sinh tÕi phø bän
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
	local Monk_Index=LuaFnCreateMonster(sceneId,x910159_g_Monk.Index,x910159_g_Monk.Pos_X,x910159_g_Monk.Pos_Y,3,0,x910159_g_Monk.ScriptID)	---Kh·i tÕo NPC tri khách tång
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	for i=1,getn(x910159_g_JiuMoZhi_Disciples) do
		for j=x910159_g_JiuMoZhi_Disciples[i].Pos_X_Start,x910159_g_JiuMoZhi_Disciples[i].Pos_X_Finish do
			local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_JiuMoZhi_Disciples[i].Index+nDec,j,x910159_g_JiuMoZhi_Disciples[i].Pos_Y,27,0,-1)--Kh·i tÕo Th± ph°n ác tång
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local i=x910159_g_Xing_Xiu_Disciples.Pos_X_Start
	while i<x910159_g_Xing_Xiu_Disciples.Pos_X_Finish do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Xing_Xiu_Disciples.Index+nDec,i,x910159_g_Xing_Xiu_Disciples.Pos_Y,27,0,-1)--Kh·i tÕo Ð® tØ Tinh Túc
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	for i=1,getn(x910159_g_DingChunQiu_Trap) do
		local Trap_Index=LuaFnCreateMonster(sceneId,x910159_g_DingChunQiu_Trap[i].Index+nDec,x910159_g_DingChunQiu_Trap[i].Pos_X,x910159_g_DingChunQiu_Trap[i].Pos_Y,3,0,-1)--Kh·i tÕo Huyªt Chú Vu C±
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
	local nLeft=x910159_JiuMoZhiDisciplesLeft(sceneId)										--Ki¬m tra s¯ lßþng phiên tång và các tång còn lÕi
	--******************--
	if nLeft>0 then
		return
	end
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["JiuMoZhi"].Index+nDec,x910159_g_Boss_List["JiuMoZhi"].Pos_X,x910159_g_Boss_List["JiuMoZhi"].Pos_Y,27,0,x910159_g_Boss_List["JiuMoZhi"].ScriptID)--Kh·i tÕo Cßu Ma Trí
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["JiuMoZhi"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["JiuMoZhi"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	CreateSpecialObjByDataIndex(sceneId,Monster_Index,x910159_g_Circle.Index,x910159_g_Circle.Pos_X,x910159_g_Circle.Pos_Y,0)
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)							--C§p nh§t thao tác trên phø bän
	--******************--
	
end
--**********************************--
--*         Zhuang Ju Xian         *--
--**********************************--
function x910159_ZhuangJuXian(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["ZhuangJuXian"].Index+nDec,x910159_g_Boss_List["ZhuangJuXian"].Pos_X,x910159_g_Boss_List["ZhuangJuXian"].Pos_Y,27,0,x910159_g_Boss_List["ZhuangJuXian"].ScriptID)--Kh·i tÕo Trang Tø Hi«n
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["MuRongFu"].Index+nDec,x910159_g_Boss_List["MuRongFu"].Pos_X,x910159_g_Boss_List["MuRongFu"].Pos_Y,27,0,x910159_g_Boss_List["MuRongFu"].ScriptID)--Kh·i tÕo Mµ Dung Phøc
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
	local nLeft=x910159_DingChunQiuDisciplesLeft(sceneId)									--S¯ ð® tØ Tinh Túc còn lÕi
	if nLeft>0 then
		return
	end
	--******************--
	x910159_DingChunQiuTrap(sceneId)														--Kh·i tÕo Huyªt Chú Vu C±
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["DingChunQiu"].Index+nDec,x910159_g_Boss_List["DingChunQiu"].Pos_X,x910159_g_Boss_List["DingChunQiu"].Pos_Y,27,0,x910159_g_Boss_List["DingChunQiu"].ScriptID)--Kh·i tÕo Ðinh Xuân Thu
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["DingChunQiu"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["DingChunQiu"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910159_g_Next_Step,100)							--C§p nh§t thao tác trên phø bän
	--******************--
	
end
--**********************************--
--*          Xiao Yan Shan         *--
--**********************************--
function x910159_XiaoYanShan(sceneId)
	
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["XiaoYanShan"].Index+nDec,x910159_g_Boss_List["XiaoYanShan"].Pos_X,x910159_g_Boss_List["XiaoYanShan"].Pos_Y,27,0,x910159_g_Boss_List["XiaoYanShan"].ScriptID)--Kh·i tÕo Tiêu Vi­n S½n
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["MuRongBo"].Index+nDec,x910159_g_Boss_List["MuRongBo"].Pos_X,x910159_g_Boss_List["MuRongBo"].Pos_Y,27,0,x910159_g_Boss_List["MuRongBo"].ScriptID)			--Kh·i tÕo Mµ Dung Bác
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
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910159_g_Fuben_Level)					--L¤y level phø bän
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["XiaoYanShan_Back"].Index+nDec,x910159_g_Boss_List["XiaoYanShan_Back"].Pos_X,x910159_g_Boss_List["XiaoYanShan_Back"].Pos_Y,27,0,x910159_g_Boss_List["XiaoYanShan_Back"].ScriptID)--Kh·i tÕo Tiêu Vi­n S½n
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["XiaoYanShan_Back"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["XiaoYanShan_Back"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_Boss_List["MuRongBo_Back"].Index+nDec,x910159_g_Boss_List["MuRongBo_Back"].Pos_X,x910159_g_Boss_List["MuRongBo_Back"].Pos_Y,27,0,x910159_g_Boss_List["MuRongBo_Back"].ScriptID)			--Kh·i tÕo Mµ Dung Bác
	SetCharacterName(sceneId,Monster_Index,x910159_g_Boss_List["MuRongBo_Back"].Name)
	SetCharacterTitle(sceneId,Monster_Index,x910159_g_Boss_List["MuRongBo_Back"].Title)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	for i=1,x910159_g_YaoXing_Count do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_YaoXing["Mu Rong Bo"].Index+nDec,x910159_g_Boss_List["MuRongBo_Back"].Pos_X+random(5)-random(5),x910159_g_Boss_List["MuRongBo_Back"].Pos_Y+random(5)-random(5),10,0,x910159_g_YaoXing["Mu Rong Bo"].ScriptID)	--Kh·i tÕo Tâm ma Mµ Dung Bác
		SetCharacterName(sceneId,Monster_Index,x910159_g_YaoXing["Mu Rong Bo"].Name)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
		
		local Monster_Index=LuaFnCreateMonster(sceneId,x910159_g_YaoXing["Xiao Yan Shan"].Index+nDec,x910159_g_Boss_List["XiaoYanShan_Back"].Pos_X+random(5)-random(5),x910159_g_Boss_List["XiaoYanShan_Back"].Pos_Y+random(5)-random(5),10,0,x910159_g_YaoXing["Xiao Yan Shan"].ScriptID)	--Kh·i tÕo Tâm ma Tiêu Vi­n S½n
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