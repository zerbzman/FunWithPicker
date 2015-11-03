# FunWithPicker
A chance to play around with fonts and images, all in a WatchOS2 picker app

For this next wearable assignment, we are going to combine several tutorials in to one fantastic application.

Here is the list of tutorials:  
1. [An intro to the WKPicker](http://techotopia.com/index.php/An_Introduction_to_the_watchOS_2_WatchKit_WKInterfacePicker_Object)  
2. [A WKPicker Tutorial](http://techotopia.com/index.php/A_watchOS_2_WatchKit_Picker_Tutorial)  
3. [A coordinated animation tutorial](http://techotopia.com/index.php/A_WatchKit_WKInterfacePicker_Coordinated_Animation_Example)  
4. [A custom font tutorial](http://techotopia.com/index.php/A_watchOS_2_App_Custom_Font_Tutorial)  

Your assignment is as follows:  

Create a watchkit app with the following features on the watch.  
* Display a background animation of a circular arc.  
[here is the link to the image generator](http://hmaidasani.github.io/RadialChartImageGenerator/)  
* Display a foreground picker that shows a numerical sequence.  
* Coordinate the background with the picker foreground  
* When the user chooses a picker value, show the spelled out value in a label. The text of the label should use a custom font.   

> let formatter = NSNumberFormatter()  
   formatter.numberStyle = NSNumberFormatterStyle. SpellOutStyle  
   println("\(identifier) \(formatter.stringFromNumber(1234.5678))")
   
Fork this project and then create an IOS Watchkit App on your Mac.  Finish the project, push it, and create a pull request.  