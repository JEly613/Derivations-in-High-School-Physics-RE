if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-14";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(6cm);

// Variables
real h = 2.5;
real a = 3.1224989992;
real b = 0.1875;
pen p = linewidth(0.3mm);
pen d = linetype("5 5");

// Circle
draw(circle((0,0),4), p);

// Oval
draw(shift((0,h))*scale(a,b)*unitcircle, p);

// Lines
draw((0,0) -- (a,h), p);
draw((0,0) -- (0,h), d);

// Labels
label("$R$", (1.86,1.11));
markangle("$\theta$", (a,h), (0,0), (0,h));
