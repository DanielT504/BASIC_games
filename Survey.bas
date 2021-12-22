'Declaring variables
Dim firstName As string
Dim lastName As string
Dim age As integer
Dim average As single

'Input/intitialize variables
Print "What is your first name";
Input firstName
Print "What is your last name";
Input lastName
Print "How old are you";
Input age
Print "What was your average last year";
Input average

'Output salutation
Locate 7
Print "Hello "; firstName

'Output whether or not user can apply for driver's license
Locate 9
If age >= 16 Then
    Print "You are old enough to apply for your driver's license"
Else 
    Print "You are not old enough to apply for your driver's license"
End If

'Output average conversion to grade level
Locate 11
If average >= 0 and average <= 50 Then
    Print "Based on your average, your grade level is R"
ElseIf average >= 50 and average <= 59 Then
    Print "Based on your average, your grade level is 1"
ElseIf average >= 60 and average <= 69 Then
    Print "Based on your average, your grade level is 2"
ElseIf average >= 70 and average <= 79 Then
    Print "Based on your average, your grade level is 3"
ElseIf average >= 80 and average <= 100 Then
    Print "Based on your average, your grade level is 4"
Else Print "Invalid average"
End If

'End program
Sleep