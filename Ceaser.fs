let shiftE (letter, move) =
    let mutable ascii = ((int(letter) - 65 + move)%26)
    if ascii < 0 then
        ascii <- ascii + 26
    char(ascii + 65)
    
let shiftD (letter, move) =
    let mutable ascii = ((int(letter) - 65 - move)%26)
    if ascii < 0 then
        ascii <- ascii + 26
    char(ascii + 65)

    
let Encrypt (word : string) (move : int) : string =
    printfn "%s" "This is the Encryption: "
    let shifted = String.map (fun i -> shiftE(i, move)) word
    printfn "%s" shifted
    shifted
        
let Decrypt (word : string) (move : int) =
    printfn "%s" "This is the Decryption: "
    let shifted = String.map (fun i -> shiftD(i, move)) word
    printfn "%s" shifted
    
let rec Solve (word : string) (move : int) =
    let shifted = String.map (fun i -> shiftE(i, move)) word
    printfn "%s" shifted
    if move < 26 then
        let mutable i = move
        i <- i + 1
        Solve "SORINZ" i

let mutable word = "SORINZ"
let move = 5
word <- Encrypt word move
printfn "%s" "This is Solve: "
Solve "SORINZ" 1
Decrypt word move
