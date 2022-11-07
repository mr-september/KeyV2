
include <./includes.scad>

$stem_support_type = "disable";
$stem_type = "choc";  // Kailh box switches
$inset_legend_depth = 0.2;
$stem_inner_slop = 0.3;
$stem_slop = .65;  // Default .35, higher needed for Kailh
//$stabilizer_type = "cherry_stabilizer";  // for 2u keys
$key_bump_edge = 1;  
$locator_bumps = true;  // only for F/J keys

// reverse row ordering of legends
legendsl = [
    ["SHFT", ["Z1", "Z2"], "X", "C", "V", "B" ],
    ["CAP", "A", "S", "D", "F", "G", "END"],
    ["TAB", "Q", "W", "E", "R", "T", "HOME"],
];
/*
legendsr = [
    ["", "", "↑","↓","[","]"," "],
    ["", "N", "M", ",", ".", "/", "SHFT" ],
    ["PGDN", "H", "J", "K", "L", ";", "'"],
    ["PGUP", "Y", "U", "I", "O", "P", "\\"],
    ["6^", "7&","8*","9(","0)","-_","=+"],
];
*/

for (y = [0:len(legendsl)-1]) {
    size = len(legendsl[y]);
    for (x = [0:1:size-1]) {
        if($locator_bumps == true && legendsl[y][x] == "F") {
            translate_u(x,y) dsa_row() bump(depth=.6) front_legend(legendsl[y][x][z], size=4) {
                legend(legendsl[y][x][z], size=4) key();
            }
        } else {
            translate_u(x,y) dsa_row() front_legend(legendsl[y][x], size=4) {
                legend(legendsl[y][x], size=4) key();
            }
        }
    }
}
/*
// draw the left piano keys and 2u stabilizer bars
translate_u(2.5,-1) dsa_row() 1_5uh() rotate(90) key();
translate_u(4,-1) dsa_row() 1_5uh() rotate(90) rounded() bump(depth=.6 ) key();
translate_u(5.5,-1) dsa_row() 1_5uh() rotate(90) key();
translate_u(5.5,0) dsa_row() 2u() stabilized() key();

// where to start right half layout
offset = 7.25;

for (y = [0:len(legendsr)-1]) {
    size = len(legendsr[y]);
    for (x = [0:1:size-1]) {
      if( len(legendsr[y][x]) > 0 ) {
        if($locator_bumps == true && legendsr[y][x] == "J") {
          translate_u(x+offset,y) dsa_row() bump() front_legend(legendsr[y][x], size=4) key();
        } else {
          translate_u(x+offset,y) dsa_row() front_legend(legendsr[y][x], size=4) key();

        }
      }
    }
}

//Can't seem to have one set drawn with different values used per-key
//$key_bump_edge = 4;

// draw the right piano keys and 2u stabilizer bars
translate_u(.5+offset,-1) dsa_row() 1_5uh() rotate(270) key();
translate_u(2+offset,-1) dsa_row() 1_5uh() rotate(270) rounded() bump(depth=.6 ) key();
translate_u(3.5+offset,-1) dsa_row() 1_5uh() rotate(270) key();
translate_u(.5+offset,0) dsa_row() 2u() stabilized() key();
*/
