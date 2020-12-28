$tolerence = 0.2; //Tolerence for mounting parts

//include <stethoscope_addon_mount.scad>;

module keyway(width, height, waist, depth){
    // keyway is code to handle making a keyway to easily switch out addons

    rotate(a = 90, v = [0, 1, 0]){
        linear_extrude(height = depth, center = true)
        polygon(points = [
                [-width/2, -height/2],
                [0, -waist/2],
                [width/2, -height/2],
                [width/2, height/2],
                [0, waist/2],
                [-width/2, height/2]]
        );
    }
}

translate([3, 0, -5/2]) {
    keyway(5 - $tolerence, 20 - $tolerence, 15 - $tolerence, 30 + 3);
}

translate([19.5 + $tolerence, 0, -4.5 - $tolerence/2]) {
    cube([3, 20, 9], center = true);
}


translate([9, 0, -8 - $tolerence/2]) {
    cube([20, 5, 2], center = true);
}