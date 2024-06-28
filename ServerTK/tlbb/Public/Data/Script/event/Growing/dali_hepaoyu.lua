--Ho�t �ng tr�ng c�y may m�n
--Author: Kenvin S�i

--*********************--
x920012_g_scriptId = 920012
x920012_g_active = 0 --1 : kich hoat su kien
--*********************--
x920012_g_Chit = 30060003				--M�m ti�n hoa
x920012_g_FertilizerBag = 30060004		--T�i ph�n b�n r�ng
x920012_g_WaterBottle = 30060005		--B�nh ��ng n߾c r�ng
x920012_g_AirBottle = 30060006			--B�nh ��ng linh kh� r�ng
x920012_g_Flower = 30060010				--Hoa c�a ti�n hoa
x920012_g_Knife = 30060019				--Dao
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x920012_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	local Player_Name=GetName(sceneId,selfId)
	--*********************--
	BeginEvent(sceneId)
		if x920012_g_active ==1 then
			AddText(sceneId,"Xin ch�o c�c h�, "..Player_Name.."!")
			AddText(sceneId,"G�n ��y t�i h� c� sang n߾c Vi�t t�m v� ���c m�t gi�ng ti�n hoa r�t th�n k�.")
			AddText(sceneId,"N�u c�c h� c� th� tr�ng v� ch�m s�c n� gi�p t�i h�, t�i h� s� v� c�ng c�m k�ch.")
			AddNumText(sceneId,x920012_g_scriptId,"Nh�n h�t gi�ng ti�n hoa",6,1)
			AddNumText(sceneId,x920012_g_scriptId,"Giao l�i #GHoa c�a Ti�n Hoa",6,2)
			AddNumText(sceneId,x920012_g_scriptId,"V� #GTr�ng c�y may m�n",11,0)
			AddNumText(sceneId,x920012_g_scriptId,"Ta ch� �i ngang qua...",-1,3)
		else
			AddText(sceneId,"S� ki�n ch�a b�t �u. Vui l�ng quay l�i sau.")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x920012_OnEventRequest(sceneId,selfId,targetId,eventId)
