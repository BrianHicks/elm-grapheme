module String.Graphemes.Data.SpacingMark exposing (chars, match, parser)

{-| Hey, this module was generated automatically. Please don't edit it.

Run `make src/String/Graphemes/Data/SpacingMark.elm` instead!

-}

import Parser exposing (Parser)
import String.Graphemes.Data as Data
import String.Graphemes.RangeSet as RangeSet exposing (RangeSet)
import String.Graphemes.RangeSet.Range as Range exposing (Range)


parser : Parser ()
parser =
    Parser.chompIf match


match : Char -> Bool
match c =
    RangeSet.member c chars


chars : RangeSet Char
chars =
    (Result.withDefault RangeSet.empty << Parser.run Data.parser)
        "1ः1ऻ2ाी2ॉौ2ॎॏ2ংঃ2িী2েৈ2োৌ1ਃ2ਾੀ1ઃ2ાી1ૉ2ોૌ2ଂଃ1ୀ2େୈ2ୋୌ1ி2ுூ2ெை2ொௌ2ఁః2ుౄ2ಂಃ1ಾ2ೀು2ೃೄ2ೇೈ2ೊೋ2ംഃ2ിീ2െൈ2ൊൌ2ංඃ2ැෑ2ෘෞ2ෲෳ1ำ1ຳ2༾༿1ཿ1ေ2ျြ2ၖၗ1ႄ1ា2ើៅ2ះៈ2ᤣᤦ2ᤩᤫ2ᤰᤱ2ᤳᤸ2ᨙᨚ1ᩕ1ᩗ2ᩭᩲ1ᬄ1ᬻ2ᬽᭁ2ᭃ᭄1ᮂ1ᮡ2ᮦᮧ1᮪1ᯧ2ᯪᯬ1ᯮ2᯲᯳2ᰤᰫ2ᰴᰵ1᳡1᳷2ꠣꠤ1ꠧ2ꢀꢁ2ꢴꣃ2ꥒ꥓1ꦃ2ꦴꦵ2ꦺꦻ2ꦾ꧀2ꨯꨰ2ꨳꨴ1ꩍ1ꫫ2ꫮꫯ1ꫵ2ꯣꯤ2ꯦꯧ2ꯩꯪ1꯬1𑀀1𑀂1𑂂2𑂰𑂲2𑂷𑂸1𑄬2𑅅𑅆1𑆂2𑆳𑆵2𑆿𑇀2𑈬𑈮2𑈲𑈳1𑈵2𑋠𑋢2𑌂𑌃1𑌿2𑍁𑍄2𑍇𑍈2𑍋𑍍2𑍢𑍣2𑐵𑐷2𑑀𑑁1𑑅2𑒱𑒲1𑒹2𑒻𑒼1𑒾1𑓁2𑖰𑖱2𑖸𑖻1𑖾2𑘰𑘲2𑘻𑘼1𑘾1𑚬2𑚮𑚯1𑚶2𑜠𑜡1𑜦2𑠬𑠮1𑠸2𑧑𑧓2𑧜𑧟1𑧤1𑨹2𑩗𑩘1𑪗1𑰯1𑰾1𑲩1𑲱1𑲴2𑶊𑶎2𑶓𑶔1𑶖2𑻵𑻶2𖽑𖾇1𝅦1𝅭"