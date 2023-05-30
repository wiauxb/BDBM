rule XORed {
    strings:
        $xor = "I am evil" xor
        $xor1 = "I am evil" xor wide
        $xor2 = "I am evil" xor wide ascii
        $xor3 = "I am evil" xor ascii
    condition:
        any of them
}

rule Base64 {
    strings:
        $a = "I am evil" base64
    condition:
        $a
}