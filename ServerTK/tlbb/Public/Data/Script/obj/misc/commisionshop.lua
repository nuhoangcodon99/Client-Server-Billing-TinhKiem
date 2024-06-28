-- �����̵�
-- �ű���

x800116_g_ScriptId = 800116  -- ������Ҳʹ���������ˡ��Ͻ��޸�

-- �����̵�UI 19850424

-- �����̵���Ϣ
x800116_g_CShopInfo = {
	-- 0 ���̵꣬�����Ļ���ò�Ҫ�������� Server һ�� ShopID �����󣬷���Ҫ��������ݽṹ
	[0] = {
		name = "#G L�c D߽ng (160,181) #R�inh �inh",
		type = {
			-- Ԫ��
			[0] = {
				name = "��nh v�ng",
				sellFmtValueStr = "#G %d �i�m nguy�n b�o#l",
				sellFmtPriceStr = "#G#{_MONEY%d}#l",
				sellInfo = "#G Ta mu�n mua nguy�n b�o#l",
				buyFmtValueStr = "%d �i�m nguy�n b�o",
				buyFmtPriceStr = "#{_MONEY%d}",
			},
			-- ��Ǯ
			[1] = {
				name = "аng v�ng",
				sellFmtValueStr = "#G#{_MONEY%d}#l",
				sellFmtPriceStr = "#G %d �i�m nguy�n b�o#l",
				sellInfo = "#G Ta mu�n mua ti�n#l",
				buyFmtValueStr = "#{_MONEY%d}",
				buyFmtPriceStr = "%d �i�m nguy�n b�o",
			}
		}
	},
	-- 1 ���̵꣬�����Ļ���ò�Ҫ�������� Server һ�� ShopID �����󣬷���Ҫ��������ݽṹ
	[1] = {
		name = "#G L�c D߽ng (158, 181) #R��ng ��ng",
		type = {
			-- Ԫ��
			[0] = {
				name = "��nh v�ng",
				sellFmtValueStr = "#G %d �i�m nguy�n b�o#l",
				sellFmtPriceStr = "#G#{_MONEY%d}#l",
				sellInfo = "#G Ta mu�n mua nguy�n b�o#l",
				buyFmtValueStr = "%d �i�m nguy�n b�o",
				buyFmtPriceStr = "#{_MONEY%d}",
			},
			-- ��Ǯ
			[1] = {
				name = "аng v�ng",
				sellFmtValueStr = "#G#{_MONEY%d}#l",
				sellFmtPriceStr = "#G %d �i�m nguy�n b�o#l",
				sellInfo = "#G Ta mu�n mua ti�n#l",
				buyFmtValueStr = "#{_MONEY%d}",
				buyFmtPriceStr = "%d �i�m nguy�n b�o",
			}
		}
	}
}

--**********************************
-- �о��¼�
--**********************************
function x800116_OnEnumerate( sceneId, selfId, targetId )
--AddNumText( sceneId, x800116_g_ScriptId, "���빺����", 5, 1 )       --Del by Houzf in 20080811 because of TT 37697
	AddNumText( sceneId, x800116_g_ScriptId, "Ta mu�n mua nguy�n b�o", 5, 2 )
	if IsShutout( sceneId, selfId, ONOFF_T_CSHOP ) == 0 then
		if GetConfigInfo( sceneId, "IsCloseYuanBaoSell" ) ~= 1 then
			AddNumText( sceneId, x800116_g_ScriptId, "Ta mu�n g�i b�n nguy�n b�o", 5, 3 )
		end
	--	if GetConfigInfo( sceneId, "IsCloseGoldCoinSell" ) ~= 1 then       --Del byHouzf in 20080818
	--		AddNumText( sceneId, x800116_g_ScriptId, "������۽��", 5, 4 )
	--	end
	end
	AddNumText( sceneId, x800116_g_ScriptId, "Thu h�i ti�n v� nguy�n b�o", 5, 6 )
	AddNumText( sceneId, x800116_g_ScriptId, "Gi�i thi�u thu h�i", 11, 7 )
	AddNumText( sceneId, x800116_g_ScriptId, "Gi�i thi�u g�i b�n h�ng", 11, 5 )
end

