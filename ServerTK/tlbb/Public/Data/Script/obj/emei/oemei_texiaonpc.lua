--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801005_g_ScriptId = 801005;

--Ҫ��ʾ�ļ����б� 
x801005_g_DemoSkills = {};
--����������  x801005_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801005_g_DemoSkills[816]="Ho�n Ph�ng Quy H�n";
x801005_g_DemoSkills[818]="C�u �m B�ch C�t Tr�o";
x801005_g_DemoSkills[819]="Th�i A ��o Tr�";
x801005_g_DemoSkills[820]="Ph�t Quang Ph� Chi�u";
x801005_g_DemoSkills[821]="Kim Ch�m е Ki�p";
x801005_g_DemoSkills[822]="Ninh Tinh Chi V�";
x801005_g_DemoSkills[823]="Xung H� D��ng Kh�";
x801005_g_DemoSkills[824]="Di�u B�t Sinh Hoa";
x801005_g_DemoSkills[825]="Kh�i T� H�i Sinh";
x801005_g_DemoSkills[826]="Kinh M�ch Ngh�ch H�nh";
x801005_g_DemoSkills[827]="Di H�n ��i Ph�p";
x801005_g_DemoSkills[828]="D�ch C�n �o�n C�t";
x801005_g_DemoSkills[829]="V�n Nh�c Tri�u T�ng";
x801005_g_DemoSkills[830]="Di�n Ni�n �ch Th�";
x801005_g_DemoSkills[831]="Sinh M�nh Chi Tuy�n";

--��ӵ�е��¼�Id�б�
x801005_g_eventList={816,818,819,820,821,822,823,824,825,826,827,828,829,830,831};
--**********************************
--�¼��������
--**********************************
function x801005_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan");
--	for i=1,getn(x801005_g_eventList) do 
	for nIdx, nEvent in x801005_g_eventList do
		--�����ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801005_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801005_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId, 1,0,0,0,0);
	--CallScriptFunction( 801005, "LuaFnUnitUseSkill",sceneId, selfId,eventId ,targetId);
	--return;
end
