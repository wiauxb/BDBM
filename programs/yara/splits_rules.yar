rule basic_string {
    strings:
        $evil = "I am evil"
    condition:
        $evil
}

rule splitted {
    strings:
        $evil = /I.{,10}am.{,10}evil/
    condition:
        all of them
}

rule extreme_split {
    strings:
        $evil = /I.{,10}a.{,10}m.{,10}e.{,10}v.{,10}i.{,10}l/
    condition:
        all of them
}