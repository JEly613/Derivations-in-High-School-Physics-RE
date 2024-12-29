if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-22";
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

// Plus and Foci
draw((0,b) -- (0,-b));
draw((-a, 0) -- (a,0));
dot((-11,0)); dot((11,0));

// Labels
Label A = Label("$a$", position=MidPoint, align=2S);
Label B = Label("$b$", position=MidPoint, align=2E);
Label C = Label("$c$", position=MidPoint, align=2S);
Label ra = Label("$r_a$", position=MidPoint, align=2S);
Label rp = Label("$r_p$", position=MidPoint, align=2S);

// Segments
draw((0.3,-1.5) -- (17,-1.5), L=A, bar=Bars);
draw((-0.3,-1.5) -- (-11,-1.5), L=C, bar=Bars);
draw((1.5,0.3) -- (1.5,8), L=B, bar=Bars);
draw((-a, -10) -- (-11-0.3,-10), L=rp, bar=Bars);
draw((-11+0.3, -10) -- (a,-10), L=ra, bar=Bars);
