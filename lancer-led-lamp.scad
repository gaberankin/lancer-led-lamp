module lancer() {
    import("./lancer.svg");
}

module base() {
    difference() {
        color("black")
        linear_extrude(10) {
            offset(delta=5, chamfer=false) {
                lancer();
            }
        }

        color("white")
        translate([0, 0, 1])
        linear_extrude(10)
        offset(delta=0.1)
        lancer();
    }
}

module inset() {
    difference() {
        color("white")
        translate([0, 0, 1])
        linear_extrude(10)
        lancer();
        
        linear_extrude(10)
        offset(delta=-1)
        lancer();
    }
}

base();
inset();