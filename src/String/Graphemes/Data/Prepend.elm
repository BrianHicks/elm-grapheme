module String.Graphemes.Data.Prepend exposing (chars, match, parser)

{-| Hey, this module was generated automatically. Please don't edit it.

Run `make src/String/Graphemes/Data/Prepend.elm` instead!

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
        "2؀؅1۝1܏1࣢1ൎ1𑂽1𑃍2𑇂𑇃1𑨺2𑪄𑪉1𑵆"