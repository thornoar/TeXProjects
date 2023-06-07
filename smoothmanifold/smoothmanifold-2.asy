if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="smoothmanifold-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);


usepackage("bm");
texpreamble("\def\V#1{\bm{#1}}");
defaultpen(fontsize(12pt));

import "LaTeX/Asymptote/General.asy" as general;



size(15cm);

import "smoothmanifold/smoothmanifold.asy" as smooth;

smooth sm1 = samplesmooth(0, 1);

draw(sm1, viewdir = dir(-90));

smooth sm2 = samplesmooth(1);

sm2.move(shift = (4,0), scale = .75);

draw(sm2, viewdir = dir(45));
