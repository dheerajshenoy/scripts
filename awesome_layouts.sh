#!/bin/sh
str='
local naughty = require("naughty")
local awful = require("awful")
local l = #awful.layout.layouts
naughty.notify({ title = "DD", text = tostring(l) })

for i = 1, l do
    s = awful.layout.layouts[i]
end
naughty.notify({ title = "DD", text = s.name })

'


awesome-client "$str"
