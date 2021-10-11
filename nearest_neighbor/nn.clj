(def points [[1 2 3][3 4 5][5 6 7]])
(def qpoint [3 6 5])
(->> (for [p points] (for [[i j] (map vector p qpoint)] (* (- i j) (- i j))))
     (map #(reduce + %)) (map-indexed vector)(sort-by second)(first)(first))
