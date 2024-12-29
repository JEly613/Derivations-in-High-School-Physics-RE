if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;


size(2.5cm);
draw((0,0) -- 5*dir(0), arrow=Arrow(3mm), red);
draw((0,0) -- 5*dir(-22), arrow=Arrow(3mm), red);
draw(5*dir(0) -- 5*dir(-22), arrow=Arrow(3mm));

label(Label("$v$", position=MidPoint), (0,0) -- 5*dir(-22), SW);
label(Label("$v$", position=MidPoint), (0,0) -- 5*dir(0), N);
label(Label("$\Delta v$", position=MidPoint), 5*dir(0) -- 5*dir(-22), E);

markangle("$\theta$", 5*dir(-22), (0,0), 5*dir(0));
size(127.79805pt,0,keepAspect=true);
