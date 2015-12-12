(use 'clojure.java.io)

(defn readfile [filename]
  (with-open [r (reader filename)]
    (doall (line-seq r))))

(defn rom2dec [n]
  (->> (reverse n)
       (replace (zipmap "MDCLXVI" [1000 500 100 50 10 5 1]))
       (partition-by identity)
       (map (partial apply +))
       (reduce #(if (< %1 %2) (+ %1 %2) (- %1 %2)))))

(defn bin2dec [n]
 (Integer/parseInt n 2))

(defn convert [s]
  (cond (= "0" (subs s 0 1)) (bin2dec (subs s 2))
        (re-matches #"[1-9]" (subs s 0 1)) (Integer. s)
        :else (rom2dec s)))

(defn solve []
  (let [nums (sort-by convert (readfile "input"))
        c (bit-shift-right (count nums) 1)]
    (nth nums c)))
