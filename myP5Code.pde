//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var xValue = 398;
var yValue= 117;

var starX=198
var starY=153
var starScale=-1;

var splash=-600

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
       
   if(mousePressed){
    showXYPositions();
  }           
  
  //🎯Animation Code Goes Here 
  strokeWeight(1)
  stroke(0,0,0)
  fill(79, 126, 234);
  ellipse(xValue, yValue+70,100,20);  
  fill(120, 89, 77 )
  ellipse(xValue+10,yValue-5,30,13)
  fill(238, 193, 159);
  rect(xValue-4, yValue+44, 3,30);
  rect(xValue+1, yValue+44, 3,30);
  ellipse(xValue, yValue+29,10,40);
  ellipse(xValue, yValue, 10, 20);  
  rect(xValue+4, yValue+14,30,3);
  rect(xValue-34, yValue+14,30,3);
  fill(255, 85, 62);
  triangle(xValue+1,yValue+51,xValue+3,yValue+44,xValue-4,yValue+44);
  triangle (xValue,yValue+23,xValue+3,134,xValue+5,yValue+28);
  triangle (xValue,yValue+23,xValue-3,yValue+16,xValue-5,yValue+28);
  fill(0,0,0);
  strokeWeight (3);
  point(xValue+2,yValue-2);
  point(xValue-3,yValue-2);
  strokeWeight(1);
  line(xValue,yValue+5,xValue+3,yValue+2);
  line(xValue,yValue+5,xValue-3,yValue+3);

fill(43, 121, 187,200);
stroke(54, 160, 176)
ellipse(0,165,splash,splash+20);
 
 //star starX=198  starY=153

scale(starScale);
fill(245, 207, 35)
stroke(245, 207, 35)
ellipse(starX, starY, 30,30);
triangle(starX+4,starY-13,starX+8,starY+12,starX+30,starY-3);
triangle(starX+13,starY+7,starX+1,starY+17,starX+17,starY+35);
triangle(starX,starY-32,starY+54,starX-53,starX-10,starY-9);
triangle(starX-8,starY-13,starX-31,starY-4,starX-9,starY+10);
triangle(starX-11,starY+4,starX-15,starY+35,starX+7,starY+12);


   
 starScale=starScale+.01



 
// if(starScale < 150) {splash=splash+2;}
// else{splash = -600}
 xValue= xValue -4;
  yValue= yValue +.1;
 

  

  
  if (xValue<-900){ xValue = 398
  yValue= 117  ;
  starScale=-1
  }


}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
