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

top_left_legends = [
  ["", "!", "@", "#", "_", "", "~", "{", "}", "|", ""],
  ["", "$", "%", "^", "+", "", ":", "\"", "", "⎙", ""],
  ["", "&", "*", "(", ")", "", ">", "", "", "", "⤓"],
];

bot_left_legends = [
  ["", "1", "2", "3", "4", "", "`", "[", "]", "\\", ""],
  ["", "4", "5", "6", "=", "", ";", "\'", "", "⎀", ""],
  ["", "7", "8", "9", "0", "", "<", "", "", "", "⤒"],
];

mid_right_legends = [
  ["", "F1", "F2", "F3", "F10", "", "🔇", "⏯", "⏮", "⏭", ""],
  ["⇪", "F4", "F5", "F6", "F11", "", "⎌", "✂'", "⎘", "📋", ""],
  ["", "F7", "F8", "F9", "F12", "", "M1", "M2", "M3", "M4", "M5"],
];

front_legends = [
  ["Q", "W", "E", "R", "T", "", "Y", "U", "I", "O", "P"],
  ["A", "S", "D", "F", "G", "", "H", "J'", "K", "L", ""],
  ["", "Z", "X", "C", "V", "", "B", "N", "M", "", "?   !"],
];


$font_size = 3;
//$rounded_key = true;
// choc()
// legends()
//skeletyl_legends("dsa")
//no_stem_support()
//key();

simple_layout(skeletyl_main) {
  dsa_row(3, $column){
    legend(top_left_legends[$row][$column], [-0.9, -0.8]) {
      legend(bot_left_legends[$row][$column], [-0.9, 0.8]) {
        legend(mid_right_legends[$row][$column], [0.8, 0]) {
            front_legend(front_legends[$row][$column]) {
                key();
        }
        }
      }
    }
  }
}
