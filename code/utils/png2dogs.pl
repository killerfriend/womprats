#!/usr/bin/perl
use Image::PNG;
my $filename = shift;
my $png = Image::PNG->new();
$png->read($filename) or die;
my $rowbytes = $png->rowbytes;

print "/* $filename */\n";
print "#include <stdint.h>\n";
print "const uint8_t image[] = {\n";
for(my $i = 0; $i < $png->height; $i++) {
#for(my $i = 0; $i < 1; $i++) {
    my $row = @{$png->rows}[$i];
    my @bytes = unpack ('C204', $row);    
    for (my $j = 0; $j < $rowbytes; $j += 2*8) {
	print "\t0b";
	for (my $k = 0; $k < 8; $k++) {
	    if($j + $k*2 >= $rowbytes) {
		last;
	    }
	    my $byte = $bytes[$j + $k*2];
	    if($byte == 0) {
		print '1';
	    } else {
		print '0';
	    }
	}
	if($j + 2*8 >= $rowbytes) {
	    print "00";
	}
	print ",\n"
    }
    
}
print "};\n";

