if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(5cm);
pair a = (-2,0);
pair b = (0,0);

draw((-1,0.5) -- (1,0.5) -- (1,-0.5) -- (-1,-0.5) -- cycle);

dot(a);
dot(b);

label("A", a, NE);
label("B", b, NE);

draw((1.2,0) -- (1.6,0), arrow=Arrow(2mm));
label("$a$", (1.6,0), NE);
