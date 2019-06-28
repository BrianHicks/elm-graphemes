module String.Segmentation.Control exposing (match, parser)

import Parser exposing (Parser)


parser : Parser ()
parser =
    Parser.chompIf match


match : Char -> Bool
match char =
    let
        c =
            Char.toCode char
    in
    (c >= 0 && c <= 9)
        || (c >= 11 && c <= 12)
        || (c >= 14 && c <= 31)
        || (c >= 127 && c <= 159)
        || (c == 173)
        || (c == 1564)
        || (c == 6158)
        || (c == 8203)
        || (c >= 8206 && c <= 8207)
        || (c == 8232)
        || (c == 8233)
        || (c >= 8234 && c <= 8238)
        || (c >= 8288 && c <= 8292)
        || (c == 8293)
        || (c >= 8294 && c <= 8303)
        || (c == 65279)
        || (c >= 65520 && c <= 65528)
        || (c >= 65529 && c <= 65531)
        || (c >= 78896 && c <= 78904)
        || (c >= 113824 && c <= 113827)
        || (c >= 119155 && c <= 119162)
        || (c == 917504)
        || (c == 917505)
        || (c >= 917506 && c <= 917535)
        || (c >= 917632 && c <= 917759)
        || (c >= 918000 && c <= 921599)