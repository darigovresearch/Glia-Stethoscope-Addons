$tolerence = 0.2; //Tolerence for mounting parts

//include <stethoscope_addon_mount.scad>;
use <utilities.scad>

module clip($fn = 36){
    //translate([0, 0, -14.5]){
    //    rotate([0, 45, 0]){
    //        //cube([10, 8, 2], center = true);
    //        cylinder(h = 7, r = 4);
    //    }
    //}


    difference(){
        intersection(){

          translate([-0.25, 0, -12]){

              rotate([0, 90, 0]){
                  //difference(){
                      cylinder(h = 25, r = 4);

                  //}
              }
          }

           translate([2, 0, -12]){
              rotate([0, 45, 0]){
                  //cylinder(h = 11, r = 4);
                  cube([10, 8, 20], center = true);
              }
          }

        }
        translate([-10, 0, -12]){
            rotate([0, 90, 0]){
                cylinder(h = 30, r = 3);
            }
        }
        
        translate([0, 0, -15]){
            cube([15, 4, 5], center = true);
        }
    }
    
    
    


}

translate([3, 0, -5/2]) {
   keyway(5 - $tolerence, 20 - $tolerence, 15 - $tolerence, 29 + 3);
}

// cube that hangs over the mount
translate([19.5 + $tolerence, 0, -4.5 - $tolerence/2]) {
   cube([3, 20, 9], center = true);
}

// cube that extends down for the microphone
translate([6, 0, -8 - $tolerence/2]) {
   cube([26, 8, 2], center = true);
}

clip();
// mirror([0,1,0]) clip();
