
using Random

rng = MersenneTwister(1)

open("largetsv.txt", "w") do f
    for i = 1:(4000 * 10000)
        write(f, string(i))
        write(f, "\t")
        write(f, string(rand(rng)))
        write(f, "\t")
        write(f, string(rand(rng)))
        write(f, "\n")
    end
end

