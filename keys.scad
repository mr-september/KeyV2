// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
//dcs_row(5) legend("⇪", size=9) key();

// example row
/* for (x = [0:1:4]) {
  translate_u(0,-x) dcs_row(x) key();
} */

// example layoutr
// 60_percent_default("dsa") key();

$font_size = 3;
// rounded_key is very slow, only un-comment for final render
// $rounded_key = true;
// choc()
no_stem_support()

simple_layout(skeletyl_main) {
  dsa_row(3, $column){
    legend(skeletyl_top_left_legends[$row][$column], [-0.9, -0.8]) {
      legend(skeletyl_bot_left_legends[$row][$column], [-0.9, 0.8]) {
        legend(skeletyl_mid_right_legends[$row][$column], [0.8, 0]) {
            legend(skeletyl_mid_left_legends[$row][$column], [-0.8, 0]) {
                legend(skeletyl_top_cent_legends[$row][$column], [0, -1]) {
                    legend(skeletyl_bot_cent_legends[$row][$column], [0, 1]) {
                        legend(skeletyl_center_legends[$row][$column]) {
                            front_legend(skeletyl_front_legends[$row][$column]) {
                                key();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
no_stem_support()
translate_u(2,-3) rotate([0,0,-30])
simple_layout(skeletyl_thumbs_l) {
  dsa_row(3, $column){
    legend(skeletyl_thumbs_l_legends[$row][$column]) {
        key();
    }
  }
}

no_stem_support()
translate_u(6.45,-4.5) rotate([0,0,30])
simple_layout(skeletyl_thumbs_r) {
  dsa_row(3, $column){
    legend(skeletyl_thumbs_r_legends[$row][$column]) {
        key();
    }
  }
}