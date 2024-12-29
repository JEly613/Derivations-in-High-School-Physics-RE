if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;


size(2.5cm);
draw((0,0) -- 6*dir(0), arrow=Arrow(3mm));
draw((0,0) -- 6*dir(-22), arrow=Arrow(3mm));
label(Label("$R$", position=MidPoint), (0,0) -- 6*dir(-22), SW);
label(Label("$R$", position=MidPoint), (0,0) -- 6*dir(0), N);

path p = arc((0,0), 6, 0, -22);
draw(p);
label(Label("$S$", position=MidPoint), p, E);

markangle("$\theta$", 5*dir(-22), (0,0), 5*dir(0));
size(127.79805pt,0,keepAspect=true);
