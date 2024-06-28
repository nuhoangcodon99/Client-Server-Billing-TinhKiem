--åÐÒ£NPC
--Àî¿þÀÜ
--ÆÕÍ¨

--½Å±¾ºÅ
x014007_g_ScriptId = 014007

x014007_g_xuanWuDaoId=400918 --[tx42913]

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ£¬SceneID£¬PosX£¬PosY£¬ÃÅÅÉID)
x014007_g_mpInfo		= {}
x014007_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x014007_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x014007_g_mpInfo[2]	= { "Thiªu Lâm",  9,  95, 137, MP_SHAOLIN }
x014007_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x014007_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x014007_g_mpInfo[5]	= { "Nga My", 15,  89, 144, MP_EMEI }
x014007_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x014007_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x014007_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }



--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_xiaoyao_0003}")
		if	GetLevel( sceneId, selfId)>=10  then	
			AddNumText(sceneId,x014007_g_ScriptId,"LÕc Dß½ng",9,0)
			AddNumText(sceneId,x014007_g_ScriptId,"Tô Châu",9,1)
			AddNumText( sceneId, x014007_g_ScriptId, "LÕc Dß½ng - CØu châu thß½ng hµi", 9, 3 )
			AddNumText( sceneId, x014007_g_ScriptId, "Tô Châu - Thiªt tßþng ph¯", 9, 4 )
		end
		
		--add by WTT
		if	GetLevel( sceneId, selfId)>=20  then	
			AddNumText( sceneId, x014007_g_ScriptId, "Thúc Hà C± tr¤n", 9, 6 )
		end
		
		if	GetLevel( sceneId, selfId)>=75  then	
			AddNumText( sceneId, x014007_g_ScriptId, "#{MPCSLL_80925_01}", 9, 5 )
		end
		AddNumText(sceneId,x014007_g_ScriptId,"ÐÕi Lý",9,2)
	
		--[tx42913]
		CallScriptFunction( x014007_g_xuanWuDaoId, "OnEnumerate",sceneId, selfId, targetId )
		--[/tx42913]		
		
		AddNumText(sceneId,x014007_g_ScriptId,"Ðßa ta ðªn các phái khác",9,11)
		
		-- ÎÒÔõÑù²ÅÄÜÈ¥¶Ø»ÍºÍáÔÉ½
		AddNumText( sceneId, x014007_g_ScriptId, "Ðªn Ðôn Hoàng và Tung S½n?", 11, 2000 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x014007_OnEventRequest( sceneId, selfId, targetId, eventId )

------------------------------------------------------------------------------------------
--[tx42913]
	if eventId == x014007_g_xuanWuDaoId then --È¥ÐþÎäµº
		CallScriptFunction( x014007_g_xuanWuDaoId, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end
--[/tx42913]
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
  
    if  GetNumText() == 11 then
        
		BeginEvent(sceneId)
		    
		    for i=0, 8 do
				AddNumText( sceneId, x014007_g_ScriptId, "Môn phái - "..x014007_g_mpInfo[i][1], 9, i+12 )
			end			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
		return 
    end
    
    num = GetNumText()

 	if num > 11 then
 		-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ113ºÅBUFF
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113) == 1   then
			BeginEvent( sceneId )
				AddText( sceneId, "  Ngß½i ðang có nhi®m vø d¸ch chuy¬n, ta không th¬ giúp ngß½i ðßþc" ) 
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			return
 		end
 	
 	    i = num - 12
		CallScriptFunction( (400900), "TransferFuncFromNpc", sceneId, selfId, x014007_g_mpInfo[i][2], x014007_g_mpInfo[i][3], x014007_g_mpInfo[i][4] )
		return
	end
------------------------------------------------------------------------------------------ 

	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0, 234, 321, 10)
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1, 202,258, 10)
	elseif	GetNumText()==3	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0, 328, 270, 10)
	elseif	GetNumText()==4	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1, 332, 225, 10)
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 2, 252, 126)
	elseif  GetNumText()==5	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 186,288,136,75)
	end
	
	--add by WTT
	if GetNumText()== 6 then					--ÊøºÓ¹ÅÕò		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x014007_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± tr¤n là n½i cñc kì nguy hi¬m. PK · ðây không b¸ lên sát khí. Ngß½i ch¡c ch¡n mu¯n ði chÑ ??");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end		

end

--add by WTT
function x014007_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
