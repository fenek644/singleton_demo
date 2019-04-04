class Logger
def initialize
  @f = File.open 'log', 'a'
  @@x = nil
end

@@x ||= Logger.new

def self.instance
  return @@x
end

def log_smth wat
  @f.puts wat
end

private_class_method :new
end