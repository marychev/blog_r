class ClearTmp
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  attr_accessor :path

  def initalize()
    @path = "/tmp/"
  end

  def perform(filename)
    FileUtils.rm Dir.glob("#{@path}#{filename}*")
  end

  def self.show_tmp(filename=nil)
    if filename 
      Dir["#{@path}#{filename}*"].to_s
    else
      Dir["#{@path}*"].to_s 
    end
  end

end