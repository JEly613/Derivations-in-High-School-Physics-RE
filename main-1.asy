if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(4cm);
pair a = (0,13);
pair b = 13*dir(68);
pair o = (0,0);

draw((0,0) -- a, arrow=Arrow(3mm));
draw((0,0) -- b, arrow=Arrow(3mm));

label("$R$", (0,7.5), W);
label("$R$", (3,8.24), SE);

path p = arc(o, 13, 90, 68);
draw(p);

draw(shift(a) * ((0,0) -- 2*dir(0)), red, arrow=Arrow(2mm));
draw(shift(b) * ((0,0) -- 2*dir(-22)), red, arrow=Arrow(2mm));

markangle("$\theta$", b, o, a);

label("A", a, NW);
label("B", b, N + E/2);
label("O", o, S);
