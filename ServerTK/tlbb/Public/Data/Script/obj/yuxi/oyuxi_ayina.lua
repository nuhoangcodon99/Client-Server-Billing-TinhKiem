--��ϪNPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x027006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng bi�t t�i bao gi� m� m�i tha th� cho cha? N�u hai ng߶i c�ng s�ng b�n nhau nh� tr߾c th� t�t qu�. Ng�y n�o ta c�ng s� ���c g�p La B�c Ca Ca r�i, hay bi�t m�y! Kh�ng bi�t m�y ng�y nay La B�c Ca Ca b�n g� m� kh�ng t�i ch�i v�i ta.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
