#!/usr/bin/ruby

require 'rubyserial'

class McuSerialCom
    attr_accessor :port, :baudrate, :word_len, :parity # getter & setter
    
    VALID_BAUDRATES = [300, 1200, 2400, 4800, 9600, 14400, 19200, 
                        38400, 57600, 115200, 230400, 460800, 921600]

    def initialize(port, baudrate, word_len, parity) 
        @port = port
        @baudrate = baudrate
        @word_len = word_len
        @parity = parity
    end

    def connect()

        #TODO: ADD CHECK FOR PORT NAMES

        # validate inputs and assign default value according to docs if input parameters are bad:       
        @baudrate = 9600 unless VALID_BAUDRATES.include?(@baudrate)

        unless [7,8,9].include?(@word_len)
            @word_len = 8
        end

        unless [:none, :even, :odd].include?(@parity)
            @parity = :none
        end

        # Try connecting
        begin
            @serial_port = Serial.new(@port, @baudrate, @word_len, @parity) # default settings baud=9600, 8bits, no parity
        rescue StandardError => e
            puts "Error connecting to serial port: #{e.message}"
        end
    end

    def disconnect()
        
        if @serial_port
            @serial_port.close
            @serial_port = nil
            puts "Serial port was closed."
        end
    end
end


