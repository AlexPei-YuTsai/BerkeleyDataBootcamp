Attribute VB_Name = "Module1"
Sub uwu()
    'Initialize Data Charts where they should be and ASSUME people clicked Data>Sort> and special-sorted things to order everything by ticker name and then date (conveniently from least to greatest)
    'TODO: Row 1 subheaders
    j = 2
    For i = 2 To Range("A2").End(xlDown).Row
        Range("S" & j).Value = Range("A" & i).Value 'Ticker name
        Range("T" & j, "U" & j).Value = Range("C" & i).Value 'Change and %change
        Range("V" & j).Value = Range("G" & i).Value 'Total stock
        Do Until Range("A" & i).Value <> Range("A" & i + 1).Value
            i = i + 1
            Range("V" & j).Value = Range("V" & j).Value + Range("G" & i).Value
        Loop
        Range("T" & j).Value = Range("F" & i).Value - Range("T" & j).Value 'Close price
        Range("U" & j).Value = Range("T" & j).Value / Range("U" & j).Value
        j = j + 1
    Next i
    Debug.Print ("Reached row " + Str(i))
End Sub
