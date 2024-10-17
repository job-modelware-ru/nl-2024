#________________________________________________
# 12 slide (read from file)
#________________________________________________

print 'Введите, пожалуйста, имя файла '
filename = gets.chomp
$stdin = File.open(filename)
puts gets('$$')
