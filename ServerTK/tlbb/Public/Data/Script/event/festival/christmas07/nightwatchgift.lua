
x050023_g_ScriptId	= 050023

x050023_g_ItemBoxPos = {
  
{260,248},{261,240},{262,244},{263,258},{264,246},
{252,245},{251,244},{252,243},{251,242},{250,241},
{250,240},{250,243},{248,243},{248,245},{249,253},
{249,253},{250,253},{253,240},{253,249},{253,239},
{253,248},{251,256},{256,251},{255,255},{251,252},
{254,252},{253,257},{252,254},{256,249},{257,247},
{240,244},{248,247},{257,253},{262,253},{266,253},
{249,251},{250,231},{251,235},{252,237},{253,233},
{249,235},{249,238},{262,238},{253,235},{259,249},
{258,240},{255,240},{263,240},{259,235},{261,269},

}


x050023_g_ItemBoxDrop = {

	--����....
	{ itemId = 30509039, odds = 3000  },--Gi�ng Sinh Vui V�
	{ itemId = 10124606, odds = 3000  },--L� H� Lan Ph߽ng
	{ itemId = 10124610, odds = 3000  },--D�c Huy�t H�n Phong
	{ itemId = 10124614, odds = 3000  },--B�ch Thu� H�m Ph߽ng
	{ itemId = 10124625, odds = 3000  },--D� C�m Thi�n Lan
	{ itemId = 30509082, odds = 3000  },--Ph�o hoa Noel 
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 20310181, odds = 2000  },--Xuy�t Long Th�ch_Nguy�n
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },

	--�ͼ�ñ��....
	{ itemId = 30505107, odds = 400   },--Ti�u l�t b�
	{ itemId = 30505107, odds = 1000  },
	{ itemId = 30505201, odds = 1600  },--H�nh ph�c - kim cuong sa
	{ itemId = 30505201, odds = 2000  },

	--�߼�����....
	{ itemId = 30008018, odds = 3000  },--Thanh T�m �an
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008019, odds = 3000  },--Уc X� L�nh
	{ itemId = 30008019, odds = 4000  },

	--�߼�ñ��....
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008014, odds = 4000  },--Th�ng Thi�n Linh �an
	{ itemId = 30008014, odds = 5000  },
	{ itemId = 30008019, odds = 4000  },
	{ itemId = 30900016, odds = 4000  },--Cao c�p B�o Th�ch h�p th�nh ph�
	{ itemId = 30900016, odds = 2050  },

	--��ʯ....
	{ itemId = 50501001, odds = 950   },
	{ itemId = 50501002, odds = 950   },
	{ itemId = 50501003, odds = 950   },
	{ itemId = 50502002, odds = 950   },
	{ itemId = 50502003, odds = 950   },
	{ itemId = 50502004, odds = 950   },
	{ itemId = 50503001, odds = 950   },
	{ itemId = 50504002, odds = 950   },
	{ itemId = 50511001, odds = 950   },
	{ itemId = 50511002, odds = 950   },	
	{ itemId = 50512001, odds = 950   },
	{ itemId = 50512002, odds = 950   },
	{ itemId = 50512003, odds = 950   },
	{ itemId = 50512004, odds = 950   },
	{ itemId = 50513001, odds = 950   },
	{ itemId = 50513002, odds = 950   },
	{ itemId = 50513003, odds = 950   },
	{ itemId = 50613004, odds = 950   },
	{ itemId = 50613005, odds = 950   },
	{ itemId = 50613006, odds = 950   },
	{ itemId = 50614001, odds = 950   },

}
function x050023_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#GCh�c c�c b�n c� 1 m�a gi�ng sinh vui v�. #r#PH�y thu th�p nh�ng m�n qu� quanh t�i � Gi�ng Sinh th�m th� v� nh�!!")
		AddText(sceneId,"#Y JINGLE BELL....JINGLE BELL....JINGLE ALL THE WAYS.....")
		AddNumText(sceneId,x050023_g_ScriptId,"L�m sao Nh�n qu� t�ng Gi�ng Sinh",11,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x050023_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() ==0 then 
		BeginEvent(sceneId)
			AddText(sceneId,"V�o#cFF0000 0h00 ng�y 25-12-2014, #G��i Tuy�t Nh�n � #YL�c D߽ng(256,246)#W s� g�i t�ng t�i t�t c� b�ng h�u nh�ng m�n qu� Gi�ng Sinh c�c k� th� v�")
			AddText(sceneId,"Ch�ng ���c g�i r�t k� c�ng v� �t ngay ng�n v�o trong nh�ng #cFF0000H�p qu� b� m�t #Wn�m xung quanh #Y��i Tuy�t Nh�n")
			AddText(sceneId,"#WC�ng nhau kh�m ph� nh�!!!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

function x050023_OnTimerSnowMan( sceneId, selfId )
	--local checkmst =0
--	local nMonsterNum = GetMonsterCount(sceneId)
--	for j=0, nMonsterNum-1 do
--		local nMonsterId = GetMonsterObjID(sceneId,j)	
--		if GetMonsterDataID( sceneId, nMonsterId ) == 3881 then
--			checkmst =3881 
--		end
--	end
	--if checkmst == 0 then
		--local mstId = LuaFnCreateMonster(sceneId, 3881, 255.8, 245.8, 3, 0, 50023 )
		--SetObjDir( sceneId, mstId, 0 )
	--end
	local curDayTime = GetDayTime()
	if curDayTime == 13358 and GetHour() ==00 and GetMinute() <05 then
	--if GetHour() ==00 and GetMinute() <05 then
		BroadMsgByChatPipe(sceneId,0,"@*;SrvMsg;SCA:" .. "#PT�t c� b�ng h�u h�y mau mau tr� v� #GQu�ng Tr߶ng L�c D߽ng #P� kh�m ph� cho ri�ng m�nh nh�ng ph�n qu� h�p d�n t� #GNg߶i Tuy�t Gi�ng Sinh #P nh�!!!!   #YMERRY CHRISTMAS!!!",4)
		MonsterTalk(sceneId, -1, "��i Tuy�t Nh�n", "#YCh�c t�t c� b�ng h�u c� 1 m�a Gi�ng Sinh vui v� v� �m �p. #PH�y thu th�p h�t nh�ng H�p qu� quanh #GQu�ng Tr߶ng L�c D߽ng#P. Trong �� ch�a r�t nhi�u ph�n qu� c�c k� th� v� c�a t�i d�nh t�ng m�i ng߶i ��!!!")
		x050023_GiveItemBox( sceneId )
	end
end


function x050023_GiveItemBox( sceneId )

	local BoxId = -1
	local DropItemId = -1
	local randValue = 0
	local index = 1
	for _, box in x050023_g_ItemBoxPos do
		--zchw 1/60�������޵���������
		local rdm = random(0, 6000);
		if rdm < 100 then
		
			local BoxId = ItemBoxEnterScene( box[1], box[2], 779, sceneId, QUALITY_MUST_BE_CHANGE, 1, 30505150 ) ---L� v�t gi�ng sinh
			SetItemBoxMaxGrowTime( sceneId, BoxId, 1200000 )	--20����������....		
			
		else
		
			--�������һ����Ʒ....
			randValue = random(0, 99999);
			for i, item in x050023_g_ItemBoxDrop do
				if item.odds >= randValue then
					DropItemId = item.itemId;
					index = i
					break
				end
				randValue = randValue - item.odds;
			end
			if DropItemId == -1 then
				break
			end
			BoxId = ItemBoxEnterScene( box[1], box[2], 779, sceneId, QUALITY_MUST_BE_CHANGE, 1, DropItemId )
			SetItemBoxMaxGrowTime( sceneId, BoxId, 1200000 )	--20����������....
	
			--֮ǰû�������ʥ��ñ�ͱ�ʯ�Ż���ڶ�����Ʒ....
			if ( index < 13 ) or ( index >= 18 and index <= 21 )then
				randValue = random(0, 99999);
				for _, item in x050023_g_ItemBoxDrop do
					if item.odds >= randValue then
						DropItemId = item.itemId
						break
					end
					randValue = randValue - item.odds;
				end
				if DropItemId == -1 then
					break
				end
				AddItemToBox( sceneId, BoxId, QUALITY_MUST_BE_CHANGE, 1, DropItemId )
			end
			
		end
	end
end

function x050023_OnPlayerPickUpItemInLuoyang( sceneId, selfId, itemId, bagidx )

	--�ǻʱ���򲻹���....
	--if 0 == x050023_CheckActivityTime( sceneId ) then
	--	return 0
	--end

	local IsBoxItem = 0
	local ItemCount = getn(x050023_g_ItemBoxDrop)
	for i = 14, ItemCount do --����ʯ������ zchw
		if x050023_g_ItemBoxDrop[i].itemId == itemId then
			IsBoxItem = 1
			break
		end
	end
	--���޵������裨95���� ���� 30309683 zchw
	if itemId == 30309683 then
		IsBoxItem = 1;
		--��־ͳ��
		local guid = LuaFnObjId2Guid(sceneId, selfId)
		local log = format("itemId=%d", itemId)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_SNOW, guid, log)
	end
	
	if IsBoxItem == 0 then
		return 0
	end

	--����....
	local playerName = GetName(sceneId, selfId)
	local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)
	local rand = random(3)
	local message
	if rand == 1 then
		message = format("#PThi�n gi�ng h�n tuy�t, h� s� doanh m�n. #{_INFOUSR%s}#P t�nh c� �i b� tr�n �߶ng ph� L�c D߽ng may m�n nh�t ���c #{_INFOMSG%s}#P, �ang v�n ��, n�n c� ti�p t�c h�ng say.", playerName, transfer )
	elseif rand == 2 then
		message = format("#PB�c phong xuy, tuy�t hoa phi�u, L�c D߽ng th��ng kh�ng h� t�i b�o #{_INFOUSR%s}#P �� nhanh ch�ng ch�n ���c #{_INFOMSG%s}#P th�t l� may m�n !", playerName, transfer )
	else
		message = format("#PTuy�t Nh�n h�o, Tuy�t Nh�n di�u, Tuy�t Nh�n t�n l�c b�o b�i oa oa khi�u. #{_INFOUSR%s}#P ���c ch�n gi� #{_INFOMSG%s}#P ng�i x�m tr�n �߶ng ph� L�c D߽ng c߶i ng� ng�n", playerName, transfer )
	end
	BroadMsgByChatPipe(sceneId, selfId, message, 4)

	return 1
end
--end
