import java.util.*;
class biggest_len {
    public static void main(String[] args) {
        List<String> words = Arrays.asList("Here", "are", "some", "extraordinary", "words");
        System.out.println(Collections.max(words, Comparator.comparing(String::length)).length());
    }
}
