use <MCAD/nuts_and_bolts.scad>

L = 11.4;
l1 = 6;
l2 = 15;
e = 3.4;
d = 4;
D = 8;
feet_long = 55-11.5;

difference() {
	union() {
		linear_extrude(height = L, center = true) 
			polygon([
			  [l1,0],
			  [l1,e],
			  [l1+2*e-2, e],
			  [l1+2*e, e+1],
			  [l1+2*e, 2*e],
			  [l1, 2*e],
			  [-l2, e],
			  [-l2, 0]
			], 1);

		translate([0,feet_long/2,0]) {
			cube([L,feet_long,L], center = true);
		}
	}

	translate([0,10,0])
	rotate([-90,0,0])
		cylinder (h = 21, d=d, center = true, $fn=100);
	
	translate([0,3*e,0])
	hull(){
		translate([0,0,10])
		rotate([90,90,0])
			nutHole(3, tolerance = 0.4);
		rotate([90,90,0])
			nutHole(3, tolerance = 0.4);
	}
}
