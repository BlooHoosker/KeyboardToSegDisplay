#include <iostream>
#include <fstream>
#include <bitset>

using namespace std;

uint8_t xorBits(uint8_t value){
    uint8_t res = 0;
    for (int i = 0; i < 8; i++){
        res ^= (value & 1);
        value = value >> 1;
    }
    return !res;
}

uint8_t ps2Codes[38] {0x15,0x1D,0x24,0x2D,0x2C,0x35,0x3C,0x43,0x44,0x4D,0x1C,0x1B,0x23,0x2B,0x34,
                      0x33,0x3B,0x42,0x4B,0x1A,0x22,0x21,0x2A,0x32,0x31,0x3A,0x29,0x16,0x1E,0x26,
                      0x25,0x2E,0x36,0x3D,0x3E,0x46,0x45,0x5A};


uint8_t ps2ToAscii(uint8_t value){
    switch (value){
        case 0x15: return 0x51;
        case 0x1D: return 0x57;
        case 0x24: return 0x45;
        case 0x2D: return 0x52;
        case 0x2C: return 0x54;
        case 0x35: return 0x59;
        case 0x3C: return 0x55;
        case 0x43: return 0x49;
        case 0x44: return 0x4F;
        case 0x4D: return 0x50;
        case 0x1C: return 0x41;
        case 0x1B: return 0x53;
        case 0x23: return 0x44;
        case 0x2B: return 0x46;
        case 0x34: return 0x47;
        case 0x33: return 0x48;
        case 0x3B: return 0x4A;
        case 0x42: return 0x4B;
        case 0x4B: return 0x4C;
        case 0x1A: return 0x5A;
        case 0x22: return 0x58;
        case 0x21: return 0x43;
        case 0x2A: return 0x56;
        case 0x32: return 0x42;
        case 0x31: return 0x4E;
        case 0x3A: return 0x4D;
        case 0x29: return 0x20;
        case 0x16: return 0x31;
        case 0x1E: return 0x32;
        case 0x26: return 0x33;
        case 0x25: return 0x34;
        case 0x2E: return 0x35;
        case 0x36: return 0x36;
        case 0x3D: return 0x37;
        case 0x3E: return 0x38;
        case 0x46: return 0x39;
        case 0x45: return 0x30;
        default: return   0x0A;
    }
}

int main() {

    ofstream ps2input("key2dispInput.txt");

    uint8_t value = 0;
    uint8_t strobe = 0;
    uint8_t parity = 0;

    string input;
    string output;
    string all;

    srand (42);

    for (int i = 0; i < 38; i++){

        value = ps2Codes[i];

        parity = xorBits(value);
        strobe = 1;

        // parity + 8b ps2 scan code
        input = to_string(parity) + bitset<8>(value).to_string();

        all = input + " " + output;
        ps2input << all << endl;
        cout<< all << endl;
    }

    ps2input.close();
    return 0;
}

int main_org() {

    ofstream ps2input("ps2input.txt");

    uint8_t value = 0;
    uint8_t strobe = 0;
    uint8_t parity = 0;
    uint8_t realParity = 0;

    string input;
    string output;
    string all;

    srand (42);

    for (int i = 0; i < 256; i++){

        value = rand() % 38;
        value = ps2Codes[value];

        realParity = xorBits(value);

        // Sometimes make wrong parity to test if it can detect that
        if (!(i % 10) && i){
            parity = !realParity;
            strobe = 0;
        } else {
            parity = realParity;
            strobe = 1;
        }
        // real/fake parity + 8b ps2 value
        input = to_string(parity) + bitset<8>(value).to_string();
        // expected strobe and 8b ascii value
        output = to_string(strobe) + bitset<8>(ps2ToAscii(value)).to_string();
        all = input + " " + output;
        ps2input << all << endl;
        cout<< all << endl;
    }

    ps2input.close();
    return 0;
}
