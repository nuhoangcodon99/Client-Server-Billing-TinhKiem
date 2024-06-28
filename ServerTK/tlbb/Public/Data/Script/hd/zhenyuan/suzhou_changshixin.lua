--SÑ giä Chân nguyên
--Tô Châu - Trß½ng SÛ Tâm
--Code by: Sói

--*********************--
x900002_g_scriptId = 900002
--*********************--
x900002_g_ZhenYuan_EquipSlot=
{
	MD_ZHENYUAN_EQUIP_1,
	MD_ZHENYUAN_EQUIP_2,
	MD_ZHENYUAN_EQUIP_3,
	MD_ZHENYUAN_EQUIP_4,
	MD_ZHENYUAN_EQUIP_5,
	MD_ZHENYUAN_EQUIP_6,
	MD_ZHENYUAN_EQUIP_7,
	MD_ZHENYUAN_EQUIP_8,
	MD_ZHENYUAN_EQUIP_9,
	MD_ZHENYUAN_EQUIP_10,
	MD_ZHENYUAN_EQUIP_11,
	MD_ZHENYUAN_EQUIP_12,
}

x900002_g_ZhenYuan_Slot=
{
	MD_ZHENYUAN_SLOT_1,
	MD_ZHENYUAN_SLOT_2,
	MD_ZHENYUAN_SLOT_3,
	MD_ZHENYUAN_SLOT_4,
	MD_ZHENYUAN_SLOT_5,
	MD_ZHENYUAN_SLOT_6,
	MD_ZHENYUAN_SLOT_7,
	MD_ZHENYUAN_SLOT_8,
	MD_ZHENYUAN_SLOT_9,
	MD_ZHENYUAN_SLOT_10,
	MD_ZHENYUAN_SLOT_11,
	MD_ZHENYUAN_SLOT_12,
	MD_ZHENYUAN_SLOT_13,
	MD_ZHENYUAN_SLOT_14,
	MD_ZHENYUAN_SLOT_15,
	MD_ZHENYUAN_SLOT_16,
	MD_ZHENYUAN_SLOT_17,
	MD_ZHENYUAN_SLOT_18,
	MD_ZHENYUAN_SLOT_19,
	MD_ZHENYUAN_SLOT_20,
}
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900002_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"#{ZYXT_120528_01}")
		AddNumText(sceneId,x900002_g_scriptId,"V« Giäi phong Chân nguyên",11,0)
		AddNumText(sceneId,x900002_g_scriptId,"V« Ngßng luy®n Chân nguyên",11,1)
		AddNumText(sceneId,x900002_g_scriptId,"V« Phân giäi Chân nguyên",11,2)
		AddNumText(sceneId,x900002_g_scriptId,"V« ÐÆng c¤p Chân nguyên",11,3)
		if GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED)~=1 then
			AddNumText(sceneId,x900002_g_scriptId,"Kích hoÕt Chân nguyên",6,4)
		else
			AddNumText(sceneId,x900002_g_scriptId,"Giäi phong Chân nguyên",6,5)
			AddNumText(sceneId,x900002_g_scriptId,"Ngßng luy®n Chân nguyên",6,6)
			AddNumText(sceneId,x900002_g_scriptId,"Phân giäi toàn bµ Chân nguyên",6,7)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x900002_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*********************--
	if GetNumText()==0	then
		BeginEvent(sceneId)
			AddText(sceneId,"— #GTô Châu (350,229) #RTrß½ng Sî Tâm #Wch÷n dòng #GGiäi phonng Chân nguyên#W, là có th¬ thñc hi®n thao tác#W.#rTrÕng thái m£c ð¸nh cüa Chân Nguyên Bàn Nhãn này là #GtrÕng thái ðang b¸ phong ¤n#W, chï sau khi #Gkh·i ðµng xong#W, thì m¾i có th¬ ðßa #Gtrang b¸ Chân Nguyên lên#W, m²i cái Chân Nguyên Bàn Nhãn ð«u #Gtß½ng Ñng 1 loÕi trang b¸ c¯ ð¸nh#W, #Gkh·i ðµng Chân Nguyên Bàn Nhãn #Wthì nh¤t thiªt phäi #Gtiêu hao 1 lßþng nh¤t ð¸nh #Wcüa #YChân Nguyên Tinh Túy#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId,"— #GTô Châu (350,229) #RTrß½ng Sî Tâm #Wch÷n dòng #GNgßng luy®n Chân nguyên#W, là có th¬ thñc hi®n thao tác#W. Ngßng luy®n c¥n tiêu t¯n #G20 Chân Nguyên Tinh Túy#W và m²i l¥n s¨ có tï l® ngçu nhiên nh§n ðßþc #GChân nguyên#W mµt trong 5 loÕi.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==2	then
		BeginEvent(sceneId)
			AddText(sceneId,"M· giao di®n Chân nguyên, #Gnh¤n chuµt trái vào ch÷n Chân nguyên#W ðßþc ð£t trong túi ðñng Chân nguyên, sau ðó #Gnh¤n vào Lß phân giäi#W là có th¬ phân giäi Chân nguyên. Chân nguyên sau khi phân giäi s¨ #Gbiªn m¤t#W, ð°ng th¶i các hÕ nh§n ðßþc mµt lßþng #GNguyên Tinh#W bù ð¡p tùy ðÆng c¤p cüa Chân nguyên.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==3	then
		BeginEvent(sceneId)
			AddText(sceneId,"Chân nguyên có #G5 loÕi ðÆng c¤p#W tß½ng Ñng v¾i #G5 màu s¡c#W là #GXám#W, #GLam#W, #GLøc#W, #GTím#W, #GCam#W. Thång c¤p Chân nguyên c¥n tiêu hao #GNguyên tinh#W v¾i s¯ lßþng nh¤t ð¸nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==4	then
		if GetLevel(sceneId,selfId)<80 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ c¥n ðÕt c¤p 80 tr· lên ð¬ có th¬ kích hoÕt h® th¯ng Chân nguyên.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"Kích hoÕt h® th¯ng Chân nguyên thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction(900000,"ZhenYuanStart",sceneId,selfId)
	elseif GetNumText()==6	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED))
			local str=""
			for i,MD in x900002_g_ZhenYuan_Slot do
				if GetMissionData(sceneId,selfId,MD)<=0 then
					str=str.."xxxxxxxx"
				else
					str=str..tostring(GetMissionData(sceneId,selfId,MD))
				end
			end
			UICommand_AddString(sceneId,str)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_YUANXING))
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,88990001)
	elseif GetNumText()==5 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED))
			for i,MD in x900002_g_ZhenYuan_EquipSlot do
				UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD))
			end
			UICommand_AddInt(sceneId,GetSex(sceneId,selfId))
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,88990099)
	elseif GetNumText()==7 then
		CallScriptFunction(900000,"OnUpdate",sceneId,selfId,11)
	end
	--*********************--
	
end
