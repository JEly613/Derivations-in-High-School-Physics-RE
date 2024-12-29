if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(5cm);

// axes
draw((-.5,0) -- (13,0), arrow=Arrow(TeXHead));
draw((0,-.5) -- (0,13), arrow = Arrow(TeXHead));

// blob
draw((2.5,5.5){up} .. (5.5,10) .. (7.5,8) .. (10.75,7.5) .. (10,2.5) .. (5,3) .. (2.5,5.5){up});

//dots
pair cm = (7.5,5.5);
pair i = (5, 8);
dot(cm); dot(i);
label("cm", cm, NE + E/2);
label("i", i, NE + N/2);

pen p = linewidth(0.3mm);
draw((0,0) -- cm, p, arrow = Arrow(3mm));
draw((0,0) -- i, p, arrow = Arrow(3mm));
draw(cm -- i, p, arrow = Arrow(3mm));

label("$\mathbf{r}_{icm}$", (6.0,6.7), NE);
label("$\mathbf{r}_{cm}$", (5.7,4.1), SE);
label("$\mathbf{r}_{i}$", (3.9,5.6), NW);
