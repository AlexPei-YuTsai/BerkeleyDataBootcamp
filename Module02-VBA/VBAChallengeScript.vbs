Sub uwu()
    For Each Page In Worksheets
    
        'Initialization: Get on the current worksheet
        Page.Activate
        
        'In case data is unorganized, sort everything so the following code can work without issues
        'Data special-sorted by Ticker name (alphabetical order) then Date (least to greatest)
        Page.Sort.SortFields.Clear
        Page.Sort.SortFields.Add2 Key:=Range( _
            "A2:A" & Range("A2").End(xlDown).Row), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:= _
            xlSortNormal
        Page.Sort.SortFields.Add2 Key:=Range( _
            "B2:B" & Range("A2").End(xlDown).Row), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:= _
            xlSortTextAsNumbers
        With Page.Sort
            .SetRange Range("A1:G" & Range("A2").End(xlDown).Row)
            .Header = xlYes
            .MatchCase = False
            .Orientation = xlTopToBottom
            .SortMethod = xlPinYin
            .Apply
        End With
        
        'Transcribing code: Initialize Summary Table Headers
        Range("I1").Value = "Ticker"
        Range("J1").Value = "Yearly Change"
        Range("K1").Value = "Percent Change"
        Range("L1").Value = "Total Stock Volume"
        
        j = 2 'Counter for summary table
        
        'Looping through all rows in RAW data
        For i = 2 To Range("A2").End(xlDown).Row
            'Initialize Row Data
            Range("I" & j).Value = Range("A" & i).Value 'Set Ticker Name
            Range("J" & j, "K" & j).Value = Range("C" & i).Value 'Set opening price of first day for both columns: one will be subtracted, another will be used as a denominator
            Range("L" & j).Value = Range("G" & i).Value 'In case there's only one recorded day, set that as the total stock volume
            
            'Works because of how the data is sorted:
            'Each block of data MUST share the same Ticker, the top row MUST have the smallest date, and the bottom row MUST have the greatest date
            
            Do Until Range("A" & i).Value <> Range("A" & i + 1).Value
                'Until we reach the next block of data (different Ticker Name reached), increase iterator and grab all the stock volume data
                i = i + 1
                Range("L" & j).Value = Range("L" & j).Value + Range("G" & i).Value
            Loop
            
            'At this point, we should be on the last row of the current block of data (last day of Ticker's recorded data)
            Range("J" & j).Value = Range("F" & i).Value - Range("J" & j).Value 'Close price of last day - Open price of first day
            Range("K" & j).Value = Range("J" & j).Value / Range("K" & j).Value 'The number from the previous line / Open price of first day
            
            'Go to next summary table row before moving to next block of data
            j = j + 1
        Next i
        
        'Percent Column to Percent Format
        Columns("K:K").Select
        Selection.NumberFormat = "0.00%"
        
        'Manually set conditional formatting to Yearly Change Column
        Range("J2:J" & Range("J1").End(xlDown).Row).Select
        Selection.FormatConditions.Add Type:=xlCellValue, Operator:=xlGreater, _
            Formula1:="=0"
        Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority
        With Selection.FormatConditions(1).Font
            .Bold = True
            .Italic = False
            .ThemeColor = xlThemeColorDark1
            .TintAndShade = 0
        End With
        With Selection.FormatConditions(1).Interior
            .PatternColorIndex = xlAutomatic
            .Color = 5287936
            .TintAndShade = 0
        End With
        Selection.FormatConditions(1).StopIfTrue = False
        Selection.FormatConditions.Add Type:=xlCellValue, Operator:=xlLess, _
            Formula1:="=0"
        Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority
        With Selection.FormatConditions(1).Font
            .Bold = True
            .Italic = False
            .ThemeColor = xlThemeColorDark1
            .TintAndShade = 0
        End With
        With Selection.FormatConditions(1).Interior
            .PatternColorIndex = xlAutomatic
            .Color = 192
            .TintAndShade = 0
        End With
        Selection.FormatConditions(1).StopIfTrue = False
        
        'Summarizing the Summary Table: Initialize data labels
        Range("O2").Value = "Greatest Percent INCREASE"
        Range("O3").Value = "Greatest Percent DECREASE"
        Range("O4").Value = "Greatest Total Volume"
        Range("P1").Value = "Ticker"
        Range("Q1").Value = "Value"
        
        'Sort by Percent Change: Top row will have greatest change, bottom row will have smallest change
        Page.Sort.SortFields.Clear
        Page.Sort.SortFields.Add2 Key:=Range("K2:K" & Range("K2").End(xlDown).Row), _
            SortOn:=xlSortOnValues, Order:=xlDescending, DataOption:=xlSortNormal
        With Page.Sort
            .SetRange Range("I1:L" & Range("L2").End(xlDown).Row)
            .Header = xlYes
            .MatchCase = False
            .Orientation = xlTopToBottom
            .SortMethod = xlPinYin
            .Apply
        End With
        
        'Percent Data Entries
        Range("P2").Value = Range("I2").Value
        Range("Q2").Value = Range("K2").Value
        Range("P3").Value = Range("I" & Range("I2").End(xlDown).Row).Value
        Range("Q3").Value = Range("K" & Range("I2").End(xlDown).Row).Value
        
        'Sort by Total Volume: Top row will have greatest change, bottom row will have smallest change
        Page.Sort.SortFields.Clear
        Page.Sort.SortFields.Add2 Key:=Range("L2:L" & Range("L2").End(xlDown).Row), _
            SortOn:=xlSortOnValues, Order:=xlDescending, DataOption:=xlSortNormal
        With Page.Sort
            .SetRange Range("I1:L" & Range("L2").End(xlDown).Row)
            .Header = xlYes
            .MatchCase = False
            .Orientation = xlTopToBottom
            .SortMethod = xlPinYin
            .Apply
        End With

        'Total Volume Data Entry
        Range("P4").Value = Range("I2").Value
        Range("Q4").Value = Range("L2").Value

        'Sort: Back to Normal
        Page.Sort.SortFields.Clear
        Page.Sort.SortFields.Add2 Key:=Range("I2:I" & Range("I2").End(xlDown).Row), _
            SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:=xlSortNormal
        With Page.Sort
            .SetRange Range("I1:L" & Range("L2").End(xlDown).Row)
            .Header = xlYes
            .MatchCase = False
            .Orientation = xlTopToBottom
            .SortMethod = xlPinYin
            .Apply
        End With
        
        'Clean everything up
        Columns("A:Q").EntireColumn.AutoFit
        Columns("J:J").Select
        Selection.NumberFormat = "0.00"
        Range("Q2:Q3").NumberFormat = "0.00%"
        
    Next Page
    Worksheets(1).Activate
    Range("A1").Select
End Sub
