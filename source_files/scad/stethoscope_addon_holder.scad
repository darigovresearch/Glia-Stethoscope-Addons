//include <stethoscope_addon_mount.scad>;
use <utilities.scad>
use <stethoscope_addon_base.scad>

$tolerence = 0.2; //Tolerence for mounting parts

$clip_height = 21 + $tolerence;

module clip($fn = 45){
    
    
   translate([4.5 +$tolerence, -7.5, -17 - $tolerence/2]) {
       rotate([90, 0, 0]){
        keyway(5, 20, 15, 30 + 3);
       }
   }
   
   translate([4.5 +$tolerence, +7.5, -17 - $tolerence/2]) {
       rotate([90, 0, 0]){
        keyway(5, 20, 15, 30 + 3);
       }
   }
   
   
   translate([4.5 + $tolerence, 0, -32.5 - $tolerence/2]) {
       rotate([0, 0, 0]){
        keyway(5, 20, 15, 30 + 3);
       }
   }
}

// base to mount to the addon
difference () {
    union(){ 
        addon_base(20, 35, 3, 20, 2);
        
        translate([18.5 + $tolerence, 0, -31.4 - $tolerence])
        cube([5, 20 + 4, 7], center=true);
    }
clip();
}