
$tolerence = 0.2;

module cross (a, b, c, depth){
    
    // vertical
    cube([a, c, depth], center=true);

    // horizontal
    cube([c, b, depth], center=true);
}


$wall_thickness = 1;
$depth_thickness = 10;

difference(){
    
    // initial cross
    translate([0, 0, -$depth_thickness/2 + $wall_thickness])
    cross(a=16.2 + 2*$wall_thickness, b=16.2 + 2*$wall_thickness, c=30, depth= $depth_thickness + $wall_thickness);
    
    // cross used to cut away from initial cross
    translate([0, 0, -$depth_thickness/2])
    cross(a=16.2, b=16.2, c=30, depth=$depth_thickness + $wall_thickness);
}

//16.2