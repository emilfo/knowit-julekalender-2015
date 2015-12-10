use strict;
use warnings;

chomp(my @prices = <STDIN>);

my $min1 = $prices[0];
my $diff = 0;
my $best = 0;
for my $i (0..$#prices) {
    $min1 = ($min1 < $prices[$i]) ? $min1 : $prices[$i];

    if($prices[$i] - $min1) {
        $diff = $prices[$i] - $min1;

        my $min2 = $prices[$i];
        for my $j ($i..$#prices) {
            $min2 = ($min2 < $prices[$j]) ? $min2 : $prices[$j];

            if ($best < $prices[$j] - $min2 + $diff) {
                $best = $prices[$j] - $min2 + $diff;
            }
        }

    }
}

print sprintf("%.4f\n",$best);
