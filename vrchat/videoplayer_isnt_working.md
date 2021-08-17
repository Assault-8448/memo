# VideoPlayerが動かない

- VRChat ビルド 1123 、デスクトップモードにて発生
	- ビデオプレイヤーが一切動かない。URLを入力しロードが走るも、1フレーム目で止まって映像も音声も流れない。

- 「MEROOM」と「自作ワールド」にて発生。
  MEROOMはUnity2019.4.29f1、自作ワールドは2018.4.20f1
  MEROOMの「iwaSyncVideo\_v2.4SK」、自作ワールドの「KineL式VideoPlayer 1.1.1」

他人が打ったURLであっても、自分が打ったURLであっても変わらず発生する。  
Reload・Resyncボタンを押しても変わらず1フレーム目から動かない。  
VRChat関係で唯一なにか触ったとしたら「キャッシュディレクトリ」をデフォルトの位置（AppData\\LocalLow\\VRChat...）にしただけのはず・・・。  
