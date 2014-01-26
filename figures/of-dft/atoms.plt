set terminal postscript enhanced color portrait "Times-Roman,8"
set output "../of_atoms.ps"

set multiplot
set size 0.5,0.25
set key top right

set origin 0.0,0.7
set title 'Hydrogen'
set ylabel '{/Symbol r}(r)'
set xlabel 'r'
set yrange [0:0.4]
set xrange [-4:4]
plot 'h_HF.line' using ($3-16):4 w l lt 1 lw 2 lc 1 title '  HF',\
'h_LDA.line' using ($3-16):4 w l lt 2 lw 2 lc 2 title ' LDA',\
'h_DW.line' using ($3-16):4 w l lt 3 lw 2 lc 3 title '  DvW',\
'h_TFDW.line' using ($3-16):4 w l lt 4 lw 2 lc 4 title 'TFDvW'

set origin 0.5,0.7
set title 'Neon'
set ylabel '{/Symbol r}(r)'
set xlabel 'r'
set yrange [0:800]
set xrange [-0.5:0.5]
plot 'ne_HF.line' using ($3-16):4 w l lt 1 lw 2 lc 1 title '  HF',\
'ne_LDA.line' using ($3-16):4 w l lt 2 lw 2 lc 2 title ' LDA',\
'ne_DW.line' using ($3-16):4 w l lt 3 lw 2 lc 3 title '  DvW',\
'ne_TFDW.line' using ($3-16):4 w l lt 4 lw 2 lc 4 title 'TFDvW'

