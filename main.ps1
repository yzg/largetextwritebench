
using namespace System
using namespace System.IO
using namespace System.Text

$ErrorActionPreference = "Stop"

$rnd = [Random]::new()
$w = [StreamWriter]::new("largetsv.txt", $false, [Encoding]::ASCII, 1024 * 1024 * 512)

for ($i = 0; $i -lt 4000 * 10000; ++$i) {

    $w.Write($i)
    $w.Write("\t")
    $w.Write($rnd.NextDouble())
    $w.Write("\t")
    $w.Write($rnd.NextDouble())
    $w.Write("\n")
}
