--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801004_g_ScriptId = 801004;

--Ҫ��ʾ�ļ����б� 
x801004_g_DemoSkills = {};
--����������  x801004_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801004_g_DemoSkills[800]="Ng�c N� Xuy�n Xoa";
x801004_g_DemoSkills[801]="Du Nh�n H�u D�";
x801004_g_DemoSkills[802]="Y�n T� SaoTh�y";
x801004_g_DemoSkills[803]="B�ch H�c L��ng S�";
x801004_g_DemoSkills[804]="H� Bao Хu";
x801004_g_DemoSkills[805]="Song Phong Qu�n Nh�";
x801004_g_DemoSkills[806]="Tam Ho�n S�o Nguy�t";
x801004_g_DemoSkills[807]="L�m T߾c V�";
x801004_g_DemoSkills[808]="T߽ng Nho D� M�c";
x801004_g_DemoSkills[809]="Th� V�n Tung";
x801004_g_DemoSkills[810]="D� M� Ph�n Tung";
x801004_g_DemoSkills[811]="Nh� Phong T� B�";
x801004_g_DemoSkills[812]="H�n Mai �nh Tuy�t";
x801004_g_DemoSkills[813]="��i kh�i tinh";
x801004_g_DemoSkills[814]="Ch�n Th�c Th�t Ti�t Tr�n";

--��ӵ�е��¼�Id�б�
x801004_g_eventList={800,801,802,803,804,805,806,807,808,809,810,811,812,813,814};
--**********************************
--�¼��������
--**********************************
function x801004_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan");
--	for i=1,getn(x801004_g_eventList) do 
	for nIdx, nEvent in x801004_g_eventList do
		--�����ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801004_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801004_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId,  eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801001, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
