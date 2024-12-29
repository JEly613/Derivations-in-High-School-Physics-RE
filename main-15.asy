if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-15";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(8cm);
real a = 17;
real c = 15;
real b = 8;

// Ellipse
draw(ellipse((0,0), a, b));

// Dots
dot((-11,0)); dot((11.7,5.8)); dot((9.75,6.56));

// Labels
Label r = Label("$r$", position=MidPoint, align=NW);
Label x = rotate(-15)*scale(0.8)*Label("$v\Delta t$", position=MidPoint, align=N+E/2);

// Segments
draw((-11,0) -- (11.7,5.8)); draw((-11,0) -- (9.75,6.56), L=r);
filldraw((-11,0) -- (11.7,5.8) -- (9.75,6.56) -- cycle, gray);
draw((9.95,7) -- (11.9,6.3), L=x, bar=Bars);
