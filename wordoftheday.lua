-- Word of the day widget for AwesomeWM
-- By Tom England
-- Provided as is
-- For word list, try words on Arch or wordlist on debian/ubuntu

local wibox = require("wibox")

local function open_file(filename)
	file = io.open(filename)
	io.input(file)
	return file
end

local function get_word()
	return 'test'
end

local wordofthedaywidget = wibox.widget{
	text=get_word(),
	align='center',
	valign='center',
	widget=wibox.widget.textbox
}

return wordofthedaywidget
