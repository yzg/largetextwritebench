
#include <iostream>
#include <fstream>
#include <random>
#include <stdio.h>

char buf[1024 * 1024 * 1024];

int main(void)
{
    std::random_device seed_gen;
    std::mt19937 engine(seed_gen());

    std::uniform_real_distribution<> dist1(-1.0, 1.0);


    FILE* fp = fopen("largetsv.txt", "w");

    //std::ofstream ofs;

    //ofs.rdbuf()->pubsetbuf(buf, sizeof(buf));
    //setvbuf(fp, NULL, _IOFBF, 1024 * 1024 * 1024);
    //setvbuf(fp, NULL, _IOFBF, 512 * 1024);
    setvbuf(fp, buf, _IOFBF, sizeof(buf));

    //ofs.open("largetsv.txt", std::ios::out);

    for (int i = 0; i < 4000 * 10000; ++i) {
        double r1 = dist1(engine);
        double r2 = dist1(engine);
        auto r1s = std::to_string(r1);
        auto r2s = std::to_string(r2);

        fwrite(r1s.c_str(), r1s.size(), 1, fp);
        fwrite("\t", 1, 1, fp);
        fwrite(r2s.c_str(), r2s.size(), 1, fp);
        fwrite("\t", 1, 1, fp);
        fwrite("\n", 1, 1, fp);
    }

    fclose(fp);
    //ofs.close();

    return 0;
}