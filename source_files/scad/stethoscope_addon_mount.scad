$outside_width = 42.125/2; //Radius of outside wall (mm)

use <utilities.scad>;

module reference_head($fn=360) {
    // reference stethoscope head as it was too complex to load into memory
    cylinder(h = 13, r = $outside_width);

    translate([20, 0, 5])
    rotate(a = 90, v = [0, 1, 0]){
        cylinder(h = 25, r = 5);
    }
}


module addon_holder($fn = 360){
    // addon_holder which is used to mount your addon
    difference(){
    cylinder(h = 14, r = $outside_width + 1);

    translate([23, 0, 5])
    cube([10, 50, 20], center = true);
    }
}


difference (){
    // Takes the difference between the reference head & the addon holder to get the right indentation
    translate([0, 0, -7]) {
      addon_holder();
    }
    translate([3, 0, -5/2]) {
        keyway(5, 20, 15, 30 + 3);
    }
    reference_head();
}
