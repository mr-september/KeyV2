include <../layout.scad>

skeletyl_main = [
  [1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1],
  [-1, -1, 1, 1, -1, -1, -1, -1, -1, 1, 1, -1, -1]
];

skeletyl_thumbs_l = [
  [1, 1, 1]
];

skeletyl_thumbs_r = [
  [1, 1, 1]
];

module skeletyl(profile) {
  layout(skeletyl_main, profile) children();
  translate_u(2,-3) rotate([0,0,-30])layout(skeletyl_thumbs_l, profile, row_override=3) children();
  translate_u(6.45,-4.5) rotate([0,0,30])layout(skeletyl_thumbs_r, profile, row_override=3) children();
}