--**********************************
-- �¼��б�ѡ��һ��
--**********************************
function x800116_OnDefaultEvent( sceneId, selfId, targetId, eventId )

	local opt = GetNumText()

	if opt == 1 then
		x800116_OpenShop( sceneId, selfId, targetId, 3 )
		return
	elseif opt == 2 then
		x800116_OpenShop( sceneId, selfId, targetId, 0 )
		return
	elseif opt == 3 or opt ==4 then
		local _yes = LuaFnOpenPWBox(sceneId,selfId)
		if(_yes==1)then 
			return
		end
	elseif opt == 5 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_095}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif opt == 6 then
		LuaFnAskNpcScriptMail(sceneId, selfId, MAIL_COMMISIONSHOP)
		return
	elseif opt == 7 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_099}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	UserName	= GetName( sceneId, selfId )
	local	i, _			= strfind( UserName, "*" )
	if i == nil then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, opt )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19850424 )		
	else
		BeginEvent( sceneId )
			AddText( sceneId, "T�n c�a c�c h� c� \"*\", y�u c�u c�c h� thay �i t�n tr߾c m�i c� th� s� d�ng ch�c n�ng g�i b�n h�ng b�nh th߶ng." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	return
end

--**********************************
-- ��ĳ���̵�
--**********************************
function x800116_OpenShop( sceneId, selfId, targetId, Grade )
	GetCommisionShop( sceneId, selfId, targetId, Grade )
end

--**********************************
-- ����
--**********************************
function x800116_Buy( sceneId, selfId, targetId, Grade, SerialNumber )
	local ret, shopId, type, value, price, seller = CommisionShopBuy( sceneId, selfId, targetId, Grade, SerialNumber )

	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] and x800116_g_CShopInfo[shopId].name then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			local nameInfo = x800116_g_CShopInfo[shopId].name
			local strGUID = LuaFnGetGUID( sceneId, selfId )
			local len = strlen(strGUID)
			strGUID = strsub( strGUID, len-3 )
			local str = format( "#IHi�n [ID:****%s] � #R%s#I �� hao t�n #Y%s#I mua #Y%s#I.",
				strGUID,
				nameInfo,
				typeInfo.buyFmtPriceStr,
				typeInfo.buyFmtValueStr
				 )
			str = format( str, price, value )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
			
			local sellstr = format("%s m� c�c h� g�i b�n �� #Yb�n th�nh c�ng#W, xin h�y t�m NPC g�i b�n h�ng ch�n \"Thu l�i ti�n v� nguy�n b�o\" l� c� th� l�y ���c ti�n v� nguy�n b�o c�a c�c h�. #r#GCh� �: Ь b�o ��m t�i s�n c�a c�c h�, h�y c� g�ng nh�n l�nh nguy�n b�o v� ti�n trong v�ng 1 tu�n, n�u c�c h� trong 1 tu�n kh�ng nh�n l�nh, nguy�n b�o v� ti�n c� th� s� m�t.",
			  typeInfo.buyFmtValueStr)
			sellstr = format( sellstr, value)
			LuaFnSendSystemMail(sceneId,seller,sellstr)
		end
	end
end

--**********************************
-- ����
--**********************************
function x800116_Sell( sceneId, selfId, targetId, Grade, Price )
	local ret, shopId, type, value, price = CommisionShopSell( sceneId, selfId, targetId, Grade, Price )

	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] and x800116_g_CShopInfo[shopId].name then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			local nameInfo = x800116_g_CShopInfo[shopId].name
			local strGUID = LuaFnGetGUID( sceneId, selfId )
			local len = strlen(strGUID)
			strGUID = strsub( strGUID, len-3 )
			local str = format( "#IHi�n [ID:****%s] � #R%s#I �ang g�i b�n #Y%s, #I gi� b�n #Y%s, #I n�u c� � mu�n mua h�y mau ch�ng v� #G L�c D߽ng#I nh�.",
				strGUID,
				nameInfo,
				typeInfo.buyFmtValueStr,
				typeInfo.buyFmtPriceStr,
				typeInfo.sellInfo,
				typeInfo.name )
			str = format( str, value, price )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end
end

function x800116_TimeOutCommission(sceneId,shopId,itemserial)
	local ret,type,value,price,seller = GetCommisionShopItem(sceneId,shopId,itemserial)
	
	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			
			local sellstr = format("%s c�a c�c h� g�i b�n #Ykh�ng b�n ���c#W, xin h�y �n NPC g�i th� ch�n \"Thu l�i nguy�n b�o v� ti�n\" c� th� l�y ���c nguy�n b�o v� ti�n. #r#GCh� �: Ь b�o ��m t�i s�n c�a c�c h�, h�y c� g�ng nh�n l�nh nguy�n b�o v� ti�n trong v�ng 1 tu�n, n�u c�c h� trong 1 tu�n kh�ng nh�n l�nh, nguy�n b�o v� ti�n c� th� s� m�t.",
			  typeInfo.buyFmtValueStr)
			sellstr = format( sellstr, value)
			LuaFnSendSystemMail(sceneId,seller,sellstr)
		end
	end
end
