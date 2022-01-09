// If any key is pushed down, fill the first word black

// Pseudocode:
//   if KBD register != 0, goto ON // no key pushed
//   if KBD register == 0, goto OFF // key pushed
//   (ON)
//     set first word to -1 // black
//     goto line 0 // repeat
//
//   (OFF)
//     set first word to 0 // white
//     goto line 0 // repeat
