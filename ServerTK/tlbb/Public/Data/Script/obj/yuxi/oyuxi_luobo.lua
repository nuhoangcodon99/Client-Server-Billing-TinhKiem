--��ϪNPC
--�ܲ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x027003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Xin ch�o. #r#rTa l� La B�c. #r#rCha ta l� T� M�u La, #r#rM� ta l� C� L� L�p. #rMu�i ta l� Y Na. #r...#rX� l� xong.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
