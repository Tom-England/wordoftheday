-- Word of the day widget for AwesomeWM
-- By Tom England
-- Provided as is
-- For word list, try words on Arch or wordlist on debian/ubuntu

local wibox = require("wibox")

local wordofthedaywidget = wibox.widget{
	text='test',
	align='center',
	valign='center',
	widget=wibox.widget.textbox
}

return wordofthedaywidget
