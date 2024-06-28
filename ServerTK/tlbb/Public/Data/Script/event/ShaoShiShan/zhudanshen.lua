--Thiªu Th¤t S½n
--Chu Ðan Th¥n
--Author: Hoàng Steven

--************************--
x910161_g_ScriptId=910161												
x910161_g_Event_ScriptId=910159												--Script event
--************************--
x910161_g_Introduce="Cái Bang phát Thi®p Anh Hùng, m¶i các hào ki®t võ lâm Trung Nguyên t« tñu · Thiªu Lâm, Toàn Quán Thanh dñ ð¸nh lþi døng c½ hµi l¥n này khiªn cho Cái Bang gây áp lñc cho  Thiªu Lâm ð¬ tr· thành Võ Lâm Ð® Nh¤t, n¡m trong tay cä võ lâm Trung Nguyên; không nhß mong mu¯n, sñ xu¤t hi®n cüa Tiêu Phong, ðã khiªn cho chuy®n này có biªn chuy¬n, · trên Thiªu Th¤t S½n, ba ngß¶i Tiêu Phong, Ðoàn Dñ và Hß Trúc kªt nghîa kim lan, k« vai chiªn ð¤u v¾i Trang Tø Hi«n, Ðinh Xuân Thu và Mµ Dung Phøc, giúp Thiªu Lâm vßþt qua kiªp nÕn; sau ðó Tiêu Vi­n S½n và Mµ Dung Bác ðµt ngµt xu¤t hi®n, khiªn cho chân tß¾ng sñ vi®c huyªt t¦y NhÕn Môn Quan nåm ðó b¸ bÕi lµ trß¾c m£t m÷i ngß¶i trong thiên hÕ, nhßng Täo Ð¸a Th¥n Tång ¦n cß trong Tàng Kinh Các ðã dùng thu§t Sinh TØ Luân H°i Quy TÑc, ðã hóa giäi huyªt häi thâm thù kéo dài nhi«u nåm giæa cha con h÷ Tiêu và gia tµc Mµ Dung.#rNgß¶i ch½i#G c¤p 80#W tr· lên có th¬ tham gia."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910161_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910161_g_Introduce)
		CallScriptFunction(x910161_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910161_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910161_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910161_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end