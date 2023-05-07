rule XORed {
    strings:
        $xor = "I am evil" xor
    condition:
        any of them
}

rule Base64 {
    strings:
        $a = "This program cannot" base64
    condition:
        $a
}