if x920012_g_active ==1 then
	--*********************--
	if GetNumText()==0 then --V� #GTr�ng c�y may m�n
		BeginEvent(sceneId)
			AddText(sceneId,"Nh�n ng�y #GQu�c t� Lao еng #Y1/5#W, to�n th� ng߶i ch�i m�i ng�y c� th� tham gia ho�t �ng #GTr�ng c�y may m�n#W m�t l�n.")
			AddText(sceneId,"Khi ho�t �ng b�t �u c�c h� s� nh�n ���c #GM�m c�a Ti�n Hoa#W v� ngo�i ra ta s� cung c�p th�m cho c�c h� c�c lo�i c�ng c� ph�c v� cho vi�c t�m th�c �n cho c�y. C�c h� ch� c�n �n ��ng �a �i�m ch� �nh �n v�o c�ng c� l� s� t� �ng ���c thu th�p.")
			AddText(sceneId,"Ti�n hoa c� #G4 giai �o�n#W:")
			AddText(sceneId,"#GGiai �o�n �u mi�u c�p 1#W, c�y m�i ���c tr�ng xu�ng, c�n ���c ch�m s�c �c bi�t.")
			AddText(sceneId,"  Giai �o�n n�y t�n t�i trong #G5 ph�t#W. N�u sau #G10 ph�t#W m� c�y kh�ng ���c ch�m s�c �� th� c�y s� ch�t.")
			AddText(sceneId,"#GGiai �o�n �u mi�u c�p 2#W, c�y ��t k�ch th߾c v�a, c�n ���c ch�m s�c �c bi�t.")
			AddText(sceneId,"  Giai �o�n n�y t�n t�i trong #G10 ph�t#W. N�u sau #G20 ph�t#W m� c�y kh�ng ���c ch�m s�c �� th� c�y s� ch�t.")
			AddText(sceneId,"#GGiai �o�n �u mi�u c�p 3#W, c�y ��t k�ch th߾c l�n, c�n ���c ch�m s�c �c bi�t.")
			AddText(sceneId,"  Giai �o�n n�y t�n t�i trong #G15 ph�t#W. N�u sau #G30 ph�t#W m� c�y kh�ng ���c ch�m s�c �� th� c�y s� ch�t.")
			AddText(sceneId,"#GGiai �o�n th�nh th�c#W, c�y �� tr߷ng th�nh, l�c n�y c�y �� tr߷ng th�nh, c� th� thu ho�ch. C�c h� h�y �em hoa c�a c�y mang v� ch� ta, ta s� t�ng c�c h� m�t ph�n th߷ng r�t th� v�.")
			AddText(sceneId,"  Giai �o�n n�y t�n t�i trong #G20 ph�t#W. N�u sau #G40 ph�t#W m� c�y kh�ng ���c thu ho�ch th� c�y s� ch�t.")
			AddText(sceneId,"Ь ch�m s�c c�y, c�c h� c�n �em #GB�nh ��ng ph�n#W, #GB�nh ��ng n߾c#W v� #GB�nh ��ng linh kh�#W �n c�c �a �i�m �� ch� �nh � l�y nguy�n li�u.")
			AddText(sceneId,"#GCh� �:#Y Khi c�c h� thu th�p �� c�c lo�i th�c �n cho c�y, c�c h� h�y nh�n v�o c�y v� ch�n m�c #GCh�m s�c#Y l� ���c, t߽ng t� khi c�y c� th� thu ho�ch, ch� c�n nh�n v�o c�y ch�n #GThu ho�ch#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	if GetNumText()==1 then --Nh�n h�t gi�ng ti�n hoa
		if GetMissionData(sceneId,selfId,GROWINGACTIVITY_DAYTIME)==GetDayTime() then
			BeginEvent(sceneId)
				AddText(sceneId,"H�m nay c�c h� �� tham gia ho�t �ng n�y r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<5 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� c�n s�p x�p l�i 5 � tr�ng trong � ��o c�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		SetMissionData(sceneId,selfId,GROWINGACTIVITY_DAYTIME,GetDayTime())
		TryRecieveItem(sceneId,selfId,x920012_g_Chit,1)
		TryRecieveItem(sceneId,selfId,x920012_g_FertilizerBag,1)
		TryRecieveItem(sceneId,selfId,x920012_g_WaterBottle,1)
		TryRecieveItem(sceneId,selfId,x920012_g_AirBottle,1)
		TryRecieveItem(sceneId,selfId,x920012_g_Knife,1)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� nh�n ���c h�t gi�ng c�y, h�y mau mau tr�ng n� xu�ng �t �i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	if GetNumText()==2 then --Giao l�i #GHoa c�a Ti�n Hoa
		if LuaFnDelAvailableItem(sceneId,selfId,x920012_g_Flower,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng c� #GHoa c�a Ti�n Hoa#W l�m sao c� th� nh�n th߷ng ��y?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� c�n s�p x�p l�i 1 � tr�ng trong � ��o c�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"Th�t c�m �n c�c h� nhi�u l�m, � ��y c� ch�t ph�n th߷ng, mong c�c h� nh�n l�y!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		--trao th߷ng
		if 1~=1 then
			local x,y=random(100),random(100)
			if x==y then
				TryRecieveItem(sceneId,selfId,10124518,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[Ng�c V� Thanh Tr�]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==1 then
				TryRecieveItem(sceneId,selfId,30308282,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[Tr�ng tr�n th�: B�ch Chi�n Kim C߽ng]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==2 then
				TryRecieveItem(sceneId,selfId,30308282,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[Tr�ng tr�n th�: B�ch Chi�n Kim C߽ng]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==3 then
				TryRecieveItem(sceneId,selfId,30308283,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[Tr�ng tr�n th�: Ti�u Long N�]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==4 then
				TryRecieveItem(sceneId,selfId,30308284,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[Tr�ng tr�n th�: Chi�n Binh Tu La]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==5 then
				TryRecieveItem(sceneId,selfId,10124620,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[M�c V� Ti�m U]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)<=10 then
				TryRecieveItem(sceneId,selfId,10141802,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc �em #GHoa c�a Ti�n Hoa#cff99cc giao cho #G��i L� #YH� B�o Ng�c (183,200)#cff99cc �i ���c #Y[Ni�n Th� L�i ��nh]#cff99cc, th�t may m�n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			end
		end
		--end trao th߷ng
		local nExp=GetLevel(sceneId,selfId)*random(10000)
		AddExp(sceneId,selfId,nExp)
		AddMoney(sceneId,selfId,100000)
	end
	--*********************--
	if GetNumText()==3 then --Ta ch� �i ngang qua...
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--*********************--
end
end
