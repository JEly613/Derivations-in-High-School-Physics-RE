if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(4cm);

//axes
draw((-0.5,0) -- (5,0), arrow=Arrow(TeXHead));
draw((0,-0.5) -- (0,5), arrow=Arrow(TeXHead));

//points and labels
pair a = 4*dir(75);
pair b = 4*dir(15);
dot(a);
dot(b);
label(a, "1", NW);
label(b, "2", E);

//Forces
draw(a -- shift(dir(-45))*a, arrow=Arrow(1mm));
draw(b -- shift(dir(135))*b, arrow=Arrow(1mm));
label(shift(dir(-45))*a, scale(0.7)*"$\overrightarrow{F_{21}}$", E);
label(shift(dir(135))*b, scale(0.7)*"$\overrightarrow{F_{12}}$", W + E/3);
