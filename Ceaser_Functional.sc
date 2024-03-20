object JDoodle {
  def encrypt(word: Array[Char], move: Int, i: Int): Array[Char]= {
      if(i < (word.length)){
        var ascii = ((word(i).toInt - 65 + move) % 26);
        
        if(ascii < 0){
            ascii = ascii + 26;
        }
        
        word(i) = (ascii + 65).toChar;
        
        encrypt(word, move, i+1);
      }
      
      return word;
    }
    
    def decrypt(word: Array[Char], move: Int, i: Int): Unit = {
        if(i < (word.length)){
            var ascii = ((word(i).toInt - 65 - move) % 26);
            
            if(ascii < 0){
                ascii = ascii + 26;
            }
            
            word(i) = (ascii + 65).toChar;
            
            decrypt(word, move, i+1);
        }
    }
    
    def solve(word: Array[Char], move: Int, i: Int): Unit = {
        var test = "SORINZ";
        var clone = test.toCharArray();
        
        if (move < 27){
           if(i < (word.length)){
                var ascii = ((word(i).toInt - 65 + move) % 26);
        
                if(ascii < 0){
                    ascii = ascii + 26;
                }
                
                word(i) = (ascii + 65).toChar;
                
                solve(word, move, i+1);
           }else{
               println(word.mkString(" "))
               
               solve(clone, move+1, 0)
           }
        }
    }


    def main(args: Array[String]) {

        var test : String = "SORINZ";
        var move : Int = 5;
        var hold : Array[Char] = null;
        var word = test.toCharArray();
        
        println("This is encrypted: ");
        hold = encrypt(word, move, 0);
        var check = hold.clone();
        println(hold.mkString(" "))
        
        println("This is Solve: ");
        solve(word, 1, 0);
        
        println("This is decrypted: ");
        decrypt(check, move, 0);
        println(check.mkString(" "))
    }
}
