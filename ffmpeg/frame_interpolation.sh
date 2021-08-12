#!/bin/sh
ffmpeg -i "input_file" -vf minterpolate=60:2:0:1:8:16:32:0:1:5 encoder=h264_nvenc output.mp4

# input_file は目的のmp4等に変更。

# minterpolate の値は必要に応じて変更する必要があるっぽい。
# 基本的に「60」はFPSで、それ以外は変えなくてもよさそう？
# コマンドは「fps, mi_mode, mc_mode, me_mode, me, mb_size, search_param, vsbmc, scd, scd_threshold」の順番で並んでいる。
# このうち「vsbmc」は必要に応じて「1」にした方がいいのかも？
#
# encoder=h264_nvenc は NVIDIA GPU を使用している際に「NVEnc」を利用してエンコードするオプション。
# WSL だったり、NVIDIA の GPU を使用していない（あるいは使用できない）環境だとエラーを吐くので記述を削除。
#
# 参考: https://nico-lab.net/minterpolate_with_ffmpeg/ and https://ffmpeg.org/ffmpeg-filters.html#minterpolate
