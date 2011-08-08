$LOAD_PATH.unshift File.dirname(__FILE__)

require 'logger'
require 'stringio'

require 'ffmpeg/version'
require 'ffmpeg/audio_stream'
require 'ffmpeg/video_stream'
require 'ffmpeg/subtitle'
require 'ffmpeg/movie'
require 'ffmpeg/transcoder'
require 'ffmpeg/encoding_options'
 
module FFMPEG
  # FFMPEG logs information about its progress when it's transcoding.
  # Jack in your own logger through this method if you wish to.
  #
  # @param [Logger] log your own logger
  # @return [Logger] the logger you set
  def self.logger=(log)
    @logger = log
  end
  
  # Get FFMPEG logger.
  #
  # @return [Logger]
  def self.logger
    return @logger if @logger
    logger = Logger.new(STDOUT)
    logger.level = Logger::INFO
    @logger = logger
  end
end
