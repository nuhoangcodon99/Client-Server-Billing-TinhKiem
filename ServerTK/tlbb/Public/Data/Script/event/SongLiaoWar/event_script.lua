--Chi�n tr߶ng T�ng Li�u
--Author: Kenvin S�i

--************************--
x910072_g_ScriptId=910072							--ID Script
--************************--
x910072_g_On_Event_Time=21 							--Th�i gian chi�n tr߶ng
x910072_g_ID_Map=314								--ID map chi�n tr߶ng
--************************--
x910072_g_CampID_Song=10							--Tr�ng th�i chi�n �u b�n T�ng
x910072_g_CampID_Liao=11							--Tr�ng th�i chi�n �u b�n Li�u
--************************--
x910072_g_Pos_Song = {
	["X"]=36,										--Pos X T�ng	
	["Y"]=28										--Pos Y T�ng
}

x910072_g_Pos_Liao = {
	["X"]=213,										--Pos X Li�u	
	["Y"]=219										--Pos Y Li�u
} 		
--************************--
x910072_g_Flag_Song=0								--��nh d�u phe T�ng
x910072_g_Flag_Liao=1								--��nh d�u phe Li�u
--************************--
x910072_g_Map_Out=1									--ID map r�i kh�i chi�n tr߶ng
x910072_g_Out_Pos_X=291								--T�a � X
x910072_g_Out_Pos_Y=239								--T�a � Y
--************************--
x910072_g_LimitedMember=5							--S� ng߶i t�i thi�u m�i b�n
x910072_g_MemberCompare=10							--е ch�nh l�ch t�i �a gi�a qu�n s� 2 b�n
--************************--
x910072_g_Activity_Index=38							--��nh d�u ho�t �ng T�ng Li�u
x910072_g_Activity_Number_Param=5					--Param Activity
x910072_g_Activity_Time=floor(3900*1000)			--Th�i gian ho�t �ng T�ng Li�u
--************************--
x910072_g_Activity_Song_Point=0						--�i�m s� b�n T�ng
x910072_g_Activity_Liao_Point=1						--�i�m s� b�n Li�u
x910072_g_Activity_Song_Mem=2						--Qu�n s� b�n T�ng
x910072_g_Activity_Liao_Mem=3						--Qu�n s� b�n Li�u
--************************--
x910072_g_TestMode=0								--Test mode (1~Enable, 0~Disable)
x910072_g_GMName="GM"							--T�n nh�n v�t GM ph� tr�ch test
x910072_g_GMName1="gm"							--T�n nh�n v�t GM ph� tr�ch test
x910072_g_GMName2="gm"							--T�n nh�n v�t GM ph� tr�ch test
--************************--
x910072_g_Human_List={}								--M�ng l�u s� ng߶i ch�i trong chi�n tr߶ng
x910072_g_LimitPointPerKill=5000					--Gi�i h�n s� �i�m t�ch l�y t�i �a ��t ���c khi gi�t ng߶i ch�i (Gi� tr� nh� nh�t c�a �i�m hi�n t�i ng߶i ch�i b� gi�t v�i gi� tr� n�y)
--************************--
x910072_g_Title_List=
{
	{	Title="#W%s s� binh",			Point_Needed=0		},
	{	Title="#G%s hi�u �y",			Point_Needed=1000	},
	{	Title="#B%s th�ng l�nh",		Point_Needed=5000	},
	{	Title="#cff6633%s ph� t߾ng",	Point_Needed=10000	},
	{	Title="#cFF0000%s ��i t߾ng",	Point_Needed=15000	},
	{	Title="#Y%s nguy�n so�i",		Point_Needed=30000	},
}
--************************--
x910072_g_Gift={																				--Ph�n th߷ng
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	30503137,	--Th�i trang ph�i s�c gia c�ng ph�
	30503136,	--Th�i trang ph�i s�c thanh tr� ph�
	30503135,	--Th�i trang ph�i s�c �i�m xuy�t ph�
	30503134,	--Kim thoa
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503061,	--Trang b� tinh th�ng ph�
	30010144,	--CNP C�
}
--************************--

