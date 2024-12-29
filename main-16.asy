if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-16";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(12cm);
pair origin = (0,0);
pair particle = (13,0);
real dtheta = 3;

//Labels
Label R = Label("$R$", position = MidPoint, align = NW);
Label r = Label("$r$", position = MidPoint, align = NE);
Label D = Label("$D$", position = MidPoint, align = S);
Label O = Label("$O$", position = origin, align = W);
Label P = Label("$P$", position = particle, align = E);
Label A = Label("$A$", position = 5*dir(60), align = NE);

// Circles and Dots
draw(circle(origin,5));
dot(origin, black); dot(particle, black);
label(O); label(P); label(A);

// Labeled Triangle
draw(origin -- 5*dir(60), L=R);
draw(5*dir(60) -- particle, L=r);
draw(origin -- particle, linetype(new real[] {8,8}));
draw((0,-0.5) -- (13,-0.5), L=D, bar=Bars);

// Stripe
filldraw(5*dir(60) -- 5*dir(60-dtheta) -- 5*dir(dtheta-60) -- 5*dir(-60) -- cycle, grey);

// Angles
markangle("$\theta$", (3,0), origin, 3*dir(60));
markangle("$\phi$", 5*dir(60), particle, origin);
