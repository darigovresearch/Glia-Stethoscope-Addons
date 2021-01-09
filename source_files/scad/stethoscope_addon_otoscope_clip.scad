//include <stethoscope_addon_mount.scad>;
use <utilities.scad>
use <stethoscope_addon_base.scad>

$tolerence = 0.2; //Tolerence for mounting parts
$sft = (13.8 + $tolerence/2)/13.8; // scale factor tolerence

$clip_height = 21 + $tolerence;

module clip($fn = 360){

    translate([0, 0, -27])
    rotate([0, 90, 0]){
        
        difference() {

        
        cylinder(h = $clip_height, r = 19);
        
                union () {
                    scale(v = [$sft, $sft, $sft]){
                        translate([-173.6, -180.6, -50]){
                            import("reference/handle_cover.stl");
                        }
                    }
                cylinder(h = 30, r = 14 );
            }
        }
    }
    
}

// base to mount to the addon
addon_base(20, 9, 3, 14, $clip_height - 3);

clip();
// mirror([0,1,0]) clip();
