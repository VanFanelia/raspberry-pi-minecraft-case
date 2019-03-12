use <library.scad-master/raspberrypi.scad>

/*
bottom();
pins();
*/

//frontWall();
//backWall2();

module lowerCase() {
	bottom();
	pins();
	//pi3();

	frontWall();
	backWall2();
}

module pins(){
	translate([19,-24.5,-0.1])
	 cylinder(h=7, r1=1.7, r2=0.65, $fa = 0.1, $fs = 0.1, center=true);
	
		translate([19,24.5,-0.1])
	 cylinder(h=7, r1=1.7, r2=0.65, $fa = 0.1, $fs = 0.1, center=true);
	
		translate([-39,-24.5,-0.1])
	 cylinder(h=7, r1=1.7, r2=0.65, $fa = 0.1, $fs = 0.1, center=true);
	
			translate([-39,24.5,-0.1])
	 cylinder(h=7, r1=1.7, r2=0.65, $fa = 0.1, $fs = 0.1, center=true);
}

module frontWall(){
	translate([-43.5,29,-5])
		cube([88,2,23.5]);
}

module backWall(){
	difference() {
		union(){
			translate([-44.5,-31,-5])
				cube([89,2,23.5]);
		}
		
		translate([0,-2.2,0])
		scale(1.03)
		pi3();
	}
	
	translate([-44.5,-31,-2.55])
		cube([89,2,4]);
	
	translate([0,-31,0])
		cube([5,2,8]);
}

module bottom(){
	translate([0,0,-4])
	cube([87+4,56+2,2], true);
	
	// left wall
	difference(){
		translate([44.5,-31,-5])
			cube([2,58+4,23.5]);
		
		translate([1,0,0])
		scale(1.03)
		pi3();
	}
	
	// front wall
	//frontWall();
	
	// right wall
	difference(){
		translate([-45.5,-31,-5])
			cube([2,58+4,23.5]);
			
		translate([1.5,0,1.5])
		scale([1.05,1.05,2.5])
		pi3();
	}
	
	// back wall
	difference(){
		backWall();
		
		translate([-44.5,-31,4])
			cube([89,2,16]);
	}
}

module backWall2(){
	difference(){
		backWall();
		
		translate([-44.5,-31,-8])
			cube([89,2,12.1]);
	}
}

