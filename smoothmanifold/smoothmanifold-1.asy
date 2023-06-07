if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="smoothmanifold-1";
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



\if@newlist \advance \par@deathcycles \@ne \ifnum \par@deathcycles >\@m \@noitemerr {\@@par }\fi \else {\@@par }\fi import "smoothmanifold/smoothmanifold.asy" as smooth;

size(18cm);

smooth sm1 = samplesmooth(0);
smooth sm2 = samplesmooth(1);
smooth sm3 = samplesmooth(2);

currentpen = linewidth(.7pt);

sm1.move(shift = (9,12), scale = 3);
sm2.move(shift = (-6,1), scale = 1.5);
sm3.move(shift = (10,-6), rotate = 50);

sm1.set_label("$S^2$", labeldir = dir(60));

pair viewdir = (1,-1);

draw(sm1, viewdir = viewdir);
draw(sm2, viewdir = viewdir);
draw(sm3, viewdir = viewdir);

draw_arrow(sm2, sm1, curve = -.25, L = Label("$f$", align = W+.7*N));
draw_arrow(sm2, sm3, ind1 = 0, curve = .3, L = "$f \circ g$", overlap = true);
draw_arrow(sm1, sm3, curve = -.25, L = Label("$g$", align = E+.4*N));

label("\Large Package \textbf{\texttt{smoothmanifold}}", (5, 5));
label("Roman Maksimovich", (5, 3.5));
label("\today", (5, 2));
