// Dimensions of the box
width = 35;
depth = 70;
height = 35;

// Wall thickness of the box
wall_thickness = 5;

// Cutout for the blades
cutout_width = 30;
cutout_depth = 65;

// Main box body
difference() {
  // Outer box
  cube([width, depth, height]);
  
  // Inner box
  translate([wall_thickness, wall_thickness, wall_thickness]) {
    cube([width - 2 * wall_thickness, depth - 2 * wall_thickness, height - 2 * wall_thickness]);
  }
  
  // Blade cutout
  translate([(width - cutout_width) / 2, (depth - cutout_depth) / 2, height - wall_thickness]) {
    cube([cutout_width, cutout_depth, height]);
  }
}
