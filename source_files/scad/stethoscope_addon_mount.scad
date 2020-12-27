$outside_width = 42.25/2; //Radius of outside wall (mm)

//$outside_width = 41.5/2; //Radius of outside wall (mm)

module reference_head($fn=360) {
    cylinder(h = 13, r = $outside_width);

    translate([20,0,5]) 
    rotate(a = 90, v = [0, 1, 0]){
        cylinder(h = 25, r=5);
    }
}


module addon_holder($fn=360){
    
    difference(){
    cylinder(h = 8, r = $outside_width + 1);
    
    translate([23,0,5]) 
    cube([10,50,20], center=true);
    
    }
}


difference (){
    translate([0,0,-1]) {
      addon_holder();
    }
    reference_head();


}