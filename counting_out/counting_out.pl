use strict;
use warnings;
use v5.10;

my $n = get_number("Number of players");
my $k = get_number("Length of rhyme (number of syllables)");

my @losers = orderLosers($n, $k);

$" = ', ';
print "Players have been counted out in this order: @losers\n";


sub get_number {
    my $number;
    do  {
        print "$_[0]: ";
        $number = <>;
        chomp $number;
    } while ($number =~ /\D/ or $number eq '' or $number < 1);
    return $number;
}


sub orderLosers {
    my ($n, $syllables) = @_;
    my (@losers, $counted, $index);
    my @players = ('1') x $n;

    my $clock = 0;
    while (@losers < $n) {
        $counted = 0;
        while ($counted < $syllables) {
            $index = $clock % $n;

            if ($players[$index]) {
                $counted++;
            }

            if ($counted == $syllables) {
                push(@losers, ($index + 1) );
                $players[$index] = 0;
            }

            $clock++;
        }
    }

    return @losers;
}
