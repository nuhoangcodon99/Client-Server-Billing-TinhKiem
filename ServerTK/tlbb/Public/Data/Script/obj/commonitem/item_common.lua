--��Ʒ���ýű�

x330000_g_scriptId = 330000;

--**********************************
--ȼ���̻���ʱ������м��ʻ��һ�ű�ʯ
--**********************************
x330000_g_yianHuaBaoshi_dropRate_cur = 25;		--�����ȼ���̻���ʱ����2.5���ļ��ʻ��һ�ű�ʯ��
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
					
					--�����Ʒ��Ϣ
	        local ItemInfo = GetItemTransfer(sceneId,selfId,0)

					local message;
					local randMessage = random(3);
					if randMessage == 1 then
						message = format("#W#{_INFOUSR%s}#I trong l�c b�n ph�o hoa, kh�ng c�n th�n b� ph�o hoa b�n ra 1 vi�n#cB3DB35#{_INFOMSG%s}#I tr�ng v�o m�t.", LuaFnGetName(sceneId, selfId), ItemInfo);
					elseif randMessage == 2 then
						message = format("#W#{_INFOUSR%s}#I �� b�n h�t ph�o hoa nh�ng trong l�ng v�n ch�a th�a m�n, trong l�c b�i x�c ph�o, b�ng nhi�n ph�t hi�n 1 vi�n#cB3DB35#{_INFOMSG%s}#I.", LuaFnGetName(sceneId, selfId), ItemInfo);
					else
						message = format("#W#{_INFOUSR%s}#Iph�t hi�n 1 c�i ph�o hoa h�ng, chu�n b� v�t b� th� trong ph�o hoa l�i ra 1 vi�n#cB3DB35#{_INFOMSG%s}#I.", LuaFnGetName(sceneId, selfId), ItemInfo);
					end
					BroadMsgByChatPipe(sceneId, selfId, message, 4);
				end
				return
			end
			gemRandValue = gemRandValue - gemTemp.rate;
		end
	end
end
