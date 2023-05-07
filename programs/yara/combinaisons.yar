
// rule splitted_xor {
//     strings:
//         $evil = /I.{,10}am.{,10}evil/ xor
//     condition:
//         all of them
// }

// rule extreme_splitted_xor {
//     strings:
//         $evil = /I.{,10}a.{,10}m.{,10}e.{,10}v.{,10}i.{,10}l/ xor
//     condition:
//         all of them
// }