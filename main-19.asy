if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-19";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(4cm);
fill((-4,2) -- (-4,-3) -- (4,-3) -- (4,2) -- cycle, lightgray);
draw((-4,3) -- (-4,-3) -- (4,-3) -- (4,3));
draw((-0.5,2) -- (0.5,2) -- (0.5,0) -- (-0.5,0) -- cycle,linetype(new real[] {8,8}));
label("$h$", (0.5,1), E);

