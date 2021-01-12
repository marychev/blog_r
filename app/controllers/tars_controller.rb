require 'open-uri'
require "tempfile"


class TarsController < ApplicationController

  SMALL_ARCHIVE_LINK  = "https://homebio.ru/static/small_archive_workspace.tar.gz"
  BIG_ARCHIVE_LINK    = "https://homebio.ru/static/archive_workspace.tar.gz"
  
  def index
  end

  def show
    render plain: "Show!", status: 200
  end

  def download
    Tempfile.open(generate_name()) do |tmp|
      open(SMALL_ARCHIVE_LINK) do |remote_file|
        tmp << Zlib::GzipReader.new(remote_file).read
        send_file(tmp, :type => 'application/tar+gzip', :filename => generate_name(), :disposition => 'attachment')
      end
    end

    ClearTmp.perform_async(generate_name())
  end

  def show_tmp
    render plain: ClearTmp.show_tmp(generate_name()), status: 200
  end

  def clear_tmp
    ClearTmp.perform_async(generate_name())
    render plain: ClearTmp.show_tmp(generate_name())
  end

  def download_small_local
    download_to_dir(SMALL_ARCHIVE_LINK)
    msg = "Small archive #{generate_name()} was success download on the local machine into `Drive/` dir"
    render plain: "#{msg}\n\r#{ClearTmp.show_tmp}", status: 200
  end


  private

  def generate_name
    "RENAMED.tar.gz"
  end

  def download_to_dir(uri)
    open(uri) do |f|
      File.open("Drive/#{generate_name()}", "wb") do |file|
        file.write(f.read)
      end
    end
  end
  
end
