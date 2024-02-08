object JDoodle {
  def encrypt(word: Array[Char], move: Int): Unit = {
        println("This is encrypted: ");
        
        for (i <- 0  to word.length-1){
            var ascii = ((word(i).toInt - 65 + move) % 26);
            
            if(ascii < 0){
                ascii = ascii + 26;
            }
            
            word(i) = (ascii + 65).toChar;
        }
        
        println(word.mkString(" "))
        
    }
    
    def decrypt(word: Array[Char], move: Int): Unit = {
        println("This is decrypted: ");
        
        for (i <- 0  to word.length-1){
            var ascii = ((word(i).toInt - 65 - move) % 26);
            
            if(ascii < 0){
                ascii = ascii + 26;
            }
            
            word(i) = (ascii + 65).toChar;
        }
        
        println(word.mkString(" "))
    }
    
    def solve(word: Array[Char]): Unit = {
       println("This is Solve: ");
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
        
        
        encrypt(word, move);
        solve(word);
        decrypt(word, move);
    }
}
