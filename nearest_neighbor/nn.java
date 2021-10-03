class nn{
    public static void main(String[] args) {
        int points[][] = {{1, 2, 3}, {3, 4, 5}, {5, 6, 7}},
            qpoint[] = {3, 6, 5},
            min_i = -1,
            min_d = 2147483647;

        for (int i = 0; i < points.length; i++) {
            int dist = 0;

            for (int j = 0; j < points.length; j++)
                dist += Math.pow(points[i][j] - qpoint[j], 2);

            min_i = (dist <= (min_d=Math.min(dist, min_d))) ? i : min_i;
        }
        System.out.println(min_i);
    }
}
