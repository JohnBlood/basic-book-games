Print Tab(26); "ICBM"
Print Tab(20); "CREATIVE COMPUTING"
Print Tab(18); "MORRISTOWN, NEW JERSEY"
Print: Print: Print
X1 = 0: Y1 = 0
START:
X = Int(Rnd(1) * 800) + 200: Y = Int(Rnd(1) * 800) + 200
S = Int(Rnd(1) * 20 + 50): S1 = Int(Rnd(1) * 20 + 50)
Print "-------MISSILE------        ";
Print "--------SAM---------        -------"
Print "MILES", "MILES", "MILES", "MILES", "HEADING"
Print "NORTH", "EAST", "NORTH", "EAST", "?"
Print "-----------------------------------"
Print "----------------------------"
For N = 1 To 50
    Print Y, X, Y1, X1,
    If X = 0 Then GoTo MISS
    Input T1
    T1 = T1 / 57.296
    H = Int(Rnd(1) * 200 + 1)
    If H > 4 Then GoTo spark1
    On H GOTO MISS, sboom, iboom, fa
    spark1:
    X1 = Int(X1 + S1 * Sin(T1)): Y1 = Int(Y1 + S1 * Cos(T1))
    If Sqr(X ^ 2 + Y ^ 2) > S Then GoTo spark2
    X = 0: Y = 0
    GoTo spark3
    spark2:
    B = Sqr(X ^ 2 + Y ^ 2) / 1000
    T = Atn(Y / X)
    X = Int(X - S * Cos(T) + Rnd(1) * 20 + R)
    Y = Int(Y - S * Sin(T) + Rnd(1) * 20 + R)
    D = Sqr((X - X1) ^ 2 + (Y - Y1) ^ 2)
    If D <= 5 Then GoTo WIN
    D = Int(D)
    Print "ICBM & SAM NOW"; D; "MILES APART"
    spark3:
Next N
WIN:
Print "CONGRATULATIONS!   YOUR SAM CAME WITHIN"; D; "MILES OF"
Print "THE ICBM AND DESTROYED IT!"
GoTo PLAYAGAIN
MISS:
Print "TOO BAD. YOUR SAM FELL TO THE GROUND!"
GoTo PLAYAGAIN
sboom:
Print "YOUR SAM EXPLODED IN MIDAIR!"
GoTo PLAYAGAIN
iboom:
Print "GOOD LUCK - THE ICBM EXPLODED HARMLESSLY IN MIDAIR!"
GoTo PLAYAGAIN
fa:
Print "GOOD LUCK - THE ICBM TURNED OUT TO BE A FRIENDLY AIRCRAFT!"
GoTo PLAYAGAIN
dead:
Print "TOO BAD!"
Print "THE ICBM JUST HIT YOUR LOCATION!!"
PLAYAGAIN:
Print "DO YOU WANT TO PLAY MORE? (Y OR N)";
Input A$
If A$ = "Y" Then GoTo START
End

