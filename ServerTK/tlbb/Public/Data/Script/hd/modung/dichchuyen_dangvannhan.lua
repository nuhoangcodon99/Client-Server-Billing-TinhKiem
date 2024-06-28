--NPC Dich chuyen MD
--Author: mrhong@2gvn
--Date:1/3/2012


x000500_g_ScriptId = 000500

x000500_g_xuanWuDaoId=400918 --[tx42913]

x000500_g_mpInfo		= {}
x000500_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x000500_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x000500_g_mpInfo[2]	= { "Thiªu Lâm",  9,  95, 137, MP_SHAOLIN }
x000500_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x000500_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x000500_g_mpInfo[5]	= { "Nga My", 15,  89, 144, MP_EMEI }
x000500_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x000500_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x000500_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }
x000500_g_mpInfo[9]	= { "Mµ Dung", 435,  29, 137, 9 }


function x000500_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Mu¯n gia nh§p Mµ Dung gia có th¬ ði tìm Mµ Dung Ki®t , sau khi vào môn phái có th¬ tìm Mµ Dung Thanh S½n h÷c võ công.")
		if	GetLevel( sceneId, selfId)>=10  then	
			AddNumText(sceneId,x000500_g_ScriptId,"LÕc Dß½ng",9,0)
			AddNumText(sceneId,x000500_g_ScriptId,"Tô Châu",9,1)
			AddNumText( sceneId, x000500_g_ScriptId, "LÕc Dß½ng - CØu Châu thß½ng hµi", 9, 3 )
			AddNumText( sceneId, x000500_g_ScriptId, "Tô Châu - Thiªt tß¶ng ph¯", 9, 4 )
		end
		
		if	GetLevel( sceneId, selfId)>=20  then	
			AddNumText( sceneId, x000500_g_ScriptId, "Thúc Hà C± Tr¤n", 9, 6 )
		end
		
		if	GetLevel( sceneId, selfId)>=75  then	
			AddNumText( sceneId, x000500_g_ScriptId, "#{MPCSLL_80925_01}", 9, 5 )
		end
		AddNumText(sceneId,x000500_g_ScriptId,"ÐÕi Lý",9,2)	
		
    CallScriptFunction( x000500_g_xuanWuDaoId, "OnEnumerate",sceneId, selfId, targetId )

	
		AddNumText(sceneId,x000500_g_ScriptId,"Dçn ta t¾i các môn phái khác",9,11)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000500_OnEventRequest( sceneId, selfId, targetId, eventId )

------------------------------------------------------------------------------------------

	if eventId == x000500_g_xuanWuDaoId then
		CallScriptFunction( x000500_g_xuanWuDaoId, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end

  
    if  GetNumText() == 11 then
        
		BeginEvent(sceneId)
		    
		    for i=0, 9 do
				AddNumText( sceneId, x000500_g_ScriptId, "Môn phái - "..x000500_g_mpInfo[i][1], 9, i+12 )
			end			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
		return 
    end
    
    num = GetNumText()

 	if num > 11 then
 
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113) == 1   then
			BeginEvent( sceneId )
				AddText( sceneId, "  Ðang làm Tào v§n ho£c thß½ng nhân thì không th¬ di chuy¬n · ch² tÕi hÕ ðßþc." ) 
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			return
 		end
 	
 	    i = num - 12
		CallScriptFunction( (400900), "TransferFuncFromNpc", sceneId, selfId, x000500_g_mpInfo[i][2], x000500_g_mpInfo[i][3], x000500_g_mpInfo[i][4] )
		return
	end
------------------------------------------------------------------------------------------ 


	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,132,183, 10)
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,114,162, 10)
	elseif	GetNumText()==3	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,234,132, 10)
	elseif	GetNumText()==4	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,235,132, 10)
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 2,241,141)
	elseif  GetNumText()==5	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 186,288,136,75)
	end
	

	if GetNumText()== 6 then						
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x000500_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là noi PK không b¸ sát khí, các hÕ có mu¯n ðªn không?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end		

end


function x000500_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
