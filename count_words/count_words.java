import java.util.Arrays;
import java.util.stream.Collectors;

public class count_words {
    public static void main(String[] args){
        String words = "to be or not to be";

        var freq = Arrays.stream(words.split(" "))
            .collect(Collectors.groupingBy(x -> x, Collectors.counting()));

        System.out.println(freq);
    }
}
