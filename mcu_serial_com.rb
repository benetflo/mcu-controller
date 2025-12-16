#!/usr/bin/ruby

#input_args = ARGV

#fileObj = File.new(input_args[0], "r")

#puts File.read(input_args[0])

require 'rubyserial'

class McuSerialCom
    attr_accessor :port, :baudrate # getter & setter
    
    def initialize(port, baudrate) 
        @port = port
        @baudrate = baudrate
    end



end


