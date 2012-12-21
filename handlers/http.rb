# Protocol: HTTP

class AnyObject; end

class HTTP < AnyObject
  $handlers[:http] = self
  def self.send_message msg
    puts "handling request with class method:"
    puts msg
  end
end

class HTTPS < AnyObject
  $handlers[:https] = self.new
  attr_accessor :use_ssl
  def send_message msg
    @use_ssl = true
    puts "handling request with instance method:"
    puts msg
    puts "SSL: #{@use_ssl}"
  end
end
