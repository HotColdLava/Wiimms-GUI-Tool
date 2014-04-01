#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  #If TargetMacOS or TargetLinux Then
		    WszstPath = "/usr/local/bin/wszst"
		    HelpSettings.Text = "Preferences"
		  #ElseIf TargetWin32
		    WszstPath = "wszst"
		    HelpSettings.Text = "Settings"
		  #Endif
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Shared Untitled As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared WszstPath As String
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
