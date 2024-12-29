if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-18";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(4cm);
pair a = (0,-13);
pair b = 13*dir(-68);
pair o = (0,0);

dot(b, 5+black);

draw((0,0) -- a,linetype(new real[] {8,8}));
draw((0,0) -- b);

label("$l$", (3,-8.24), NE + E/2);

draw(shift(b) * ((0,0) -- -5*dir(90)), arrow=Arrow(2mm));

markangle("$\theta$", a, o, b);
label("$m$", b, E);
label("$mg$", shift(5*down)*b, E);
