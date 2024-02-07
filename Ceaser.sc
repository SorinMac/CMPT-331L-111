object Ceaser {
    
    def encrypt(word: Array[Char]): Unit = {
        println("This is encrypted: ");
        
        for (i <- 0  to word.length{
            println(word[i]);
        }
        
        println(word);
    }
    
    def decrypt(): Unit = {
        println("Hello, Scala!");
    }
    
    def solve(): Unit = {
        println("Hello, Scala!");
    }


    def main(args: Array[String]) {

        var test : String = "SORINZ";
        var move : Int = 5;
        var word = test.toCharArray();
        
        
        encrypt(word);

    }
}