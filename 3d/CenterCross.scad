alu_l = 8;
alu_h = 8;
long = 40;

fix_l = 20;
fix_d = 4;
$fn=10;

module tige(){
    difference(){
        cube([alu_l,long*2,alu_h], center=true);
        translate([0,fix_l,0]) cylinder(h=alu_h+2,d=fix_d,center=true);
        translate([0,-fix_l,0]) cylinder(h=alu_h+2,d=fix_d,center=true);
    }
}

tige();
rotate([0,0,60])tige();
rotate([0,0,-60])tige();

