$tolerence = 0.2; //Tolerence for mounting parts

//include <stethoscope_addon_mount.scad>;
use <utilities.scad>;

module addon_base(extension_width, extension_height) {
    
    translate([3, 0, -5/2]) {
       keyway(5 - $tolerence, 20 - $tolerence, 15 - $tolerence, 29 + 3);
    }
    
    // cube that hangs over the mount
    translate([19.5 + $tolerence, 0, -4.5 - $tolerence/2]) {
       cube([3, 20, 9], center = true);
    }
    
    // cube that extends down for the addon
    translate([19.5 - extension_height/2, 0, -8 - $tolerence/2]) {
       cube([extension_height, extension_width, 2], center = true);
    }
}

addon_base(8, 26.5);