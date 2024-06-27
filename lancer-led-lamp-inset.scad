include <lancer-logo.scad>

difference() {
    color("white")
        translate([0, 0, 1])    // move up 1 mm to give front 1 mm thickness
        linear_extrude(10)  // 1 cm tall
        lancer_logo();
    
    linear_extrude(10)  // scoop out 1 cm depth
        offset(delta=-1)    // wall should be 1 mm thick
        lancer_logo();
}
