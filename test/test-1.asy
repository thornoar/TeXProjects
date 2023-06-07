if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="test-1";
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
//import "Paths.asy" as paths;
//import "Smooth.asy" as smooth;


size(1cm);
draw((1,0)--(0,1), blue);

defaultpen(fontsize(10pt));



// picture test (pair a = (0,0))
// {
// picture res;
// dot(pic = res, a);
// return res;
// }

// add(test((1,2)));

add(drawWFunction(l = new string[]{"1", "2"}, mode = -1));

