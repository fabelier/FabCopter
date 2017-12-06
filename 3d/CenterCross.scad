alu_l = 8.5;
alu_h = 8.5;
long = 40;

stop_long = 14;
stop_h = 1.6;

fix_l = 20;
fix_d = 4;
$fn=10;

module tige(){
  union() {
    difference(){
      cube([alu_l,long*2,alu_h], center=true);
      translate([0,fix_l,0]) cylinder(h=alu_h+2,d=fix_d,center=true);
      translate([0,-fix_l,0]) cylinder(h=alu_h+2,d=fix_d,center=true);
    };
    translate([-alu_l/2, -stop_long, -alu_h/2])
      cube([alu_l,stop_long*2,alu_h+stop_h]);
  }
}

tige();
rotate([0,0,60])tige();
rotate([0,0,-60])tige();

