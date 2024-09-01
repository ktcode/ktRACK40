//
// ktRACK40
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;

W = 202;
H = 137;
D = 9.6;



difference()
{
    union()
    {
        translate([-W/2, 0, 0]) rotate([0, 90, 0]) cylinder(r=10/2, h=W, $fn=100);
        translate([-W/2, 0, 0]) sphere(r=10/2, $fn=100);
        translate([ W/2, 0, 0]) sphere(r=10/2, $fn=100);
        translate([-W/2, 0, 0]) cylinder(r=10/2, h=40, $fn=100);
        translate([ W/2, 0, 0]) cylinder(r=10/2, h=50, $fn=100);
        translate([-W/2, 0, 40]) sphere(r=10/2, $fn=100);
        translate([ W/2, 0, 50]) sphere(r=10/2, $fn=100);
        
    }
    unit();
    
    translate([-W/2+20, -2, -1]) rotate([0, 90, 0]) cylinder(r=10/2, h=30, $fn=100);
    translate([ W/2-30-20, -2, -1]) rotate([0, 90, 0]) cylinder(r=10/2, h=30, $fn=100);
    
    #translate([-W/2-10-3, -20+3, 30]) rotate([0, 0, 45]) cube([30, 20, 1]);
    #translate([-W/2-10-3, -20+3, 13]) rotate([0, 0, 45]) cube([30, 20, 1]);
}



module unit()
{
translate([0, -D/2, 0])
{
    translate([-(W-D)/2, 0, D/2]) cube([W-D, D, H-D]);
    
    translate([-W/2+D/2, D/2, D]) rotate([0, 0, 0]) cylinder(r=D/2, h=H-D*2, $fn=100);
    translate([-W/2+D, D/2, H-D]) rotate([90, -90, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);
    
    translate([-W/2+D, D/2, H-D/2]) rotate([0, 90, 0]) cylinder(r=D/2, h=W-D*2, $fn=100);
    translate([ W/2-D, D/2, H-D]) rotate([90, 0, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);

    translate([ W/2-D/2, D/2, D]) rotate([0, 0, 0]) cylinder(r=D/2, h=H-D*2, $fn=100);
    translate([ W/2-D, D/2, D]) rotate([90, 90, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);

    translate([-W/2+D, D/2, D/2]) rotate([0, 90, 0]) cylinder(r=D/2, h=W-D*2, $fn=100);
    translate([-W/2+D, D/2, D]) rotate([90, 180, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);
}
}