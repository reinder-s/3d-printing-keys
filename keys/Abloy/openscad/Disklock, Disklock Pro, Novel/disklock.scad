$fn=360;
cut_offset = 5.00;
cut_spacing = 1.6;
cut_width_list = [1.65,2,2,2,2,2,2,2,2,2];

module disklock(list){
	difference() {
		import("disklock_blank.stl");
		
		union() {
			for (cut_pos = [0 : len(list) - 1]) {
				translate([0, (cut_offset+cut_spacing*cut_pos), 0]){
					rotate([90, 0, 0]) {
						linear_extrude(height = cut_width_list[cut_pos]) {
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

disklock([1,2,3,4,5,6,0,1,2,3]);