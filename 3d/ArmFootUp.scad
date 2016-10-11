L = 11.4;
l1 = 6;
l2 = 15;
e = 3.4;
d = 4;
D = 8;

difference() {
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

	rotate([-90,0,0]) {
		cylinder (h = 3*e, d=d, center = true, $fn=100);
		translate([0,0,e])
			cylinder (h = 3*e, d=D, $fn=100);
	}
}