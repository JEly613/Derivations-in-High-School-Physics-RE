if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-11";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(7cm);

// blob
draw((2.5,5.5){up} .. (5.5,10) .. (8,9) .. (10.75,7.5) .. (10,2.5) .. (5,3) .. (2.5,5.5){up});

// points
pair cm = (7.5,5.5);
pair i = shift(3*dir(135))*cm;
pair iend = shift(2*dir(45))*i;
dot(cm); dot(i);

// vectors
pen p = linewidth(0.3mm);
pen d = linetype("5 5");
draw(cm -- i, p, arrow = Arrow(2mm));
draw(i -- iend, blue+d, arrow = Arrow(2mm));
draw(iend -- shift(dir(135))*iend, green+d, arrow = Arrow(2mm));
draw(i -- shift(dir(135))*iend, red+p, arrow = Arrow(2mm));

// labels
label("cm", cm, S);
label("i", i, W);
label("$\mathbf{r}_{icm}$", shift(1.5*dir(135))*cm, NE);

// legend
draw((5.5,1.5) -- (7.5,1.5), red+p);
label("$\mathbf{u}$", (8.5,1.5));
draw((5.5,1) -- (7.5,1), green+d);
label("$\mathbf{u}_{\parallel}$", (8.5,1));
draw((5.5,0.5) -- (7.5,0.5), blue+d);
label("$\mathbf{u}_{\perp}$", (8.5,0.5));

