if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-20";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(12cm);
fill((0,0) -- (0,4) -- (1,4) -- (1,0) -- cycle, RGB(255, 187, 185));
fill((1,4) -- (4,4) -- (8,10) -- (11,10) -- (11,8.5) -- (8.5,8.5) -- (4,0) -- (1,0) -- cycle, RGB(137, 177, 222));
fill((11,8.5) -- (11,10) -- (14,10) -- (14,8.5) -- cycle, RGB(159, 264, 203));

draw((1,0) -- (1,4),linetype(new real[] {8,8}));
draw((11,8.5) -- (11,10),linetype(new real[] {8,8}));
draw((0,4) -- (4,4) -- (8,10) -- (14,10));
draw((0,0) -- (4,0) -- (8.5,8.5) -- (14,8.5));

Label P1 = Label("$P_1$", position = BeginPoint, align = N);
Label P2 = Label("$P_2$", position = BeginPoint, align = N);
Label y1 = Label("$y_1$", position = MidPoint, align = E);
Label y2 = Label("$y_2$", position = MidPoint, align = E);
Label dx1 = Label("$x_1$", position = MidPoint, align = 2N);
Label dx2 = Label("$x_2$", position = MidPoint, align = N);


draw((-3,2) -- (-0.5,2), L=P1, arrow=Arrow(2mm));
draw((17,9.25) -- (14.5,9.25), L=P2, arrow=Arrow(2mm));
draw((0,5) -- (1,5), L=dx1, bar=Bars);
draw((11,11) -- (14,11), L=dx2, bar=Bars);
draw((3,-3) -- (3,2), L=y1, bar=Bars);
draw((9.5,-3) -- (9.5,9.25), L=y2, bar=Bars);
