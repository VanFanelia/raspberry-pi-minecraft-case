

module m(){ 
	cube([3,1,1]);

	translate([0.6,1,0])
		cube([1,0.25,1]);

	translate([1,1.25,0])
		cube([1,0.75,1]);

	translate([0.6,2,0])
		cube([1,0.25,1]);

	translate([0,2.25,0])
		cube([3,1,1]);
}

module i(){
	cube([3,1,1]);
}

module n() {
	cube([3,1,1]);
	
	translate([0.6,1,0])
		cube([1,0.25,1]);
	
	translate([1.0,1.25,0])
		cube([1,0.25,1]);
	
	translate([0,1.5,0])
		cube([3,1,1]);
}

module e() {
	cube([3,1,1]);
	
	cube([0.8,2.25,1]);

	translate([1.1,0,0])
	cube([0.8,2.25,1]);
	
	translate([2.2,0,0])
	cube([0.8,2.25,1]);
}

module c() {
	cube([3,1,1]);
	
	cube([0.8,2.25,1]);
	
	translate([2.2,0,0])
	cube([0.8,2.25,1]);
}


module r() {
	cube([3,1,1]);

	translate([1.4,1,0])
	cube([0.6,1,1]);
	
	cube([0.8,2.25,1]);
	
	translate([0,1.5,0])
	cube([1.6,1,1]);
	
	translate([1.8,1.5,0])
	cube([1.2,1,1]);
}

module a(){
	difference(){
		union(){
			cube([3,1,1]);
			
			cube([2,2,1]);

			translate([0,1.25,0])	
			cube([3,1,1]);
		}
		
		translate([0.5,0.65,0])
		  cube([0.35,0.35,1]);
		
		translate([0.5,1.25,0])
		  cube([0.35,0.35,1]);
		
		translate([0.85,1,0])
			cube([0.5,0.25,1]);
		
		translate([1.15,0.8,0])
			cube([0.35,0.15,1]);
		
		translate([1.15,1.3,0])
			cube([0.35,0.15,1]);
		
		translate([1,0.8,0])
			#cube([0.4,0.65,1]);
	}
}


module f(){
	cube([3,1,1]);
	
	cube([0.8,2.25,1]);

	translate([1.1,0,0])
		cube([0.8,2.25,1]);
}

module t(){
	translate([0,0.75,0])
	cube([3,1,1]);
	
	cube([0.8,2.5,1]);
}

module logo(){
	m();
	translate([0,3.5,0]) i();
	translate([0,4.75,0]) n();
	translate([0,7.5,0]) e();
	translate([0,10,0]) c();
	translate([0,12.5,0]) r();
	translate([0,15.25,0]) a();
	translate([0,17.75,0]) f();
	translate([0,20.25,0]) t();
}

logo();


