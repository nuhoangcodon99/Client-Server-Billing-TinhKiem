--企鹅王BOSS刷新公告

--脚本编号
x892006_g_ScriptId	= 892006

function x892006_OnRespawn( sceneId, selfId, targetId )
	local nam_mob = GetName( sceneId, selfId )
	local str ="";	
	if nam_mob=="Hoa H鋓 Y陁 V呓ng" then
		str = format("#Y[Hoa H鋓 Y陁 V呓ng]#P mang theo r nhi玼 k� tr鈔 d� b鋙 xu hi畁 t読 #GV鱪g Xuy阯 Hoa H鋓 <117,116>#P, Hoa H鋓 l読 m祎 l n鎍 r絠 v鄌 tay b鱪 y陁 v呓ng. Anh h鵱g h鋙 h醤 h銀 chi猲 馥u v� v鵱g 黏t Hoa H鋓 c黙 ch鷑g ta.")
	elseif nam_mob=="Thanh Nguy阯 Th� H� Th" then
		str = format("#Y[Thanh Nguy阯 Th� H� Th]#P mang theo r nhi玼 k� tr鈔 d� b鋙 xu hi畁 t読 #GM誧 Nam Thanh Nguy阯<161,96>#P, Thanh Nguy阯 l読 m祎 l n鎍 r絠 v鄌 tay b鱪 y陁 v呓ng. Anh h鵱g h鋙 h醤 h銀 chi猲 馥u v� v鵱g 黏t Thanh Nguy阯 c黙 ch鷑g ta.")
	elseif nam_mob=="Nam H鋓 Th Th�" then
		str = format("#Y[Nam H鋓 Th Th鷀#P mang theo r nhi玼 k� tr鈔 d� b鋙 xu hi畁 t読 #GThi阯 K� Nam H鋓<138,111>#P, Nam H鋓 l読 m祎 l n鎍 r絠 v鄌 tay b鱪 y陁 v呓ng. Anh h鵱g h鋙 h醤 h銀 chi猲 馥u v� v鵱g 黏t Nam H鋓 c黙 ch鷑g ta.")
	end
	AddGlobalCountNews( sceneId, str )
end
--**********************************
--Monster Timer
--**********************************
function x892006_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--全球公告
	--local	nam_mob	= GetName( sceneId, objId )
	--if nam_mob ~= nil then
	--	str	= format( "#G银皑雪原#P真正的主人，伟大的123#P，已经挥舞着权杖出现在它的领土上了！", nam_mob )
	--	AddGlobalCountNews( sceneId, str )
	--end
	--AddGlobalCountNews( sceneId, "objId:"..objId )
	--取消时钟
	--SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--死亡事件
--**********************************
function x892006_OnDie( sceneId, objId, killerId )
	--全球公告
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#PTr鋓 qua mu鬾 v鄋 gian kh�, #W#{_INFOUSR%s}#P c鵱g 鸬i ng� m祎 phen t� chi猲, #G%s#Pcu痠 c鵱g c鹡g c鹡g b� 疳nh b読.", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
end