--*****************************--
--*       On Enumerate        *--
--*****************************--
function x910072_OnEnumerate(sceneId,selfId,targetId)

	--*****************--
	local Last_Time_Rank=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_RANK)
	local nHours=GetHour()
	local nMinutes=GetMinute()
	if Last_Time_Rank>0 then
		AddNumText(sceneId,x910072_g_ScriptId,"Nh�n ph�n th߷ng l�n tr߾c",6,2)
	elseif (nHours==x910072_g_On_Event_Time-1 and nMinutes>=30) or x910072_g_TestMode==1 then
		AddText(sceneId,"#YHi�n t�i qu�n s� hai b�n nh� sau:")
		AddText(sceneId,"    B�n #GT�ng#W l� #G"..x910072_CheckSongMember(sceneId).."#W ng߶i.\n    B�n #GLi�u#W l� #G"..x910072_CheckLiaoMember(sceneId).."#W ng߶i.")
		AddNumText(sceneId,x910072_g_ScriptId,"B�o danh chi�n tr߶ng T�ng Li�u",6,0)
	else
		AddText(sceneId,"Ho�t �ng b�t �u v�o #G19 gi�#W m�i ng�y, th�i gian b�o danh l� #G30 ph�t#W tr߾c khi khai m� chi�n tr߶ng. Hi�n ch�a �n gi� b�o danh, c�c h� tr� l�i sau!")
	end
	AddNumText(sceneId,x910072_g_ScriptId,"V� chi�n tr߶ng T�ng Li�u",11,5)
	--*****************--
	if x910072_g_TestMode==1 and (strfind(GetName(sceneId,selfId),x910072_g_GMName) or strfind(GetName(sceneId,selfId),x910072_g_GMName1) or strfind(GetName(sceneId,selfId),x910072_g_GMName2)) then	
		AddNumText(sceneId,x910072_g_ScriptId,"V�o chi�n tr߶ng T�ng Li�u",6,6)
	end
	--*****************--
	
