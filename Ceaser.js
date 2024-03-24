function encrypt(word, move, i){
    if(i < word.length){
        ascii = ((word[i].charCodeAt(0) - 65 + move) % 26);
        
        if(ascii < 0){
            ascii = ascii + 26;
        }
        
        word[i] = String.fromCharCode(ascii + 65);
        
        encrypt(word, move, i+1);
        
    }
    
    return word;
}

function decrypt(word, move, i){
    if(i < word.length){
        ascii = ((word[i].charCodeAt(0) - 65 - move) % 26);
        
        if(ascii < 0){
            ascii = ascii + 26;
        }
        
        word[i] = String.fromCharCode(ascii + 65);
        
        decrypt(word, move, i+1);
        
    }
    
}

function solve(word, move, i){
    test = "SORINZ";
    clone = test.split('');
    
    if (move < 27){
       if(i < (word.length)){
            ascii = ((word[i].charCodeAt(0) - 65 + move) % 26);
        
            if(ascii < 0){
                ascii = ascii + 26;
            }
            
            word[i] = String.fromCharCode(ascii + 65);
            
            solve(word, move, i+1);
       }else{
           console.log(word)
           
           solve(clone, move+1, 0)
       }
    }
}

test = "SORINZ";
move = 5;
word = test.split('');
clone = test.split('');

console.log("This is Encrypted: ");
clone = encrypt(word, move, 0);
clone2 = structuredClone(clone);
console.log(clone);

clone3 = test.split('');
console.log("This is Solved: ");
solve(clone3, 1, 0);

console.log("This is Decrypted: ");
decrypt(clone2, move, 0);
console.log(clone2);
