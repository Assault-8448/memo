# MP4ファイル及びAviutl使用前提

DirectShowSource("filepath") # filepathは目的のmp4のファイルパスに置換
super=MSuper(pel=4, hpad=0, vpad=0)
backward_1 = MAnalyse(super, chroma=false, isb=true, blksize=4, blksizev=4, searchparam=3, plevel=0, search=3, badrange=(-24))
forward_1 = MAnalyse(super, chroma=false, isb=false, blksize=4, blksizev=4, searchparam=3, plevel=0, search=3, badrange=(-24))
backward_2 = MRecalculate(super, chroma=false, backward_1, blksize=4, blksizev=4, searchparam=2, search=3)
forward_2 = MRecalculate(super, chroma=false, forward_1, blksize=4, blksizev=4, searchparam=2, search=3)
MBlockFps(super, backward_2, forward_2, num=60, den=1, mode=1)