--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801002_g_ScriptId = 801002;

--Ҫ��ʾ�ļ����б� 
x801002_g_DemoSkills = {};
--����������  x801002_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801002_g_DemoSkills[768]="Th�i T�m Li�t T�";
x801002_g_DemoSkills[769]="Huy�n �m Ch� D߽ng";
x801002_g_DemoSkills[770]="Thi�n иa аng Th�";
x801002_g_DemoSkills[771]="Ng� Tinh Li�n Ch�u";
x801002_g_DemoSkills[772]="H�a Tinh Xung Nh�t";
x801002_g_DemoSkills[773]="Th�t Tinh L�c Tr߶ng Kh�ng";
x801002_g_DemoSkills[774]="Th�n H�nh B�ch Bi�n";
x801002_g_DemoSkills[775]="Ch� L�c Vi M�";
x801002_g_DemoSkills[776]="Th�u L߽ng Ho�n Tr�";
x801002_g_DemoSkills[777]="Thi�n N� Vu Nh�n";
x801002_g_DemoSkills[778]="N� Ph�t Xung Quan";
x801002_g_DemoSkills[779]="L�i ��nh Chi N�";
x801002_g_DemoSkills[780]="Ngh�a Ph�n �i�n �ng";
x801002_g_DemoSkills[781]="H�u T�ch B�c Ph�t";
x801002_g_DemoSkills[782]="Nh�n Qu� аng а";
 
--��ӵ�е��¼�Id�б�
x801002_g_eventList={768,769,770,771,772,773,774,775,776,777,778,779,780,781,782};
--**********************************
--�¼��������
--**********************************
function x801002_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan");
--	for i=1,getn(x801002_g_eventList) do 
	for nIdx, nEvent in x801002_g_eventList do
		--�����ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801002_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801002_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId, targetId,1,0,0,0,0);
	--CallScriptFunction( 801001, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
