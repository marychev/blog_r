require 'rubygems/package'
require 'zlib'
require 'open3'


archivename     = "small_archive_workspace.tar.gz"
archivedirname  = "small_archive_workspace"

puts "Compress the `#{archivedirname}`` directory to #{archivename}"

# tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
cmd = "tar -czvf #{archivename} #{archivedirname}"

Open3.popen3(cmd) do |stdin, stdout, stderr|
    puts stdin, stdout, stderr
end
puts "Done"


# !!!!!!!!!!!!!!!!!!!
# require 'zlib' 
# require 'open-uri'
# uri = "www.oneoneone.com/filename.gz"
# source = open(uri)
# gz = Zlib::GzipReader.new(source) 
# result = gz.read
# puts result

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# tar = StringIO.new
# Gem::Package::TarWriter.new(tar) do |writer|
#     writer.add_file("hello_world.txt", 0644) { |f| f.write("Hello world!\n") }
# end

