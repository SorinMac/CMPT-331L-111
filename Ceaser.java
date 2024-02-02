import java.util.Arrays;

public class Ceaser {

    static void encrypt(char[] word, int moveSpace){

        for(int i=0; i < word.length; i++){
            int ascii = ((int) word[i] - 'A' + moveSpace) % 26;

            //System.out.println(ascii);

            if (ascii < 0) {
                ascii += 26; 
            }

            word[i] = (char) (ascii + 'A');
        }

        System.out.println(Arrays.toString(word) + " This is Encrypted");
    }

    static void decrypt(char[] word, int moveSpace){
        for(int i=0; i < word.length; i++){
            int ascii = ((int) word[i] - 'A' - moveSpace) % 26;
            
            //System.out.println(ascii);

            if (ascii < 0) {
                ascii += 26; 
            }

            word[i] = (char) (ascii + 'A');
        }

        System.out.println(Arrays.toString(word) + " This is Decrypted");
    }

    static void solve(char[] word){
        System.out.println("All of them: ");
    
        for(int i = 0; i < 26; i++){
            // Create a copy of the original array for each iteration
            char[] test = Arrays.copyOf(word, word.length);
    
            for(int k = 0; k < test.length; k++){
                int ascii = ((int) test[k] - 'A' + i) % 26;
    
                if (ascii < 0) {
                    ascii += 26; 
                }
    
                test[k] = (char) (ascii + 'A');
            }
    
            System.out.println(Arrays.toString(test));
        }
    }
    

    public static void main(String[] args){
        int move = 5;
        String test = "SORINZ";
        char[] word = new char[test.length()];

        for(int i = 0; i < test.length(); i++){
            word[i] = test.charAt(i);
        }

        encrypt(word, move);
        solve(word);
        decrypt(word, move);

        System.out.println("Done");
        
    }
    
}
