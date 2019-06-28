module String.Segmentation.Extend exposing (match, parser)

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
    (c >= 0x0300 && c <= 0x036F)
        || (c >= 0x0483 && c <= 0x0487)
        || (c >= 0x0488 && c <= 0x0489)
        || (c >= 0x0591 && c <= 0x05BD)
        || (c == 0x05BF)
        || (c >= 0x05C1 && c <= 0x05C2)
        || (c >= 0x05C4 && c <= 0x05C5)
        || (c == 0x05C7)
        || (c >= 0x0610 && c <= 0x061A)
        || (c >= 0x064B && c <= 0x065F)
        || (c == 0x0670)
        || (c >= 0x06D6 && c <= 0x06DC)
        || (c >= 0x06DF && c <= 0x06E4)
        || (c >= 0x06E7 && c <= 0x06E8)
        || (c >= 0x06EA && c <= 0x06ED)
        || (c == 0x0711)
        || (c >= 0x0730 && c <= 0x074A)
        || (c >= 0x07A6 && c <= 0x07B0)
        || (c >= 0x07EB && c <= 0x07F3)
        || (c == 0x07FD)
        || (c >= 0x0816 && c <= 0x0819)
        || (c >= 0x081B && c <= 0x0823)
        || (c >= 0x0825 && c <= 0x0827)
        || (c >= 0x0829 && c <= 0x082D)
        || (c >= 0x0859 && c <= 0x085B)
        || (c >= 0x08D3 && c <= 0x08E1)
        || (c >= 0x08E3 && c <= 0x0902)
        || (c == 0x093A)
        || (c == 0x093C)
        || (c >= 0x0941 && c <= 0x0948)
        || (c == 0x094D)
        || (c >= 0x0951 && c <= 0x0957)
        || (c >= 0x0962 && c <= 0x0963)
        || (c == 0x0981)
        || (c == 0x09BC)
        || (c == 0x09BE)
        || (c >= 0x09C1 && c <= 0x09C4)
        || (c == 0x09CD)
        || (c == 0x09D7)
        || (c >= 0x09E2 && c <= 0x09E3)
        || (c == 0x09FE)
        || (c >= 0x0A01 && c <= 0x0A02)
        || (c == 0x0A3C)
        || (c >= 0x0A41 && c <= 0x0A42)
        || (c >= 0x0A47 && c <= 0x0A48)
        || (c >= 0x0A4B && c <= 0x0A4D)
        || (c == 0x0A51)
        || (c >= 0x0A70 && c <= 0x0A71)
        || (c == 0x0A75)
        || (c >= 0x0A81 && c <= 0x0A82)
        || (c == 0x0ABC)
        || (c >= 0x0AC1 && c <= 0x0AC5)
        || (c >= 0x0AC7 && c <= 0x0AC8)
        || (c == 0x0ACD)
        || (c >= 0x0AE2 && c <= 0x0AE3)
        || (c >= 0x0AFA && c <= 0x0AFF)
        || (c == 0x0B01)
        || (c == 0x0B3C)
        || (c == 0x0B3E)
        || (c == 0x0B3F)
        || (c >= 0x0B41 && c <= 0x0B44)
        || (c == 0x0B4D)
        || (c == 0x0B56)
        || (c == 0x0B57)
        || (c >= 0x0B62 && c <= 0x0B63)
        || (c == 0x0B82)
        || (c == 0x0BBE)
        || (c == 0x0BC0)
        || (c == 0x0BCD)
        || (c == 0x0BD7)
        || (c == 0x0C00)
        || (c == 0x0C04)
        || (c >= 0x0C3E && c <= 0x0C40)
        || (c >= 0x0C46 && c <= 0x0C48)
        || (c >= 0x0C4A && c <= 0x0C4D)
        || (c >= 0x0C55 && c <= 0x0C56)
        || (c >= 0x0C62 && c <= 0x0C63)
        || (c == 0x0C81)
        || (c == 0x0CBC)
        || (c == 0x0CBF)
        || (c == 0x0CC2)
        || (c == 0x0CC6)
        || (c >= 0x0CCC && c <= 0x0CCD)
        || (c >= 0x0CD5 && c <= 0x0CD6)
        || (c >= 0x0CE2 && c <= 0x0CE3)
        || (c >= 0x0D00 && c <= 0x0D01)
        || (c >= 0x0D3B && c <= 0x0D3C)
        || (c == 0x0D3E)
        || (c >= 0x0D41 && c <= 0x0D44)
        || (c == 0x0D4D)
        || (c == 0x0D57)
        || (c >= 0x0D62 && c <= 0x0D63)
        || (c == 0x0DCA)
        || (c == 0x0DCF)
        || (c >= 0x0DD2 && c <= 0x0DD4)
        || (c == 0x0DD6)
        || (c == 0x0DDF)
        || (c == 0x0E31)
        || (c >= 0x0E34 && c <= 0x0E3A)
        || (c >= 0x0E47 && c <= 0x0E4E)
        || (c == 0x0EB1)
        || (c >= 0x0EB4 && c <= 0x0EBC)
        || (c >= 0x0EC8 && c <= 0x0ECD)
        || (c >= 0x0F18 && c <= 0x0F19)
        || (c == 0x0F35)
        || (c == 0x0F37)
        || (c == 0x0F39)
        || (c >= 0x0F71 && c <= 0x0F7E)
        || (c >= 0x0F80 && c <= 0x0F84)
        || (c >= 0x0F86 && c <= 0x0F87)
        || (c >= 0x0F8D && c <= 0x0F97)
        || (c >= 0x0F99 && c <= 0x0FBC)
        || (c == 0x0FC6)
        || (c >= 0x102D && c <= 0x1030)
        || (c >= 0x1032 && c <= 0x1037)
        || (c >= 0x1039 && c <= 0x103A)
        || (c >= 0x103D && c <= 0x103E)
        || (c >= 0x1058 && c <= 0x1059)
        || (c >= 0x105E && c <= 0x1060)
        || (c >= 0x1071 && c <= 0x1074)
        || (c == 0x1082)
        || (c >= 0x1085 && c <= 0x1086)
        || (c == 0x108D)
        || (c == 0x109D)
        || (c >= 0x135D && c <= 0x135F)
        || (c >= 0x1712 && c <= 0x1714)
        || (c >= 0x1732 && c <= 0x1734)
        || (c >= 0x1752 && c <= 0x1753)
        || (c >= 0x1772 && c <= 0x1773)
        || (c >= 0x17B4 && c <= 0x17B5)
        || (c >= 0x17B7 && c <= 0x17BD)
        || (c == 0x17C6)
        || (c >= 0x17C9 && c <= 0x17D3)
        || (c == 0x17DD)
        || (c >= 0x180B && c <= 0x180D)
        || (c >= 0x1885 && c <= 0x1886)
        || (c == 0x18A9)
        || (c >= 0x1920 && c <= 0x1922)
        || (c >= 0x1927 && c <= 0x1928)
        || (c == 0x1932)
        || (c >= 0x1939 && c <= 0x193B)
        || (c >= 0x1A17 && c <= 0x1A18)
        || (c == 0x1A1B)
        || (c == 0x1A56)
        || (c >= 0x1A58 && c <= 0x1A5E)
        || (c == 0x1A60)
        || (c == 0x1A62)
        || (c >= 0x1A65 && c <= 0x1A6C)
        || (c >= 0x1A73 && c <= 0x1A7C)
        || (c == 0x1A7F)
        || (c >= 0x1AB0 && c <= 0x1ABD)
        || (c == 0x1ABE)
        || (c >= 0x1B00 && c <= 0x1B03)
        || (c == 0x1B34)
        || (c == 0x1B35)
        || (c >= 0x1B36 && c <= 0x1B3A)
        || (c == 0x1B3C)
        || (c == 0x1B42)
        || (c >= 0x1B6B && c <= 0x1B73)
        || (c >= 0x1B80 && c <= 0x1B81)
        || (c >= 0x1BA2 && c <= 0x1BA5)
        || (c >= 0x1BA8 && c <= 0x1BA9)
        || (c >= 0x1BAB && c <= 0x1BAD)
        || (c == 0x1BE6)
        || (c >= 0x1BE8 && c <= 0x1BE9)
        || (c == 0x1BED)
        || (c >= 0x1BEF && c <= 0x1BF1)
        || (c >= 0x1C2C && c <= 0x1C33)
        || (c >= 0x1C36 && c <= 0x1C37)
        || (c >= 0x1CD0 && c <= 0x1CD2)
        || (c >= 0x1CD4 && c <= 0x1CE0)
        || (c >= 0x1CE2 && c <= 0x1CE8)
        || (c == 0x1CED)
        || (c == 0x1CF4)
        || (c >= 0x1CF8 && c <= 0x1CF9)
        || (c >= 0x1DC0 && c <= 0x1DF9)
        || (c >= 0x1DFB && c <= 0x1DFF)
        || (c == 0x200C)
        || (c >= 0x20D0 && c <= 0x20DC)
        || (c >= 0x20DD && c <= 0x20E0)
        || (c == 0x20E1)
        || (c >= 0x20E2 && c <= 0x20E4)
        || (c >= 0x20E5 && c <= 0x20F0)
        || (c >= 0x2CEF && c <= 0x2CF1)
        || (c == 0x2D7F)
        || (c >= 0x2DE0 && c <= 0x2DFF)
        || (c >= 0x302A && c <= 0x302D)
        || (c >= 0x302E && c <= 0x302F)
        || (c >= 0x3099 && c <= 0x309A)
        || (c == 0xA66F)
        || (c >= 0xA670 && c <= 0xA672)
        || (c >= 0xA674 && c <= 0xA67D)
        || (c >= 0xA69E && c <= 0xA69F)
        || (c >= 0xA6F0 && c <= 0xA6F1)
        || (c == 0xA802)
        || (c == 0xA806)
        || (c == 0xA80B)
        || (c >= 0xA825 && c <= 0xA826)
        || (c >= 0xA8C4 && c <= 0xA8C5)
        || (c >= 0xA8E0 && c <= 0xA8F1)
        || (c == 0xA8FF)
        || (c >= 0xA926 && c <= 0xA92D)
        || (c >= 0xA947 && c <= 0xA951)
        || (c >= 0xA980 && c <= 0xA982)
        || (c == 0xA9B3)
        || (c >= 0xA9B6 && c <= 0xA9B9)
        || (c >= 0xA9BC && c <= 0xA9BD)
        || (c == 0xA9E5)
        || (c >= 0xAA29 && c <= 0xAA2E)
        || (c >= 0xAA31 && c <= 0xAA32)
        || (c >= 0xAA35 && c <= 0xAA36)
        || (c == 0xAA43)
        || (c == 0xAA4C)
        || (c == 0xAA7C)
        || (c == 0xAAB0)
        || (c >= 0xAAB2 && c <= 0xAAB4)
        || (c >= 0xAAB7 && c <= 0xAAB8)
        || (c >= 0xAABE && c <= 0xAABF)
        || (c == 0xAAC1)
        || (c >= 0xAAEC && c <= 0xAAED)
        || (c == 0xAAF6)
        || (c == 0xABE5)
        || (c == 0xABE8)
        || (c == 0xABED)
        || (c == 0xFB1E)
        || (c >= 0xFE00 && c <= 0xFE0F)
        || (c >= 0xFE20 && c <= 0xFE2F)
        || (c >= 0xFF9E && c <= 0xFF9F)
        || (c == 0x000101FD)
        || (c == 0x000102E0)
        || (c >= 0x00010376 && c <= 0x0001037A)
        || (c >= 0x00010A01 && c <= 0x00010A03)
        || (c >= 0x00010A05 && c <= 0x00010A06)
        || (c >= 0x00010A0C && c <= 0x00010A0F)
        || (c >= 0x00010A38 && c <= 0x00010A3A)
        || (c == 0x00010A3F)
        || (c >= 0x00010AE5 && c <= 0x00010AE6)
        || (c >= 0x00010D24 && c <= 0x00010D27)
        || (c >= 0x00010F46 && c <= 0x00010F50)
        || (c == 0x00011001)
        || (c >= 0x00011038 && c <= 0x00011046)
        || (c >= 0x0001107F && c <= 0x00011081)
        || (c >= 0x000110B3 && c <= 0x000110B6)
        || (c >= 0x000110B9 && c <= 0x000110BA)
        || (c >= 0x00011100 && c <= 0x00011102)
        || (c >= 0x00011127 && c <= 0x0001112B)
        || (c >= 0x0001112D && c <= 0x00011134)
        || (c == 0x00011173)
        || (c >= 0x00011180 && c <= 0x00011181)
        || (c >= 0x000111B6 && c <= 0x000111BE)
        || (c >= 0x000111C9 && c <= 0x000111CC)
        || (c >= 0x0001122F && c <= 0x00011231)
        || (c == 0x00011234)
        || (c >= 0x00011236 && c <= 0x00011237)
        || (c == 0x0001123E)
        || (c == 0x000112DF)
        || (c >= 0x000112E3 && c <= 0x000112EA)
        || (c >= 0x00011300 && c <= 0x00011301)
        || (c >= 0x0001133B && c <= 0x0001133C)
        || (c == 0x0001133E)
        || (c == 0x00011340)
        || (c == 0x00011357)
        || (c >= 0x00011366 && c <= 0x0001136C)
        || (c >= 0x00011370 && c <= 0x00011374)
        || (c >= 0x00011438 && c <= 0x0001143F)
        || (c >= 0x00011442 && c <= 0x00011444)
        || (c == 0x00011446)
        || (c == 0x0001145E)
        || (c == 0x000114B0)
        || (c >= 0x000114B3 && c <= 0x000114B8)
        || (c == 0x000114BA)
        || (c == 0x000114BD)
        || (c >= 0x000114BF && c <= 0x000114C0)
        || (c >= 0x000114C2 && c <= 0x000114C3)
        || (c == 0x000115AF)
        || (c >= 0x000115B2 && c <= 0x000115B5)
        || (c >= 0x000115BC && c <= 0x000115BD)
        || (c >= 0x000115BF && c <= 0x000115C0)
        || (c >= 0x000115DC && c <= 0x000115DD)
        || (c >= 0x00011633 && c <= 0x0001163A)
        || (c == 0x0001163D)
        || (c >= 0x0001163F && c <= 0x00011640)
        || (c == 0x000116AB)
        || (c == 0x000116AD)
        || (c >= 0x000116B0 && c <= 0x000116B5)
        || (c == 0x000116B7)
        || (c >= 0x0001171D && c <= 0x0001171F)
        || (c >= 0x00011722 && c <= 0x00011725)
        || (c >= 0x00011727 && c <= 0x0001172B)
        || (c >= 0x0001182F && c <= 0x00011837)
        || (c >= 0x00011839 && c <= 0x0001183A)
        || (c >= 0x000119D4 && c <= 0x000119D7)
        || (c >= 0x000119DA && c <= 0x000119DB)
        || (c == 0x000119E0)
        || (c >= 0x00011A01 && c <= 0x00011A0A)
        || (c >= 0x00011A33 && c <= 0x00011A38)
        || (c >= 0x00011A3B && c <= 0x00011A3E)
        || (c == 0x00011A47)
        || (c >= 0x00011A51 && c <= 0x00011A56)
        || (c >= 0x00011A59 && c <= 0x00011A5B)
        || (c >= 0x00011A8A && c <= 0x00011A96)
        || (c >= 0x00011A98 && c <= 0x00011A99)
        || (c >= 0x00011C30 && c <= 0x00011C36)
        || (c >= 0x00011C38 && c <= 0x00011C3D)
        || (c == 0x00011C3F)
        || (c >= 0x00011C92 && c <= 0x00011CA7)
        || (c >= 0x00011CAA && c <= 0x00011CB0)
        || (c >= 0x00011CB2 && c <= 0x00011CB3)
        || (c >= 0x00011CB5 && c <= 0x00011CB6)
        || (c >= 0x00011D31 && c <= 0x00011D36)
        || (c == 0x00011D3A)
        || (c >= 0x00011D3C && c <= 0x00011D3D)
        || (c >= 0x00011D3F && c <= 0x00011D45)
        || (c == 0x00011D47)
        || (c >= 0x00011D90 && c <= 0x00011D91)
        || (c == 0x00011D95)
        || (c == 0x00011D97)
        || (c >= 0x00011EF3 && c <= 0x00011EF4)
        || (c >= 0x00016AF0 && c <= 0x00016AF4)
        || (c >= 0x00016B30 && c <= 0x00016B36)
        || (c == 0x00016F4F)
        || (c >= 0x00016F8F && c <= 0x00016F92)
        || (c >= 0x0001BC9D && c <= 0x0001BC9E)
        || (c == 0x0001D165)
        || (c >= 0x0001D167 && c <= 0x0001D169)
        || (c >= 0x0001D16E && c <= 0x0001D172)
        || (c >= 0x0001D17B && c <= 0x0001D182)
        || (c >= 0x0001D185 && c <= 0x0001D18B)
        || (c >= 0x0001D1AA && c <= 0x0001D1AD)
        || (c >= 0x0001D242 && c <= 0x0001D244)
        || (c >= 0x0001DA00 && c <= 0x0001DA36)
        || (c >= 0x0001DA3B && c <= 0x0001DA6C)
        || (c == 0x0001DA75)
        || (c == 0x0001DA84)
        || (c >= 0x0001DA9B && c <= 0x0001DA9F)
        || (c >= 0x0001DAA1 && c <= 0x0001DAAF)
        || (c >= 0x0001E000 && c <= 0x0001E006)
        || (c >= 0x0001E008 && c <= 0x0001E018)
        || (c >= 0x0001E01B && c <= 0x0001E021)
        || (c >= 0x0001E023 && c <= 0x0001E024)
        || (c >= 0x0001E026 && c <= 0x0001E02A)
        || (c >= 0x0001E130 && c <= 0x0001E136)
        || (c >= 0x0001E2EC && c <= 0x0001E2EF)
        || (c >= 0x0001E8D0 && c <= 0x0001E8D6)
        || (c >= 0x0001E944 && c <= 0x0001E94A)
        || (c >= 0x0001F3FB && c <= 0x0001F3FF)
        || (c >= 0x000E0020 && c <= 0x000E007F)
        || (c >= 0x000E0100 && c <= 0x000E01EF)