sin = math.sin
cos = math.cos

t = 0

mt = 310
n360 = 360
n200 = 200
n72 = 72
-- mt=0
cls(8)
function TIC()
    t = t + 1
    if t < n360 then
        for j = 1, 15 do
            cx = -n72 * j % 300
            cy = 40 * j % n200
            for i = 0, 88 ^ j % n200 do
                a = t / 2000
                i4 = i / 4
                x = cx + sin(i + a) * i4
                y = cy + sin(i + a + 2) * i4
                circ(x, y, i % 2, i % 5 + 8)
            end
        end
    else
        tt = (t - n360) / 5
        for k = 0, 10 do
            x = 60 + k * 2 + sin(tt / 2) * -9
            y = n72 + tt * 8 + k * 5 + cos(k / 12 * n360) * 60
            for c = 0, 2 do
                for i = 1, 6 do
                    a = math.pi * 2 / 5 * i - tt
                    r = sin(tt / 6) * (tt / 2)
                    circ(x + r * cos(a) - c, y + r / 5 * sin(a), 2 - c, 16 - c)
                end
            end
        end
    end
end

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

