# This object will contains all operation related to
# 'a feature'
#
# Most of the time it will be initalized using the same parameter
# but some Class operation can also reside here, for instance,
# to get the list of all pending operation or whatever....
#
# What is mostly in use case today should be located here,
# as long as it don't break the "dont' bring external dependency" rule
#
class ObjetMetier
   def initialize params
       @val1=params.fecth(:toto)
       @val2=params.fecth(:titi)
   end

   def mon_operation
      puts "simple operation"
   end

   def do_something_smart
      puts "do something smart"
   end

   # something that is not requiring an existing instance
   def self.operation_not_based_on_existing_instance
   end

end
