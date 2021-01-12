require 'open-uri'
require 'zlib'
require 'fileutils'


SMALL_ARCHIVE_LINK = "https://homebio.ru/static/small_archive_workspace.tar.gz"
BIG_ARCHIVE_LINK = "https://homebio.ru/static/archive_workspace.tar.gz"

puts Dir["/tmp/*"]

FileUtils.rm Dir.glob("/tmp/RENAMED.tar.gz*")
puts ' ______________'

puts Dir["/tmp/*"]



# WORK - 1
# open('ARCHIVE.tar.gz', 'wb') do |local_file|
#     open(SMALL_ARCHIVE_LINK) do |remote_file|
#       local_file.write(Zlib::GzipReader.new(remote_file).read)
#     end
# end