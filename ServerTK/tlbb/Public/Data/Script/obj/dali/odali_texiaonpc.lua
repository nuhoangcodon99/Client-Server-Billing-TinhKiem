--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801007_g_ScriptId = 801007;

--Ҫ��ʾ�ļ����б� 
x801007_g_DemoSkills = {};
--����������  x801007_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801007_g_DemoSkills[850]="Vui v� 3";
x801007_g_DemoSkills[851]="H�i phong Ph�t li�u";
x801007_g_DemoSkills[852]="H�u th߶ng v� th߶ng";
x801007_g_DemoSkills[853]="V� ch�ng sinh t߾ng";
x801007_g_DemoSkills[854]="Phi Kh� Phi Vinh";
x801007_g_DemoSkills[855]="Kim Ng�c M�n �߶ng";
x801007_g_DemoSkills[856]="��ng l�n th�nh Ph�t";
x801007_g_DemoSkills[857]="�an ph��ng tri�u d߽ng";
x801007_g_DemoSkills[858]="B�ch C�u Qu� Kh�ch";
x801007_g_DemoSkills[859]="Thi�u Tr�ch Ki�m";
x801007_g_DemoSkills[860]="Th߽ng d߽ng ki�m";
x801007_g_DemoSkills[861]="Thi�u d߽ng ki�m";
x801007_g_DemoSkills[862]="B�ch H�ng Qu�n Nh�t";
x801007_g_DemoSkills[863]="C�i trang th�nh d�n th߶ng �i tu�n";
x801007_g_DemoSkills[864]="V�n n߾c �n tri�u";

--��ӵ�е��¼�Id�б�
x801007_g_eventList={850,851,852,853,854,855,856,857,858,859,860,861,862,863,864};
--**********************************
--�¼��������
--**********************************
function x801007_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan");
--	for i=1,getn(x801007_g_eventList) do 
	for nIdx, nEvent in x801007_g_eventList do
		--�����ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801007_g_DemoSkills[nEvent],11,-1);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801007_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId, 1,0,0,0,0);
	--CallScriptFunction( 801007, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
