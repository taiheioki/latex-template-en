#!/usr/bin/env perl
@default_files = ('main.tex');

$log_wrap = 4096;
ensure_path('max_print_line', $log_wrap);
ensure_path('TEXINPUTS', './okicmd//');

$pdf_mode = 1;
$pdflatex = 'pdflatex -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1 %O %S';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex_use = 1.5;
