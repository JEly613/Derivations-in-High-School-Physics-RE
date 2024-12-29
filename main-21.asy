if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-21";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(8cm);

draw((0,0) -- -10*dir(10) -- -10*dir(-10) -- cycle);
draw(-10*dir(10) .. -10.3*dir(0) .. -10dir(-10));

label(Label("$R$", position=MidPoint), (0,0) -- -10*dir(10), S);
label(Label("$R$", position=MidPoint), (0,0) -- -10*dir(-10), N);
label(Label("$S$", position=MidPoint), -10*dir(10) .. -10.3*dir(0) .. -10dir(-10), W);
label(Label("$L$", position=MidPoint), -10*dir(10) -- -10*dir(-10), E);

markangle("$d\theta$", -10*dir(-10), (0,0), -10*dir(10));
