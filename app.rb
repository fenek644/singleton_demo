class Logger
  def initialize
    @f = File.open 'log', 'a'
  end
  def self.say_foo
    puts "foo"
  end

  def log_smth wat
    @f.puts wat
  end
end


Logger.say_foo
logger = Logger.new
logger.log_smth 'wat'

