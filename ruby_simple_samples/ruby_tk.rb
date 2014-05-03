
require 'tk'
TkLabel.new {
	text "Hello, World"
	bg "red"
	pack
}
TkButton.new {
	text "Close"
	command {exit}
	pack
}
Tk.mainloop