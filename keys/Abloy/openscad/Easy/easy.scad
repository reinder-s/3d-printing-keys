$fn=360;
cut_offset = 4.74;
cut_spacing = 1.5;

module easy(list){
	difference() {
		import("easy_blank.stl");
		
		union() {
			for (cut_pos = [0 : len(list) - 1]) {
				translate([-(cut_offset+cut_spacing*cut_pos), 0, 0]){
					rotate([90, 0, 90]) {
						linear_extrude(height = 2.05) {
							if (list[cut_pos] == 1) {
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

easy([1,2,3,4,5,6,1,2,3,4]);