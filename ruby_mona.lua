--[[ Ruby_mona ]]--

if not init then
    init = true
    
    rx,ry = getResolution()
    --logMessage(rx.."-"..ry)
    
    function StringSplit (inputstr, sep)
        if sep == nil then
                sep = ":"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
        end
    
    function StringToTri(string)
        local tri = {}
        local sSplit = StringSplit(string," ")
        tri[1] = {tonumber(StringSplit(sSplit[1],",")[1]),tonumber(StringSplit(sSplit[1],",")[2])}
        tri[2] = {tonumber(StringSplit(sSplit[2],",")[1]),tonumber(StringSplit(sSplit[2],",")[2])}
        tri[3] = {tonumber(StringSplit(sSplit[3],",")[1]),tonumber(StringSplit(sSplit[3],",")[2])}
        
        return tri
        end
    
    end --init


if not loaded then
    loaded = 1
    
    colors = {
        --{0.035,0.045,0.08},
        {1.00,1.00,1.00},
        {0.50,0.00,0.12},
        {0.01,0.33,0.50},
        {0.00,0.50,0.35}
        }
    
    
    
tris = {}

tris[1] = StringToTri("464,86 455,61 457,83")
tris[2] = StringToTri("435,72 457,83 455,61")
tris[3] = StringToTri("464,86 473,55 455,61")
tris[4] = StringToTri("435,72 453,86 457,83")
tris[5] = StringToTri("481,87 503,56 473,55")
tris[6] = StringToTri("464,86 481,87 473,55")
tris[7] = StringToTri("439,90 453,86 435,72")
tris[8] = StringToTri("423,84 439,90 435,72")
tris[9] = StringToTri("481,87 502,91 503,56")
tris[10] = StringToTri("502,91 532,64 503,56")
tris[11] = StringToTri("426,94 439,90 423,84")
tris[12] = StringToTri("453,86 464,86 457,83")
tris[13] = StringToTri("518,100 532,64 502,91")
tris[14] = StringToTri("412,101 426,94 423,84")
tris[15] = StringToTri("518,100 557,81 532,64")
tris[16] = StringToTri("416,109 426,94 412,101")
tris[17] = StringToTri("531,116 557,81 518,100")
tris[18] = StringToTri("401,122 416,109 412,101")
tris[19] = StringToTri("531,116 572,102 557,81")
tris[20] = StringToTri("401,122 414,124 416,109")
tris[21] = StringToTri("416,109 439,90 426,94")
tris[22] = StringToTri("539,134 572,102 531,116")
tris[23] = StringToTri("401,122 412,138 414,124")
tris[24] = StringToTri("464,86 473,142 481,87")
tris[25] = StringToTri("481,87 487,143 502,91")
tris[26] = StringToTri("473,142 487,143 481,87")
tris[27] = StringToTri("487,143 518,100 502,91")
tris[28] = StringToTri("436,145 416,109 414,124")
tris[29] = StringToTri("453,86 473,142 464,86")
tris[30] = StringToTri("397,146 412,138 401,122")
tris[31] = StringToTri("487,143 503,146 518,100")
tris[32] = StringToTri("436,145 439,90 416,109")
tris[33] = StringToTri("503,146 531,116 518,100")
tris[34] = StringToTri("539,134 584,129 572,102")
tris[35] = StringToTri("439,90 473,142 453,86")
tris[36] = StringToTri("412,138 436,145 414,124")
tris[37] = StringToTri("426,149 436,145 412,138")
tris[38] = StringToTri("436,145 473,142 439,90")
tris[39] = StringToTri("514,152 531,116 503,146")
tris[40] = StringToTri("514,152 539,134 531,116")
tris[41] = StringToTri("447,152 473,142 436,145")
tris[42] = StringToTri("447,152 466,151 473,142")
tris[43] = StringToTri("412,153 426,149 412,138")
tris[44] = StringToTri("397,146 412,153 412,138")
tris[45] = StringToTri("412,153 418,156 426,149")
tris[46] = StringToTri("426,149 432,159 436,145")
tris[47] = StringToTri("492,159 503,146 487,143")
tris[48] = StringToTri("436,145 439,159 447,152")
tris[49] = StringToTri("488,159 492,159 487,143")
tris[50] = StringToTri("432,159 439,159 436,145")
tris[51] = StringToTri("432,159 436,160 439,159")
tris[52] = StringToTri("524,160 539,134 514,152")
tris[53] = StringToTri("492,159 501,161 503,146")
tris[54] = StringToTri("524,160 544,153 539,134")
tris[55] = StringToTri("413,162 418,156 412,153")
tris[56] = StringToTri("451,161 466,151 447,152")
tris[57] = StringToTri("496,162 501,161 492,159")
tris[58] = StringToTri("473,142 488,159 487,143")
tris[59] = StringToTri("544,153 584,129 539,134")
tris[60] = StringToTri("488,159 490,162 492,159")
tris[61] = StringToTri("501,161 514,152 503,146")
tris[62] = StringToTri("418,156 432,159 426,149")
tris[63] = StringToTri("487,164 490,162 488,159")
tris[64] = StringToTri("501,161 508,164 514,152")
tris[65] = StringToTri("451,161 463,163 466,151")
tris[66] = StringToTri("431,163 436,160 432,159")
tris[67] = StringToTri("439,159 451,161 447,152")
tris[68] = StringToTri("436,160 441,163 439,159")
tris[69] = StringToTri("423,164 432,159 418,156")
tris[70] = StringToTri("492,159 494,165 496,162")
tris[71] = StringToTri("490,162 494,165 492,159")
tris[72] = StringToTri("439,159 447,165 451,161")
tris[73] = StringToTri("466,151 488,159 473,142")
tris[74] = StringToTri("441,163 447,165 439,159")
tris[75] = StringToTri("473,165 488,159 466,151")
tris[76] = StringToTri("437,165 441,163 436,160")
tris[77] = StringToTri("463,163 473,165 466,151")
tris[78] = StringToTri("423,164 431,163 432,159")
tris[79] = StringToTri("496,162 501,165 501,161")
tris[80] = StringToTri("431,163 437,165 436,160")
tris[81] = StringToTri("413,162 423,164 418,156")
tris[82] = StringToTri("544,153 587,152 584,129")
tris[83] = StringToTri("501,165 508,164 501,161")
tris[84] = StringToTri("487,164 490,167 490,162")
tris[85] = StringToTri("437,165 441,166 441,163")
tris[86] = StringToTri("490,167 494,165 490,162")
tris[87] = StringToTri("431,163 434,167 437,165")
tris[88] = StringToTri("508,164 524,160 514,152")
tris[89] = StringToTri("473,165 487,164 488,159")
tris[90] = StringToTri("441,166 447,165 441,163")
tris[91] = StringToTri("494,165 501,165 496,162")
tris[92] = StringToTri("397,146 413,162 412,153")
tris[93] = StringToTri("434,167 441,166 437,165")
tris[94] = StringToTri("524,160 543,172 544,153")
tris[95] = StringToTri("423,164 434,167 431,163")
tris[96] = StringToTri("391,175 413,162 397,146")
tris[97] = StringToTri("413,175 423,164 413,162")
tris[98] = StringToTri("447,165 463,163 451,161")
tris[99] = StringToTri("391,175 413,175 413,162")
tris[100] = StringToTri("473,165 490,167 487,164")
tris[101] = StringToTri("490,167 501,165 494,165")
tris[102] = StringToTri("543,172 587,152 544,153")
tris[103] = StringToTri("441,166 449,188 447,165")
tris[104] = StringToTri("413,175 434,167 423,164")
tris[105] = StringToTri("449,188 463,163 447,165")
tris[106] = StringToTri("434,167 449,188 441,166")
tris[107] = StringToTri("463,163 471,193 473,165")
tris[108] = StringToTri("471,193 490,167 473,165")
tris[109] = StringToTri("449,188 471,193 463,163")
tris[110] = StringToTri("414,190 434,167 413,175")
tris[111] = StringToTri("391,175 414,190 413,175")
tris[112] = StringToTri("543,172 591,187 587,152")
tris[113] = StringToTri("524,160 540,191 543,172")
tris[114] = StringToTri("434,167 445,197 449,188")
tris[115] = StringToTri("508,164 540,191 524,160")
tris[116] = StringToTri("414,190 445,197 434,167")
tris[117] = StringToTri("382,200 414,190 391,175")
tris[118] = StringToTri("468,209 476,204 471,193")
tris[119] = StringToTri("448,209 445,197 442,205")
tris[120] = StringToTri("449,188 461,210 471,193")
tris[121] = StringToTri("461,210 468,209 471,193")
tris[122] = StringToTri("445,197 461,210 449,188")
tris[123] = StringToTri("468,209 473,211 476,204")
tris[124] = StringToTri("540,191 591,187 543,172")
tris[125] = StringToTri("448,209 461,210 445,197")
tris[126] = StringToTri("414,190 442,205 445,197")
tris[127] = StringToTri("453,213 461,210 448,209")
tris[128] = StringToTri("476,204 490,167 471,193")
tris[129] = StringToTri("453,213 458,214 461,210")
tris[130] = StringToTri("416,211 442,205 414,190")
tris[131] = StringToTri("476,204 501,165 490,167")
tris[132] = StringToTri("382,200 416,211 414,190")
tris[133] = StringToTri("458,214 468,209 461,210")
tris[134] = StringToTri("439,222 448,209 442,205")
tris[135] = StringToTri("465,223 468,209 458,214")
tris[136] = StringToTri("446,223 453,213 448,209")
tris[137] = StringToTri("473,211 487,223 476,204")
tris[138] = StringToTri("446,223 451,222 453,213")
tris[139] = StringToTri("465,223 473,211 468,209")
tris[140] = StringToTri("453,213 458,222 458,214")
tris[141] = StringToTri("439,222 446,223 448,209")
tris[142] = StringToTri("451,222 458,222 453,213")
tris[143] = StringToTri("458,222 465,223 458,214")
tris[144] = StringToTri("451,222 454,224 458,222")
tris[145] = StringToTri("501,165 540,191 508,164")
tris[146] = StringToTri("479,224 487,223 473,211")
tris[147] = StringToTri("465,223 471,225 473,211")
tris[148] = StringToTri("471,225 479,224 473,211")
tris[149] = StringToTri("416,211 439,222 442,205")
tris[150] = StringToTri("479,224 483,226 487,223")
tris[151] = StringToTri("439,222 444,227 446,223")
tris[152] = StringToTri("446,223 450,227 451,222")
tris[153] = StringToTri("450,227 454,224 451,222")
tris[154] = StringToTri("458,222 463,228 465,223")
tris[155] = StringToTri("471,225 477,229 479,224")
tris[156] = StringToTri("539,208 591,187 540,191")
tris[157] = StringToTri("444,227 450,227 446,223")
tris[158] = StringToTri("476,204 540,191 501,165")
tris[159] = StringToTri("456,229 458,222 454,224")
tris[160] = StringToTri("465,223 469,229 471,225")
tris[161] = StringToTri("456,229 463,228 458,222")
tris[162] = StringToTri("463,228 469,229 465,223")
tris[163] = StringToTri("476,204 539,208 540,191")
tris[164] = StringToTri("487,223 539,208 476,204")
tris[165] = StringToTri("450,227 456,229 454,224")
tris[166] = StringToTri("539,208 595,211 591,187")
tris[167] = StringToTri("477,229 483,226 479,224")
tris[168] = StringToTri("469,229 477,229 471,225")
tris[169] = StringToTri("416,211 426,235 439,222")
tris[170] = StringToTri("450,235 456,229 450,227")
tris[171] = StringToTri("444,227 450,235 450,227")
tris[172] = StringToTri("458,236 463,228 456,229")
tris[173] = StringToTri("470,236 477,229 469,229")
tris[174] = StringToTri("463,228 470,236 469,229")
tris[175] = StringToTri("543,224 595,211 539,208")
tris[176] = StringToTri("450,235 458,236 456,229")
tris[177] = StringToTri("458,236 470,236 463,228")
tris[178] = StringToTri("426,235 444,227 439,222")
tris[179] = StringToTri("383,242 416,211 382,200")
tris[180] = StringToTri("426,235 438,246 444,227")
tris[181] = StringToTri("438,246 450,235 444,227")
tris[182] = StringToTri("487,223 543,224 539,208")
tris[183] = StringToTri("543,224 528,251 542,238")
tris[184] = StringToTri("383,242 426,235 416,211")
tris[185] = StringToTri("487,223 528,251 543,224")
tris[186] = StringToTri("446,257 450,235 438,246")
tris[187] = StringToTri("446,257 458,236 450,235")
tris[188] = StringToTri("543,224 598,245 595,211")
tris[189] = StringToTri("487,223 510,260 528,251")
tris[190] = StringToTri("483,226 510,260 487,223")
tris[191] = StringToTri("542,238 598,245 543,224")
tris[192] = StringToTri("470,236 483,226 477,229")
tris[193] = StringToTri("528,251 542,263 542,238")
tris[194] = StringToTri("458,266 458,236 446,257")
tris[195] = StringToTri("492,266 510,260 483,226")
tris[196] = StringToTri("470,236 492,266 483,226")
tris[197] = StringToTri("458,266 470,236 458,236")
tris[198] = StringToTri("458,266 474,269 470,236")
tris[199] = StringToTri("474,269 492,266 470,236")
tris[200] = StringToTri("461,275 474,269 458,266")
tris[201] = StringToTri("542,263 598,245 542,238")
tris[202] = StringToTri("510,260 542,263 528,251")
tris[203] = StringToTri("399,287 426,235 383,242")
tris[204] = StringToTri("399,287 438,246 426,235")
tris[205] = StringToTri("463,287 474,269 461,275")
tris[206] = StringToTri("542,263 597,278 598,245")
tris[207] = StringToTri("397,146 382,200 391,175")
tris[208] = StringToTri("550,288 597,278 542,263")
tris[209] = StringToTri("399,287 446,257 438,246")
tris[210] = StringToTri("446,257 461,275 458,266")
tris[211] = StringToTri("466,296 474,269 463,287")
tris[212] = StringToTri("510,260 550,288 542,263")
tris[213] = StringToTri("466,296 492,266 474,269")
tris[214] = StringToTri("442,313 466,296 463,287")
tris[215] = StringToTri("461,275 442,313 463,287")
tris[216] = StringToTri("446,257 442,313 461,275")
tris[217] = StringToTri("399,287 442,313 446,257")
tris[218] = StringToTri("609,300 598,245 597,278")
tris[219] = StringToTri("553,312 597,278 550,288")
tris[220] = StringToTri("399,287 418,330 442,313")
tris[221] = StringToTri("553,312 609,300 597,278")
tris[222] = StringToTri("492,266 550,288 510,260")
tris[223] = StringToTri("380,346 418,330 399,287")
tris[224] = StringToTri("380,346 399,348 418,330")
tris[225] = StringToTri("492,266 553,312 550,288")
tris[226] = StringToTri("466,296 553,312 492,266")
tris[227] = StringToTri("615,350 642,348 621,327")
tris[228] = StringToTri("583,358 609,300 553,312")
tris[229] = StringToTri("583,358 621,327 609,300")
tris[230] = StringToTri("549,345 583,358 553,312")
tris[231] = StringToTri("583,358 615,350 621,327")
tris[232] = StringToTri("642,348 609,300 621,327")
tris[233] = StringToTri("466,296 549,345 553,312")
tris[234] = StringToTri("380,346 391,370 399,348")
tris[235] = StringToTri("541,371 555,375 549,345")
tris[236] = StringToTri("555,375 583,358 549,345")
tris[237] = StringToTri("444,389 442,313 418,330")
tris[238] = StringToTri("399,348 444,389 418,330")
tris[239] = StringToTri("407,391 399,348 391,370")
tris[240] = StringToTri("466,296 541,371 549,345")
tris[241] = StringToTri("407,391 444,389 399,348")
tris[242] = StringToTri("422,398 444,389 407,391")
tris[243] = StringToTri("530,391 555,375 541,371")
tris[244] = StringToTri("422,398 437,402 444,389")
tris[245] = StringToTri("444,389 466,296 442,313")
tris[246] = StringToTri("444,389 541,371 466,296")
tris[247] = StringToTri("444,389 530,391 541,371")
tris[248] = StringToTri("437,402 462,410 444,389")
tris[249] = StringToTri("444,389 503,414 530,391")
tris[250] = StringToTri("462,410 503,414 444,389")
tris[251] = StringToTri("401,122 382,200 397,146")
tris[252] = StringToTri("555,375 615,350 583,358")
tris[253] = StringToTri("555,375 642,348 615,350")
tris[254] = StringToTri("530,391 642,348 555,375")
tris[255] = StringToTri("503,414 642,348 530,391")
tris[256] = StringToTri("422,398 462,410 437,402")


    
    end
local col = colors[1]
setBackgroundColor(col[1],col[2],col[3])
local l = createLayer()

local yOffset = 50

--col = colors[1+math.random(#colors-1)]
col = colors[2]

for _,t in ipairs(tris) do
    --setNextFillColor(l,1.2-1/256*_,0,1/256*_,1)
    --setNextFillColor(l,1-math.random(),0,math.random(),1)
    --local col = colors[1+math.random(#colors-2)]
    setNextFillColor(l,col[1]*math.random()*2,col[2]*math.random()*2,col[3]*math.random()*2,1)
    addTriangle(l,t[1][1],t[1][2]+yOffset,t[2][1],t[2][2]+yOffset,t[3][1],t[3][2]+yOffset)
    end


-- TITLE
local layerTitle = createLayer()
local font = loadFont('Play-Bold', 14) 
setDefaultFillColor(layerTitle, Shape_Text, 0.1, 0.1, 0.2, 1) 
addBox(layerTitle, 30, ry-64, 220, 32)
addText(layerTitle, font, "R U B Y . M O N A . . . . . . .", 42, ry-42)


requestAnimationFrame(10)

--[[ Some dude named Bonusaben made this ]]--
--[[   Come visit the Underdun Arcade    ]]--
