Sub RenameColumns()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("Sheet1")  ' Change to your sheet name
    
    Dim colMap As Object
    Set colMap = CreateObject("Scripting.Dictionary")
    
    ' Map old column names to new column names
    colMap.Add "Timestamp", "Survey_Date"
    colMap.Add "Age", "Respondent_Age"
    colMap.Add "Gender", "Respondent_Gender"
    colMap.Add "Country", "Respondent_Country"
    colMap.Add "stress_level", "Stress_Score"
    colMap.Add "anxiety_level", "Anxiety_Score"
    colMap.Add "depression_level", "Depression_Score"
    
    Dim lastCol As Long
    lastCol = ws.Cells(1, ws.Columns.Count).End(xlToLeft).Column
    
    Dim i As Long, oldName As String
    For i = 1 To lastCol
        oldName = ws.Cells(1, i).Value
        If colMap.Exists(oldName) Then
            ws.Cells(1, i).Value = colMap(oldName)
        End If
    Next i
    
    MsgBox "Columns renamed successfully!"
End Sub
