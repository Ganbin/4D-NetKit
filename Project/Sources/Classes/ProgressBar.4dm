/*
Wrapper class for the Progress Bar 4D component
Doc: https://doc.4d.com/4Dv19R4/4D/19-R4/4D-Progress.100-5807232.en.html
*/
Class constructor()
	This:C1470.ref:=0
	
	
/*
show($title; $progress; $message)
	
Display a progress bar with a title, a progress and a message.
Set to front
*/
Function show($title; $progress; $message)
	If (This:C1470.ref=0)
		This:C1470.ref:=Progress New()
	End if 
	
	Progress SET TITLE(This:C1470.ref; $title; $progress; $message; True:C214)
	
	
/*
update($progress; $message)
	
Update the message of a progressbar
*/
Function update($progress; $message)
	If (This:C1470.ref=0)
		This:C1470.ref:=Progress New()
	End if 
	
	Progress SET PROGRESS(This:C1470.ref; $progress; $message)
	
	
/*
setIcon($iconPath : Text)
Set the icon of the current progress bar. It must exist already
*/
Function setIcon($iconPath : Text)
	If (This:C1470.ref#0)
		$iconPath:=Replace string:C233($iconPath; "/"; Folder separator:K24:12)
		If (Is picture file:C1113($iconPath))
			var $icon : Picture
			READ PICTURE FILE:C678($iconPath; $icon)
			If (Picture size:C356($icon)>0)
				Progress SET ICON(This:C1470.ref; $icon)
			End if 
		End if 
	End if 
	
	
/*
setStopButton($activateStopButton : Boolean)
	
Activate or deactivate the stop button
*/
Function setStopButton($activateStopButton : Boolean)
	If (This:C1470.ref#0)
		Progress SET BUTTON ENABLED(This:C1470.ref; $activateStopButton)
	End if 
	
	
/*
isStopped()->$isStopped : Boolean
	
Return `True` if the progress bar was stopped using the stop button
*/
Function isStopped()->$isStopped : Boolean
	If (This:C1470.ref#0)
		$isStopped:=Progress Stopped(This:C1470.ref)
	End if 
	
	
/*
Close a progress bar
*/
Function close()
	If (This:C1470.ref#0)
		Progress QUIT(This:C1470.ref)
		This:C1470.ref:=0
	End if 