--物品公用脚本

x330000_g_scriptId = 330000;

--**********************************
--燃放烟花的时候玩家有几率获得一颗宝石
--**********************************
x330000_g_yianHuaBaoshi_dropRate_cur = 25;		--玩家在燃放烟花的时候，有2.5％的几率获得一颗宝石。
x330000_g_yianHuaBaoshi_dropRate_max = 1000;

x330000_g_yianHuaBaoshi_gems = {{gemId=50101001, rate=25},
							{gemId=50101002, rate=25},
							{gemId=50111001, rate=25},
							{gemId=50111002, rate=25}
						};

function x330000_YianhuaDuihuanBaoshi(sceneId, selfId)
	local randValue = random(x330000_g_yianHuaBaoshi_dropRate_max);
	if randValue <= x330000_g_yianHuaBaoshi_dropRate_cur then
		local gemTemp;
		local totalRate = 0;
		for _, gemTemp in x330000_g_yianHuaBaoshi_gems do
			totalRate = totalRate + gemTemp.rate;
		end
		
		local gemRandValue = random(totalRate);
		for _, gemTemp in x330000_g_yianHuaBaoshi_gems do
			if gemRandValue <= gemTemp.rate then
				BeginAddItem(sceneId);
				AddItem(sceneId, gemTemp.gemId, 1);
				ret = EndAddItem(sceneId, selfId);
				if ret > 0 then
					AddItemListToHuman(sceneId, selfId);
					
					--获得物品信息
	        local ItemInfo = GetItemTransfer(sceneId,selfId,0)

					local message;
					local randMessage = random(3);
					if randMessage == 1 then
						message = format("#W#{_INFOUSR%s}#I trong l鷆 b ph醥 hoa, kh鬾g c th b� ph醥 hoa b ra 1 vi阯#cB3DB35#{_INFOMSG%s}#I tr鷑g v鄌 m.", LuaFnGetName(sceneId, selfId), ItemInfo);
					elseif randMessage == 2 then
						message = format("#W#{_INFOUSR%s}#I 疸 b h猼 ph醥 hoa nh遪g trong l騨g v鏽 ch遖 th鯽 m鉵, trong l鷆 b絠 x醕 ph醥, b瞡g nhi阯 ph醫 hi畁 1 vi阯#cB3DB35#{_INFOMSG%s}#I.", LuaFnGetName(sceneId, selfId), ItemInfo);
					else
						message = format("#W#{_INFOUSR%s}#Iph醫 hi畁 1 c醝 ph醥 hoa h鰊g, chu b� v裻 b� th� trong ph醥 hoa l癷 ra 1 vi阯#cB3DB35#{_INFOMSG%s}#I.", LuaFnGetName(sceneId, selfId), ItemInfo);
					end
					BroadMsgByChatPipe(sceneId, selfId, message, 4);
				end
				return
			end
			gemRandValue = gemRandValue - gemTemp.rate;
		end
	end
end
