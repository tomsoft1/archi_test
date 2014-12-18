
Attempt to better define organisation of the frontend, and especially separation between "controllers", the introduction 
of business object, and the limited use of use cases

Basically, separation is here:

* controller should contain code needed to answer to user (frontend) request and should not contains 'long' procedure . They could contains small 'plumbing' code, for instance asking business object something and then sending this to another service.

* complex operation linked to the feature are in a business object, as long as they do not introduce dependencies

* if operation are too long to reside in controller, or if they need to be reused we can introduce a "use case"


* view class: don't work too much on this, but idea of view is the same, most of the time they are not needed, only template is enough but if we need to do more formatting work based on previous result, we can introduce a ViewData. 
