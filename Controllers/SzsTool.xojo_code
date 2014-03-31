#tag Class
Protected Class SzsTool
	#tag Method, Flags = &h0
		Sub AllExtract(TheFile As String)
		  Dim TheShell As New Shell
		  TheShell.Execute(App.WszstPath, "extract" + " " + "--all" + " " + TheFile)
		  TheOutput = TheShell.ReadAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Extract(TheFile As String)
		  Dim TheShell As New Shell
		  TheShell.Execute(App.WszstPath, "extract" + " " + TheFile)
		  TheOutput = TheShell.ReadAll
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Shared TheOutput As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
