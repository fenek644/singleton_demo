require 'singleton'

class Logger
   include Singleton

   def initialize
     @f = File.open 'log', 'a'
   end

   def log_smth wat
     @f.puts wat
     @f.flush
   end

end