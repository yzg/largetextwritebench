
(use '[clojure.java.io])

(with-open [f (clojure.java.io/writer "largetsv.txt" :buffer-size (* 1024 1024 1024))]
  (dotimes [i (* 4000 10000)]
    (.write f (str i))
    (.write f "\t")
    (.write f (str (rand)))
    (.write f "\t")
    (.write f (str (rand)))
    (.write f "\n")
  )
)