end
--*****************************--
--*     On Default Event      *--
--*****************************--
function x910072_OnDefaultEvent(sceneId,selfId,targetId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Phe #GT�ng#W v� phe #GLi�u#W �u kh�ng ch�u nh߶ng nh�n l�n nhau. Nh�n s� v� l�m giang h� ch� ���c ph�p ch�n m�t phe m� th�i!")
			AddText(sceneId,"#YHi�n t�i qu�n s� hai b�n nh� sau:")
			AddText(sceneId,"    B�n #GT�ng#W l� #G"..x910072_CheckSongMember(sceneId).."#W ng߶i.\n    B�n #GLi�u#W l� #G"..x910072_CheckLiaoMember(sceneId).."#W ng߶i.")
			AddNumText(sceneId,x910072_g_ScriptId,"Gia nh�p #GT�ng",6,3)
			AddNumText(sceneId,x910072_g_ScriptId,"Gia nh�p #GLi�u",6,4)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key == 2 then
		
		x910072_RecieveBonus(sceneId,selfId,targetId)										--Nh�n ph�n th߷ng l�n tr߾c
		
	end
	--*****************--
	if key == 3 then
		
		SetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG,x910072_g_Flag_Song)					--Ng߶i ch�i gia nh�p qu�n T�ng
		local Song_Member=x910072_CheckSongMember(sceneId)
		BeginEvent(sceneId)
			AddText(sceneId,"Qu�n #GT�ng#W hi�n c� #G"..Song_Member.."#W chi�n binh.")
			AddText(sceneId,"C�c h� �� ��ng k� gia nh�p qu�n #GT�ng#W. Tuy nhi�n n�u mu�n ��ng k� l�i, c� th� �i tho�i v�i ta m�t l�n n�a!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key == 4 then
		
		SetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG,x910072_g_Flag_Liao)					--Ng߶i ch�i gia nh�p qu�n Li�u
		local Liao_Member=x910072_CheckLiaoMember(sceneId)
		BeginEvent(sceneId)
			AddText(sceneId,"Qu�n #GLi�u#W hi�n c� #G"..Liao_Member.."#W chi�n binh.")
			AddText(sceneId,"C�c h� �� ��ng k� gia nh�p qu�n #GLi�u#W. Tuy nhi�n n�u mu�n ��ng k� l�i, c� th� �i tho�i v�i ta m�t l�n n�a!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key==5 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Th�i gian g�n ��y, hai n߾c #GT�ng Li�u#W chi�n tranh li�n mi�n, khi�n b� t�nh l�m than, cu�c s�ng t�i c�c nay c�ng kh� kh�n h�n.")
			AddText(sceneId,"V�i b�n ph�n l� nh�n s� v� l�m giang h�, c�c v� anh h�ng h�y tham gia tr�n chi�n n�y, ��ng v� b�n c�ng l�, d�p �ch c�ng nhanh th� b�ch t�nh c�ng �� kh�.")
			AddText(sceneId,"Ь tham gia chi�n �u, c�c h� bu�c ph�i �u qu�n cho b�n #GT�ng#W ho�c #GLi�u#W.")
			AddText(sceneId,"Sau khi b�o danh th�nh c�ng, �n ��ng th�i gian, c�c h� s� ���c d�ch chuy�n v�o chi�n tr߶ng #GTr�c L�c#W kh�i l�a kh�c li�t.")
			AddText(sceneId,"H�y c� g�ng l�p c�ng b�ng vi�c ti�u di�t c�c �i th� phe �ch v� d�nh vinh quang v� cho phe c�a m�nh.")
			AddText(sceneId,"Cu�i tr�n chi�n b�n n�o th�ng cu�c s� nh�n ���c ph�n th߷ng l�n kinh nghi�m v� #G�i�m t�ch l�y chi�n tr߶ng#W. Ngo�i ra c�n c� theo th� h�ng trong tr�n chi�n c�a m�nh, c�c h� c�ng s� nh�n ���c m�t l��ng kinh nghi�m v� #G�i�m t�ch l�y chi�n tr߶ng#W nh�t �nh.")
			AddText(sceneId,"Ho�t �ng khai m� v�o #G19 gi�#W m�i ng�y, b�o danh #Gtr߾c 30 ph�t#W. C�c h� h�y n�m v�ng l�ch tr�nh m� tham gia nh�.")
			AddText(sceneId,"N�u m�i b�n qu�n s� kh�ng �� #G"..x910072_g_LimitedMember.."#W th�nh vi�n ho�c � ch�nh l�ch th�nh vi�n hai b�n qu� #G"..x910072_g_MemberCompare.."#W th�nh vi�n th� tr�n �u s� b� h�y b�.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key==6 then
		x910072_OnWarStartTime(sceneId)
	end
	--*****************--
	
end
--*****************************--
--*     On War Start Time     *--
--*****************************--
function x910072_OnWarStartTime(sceneId)														

	--*****************--
	local nHuman_Song=x910072_CheckSongMember(sceneId)																								--S� ng߶i ��ng k� b�n T�ng
	local nHuman_Liao=x910072_CheckLiaoMember(sceneId)																								--S� ng߶i ��ng k� b�n Li�u
	if nHuman_Song<x910072_g_LimitedMember or nHuman_Liao<x910072_g_LimitedMember or abs(nHuman_Song-nHuman_Liao)>x910072_g_MemberCompare then		--Kh�ng �� �i�u ki�n tham chi�n
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RCu�c chi�n #GT�ng Li�u#R l�n n�y qu�n s� hai b�n kh�ng ��t y�u c�u � ra, n�n tr�n �u �� b� h�y b�!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RCu�c chi�n #GT�ng Li�u#R �� b�t �u. Qu�n s� b�n T�ng l� #G"..nHuman_Song.."#R, qu�n s� b�n Li�u l� #G"..nHuman_Liao.."#R. Kh�ng bi�t l�n n�y ph�n th�ng s� nghi�ng v� b�n n�o ��y? Ch�ng ta c�ng d� �o�n nh�!")
		local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHuman-1 do
			local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																					--Id ng߶i ch�i th� i
			local mapindex=x910072_g_ID_Map																											--ID map Tr�c L�c
			local x																																	--T�a � X
			local y																																	--T�a � Y
			local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)																				--X�c �nh phe c�a ng߶i ch�i
			local OK=1
			if Flag==x910072_g_Flag_Song then																										--N�u ��ng k� phe T�ng
				x=x910072_g_Pos_Song["X"]																											--T�a � X c�a T�ng trong map Tr�c L�c
				y=x910072_g_Pos_Song["Y"]																											--T�a � Y c�a T�ng trong map Tr�c L�c
			elseif Flag==x910072_g_Flag_Liao then																									--N�u ��ng k� phe Li�u
				x=x910072_g_Pos_Liao["X"]																											--T�a � X c�a Li�u trong map Tr�c L�c
				y=x910072_g_Pos_Liao["Y"]																											--T�a � Y c�a Li�u trong map Tr�c L�c
			else
				OK=0
			end
			if OK==1 then
				x910072_ResetAllParam(sceneId,HumanId)																								--Reset l�i c�c thu�c t�nh
				SetMissionData(sceneId,HumanId,MD_SONGLIAO_LAST_DAY_TIME,GetDayTime())
				NewWorld(sceneId,HumanId,mapindex,x,y)																								--D�ch chuy�n v�o map Tr�c L�c	
			end
		end
	end
	--*****************--

