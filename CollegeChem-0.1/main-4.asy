if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
settings.render=8;
settings.prc=false;
size(10cm);

//currentprojection=perspective((45,45,30));
currentprojection = orthographic((3,6,1));

material sphereCcolor = material(diffusepen=black, ambientpen=gray(0.1), specularpen=white);
material cylcolor = material(diffusepen=white, ambientpen=white);

real cylRadius = 0.1;
real sphereRadius = 0.25;

void drawRod(triple a, triple b) {
surface rod = extrude(scale(cylRadius)*unitcircle, axis=length(b-a)*Z);
triple orthovector = cross(Z, b-a);
if (length(orthovector) > .01) {
real angle = aCos(dot(Z, b-a) / length(b-a));
rod = rotate(angle, orthovector) * rod;
}
draw(shift(a)*rod, surfacepen=cylcolor);
}

void drawCarbon(triple center) {
draw(shift(center)*scale3(sphereRadius)*unitsphere, surfacepen=sphereCcolor);
}

triple P000 = (0,0,0);
triple P100 = 4X;
triple P010 = 4Y;
triple P001 = 4Z;
triple P011 = 4Y+4Z;
triple P101 = 4X+4Z;
triple P110 = 4X+4Y;
triple P111 = 4X+4Y+4Z;

drawRod(P000,P100);
drawRod(P000,P010);
drawRod(P000,P001);
drawRod(P010,P011);
drawRod(P001,P011);
drawRod(P100,P101);
drawRod(P001,P101);
drawRod(P100,P110);
drawRod(P010,P110);
drawRod(P011,P111);
drawRod(P101,P111);
drawRod(P110,P111);

drawCarbon(P000);
drawCarbon(P100);
drawCarbon(P010);
drawCarbon(P001);
drawCarbon(P011);
drawCarbon(P101);
drawCarbon(P110);
drawCarbon(P111);
