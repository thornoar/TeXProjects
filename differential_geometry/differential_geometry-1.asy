if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="differential_geometry-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);


usepackage("bm");
texpreamble("\def\V#1{\bm{#1}}");
defaultpen(fontsize(12pt));

import "General.asy" as general;


size(9cm);

import "D:/MicrosoftVSCodeProjects/TeXProjects/Libs/Asymptote/Smooth.asy" as smooth;

smooth sm1 = smooth(
contour = (-4,1)..(-1,6)..(1,2.5)..(3.5,1)..(2,-3)..(-5,-3)..cycle,
label = "",
holes = new hole[]{
hole(contour = (-2,0)..(1,2)..(0,-3)..(-1,-1).. cycle,
sections = new real[][]{
new real[]{3,-1, 140, 7}
},
shift = (1.3,-.3),
neighnumber = 1,
scale = .6,
rotate = -90
),
hole(
contour = reverse(ellipse(c = (0,0), a = 1, b = 2)),
shift = (-1.5,2.6),
scale = 1
),
hole(
contour = (-2,0)..(0,4)..(1.6,1.8)..(4,0)..(0,-2)..cycle,
neighnumber = 1,
sections = new real[][]{
new real[]{-3,-1, 150, 6}
},
shift = (-2.6,-2.3),
scale = .4,
rotate = -20
)
}
);
//auxil
draw(sm1, viewdir = dir(120), drawdashes = true);
// draw((0,0)--(1,1), green);
