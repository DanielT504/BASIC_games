'Declaring variables
Dim answer As Integer
Dim solution As Integer
Dim guesses As Integer
Dim decision As String
Dim y As String
Dim min As Integer
Dim max As Integer
Dim start As Double

'Initializing variables
y = "y"
decision = y

'Loop determining whether user plays another game
While decision = y
     
    'Introduction and rules output
    Cls
    Print "Welcome to my guessing game"
    Print "You have 5 guesses"
    Print "You will also be timed"
    Print "For every 10 seconds you take to guess the number,"
    Print "20 points will be taken off of your initial 100 point score"
    Print "If you surpass the time limit (50 seconds), or run out of guesses, your score will be 0"
    Print
    
    'Asking for and letting user select largest and smallest possible numbers 
    Print "What is the minimum number you would like to guess for";
    Input min
    Print "What is the maximum number you would like to guess for";
    Input max
    Print
    
    'Resetting guesses
    guesses = 1
    
    'Starting/resetting timer
    start = Timer
    
    'Using a different random number each time the user plays
    Randomize timer
    solution = int(rnd * (max - min + 1) + min)
    
    'Starting game
    Print "Now can you try to guess the random number within that range";
   
    'User guesses number
    Input answer
    
    'Giving user a maximum of 5 guesses
    While guesses <= 5 and answer <> solution
        
        'Giving user hints when guess is incorrect
        If answer > solution Then
            Print "Too high"
            guesses = guesses + 1
            Print "Can you guess again";
        ElseIf answer < solution Then
            Print "Too low"
            guesses = guesses + 1
            Print "Can you guess again";
        End If
        
        'User guesses again if necessary
        Input answer
    Wend
    
    'Determining output based on whether or not user guessed number
    If answer = solution Then
        
        'Output if user is correct
        Print
        Print "Correct,"; solution; " is the secret number"
        Print "It took you"; guesses; " guesses"
        
        'Giving user score based on their time
        If Int(Timer - start) <= 10 Then
            Print "It also took you"; Int(Timer - start); " seconds, earning you 100 points"
        ElseIf Int(Timer - start) <= 20 Then
            Print "It also took you"; Int(Timer - start); " seconds, earning you 80 points"
        ElseIf Int(Timer - start) <= 30 Then
            Print "It also took you"; Int(Timer - start); " seconds, earning you 60 points"
        ElseIf Int(Timer - start) <= 40 Then
            Print "It also took you"; Int(Timer - start); " seconds, earning you 40 points"
        ElseIf Int(Timer - start) <= 50 Then
            Print "It also took you"; Int(Timer - start); " seconds, earning you 20 points"
        Else Print "It also took you longer than 50 seconds so you didn't earn any points"
        End If
        
        Print
        Print
    Else 
       
       'Output if user did not guess number in 5 guesses
        Print
        Print "You ran out of guesses"
        Print "The number was"; solution
    End If
        
    'Option of playing again
    Print "Do you want to play again (y/n)";
    
    'Deciding whether or not to play again
    Input decision
Wend

'End program
End