end
--*****************************--
--*       On Start Time       *--
--*****************************--
function x910072_OnStartTime(sceneId)														

	--*****************--
	StartOneActivity(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Time,x910072_g_Activity_Number_Param)										--B�t �u m� ho�t �ng
	SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point,0)																--�i�m s� b�n T�ng
	SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point,0)																--�i�m s� b�n Li�u																--Khai m� Event
	--*****************--

end
--*****************************--
--*     Check Song Member     *--
--*****************************--
function x910072_CheckSongMember(sceneId)														

	--*****************--
	local Song_Mem=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki�m tra phe ng߶i ch�i
		if Flag==x910072_g_Flag_Song then
			Song_Mem=Song_Mem+1															--T�ng s� ng߶i ch�i b�n T�ng
		end
	end
	--*****************--
	return Song_Mem
	--*****************--

end
--*****************************--
--*     Check Liao Member     *--
--*****************************--
function x910072_CheckLiaoMember(sceneId)														

	--*****************--
	local Liao_Mem=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki�m tra phe ng߶i ch�i
		if Flag==x910072_g_Flag_Liao then
			Liao_Mem=Liao_Mem+1															--T�ng s� ng߶i ch�i b�n Li�u
		end
	end
	--*****************--
	return Liao_Mem
	--*****************--

end
--*****************************--
--*      On Player Enter      *--
--*****************************--
function x910072_OnPlayerEnter(sceneId,playerId)														

	--*****************--
	if x910072_g_TestMode~=1 then
		local nDay=GetDayTime()
		if nDay~=GetMissionData(sceneId,playerId,MD_SONGLIAO_LAST_DAY_TIME) then																--Kh�ng ph�i th�i gian ho�t �ng l�n n�y
			x910072_NotifyFailTips(sceneId,playerId,"Cu�c chi�n l�n tr߾c c�a c�c h� �� k�t th�c!")
			return
		end
		--*****************--
		local nHours=GetHour()
		if nHours~=x910072_g_On_Event_Time then																									--Ho�t �ng ch�a m�
			x910072_NotifyFailTips(sceneId,playerId,"Hi�n ch�a ph�i th�i gian Chi�n tr߶ng!")
			return
		end
	elseif (strfind(GetName(sceneId,playerId),x910072_g_GMName) or strfind(GetName(sceneId,playerId),x910072_g_GMName1) or strfind(GetName(sceneId,playerId),x910072_g_GMName2)) then
		x910072_OnStartTime(sceneId)
		x910072_RefreshMonster(sceneId)
	end
	--*****************--
	local Flag=GetMissionData(sceneId,playerId,MD_SONGLIAO_FLAG)																			--Phe c�a ng߶i ch�i
	local x
	local y
	if Flag==x910072_g_Flag_Song then
		x=x910072_g_Pos_Song["X"]																											--T�a � �i�m h�i sinh b�n T�ng
		y=x910072_g_Pos_Song["Y"]
		SetUnitCampID(sceneId,playerId,playerId,x910072_g_CampID_Song)																		--Tr�ng th�i chi�n �u b�n T�ng
	else
		x=x910072_g_Pos_Liao["X"]																											--T�a � �i�m h�i sinh b�n Li�u
		y=x910072_g_Pos_Liao["Y"]
		SetUnitCampID(sceneId,playerId,playerId,x910072_g_CampID_Liao)																		--Tr�ng th�i chi�n �u b�n Li�u
	end
	--*****************--
	SetPlayerDefaultReliveInfo(sceneId,playerId,"%100",-1,"0",x910072_g_ID_Map,x,y)															--Уt t�a � �i�m h�i sinh
	--*****************--
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,playerId,12356789)																							--M� khung th�ng b�o �i�m
	--*****************--

