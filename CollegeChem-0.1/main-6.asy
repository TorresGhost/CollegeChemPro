if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);


triple O=(0,0,0), X=(1,0,0), Y=(0,1,0), Z=(0,0,1);
draw(O--X,blue,Arrow3);
draw(O--Y,green,Arrow3);
draw(O--Z,red,Arrow3);
label("$x$",scale3(1.1)*X,blue);
label("$y$",scale3(1.1)*Y,green);
label("$z$",scale3(1.1)*Z,red);

draw(shift(1.807,1.807,1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(-1.807,1.807,1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(1.807,-1.807,1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(1.807,1.807,-1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(-1.807,-1.807,1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(-1.807,1.807,-1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(1.807,-1.807,-1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(-1.807,-1.807,-1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(-1.807,0,0)*scale3(1.4)*unitsphere,lightred);
draw(shift(1.807,0,0)*scale3(1.4)*unitsphere,lightred);
draw(shift(0,-1.807,0)*scale3(1.4)*unitsphere,lightred);
draw(shift(0,1.807,0)*scale3(1.4)*unitsphere,lightred);
draw(shift(0,0,-1.807)*scale3(1.4)*unitsphere,lightred);
draw(shift(0,0,1.807)*scale3(1.4)*unitsphere,lightred);
size(142.26378pt,0,keepAspect=true);
