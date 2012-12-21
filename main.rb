$handlers = {}

Dir[File.dirname(__FILE__) + '/handlers/*.rb'].each {|handler| require handler }

puts "All registered handlers:"
puts $handlers

request = { :email => "email message", :http => "http message", :https => "secure message" }
puts "\nHandling the request:\n\n"

request.each_pair do |key, value|
  handler = $handlers[key]
  if handler.respond_to? :send_message
    handler.send_message value
    puts
  end
end