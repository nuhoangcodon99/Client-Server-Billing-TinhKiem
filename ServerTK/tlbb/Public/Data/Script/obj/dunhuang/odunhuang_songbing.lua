--����NPC
--�ξ�
--��ͨ

--**********************************
--�¼��������
--**********************************

function x008007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nRet = random(5)
		if	nRet <=1	then
			AddText(sceneId,"Ba n�m tr߾c, tr�n chi�n � Ng�c M�n Quan, ch�ng ta �� thua qu�n T�y H�, � m�t Ng�c M�n Quan. Ъn gi� ch�ng ta �� ��nh ���c m߶i m�y tr�n c� l�n v� nh�, v�n ch�a kh�i ph�c l�i ���c Ng�c M�n Quan")
		elseif	nRet <=2	then
			AddText(sceneId,"M�y h�m tr߾c, D߽ng t� l�nh m�i m�t ng߶i � Qu�c t� gi�mT�y Kinh �n nghe n�i l� em trai c�a th�i th� Ng�c M�n Quan T�o Di�n Hu�, t�n l� T�o Di�n Th�. G�n g�y D߽ng t� l�nh ng�y n�o c�ng b�n b�c qu�n m�t v�i �ng ta")
		elseif	nRet <=3	then
			AddText(sceneId,"Ta nghe Trung qu�n quan n�i, c�ch ��y kh�ng l�u, khi �ng ta quan s�t �a h�nh � #GTam Nguy S�n#W th� nh�n th�y m�t c� g�i nh� th�n ti�n tr�n tr�i. �, h�nh nh� l� � g�n #G [220,100]#W")
		elseif	nRet <=4	then
			AddText(sceneId,"Ta nghe Trung qu�n quan n�i, c�ch ��y kh�ng l�u, �ng � #GChi�t Li�u Hi�p#W th� g�p qu�n T�y H�, s� qu� n�n tr�n v�o m�t c�i �ng n�i b� m�t m�i tho�t th�n ���c. �, h�nh nh� l� � g�n #G [149,42]#W")
		else
			AddText(sceneId,"C� theo #GChi�t Li�u Hi�p#W m� �i l� t�i ���c #GNg�c M�n Quan#W, �, ch�nh g�n #G [66,91]#W. C�c h� nh� c�n th�n, qu�n T�y H� r�t t�n b�o, gi�t ng߶i kh�ng nh�y m�t")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

