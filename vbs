Sub ОбъединитьСтолбцы()
    Dim lastRow As Long
    Dim i As Long, j As Long
    Dim result As String
    
    lastRow = Cells(Rows.Count, 1).End(xlUp).Row
    
    For i = 1 To lastRow
        result = "" ' Обнуляем результат для каждой строки
        For j = 1 To 19 ' Столбцы A (1) до S (19)
            If Cells(i, j).Value <> "" Then
                result = result & Cells(i, j).Value & ";"
            End If
        Next j
        
        ' Удаляем последний лишний разделитель
        If Len(result) > 0 Then
            result = Left(result, Len(result) - 1)
        End If
        
        Cells(i, 20).Value = result ' Записываем в столбец T
    Next i
End Sub
