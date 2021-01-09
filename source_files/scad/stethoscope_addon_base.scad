$tolerence = 0.2; //Tolerence for mounting parts

//include <stethoscope_addon_mount.scad>;
use <utilities.scad>;

module addon_base(overhang_width, overhang_depth, overhang_height, extension_width, extension_height) {
    
    translate([3, 0, -5/2]) {
       keyway(5 - $tolerence, 20 - $tolerence, 15 - $tolerence, 29 + 3);
    }
    
    // cube that hangs over the mount
    translate([18 + overhang_height/2 + $tolerence, 0, -overhang_depth/2 - $tolerence/2]) {
       cube([overhang_height, overhang_width, overhang_depth], center = true);
    }
    
    // cube that extends down for the addon
    
    //centerlne to calculate new required offset for extension
    $centerline = (overhang_depth - 7)/2;
    translate([18 + $tolerence - extension_height/2, 0, -7 - $centerline - $tolerence/2]) {
       cube([extension_height, extension_width, $centerline*2], center = true);
    }
}

addon_base(20, 9, 3, 8, 26.5);