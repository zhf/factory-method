# Protocol: Email
class AnotherObject; end

class Email < AnotherObject
  $handlers[:email] = self
  def self.send_message msg
    puts msg
  end
end
