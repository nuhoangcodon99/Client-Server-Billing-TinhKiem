--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801003_g_ScriptId = 801003;

--Ҫ��ʾ�ļ����б� 
x801003_g_DemoSkills = {};
--����������  x801003_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801003_g_DemoSkills[784]="B�i Nhi�n H�u V�";
x801003_g_DemoSkills[785]="Ngao du ��ng H�i";
x801003_g_DemoSkills[786]="Ki�n Long T�i �i�n";
x801003_g_DemoSkills[787]="Th�n Long B�i V�";
x801003_g_DemoSkills[788]="Phi Long T�i Thi�n";
x801003_g_DemoSkills[789]="Kh�ng Long H�u H�i";
x801003_g_DemoSkills[790]="C�ch ng�n quan h�a";
x801003_g_DemoSkills[791]="L� ��i ��o C߽ng";
x801003_g_DemoSkills[792]="M�n thi�n qu� h�i";
x801003_g_DemoSkills[793]="Thi�n H� V� C�u";
x801003_g_DemoSkills[794]="B�t c�u tri�u thi�n";
x801003_g_DemoSkills[795]="�p bi�n c�u b�i";
x801003_g_DemoSkills[796]="Ti�n h� th� vi c߶ng";
x801003_g_DemoSkills[797]="Kim Thi�n Tho�t X�c";
x801003_g_DemoSkills[798]="B�o T�n Th� Khuy�t";

--��ӵ�е��¼�Id�б�
x801003_g_eventList={784,785,786,787,788,789,790,791,792,793,794,795,796,797,798};
--**********************************
--�¼��������
--**********************************
function x801003_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan");
--	for i=1,getn(x801003_g_eventList) do 
	for nIdx, nEvent in x801003_g_eventList do
		--�����ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801003_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801003_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId,eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801003, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
