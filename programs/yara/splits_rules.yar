rule basic_string {
    strings:
        $evil = "I am evil"
    condition:
        $evil
}

rule splitted {
    strings:
        $evil = /I.{,16}am.{,16}evil/
    condition:
        all of them
}

rule extreme_split {
    strings:
        $evil = /I.{,16}a.{,16}m.{,16}e.{,16}v.{,16}i.{,16}l/
    condition:
        all of them
}

rule all_letters {
    strings:
        $I = "I"
        $a = "a"
        $m = "m"
        $e = "e"
        $v = "v"
        $i = "i"
        $l = "l"
        $space = " "
    condition:
        all of them
}