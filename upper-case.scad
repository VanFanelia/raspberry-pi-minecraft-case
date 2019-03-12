use <library.scad-master/raspberrypi.scad>;
use <lower-case.scad>;

include <surface.data>;

module printSurface(){
	
	for(x=[0:1:len(surfaceData)-1]) {
		for(y=[0:1:len(surfaceData[x])-1]){
			translate([x,y,0])
			cube([1,1,8-surfaceData[x][y]]);
		}
	}
	
	// water color for debug
	color("blue")
	translate([2,7,8-5])
	cube([len(surfaceData)-5, len(surfaceData[0])-8, 0.0001]);
}

module top(){
	difference(){
		translate([0.5,4,8])
		rotate([0,0,-90])
		scale([3.4,3.4,2])
		printSurface();
		
		union(){
			/*
			translate([2,-2,0])
			translate([45,-28,0])
			pi3();*/
			
			// back wall
			translate([47,-30,0])
			translate([-44.5,29,-5])
				cube([89,2,23]);
			
			translate([72,-58,7.5])
				cube([30, 57, 10]);
			
			translate([47,-30,0]){
				bottom();
			}
		}
	}
}

module backWall() {
	translate([-44.5,29,-5])
		cube([89,2,23]);
}	

top();
//backWall();
