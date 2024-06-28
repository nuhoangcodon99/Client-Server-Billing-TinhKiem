--NPC演示技能特效用
--演示NPC
--普通
--这个NPC最好是不会还手，可攻击，但是不会受到任何伤害
--脚本号
x801006_g_ScriptId = 801006;

--要演示的技能列表 
x801006_g_DemoSkills = {};
--声明方法：  x801006_g_DemoSkills[技能的编号] = "技能的名字"; 注：后面会把技能的编号当事件号使用 

x801006_g_DemoSkills[834]="Li阯 Ch鈛 H� Thi 械c";
x801006_g_DemoSkills[835]="Th Tinh Th C痶";
x801006_g_DemoSkills[836]="飲鴆止渴";
x801006_g_DemoSkills[837]="拖泥帶水";
x801006_g_DemoSkills[838]="焦頭爛額";
x801006_g_DemoSkills[839]="移花接木";
x801006_g_DemoSkills[840]="笑裏藏刀";
x801006_g_DemoSkills[841]="笑口常開";
x801006_g_DemoSkills[842]="笑語解頤";
x801006_g_DemoSkills[843]="含沙射影";
x801006_g_DemoSkills[844]="四面楚歌";
x801006_g_DemoSkills[845]="呆若木雞";
x801006_g_DemoSkills[846]="水淹七軍";
x801006_g_DemoSkills[847]="行屍走肉";
x801006_g_DemoSkills[848]="惡貫滿盈";
--所拥有的事件Id列表
x801006_g_eventList={834,835,836,837,838,839,840,841,842,843,844,845,846,847,848};
--**********************************
--事件交互入口
--**********************************
function x801006_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    歡迎光臨。請選擇想要觀看的技能。");
--	for i=1,getn(x801006_g_eventList) do 
	for nIdx, nEvent in x801006_g_eventList do
		--添加演示技能的按钮 
		AddNumText(sceneId, nEvent, x801006_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--事件列表选中一项
--**********************************
function x801006_OnEventRequest( sceneId, selfId, targetId, eventId )
	--问题selfId,和TargetId分别是什么的ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801006, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
