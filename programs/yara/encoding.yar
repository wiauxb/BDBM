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
        $b = "I am evil" base64wide
        $c = "I am evil\n" base64
        $d = "I am evil\n" base64wide
        $e = "I am evil\x00" base64
        $f = "I am evil\x00" base64wide
        $i = "I am evil\x00\n" base64
        $j = "I am evil\x00\n" base64wide
    condition:
        any of them
}


