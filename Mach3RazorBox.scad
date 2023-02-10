// Wall thickness of the box
wall_thickness = 3.75;

// Dimensions of the 4 blade-holders, stacked, plus 0.1 for 3D Printer tolerance fit
tolerance = 0.1;
cutout_width = 45.50 + tolerance;
cutout_depth = 84.77 + tolerance;
height = 68 + wall_thickness;

// Calculating the outer dimensions of the box
width = cutout_width + 2 * wall_thickness;
depth = cutout_depth + 2 * wall_thickness;

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
