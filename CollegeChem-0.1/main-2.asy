if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

//[width=2cm]
import three;
size(100);
int d = 50;
currentprojection=perspective(300,-650,500,center=true);
// define two types of ions
surface iona = scale3(20)*unitsphere;
surface ionb = scale3(25)*unitsphere;
// surface properties and color of the ions
material White = material(diffusepen=gray(0.4),emissivepen=gray(0.6));
// style of lines connecting ions
pen thick=linewidth(1);
draw(shift(d*(1,1,1))*iona,White);
draw(shift(d*(-1,1,1))*iona,White);
draw(shift(d*(1,-1,1))*iona,White);
draw(shift(d*(-1,-1,1))*iona,White);
draw(shift(d*(1,1,-1))*iona,White);
draw(shift(d*(-1,1,-1))*iona,White);
draw(shift(d*(1,-1,-1))*iona,White);
draw(shift(d*(-1,-1,-1))*iona,White);
draw(d*(-1,-1,1)--d*(-1,1,1),thick);draw(d*(-1,-1,1)--d*(1,-1,1),thick);draw(d*(1,-1,1)--d*(1,1,1),thick);draw(d*(1,1,1)--d*(-1,1,1),thick);
draw(d*(-1,-1,1)--d*(-1,-1,-1),thick);draw(d*(1,-1,1)--d*(1,-1,-1),thick);draw(d*(-1,1,1)--d*(-1,1,-1),thick);draw(d*(1,1,1)--d*(1,1,-1),thick);
draw(d*(-1,-1,-1)--d*(-1,1,-1),thick);draw(d*(-1,-1,-1)--d*(1,-1,-1),thick);draw(d*(1,-1,-1)--d*(1,1,-1),thick);draw(d*(1,1,-1)--d*(-1,1,-1),thick);
// for(int x=-1; x<2; ++x) {
// for(int y=-1; y<2; ++y) {
// for(int z=-1; z<2; ++z) {
// if(x<1) draw(d*(x,y,z)--100*(x+1,y,z),thick);
// if(y<1) draw(d*(x,y,z)--100*(x,y+1,z),thick);
// if(z<1) draw(d*(x,y,z)--100*(x,y,z+1),thick);
// }
// }
// }
