if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-12";
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
draw((12,7.5) .. (13,5.5) .. (12.5,3.5), arrow = Arrow(2mm));
label("$\omeg$", (12.5,3.5), 3E/2);

// points
pair cm = (7.5,5.5);
pair i = shift(3*dir(135))*cm;
pair iend = shift(2*dir(45))*i;
dot(cm); dot(i);

// vectors
pen p = linewidth(0.3mm);
pen d = linetype("5 5");
draw(i -- cm, p, arrow = Arrow(2mm));
draw(cm -- shift(2*dir(225))*cm, red+p, arrow = Arrow(2mm));

// labels
label("cm", cm, E);
label("i", i, W);
label("$\mathbf{r}_{icm}$", shift(1.5*dir(135))*cm, NE);
label("$\mathbf{v}_{cm}$", shift(2*dir(225))*cm, SE);

// legend
draw((4.7,1.5) -- (6.7,1.5), red+p);
label("$\mathbf{v}_{cm} = r_{icm} \omeg$", (8.5,1.5));

