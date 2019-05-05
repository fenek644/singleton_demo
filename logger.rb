require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open "log.txt", 'a'
  end

  # @@x = Logger.new
  #
  # def self.instance
  #   @@x
  # end

  def log_smth what
    @f.puts what
  end

  # private_class_method :new

end
