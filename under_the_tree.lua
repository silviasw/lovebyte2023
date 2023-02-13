cos = math.cos
rnd = math.random

function grad(x, y, w, h, sc)
    for c = 0, 2 do
        for i = 1, w do
            sx = x + i
            sy = y - 2.3 ^ c + rnd() * h
            circ(sx, sy, 1, sc - c)
        end
    end
end

function TIC()
    cls(15)
    math.randomseed(17)

    for i = 0, 15 do
        for k = 0, 5 do
            grad(240 * rnd(), 10 + 75 * rnd(), 10 + i, 16 - i, 16)
        end
    end
    for i = 0, 30, 2 do
        circ(60, 50, 10, 12)
        -- grad(42-j,50+j/2,17+j,10-j,16)

        -- grad(0,105+i,240,7,7)
        -- grad(50,105,240,7,6)

        -- grad(i*5,110+i,24+i*3,20-i,8)
        grad(130 - i * 3, 105 + i, 24 + i * 1, 20 - i, 7)
        grad(130 - i * 2, 105 + i, 50 + i * 3, 20 - i, 8)

        grad(140 - i, 20 + i, 24 + i * 2, 20, 7)
        grad(149, 70, 10, 34, 2)
        grad(149, 73, 3, 30, 5)

        -- grad(100-i*2,i*2,50-i,20,8)
        -- grad(200,20,20,100,2)
        -- grad(190,20,18,100,4)

        -- grad(88,73,3,30,4)

        -- sword
        grad(121, 95, 2, 16, 16)
        grad(119, 95, 2, 16, 12)
        grad(120, 85, 2, 2, 4)
        rect(117, 86, 10, 3, 2)

        -- rect(48,52,24,16,12)

    end
end

-- cos=math.cos
-- rnd=math.random

-- function grad(x,y,w,h,sc)
-- for c=0,2 do
-- for i=1,w do
-- sx=x+i
-- sy=y-2.3^c+rnd()*h
-- circ(sx,sy,1,sc-c)
-- end
-- end
-- end

-- t=0
-- function TIC()
-- cls(15)
-- math.randomseed(17)
-- t=t+0.1

-- swx=100
-- swy=100
-- for i=0,20,2 do
-- grad(80,0,60,100-i*20,15)

-- grad(80+i,110+i,50,4,8)

-- grad(100-i,50+i,20+i*2,20,7)
-- grad(110,90,5,20,3)

-- grad(swx,swy,2,15,16)
-- grad(swx-2,swy,2,15,12)
-- grad(swx-1,swy-10,2,2,3)
-- rect(swx-4,swy-9,10,3,2)
-- end

-- end

-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