end
--*****************************--
--*        Kill Player        *--
--*****************************--
function x910072_KillPlayer(sceneId,killerId,diedId)

	--*****************--
	local Kills_Num=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_KILLS_NUM)															--T�ng s� Died c�a Killer
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_KILLS_NUM,Kills_Num+1)			
	--*****************--	
	local Died_Num=GetMissionData(sceneId,diedId,MD_SONGLIAO_HUMAN_DIED_NUM)																--T�ng s� l�n t� vong c�a Died
	SetMissionData(sceneId,diedId,MD_SONGLIAO_HUMAN_DIED_NUM,Died_Num+1)
	--*****************--
	local Flag_Killer=GetMissionData(sceneId,killerId,MD_SONGLIAO_FLAG)																		--Phe c�a Killer
	local Point_Killer=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)																--T�ng �i�m c�a Killer
	local Point_Died=GetMissionData(sceneId,diedId,MD_SONGLIAO_HUMAN_POINT)																	--T�ng �i�m c�a Died
	local Bonus=min(Point_Died+1,x910072_g_LimitPointPerKill)																				--S� �i�m th߷ng cho Killer
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Point_Killer+Bonus)																--C�p nh�t �i�m cho Killer
	--*****************--
	local Point_Killer_Guild																												--T�ng �i�m phe c�a Killer
	local Point_Died_Guild																													--T�ng �i�m phe c�a Died
	if Flag_Killer==x910072_g_Flag_Song then
		local nPoint=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)					
		SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point,nPoint+Bonus)										--C�p nh�t �i�m cho phe T�ng
		Point_Killer_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)									--T�ng �i�m c�a phe T�ng
		Point_Died_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)									--T�ng �i�m c�a phe Li�u
	else
		local nPoint=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)
		SetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point,nPoint+Bonus)										--C�p nh�t �i�m cho phe Li�u
		Point_Killer_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)									--T�ng �i�m c�a phe Li�u
		Point_Died_Guild=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)									--T�ng �i�m c�a phe T�ng
	end
	--*****************--
	local Died_Name=GetName(sceneId,diedId)																									--T�n c�a Died
	x910072_NotifyFailTips(sceneId,killerId,"C�c h� �� ��nh b�i �i th� #H"..Died_Name.."#W!")																				
	--*****************--
	local Killer_Name=GetName(sceneId,killerId)																								--T�n c�a Killer				
	x910072_NotifyFailTips(sceneId,diedId,"C�c h� �� b� �i th� #H"..Killer_Name.."#W ��nh b�i!")																						
	--*****************--

end
--*****************************--
--*       Recieve Bonus       *--
--*****************************--
function x910072_RecieveBonus(sceneId,playerId,targetId)														

	--*****************--
	local nPoint=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT)			--L�y t�ng s� �i�m c�a ng߶i ch�i
	local nRank=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_RANK)				--L�y th� h�ng c�a ng߶i ch�i
	local IsWinner=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_WINNER)		--Ki�m tra c� ph�i th�nh vi�n �i th�ng cu�c hay kh�ng
	--*****************--
	if nRank<=0 then
		return
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,playerId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n s�p x�p l�i m�t � tr�ng trong � ��o c�!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,playerId)
		return
	end
	--*****************--
	local Bonus_EXP=floor(nPoint/nRank)+floor(nPoint/nRank)*IsWinner+1				--T�nh �i�m kinh nghi�m th߷ng
	--*****************--
	local str=format("#Y[Chi�n tr߶ng T�ng Li�u]#r#WTrong tr�n �u #GT�ng Li�u#W v�a r�i, c�c h� d�nh ���c #G%d �i�m#W, ��ng th� h�ng #G%d.#W C�c h� nh�n ���c ph�n th߷ng #G%d EXP#W!",nPoint,nRank,Bonus_EXP)								
	BeginEvent(sceneId)
		AddText(sceneId,str)
	EndEvent(sceneId)
	DispatchEventList(sceneId,playerId,targetId)
	--*****************--
	local Item_Index=x910072_g_Gift[random(getn(x910072_g_Gift))]
	local nPoint=10
	local Bind_Status=0
	if nRank<=5 then
		Item_Index=30010145													--Nh�n CN Tinh Ph�ch C�
		nPoint=100
		Bind_Status=1
	elseif nRank<=20 then
		Item_Index=30010144													--Nh�n CN Ph�ch C�
		nPoint=50
		Bind_Status=1
	end
	--*****************--
	local Current_Activity_Point=GetMissionData(sceneId,playerId,MD_CURRENT_ACTIVITY_POINT)
	SetMissionData(sceneId,playerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+nPoint)
	x910072_NotifyFailTips(sceneId,playerId,"C�c h� �� gia t�ng "..nPoint.." �i�m ho�t �ng!")
	--*****************--
	local Pos=TryRecieveItem(sceneId,playerId,Item_Index,1)
	--*****************--
	--if Bind_Status==1 then
	--	LuaFnItemBind(sceneId,playerId,Pos)
	--end
	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,"C�c h� �� nh�n ���c 1 c�i "..GetItemName(sceneId,Item_Index).."!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,playerId)
	--*****************--
	LuaFnSendSystemMail(sceneId,GetName(sceneId,playerId),str)																			
	--*****************--
	x910072_ResetAllParam(sceneId,playerId)
	--*****************--

