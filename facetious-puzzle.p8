pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
c=2048z=127w=rnd
f=memcpy
d={16,-16,0,c}d[8]=-c
m=10+w(15)u=w(.001)v=w(.001)
for k=4,2,-2 do
for x=0,z,k do
for y=0,z,k do
a,b,i=0,0,0while i<32 and a*a+b*b<4 do
e=a
a=a*a-b*b+x/c/m-.103-u
b=2*e*b+y/c/m+.953-v
i+=1end
j=flr(i/2)circfill(x,y,i-2*j+k/2,j+k/3)end
end
end
l=line
for i=31,z,32 do
l(0,i,z,i,0)l(i,0,i,z,0)end
p=6192
x=24576
g=c
while t()<3 do end::_::b=a
if(g>0)g-=1 a=d[2^flr(w(4))]else poke2(12800,2752)a=d[btn()]flip()
if(not a or a==b)goto _
q=p+a
if(q%8192!=q or q%c>=64)sfx(0)goto _
for y=x,x+1984,64 do
f(p+y,q+y,16)f(q+y,0,16)end
p=q
goto _
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000feefd0dccccdecbbbbbaaaaaaaaa0aaabbbaa999999999999888888888880888888888888888888888888888887707777777777777777777777777777777
0e00000000dcccc00ccbce0baaaaaaaa0aabdecaaaa9999999999998888888880888888888888888888888888888888808777777777777777777777777777777
0ddee0000eddcddffdccf0cbbbaaaaaa0abbedbaaaaaa99999999999998888880888888888888888888888888888888808888777777777777777777777777777
0ccde00000feedd00dde0fcbbbbaaaaa0bcc0cbaaaaaaaaaabaaa999999988880888888888888888888899988888888808888888777777777777777777777777
0ccce0f0f000fee00ee0edcbbbbbaaaa0bc00ebbaaaaaaaab0bc0a99999999980888888888888888899999999988888808888888888777777777777777777777
0ccc0ddfdef000000000ddccbbbbbbbb0be00fcbbaaaaabbbdfeba9999999999099888888888889999ca999aac98888808888888888888777777777777777777
0bbbbcccccdef000000edccccbbbbbbb0cde0eecbbbbbbced0cbaaa99999999909999999999999999afbaabdba99888808888888888888887777777777777777
0bbbbbbcccdde000000fedccccbbbbbb0cde0dccbbbbbee00dbbaaa99999999909999999999999999acfbbefa999888808888888888888888877777777777777
0bbbbbbbcccdf0000000feddedcdcccc0c0f0eccbbbbcdf000baaaa9999999990999999999999999aabce0c0a999988808888888888888888888777777777777
0bbbbbbbbcde0fe00fef00fe0e0ecccc0de00fdcccccddf0fcbaaaa999999999099999999999999aaabcecbaa999988808888888888888888888877777777777
0aaabbbbbc00fdd00edeff00000edccc0de00fdccccd0f0eefbaaaa999999999099999999999999aaacfdbaaa999998808888888888888888888888777777777
0aaaabbbbce0dcde0dddddf000fedddd0de00eddddd000edccbaaaa99999999909999999999999abbbcfebaaa999998808888888888888888888888877777777
0aaaaaabbc0dccce0ccccdf000000fed0df00feddde00fdcbbbaaaaa999999990999999999999abdecc0cbaaa999999808888888888888888888888887777777
0aaaaaaabecbbbbdeccccdfe0ee000fe0ef000eee000e0cbbbbaaaaa99999999099999999999aabd0edfcbbaa999999908888888888888999b99888888877777
0aaaaaaaaabbbbbbbbbbbccc0dd000000ff000fef000ddcbbbbaaaaaa999999909999999999aaabcd00eddeaa99999990888888888889999ab99998888887777
0aaaaaaaaaaaaaaaabbbbbbcccddef000000000000fddccbbbbaaaaaaa999999099999999aaaabbcdf0f00cbaa9999990988888888899999b0a9999a98888777
0aaaaaaaaaaaaaaaaaabbbbbccccdef0000000000feddcccbbbbaaaaaaa999990999999aaaaaace00000fdcbaa999999099988889999999aafbaabbdaa888777
0aaaaaa99aaaaaaaaaaabbbbccccdee0000000000feddcccbbbbbaaaaaaa99990999aaaaaaaaabdfdef0feddcba99999099999999999aaaabccecfcaba888877
0a9999999999aaaaaaaabbbbbccddff00f00000f000edccccbbbbaaaaaaaaaaa0aaaaaaaaaaabbbcddf00000cdaa99990999999999adaaabc0c0c0ba99888887
09999999999999aaaaaaabbbbccde0000ff000ff00000dddccbbbbbaaaaaaaaa0aaaaaaaaaaabbbccd0fddccbbaa999909999999aabfcbb00cbaab9999888888
099999999999999aaaaaabbbbcefe00e0ef000eeee000ee0ddcbbbbbbbbbaaaa0aaaaaaaaaaabbbcc00edccbbaaaaa990999999aaabddcc0ebaaa99998888888
0999999999999999aaaaaabbbcd00fed0de000eddee000f0f0dcccc0cbbbbbaa0aaaaaaaaaaabbccd00fccbbbaaaaaa9099999abcbcd0d0dcaaa999988888888
09999999999999999aaaaabbcce00fdd0def0eddddddef000edccce0ccbcd0cb0aaaaaaaaaaabbccde0eccbbaaaaaaaa0aaaaaabf0def0dcbaa9999888888888
09999999999999999aaaaacddd0f0dcc0df000ddcccce00000eddde0dccf0cbb0aaaaaaaaaabbd0fef0ddcbbaaaaaaaa0aaaaaabcd000edcbaa9999888888888
099999999999999999aaaabe0e0ddcbc0cd00fdccccceeefe000ee00ede00cbb0bbaaaaaaabbbce000feedbbbaaaaaaa0aaaaabbccdf0f0eca99998888888888
099999999999999999aaaabcf0edcbbb0cde0eccccbcccdddf000f00fe00dcbb0bbbbaaabbbbccde00000dcbbaaaaaaa0aaaabbbccde0ff0cb99998888888888
099999999999999999aaaabdf0febbbb0cde0dccbbbbbbcccddf000000fedccb0bbbbbbbbbbbcdef0000edccbbaaaaaa0aaabbbbcdf00dcbba99998888888888
099999999999999999aaabbd0edbbbbb0c0000dbbbbbbbbcccde000000eddccc0bbbbbbbbbbbcf000000feedbbbbbaaa0bbbeccce00e0ecbaa99988888888888
0999999999999999999aabbedbcaaaaa0bc00ecbbabbbbbbcde00f00000edccc0bbbbbbbbbbccddee000000dcbbbbbbb0bbcd0ddf0dcd00dba99988888888888
0999999999999999999aad00cbaaaaaa0abdfdbaaaaaabbbc000ee00ef00fddd0ccbbbbbbbcccddef00feedccbbbbbbb0bedd0f0e0cccc00ca99988888888888
099999999999999999990cbbcaaaaaaa0abddbbaaaaaaabbcf0ddd0fde000ee00deccccccccccddd000eddcccbbbbbbb0cd0000edcbbbbbbfa99988888888888
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
099999999999999999999999999999990abbaaaaaaaaaaaabbbbcd0dcccde00000edccccccccdeeef00edddccccbbbbc0cdef00f0bbbaaaaa999998888888888
08888888888888889999999999999999099aaaaaaaaaaaaaaabbb0eccccd00000fedcccccccdd00f000eeddccccccccc0de000edcbbaaaaa9999998888888888
08888888888888888888899999999999099999999999aaaaaaaaabbbbbceee0f00ffddddddddef00000f00ddcccccccd0f00ee0dbbaaaaaa9999998888888888
08888888888888888888888899999999099999999999999aaaaaaaabbbbbcd0d0f000dddddd0ff0000000feeedccccd000fddde0baaaaaa99999999888888888
0888888888888888888888888889999909999999999999999aaaaaaabbbbbccd0000fedddde00000000000f0edddddef000dccccbaaaaaa99999999888888888
08888888888888888888888888888999099999999999999999aaaaaaabbbbccc0dff0feeeeef000000000000edddde0000dccbbbbaaaaa999999999988888888
088888888888888888888888888888890999999999999999999aaaaaabbbbbcc0dde00ff0ff0000000000000feeeef000edcbbbbaaaaaa999999999998888888
088888888888888888888888888888880999999999999999999aaaaaabbbbbcc0ddef0000000000000000000000ff00e0dccbbbbaaaaaa999999999998888888
0888888888888888888888888888888808999999999999999999aaaaaabbbbcc0ddf0ff00000000000000000000000ed0cccbbbbaaaaa9999999999999888888
0888888888888888888888888888888808899999999999999999aaaaaabbbbcc0df00eeeeef000000000000ff0ff0fed0cccbbbbaaaaa9999999999999988888
0888888888888888888888888888888808889999999999999999aaaaaabbbbcd0ef0fedddef00000000000feeeee00fd0cccbbbbaaaaaa999999999999988888
0888888888888888888888888888888808888899999999999999aaaaaabbbbcd000fddddde00f0000000000edddde00f0cccbbbbaaaaaa999999999999998888
0888888888888888888888888888888808888889999999999999aaaaabbbccc0000eddcdddfee0000000fefddddde0000ddccbbbbaaaaa999999999999999888
0888888888888888888888888888888808888888999999999999aaaaabecccde000fcccccccde0ff00000eddddcddef00e0dcbbbbaaaaaa99999999999999988
0888888888888888888888888888888808888888899999999999aaaaabd0ede00fedccccccccdeef00ff0ddccccccddf000efdbbbbaaaaa99999999999999998
088888888888888888888888888888880888888888999999999aaaaaabce0f000deccbbcccccdde000eeddccccccccdf0000fcccbbbbaaaaa999999999999999
088888888888888888888888888888880888888888899999999aaaaabbcdf00e0ccbbbbbbcccdddf00eddccccccccce00000edcccdfbbbaaaa99999999999999
08888888888888888888888888888888088888888888999999aaaaabbc00000e0ccbbbbbbcccddef0feddcccbbbbccdd00e00eddd0dcbbbaaaaaa99999999999
08888888888888888888888888888888088888888888999999aaaaabbcce00000cbbbbbbbbccdef00feddccbbbbbbbbc0dd000ede0eccc0caaaaaaaaa9999999
08888888888888888888888888888888088888888888899999aaaabbbcdf00ed0bbbbbbbbbc000000000dcbbbbbbbbbb0ccde00e00ddd0cbbaaaaaaaaaa99999
0777777777788888888888888888888808888888888889999acbbbbbbdf0eefc0bbbbaabbbbcdde00000dcbbbbbbbbbb0cccdf0000ff0ecbbaaaaaaaa0bfa999
0777777777777778888888888888888808888888888888999ab00ecccf0eccdc0aaaaaaaabbbcdf000fdccbbbbbbbbbb0bcde0f00000edcbbbaaaaaabdfcaaa9
0777777777777777778888888888888808888888888888999aac00fddffdcbbb0aaaaaaaaabbb0fe000fcbbbaaaaaabb0bc000e00ff0dccbbbbbaaabc0cbaaaa
07777777777777777777888888888888088888888888888999aabcf0f0dcbbba0aaaaaaaaaabbcdd0eefdbbaaaaaaaab0bc00dde0ee00dccbbbbbbbcffcbaaaa
07777777777777777777778888888888088888888888888999aabcdf0edcbbaa0aaaaaaaaaabbcce0ddcbbaaaaaaaaaa0b0dcccffdde0eedcbbbbbbf00dcbaaa
07777777777777777777777788888888088888888888888999abede000ecbaaa0aaaaaaaaaabbcce0eccbbaaaaaaaaaa0abbbbcedccde00e0dcccccde000bbaa
07777777777777777777777777888888088888888888888999ae0000ffe0caaa09999aaaaaabbcde0ecbbbaaaaaaaaaa0aaabbbcbbcc0000edcccccd0edcbbbb
07777777777777777777777777788888088888888888888999aabce0edcb0a990999999aaabbedee0dcbbbaaaaaaaaaa0aaaaaaabbbcddf0fdcccdd00edccbbb
07777777777777777777777777777888088888888888889999aabd0d0cbaa99909999999aac00000feddbbaaaaaaa99909aaaaaaabbbccde00eddd0000dcccbc
07777777777777777777777777777788088888888888889999aaceecc0baa999099999999aabccdf000feaaaaa9999990999aaaaaabbbccdf0eddef0000dcccd
0777777777777777777777777777777708888888888888999aabdfcbbbfa99990999999999aabce00edbbaaa9999999909999aaaaabbbccdeffffff00fedddd0
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
077777777777777777777777777777770788888888888999bacc0baa9999988808889999999aabbdfd0caa99999999990999999aaabbbcee0fe000000000ef0e
07777777777777777777777777777777077788888888899acd0ceba99998888808888999999aaabddbbca999999999990999999aaabbbce0fdddef00000000ed
0777777777777777777777777777777707777888888899abfeaacca999888888088888999999aab0dbaa9999999999990999999aaabccd00ddddef00fffef0ed
077777777777777777777777777777770777777888889acfbaaabea999888888088888899999aab0caaa9999999999990999999aaabd00eecccc0000fedde0fd
07777777777777777777777777777777077777778888899d99999fa988888888088888889999abe0baa99999999999990999999aaab00eccbbccd000fdddd00e
0777777777777777777777777777777707777777778888888889999888888888088888888999a0cb0b999999999999990999999aabbd0fcbbbbcde00dccccdf0
077777777777777777777777777777770777777777778888888888888888888808888888899abdaaae999888888888990999999aadd0dbbbbbbcde0dcccccde0
077777777777777777777777777777770777777777777788888888888888888808888888889bba99999888888888888809999999dccbbaaaaabce0edccbccd0f
07777777777777777777777777777777077777777777777788888888888888880888888888889999988888888888888808889999aabaaaaaaaabe0f0bbbbbcce
07777777777777777777777777777777077777777777777777788888888888880888888888888888888888888888888808888899999999aaaaabc00cbbbbbbcc
0777777777777777777777777777777707777777777777777777777888888888088888888888888888888888888888880888888899999999aaabddbbaaabbbbc
07777777777777777777777777777777077777777777777777777777777778880888888888888888888888888888888808888888899999999aa0cdbaaaaabbbb
0777777777777777777777777777777707777777777777777777777777777777077777777778888888888888888888880888888888899999999aaaaaaaaaabbb
077777777777777777777777777777770777777777777777777777777777777707777777777777778888888888888888088888888888999999999aaaaaaaaabc
07777777777777777777777777777777077777777777777777777777777777770777777777777777777888888888888808888888888889999999999aaaaaaabf
07777777777777777777777777777777077777777777777777777777777777770777777777777777777777888888888808888888888888999999999999aaaaab
0777777777777777777777777777777707777777777777777777777777777777077777777777777777777777888888880888888888888889999999999999aaaa
077777777777777777777777777777770777777777777777777777777777777707777777777777777777777778888888088888888888888899999999999999aa
0777777777777777777777777777777707777777777777777777777777777777077777777777777777777777777888880888888888888888899999999999999a
0777777777777777777777777777777707777777777777777777777777777777077777777777777777777777777788880888888888888888899999999999999a
07777777777777777777777777777777077777777777777777777777777777770777777777777777777777777777788808888888888888888899999999999999
07777777777777777777777777777777077777777777777777777777777777770777777777777777777777777777778808888888888888888899999999999999
07777777777777777777777777777777077777777777777777777777777777770777777777777777777777777777777808888888888888888889999999999999
07777777777777777777777777777777077777777777777777777777777777770777777777777777777777777777777708888888888888888888999999999999
07777777777777777777777777777777077776666666666667777777777777770777777777777777777777777777777708888888888888888888999999999999
07777777777777777777777777777766066666666666666666666677777777770777777777777777777777777777777708888888888888888888899999999999
07777777777777777777777776666666066666666666666666666666667777770777777777777777777777777777777707888888888888888888899999999999
07777777777777777777766666666666066666666666666666666666666677770777777777777777777777777777777707888888888888888888889999999999
0777777777777777766666666666666606666666666666666666666666666667077777777777777777777777777777770778888888888888888888999999999a
077777777777776666666666666666660666666666666666666666666666666607777777777777777777777777777777077888888888888888888899999999aa
077777777777666666666666666666660666666666666666666666666666666606777777777777777777777777777777077788888888888888888889999999aa
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07777766666666666666666666666666066666666666666666666666666666660666677777777777777777777777777700000000000000000000000000000000
07766666666666666666666666666666066666666666666666666666666666660666666777777777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666677777777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666667777777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666777777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666677777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666667777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666777777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666677777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666667777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666777777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666677777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666667777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666667777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666777777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666677777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666677777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666667777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666667777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666777777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666677777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666677777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666677777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666667777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666667777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666667777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666666777777700000000000000000000000000000000
06666666666666666666666666666666066666666666666666666666666666660666666666666666666666666777777700000000000000000000000000000000

__map__
0000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
001000000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
