$fn=360;
cut_offset = 4.57;
cut_spacing = 1.5;
//use "protec2_blank_no_bearing.stl" if you dont want to print the bearing

module protec2(list){
	difference() {
		import("protec2_blank.stl");
		
		union() {
			for (cut_pos = [0 : len(list) - 1]) {
				translate([-(cut_offset+cut_spacing*cut_pos), 0, 0]){
					rotate([90, 0, 90]) {
						linear_extrude(height = 2) {
							if (list[cut_pos] == 0) {
								import("cut 0.dxf");
							}
							else if (list[cut_pos] == 1) {
								import("cut 1.dxf");
							}
							else if (list[cut_pos] == 2) {
								import("cut 2.dxf");
							}
							else if (list[cut_pos] == 3) {
								import("cut 3.dxf");
							}
							else if (list[cut_pos] == 4) {
								import("cut 4.dxf");
							}
							else if (list[cut_pos] == 5) {
								import("cut 5.dxf");
							}
							else {
								import("cut 6.dxf");
							}
						}
					}
				}
			}
		}
	}
}

protec2([1,2,3,4,5,6,0,1,2,3]);