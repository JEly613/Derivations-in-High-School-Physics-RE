if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(8cm);
real deg = 8;

draw((0,0) -- -10*dir(deg), linetype(new real[] {8,8}));
draw((0,0) -- -10*dir(-deg), linetype(new real[] {8,8}));
draw(-10*dir(deg) -- -10*dir(-deg) -- -10.6*dir(0) -- cycle, linetype(new real[] {8,8}));
draw((0,0) -- -10.6*dir(0), linetype(new real[] {8,8}));
draw(-10*dir(deg) .. -10.3*dir(0) .. -10dir(-deg), linewidth(2));

draw(-10*dir(-deg) -- shift(-10*dir(-deg))*(1.2*dir(60)), arrow=Arrow);
draw(-10*dir(deg) -- shift(-10*dir(deg))*(1.2*dir(-60)), arrow=Arrow);
draw(-10.3*dir(0) -- -11.7*dir(0), arrow=Arrow);

Label T1 = Label("$T$", position = shift(-10*dir(-deg))*(1.2*dir(60)), align = NE);
Label T2 = Label("$T$", position = shift(-10*dir(deg))*(1.2*dir(-60)), align = SE);
Label Fc = Label("$dF_c$", position = -11.7*dir(0), align = W);

label(T1);
label(T2);
label(Fc);

markangle("$d\theta$", -10*dir(-deg), (0,0), -10*dir(deg));
