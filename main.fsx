
open System.IO
open System

let rnd = new Random()
use w = new StreamWriter("largetsv.txt")

for i = 0 to 4000 * 10000 do
    w.Write(i)
    w.Write("\t")
    w.Write(rnd.NextDouble())
    w.Write("\t")
    w.Write(rnd.NextDouble())
    w.Write("\n")
