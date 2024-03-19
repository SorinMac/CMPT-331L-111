object JDoodle {
  def encrypt(word: Array[Char], move: Int, i: Int): Unit = {
      if(i < (word.length)-1){
        var ascii = ((word(i).toInt - 65 + move) % 26);
        
        if(ascii < 0){
            ascii = ascii + 26;
        }
        
        word(i) = (ascii + 65).toChar;
        
        encrypt(word, move, i+1);
      }
    }
    
    def decrypt(word: Array[Char], move: Int, i: Int): Unit = {
        if(i < (word.length)-1){
            var ascii = ((word(i).toInt - 65 - move) % 26);
            
            if(ascii < 0){
                ascii = ascii + 26;
            }
            
            word(i) = (ascii + 65).toChar;
            
            decrypt(word, move, i+1);
        }
    }
    
    def solve(word: Array[Char]): Unit = {
       var clone = word.clone();
       
       for(k <- 0 to 25){
           clone = word.clone();
           for (i <- 0  to clone.length-1){
                var ascii = ((clone(i).toInt - 65 + k) % 26);
                
                if(ascii < 0){
                    ascii = ascii + 26;
                }
                
                clone(i) = (ascii + 65).toChar;
            }
        
            println(clone.mkString(" "))
       }
       
    }


    def main(args: Array[String]) {

        var test : String = "SORINZ";
        var move : Int = 5;
        var word = test.toCharArray();
        
        println("This is encrypted: ");
        encrypt(word, move, 0);
        println(word.mkString(" "))
        //println("This is Solve: ");
        //solve(word);
        println("This is decrypted: ");
        decrypt(word, move, 0);
        println(word.mkString(" "))
    }
}
