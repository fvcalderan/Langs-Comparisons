import java.util.stream.*;
import java.util.*;

public class nn {
    public static void main(String[] args) {
        double[][] points = {{1, 2, 3}, {3, 4, 5}, {5, 6, 7}};
        double[]   qpoint = {3, 6, 5};

        List<Double> vals = new ArrayList<>();
        Arrays.stream(points).forEach(p -> vals.add(IntStream
            .range(0, p.length)
            .mapToObj(i -> Math.pow(p[i] - qpoint[i], 2))
            .reduce(0.0, (Double a, Double b) -> a + b)));
        System.out.println(vals.indexOf(Collections.min(vals)));
    }
}
