//utilities.scad contains code that common functions that are reusable across files

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