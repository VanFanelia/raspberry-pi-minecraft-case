$fn = 12; 
$fa = 3;
use <library.scad-master/raspberrypi.scad>;
use <lower-case.scad>;
use <logo.scad>;

include <surface.data>;

module printSurface(){
	
	translate([
	  -(len(surfaceData)-1) / 2, 
	  -(len(surfaceData[0])-1) /2,
	  0])
	{
		for(x=[0:1:len(surfaceData)-1]) {
			for(y=[0:1:len(surfaceData[x])-1]){
				translate([x,y,0])
				cube([1,1,8-surfaceData[x][y]]);
			}
		}
	}
}

module top(){
	difference(){
		rotate([0,0,-90])
		scale([3.5,3.5,1])
		translate([-0.5,-0.35,17.5]){
			printSurface();
		}
		scale([1.01,1.01,1])
			lowerCase();
		
		scale([0.99,0.99,1])
			lowerCase();
	}
	
	color("grey")
		translate([-40,-16,21])
		rotate([0,0,-90])
		scale([2.2,2.2,2])
	  translate([1.0,0,0])
		logo();
}


top();

