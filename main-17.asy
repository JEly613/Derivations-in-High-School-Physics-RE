if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-17";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(8cm);
pair origin = (0,0);
pair particle = (4,0);
real dtheta = 3;
real theta = 70;

//Labels
Label R = Label("$R$", position = MidPoint, align = NW);
Label r = Label("$r$", position = MidPoint, align = NE);
Label D = Label("$D$", position = 0.65*EndPoint, align = S);
Label O = Label("$O$", position = origin, align = W);
Label P = Label("$P$", position = particle, align = E);
Label A = Label("$A$", position = 5*dir(theta), align = NE);

// Circles and Dots
draw(circle(origin,5));
dot(origin, black); dot(particle, black);
label(O); label(P); label(A);

// Labeled Triangle
draw(origin -- 5*dir(theta), L=R);
draw(5*dir(theta-dtheta) -- particle, L=r);
draw(origin -- particle, linetype(new real[] {8,8}));
draw((0,-0.5) -- (4,-0.5), L=D, bar=Bars);

// Stripe
filldraw(5*dir(theta) -- 5*dir(theta-dtheta) -- 5*dir(dtheta-theta) -- 5*dir(-theta) -- cycle, grey);

// Angles
markangle("$\theta$", (3,0), origin, 3*dir(theta));
markangle("$\phi$", 5*dir(theta), particle, origin);
