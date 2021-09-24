-- Word of the day widget for AwesomeWM
-- By Tom England
-- Provided as is
-- For word list, try words on Arch or wordlist on debian/ubuntu

local wibox = require("wibox")

local function open_file(filename)
	file = io.open(filename)
	return file
end

local function get_lines_in_file(filename)
	file = open_file(filename)
	t = file:read("*a")
	_,n = t:gsub("\n","")
	return n
end

local function get_date()
		return os.date("%d%m%Y")
end

local function hash_date(date, lines)
		return date % lines
end

local function get_word(file, hash)
	io.input(io.open(file))
	for i=0, hash, 1
		do
			io.read()
	end
	line = io.read()
	io.close()
	return line
end

local filename = "/usr/share/dict/words"

local wordofthedaywidget = wibox.widget{
		text=get_word(filename, hash_date(get_date(), get_lines_in_file(filename))),
		align='center',
		valign='center',
		widget=wibox.widget.textbox
	}

return wordofthedaywidget
