--大理NPC
--宋军
--普通

--**********************************
--事件交互入口
--**********************************

function x008007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nRet = random(5)
		if	nRet <=1	then
			AddText(sceneId,"Ba n錷 tr呔c, tr chi猲 � Ng鱟 M鬾 Quan, ch鷑g ta 疸 thua qu鈔 T鈟 H�, 瓞 m Ng鱟 M鬾 Quan. 歇n gi� ch鷑g ta 疸 疳nh 疬㧟 m叨i m tr c� l緉 v� nh�, v鏽 ch遖 kh鬷 ph鴆 l読 疬㧟 Ng鱟 M鬾 Quan")
		elseif	nRet <=2	then
			AddText(sceneId,"M h鬽 tr呔c, D呓ng t� l畁h m秈 m祎 ng叨i � Qu痗 t� gi醡T鈟 Kinh 皙n nghe n骾 l� em trai c黙 th醝 th� Ng鱟 M鬾 Quan T鄌 Di阯 Hu�, t阯 l� T鄌 Di阯 Th�. G g鈟 D呓ng t� l畁h ng鄖 n鄌 c鹡g b鄋 b誧 qu鈔 m v緄 鬾g ta")
		elseif	nRet <=3	then
			AddText(sceneId,"Ta nghe Trung qu鈔 quan n骾, c醕h 疴y kh鬾g l鈛, khi 鬾g ta quan s醫 鸶a h靚h � #GTam Nguy S絥#W th� nh靚 th m祎 c� g醝 nh� th ti阯 tr阯 tr秈. �, h靚h nh� l� � g #G [220,100]#W")
		elseif	nRet <=4	then
			AddText(sceneId,"Ta nghe Trung qu鈔 quan n骾, c醕h 疴y kh鬾g l鈛, 鬾g � #GChi猼 Li璾 Hi畃#W th� g qu鈔 T鈟 H�, s� qu� n阯 tr痭 v鄌 m祎 c醝 鸬ng n鷌 b� m m緄 tho醫 th鈔 疬㧟. �, h靚h nh� l� � g #G [149,42]#W")
		else
			AddText(sceneId,"C� theo #GChi猼 Li璾 Hi畃#W m� 餴 l� t緄 疬㧟 #GNg鱟 M鬾 Quan#W, �, ch韓h g #G [66,91]#W. C醕 h� nh� c th, qu鈔 T鈟 H� r t鄋 b誳, gi猼 ng叨i kh鬾g nh醳 m")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

