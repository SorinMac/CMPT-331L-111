Function Encrypt(P As String) As String
    Return P
End Function

Function Decrypt(P As String = "Default") As String
    Return P
End Function

Function Solve(P As String = "Default") As String
    Return P
End Function

dim move AS integer = 5
dim test(6) AS string
dim i AS integer

test(0) = "S"
test(1) = "O"
test(2) = "R"
test(3) = "I"
test(4) = "N"
test(5) = "Z"

Print Encrypt("test")
Print Decrypt()
Print Solve()
