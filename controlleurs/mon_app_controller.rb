
# This will be included in the main sinatra module
#
# Should contain all operation linked to user command
# Code here should be minimum (less then 15 lines/operation)
# complex operations usually are part of ObjetMetier, and complex operation
# that require multiple depdendencies could require the creation of a use case
#
#
module MonAppController
   app.get "#{MonController}/mon_operation"
        obj=ObjetMetier.new(params)
        obj.mon_operation
   end

   app.post "#{MonController}/operation_un_peu_complexe"
        obj=ObjetMetier.new(params)
        Email.update(obj.do_something_smart)
   end

   app.post "#{MonController}/operation_tres_complexe"
   	    obj=ObjetMetier.new(params)
   	    result=new ComplexUseCase.new(obj,UtilityObject1.new,UtiliyObject2.new).execute

   end

end



