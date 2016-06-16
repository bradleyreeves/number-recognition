#! /usr/bin/perl 
package Pho;
sub new {
	my $class = shift; 
	my $self = bless {phonemes => shift, number => shift}, $class;
        return $self;
}
sub getNumber{
        my $self = shift;
        return $self->{number};
}
sub getPhonemes{
        my $self = shift;
        return $self->{phonemes};
}
package main;
@numbers;
@indices;
@numDB;
$sounds = "";
@numDB = (Pho->new("n aI n t i: n T", "nineteenth"),
Pho->new("n aI n t i: n", "nineteen"),
Pho->new("n aI n t i:", "ninety"),
Pho->new("n aI n dc d i:", "ninety"),
Pho->new("n aI n t i:", "ninety"),
Pho->new("n aI n T", "ninth"),
Pho->new("n aI n ^", "nine"),
Pho->new("n aI n", "nine"),
Pho->new("n A I n", "nine"),
Pho->new("n aI aI n", "nine"),
Pho->new("dc d ^ bc l", "double"),
Pho->new("t 9r I pc ph l", "triple"),
Pho->new("T 9r 9r i: i:_", "three"),
Pho->new("T 3r i:", "three"),
Pho->new("T 9r i: i:", "three"),
Pho->new("T 9r i:", "three"),
Pho->new("T 9r I", "three"),
Pho->new("T + 9r i:", "three"),
Pho->new("T I 9r i:", "three"),
Pho->new("s E v & n t i: n", "seventeen"),
Pho->new("s E v ^ n t i: n", "seventeen"),
Pho->new("s E v & n dc d i:", "seventy"),
Pho->new("s E v n dc d i:", "seventy"),
Pho->new("s E v & n d i:", "seventy"),
Pho->new("s E v ^ n T", "seventh"),
Pho->new("s E E v ^ n", "seven"),
Pho->new("s ^ v ^ n", "seven"),
Pho->new("s E v ^ n ^", "seven"),
Pho->new("s E v E n ^", "seven"),
Pho->new("s E v & n", "seven"),
Pho->new("s E v n", "seven"),
Pho->new("s E v I n", "seven"),
Pho->new("s E v E n", "seven"),
Pho->new("s E v ^ n", "seven"),
Pho->new("s E v ^", "seven"),
Pho->new("s E v I", "seven"),
Pho->new("t u","two"),
Pho->new("t u","two"),
Pho->new("t u","two"),
Pho->new("t w ^ n i", "twenty"),
Pho->new("t w & n i:", "twenty"),
Pho->new("t w & n t i:", "twenty"),
Pho->new("t w E n t i:", "twenty"),
Pho->new("t w ^ n i:", "twenty"),
Pho->new("h t w E n i: i:", "twenty"),
Pho->new("t w I n t i:", "twenty"),
Pho->new("t w E n i:", "twenty"),
Pho->new("t w E l f T", "twelfth"),
Pho->new("t w ^ l f", "twelve"),
Pho->new("t w E l v", "twelve"),
Pho->new("t + w ^ l v", "twelve"),
Pho->new("w w ^ n ^", "one"),
Pho->new("w w ^ n", "one"),
Pho->new("w w n ^", "one"),
Pho->new("w ^ n ^", "one"),
Pho->new("w ^ n", "one"),
Pho->new("w oU m", "one"),
Pho->new("w ^", "one"),
Pho->new("f oU 9r t i: n", "fourteen"),
Pho->new("f >_r t i: n", "fourteen"),
Pho->new("f oU 9r t i:", "forty"),
Pho->new("f >_r dc d i:", "forty"),
Pho->new("f >_r d i:", "forty"),
Pho->new("f oU 9r t i:", "forty"),
Pho->new("f > 9r t dc d i:", "forty"),
Pho->new("f > 9r t i:", "forty"),
Pho->new("f oU 9r dc d i:", "forty"),
Pho->new("f >_r t i:", "forty"),
Pho->new("f oU t i:", "forty"),
Pho->new("f oU_r T", "fourth"),
Pho->new("f > 9r T", "fourth"),
Pho->new("f_bn oU 9r", "four"),
Pho->new("f oU 9r", "four"),
Pho->new("f oU oU", "four"),
Pho->new("f > 9r", "four"),
Pho->new("f oU_r", "four"),
Pho->new("f >_r", "four"),
Pho->new("f >", "four"),
Pho->new("z I 9r oU oU", "zero"),
Pho->new("z_0 I 9r oU", "zero"),
Pho->new("t z i: 9r oU:", "zero"),
Pho->new("z i: 9r oU:", "zero"),
Pho->new("z i: 9r oU", "zero"),
Pho->new("z I 9r oU", "zero"),
Pho->new("z I 9r ^ +", "zero"),
Pho->new("z 3r oU", "zero"),
Pho->new("z I 9r ^", "zero"),
Pho->new("oU oU", "oh"),
Pho->new("oU", "oh"),
Pho->new("s I kc kh s t i: n ^", "sixteen"),
Pho->new("s I kc kh s t i: n", "sixteen"),
Pho->new("s I kc kh s t i:", "sixty"),
Pho->new("s I kc s t i:", "sixty"),
Pho->new("s I kc s t i:", "sixty"),
Pho->new("s I kc kh s T", "sixth"),
Pho->new("s I kc s + T", "sixth"),
Pho->new("s I kc kh s + T", "sixth"),
Pho->new("s I kc kh s I kc kh s", "six six"),
Pho->new("s I kc kh s", "six"),
Pho->new("s i: kc kh s", "six"),
Pho->new("s I kc kh", "six"),
Pho->new("s I", "six"),
Pho->new("f aI v ^", "five"),
Pho->new("f A aI v", "five"),
Pho->new("f aI v_0", "five"),
Pho->new("f aI aI f", "five"),
Pho->new("f aI f", "five"),
Pho->new("f aI v", "five"),
Pho->new("f aI", "five"),
Pho->new("T 3r dc d i: I T", "thirtieth"),
Pho->new("T I 3r dc d i:", "thirty"),
Pho->new("T 3r dc d i: i:", "thirty"),
Pho->new("T 3r t i:", "thirty"),
Pho->new("T 3r dc d i:", "thirty"),
Pho->new("T 3r t i:", "thirty"),
Pho->new("T 9r t i:", "thirty"),
Pho->new("T 3r d i:", "thirty"),
Pho->new("T 9r t", "third"),
Pho->new("T 3r dc d", "third"),
Pho->new("f 3r s t", "first"),
Pho->new("f I f t i: n", "fifteen"),
Pho->new("f I f t i: I T", "fiftieth"),
Pho->new("f I f t i:", "fifty"),
Pho->new("f I f T", "fifth"),
Pho->new("f I f + T", "fifth"),
Pho->new("f I T", "fifth"),
Pho->new("T aU z ^ n d", "thousand"),
Pho->new("T aU z E n dc", "thousand"),
Pho->new("h ^ n dc d 9r I dc T I", "hundredth"),
Pho->new("h ^ n dc d 9r I dc T", "hundredth"),
Pho->new("h ^ n dc d 9r E dc", "hundred"),
Pho->new("h ^ n dc d 9r ^ dc d", "hundred"),
Pho->new("h ^ n dc d 9r I dc d", "hundred"),
Pho->new("h ^ n dc d 3r d", "hundred"),
Pho->new("h ^ n dc d 9r I", "hundred"),
Pho->new("s E kc kh ^ n dc d", "second"),
Pho->new("T 3r t i: n T", "thirteenth"),
Pho->new("T 3r t i: n", "thirteen"),
Pho->new("i: l E v & n", "eleven"),
Pho->new("^ ^ l E v ^ n ^", "eleven"),
Pho->new("^ l E v ^ n", "eleven"),
Pho->new("I l E v & n", "eleven"),
Pho->new("& l E v & n", "eleven"),
Pho->new("& l E v ^ n", "eleven"),
Pho->new("t E n T", "tenth"),
Pho->new("t E n", "ten"),
Pho->new("ei t i: n T", "eighteenth"),
Pho->new("ei t i: n", "eighteen"),
Pho->new("ei t t i: n ^", "eighteen"),
Pho->new("ei ei t i:", "eighty"),
Pho->new("ei t i:", "eighty"),
Pho->new("ei t d i:", "eighty"),
Pho->new("ei t i:", "eighty"),
Pho->new("ei t T", "eighth"),
Pho->new("ei ei t", "eight"),
Pho->new("ei ei t", "eight"),
Pho->new("ei ei ei", "eight"),
Pho->new("ei ei", "eight"),
Pho->new("ei t", "eight"),
Pho->new("ei t", "eight"),
Pho->new("ei t", "eight"),
Pho->new("ei dc d", "eight"),
Pho->new("ei t", "eight"),
Pho->new("i: t", "eight"),
Pho->new("i: i:", "eight"),
Pho->new("i:", "eight"),
Pho->new("ei", "eight"),
Pho->new("@ n dc d", "and"),
Pho->new("I_? n", "and"),
Pho->new("^ ", "a"),
Pho->new("w", "one"));
@numDBSorted = sort {length ($a->getPhonemes) <=> length ($b->getPhonemes) || $b->getPhonemes cmp a->getPhonemes} @numDB;
sub remove{
        my $string = shift;
        my $first = substr($sounds, 0, index($sounds, $string));
        $spaces = "";
        for (my $i = 0; $i < length($string); $i++){
                $spaces = "$spaces ";
        }
        my $second = substr($sounds, index($sounds, $string) + length($string), length($sounds) - ($first + length($string)));
        $sounds = "$first$spaces$second";
}
while ( $in = <STDIN> ) {
        @sound = split(' ', $in);
        $s1 = $sound[2];
        $sounds = $sounds . " $s1";
}
$sounds =~ s/_ln//g;
$sounds =~ s/\Q_(\E//g;
$sounds =~ s/_h//g;
$sounds =~ s/\Q_*\E//g;
$sounds =~ s/\Q_?*\E//g;
$sounds =~ s/\Q_?\E//g;
$sounds =~ s/\Q.glot \E//g;
$sounds =~ s/\Q_v\E//g;
$sounds =~ s/\Q_~\E//g;
$sounds =~ s/\Q_x\E//g;
$sounds =~ s/\Q_0\E//g;
$sounds =~ s/\Q9r\E/r/g;
$sounds =~ s/\Q3r\E/r/g;
$sounds =~ s/\Qtc\E/t/g;
$sounds =~ s/\Qth\E/t/g;
$sounds =~ s/\Qt t\E/t/g;
$sounds =~ s/\Qei ei\E/ei/g;
$sounds =~ s/\Qei ei\E/ei/g;
$sounds =~ s/\Qdc\E/d/g;
$sounds =~ s/\Qd d\E/d/g;
$sounds =~ s/\Q&\E/\Q^\E/g;
$sounds =~ s/\Q3r\E//g;
$sounds =~ s/\Q3r\E//g;
$sounds =~ s/\Q3r\E//g;
$sounds =~ s/\Q3r\E//g;
$sounds =~ s/\Q3r\E//g;
$sounds =~ s/\Q3r\E//g;
$sounds =~ s/\Q  \E//g;
print "# $sounds\n";
for (my $i = 0; $i < 15; $i++){
        #print "# i: $i\n";
        for (my $j = 0; $j < scalar(@numDBSorted); $j++){
                #print "# j: $j\n";
                #print $j;
                if (index($sounds, $numDBSorted[$j]->getPhonemes) != -1){
                        push ( @indices, index($sounds, $numDBSorted[$j]->getPhonemes));
                        push ( @numbers, $numDBSorted[$j]->getNumber );
                        &remove($numDBSorted[$j]->getPhonemes);
                        #print "# $sounds\n";
                        #print "# @numbers\n";
                        last;
                }
        }
}
#print "# numbers: @numbers\n";
#print "# sounds: $sounds\n";
for (my $i = 0; $i < scalar(@numbers); $i++ ){
        $index = 0;
        $low = 1000; 
        for (my $j = 0; $j < scalar(@indices); $j++ ){
                if ($indices[$j] < $low){
                        $low = $indices[$j];
                        $index = $j;
                }
        }
        print $numbers[$index];
        $indices[$index] = 1000;
        print "\n";
}
