f = 'test.txt'

if File.exist?(f) then
  puts File.expand_path(f)
  puts File.basename(f)
  puts File.dirname(f)
  puts File.extname(f)
  puts File.mtime(f)
end