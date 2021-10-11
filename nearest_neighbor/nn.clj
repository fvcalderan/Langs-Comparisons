(def points [[1 2 3][3 4 5][5 6 7]])
(def qpoint [3 6 5])
(->> (map vector points (repeat (count points) qpoint))
  (map #(let [[x y] %] (map vector x y)))
  (map (fn [x] (map #(Math/pow (apply - %) 2) x)))
  (apply map vector)(apply map +)(#(.indexOf % (reduce min %)))
  (println)
)

