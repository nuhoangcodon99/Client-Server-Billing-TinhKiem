--�µ�Ԫ���̵�

x888902_g_scriptId = 888902
--Ԫ���̵��б� Ҫ��ͻ��˽����Ӧ
x888902_g_shoplist = {}
x888902_g_shoplist[1]	= {209,178,228}				--khu vuc buon ban
x888902_g_shoplist[2]	= { 150, 198, 193}			--Bao thach Dai ly bao thach- ld bao thach--149",czf,2009.07.21
x888902_g_shoplist[3]	= {155,154,135, 152, 195}			--tran thu thuong thanh
x888902_g_shoplist[4]	= {136, 137, 144}				--nam bac tap  hoa
x888902_g_shoplist[5]	= {120, 181, 145, 182, 134,165}			--quang truong hinh tuong
x888902_g_shoplist[6]	= {156, 157, 158, 159, 160, 161, 162, 163}	--da tao do


x888902_g_shoplist[9]	= {149,150, 178, 198, 194, 136}			--��Ҫ��ǿ��
x888902_g_shoplist[10]	= {134, 120, 181, 145, 182}			--��Ҫ��������
x888902_g_shoplist[11]	= {149,150, 178, 193, 137}			--��Ҫ���켫Ʒװ��
x888902_g_shoplist[12]	= {194, 135, 152, 195}				--��Ҫ���켫Ʒ����
x888902_g_shoplist[13]	= {134, 144}					--��Ҫ�ƶ��ĸ���
x888902_g_shoplist[14]	= {191, 192, 133, 120, 134}			--��Ҫ����˱��
x888902_g_shoplist[15]	= {146, 135, 152}				--��Ҫѧϰ�¼���
---Shop �t
x888902_g_shoplist[101]	= {164, 197,132,219,219}		
x888902_g_shoplist[102]	= {189}			
x888902_g_shoplist[103]	= {194,208}			
x888902_g_shoplist[104]	= {188,225}			
x888902_g_shoplist[105]	= {146,227}			
x888902_g_shoplist[106]	= {190, 191, 192, 133}				--hoa vu nhan gian

--**********************************
-- ��������NPC�Ĺ���
-- op��������𣬱���1����Ԫ����ص������������
--**********************************
function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )

	local bCheck = x888902_YuanbaoShopCheckOp(sceneId,selfId);
	
	if bCheck > 0 then
		if shopA > 0 and shopA < 116 and x888902_g_shoplist[shopA][shopB] ~= nil then
			--PrintStr(x888902_g_shoplist[shopA][shopB])
			if targetId == -1 then
				DispatchYuanbaoShopItem( sceneId, selfId, x888902_g_shoplist[shopA][shopB])
			else
				DispatchNpcYuanbaoShopItem( sceneId, selfId, targetId , x888902_g_shoplist[shopA][shopB])
			end
		end
	end
end

function x888902_YuanbaoShopCheckOp(sceneId,selfId)
	--�ظ�
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Kh�ng th� s� d�ng c�ng n�ng t�i ��y", 0);
		return 0
	end
	--��Ӹ���
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	--˫�����
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--����˫�����״̬�����Ǳ����ģ�����������������
			return 0
		end
	end
	--15������
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 15 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:��ng c�p 15 tr� l�n m�i c� th� s� d�ng c�ng n�ng n�y", 0);
		return 0
	else

		return 1
	end
	return 0
end