end
--**********************************--
--*      Self Song Liao Rank       *--
--**********************************--
function x910072_SelfSongLiaoRank(sceneId,playerId)

	--*****************--
	local nRank=1
	local Point=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT)				--T�ng �i�m t�ch l�y c�a ng߶i ch�i
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)			--T�ng s� �i�m t�ch l�y c�a ng߶i ch�i th� i
		if Point<nPoint then
			nRank=nRank+1																--C�p nh�t rank c�a ng߶i ch�i
		end
	end
	--*****************--
	return nRank
	--*****************--
	
end
--**********************************--
--*     Update Song Liao Score     *--
--**********************************--
function x910072_UpdateSongLiaoScore(sceneId)

	--*****************--
	local Point_Song=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)							--�i�m s� b�n T�ng
	local Point_Liao=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)							--�i�m s� b�n Li�u
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if x910072_g_TestMode==0 then
			local nDay=GetDayTime()
			if nDay~=GetMissionData(sceneId,HumanId,MD_SONGLIAO_LAST_DAY_TIME) then																--Kh�ng ph�i th�i gian ho�t �ng l�n n�y
				NewWorld(sceneId,HumanId,x910072_g_Map_Out,x910072_g_Out_Pos_X,x910072_g_Out_Pos_Y)												--��a ng߶i ch�i v� �a �i�m b�o danh ban �u
				return
			end
			local nHours=GetHour()
			if nHours~=x910072_g_On_Event_Time then																									--Ho�t �ng ch�a m�
				NewWorld(sceneId,HumanId,x910072_g_Map_Out,x910072_g_Out_Pos_X,x910072_g_Out_Pos_Y)												--��a ng߶i ch�i v� �a �i�m b�o danh ban �u
				return
			end
		end
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,Point_Song)
			UICommand_AddInt(sceneId,Point_Liao)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,HumanId,1235679)
	end
	--*****************--
	
end
--**********************************--
--*         Refresh Monster        *--
--**********************************--
function x910072_RefreshMonster(sceneId)

	--*****************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if strfind(GetName(sceneId,MonsterId),"T�ng")~=nil then
			SetUnitCampID(sceneId,MonsterId,MonsterId,x910072_g_CampID_Song)
		elseif strfind(GetName(sceneId,MonsterId),"Li�u")~=nil then
			SetUnitCampID(sceneId,MonsterId,MonsterId,x910072_g_CampID_Liao)
		end
	end
	--*****************--
	
end
--**********************************--
--*     Update Song Liao Ranks     *--
--**********************************--
function x910072_UpdateSongLiaoRanks(sceneId,selfId)

	--*****************--
	local Self_Flag=GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)
	if Self_Flag==x910072_g_Flag_Song then
		CallScriptFunction(910081,"OnDefaultEvent",sceneId,selfId,selfId)														--M� khung b�o th�nh t�ch c� nh�n b�n T�ng
	else
		CallScriptFunction(910082,"OnDefaultEvent",sceneId,selfId,selfId)														--M� khung b�o th�nh t�ch c� nh�n b�n Li�u
	end
	--*****************--
	
end
--**********************************--
--*  Update Song Liao Multi Score  *--
--**********************************--
function x910072_UpdateSongLiaoMultiScore(sceneId,selfId,nTabSelected,leaftrol)

	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	--*****************--
	if (leaftrol==1 and floor(nHuman/12)<nTabSelected-1) or (leaftrol==0 and nTabSelected==0) then
		return
	end
	--*****************--
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		x910072_g_Human_List[i+1]=HumanId		
	end
	--*****************--
	x910072_HeapSort(sceneId,nHuman)
	--*****************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,nTabSelected)
		local str
		for i=0,5 do
			str=""
			if 2*i+1+12*(nTabSelected-1)>nHuman then
				str=str.."~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			else
				local str1
				
				str1=GetName(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)])
				while strlen(str1)<18 do
					str1="~"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)],MD_SONGLIAO_FLAG))
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_KILLS_NUM))
				while strlen(str1)<4 do
					str1="0"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+1+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_POINT))
				while strlen(str1)<10 do
					str1="0"..str1
				end
				str=str..str1
			end
			
			if 2*i+2+12*(nTabSelected-1)>nHuman then
				str=str.."~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			else
				local str1
				
				str1=GetName(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)])
				while strlen(str1)<18 do
					str1="~"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)],MD_SONGLIAO_FLAG))
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_KILLS_NUM))
				while strlen(str1)<4 do
					str1="0"..str1
				end
				str=str..str1
				
				str1=tostring(GetMissionData(sceneId,x910072_g_Human_List[2*i+2+12*(nTabSelected-1)],MD_SONGLIAO_HUMAN_POINT))
				while strlen(str1)<10 do
					str1="0"..str1
				end
				str=str..str1
			end
			UICommand_AddString(sceneId,str)			
		end
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,240620152)
	--*****************--
	
