my @cases = qw(
    InChI=1S/C4H10O2/c1-3(5)4(2)6/h3-6H,1-2H3
    InChI=1S/C4H6O6/c5-1(3(7)8)2(6)4(9)10/h1-2,5-6H,(H,7,8)(H,9,10)
    InChI=1S/C9H12/c1-4-7-8(5-2)9(7)6-3/h4-6H,1-3H3
    InChI=1S/C13H20/c1-2-10-5-6-12-8-7-11-4-3-9(1)13(10,11)12/h9-12H,1-8H2
    InChI=1S/C8H10N4O2/c1-10-4-9-6-5(10)7(13)12(3)8(14)11(6)2
    InChI=1S/C8H10N4O2/c1-10-4-9-6-5(10)7(13)12(3)8(14)11(6)2/h4H,1-3H3 
    InChI=1S/C2H5NO2/c3-1-2(4)5/h1,3H2,(H,4,5)
    InChI=1S/C4H8/c1-3-4-2/h3-4H,1-2H3
    InChI=1/C5H5N5O/c6-5-9-3-2(4(11)10-5)7-1-8-3/h1H,(H4,6,7,8,9,10,11)
    InChI=1S/C8H15NO4/c1-9(2,3)5-6(8(12)13)4-7(10)11/h6H,4-5H2,1-3H3,(H-,10,11,12,13)
    InChI=1S/CH4N2O/c2-1(3)4/h(H4,2,3,4)
    InChI=1S/C6H13N3O/c1-8(2)5-6(10)7-9(3)4/h5H,1-4H3
    InChI=1S/C9H9N3OS/c1-12(2)9-10-5-3-7(13)8(14)4-6(5)11-9/h3-4H,1-2H3,(H,10,11)
    InChI=1S/C6H6/c1-2-4-6-5-3-1/h1-6H
    InChI=1S/C4H10O2/c1-3(5)4(2)6/h3-6H,1-2H3
    InChI=1S/C9H12/c1-4-7-8(5-2)9(7)6-3/h4-6H,1-3H3
    InChI=1S/C13H20/c1-2-10-5-6-12-8-7-11-4-3-9(1)13(10,11)12/h9-12H,1-8H2
    InChI=1S/C3H10N2/c1-3(4)5-2/h3,5H,4H2,1-2H3
    InChI=1S/C6H8O6/c7-1-2(8)5-3(9)4(10)6(11)12-5/h2,5,7-10H,1H2 
    InChI=1S/C2H6O/c1-2-3/h3H,2H2,1H3
    InChI=1S/C17H19NO3/c1-18-7-6-17-10-3-5-13(20)16(17)21-15-12(19)4-2-9(14(15)17)8-11(10)18/h2-5,10-11,13,16,19-20H,6-8H2,1H3
    InChI=1S/C8H10N2O4/c9-5(8(13)14)3-10-2-1-6(11)7(12)4-10/h1-2,4-5H,3,9H2,(H2,12,13,14)
    InChI=1S/N2/c1-2
    InChI=1S/H2N2/c1-2/h1-2H
    InChI=1S/B2H6/c1-3-2-4-1/h1-2H2
    InChI=1S/CH5B/c1-2/h2H2,1H3
    InChI=1S/C2H6S2/c3-1-2-4/h3-4H,1-2H2
    InChI=1S/NO3.H3N/c2-1(3)4;/h;1H3
    InChI=1S/C35H35N4O4.Mg/c1-8-22-18(3)26-14-27-20(5)24(10-12-34(40)41)32(38-27)17-33-25(11-13-35(42)43-7)21(6)29(39-33)16-31-23(9-2)19(4)28(37-31)15-30(22)36-26;/h8-9,14-17H,1-2,10-13H2,3-7H3,(H2-,36,37,38,39,40,41);
    InChI=1S/2CH2O2/c2*2-1-3/h2*1H,(H,2,3)
    InChI=1S/CH4N2O.2CH4O/c2-1(3)4;2*1-2/h(H4,2,3,4);2*2H,1H3
);

use Chemistry::File::InChI;
use Test::More tests => 1;

for (0..$#cases) {
    Chemistry::File::InChI->parse_string( $cases[$_] );
}
ok( 'parsed' );
