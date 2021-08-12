# MP4ファイル及びAviutl使用前提。
# エラーで動画を読み込めない場合は「LAVFilters」や「ffdshow」などのコーデックをインストールすると上手く行くかも（情報源: yanorei32）

# L-SMASH Works のインストール必要。音声はどうにかして抽出していい感じに重ねる。

LoadPlugin("lsmash_plugin_path") # L-SMASH Works の dll パスに置換。
LSmashVideoSource("filepath") # filepathは目的のmp4のファイルパスに置換。
super=MSuper(pel=4, hpad=0, vpad=0)
backward_1 = MAnalyse(super, chroma=false, isb=true, blksize=4, blksizev=4, searchparam=3, plevel=0, search=3, badrange=(-24))
forward_1 = MAnalyse(super, chroma=false, isb=false, blksize=4, blksizev=4, searchparam=3, plevel=0, search=3, badrange=(-24))
backward_2 = MRecalculate(super, chroma=false, backward_1, blksize=4, blksizev=4, searchparam=2, search=3)
forward_2 = MRecalculate(super, chroma=false, forward_1, blksize=4, blksizev=4, searchparam=2, search=3)
MBlockFps(super, backward_2, forward_2, num=60, den=1, mode=1) # num の値を弄るとFPS変更。恐らく60が最高？120等では変化が見られなかった
