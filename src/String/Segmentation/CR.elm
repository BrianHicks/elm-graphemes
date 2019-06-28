module String.Segmentation.CR exposing (chars, parser)

import Parser exposing (Parser)
import String.Segmentation.RangeSet as RangeSet exposing (RangeSet)
import String.Segmentation.RangeSet.Range as Range


parser : Parser ()
parser =
    Parser.chompIf (\c -> RangeSet.member c chars)


chars : RangeSet Char
chars =
    RangeSet.fromList
        [ Range.point '\u{000D}' -- Cc       <control-000D>
        ]
