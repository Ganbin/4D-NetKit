/*
<summary>
Logger Interface class that can log messages
</summary>
<remarks>
This class cannot be used directly and need to be instantiated by the `LoggerFactory`.

It will use the loggers given by the `LoggerFactory` to log in the appropriate channels.
</remarks>
*/
Class constructor()
	This:C1470.logLevel:=""
	This:C1470._levels:=New collection:C1472()
	
	This:C1470._loggers:=New collection:C1472()  // collection of logger provider
	This:C1470._context:=""
	
	
/*
<summary>
Set the level of the log
</summary>
<param name="$level">Can be : critical, error, warning, info, debug, trace</param>
*/
Function setLevel($level : Text)
	
	
/*
<summary>
Set the context of the log
</summary>
<param name="$context">Can be anything string that represent the current context. Generally the name of the current class.</param>
*/
Function setContext($context : Text)
	
	
/*
<summary>
Test if the given log level is currently actif
</summary>
<param name="$level">level to test according to the current logLevel</param>
<returns>True/False depending if the log level is actif</returns>
*/
Function isLogLevelEnabled($level : Text)->$isEnabled : Boolean
	
	
/*
<summary>
Serialize a log message.
</summary>
<param name="$message">message to serialize</param>
<param name="$data">data for the serialization</param>
<returns>serialized message</returns>
<remarks>
A message can contain some placeholders (Ex. "{name}") that will be replaced by the data given in the `$data` parameter.
	
Ex.
  "Retrieved {count} records", { "count" : 12 }
  "Retrieved 12 records"
</remarks>
*/
Function _serializeMessage($message : Text; $data : Object)->$serializedMessage : Text
	
	
/*
<summary>
Main log function
</summary>
<param name="$level">Level of the log</param>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
<remarks>
Will use the `log` function of the loggers.
</remarks>
*/
Function log($level : Text; $message : Text; $dataOptional : Object)
	
	
/*
<summary>
Log a message with trace level
</summary>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
*/
Function trace($message : Text; $dataOptional : Object)
	
	
/*
<summary>
Log a message with debug level
</summary>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
*/
Function debug($message : Text; $dataOptional : Object)
	
	
/*
<summary>
Log a message with info level
</summary>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
*/
Function info($message : Text; $dataOptional : Object)
	
	
/*
<summary>
Log a message with warning level
</summary>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
*/
Function warning($message : Text; $dataOptional : Object)
	
	
/*
<summary>
Log a message with error level
</summary>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
*/
Function error($message : Text; $dataOptional : Object)
	
	
/*
<summary>
Log a message with critical level
</summary>
<param name="$message">Message to be logged. Can be serialized.</param>
<param name="$dataOptional">Optional. Data to use for serialization</param>
*/
Function critical($message : Text; $dataOptional : Object)
	