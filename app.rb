class Logger
  def initialize
    @f = File.open "log.txt", 'a'
  end
  def self.say_smth
    puts 'something'
  end
  def log_smth what
    # f = File.open 'log.txt', 'a'
    @f.puts what
    # f.close
  end

end


Logger.say_smth
# Logger.log_smth "Loren ipsum"

log = Logger.new
log.log_smth "Loren"

