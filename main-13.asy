if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(6cm);

// blob
draw((2.5,5.5){up} .. (5.5,10) .. (7.5,8.5) .. (10.75,7.5) .. (10,2.5) .. (5,3) .. (2.5,5.5){up});

//dots
pair cm = (10,5.5);
pair i = (5, 8);
pair O = (7,4);
dot(cm); dot(i); dot(O);
label("$cm$", cm, NE + E/2);
label("$i$", i, NW);
label("$O$", O, SW);

pen p = linewidth(0.3mm);
draw(O -- cm, p, arrow = Arrow(3mm));
draw(O -- i, p, arrow = Arrow(3mm));
draw(cm -- i, p, arrow = Arrow(3mm));

label("$\mathbf{r}_{icm}$", (7.0,7.0), NE);
label("$\mathbf{r}_{cm}$", (7.9,4.5), SE);
label("$\mathbf{r}_{i}$", (5.9,5.6), NW);
