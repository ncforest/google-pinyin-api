-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音评级符号扩展
-- 作者: Mike
-- 版本: 0.1
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 此扩展遵循GPLv3发布
------------------------------------------------

_Pingji_TABLE={
["xx"] = { "★☆", {"★☆☆☆☆ ","★★☆☆☆ ","★★★☆☆ ","★★★★☆ ","★★★★★ ","★★★★★★☆☆☆☆","★★★★★★★☆☆☆","★★★★★★★★☆☆","★★★★★★★★★☆","★★★★★★★★★★"} },
["fk"] = { "■□", {"■□□□□","■■□□□","■■■□□","■■■■□","■■■■■","■■■■■■□□□□","■■■■■■■□□□","■■■■■■■■□□","■■■■■■■■■□","■■■■■■■■■■"} },
["sj"] = { "▲△", {"▲△△△△","▲▲△△△","▲▲▲△△","▲▲▲▲△","▲▲▲▲▲","▲▲▲▲▲△△△△","▲▲▲▲▲▲▲△△△","▲▲▲▲▲▲▲▲△△","▲▲▲▲▲▲▲▲▲△","▲▲▲▲▲▲▲▲▲▲"} },
["lx"] = { "◆◇", {"◆◇◇◇◇","◆◆◇◇◇","◆◆◆◇◇","◆◆◆◆◇","◆◆◆◆◆","◆◆◆◆◆◆◇◇◇◇","◆◆◆◆◆◆◆◇◇◇","◆◆◆◆◆◆◆◆◇◇","◆◆◆◆◆◆◆◆◆◇","◆◆◆◆◆◆◆◆◆◆"} },
["qq"] = { "●○", {"●○○○○","●●○○○","●●●○○","●●●●○","●●●●●","●●●●●●○○○○","●●●●●●●○○○","●●●●●●●●○○","●●●●●●●●●○","●●●●●●●●●●"} },
}

function PrintPingji(input)
  if #input <= 0 then
    local metatables = {}
    for k, v in pairs(_Pingji_TABLE) do
      table.insert(metatables, {["suggest"] = k, ["help"] = v[1]})
    end
    return metatables
  elseif _Pingji_TABLE[input] then
    return _Pingji_TABLE[input][2]
  else
    error("Invalid argument")
  end
end

ime.register_command("pj", "PrintPingji", "各种评级符号")