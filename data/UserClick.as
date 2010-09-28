package data{
   
 
   import flash.events.Event;
 
   public class UserClick extends Event {
     
      public static const CUSTOM:String = "custom";
     
      public var name:String;
     
      public function UserClick(type:String,
								  name:String="",
                                  bubbles:Boolean=false,
                                  cancelable:Boolean=false) {
         
         super(type, bubbles, cancelable);
         
         this.name = name;
         
      }
           
      public override function clone():Event {
         return new UserClick(type, name, bubbles, cancelable);
      }
     
      public override function toString():String {
         return formatToString("CustomEvent", "type", "arg",
                               "bubbles", "cancelable", "eventPhase");
      }
   
   }
 
}