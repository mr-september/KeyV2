include <../layout.scad>

// Layouts
skeletyl_main = [
  [1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1]
];

skeletyl_thumbs_l = [
  [1, 1, 1]
];

skeletyl_thumbs_r = [
  [1, 1, 1]
];

// Legends
/*
skeletyl_default_legends = [
  ["Q", "W", "E", "R", "T", "", "Y", "U", "I", "O", "P"],
  ["A", "S", "D", "F", "G", "", "H", "J", "K", "L", ";:"],
  ["Z", "X", "C", "V", "B", "", "N", "M", ",<", ".>", "/?"],
];
*/


skeletyl_top_left_legends = [
  ["", "!", "@", "#", "_", "", "~", "{", "}", "|", ""],
  ["", "$", "%", "^", "+", "", ":", "\"", "", "⎙", ""],
  ["", "&", "*", "(", ")", "", ">", "", "", "", "⤓"],
];

skeletyl_bot_left_legends = [
  ["", "1", "2", "3", "4", "", "`", "[", "]", "\\", ""],
  ["", "4", "5", "6", "=", "", ";", "\'", "", "⎀", ""],
  ["", "7", "8", "9", "0", "", "<", "", "", "", "⤒"],
];

skeletyl_mid_right_legends = [
  ["", "F1", "F2", "F3", "F10", "", "🔇", "⏯", "⏮", "⏭", ""],
  ["⇪", "F4", "F5", "F6", "F11", "", "⎌", "✂'", "⎘", "📋", ""],
  ["", "F7", "F8", "F9", "F12", "", "M1", "M2", "M3", "M4", "M5"],
];

skeletyl_mid_left_legends = [
  ["/", "", "", "", "", "", "", "", "", "", ""],
  ["*", "", "", "", "", "", "", "'", "↑", "", ""],
  ["", "", "", "", "", "", "", "←", "↓", "→", ""],
];

skeletyl_top_cent_legends = [
  ["", "", "", "", "", "", "", "", "", "", ""],
  ["", "", "", "", "", "", "", "'", "", "", "⌫"],
  ["", "", "", "", "", "", "", "", "", "", ""],
];

skeletyl_bot_cent_legends = [
  ["F4", "", "", "", "", "", "", "", "", "", ""],
  ["⭾", "", "", "", "", "", "", "'", "", "", "⌦"],
  ["", "", "", "", "", "", "", "", "", "", ""],
];

skeletyl_center_legends = [
  ["", "", "", "", "", "", "", "", "", "", "⎋"],
  ["", "", "", "", "", "", "", "'", "", "", ""],
  ["⇧", "", "", "", "", "", "", "", "", "", ""],
];

skeletyl_front_legends = [
  ["Q", "W", "E", "R", "T", "", "Y", "U", "I", "O", "P"],
  ["A", "S", "D", "F", "G", "", "H", "J'", "K", "L", ""],
  ["", "Z", "X", "C", "V", "", "B", "N", "M", "", "?  !"],
];
skeletyl_thumbs_l_legends = [
  ["⎈", "❖", "⎇"]
];

skeletyl_thumbs_l_front_legends = [
  ["", "", ""]
];

skeletyl_thumbs_r_legends = [
  ["☰", "␣", "⏎"]
];

skeletyl_thumbs_r_front_legends = [
  ["", "", ""]
];

// Honestly IDK what this is
module skeletyl_legends(profile, row_sculpting_offset=1, column_override=undef) {
  layout(skeletyl_main, 
      profile, 
      legends=skeletyl_main_legends, 
      front_legends=skeletyl_main_front_legends, 
      row_override=2,  
      row_sculpting_offset=row_sculpting_offset, 
      column_override=column_override) 
  children();
  translate_u(2,-3) 
  rotate([0,0,-30]) 
  layout(skeletyl_thumbs_l, 
      profile, 
      legends=skeletyl_thumbs_l_legends, 
      front_legends=skeletyl_thumbs_l_front_legends, 
      row_override=2,  
      row_sculpting_offset=row_sculpting_offset, 
      column_override=column_override) 
  children();
  translate_u(6.45,-4.5) 
  rotate([0,0,30]) 
  layout(skeletyl_thumbs_r, 
      profile, 
      legends=skeletyl_thumbs_r_legends, 
      front_legends=skeletyl_thumbs_r_front_legends, 
      row_override=2, 
      row_sculpting_offset=row_sculpting_offset, 
      column_override=column_override) 
  children();
}