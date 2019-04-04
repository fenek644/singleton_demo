class Logger
  def initialize
    @f = File.open 'log', 'a'
    @@x = nil
  end
  def self.say_foo
    puts "foo"
  end

  def self.instance
    @@x ||= Logger.new
    return @@x
  end

  def log_smth wat
    @f.puts wat
  end
end


Logger.say_foo
Logger.instance.log_smth 'ah'
Logger.instance.log_smth 'ah, ah'
# logger = Logger.new
# logger.log_smth 'wat'

