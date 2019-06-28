module String.Segmentation.LV exposing (chars, parser)

import Parser exposing (Parser)
import Set exposing (Set)


parser : Parser ()
parser =
    Parser.chompIf (\c -> Set.member c chars)


chars : Set Char
chars =
    [ [ 0xAC00 -- Lo       HANGUL SYLLABLE GA
      , 0xAC1C -- Lo       HANGUL SYLLABLE GAE
      , 0xAC38 -- Lo       HANGUL SYLLABLE GYA
      , 0xAC54 -- Lo       HANGUL SYLLABLE GYAE
      , 0xAC70 -- Lo       HANGUL SYLLABLE GEO
      , 0xAC8C -- Lo       HANGUL SYLLABLE GE
      , 0xACA8 -- Lo       HANGUL SYLLABLE GYEO
      , 0xACC4 -- Lo       HANGUL SYLLABLE GYE
      , 0xACE0 -- Lo       HANGUL SYLLABLE GO
      , 0xACFC -- Lo       HANGUL SYLLABLE GWA
      , 0xAD18 -- Lo       HANGUL SYLLABLE GWAE
      , 0xAD34 -- Lo       HANGUL SYLLABLE GOE
      , 0xAD50 -- Lo       HANGUL SYLLABLE GYO
      , 0xAD6C -- Lo       HANGUL SYLLABLE GU
      , 0xAD88 -- Lo       HANGUL SYLLABLE GWEO
      , 0xADA4 -- Lo       HANGUL SYLLABLE GWE
      , 0xADC0 -- Lo       HANGUL SYLLABLE GWI
      , 0xADDC -- Lo       HANGUL SYLLABLE GYU
      , 0xADF8 -- Lo       HANGUL SYLLABLE GEU
      , 0xAE14 -- Lo       HANGUL SYLLABLE GYI
      , 0xAE30 -- Lo       HANGUL SYLLABLE GI
      , 0xAE4C -- Lo       HANGUL SYLLABLE GGA
      , 0xAE68 -- Lo       HANGUL SYLLABLE GGAE
      , 0xAE84 -- Lo       HANGUL SYLLABLE GGYA
      , 0xAEA0 -- Lo       HANGUL SYLLABLE GGYAE
      , 0xAEBC -- Lo       HANGUL SYLLABLE GGEO
      , 0xAED8 -- Lo       HANGUL SYLLABLE GGE
      , 0xAEF4 -- Lo       HANGUL SYLLABLE GGYEO
      , 0xAF10 -- Lo       HANGUL SYLLABLE GGYE
      , 0xAF2C -- Lo       HANGUL SYLLABLE GGO
      , 0xAF48 -- Lo       HANGUL SYLLABLE GGWA
      , 0xAF64 -- Lo       HANGUL SYLLABLE GGWAE
      , 0xAF80 -- Lo       HANGUL SYLLABLE GGOE
      , 0xAF9C -- Lo       HANGUL SYLLABLE GGYO
      , 0xAFB8 -- Lo       HANGUL SYLLABLE GGU
      , 0xAFD4 -- Lo       HANGUL SYLLABLE GGWEO
      , 0xAFF0 -- Lo       HANGUL SYLLABLE GGWE
      , 0xB00C -- Lo       HANGUL SYLLABLE GGWI
      , 0xB028 -- Lo       HANGUL SYLLABLE GGYU
      , 0xB044 -- Lo       HANGUL SYLLABLE GGEU
      , 0xB060 -- Lo       HANGUL SYLLABLE GGYI
      , 0xB07C -- Lo       HANGUL SYLLABLE GGI
      , 0xB098 -- Lo       HANGUL SYLLABLE NA
      , 0xB0B4 -- Lo       HANGUL SYLLABLE NAE
      , 0xB0D0 -- Lo       HANGUL SYLLABLE NYA
      , 0xB0EC -- Lo       HANGUL SYLLABLE NYAE
      , 0xB108 -- Lo       HANGUL SYLLABLE NEO
      , 0xB124 -- Lo       HANGUL SYLLABLE NE
      , 0xB140 -- Lo       HANGUL SYLLABLE NYEO
      , 0xB15C -- Lo       HANGUL SYLLABLE NYE
      , 0xB178 -- Lo       HANGUL SYLLABLE NO
      , 0xB194 -- Lo       HANGUL SYLLABLE NWA
      , 0xB1B0 -- Lo       HANGUL SYLLABLE NWAE
      , 0xB1CC -- Lo       HANGUL SYLLABLE NOE
      , 0xB1E8 -- Lo       HANGUL SYLLABLE NYO
      , 0xB204 -- Lo       HANGUL SYLLABLE NU
      , 0xB220 -- Lo       HANGUL SYLLABLE NWEO
      , 0xB23C -- Lo       HANGUL SYLLABLE NWE
      , 0xB258 -- Lo       HANGUL SYLLABLE NWI
      , 0xB274 -- Lo       HANGUL SYLLABLE NYU
      , 0xB290 -- Lo       HANGUL SYLLABLE NEU
      , 0xB2AC -- Lo       HANGUL SYLLABLE NYI
      , 0xB2C8 -- Lo       HANGUL SYLLABLE NI
      , 0xB2E4 -- Lo       HANGUL SYLLABLE DA
      , 0xB300 -- Lo       HANGUL SYLLABLE DAE
      , 0xB31C -- Lo       HANGUL SYLLABLE DYA
      , 0xB338 -- Lo       HANGUL SYLLABLE DYAE
      , 0xB354 -- Lo       HANGUL SYLLABLE DEO
      , 0xB370 -- Lo       HANGUL SYLLABLE DE
      , 0xB38C -- Lo       HANGUL SYLLABLE DYEO
      , 0xB3A8 -- Lo       HANGUL SYLLABLE DYE
      , 0xB3C4 -- Lo       HANGUL SYLLABLE DO
      , 0xB3E0 -- Lo       HANGUL SYLLABLE DWA
      , 0xB3FC -- Lo       HANGUL SYLLABLE DWAE
      , 0xB418 -- Lo       HANGUL SYLLABLE DOE
      , 0xB434 -- Lo       HANGUL SYLLABLE DYO
      , 0xB450 -- Lo       HANGUL SYLLABLE DU
      , 0xB46C -- Lo       HANGUL SYLLABLE DWEO
      , 0xB488 -- Lo       HANGUL SYLLABLE DWE
      , 0xB4A4 -- Lo       HANGUL SYLLABLE DWI
      , 0xB4C0 -- Lo       HANGUL SYLLABLE DYU
      , 0xB4DC -- Lo       HANGUL SYLLABLE DEU
      , 0xB4F8 -- Lo       HANGUL SYLLABLE DYI
      , 0xB514 -- Lo       HANGUL SYLLABLE DI
      , 0xB530 -- Lo       HANGUL SYLLABLE DDA
      , 0xB54C -- Lo       HANGUL SYLLABLE DDAE
      , 0xB568 -- Lo       HANGUL SYLLABLE DDYA
      , 0xB584 -- Lo       HANGUL SYLLABLE DDYAE
      , 0xB5A0 -- Lo       HANGUL SYLLABLE DDEO
      , 0xB5BC -- Lo       HANGUL SYLLABLE DDE
      , 0xB5D8 -- Lo       HANGUL SYLLABLE DDYEO
      , 0xB5F4 -- Lo       HANGUL SYLLABLE DDYE
      , 0xB610 -- Lo       HANGUL SYLLABLE DDO
      , 0xB62C -- Lo       HANGUL SYLLABLE DDWA
      , 0xB648 -- Lo       HANGUL SYLLABLE DDWAE
      , 0xB664 -- Lo       HANGUL SYLLABLE DDOE
      , 0xB680 -- Lo       HANGUL SYLLABLE DDYO
      , 0xB69C -- Lo       HANGUL SYLLABLE DDU
      , 0xB6B8 -- Lo       HANGUL SYLLABLE DDWEO
      , 0xB6D4 -- Lo       HANGUL SYLLABLE DDWE
      , 0xB6F0 -- Lo       HANGUL SYLLABLE DDWI
      , 0xB70C -- Lo       HANGUL SYLLABLE DDYU
      , 0xB728 -- Lo       HANGUL SYLLABLE DDEU
      , 0xB744 -- Lo       HANGUL SYLLABLE DDYI
      , 0xB760 -- Lo       HANGUL SYLLABLE DDI
      , 0xB77C -- Lo       HANGUL SYLLABLE RA
      , 0xB798 -- Lo       HANGUL SYLLABLE RAE
      , 0xB7B4 -- Lo       HANGUL SYLLABLE RYA
      , 0xB7D0 -- Lo       HANGUL SYLLABLE RYAE
      , 0xB7EC -- Lo       HANGUL SYLLABLE REO
      , 0xB808 -- Lo       HANGUL SYLLABLE RE
      , 0xB824 -- Lo       HANGUL SYLLABLE RYEO
      , 0xB840 -- Lo       HANGUL SYLLABLE RYE
      , 0xB85C -- Lo       HANGUL SYLLABLE RO
      , 0xB878 -- Lo       HANGUL SYLLABLE RWA
      , 0xB894 -- Lo       HANGUL SYLLABLE RWAE
      , 0xB8B0 -- Lo       HANGUL SYLLABLE ROE
      , 0xB8CC -- Lo       HANGUL SYLLABLE RYO
      , 0xB8E8 -- Lo       HANGUL SYLLABLE RU
      , 0xB904 -- Lo       HANGUL SYLLABLE RWEO
      , 0xB920 -- Lo       HANGUL SYLLABLE RWE
      , 0xB93C -- Lo       HANGUL SYLLABLE RWI
      , 0xB958 -- Lo       HANGUL SYLLABLE RYU
      , 0xB974 -- Lo       HANGUL SYLLABLE REU
      , 0xB990 -- Lo       HANGUL SYLLABLE RYI
      , 0xB9AC -- Lo       HANGUL SYLLABLE RI
      , 0xB9C8 -- Lo       HANGUL SYLLABLE MA
      , 0xB9E4 -- Lo       HANGUL SYLLABLE MAE
      , 0xBA00 -- Lo       HANGUL SYLLABLE MYA
      , 0xBA1C -- Lo       HANGUL SYLLABLE MYAE
      , 0xBA38 -- Lo       HANGUL SYLLABLE MEO
      , 0xBA54 -- Lo       HANGUL SYLLABLE ME
      , 0xBA70 -- Lo       HANGUL SYLLABLE MYEO
      , 0xBA8C -- Lo       HANGUL SYLLABLE MYE
      , 0xBAA8 -- Lo       HANGUL SYLLABLE MO
      , 0xBAC4 -- Lo       HANGUL SYLLABLE MWA
      , 0xBAE0 -- Lo       HANGUL SYLLABLE MWAE
      , 0xBAFC -- Lo       HANGUL SYLLABLE MOE
      , 0xBB18 -- Lo       HANGUL SYLLABLE MYO
      , 0xBB34 -- Lo       HANGUL SYLLABLE MU
      , 0xBB50 -- Lo       HANGUL SYLLABLE MWEO
      , 0xBB6C -- Lo       HANGUL SYLLABLE MWE
      , 0xBB88 -- Lo       HANGUL SYLLABLE MWI
      , 0xBBA4 -- Lo       HANGUL SYLLABLE MYU
      , 0xBBC0 -- Lo       HANGUL SYLLABLE MEU
      , 0xBBDC -- Lo       HANGUL SYLLABLE MYI
      , 0xBBF8 -- Lo       HANGUL SYLLABLE MI
      , 0xBC14 -- Lo       HANGUL SYLLABLE BA
      , 0xBC30 -- Lo       HANGUL SYLLABLE BAE
      , 0xBC4C -- Lo       HANGUL SYLLABLE BYA
      , 0xBC68 -- Lo       HANGUL SYLLABLE BYAE
      , 0xBC84 -- Lo       HANGUL SYLLABLE BEO
      , 0xBCA0 -- Lo       HANGUL SYLLABLE BE
      , 0xBCBC -- Lo       HANGUL SYLLABLE BYEO
      , 0xBCD8 -- Lo       HANGUL SYLLABLE BYE
      , 0xBCF4 -- Lo       HANGUL SYLLABLE BO
      , 0xBD10 -- Lo       HANGUL SYLLABLE BWA
      , 0xBD2C -- Lo       HANGUL SYLLABLE BWAE
      , 0xBD48 -- Lo       HANGUL SYLLABLE BOE
      , 0xBD64 -- Lo       HANGUL SYLLABLE BYO
      , 0xBD80 -- Lo       HANGUL SYLLABLE BU
      , 0xBD9C -- Lo       HANGUL SYLLABLE BWEO
      , 0xBDB8 -- Lo       HANGUL SYLLABLE BWE
      , 0xBDD4 -- Lo       HANGUL SYLLABLE BWI
      , 0xBDF0 -- Lo       HANGUL SYLLABLE BYU
      , 0xBE0C -- Lo       HANGUL SYLLABLE BEU
      , 0xBE28 -- Lo       HANGUL SYLLABLE BYI
      , 0xBE44 -- Lo       HANGUL SYLLABLE BI
      , 0xBE60 -- Lo       HANGUL SYLLABLE BBA
      , 0xBE7C -- Lo       HANGUL SYLLABLE BBAE
      , 0xBE98 -- Lo       HANGUL SYLLABLE BBYA
      , 0xBEB4 -- Lo       HANGUL SYLLABLE BBYAE
      , 0xBED0 -- Lo       HANGUL SYLLABLE BBEO
      , 0xBEEC -- Lo       HANGUL SYLLABLE BBE
      , 0xBF08 -- Lo       HANGUL SYLLABLE BBYEO
      , 0xBF24 -- Lo       HANGUL SYLLABLE BBYE
      , 0xBF40 -- Lo       HANGUL SYLLABLE BBO
      , 0xBF5C -- Lo       HANGUL SYLLABLE BBWA
      , 0xBF78 -- Lo       HANGUL SYLLABLE BBWAE
      , 0xBF94 -- Lo       HANGUL SYLLABLE BBOE
      , 0xBFB0 -- Lo       HANGUL SYLLABLE BBYO
      , 0xBFCC -- Lo       HANGUL SYLLABLE BBU
      , 0xBFE8 -- Lo       HANGUL SYLLABLE BBWEO
      , 0xC004 -- Lo       HANGUL SYLLABLE BBWE
      , 0xC020 -- Lo       HANGUL SYLLABLE BBWI
      , 0xC03C -- Lo       HANGUL SYLLABLE BBYU
      , 0xC058 -- Lo       HANGUL SYLLABLE BBEU
      , 0xC074 -- Lo       HANGUL SYLLABLE BBYI
      , 0xC090 -- Lo       HANGUL SYLLABLE BBI
      , 0xC0AC -- Lo       HANGUL SYLLABLE SA
      , 0xC0C8 -- Lo       HANGUL SYLLABLE SAE
      , 0xC0E4 -- Lo       HANGUL SYLLABLE SYA
      , 0xC100 -- Lo       HANGUL SYLLABLE SYAE
      , 0xC11C -- Lo       HANGUL SYLLABLE SEO
      , 0xC138 -- Lo       HANGUL SYLLABLE SE
      , 0xC154 -- Lo       HANGUL SYLLABLE SYEO
      , 0xC170 -- Lo       HANGUL SYLLABLE SYE
      , 0xC18C -- Lo       HANGUL SYLLABLE SO
      , 0xC1A8 -- Lo       HANGUL SYLLABLE SWA
      , 0xC1C4 -- Lo       HANGUL SYLLABLE SWAE
      , 0xC1E0 -- Lo       HANGUL SYLLABLE SOE
      , 0xC1FC -- Lo       HANGUL SYLLABLE SYO
      , 0xC218 -- Lo       HANGUL SYLLABLE SU
      , 0xC234 -- Lo       HANGUL SYLLABLE SWEO
      , 0xC250 -- Lo       HANGUL SYLLABLE SWE
      , 0xC26C -- Lo       HANGUL SYLLABLE SWI
      , 0xC288 -- Lo       HANGUL SYLLABLE SYU
      , 0xC2A4 -- Lo       HANGUL SYLLABLE SEU
      , 0xC2C0 -- Lo       HANGUL SYLLABLE SYI
      , 0xC2DC -- Lo       HANGUL SYLLABLE SI
      , 0xC2F8 -- Lo       HANGUL SYLLABLE SSA
      , 0xC314 -- Lo       HANGUL SYLLABLE SSAE
      , 0xC330 -- Lo       HANGUL SYLLABLE SSYA
      , 0xC34C -- Lo       HANGUL SYLLABLE SSYAE
      , 0xC368 -- Lo       HANGUL SYLLABLE SSEO
      , 0xC384 -- Lo       HANGUL SYLLABLE SSE
      , 0xC3A0 -- Lo       HANGUL SYLLABLE SSYEO
      , 0xC3BC -- Lo       HANGUL SYLLABLE SSYE
      , 0xC3D8 -- Lo       HANGUL SYLLABLE SSO
      , 0xC3F4 -- Lo       HANGUL SYLLABLE SSWA
      , 0xC410 -- Lo       HANGUL SYLLABLE SSWAE
      , 0xC42C -- Lo       HANGUL SYLLABLE SSOE
      , 0xC448 -- Lo       HANGUL SYLLABLE SSYO
      , 0xC464 -- Lo       HANGUL SYLLABLE SSU
      , 0xC480 -- Lo       HANGUL SYLLABLE SSWEO
      , 0xC49C -- Lo       HANGUL SYLLABLE SSWE
      , 0xC4B8 -- Lo       HANGUL SYLLABLE SSWI
      , 0xC4D4 -- Lo       HANGUL SYLLABLE SSYU
      , 0xC4F0 -- Lo       HANGUL SYLLABLE SSEU
      , 0xC50C -- Lo       HANGUL SYLLABLE SSYI
      , 0xC528 -- Lo       HANGUL SYLLABLE SSI
      , 0xC544 -- Lo       HANGUL SYLLABLE A
      , 0xC560 -- Lo       HANGUL SYLLABLE AE
      , 0xC57C -- Lo       HANGUL SYLLABLE YA
      , 0xC598 -- Lo       HANGUL SYLLABLE YAE
      , 0xC5B4 -- Lo       HANGUL SYLLABLE EO
      , 0xC5D0 -- Lo       HANGUL SYLLABLE E
      , 0xC5EC -- Lo       HANGUL SYLLABLE YEO
      , 0xC608 -- Lo       HANGUL SYLLABLE YE
      , 0xC624 -- Lo       HANGUL SYLLABLE O
      , 0xC640 -- Lo       HANGUL SYLLABLE WA
      , 0xC65C -- Lo       HANGUL SYLLABLE WAE
      , 0xC678 -- Lo       HANGUL SYLLABLE OE
      , 0xC694 -- Lo       HANGUL SYLLABLE YO
      , 0xC6B0 -- Lo       HANGUL SYLLABLE U
      , 0xC6CC -- Lo       HANGUL SYLLABLE WEO
      , 0xC6E8 -- Lo       HANGUL SYLLABLE WE
      , 0xC704 -- Lo       HANGUL SYLLABLE WI
      , 0xC720 -- Lo       HANGUL SYLLABLE YU
      , 0xC73C -- Lo       HANGUL SYLLABLE EU
      , 0xC758 -- Lo       HANGUL SYLLABLE YI
      , 0xC774 -- Lo       HANGUL SYLLABLE I
      , 0xC790 -- Lo       HANGUL SYLLABLE JA
      , 0xC7AC -- Lo       HANGUL SYLLABLE JAE
      , 0xC7C8 -- Lo       HANGUL SYLLABLE JYA
      , 0xC7E4 -- Lo       HANGUL SYLLABLE JYAE
      , 0xC800 -- Lo       HANGUL SYLLABLE JEO
      , 0xC81C -- Lo       HANGUL SYLLABLE JE
      , 0xC838 -- Lo       HANGUL SYLLABLE JYEO
      , 0xC854 -- Lo       HANGUL SYLLABLE JYE
      , 0xC870 -- Lo       HANGUL SYLLABLE JO
      , 0xC88C -- Lo       HANGUL SYLLABLE JWA
      , 0xC8A8 -- Lo       HANGUL SYLLABLE JWAE
      , 0xC8C4 -- Lo       HANGUL SYLLABLE JOE
      , 0xC8E0 -- Lo       HANGUL SYLLABLE JYO
      , 0xC8FC -- Lo       HANGUL SYLLABLE JU
      , 0xC918 -- Lo       HANGUL SYLLABLE JWEO
      , 0xC934 -- Lo       HANGUL SYLLABLE JWE
      , 0xC950 -- Lo       HANGUL SYLLABLE JWI
      , 0xC96C -- Lo       HANGUL SYLLABLE JYU
      , 0xC988 -- Lo       HANGUL SYLLABLE JEU
      , 0xC9A4 -- Lo       HANGUL SYLLABLE JYI
      , 0xC9C0 -- Lo       HANGUL SYLLABLE JI
      , 0xC9DC -- Lo       HANGUL SYLLABLE JJA
      , 0xC9F8 -- Lo       HANGUL SYLLABLE JJAE
      , 0xCA14 -- Lo       HANGUL SYLLABLE JJYA
      , 0xCA30 -- Lo       HANGUL SYLLABLE JJYAE
      , 0xCA4C -- Lo       HANGUL SYLLABLE JJEO
      , 0xCA68 -- Lo       HANGUL SYLLABLE JJE
      , 0xCA84 -- Lo       HANGUL SYLLABLE JJYEO
      , 0xCAA0 -- Lo       HANGUL SYLLABLE JJYE
      , 0xCABC -- Lo       HANGUL SYLLABLE JJO
      , 0xCAD8 -- Lo       HANGUL SYLLABLE JJWA
      , 0xCAF4 -- Lo       HANGUL SYLLABLE JJWAE
      , 0xCB10 -- Lo       HANGUL SYLLABLE JJOE
      , 0xCB2C -- Lo       HANGUL SYLLABLE JJYO
      , 0xCB48 -- Lo       HANGUL SYLLABLE JJU
      , 0xCB64 -- Lo       HANGUL SYLLABLE JJWEO
      , 0xCB80 -- Lo       HANGUL SYLLABLE JJWE
      , 0xCB9C -- Lo       HANGUL SYLLABLE JJWI
      , 0xCBB8 -- Lo       HANGUL SYLLABLE JJYU
      , 0xCBD4 -- Lo       HANGUL SYLLABLE JJEU
      , 0xCBF0 -- Lo       HANGUL SYLLABLE JJYI
      , 0xCC0C -- Lo       HANGUL SYLLABLE JJI
      , 0xCC28 -- Lo       HANGUL SYLLABLE CA
      , 0xCC44 -- Lo       HANGUL SYLLABLE CAE
      , 0xCC60 -- Lo       HANGUL SYLLABLE CYA
      , 0xCC7C -- Lo       HANGUL SYLLABLE CYAE
      , 0xCC98 -- Lo       HANGUL SYLLABLE CEO
      , 0xCCB4 -- Lo       HANGUL SYLLABLE CE
      , 0xCCD0 -- Lo       HANGUL SYLLABLE CYEO
      , 0xCCEC -- Lo       HANGUL SYLLABLE CYE
      , 0xCD08 -- Lo       HANGUL SYLLABLE CO
      , 0xCD24 -- Lo       HANGUL SYLLABLE CWA
      , 0xCD40 -- Lo       HANGUL SYLLABLE CWAE
      , 0xCD5C -- Lo       HANGUL SYLLABLE COE
      , 0xCD78 -- Lo       HANGUL SYLLABLE CYO
      , 0xCD94 -- Lo       HANGUL SYLLABLE CU
      , 0xCDB0 -- Lo       HANGUL SYLLABLE CWEO
      , 0xCDCC -- Lo       HANGUL SYLLABLE CWE
      , 0xCDE8 -- Lo       HANGUL SYLLABLE CWI
      , 0xCE04 -- Lo       HANGUL SYLLABLE CYU
      , 0xCE20 -- Lo       HANGUL SYLLABLE CEU
      , 0xCE3C -- Lo       HANGUL SYLLABLE CYI
      , 0xCE58 -- Lo       HANGUL SYLLABLE CI
      , 0xCE74 -- Lo       HANGUL SYLLABLE KA
      , 0xCE90 -- Lo       HANGUL SYLLABLE KAE
      , 0xCEAC -- Lo       HANGUL SYLLABLE KYA
      , 0xCEC8 -- Lo       HANGUL SYLLABLE KYAE
      , 0xCEE4 -- Lo       HANGUL SYLLABLE KEO
      , 0xCF00 -- Lo       HANGUL SYLLABLE KE
      , 0xCF1C -- Lo       HANGUL SYLLABLE KYEO
      , 0xCF38 -- Lo       HANGUL SYLLABLE KYE
      , 0xCF54 -- Lo       HANGUL SYLLABLE KO
      , 0xCF70 -- Lo       HANGUL SYLLABLE KWA
      , 0xCF8C -- Lo       HANGUL SYLLABLE KWAE
      , 0xCFA8 -- Lo       HANGUL SYLLABLE KOE
      , 0xCFC4 -- Lo       HANGUL SYLLABLE KYO
      , 0xCFE0 -- Lo       HANGUL SYLLABLE KU
      , 0xCFFC -- Lo       HANGUL SYLLABLE KWEO
      , 0xD018 -- Lo       HANGUL SYLLABLE KWE
      , 0xD034 -- Lo       HANGUL SYLLABLE KWI
      , 0xD050 -- Lo       HANGUL SYLLABLE KYU
      , 0xD06C -- Lo       HANGUL SYLLABLE KEU
      , 0xD088 -- Lo       HANGUL SYLLABLE KYI
      , 0xD0A4 -- Lo       HANGUL SYLLABLE KI
      , 0xD0C0 -- Lo       HANGUL SYLLABLE TA
      , 0xD0DC -- Lo       HANGUL SYLLABLE TAE
      , 0xD0F8 -- Lo       HANGUL SYLLABLE TYA
      , 0xD114 -- Lo       HANGUL SYLLABLE TYAE
      , 0xD130 -- Lo       HANGUL SYLLABLE TEO
      , 0xD14C -- Lo       HANGUL SYLLABLE TE
      , 0xD168 -- Lo       HANGUL SYLLABLE TYEO
      , 0xD184 -- Lo       HANGUL SYLLABLE TYE
      , 0xD1A0 -- Lo       HANGUL SYLLABLE TO
      , 0xD1BC -- Lo       HANGUL SYLLABLE TWA
      , 0xD1D8 -- Lo       HANGUL SYLLABLE TWAE
      , 0xD1F4 -- Lo       HANGUL SYLLABLE TOE
      , 0xD210 -- Lo       HANGUL SYLLABLE TYO
      , 0xD22C -- Lo       HANGUL SYLLABLE TU
      , 0xD248 -- Lo       HANGUL SYLLABLE TWEO
      , 0xD264 -- Lo       HANGUL SYLLABLE TWE
      , 0xD280 -- Lo       HANGUL SYLLABLE TWI
      , 0xD29C -- Lo       HANGUL SYLLABLE TYU
      , 0xD2B8 -- Lo       HANGUL SYLLABLE TEU
      , 0xD2D4 -- Lo       HANGUL SYLLABLE TYI
      , 0xD2F0 -- Lo       HANGUL SYLLABLE TI
      , 0xD30C -- Lo       HANGUL SYLLABLE PA
      , 0xD328 -- Lo       HANGUL SYLLABLE PAE
      , 0xD344 -- Lo       HANGUL SYLLABLE PYA
      , 0xD360 -- Lo       HANGUL SYLLABLE PYAE
      , 0xD37C -- Lo       HANGUL SYLLABLE PEO
      , 0xD398 -- Lo       HANGUL SYLLABLE PE
      , 0xD3B4 -- Lo       HANGUL SYLLABLE PYEO
      , 0xD3D0 -- Lo       HANGUL SYLLABLE PYE
      , 0xD3EC -- Lo       HANGUL SYLLABLE PO
      , 0xD408 -- Lo       HANGUL SYLLABLE PWA
      , 0xD424 -- Lo       HANGUL SYLLABLE PWAE
      , 0xD440 -- Lo       HANGUL SYLLABLE POE
      , 0xD45C -- Lo       HANGUL SYLLABLE PYO
      , 0xD478 -- Lo       HANGUL SYLLABLE PU
      , 0xD494 -- Lo       HANGUL SYLLABLE PWEO
      , 0xD4B0 -- Lo       HANGUL SYLLABLE PWE
      , 0xD4CC -- Lo       HANGUL SYLLABLE PWI
      , 0xD4E8 -- Lo       HANGUL SYLLABLE PYU
      , 0xD504 -- Lo       HANGUL SYLLABLE PEU
      , 0xD520 -- Lo       HANGUL SYLLABLE PYI
      , 0xD53C -- Lo       HANGUL SYLLABLE PI
      , 0xD558 -- Lo       HANGUL SYLLABLE HA
      , 0xD574 -- Lo       HANGUL SYLLABLE HAE
      , 0xD590 -- Lo       HANGUL SYLLABLE HYA
      , 0xD5AC -- Lo       HANGUL SYLLABLE HYAE
      , 0xD5C8 -- Lo       HANGUL SYLLABLE HEO
      , 0xD5E4 -- Lo       HANGUL SYLLABLE HE
      , 0xD600 -- Lo       HANGUL SYLLABLE HYEO
      , 0xD61C -- Lo       HANGUL SYLLABLE HYE
      , 0xD638 -- Lo       HANGUL SYLLABLE HO
      , 0xD654 -- Lo       HANGUL SYLLABLE HWA
      , 0xD670 -- Lo       HANGUL SYLLABLE HWAE
      , 0xD68C -- Lo       HANGUL SYLLABLE HOE
      , 0xD6A8 -- Lo       HANGUL SYLLABLE HYO
      , 0xD6C4 -- Lo       HANGUL SYLLABLE HU
      , 0xD6E0 -- Lo       HANGUL SYLLABLE HWEO
      , 0xD6FC -- Lo       HANGUL SYLLABLE HWE
      , 0xD718 -- Lo       HANGUL SYLLABLE HWI
      , 0xD734 -- Lo       HANGUL SYLLABLE HYU
      , 0xD750 -- Lo       HANGUL SYLLABLE HEU
      , 0xD76C -- Lo       HANGUL SYLLABLE HYI
      , 0xD788 -- Lo       HANGUL SYLLABLE HI
      ]
    ]
        |> List.concat
        |> List.map Char.fromCode
        |> Set.fromList
