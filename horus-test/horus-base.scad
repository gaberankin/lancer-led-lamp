include <horus-logo.scad>

// vars

interiorShellDiffZ = 2; // [1, 2]
interiorShellDiffHeight = 10; // [0:10]
shelfHeight = 2;  // [0, 1, 2]
shelfOffset = -2; // [-1, -2, -3]
slotOffset = 0.1;
slotHeight = 10; // [0:10]

shellOffset = 9;
shellHeight = interiorShellDiffZ + interiorShellDiffHeight + shelfHeight + slotHeight;

module base() {
    // this provides the base shell
    difference() {
        // shell
        color("black")
        linear_extrude(shellHeight) {
            offset(delta=shellOffset)
            children();
        }

        // interior
        color("white")
        translate([0, 0, interiorShellDiffZ]) {
            union() {
                linear_extrude(interiorShellDiffHeight) {
                    children();
                }

                translate([0, 0, interiorShellDiffHeight]) {
                    union() {
                        linear_extrude(shelfHeight) {
                            offset(delta=shelfOffset)
                            children();
                        }

                        translate([0, 0, shelfHeight]) {
                            linear_extrude(slotHeight) {
                                offset(delta=slotOffset)
                                children();
                            }
                        }
                    }
                }
            }
        }
    }
}

base() {
    horus_logo();
}

// now that base shell is built, we need to create channels through the interiorShell section to allow passage of electronics

translate([0, 0, interiorShellDiffZ]) { // bump up to level of interior shell
    // height of these components will all be interiorShellDiffHeight.  length and width can be whatever
    
}