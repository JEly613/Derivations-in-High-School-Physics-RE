if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-9";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(5cm);

// blob
draw((2.5,5.5){up} .. (5.5,10) .. (8,9) .. (10.75,7.5) .. (10,2.5) .. (5,3) .. (2.5,5.5){up});

// rotation
draw((3,10.7) .. (5.5,11.7) .. (7,10.7), arrow = Arrow(2mm));
label("$\omeg$", (7,10.7), NE);

// dots
pen p = linewidth(0.3mm);
pair cm = (9.5,3.5);
pair i = shift(5.5*dir(145))*cm;
dot(cm); dot(i);

//Labels
Label r = Label("$r$", position=MidPoint, align=NE);

//Lines + Arrows
draw(cm -- i, p + linetype("5 5"), L=r);
draw(i -- shift(2*dir(55))*i, p, arrow = Arrow(2mm));

