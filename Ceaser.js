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
    
}

test = "SORINZ";
move = 5;
word = test.split('');
clone = test.split('');

console.log("This is Encrypted: ");
clone = encrypt(word, move, 0);
console.log(word);

console.log("This is Decrypted: ");
decrypt(clone, move, 0);
console.log(word);
