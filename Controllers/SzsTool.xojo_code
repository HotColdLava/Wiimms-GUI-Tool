#tag Class
Protected Class SzsTool
	#tag Method, Flags = &h0
		Sub Check(TheFile As String)
		  Dim CheckFile As New Shell
		  CheckFile.Execute(App.WszstPath, "check" + " " + TheFile)
		  TheOutput = CheckFile.ReadAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Create(TheFile As String)
		  Dim Create As New Shell
		  Create.Execute(App.WszstPath, "create" + " " + TheFile + " " + "--dest" + " " + TheFile + "." + WguitWindow.FileFormatPopup.Text.Lowercase)
		  TheOutput = Create.ReadAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Extract(TheFile As String)
		  Dim Extract As New Shell
		  Extract.Execute(App.WszstPath, "extract" + " " + TheFile)
		  TheOutput = Extract.ReadAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExtractAll(TheFile As String)
		  Dim ExtractAll As New Shell
		  ExtractAll.Execute(App.WszstPath, "extract" + " " + "--all" + " " + TheFile)
		  TheOutput = ExtractAll.ReadAll
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
