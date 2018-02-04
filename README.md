# 1802morse
This program will hopefully flash Q in morse code

The idea for this program is to have the 1802 processor take in a ascii character and output it in morse code.

There will be a look up table containing the morse code characters encoded in binary.  The 3 least significant bits are the length of the morse code character.  The most significant bit is the first part of the morse code character. The program will load a register with the lower 3 bits and then shift the bits left while decrimenting the register until the register gets to 0.  As the bits shift left the carry flag will be set if the output should be a dash and will be clear if it should be a dot.  The program will branch to a dash or dot subrutine depending on the state of the carry flag.


