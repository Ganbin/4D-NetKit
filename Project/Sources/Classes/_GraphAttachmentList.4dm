Class extends _GraphBaseList

Class constructor($inMail : cs:C1710._GraphMail; $inProvider : cs:C1710.OAuth2Provider; $inURL : Text; $inHeaders : Object)
	
	Super:C1705($inProvider; $inURL; $inHeaders)
	This:C1470._internals._mail:=$inMail
	This:C1470._internals._attachments:=Null:C1517
	
	// ----------------------------------------------------
	
	
Function get attachments() : Collection
	
	If (This:C1470._internals._attachments=Null:C1517)
		var $object : Object
		var $mail : cs:C1710._GraphMail
		var $provider : cs:C1710.OAuth2Provider
		
		$provider:=This:C1470._internals._OAuth2Provider
		
		This:C1470._internals._attachments:=New collection:C1472
		For each ($object; This:C1470._internals.list)
			$mail:=cs:C1710._GraphAttachment.new($provider; New object:C1471("userId"; This:C1470._internals._mail.userId))
			$mail._loadFromObject($object)
			This:C1470._internals._attachments.push($mail)
		End for each 
	End if 
	
	return This:C1470._internals._attachments
	