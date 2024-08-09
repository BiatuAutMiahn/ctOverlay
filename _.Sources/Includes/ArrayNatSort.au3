; #FUNCTION# ====================================================================================================================
; Name...........: _ArrayNaturalSort
; Description ...: Sort a 1D or 2D array on a specific index using the quicksort/insertionsort algorithms.
; Syntax.........: _ArrayNaturalSort(ByRef $avArray[, $iDescending = 0[, $iStart = 0[, $iEnd = 0[, $iSubItem = 0]]]])
; Parameters ....: $avArray     - Array to sort
;                  $iDescending - [optional] If set to 1, sort descendingly
;                  $iStart      - [optional] Index of array to start sorting at
;                  $iEnd        - [optional] Index of array to stop sorting at
;                  $iSubItem    - [optional] Sub-index to sort on in 2D arrays
; Return values .: Success - 1
;                  Failure - 0, sets @error:
;                  |1 - $avArray is not an array
;                  |2 - $iStart is greater than $iEnd
;                  |3 - $iSubItem is greater than subitem count
;                  |4 - $avArray has too many dimensions
;                  |5 - Invalid sort function
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......; No
; ===============================================================================================================================
Func _ArrayNaturalSort(ByRef $avArray, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
    Return _ArrayCustomSort($avArray, "_NaturalCompare", $iDescending, $iStart, $iEnd, $iSubItem)
EndFunc   ;==>_ArrayNaturalSort

#include-once
#include <Array.au3>

; #FUNCTION# ====================================================================================================================
; Name ..........: _ArrayCustomSort
; Description ...: Sort a 1D or 2D array on a specific index using the quicksort/insertionsort algorithms, based on a custom sorting function.
; Syntax ........: _ArrayCustomSort(Byref $avArray, $sSortFunc[, $iDescending = 0[, $iStart = 0[, $iEnd = 0[, $iSubItem = 0]]]])
; Parameters ....: $avArray             - [in/out] Array to sort
;                  $sSortFunc           - Name of custom sorting function. See Remarks for usage.
;                  $iDescending         - [optional] If set to 1, sort descendingly
;                  $iStart              - [optional] Index of array to start sorting at
;                  $iEnd                - [optional] Index of array to stop sorting at
;                  $iSubItem            - [optional] Sub-index to sort on in 2D arrays
; Return values .: Success - 1
;                  Failure - 0, sets @error:
;                  |1 - $avArray is not an array
;                  |2 - $iStart is greater than $iEnd
;                  |3 - $iSubItem is greater than subitem count
;                  |4 - $avArray has too many dimensions
;                  |5 - Invalid sort function
; Author ........: Erik Pilsits
; Modified ......: Erik Pilsits - removed IsNumber testing, LazyCoder - added $iSubItem option, Tylo - implemented stable QuickSort algo, Jos van der Zande - changed logic to correctly Sort arrays with mixed Values and Strings, Ultima - major optimization, code cleanup, removed $i_Dim parameter
; Remarks .......: Sorting function is called with two array elements as arguments. The function should return
;                  0 if they are equal,
;                  -1 if element one comes before element two,
;                  1 if element one comes after element two.
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func _ArrayCustomSort(ByRef $avArray, $sSortFunc, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
    If Not IsArray($avArray) Then Return SetError(1, 0, 0)
    If Not IsString($sSortFunc) Then Return SetError(5, 0, 0)

    Local $iUBound = UBound($avArray) - 1

    ; Bounds checking
    If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
    If $iStart < 0 Then $iStart = 0
    If $iStart > $iEnd Then Return SetError(2, 0, 0)

    ; Sort
    Switch UBound($avArray, 0)
        Case 1
            __ArrayCustomQuickSort1D($avArray, $sSortFunc, $iStart, $iEnd)
            If $iDescending Then _ArrayReverse($avArray, $iStart, $iEnd)
        Case 2
            Local $iSubMax = UBound($avArray, 2) - 1
            If $iSubItem > $iSubMax Then Return SetError(3, 0, 0)

            If $iDescending Then
                $iDescending = -1
            Else
                $iDescending = 1
            EndIf

            __ArrayCustomQuickSort2D($avArray, $sSortFunc, $iDescending, $iStart, $iEnd, $iSubItem, $iSubMax)
        Case Else
            Return SetError(4, 0, 0)
    EndSwitch

    Return 1
EndFunc   ;==>_ArrayCustomSort

; #INTERNAL_USE_ONLY#============================================================================================================
; Name...........: __ArrayCustomQuickSort1D
; Description ...: Helper function for sorting 1D arrays
; Syntax.........: __ArrayCustomQuickSort1D(ByRef $avArray, ByRef $sSortFunc, ByRef $iStart, ByRef $iEnd)
; Parameters ....: $avArray   - Array to sort
;                  $sSortFunc - Name of sorting function.
;                  $iStart    - Index of array to start sorting at
;                  $iEnd      - Index of array to stop sorting at
; Return values .: None
; Author ........: Jos van der Zande, LazyCoder, Tylo, Ultima
; Modified.......: Erik Pilsits - removed IsNumber testing
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func __ArrayCustomQuickSort1D(ByRef $avArray, ByRef $sSortFunc, ByRef $iStart, ByRef $iEnd)
    If $iEnd <= $iStart Then Return

    Local $vTmp

    ; InsertionSort (faster for smaller segments)
    If ($iEnd - $iStart) < 15 Then
        Local $i, $j
        For $i = $iStart + 1 To $iEnd
            $vTmp = $avArray[$i]
            For $j = $i - 1 To $iStart Step -1
                If (Call($sSortFunc, $vTmp, $avArray[$j]) >= 0) Then ExitLoop
                $avArray[$j + 1] = $avArray[$j]
            Next
            $avArray[$j + 1] = $vTmp
        Next
        Return
    EndIf

    ; QuickSort
    Local $L = $iStart, $R = $iEnd, $vPivot = $avArray[Int(($iStart + $iEnd) / 2)]
    Do
        While (Call($sSortFunc, $avArray[$L], $vPivot) < 0)
            $L += 1
        WEnd
        While (Call($sSortFunc, $avArray[$R], $vPivot) > 0)
            $R -= 1
        WEnd

        ; Swap
        If $L <= $R Then
            $vTmp = $avArray[$L]
            $avArray[$L] = $avArray[$R]
            $avArray[$R] = $vTmp
            $L += 1
            $R -= 1
        EndIf
    Until $L > $R

    __ArrayCustomQuickSort1D($avArray, $sSortFunc, $iStart, $R)
    __ArrayCustomQuickSort1D($avArray, $sSortFunc, $L, $iEnd)
EndFunc   ;==>__ArrayCustomQuickSort1D

; #INTERNAL_USE_ONLY#============================================================================================================
; Name...........: __ArrayCustomQuickSort2D
; Description ...: Helper function for sorting 2D arrays
; Syntax.........: __ArrayCustomQuickSort2D(ByRef $avArray, ByRef $sSortFunc, ByRef $iStep, ByRef $iStart, ByRef $iEnd, ByRef $iSubItem, ByRef $iSubMax)
; Parameters ....: $avArray  - Array to sort
;                  $iStep    - Step size (should be 1 to sort ascending, -1 to sort descending!)
;                  $iStart   - Index of array to start sorting at
;                  $iEnd     - Index of array to stop sorting at
;                  $iSubItem - Sub-index to sort on in 2D arrays
;                  $iSubMax  - Maximum sub-index that array has
; Return values .: None
; Author ........: Jos van der Zande, LazyCoder, Tylo, Ultima
; Modified.......: Erik Pilsits - removed IsNumber testing
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func __ArrayCustomQuickSort2D(ByRef $avArray, ByRef $sSortFunc, ByRef $iStep, ByRef $iStart, ByRef $iEnd, ByRef $iSubItem, ByRef $iSubMax)
    If $iEnd <= $iStart Then Return

    ; QuickSort
    Local $i, $vTmp, $L = $iStart, $R = $iEnd, $vPivot = $avArray[Int(($iStart + $iEnd) / 2)][$iSubItem]
    Do
        While ($iStep * Call($sSortFunc, $avArray[$L][$iSubItem], $vPivot) < 0)
            $L += 1
        WEnd
        While ($iStep * Call($sSortFunc, $avArray[$R][$iSubItem], $vPivot) > 0)
            $R -= 1
        WEnd

        ; Swap
        If $L <= $R Then
            For $i = 0 To $iSubMax
                $vTmp = $avArray[$L][$i]
                $avArray[$L][$i] = $avArray[$R][$i]
                $avArray[$R][$i] = $vTmp
            Next
            $L += 1
            $R -= 1
        EndIf
    Until $L > $R

    __ArrayCustomQuickSort2D($avArray, $sSortFunc, $iStep, $iStart, $R, $iSubItem, $iSubMax)
    __ArrayCustomQuickSort2D($avArray, $sSortFunc, $iStep, $L, $iEnd, $iSubItem, $iSubMax)
EndFunc   ;==>__ArrayCustomQuickSort2D

; #FUNCTION# ====================================================================================================================
; Name...........: _NaturalCompare
; Description ...: Compare two strings using Natural (Alphabetical) sorting.
; Syntax.........: _NaturalCompare($s1, $s2[, $iCase = 0])
; Parameters ....: $s1, $s2 - Strings to compare
;                  $iCase   - [Optional] Case sensitive or insensitive comparison
;                  |0 - Case insensitive (default)
;                  |1 - Case sensitive
; Return values .: Success - One of the following:
;                  |0  - Strings are equal
;                  |-1 - $s1 comes before $s2
;                  |1  - $s1 goes after $s2
;                  Failure - Returns -2 and Sets @Error:
;                  |1 - $s1 or $s2 is not a string
;                  |2 - $iCase is invalid
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......: Original algorithm by Dave Koelle
; Related .......: StringCompare
; Link ..........: http://www.davekoelle.com/alphanum.html
; Example .......: Yes
; ===============================================================================================================================
Func _NaturalCompare($s1, $s2, $iCase = 0)
    ; check params
    If (Not IsString($s1)) Then $s1 = String($s1)
    If (Not IsString($s2)) Then $s2 = String($s2)
    ; check case, set default
    If $iCase <> 0 And $iCase <> 1 Then $iCase = 0

    Local $n = 0
    Local $s1chunk, $s2chunk
    Local $idx, $i1chunk, $i2chunk
    Local $s1temp, $s2temp

    While $n = 0
        ; get next chunk
        ; STRING 1
        $s1chunk = StringRegExp($s1, "^(\d+|\D+)", 1)
        If @error Then
            $s1chunk = ""
        Else
            $s1chunk = $s1chunk[0]
        EndIf
        ; STRING 2
        $s2chunk = StringRegExp($s2, "^(\d+|\D+)", 1)
        If @error Then
            $s2chunk = ""
        Else
            $s2chunk = $s2chunk[0]
        EndIf

        ; ran out of chunks, strings are the same, return 0
        If $s1chunk = "" And $s2chunk = "" Then Return 0

        ; remove chunks from strings
        $s1 = StringMid($s1, StringLen($s1chunk) + 1)
        $s2 = StringMid($s2, StringLen($s2chunk) + 1)

        Select
            ; Case 1: both chunks contain letters
            Case (Not StringIsDigit($s1chunk)) And (Not StringIsDigit($s2chunk))
                $n = StringCompare($s1chunk, $s2chunk, $iCase)
            ; Case 2: both chunks contain numbers
            Case StringIsDigit($s1chunk) And StringIsDigit($s2chunk)
                ; strip leading 0's
                $s1temp = $s1chunk
                $s2temp = $s2chunk
                $s1chunk = StringRegExpReplace($s1chunk, "^0*", "")
                $s2chunk = StringRegExpReplace($s2chunk, "^0*", "")
                ; record number of stripped 0's
                $s1temp = StringLen($s1temp) - StringLen($s1chunk)
                $s2temp = StringLen($s2temp) - StringLen($s2chunk)
                ; first check if one string is longer than the other, meaning a bigger number
                If StringLen($s1chunk) > StringLen($s2chunk) Then
                    Return 1
                ElseIf StringLen($s1chunk) < StringLen($s2chunk) Then
                    Return -1
                EndIf
                ; strings are equal length
                ; compare 8 digits at a time, starting from the left, to avoid overflow
                $idx = 1
                While 1
                    $i1chunk = Int(StringMid($s1chunk, $idx, 8))
                    $i2chunk = Int(StringMid($s2chunk, $idx, 8))
                    ; check for end of string
                    If $i1chunk = "" And $i2chunk = "" Then
                        ; check number of leading 0's removed, if any - windows sorts more leading 0's above fewer leading 0's, ie 00001 < 0001 < 001
                        If $s1temp > $s2temp Then
                            Return -1
                        ElseIf $s1temp < $s2temp Then
                            Return 1
                        Else
                            ; numbers are equal
                            ExitLoop
                        EndIf
                    EndIf
                    ; valid numbers, so compare
                    If $i1chunk > $i2chunk Then
                        Return 1
                    ElseIf $i1chunk < $i2chunk Then
                        Return -1
                    EndIf
                    ; chunks are equal, get next chunk of digits
                    $idx += 8
                WEnd
            ; Case 3: one chunk has letters, the other has numbers; or one is empty
            Case Else
                ; if we get here, this should be the last and deciding test, so return the result
                Return StringCompare($s1chunk, $s2chunk, $iCase)
        EndSelect
    WEnd

    Return $n
EndFunc
