sin = math.sin

t = 0
no = 0

n240 = 240

function win(x, y)
    sfx(0, 20, 10, 0, 10)

    rect(x, y, 80, 32, 8)
    rect(x + 2, y + 10, 76, 20, 13)

    x = x + 12
    y = y + 18
    circ(x, y, 6, 2)
    for i = -2, 2 do
        rect(x + i, y + i, 2, 1, 12)
        rect(x - i, y + i, 2, 1, 12)
    end
    rectb(x + 35, y, 25, 8, 14)

end

cls(9)
for i = 0, 3e4 do
    x = i % n240
    y = i // n240
    poke4(i, 11 - y / 26 + y % .7 + sin(x / 40))
end

function TIC()

    t = (t + 1) % n240
    if no < 4 then
        if t % 50 == 3 then
            x = 80 + sin(no) * 80
            y = 45 + sin(2 * no) * 40
            win(x, y)
            no = no + 0.2
        end
        -- if t%20 == 3 and no>1 then
        -- sfx(0,10+t%10,10,1,5)
        -- end
    else
        cls(9)
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

