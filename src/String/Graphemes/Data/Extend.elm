module String.Graphemes.Data.Extend exposing (chars, match, parser)

{-| Hey, this module was generated automatically. Please don't edit it.

Run `make src/String/Graphemes/Data/Extend.elm` instead!

-}

import Parser exposing (Parser)
import String.Graphemes.Data as Data
import String.Graphemes.RangeDict as RangeDict exposing (RangeDict)
import String.Graphemes.RangeDict.Range as Range exposing (Range)


parser : Parser ()
parser =
    Parser.chompIf match


match : Char -> Bool
match c =
    RangeDict.member c chars


chars : RangeDict Char ()
chars =
    (Result.withDefault RangeDict.empty << Parser.run (Data.parser ()))
        "2̀ͯ2҃҇2҈҉2ֽ֑1ֿ2ׁׂ2ׅׄ1ׇ2ؚؐ2ًٟ1ٰ2ۖۜ2۟ۤ2ۧۨ2۪ۭ1ܑ2ܰ݊2ަް2߫߳1߽2ࠖ࠙2ࠛࠣ2ࠥࠧ2ࠩ࠭2࡙࡛2࣓࣡2ࣣं1ऺ1़2ुै1्2॑ॗ2ॢॣ1ঁ1়1া2ুৄ1্1ৗ2ৢৣ1৾2ਁਂ1਼2ੁੂ2ੇੈ2ੋ੍1ੑ2ੰੱ1ੵ2ઁં1઼2ુૅ2ેૈ1્2ૢૣ2ૺ૿1ଁ1଼1ା1ି2ୁୄ1୍1ୖ1ୗ2ୢୣ1ஂ1ா1ீ1்1ௗ1ఀ1ఄ2ాీ2ెై2ొ్2ౕౖ2ౢౣ1ಁ1಼1ಿ1ೂ1ೆ2ೌ್2ೕೖ2ೢೣ2ഀഁ2഻഼1ാ2ുൄ1്1ൗ2ൢൣ1්1ා2ිු1ූ1ෟ1ั2ิฺ2็๎1ັ2ິຼ2່ໍ2༘༙1༵1༷1༹2ཱཾ2྄ྀ2྆྇2ྍྗ2ྙྼ1࿆2ိူ2ဲ့2္်2ွှ2ၘၙ2ၞၠ2ၱၴ1ႂ2ႅႆ1ႍ1ႝ2፝፟2ᜒ᜔2ᜲ᜴2ᝒᝓ2ᝲᝳ2឴឵2ិួ1ំ2៉៓1៝2᠋᠍2ᢅᢆ1ᢩ2ᤠᤢ2ᤧᤨ1ᤲ2᤻᤹2ᨘᨗ1ᨛ1ᩖ2ᩘᩞ1᩠1ᩢ2ᩥᩬ2ᩳ᩼1᩿2᪽᪰1᪾2ᬀᬃ1᬴1ᬵ2ᬶᬺ1ᬼ1ᭂ2᭫᭳2ᮀᮁ2ᮢᮥ2ᮨᮩ2᮫ᮭ1᯦2ᯨᯩ1ᯭ2ᯯᯱ2ᰬᰳ2ᰶ᰷2᳐᳒2᳔᳠2᳢᳨1᳭1᳴2᳸᳹2᷹᷀2᷿᷻1‌2⃐⃜2⃝⃠1⃡2⃢⃤2⃥⃰2⳯⳱1⵿2ⷠⷿ2〪〭2〮〯2゙゚1꙯2꙰꙲2ꙴ꙽2ꚞꚟ2꛰꛱1ꠂ1꠆1ꠋ2ꠥꠦ2꣄ꣅ2꣠꣱1ꣿ2ꤦ꤭2ꥇꥑ2ꦀꦂ1꦳2ꦶꦹ2ꦼꦽ1ꧥ2ꨩꨮ2ꨱꨲ2ꨵꨶ1ꩃ1ꩌ1ꩼ1ꪰ2ꪴꪲ2ꪷꪸ2ꪾ꪿1꫁2ꫬꫭ1꫶1ꯥ1ꯨ1꯭1ﬞ2︀️2︠︯2ﾞﾟ1𐇽1𐋠2𐍶𐍺2𐨁𐨃2𐨅𐨆2𐨌𐨏2𐨺𐨸1𐨿2𐫦𐫥2𐴤𐴧2𐽆𐽐1𑀁2𑀸𑁆2𑁿𑂁2𑂳𑂶2𑂺𑂹2𑄀𑄂2𑄧𑄫2𑄭𑄴1𑅳2𑆀𑆁2𑆶𑆾2𑇉𑇌2𑈯𑈱1𑈴2𑈶𑈷1𑈾1𑋟2𑋣𑋪2𑌀𑌁2𑌻𑌼1𑌾1𑍀1𑍗2𑍦𑍬2𑍰𑍴2𑐸𑐿2𑑂𑑄1𑑆1𑑞1𑒰2𑒳𑒸1𑒺1𑒽2𑒿𑓀2𑓃𑓂1𑖯2𑖲𑖵2𑖼𑖽2𑗀𑖿2𑗜𑗝2𑘳𑘺1𑘽2𑘿𑙀1𑚫1𑚭2𑚰𑚵1𑚷2𑜝𑜟2𑜢𑜥2𑜧𑜫2𑠯𑠷2𑠺𑠹2𑧔𑧗2𑧚𑧛1𑧠2𑨁𑨊2𑨳𑨸2𑨻𑨾1𑩇2𑩑𑩖2𑩙𑩛2𑪊𑪖2𑪘𑪙2𑰰𑰶2𑰸𑰽1𑰿2𑲒𑲧2𑲪𑲰2𑲲𑲳2𑲵𑲶2𑴱𑴶1𑴺2𑴼𑴽2𑴿𑵅1𑵇2𑶐𑶑1𑶕1𑶗2𑻳𑻴2𖫰𖫴2𖬰𖬶1𖽏2𖾏𖾒2𛲝𛲞1𝅥2𝅧𝅩2𝅮𝅲2𝅻𝆂2𝆋𝆅2𝆪𝆭2𝉂𝉄2𝨀𝨶2𝨻𝩬1𝩵1𝪄2𝪛𝪟2𝪡𝪯2𞀀𞀆2𞀈𞀘2𞀛𞀡2𞀣𞀤2𞀦𞀪2𞄰𞄶2𞋬𞋯2𞣐𞣖2𞥊𞥄2🏻🏿2󠀠󠁿2󠄀󠇯"