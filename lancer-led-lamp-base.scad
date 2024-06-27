include <lancer-logo.scad>


difference() {
    color("black")
    linear_extrude(10) {
        offset(delta=5, chamfer=false) {
            lancer_logo();
        }
    }

    color("white")
    translate([0, 0, 1])
    linear_extrude(10)
    offset(delta=0.1)
    lancer_logo();
}
