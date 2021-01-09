//$fn=20;
$fn=360;

//include <stethoscope_addon_mount.scad>;
use <stethoscope_addon_base.scad>

module stetoscope_head_connector() {
    // adapted code from stetoscope_head.scad of source repo

    difference(){
        union(){
//            cylinder(h = 20, r = 5.450);
            translate(v = [0, 0, 20])
            difference(){
                cylinder(h = 20.300, r = 4.250);
                translate(v = [0, 0, 13.8])
                union(){
                    cylinder(h = 6.500, r1 = 2.500, r2 = 3.250);
                    translate(v = [0, 0, 6.5])
                    cylinder(h = 1, r = 3.250);
                }
            }
        }
        translate(v = [0, 0, -0.01])
        cylinder(h = 40.320, r = 2.650);
    }   
}


addon_base(20, 9, 3, 8.5, 5.5);
translate(v = [20 - 3.05, 0, 4.250 + 7])
rotate(a = [0, 180, 0])
stetoscope_head_connector();