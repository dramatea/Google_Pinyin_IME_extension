-- encoding: UTF-8
------------------------------------------------------
-- by dramatea.com
-- update:
-- 2013-03-21
-- http://dramatea.com/a/8
-- CC BY-NC-SA
-----------------------------------------------------

_MAPPING_TABLE = [[
0 〇,◎
1 ①,⑴,Ⅰ
2 ②,⑵,Ⅱ
3 ③,⑶,Ⅲ
4 ④,⑷,Ⅳ
5 ⑤,⑸,Ⅴ
6 ⑥,⑹,Ⅵ
7 ⑦,⑺,Ⅶ
8 ⑧,⑻,Ⅷ
9 ⑨,⑼,Ⅸ
10 ⑩,⑽,Ⅹ
11 ⑪,⑾,Ⅺ
12 ⑫,⑿,Ⅻ
13 ⑬,⒀
14 ⑭,⒁
15 ⑮,⒂
16 ⑯,⒃
17 ⑰,⒄
18 ⑱,⒅
19 ⑲,⒆
20 ⑳,⒇
]]

_MAPPING = ime.parse_mapping(_MAPPING_TABLE, "\n", " ", ",")

function SerialNumber(input)
if _MAPPING[input] then
return _MAPPING[input]
else
error("Invalid argument")
end
end

ime.register_command("xh", "SerialNumber", "数字序号","alpha","输入数字，例如1")
