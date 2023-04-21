# VideoPlayerが動かない 再び

2023年2月、またVideoPlayerが動かなくなった。ハゲそう  
結論を言ってしまえば、YouTube APIの仕様変更に対しVRChatで使用しているyt-dlpのバージョンが古く、対応出来ていなかった事が原因だったっぽい。
GitHub yt-dlp から最新のRelease `yt-dlp.exe` を引っ張って LocalLow\VRChat\VRChat\Tools においてあるバイナリを上書きし、読み込み専用にする事で一応解決した。かも