module String.Segmentation.LVT exposing (match, parser)

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
    (c >= 0xAC01 && c <= 0xAC1B)
        || (c >= 0xAC1D && c <= 0xAC37)
        || (c >= 0xAC39 && c <= 0xAC53)
        || (c >= 0xAC55 && c <= 0xAC6F)
        || (c >= 0xAC71 && c <= 0xAC8B)
        || (c >= 0xAC8D && c <= 0xACA7)
        || (c >= 0xACA9 && c <= 0xACC3)
        || (c >= 0xACC5 && c <= 0xACDF)
        || (c >= 0xACE1 && c <= 0xACFB)
        || (c >= 0xACFD && c <= 0xAD17)
        || (c >= 0xAD19 && c <= 0xAD33)
        || (c >= 0xAD35 && c <= 0xAD4F)
        || (c >= 0xAD51 && c <= 0xAD6B)
        || (c >= 0xAD6D && c <= 0xAD87)
        || (c >= 0xAD89 && c <= 0xADA3)
        || (c >= 0xADA5 && c <= 0xADBF)
        || (c >= 0xADC1 && c <= 0xADDB)
        || (c >= 0xADDD && c <= 0xADF7)
        || (c >= 0xADF9 && c <= 0xAE13)
        || (c >= 0xAE15 && c <= 0xAE2F)
        || (c >= 0xAE31 && c <= 0xAE4B)
        || (c >= 0xAE4D && c <= 0xAE67)
        || (c >= 0xAE69 && c <= 0xAE83)
        || (c >= 0xAE85 && c <= 0xAE9F)
        || (c >= 0xAEA1 && c <= 0xAEBB)
        || (c >= 0xAEBD && c <= 0xAED7)
        || (c >= 0xAED9 && c <= 0xAEF3)
        || (c >= 0xAEF5 && c <= 0xAF0F)
        || (c >= 0xAF11 && c <= 0xAF2B)
        || (c >= 0xAF2D && c <= 0xAF47)
        || (c >= 0xAF49 && c <= 0xAF63)
        || (c >= 0xAF65 && c <= 0xAF7F)
        || (c >= 0xAF81 && c <= 0xAF9B)
        || (c >= 0xAF9D && c <= 0xAFB7)
        || (c >= 0xAFB9 && c <= 0xAFD3)
        || (c >= 0xAFD5 && c <= 0xAFEF)
        || (c >= 0xAFF1 && c <= 0xB00B)
        || (c >= 0xB00D && c <= 0xB027)
        || (c >= 0xB029 && c <= 0xB043)
        || (c >= 0xB045 && c <= 0xB05F)
        || (c >= 0xB061 && c <= 0xB07B)
        || (c >= 0xB07D && c <= 0xB097)
        || (c >= 0xB099 && c <= 0xB0B3)
        || (c >= 0xB0B5 && c <= 0xB0CF)
        || (c >= 0xB0D1 && c <= 0xB0EB)
        || (c >= 0xB0ED && c <= 0xB107)
        || (c >= 0xB109 && c <= 0xB123)
        || (c >= 0xB125 && c <= 0xB13F)
        || (c >= 0xB141 && c <= 0xB15B)
        || (c >= 0xB15D && c <= 0xB177)
        || (c >= 0xB179 && c <= 0xB193)
        || (c >= 0xB195 && c <= 0xB1AF)
        || (c >= 0xB1B1 && c <= 0xB1CB)
        || (c >= 0xB1CD && c <= 0xB1E7)
        || (c >= 0xB1E9 && c <= 0xB203)
        || (c >= 0xB205 && c <= 0xB21F)
        || (c >= 0xB221 && c <= 0xB23B)
        || (c >= 0xB23D && c <= 0xB257)
        || (c >= 0xB259 && c <= 0xB273)
        || (c >= 0xB275 && c <= 0xB28F)
        || (c >= 0xB291 && c <= 0xB2AB)
        || (c >= 0xB2AD && c <= 0xB2C7)
        || (c >= 0xB2C9 && c <= 0xB2E3)
        || (c >= 0xB2E5 && c <= 0xB2FF)
        || (c >= 0xB301 && c <= 0xB31B)
        || (c >= 0xB31D && c <= 0xB337)
        || (c >= 0xB339 && c <= 0xB353)
        || (c >= 0xB355 && c <= 0xB36F)
        || (c >= 0xB371 && c <= 0xB38B)
        || (c >= 0xB38D && c <= 0xB3A7)
        || (c >= 0xB3A9 && c <= 0xB3C3)
        || (c >= 0xB3C5 && c <= 0xB3DF)
        || (c >= 0xB3E1 && c <= 0xB3FB)
        || (c >= 0xB3FD && c <= 0xB417)
        || (c >= 0xB419 && c <= 0xB433)
        || (c >= 0xB435 && c <= 0xB44F)
        || (c >= 0xB451 && c <= 0xB46B)
        || (c >= 0xB46D && c <= 0xB487)
        || (c >= 0xB489 && c <= 0xB4A3)
        || (c >= 0xB4A5 && c <= 0xB4BF)
        || (c >= 0xB4C1 && c <= 0xB4DB)
        || (c >= 0xB4DD && c <= 0xB4F7)
        || (c >= 0xB4F9 && c <= 0xB513)
        || (c >= 0xB515 && c <= 0xB52F)
        || (c >= 0xB531 && c <= 0xB54B)
        || (c >= 0xB54D && c <= 0xB567)
        || (c >= 0xB569 && c <= 0xB583)
        || (c >= 0xB585 && c <= 0xB59F)
        || (c >= 0xB5A1 && c <= 0xB5BB)
        || (c >= 0xB5BD && c <= 0xB5D7)
        || (c >= 0xB5D9 && c <= 0xB5F3)
        || (c >= 0xB5F5 && c <= 0xB60F)
        || (c >= 0xB611 && c <= 0xB62B)
        || (c >= 0xB62D && c <= 0xB647)
        || (c >= 0xB649 && c <= 0xB663)
        || (c >= 0xB665 && c <= 0xB67F)
        || (c >= 0xB681 && c <= 0xB69B)
        || (c >= 0xB69D && c <= 0xB6B7)
        || (c >= 0xB6B9 && c <= 0xB6D3)
        || (c >= 0xB6D5 && c <= 0xB6EF)
        || (c >= 0xB6F1 && c <= 0xB70B)
        || (c >= 0xB70D && c <= 0xB727)
        || (c >= 0xB729 && c <= 0xB743)
        || (c >= 0xB745 && c <= 0xB75F)
        || (c >= 0xB761 && c <= 0xB77B)
        || (c >= 0xB77D && c <= 0xB797)
        || (c >= 0xB799 && c <= 0xB7B3)
        || (c >= 0xB7B5 && c <= 0xB7CF)
        || (c >= 0xB7D1 && c <= 0xB7EB)
        || (c >= 0xB7ED && c <= 0xB807)
        || (c >= 0xB809 && c <= 0xB823)
        || (c >= 0xB825 && c <= 0xB83F)
        || (c >= 0xB841 && c <= 0xB85B)
        || (c >= 0xB85D && c <= 0xB877)
        || (c >= 0xB879 && c <= 0xB893)
        || (c >= 0xB895 && c <= 0xB8AF)
        || (c >= 0xB8B1 && c <= 0xB8CB)
        || (c >= 0xB8CD && c <= 0xB8E7)
        || (c >= 0xB8E9 && c <= 0xB903)
        || (c >= 0xB905 && c <= 0xB91F)
        || (c >= 0xB921 && c <= 0xB93B)
        || (c >= 0xB93D && c <= 0xB957)
        || (c >= 0xB959 && c <= 0xB973)
        || (c >= 0xB975 && c <= 0xB98F)
        || (c >= 0xB991 && c <= 0xB9AB)
        || (c >= 0xB9AD && c <= 0xB9C7)
        || (c >= 0xB9C9 && c <= 0xB9E3)
        || (c >= 0xB9E5 && c <= 0xB9FF)
        || (c >= 0xBA01 && c <= 0xBA1B)
        || (c >= 0xBA1D && c <= 0xBA37)
        || (c >= 0xBA39 && c <= 0xBA53)
        || (c >= 0xBA55 && c <= 0xBA6F)
        || (c >= 0xBA71 && c <= 0xBA8B)
        || (c >= 0xBA8D && c <= 0xBAA7)
        || (c >= 0xBAA9 && c <= 0xBAC3)
        || (c >= 0xBAC5 && c <= 0xBADF)
        || (c >= 0xBAE1 && c <= 0xBAFB)
        || (c >= 0xBAFD && c <= 0xBB17)
        || (c >= 0xBB19 && c <= 0xBB33)
        || (c >= 0xBB35 && c <= 0xBB4F)
        || (c >= 0xBB51 && c <= 0xBB6B)
        || (c >= 0xBB6D && c <= 0xBB87)
        || (c >= 0xBB89 && c <= 0xBBA3)
        || (c >= 0xBBA5 && c <= 0xBBBF)
        || (c >= 0xBBC1 && c <= 0xBBDB)
        || (c >= 0xBBDD && c <= 0xBBF7)
        || (c >= 0xBBF9 && c <= 0xBC13)
        || (c >= 0xBC15 && c <= 0xBC2F)
        || (c >= 0xBC31 && c <= 0xBC4B)
        || (c >= 0xBC4D && c <= 0xBC67)
        || (c >= 0xBC69 && c <= 0xBC83)
        || (c >= 0xBC85 && c <= 0xBC9F)
        || (c >= 0xBCA1 && c <= 0xBCBB)
        || (c >= 0xBCBD && c <= 0xBCD7)
        || (c >= 0xBCD9 && c <= 0xBCF3)
        || (c >= 0xBCF5 && c <= 0xBD0F)
        || (c >= 0xBD11 && c <= 0xBD2B)
        || (c >= 0xBD2D && c <= 0xBD47)
        || (c >= 0xBD49 && c <= 0xBD63)
        || (c >= 0xBD65 && c <= 0xBD7F)
        || (c >= 0xBD81 && c <= 0xBD9B)
        || (c >= 0xBD9D && c <= 0xBDB7)
        || (c >= 0xBDB9 && c <= 0xBDD3)
        || (c >= 0xBDD5 && c <= 0xBDEF)
        || (c >= 0xBDF1 && c <= 0xBE0B)
        || (c >= 0xBE0D && c <= 0xBE27)
        || (c >= 0xBE29 && c <= 0xBE43)
        || (c >= 0xBE45 && c <= 0xBE5F)
        || (c >= 0xBE61 && c <= 0xBE7B)
        || (c >= 0xBE7D && c <= 0xBE97)
        || (c >= 0xBE99 && c <= 0xBEB3)
        || (c >= 0xBEB5 && c <= 0xBECF)
        || (c >= 0xBED1 && c <= 0xBEEB)
        || (c >= 0xBEED && c <= 0xBF07)
        || (c >= 0xBF09 && c <= 0xBF23)
        || (c >= 0xBF25 && c <= 0xBF3F)
        || (c >= 0xBF41 && c <= 0xBF5B)
        || (c >= 0xBF5D && c <= 0xBF77)
        || (c >= 0xBF79 && c <= 0xBF93)
        || (c >= 0xBF95 && c <= 0xBFAF)
        || (c >= 0xBFB1 && c <= 0xBFCB)
        || (c >= 0xBFCD && c <= 0xBFE7)
        || (c >= 0xBFE9 && c <= 0xC003)
        || (c >= 0xC005 && c <= 0xC01F)
        || (c >= 0xC021 && c <= 0xC03B)
        || (c >= 0xC03D && c <= 0xC057)
        || (c >= 0xC059 && c <= 0xC073)
        || (c >= 0xC075 && c <= 0xC08F)
        || (c >= 0xC091 && c <= 0xC0AB)
        || (c >= 0xC0AD && c <= 0xC0C7)
        || (c >= 0xC0C9 && c <= 0xC0E3)
        || (c >= 0xC0E5 && c <= 0xC0FF)
        || (c >= 0xC101 && c <= 0xC11B)
        || (c >= 0xC11D && c <= 0xC137)
        || (c >= 0xC139 && c <= 0xC153)
        || (c >= 0xC155 && c <= 0xC16F)
        || (c >= 0xC171 && c <= 0xC18B)
        || (c >= 0xC18D && c <= 0xC1A7)
        || (c >= 0xC1A9 && c <= 0xC1C3)
        || (c >= 0xC1C5 && c <= 0xC1DF)
        || (c >= 0xC1E1 && c <= 0xC1FB)
        || (c >= 0xC1FD && c <= 0xC217)
        || (c >= 0xC219 && c <= 0xC233)
        || (c >= 0xC235 && c <= 0xC24F)
        || (c >= 0xC251 && c <= 0xC26B)
        || (c >= 0xC26D && c <= 0xC287)
        || (c >= 0xC289 && c <= 0xC2A3)
        || (c >= 0xC2A5 && c <= 0xC2BF)
        || (c >= 0xC2C1 && c <= 0xC2DB)
        || (c >= 0xC2DD && c <= 0xC2F7)
        || (c >= 0xC2F9 && c <= 0xC313)
        || (c >= 0xC315 && c <= 0xC32F)
        || (c >= 0xC331 && c <= 0xC34B)
        || (c >= 0xC34D && c <= 0xC367)
        || (c >= 0xC369 && c <= 0xC383)
        || (c >= 0xC385 && c <= 0xC39F)
        || (c >= 0xC3A1 && c <= 0xC3BB)
        || (c >= 0xC3BD && c <= 0xC3D7)
        || (c >= 0xC3D9 && c <= 0xC3F3)
        || (c >= 0xC3F5 && c <= 0xC40F)
        || (c >= 0xC411 && c <= 0xC42B)
        || (c >= 0xC42D && c <= 0xC447)
        || (c >= 0xC449 && c <= 0xC463)
        || (c >= 0xC465 && c <= 0xC47F)
        || (c >= 0xC481 && c <= 0xC49B)
        || (c >= 0xC49D && c <= 0xC4B7)
        || (c >= 0xC4B9 && c <= 0xC4D3)
        || (c >= 0xC4D5 && c <= 0xC4EF)
        || (c >= 0xC4F1 && c <= 0xC50B)
        || (c >= 0xC50D && c <= 0xC527)
        || (c >= 0xC529 && c <= 0xC543)
        || (c >= 0xC545 && c <= 0xC55F)
        || (c >= 0xC561 && c <= 0xC57B)
        || (c >= 0xC57D && c <= 0xC597)
        || (c >= 0xC599 && c <= 0xC5B3)
        || (c >= 0xC5B5 && c <= 0xC5CF)
        || (c >= 0xC5D1 && c <= 0xC5EB)
        || (c >= 0xC5ED && c <= 0xC607)
        || (c >= 0xC609 && c <= 0xC623)
        || (c >= 0xC625 && c <= 0xC63F)
        || (c >= 0xC641 && c <= 0xC65B)
        || (c >= 0xC65D && c <= 0xC677)
        || (c >= 0xC679 && c <= 0xC693)
        || (c >= 0xC695 && c <= 0xC6AF)
        || (c >= 0xC6B1 && c <= 0xC6CB)
        || (c >= 0xC6CD && c <= 0xC6E7)
        || (c >= 0xC6E9 && c <= 0xC703)
        || (c >= 0xC705 && c <= 0xC71F)
        || (c >= 0xC721 && c <= 0xC73B)
        || (c >= 0xC73D && c <= 0xC757)
        || (c >= 0xC759 && c <= 0xC773)
        || (c >= 0xC775 && c <= 0xC78F)
        || (c >= 0xC791 && c <= 0xC7AB)
        || (c >= 0xC7AD && c <= 0xC7C7)
        || (c >= 0xC7C9 && c <= 0xC7E3)
        || (c >= 0xC7E5 && c <= 0xC7FF)
        || (c >= 0xC801 && c <= 0xC81B)
        || (c >= 0xC81D && c <= 0xC837)
        || (c >= 0xC839 && c <= 0xC853)
        || (c >= 0xC855 && c <= 0xC86F)
        || (c >= 0xC871 && c <= 0xC88B)
        || (c >= 0xC88D && c <= 0xC8A7)
        || (c >= 0xC8A9 && c <= 0xC8C3)
        || (c >= 0xC8C5 && c <= 0xC8DF)
        || (c >= 0xC8E1 && c <= 0xC8FB)
        || (c >= 0xC8FD && c <= 0xC917)
        || (c >= 0xC919 && c <= 0xC933)
        || (c >= 0xC935 && c <= 0xC94F)
        || (c >= 0xC951 && c <= 0xC96B)
        || (c >= 0xC96D && c <= 0xC987)
        || (c >= 0xC989 && c <= 0xC9A3)
        || (c >= 0xC9A5 && c <= 0xC9BF)
        || (c >= 0xC9C1 && c <= 0xC9DB)
        || (c >= 0xC9DD && c <= 0xC9F7)
        || (c >= 0xC9F9 && c <= 0xCA13)
        || (c >= 0xCA15 && c <= 0xCA2F)
        || (c >= 0xCA31 && c <= 0xCA4B)
        || (c >= 0xCA4D && c <= 0xCA67)
        || (c >= 0xCA69 && c <= 0xCA83)
        || (c >= 0xCA85 && c <= 0xCA9F)
        || (c >= 0xCAA1 && c <= 0xCABB)
        || (c >= 0xCABD && c <= 0xCAD7)
        || (c >= 0xCAD9 && c <= 0xCAF3)
        || (c >= 0xCAF5 && c <= 0xCB0F)
        || (c >= 0xCB11 && c <= 0xCB2B)
        || (c >= 0xCB2D && c <= 0xCB47)
        || (c >= 0xCB49 && c <= 0xCB63)
        || (c >= 0xCB65 && c <= 0xCB7F)
        || (c >= 0xCB81 && c <= 0xCB9B)
        || (c >= 0xCB9D && c <= 0xCBB7)
        || (c >= 0xCBB9 && c <= 0xCBD3)
        || (c >= 0xCBD5 && c <= 0xCBEF)
        || (c >= 0xCBF1 && c <= 0xCC0B)
        || (c >= 0xCC0D && c <= 0xCC27)
        || (c >= 0xCC29 && c <= 0xCC43)
        || (c >= 0xCC45 && c <= 0xCC5F)
        || (c >= 0xCC61 && c <= 0xCC7B)
        || (c >= 0xCC7D && c <= 0xCC97)
        || (c >= 0xCC99 && c <= 0xCCB3)
        || (c >= 0xCCB5 && c <= 0xCCCF)
        || (c >= 0xCCD1 && c <= 0xCCEB)
        || (c >= 0xCCED && c <= 0xCD07)
        || (c >= 0xCD09 && c <= 0xCD23)
        || (c >= 0xCD25 && c <= 0xCD3F)
        || (c >= 0xCD41 && c <= 0xCD5B)
        || (c >= 0xCD5D && c <= 0xCD77)
        || (c >= 0xCD79 && c <= 0xCD93)
        || (c >= 0xCD95 && c <= 0xCDAF)
        || (c >= 0xCDB1 && c <= 0xCDCB)
        || (c >= 0xCDCD && c <= 0xCDE7)
        || (c >= 0xCDE9 && c <= 0xCE03)
        || (c >= 0xCE05 && c <= 0xCE1F)
        || (c >= 0xCE21 && c <= 0xCE3B)
        || (c >= 0xCE3D && c <= 0xCE57)
        || (c >= 0xCE59 && c <= 0xCE73)
        || (c >= 0xCE75 && c <= 0xCE8F)
        || (c >= 0xCE91 && c <= 0xCEAB)
        || (c >= 0xCEAD && c <= 0xCEC7)
        || (c >= 0xCEC9 && c <= 0xCEE3)
        || (c >= 0xCEE5 && c <= 0xCEFF)
        || (c >= 0xCF01 && c <= 0xCF1B)
        || (c >= 0xCF1D && c <= 0xCF37)
        || (c >= 0xCF39 && c <= 0xCF53)
        || (c >= 0xCF55 && c <= 0xCF6F)
        || (c >= 0xCF71 && c <= 0xCF8B)
        || (c >= 0xCF8D && c <= 0xCFA7)
        || (c >= 0xCFA9 && c <= 0xCFC3)
        || (c >= 0xCFC5 && c <= 0xCFDF)
        || (c >= 0xCFE1 && c <= 0xCFFB)
        || (c >= 0xCFFD && c <= 0xD017)
        || (c >= 0xD019 && c <= 0xD033)
        || (c >= 0xD035 && c <= 0xD04F)
        || (c >= 0xD051 && c <= 0xD06B)
        || (c >= 0xD06D && c <= 0xD087)
        || (c >= 0xD089 && c <= 0xD0A3)
        || (c >= 0xD0A5 && c <= 0xD0BF)
        || (c >= 0xD0C1 && c <= 0xD0DB)
        || (c >= 0xD0DD && c <= 0xD0F7)
        || (c >= 0xD0F9 && c <= 0xD113)
        || (c >= 0xD115 && c <= 0xD12F)
        || (c >= 0xD131 && c <= 0xD14B)
        || (c >= 0xD14D && c <= 0xD167)
        || (c >= 0xD169 && c <= 0xD183)
        || (c >= 0xD185 && c <= 0xD19F)
        || (c >= 0xD1A1 && c <= 0xD1BB)
        || (c >= 0xD1BD && c <= 0xD1D7)
        || (c >= 0xD1D9 && c <= 0xD1F3)
        || (c >= 0xD1F5 && c <= 0xD20F)
        || (c >= 0xD211 && c <= 0xD22B)
        || (c >= 0xD22D && c <= 0xD247)
        || (c >= 0xD249 && c <= 0xD263)
        || (c >= 0xD265 && c <= 0xD27F)
        || (c >= 0xD281 && c <= 0xD29B)
        || (c >= 0xD29D && c <= 0xD2B7)
        || (c >= 0xD2B9 && c <= 0xD2D3)
        || (c >= 0xD2D5 && c <= 0xD2EF)
        || (c >= 0xD2F1 && c <= 0xD30B)
        || (c >= 0xD30D && c <= 0xD327)
        || (c >= 0xD329 && c <= 0xD343)
        || (c >= 0xD345 && c <= 0xD35F)
        || (c >= 0xD361 && c <= 0xD37B)
        || (c >= 0xD37D && c <= 0xD397)
        || (c >= 0xD399 && c <= 0xD3B3)
        || (c >= 0xD3B5 && c <= 0xD3CF)
        || (c >= 0xD3D1 && c <= 0xD3EB)
        || (c >= 0xD3ED && c <= 0xD407)
        || (c >= 0xD409 && c <= 0xD423)
        || (c >= 0xD425 && c <= 0xD43F)
        || (c >= 0xD441 && c <= 0xD45B)
        || (c >= 0xD45D && c <= 0xD477)
        || (c >= 0xD479 && c <= 0xD493)
        || (c >= 0xD495 && c <= 0xD4AF)
        || (c >= 0xD4B1 && c <= 0xD4CB)
        || (c >= 0xD4CD && c <= 0xD4E7)
        || (c >= 0xD4E9 && c <= 0xD503)
        || (c >= 0xD505 && c <= 0xD51F)
        || (c >= 0xD521 && c <= 0xD53B)
        || (c >= 0xD53D && c <= 0xD557)
        || (c >= 0xD559 && c <= 0xD573)
        || (c >= 0xD575 && c <= 0xD58F)
        || (c >= 0xD591 && c <= 0xD5AB)
        || (c >= 0xD5AD && c <= 0xD5C7)
        || (c >= 0xD5C9 && c <= 0xD5E3)
        || (c >= 0xD5E5 && c <= 0xD5FF)
        || (c >= 0xD601 && c <= 0xD61B)
        || (c >= 0xD61D && c <= 0xD637)
        || (c >= 0xD639 && c <= 0xD653)
        || (c >= 0xD655 && c <= 0xD66F)
        || (c >= 0xD671 && c <= 0xD68B)
        || (c >= 0xD68D && c <= 0xD6A7)
        || (c >= 0xD6A9 && c <= 0xD6C3)
        || (c >= 0xD6C5 && c <= 0xD6DF)
        || (c >= 0xD6E1 && c <= 0xD6FB)
        || (c >= 0xD6FD && c <= 0xD717)
        || (c >= 0xD719 && c <= 0xD733)
        || (c >= 0xD735 && c <= 0xD74F)
        || (c >= 0xD751 && c <= 0xD76B)
        || (c >= 0xD76D && c <= 0xD787)
        || (c >= 0xD789 && c <= 0xD7A3)