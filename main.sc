
import java.io._;
import java.util.Random

//@main def main() = {
  val fw = new FileWriter("largetsv.txt")
  val bw = new BufferedWriter(fw, 1024 * 1024 * 1024)
  
  val rand = new Random(1)
  
  for (i <- 0 until 4000 * 10000) {
    bw.write(i.toString())
    bw.write("\t")
    bw.write(rand.nextLong().toString())
    bw.write("\t")
    bw.write(rand.nextLong().toString())
    bw.newLine()
  }
  
  bw.close()
//}
