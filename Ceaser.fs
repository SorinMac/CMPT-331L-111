(*used to encrypt the word with return type string*)
let Encrypt (word : string) (move : int) : string =
    printfn "%s" word
    printfn "%i" move
    (*how to return a specific value*)
    let test = "balls"
    test
        
let Decrypt (word : string) (move : int) =
    printfn "%s" word
    printfn "%i" move
    
let Solve (word : string) (move : int) =
    printfn "%s" word
    printfn "%i" move

(*have to make mutable so I can it*)
let mutable word = "SORINZ"
let move = 5

(*testing to make sure the return is correct*)
word <- Encrypt word move
printfn "%s" word
