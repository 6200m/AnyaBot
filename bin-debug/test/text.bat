(echo New Line 1) >file.txt.new
type file.txt >>file.txt.new
move /y file.txt.new file.txt