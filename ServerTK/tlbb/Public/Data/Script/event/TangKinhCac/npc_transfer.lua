--Phø bän Tàng Kinh Các
--Thiªu Lâm Võ Tång
--Author: Hoàng Steven

--************************--
x910123_g_ScriptId=910123												
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910123_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,"A di ðà ph§t! Thi®n tai, thi®n tai!#rT¤t cä ð«u tuân theo ph§t pháp, chung quy lÕi cûng ð«u quay v« cõi äo mµng mà thôi.#rNhß sß½ng, cûng nhß ði®n. T¤t cä nhæng n½i thí chü t×ng ði qua, nhæng ngß¶i thí chü ðã t×ng tiªp xúc ð«u chï là hß äo cä mà thôi...")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end