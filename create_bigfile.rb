filename = "bigfile.log"
file = File.new(filename, 'wb')

if file.stat.size == 0
    puts "writing at file ... wait for end or press `CTR + C` to stop"

    i = 0
    # 50000000 ~= 5.5Gb
    until i >= 50000000
      i += 1
      # next unless (i%2)==1
      file.write("new stringnew stringnew stringnew stringnew stringnew stringnew stringnew stringnew stringnew str new string\r")
    end
    
    puts "File size: #{file.stat.size} KB"

else
    puts "BIG FILE EXISTS!"
    puts "File size: #{file.stat.size} KB"
end