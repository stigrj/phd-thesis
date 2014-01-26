set terminal postscript enhanced color portrait "Times-Roman,8"
set output "../of_molecules.ps"

set multiplot
set size 0.5,0.25
set key top right

set origin 0.0,0.7
set title 'H_2'
set ylabel '{/Symbol r}(r)'
set xlabel 'r'
set yrange [0:0.5]
set xrange [-4:4]
plot 'h2_HF.line' using ($3-16):(2*$4) w l lt 1 lw 2 lc 1 title '  HF',\
'h2_LDA.line' using ($3-16):(2*$4) w l lt 2 lw 2 lc 2 title ' LDA',\
'h2_DW.line' using ($3-16):4 w l lt 3 lw 2 lc 3 title '  DvW',\
'h2_TFDW.line' using ($3-16):4 w l lt 4 lw 2 lc 4 title 'TFDvW'

set origin 0.5,0.7
set title 'BH'
set ylabel '{/Symbol r}(r)'
set xlabel 'r'
set yrange [0:2]
set xrange [-2.0:3.0]
plot 'bh_HF.line' using ($1-16):4 w l lt 1 lw 2 lc 1 title '  HF',\
'bh_LDA.line' using ($1-16):4 w l lt 2 lw 2 lc 2 title ' LDA',\
'bh_DW.line' using ($1-16):4 w l lt 3 lw 2 lc 3 title '  DvW',\
'bh_TFDW.line' using ($1-16):4 w l lt 4 lw 2 lc 4 title 'TFDvW'