end
--**********************************--
--*          On Scene Timer        *--
--**********************************--
function x910072_OnSceneTimer(sceneId)

	--*****************--
	if LuaFnGetCopyScene_HumanCount(sceneId)<=0 then
		return
	end
	--*****************--
	x910072_UpdateSongLiaoScore(sceneId)																						--C�p nh�t �i�m s� hai b�n
	--*****************--
	x910072_UpdateSongLiaoTitle(sceneId)
	--*****************--
	
end
--**********************************--
--*          On Scene Timer        *--
--**********************************--
function x910072_UpdateSongLiaoTitle(sceneId)

	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
		local nFlag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)
		local str=""
		if nFlag==0 then
			str="T�ng"
		elseif nFlag==1 then
			str="Li�u"
		end
		for i,Title_Info in x910072_g_Title_List do
			if Title_Info.Point_Needed<=nPoint then
				local str1=format(Title_Info.Title,str)
				AwardNickTitle(sceneId,HumanId,str1)
				DispatchAllTitle(sceneId,HumanId)
			end
		end
	end
	--*****************--
	
end
--*****************************--
--*       On Exit Time        *--
--*****************************--
function x910072_OnExitTime(sceneId)														

	--*****************--
	local Point_Song=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Song_Point)							--�i�m s� b�n T�ng
	local Point_Liao=GetActivityParam(sceneId,x910072_g_Activity_Index,x910072_g_Activity_Liao_Point)							--�i�m s� b�n Li�u
	local Winner																												--T�n phe th�ng cu�c
	local Guild_Winner																											--ID phe th�ng cu�c
	local Lost																													--T�n phe thua cu�c
	--*****************--
	if Point_Song>Point_Liao then
		Winner="T�ng"																											--Phe th�ng cu�c l� T�ng
		Guild_Winner=x910072_g_Flag_Song																						--ID phe
		Lost="Li�u"																												--Phe thua cu�c l� Li�u
	elseif Point_Song<Point_Liao then
		Winner="Li�u"																											--Phe th�ng cu�c l� Li�u
		Guild_Winner=x910072_g_Flag_Liao																						--ID phe
		Lost="T�ng"																												--Phe thua cu�c l� T�ng
	else
		Winner=nil																												--Hai b�n h�a
		Guild_Winner=-1																											--Kh�ng �i n�o chi�n th�ng
	end
	--*****************--
	if Winner then
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RTrong tr�n �u #GT�ng Li�u#R r�c l�a v�a di�n ra, phe #G"..Winner.."#R �� gi�nh th�ng l�i tuy�t �i. Nh�n s� phe #G"..Lost.."#R l�n sau h�y c� g�ng h�n!")
	else
		AddGlobalCountNews(sceneId,"@*;SrvMsg;SCA:#RTrong tr�n �u #GT�ng Li�u#R r�c l�a v�a di�n ra, k�t qu� c� hai phe #GT�ng#R v� #GLi�u#R h�a nhau v�i c�ng �i�m s�. Hy v�ng l�n sau s� c� b�n v��t tr�i h�n!")
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ng߶i ch�i th� i
		local nRank=x910072_SelfSongLiaoRank(sceneId,HumanId)																	--T�nh th� h�ng chung k�t c�a ng߶i ch�i th� i
		SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_RANK,nRank)															--C�p nh�t th� h�ng chung k�t c�a ng߶i ch�i th� i
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
		local str=format("#Y[Chi�n tr߶ng T�ng Li�u]#r#WTrong tr�n �u #GT�ng Li�u#W v�a r�i, c�c h� d�nh �߽c #G%d#W �i�m t�ch l�y, ��ng � v� tr� #G%d#W, h�y �n g�p ng߶i ph� tr�ch chi�n tr߶ng � nh�n th߷ng!",nPoint,nRank)								
		LuaFnSendSystemMail(sceneId,GetName(sceneId,HumanId),str)																--Send mail	
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)																--Phe ng߶i ch�i th� i
		if Flag==Guild_Winner then
			local str=format("#Y[Chi�n tr߶ng T�ng Li�u]#r#WTrong tr�n �u #GT�ng Li�u#W v�a r�i, phe c�a c�c h� l� phe #G%s#W �� d�nh th�ng l�i chung cu�c, d�n �u �i�m s�. Ch�c m�ng c�c h� c�ng to�n th� th�nh vi�n phe #G%s#W!",Winner,Winner)								
			LuaFnSendSystemMail(sceneId,GetName(sceneId,HumanId),str)															--Send mail
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_WINNER,1)															--Ng߶i ch�i n�y l� phe th�ng cu�c					
		else
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_WINNER,0)															--Ng߶i ch�i n�y l� phe thua cu�c
		end
	end
	--*****************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ng߶i ch�i th� i
		SetUnitCampID(sceneId,HumanId,HumanId,-1)																				--Reset l�i tr�ng th�i chi�n �u
		x910072_NotifyFailTips(sceneId,HumanId,"Tr�n �u �� k�t th�c!")
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,HumanId,2356789)																				--��ng khung b�o th�nh t�ch
		NewWorld(sceneId,HumanId,x910072_g_Map_Out,x910072_g_Out_Pos_X,x910072_g_Out_Pos_Y)										--��a ng߶i ch�i v� �a �i�m b�o danh ban �u
	end
	--*****************--
	StopOneActivity(sceneId,x910072_g_Activity_Index)
	--*****************--
	
