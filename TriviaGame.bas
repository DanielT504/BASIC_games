'Declaring variables
Dim firstName As String
Dim Score As Integer
Dim answer1 As String
Dim answer2 As String
Dim answer3 As String
Dim answer4 As String
Dim answer5 As String
Dim decision As String

'Initializing variable
decision = "y"

'Title screen
Locate 5, 26
Color 9
Print "Welcome to my guessing game!"
Locate 8, 27
Color 13
Print "What is your name";
Sleep
Cls

'Getting the user's name
Color 14
Print "What is your name";
Input firstName

'Loop game if user so wishes
While decision = "y"
    
    'resetting score, color, and screen
    Score = 0
    Color 15
    Cls
    
    'Question 1
    Print "What was the first living creature to go into orbit?"
    Print
    Print "a)   A dog"
    Print "b)   A monkey"
    Print "c)   A human"
    Print "d)   None of the above"
    Print "e)   All of the above"
    Print "Answer a, b, c, d, or e";
    Input answer1
    Cls
    
    'Output based on answer
    If answer1 = "a" Then
        Color 10
        Print "Correct"
        Color 15
        Score = Score + 1
    Else
        Color 12
        Print "Incorrect, the answer was a, A dog"
        Color 15
    End If
    Print
    Print
    
    'Question 2
    Print "What does M&M stand for?"
    Print
    Print "a)   Mike and Molly"
    Print "b)   Mars and Murrie's"
    Print "c)   Eminem"
    Print "d)   Makin' money"
    Print "e)   Nothing"
    Print "Answer a, b, c, d, or e";
    Input answer2
    Cls
    
    'Output based on answer
    If answer2 = "b" Then
        Color 10
        Print "Correct"
        Color 15
        Score = Score + 1
    Else
        Color 12
        Print "Incorrect, the answer was b, Mars and Murrie's"
        Color 15
    End If
    Print
    Print
    
    'Question 3
    Print "What gender of mosquitoes can bite you?"
    Print
    Print "a)   Mosquitoes have no gender"
    Print "b)   Mosquitoes are androgynous"
    Print "c)   Males"
    Print "d)   Females"
    Print "e)   Mosquitoes don't bite"
    Print "Answer a, b, c, d, or e";
    Input answer3
    Cls
    
    'Output based on answer
    If answer3 = "d" Then 
        Color 10
        Print "Correct"
        Color 15
        Score = Score + 1
    Else
        Color 12
        Print "Incorrect, the answer was d, Females"
        Color 15
    End If
    Print
    Print
    
    'Question 4
    Print "How many grammys did Elvis win?"
    Print
    Print "a)   1"
    Print "b)   2"
    Print "c)   3"
    Print "d)   4"
    Print "e)   5"
    Print "Answer a, b, c, d, or e";
    Input answer4
    Cls
    
    'Output based on answer
    If answer4 = "c" Then
        Color 10
        Print "Correct"
        Color 15
        Score = Score + 1
    Else
        Color 12
        Print "Incorrect, the answer was c, 3"
        Color 15
    End If
    Print
    Print
    
    'Question 5
    Print "Who was the first US president?"
    Print
    Print "a)   Barack Obama"
    Print "b)   Abraham Lincoln"
    Print "c)   Thomas Jefferson"
    Print "d)   Donald Trump"
    Print "e)   George Washington"
    Print "Answer a, b, c, d, or e";
    Input answer5
    Cls
    
    'Output based on answer
    If answer5 = "e" Then
        Color 10
        Print "Correct"
        Color 15
        Score = Score + 1
    Else
        Color 12
        Print "Incorrect, the answer was e, George Washington"
        Color 15
    End If
    Cls
    
    'Recap
    Locate 5, 27 - Len(firstName) / 2
    Color 11
    Print firstName; ", your score was"; Score; " out of 5"
      
    'Asking user if they wih to play again
    Locate 7, 23.5
    Input "Do you want to play again? (y/n)", decision
Wend

'End of program
End