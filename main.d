
import std.stdio;
import std.random;

char[1024 * 1024 * 1024] buf;

void main(string[] args)
{
    auto gen = MinstdRand0(1);
    auto f = File("largetsv.txt", "w");
    f.setvbuf(buf);

    for (int i = 0; i < 4000 * 10000; ++i) {
        //f.write(1);
        //f.write("\t");
        f.write(gen.front);
        gen.popFront();
        f.write("\t");
        f.write(gen.front);
        gen.popFront();
        //f.write("\t");
        //f.write(gen.front);
        //gen.popFront();
        f.write("\n");
    }

}