end
--**********************************--
--*        Reset All Param         *--
--**********************************--
function x910072_ResetAllParam(sceneId,playerId)

	--*****************--
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT,0)																	--Reset l�i �i�m chi�n tr߶ng
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_KILLS_NUM,0)																--Reset l�i t�ng s� l�n t� n�n
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_DIED_NUM,0)																--Reset l�i s� l�n t� n�n
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_RANK,0)																	--Reset l�i th� h�ng c�a ng߶i ch�i
	SetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_WINNER,0)																	--Reset l�i �i th�ng cu�c
	--*****************--
	
end
--**********************************--
--*        Notify Fail Tips        *--
--**********************************--
function x910072_NotifyFailTips(sceneId,selfId,Tip)

	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*****************--
	
end
--===============HEAPSORT=================--
--**********************************--
--**********************************--
function x910072_DownHeap(sceneId,start,finish)

	--*****************--
	local root=start
    while root*2<=finish do
        local leaf=root*2
		
		local nPoint_Leaf_1=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_POINT)
		local nRank_Leaf_1=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_RANK)
		
		local nPoint_Leaf_2=999999999
		local nRank_Leaf_2=999999999
		
		if leaf<finish then
			nPoint_Leaf_2=GetMissionData(sceneId,x910072_g_Human_List[leaf+1],MD_SONGLIAO_HUMAN_POINT)
			nRank_Leaf_2=GetMissionData(sceneId,x910072_g_Human_List[leaf+1],MD_SONGLIAO_HUMAN_RANK)
		end
		
        if leaf<finish and (nPoint_Leaf_1>nPoint_Leaf_2 or (nPoint_Leaf_1==nPoint_Leaf_2 and nPoint_Leaf_1>nPoint_Leaf_2)) then 
			leaf=leaf+1
		end
		
		local nPoint_Root=GetMissionData(sceneId,x910072_g_Human_List[root],MD_SONGLIAO_HUMAN_POINT)
		local nRank_Root=GetMissionData(sceneId,x910072_g_Human_List[root],MD_SONGLIAO_HUMAN_RANK)
		
		local nPoint_Leaf=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_POINT)
		local nRank_Leaf=GetMissionData(sceneId,x910072_g_Human_List[leaf],MD_SONGLIAO_HUMAN_RANK)
		
		if nPoint_Root<nPoint_Leaf or (nPoint_Root==nPoint_Leaf and nRank_Root<nRank_Leaf) then
			return
		end
       
        local key=x910072_g_Human_List[root]
        x910072_g_Human_List[root]=x910072_g_Human_List[leaf]
        x910072_g_Human_List[leaf]=key
		
        root=leaf
    end
	--*****************--

end
--**********************************--
--**********************************--
function x910072_UpHeap(sceneId,n)

	--*****************--
	local root=floor(n/2)
	while root>0 do
		x910072_DownHeap(sceneId,root,n)
		root=root-1
	end
	--*****************--

end
--**********************************--
--*      Heap Sort Algorithm       *--
--**********************************--
function x910072_HeapSort(sceneId,n)

	--*****************--
	x910072_UpHeap(sceneId,n)
	--*****************--
	while n>0 do
        local key=x910072_g_Human_List[1]
        x910072_g_Human_List[1]=x910072_g_Human_List[n]
        x910072_g_Human_List[n]=key
        n=n-1
        x910072_DownHeap(sceneId,1,n)
    end
	--*****************--

end
--==================END===================--