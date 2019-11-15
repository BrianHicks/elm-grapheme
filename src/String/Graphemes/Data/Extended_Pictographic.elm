module String.Graphemes.Data.Extended_Pictographic exposing (chars, match)

{-| Hey, this module was generated automatically. Please don't edit it.

Run `make src/String/Graphemes/Data/Extended_Pictographic.elm` instead!

-}

import String.Graphemes.Data as Data
import String.Graphemes.RangeDict as RangeDict exposing (RangeDict)
import String.Graphemes.RangeDict.Range as Range exposing (Range)


match : Char -> Bool
match c =
    RangeDict.member c chars


chars : RangeDict Char Data.Class
chars =
    (Result.withDefault RangeDict.empty << Data.parser Data.ExtendedPictographic)
        "1©1®1‼1⁉1™1ℹ2↔↙2↩↪2⌚⌛1⌨1⎈1⏏2⏩⏳2⏸⏺1Ⓜ2▪▫1▶1◀2◻◾2☀☄1★2☇☍1☎2☏☐1☑1☒2☔☕2☖☗1☘2☙☜1☝2☞☟1☠1☡2☢☣2☤☥1☦2☧☩1☪2☫☭2☮☯2☰☷2☸☺2☻☿1♀1♁1♂2♃♇2♈♓2♔♞1♟1♠2♡♢1♣1♤2♥♦1♧1♨2♩♺1♻2♼♽1♾1♿2⚀⚅2⚐⚑2⚒⚔1⚕2⚖⚗1⚘1⚙1⚚2⚛⚜2⚝⚟2⚠⚡2⚢⚩2⚪⚫2⚬⚯2⚰⚱2⚲⚼2⚽⚾2⚿⛃2⛄⛅2⛆⛇1⛈2⛉⛍2⛎⛏1⛐1⛑1⛒2⛓⛔2⛕⛨2⛩⛪2⛫⛯2⛰⛵1⛶2⛷⛺2⛻⛼1⛽2⛾✁1✂2✃✄1✅2✈✍1✎1✏2✐✑1✒1✔1✖1✝1✡1✨2✳✴1❄1❇1❌1❎2❓❕1❗2❣❤2❥❧2➕➗1➡1➰1➿2⤴⤵2⬅⬇2⬛⬜1⭐1⭕1〰1〽1㊗1㊙2🀀🀃1🀄2🀅🃎1🃏2🃐🃿2🄍🄏1🄯2🅬🅯2🅰🅱2🅾🅿1🆎2🆑🆚2🆭🇥2🈁🈂2🈃🈏1🈚1🈯2🈲🈺2🈼🈿2🉉🉏2🉐🉑2🉒🋿2🌀🌡2🌢🌣2🌤🎓2🎔🎕2🎖🎗1🎘2🎙🎛2🎜🎝2🎞🏰2🏱🏲2🏳🏵1🏶2🏷🏺2🐀📽1📾2📿🔽2🕆🕈2🕉🕎1🕏2🕐🕧2🕨🕮2🕯🕰2🕱🕲2🕳🕹1🕺2🕻🖆1🖇2🖈🖉2🖊🖍2🖎🖏1🖐2🖑🖔2🖕🖖2🖗🖣1🖤1🖥2🖦🖧1🖨2🖩🖰2🖱🖲2🖳🖻1🖼2🖽🗁2🗂🗄2🗅🗐2🗑🗓2🗔🗛2🗜🗞2🗟🗠1🗡1🗢1🗣2🗤🗧1🗨2🗩🗮1🗯2🗰🗲1🗳2🗴🗹2🗺🙏2🚀🛅2🛆🛊2🛋🛐2🛑🛒2🛓🛔1🛕2🛖🛟2🛠🛥2🛦🛨1🛩1🛪2🛫🛬2🛭🛯1🛰2🛱🛲1🛳2🛴🛶2🛷🛸1🛹1🛺2🛻🛿2🝴🝿2🟕🟟2🟠🟫2🟬🟿2🠌🠏2🡈🡏2🡚🡟2🢈🢏2🢮🣿1🤌2🤍🤏2🤐🤘2🤙🤞1🤟2🤠🤧2🤨🤯1🤰2🤱🤲2🤳🤺2🤼🤾1🤿2🥀🥅2🥇🥋1🥌2🥍🥏2🥐🥞2🥟🥫2🥬🥰1🥱1🥲2🥳🥶2🥷🥹1🥺1🥻2🥼🥿2🦀🦄2🦅🦑2🦒🦗2🦘🦢2🦣🦤2🦥🦪2🦫🦭2🦮🦯2🦰🦹2🦺🦿1🧀2🧁🧂2🧃🧊2🧋🧌2🧍🧏2🧐🧦2🧧🧿2🨀🩯2🩰🩳2🩴🩷2🩸🩺2🩻🩿2🪀🪂2🪃🪏2🪐🪕2🪖🿽"