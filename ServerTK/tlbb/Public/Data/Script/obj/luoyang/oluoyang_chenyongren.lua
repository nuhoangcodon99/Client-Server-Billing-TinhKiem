--������

--�ű���
x311001_g_scriptId = 311001

--**********************************
--�¼��б�
--**********************************
function x311001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ��i hi�p, �� �i xem h�i hoa c�a L�c D߽ng ch�a? C� nh�n th�y c� n߽ng S� S� kh�ng? Nghe n�i m�i l�n h�i hoa c� n߽ng S� S� �u �n xem, ��ng ti�c, t�i h� b�n lo c�ng v�, kh�ng c� duy�n g�p m�t")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x311001_OnDefaultEvent( sceneId, selfId,targetId )
end
