-- ����NPC
-- Ⱥ��

x050202_g_scriptId = 050202

x050202_g_festivalwords =
{
	"    Th� gian n�i �n n�i c� kh�ng kh� trong l�nh m�t m� l� ph�i nh�c �n D� T�y H�",
	"    M�a H� n�m nay kh�ng h�ng m�t, h�ng m�t th� ph�i �n D� T�y H�",
	"    M�t c�n gi� nh� nh� nh� th�i ngang ng߶i th�t l� tho�i m�i",
	"    M�a H� n�m sau, ta s� l�i �n D� T�y H� h�ng m�t",
	"    Nh�n ��y n�y! Nh�n ��y n�y! Nh�n ��y n�y!",
	"    D� T�y H� ��ng l� ti�n c�nh trong nh�n gian, nghe n�i n�i ��y c�n c� Ng߶i Tuy�t.",
	"    Khi tr� v� ta s� k� l�i v�i b�n b�, r�i m�i ng߶i �u s� �n D� T�y H� h�ng m�t",
	"    Ch� ti�u s�n thu� quang trung, V� s� qu� gi� nh�t h�.",
	"    L� hoa vi�n l�c dung dung nguy�t, Li�u nh� tr� �߶ng ��m ��m phong~~",
	"    Tr�ng l�n �u c�nh li�u, h�n ng߶i sau ho�ng h�n..",
	"    Ta � ti�m n�y mua L�c Чu Thang d�ng c�ng ngon �y, c�c h� c� mu�n th� 1 b�t kh�ng ?",
	"    L�c Чu Thang c�a ti�m n�y ���c l�m, u�ng v�o th�t l� m�t, c�c h� c� mu�n th� 1 b�t kh�ng ?",
	"    M�a H� y�n t�nh, nh�ng ng�i sao tr�n b�u tr�i s�ng l�p l�nh",
	"    Trong �u �ang suy ngh�, suy nghi v� g߽ng m�t c�a b�n",	
	"    M�a H� n�m nay th�t s�ng kho�i, 1 ng�y 10 ch�n L�c Чu Thang. Gi� ��m th�i nh� nh� l�m to�n th�n say, D� T�y H� th�t l� m�t m�.",
	"    M�a H� n�m nay th�t l� ��, kh�ng h� n�ng n�c. Thi�n Long B�t B� D� T�y H� c� th� thi ��o Nguy�n ti�n c�nh",
	"    M�a H� n�i ��y l�i c� Ng߶i Tuy�t, th�t l� th� v�",
	"    M�n L�c Чu Thang m� c�c h� th�ch, v�n c�n n�ng?",
	"    C�c h� nh�n k�a! R�t nhi�u ch�ng �p trai �n T�y H� h�ng m�t!",
	"    C�c h� nh�n k�a! R�t nhi�u m� n� �n T�y H� h�ng m�t!"
}

--**********************************
--�¼��������
--**********************************
function x050202_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = x050202_g_festivalwords[random( getn(x050202_g_festivalwords) )]
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
