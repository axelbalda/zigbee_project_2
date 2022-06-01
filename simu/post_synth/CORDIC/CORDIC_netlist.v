
module system ( i_enable_in, i_I, i_Q, o_enable_out, o_dir, reset, clock );
  input [3:0] i_I;
  input [3:0] i_Q;
  input i_enable_in, reset, clock;
  output o_enable_out, o_dir;
  wire   dir, N14, N15, N16, N17, N26, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, \mycordic/n587 ,
         \mycordic/n586 , \mycordic/n585 , \mycordic/n584 , \mycordic/n583 ,
         \mycordic/n582 , \mycordic/n581 , \mycordic/n580 , \mycordic/n579 ,
         \mycordic/n578 , \mycordic/n577 , \mycordic/n576 , \mycordic/n575 ,
         \mycordic/n574 , \mycordic/n573 , \mycordic/n572 , \mycordic/n571 ,
         \mycordic/n570 , \mycordic/n569 , \mycordic/n568 , \mycordic/n567 ,
         \mycordic/n566 , \mycordic/n565 , \mycordic/n564 , \mycordic/n563 ,
         \mycordic/n562 , \mycordic/n561 , \mycordic/n560 , \mycordic/n559 ,
         \mycordic/n558 , \mycordic/n557 , \mycordic/n556 , \mycordic/n555 ,
         \mycordic/n554 , \mycordic/n553 , \mycordic/n552 , \mycordic/n551 ,
         \mycordic/n550 , \mycordic/n549 , \mycordic/n548 , \mycordic/n547 ,
         \mycordic/n546 , \mycordic/n545 , \mycordic/n544 , \mycordic/n543 ,
         \mycordic/n542 , \mycordic/n541 , \mycordic/n540 , \mycordic/n539 ,
         \mycordic/n538 , \mycordic/n537 , \mycordic/n536 , \mycordic/n520 ,
         \mycordic/n519 , \mycordic/n518 , \mycordic/n517 , \mycordic/n516 ,
         \mycordic/n515 , \mycordic/n514 , \mycordic/n513 , \mycordic/n512 ,
         \mycordic/n511 , \mycordic/n510 , \mycordic/n509 , \mycordic/n508 ,
         \mycordic/n507 , \mycordic/n506 , \mycordic/n505 , \mycordic/n504 ,
         \mycordic/n503 , \mycordic/n502 , \mycordic/n501 , \mycordic/n500 ,
         \mycordic/n499 , \mycordic/n498 , \mycordic/n497 , \mycordic/n496 ,
         \mycordic/n495 , \mycordic/n494 , \mycordic/n493 , \mycordic/n492 ,
         \mycordic/n491 , \mycordic/n490 , \mycordic/n489 , \mycordic/n488 ,
         \mycordic/n487 , \mycordic/n486 , \mycordic/n485 , \mycordic/n484 ,
         \mycordic/n483 , \mycordic/n482 , \mycordic/n481 , \mycordic/n480 ,
         \mycordic/n479 , \mycordic/n478 , \mycordic/n477 , \mycordic/n476 ,
         \mycordic/n475 , \mycordic/n474 , \mycordic/n473 , \mycordic/n472 ,
         \mycordic/n471 , \mycordic/n470 , \mycordic/n469 , \mycordic/n468 ,
         \mycordic/n467 , \mycordic/n466 , \mycordic/n465 , \mycordic/n464 ,
         \mycordic/n463 , \mycordic/n462 , \mycordic/n461 , \mycordic/n460 ,
         \mycordic/n459 , \mycordic/n458 , \mycordic/n457 , \mycordic/n456 ,
         \mycordic/n455 , \mycordic/n454 , \mycordic/n453 , \mycordic/n452 ,
         \mycordic/n451 , \mycordic/n450 , \mycordic/n449 , \mycordic/n448 ,
         \mycordic/n447 , \mycordic/n446 , \mycordic/n445 , \mycordic/n444 ,
         \mycordic/n443 , \mycordic/n442 , \mycordic/n441 , \mycordic/n440 ,
         \mycordic/n439 , \mycordic/n438 , \mycordic/n437 , \mycordic/n436 ,
         \mycordic/n435 , \mycordic/n433 , \mycordic/n432 , \mycordic/n431 ,
         \mycordic/n430 , \mycordic/n429 , \mycordic/n428 , \mycordic/n427 ,
         \mycordic/n426 , \mycordic/n425 , \mycordic/n424 , \mycordic/n423 ,
         \mycordic/n422 , \mycordic/n421 , \mycordic/n420 , \mycordic/n419 ,
         \mycordic/n418 , \mycordic/n417 , \mycordic/n416 , \mycordic/n415 ,
         \mycordic/n414 , \mycordic/n413 , \mycordic/n412 , \mycordic/n411 ,
         \mycordic/n410 , \mycordic/n409 , \mycordic/n408 , \mycordic/n407 ,
         \mycordic/n406 , \mycordic/n405 , \mycordic/n404 , \mycordic/n403 ,
         \mycordic/n402 , \mycordic/n401 , \mycordic/n400 , \mycordic/n399 ,
         \mycordic/n395 , \mycordic/n394 , \mycordic/n393 , \mycordic/n392 ,
         \mycordic/n391 , \mycordic/n387 , \mycordic/n386 , \mycordic/n385 ,
         \mycordic/n384 , \mycordic/n383 , \mycordic/n382 , \mycordic/n381 ,
         \mycordic/n380 , \mycordic/n379 , \mycordic/n378 , \mycordic/n377 ,
         \mycordic/n376 , \mycordic/n375 , \mycordic/n374 , \mycordic/n373 ,
         \mycordic/n372 , \mycordic/n371 , \mycordic/n370 , \mycordic/n369 ,
         \mycordic/n368 , \mycordic/n367 , \mycordic/n366 , \mycordic/n365 ,
         \mycordic/n364 , \mycordic/n363 , \mycordic/n362 , \mycordic/n358 ,
         \mycordic/n357 , \mycordic/n356 , \mycordic/n355 , \mycordic/n354 ,
         \mycordic/n353 , \mycordic/n349 , \mycordic/n348 , \mycordic/n347 ,
         \mycordic/n346 , \mycordic/n345 , \mycordic/n344 , \mycordic/n343 ,
         \mycordic/n342 , \mycordic/n341 , \mycordic/n340 , \mycordic/n339 ,
         \mycordic/n338 , \mycordic/n337 , \mycordic/n336 , \mycordic/n335 ,
         \mycordic/n334 , \mycordic/n333 , \mycordic/n332 , \mycordic/n331 ,
         \mycordic/n110 , \mycordic/n108 , \mycordic/N630 , \mycordic/N629 ,
         \mycordic/N628 , \mycordic/N627 , \mycordic/N626 , \mycordic/N625 ,
         \mycordic/N624 , \mycordic/N623 , \mycordic/N622 , \mycordic/N621 ,
         \mycordic/N620 , \mycordic/N619 , \mycordic/N615 , \mycordic/N565 ,
         \mycordic/N564 , \mycordic/N563 , \mycordic/N562 , \mycordic/N561 ,
         \mycordic/N560 , \mycordic/N559 , \mycordic/N558 , \mycordic/N557 ,
         \mycordic/N556 , \mycordic/N555 , \mycordic/N554 , \mycordic/N553 ,
         \mycordic/N552 , \mycordic/N550 , \mycordic/N549 , \mycordic/N548 ,
         \mycordic/N547 , \mycordic/N546 , \mycordic/N545 , \mycordic/N544 ,
         \mycordic/N543 , \mycordic/N542 , \mycordic/N541 , \mycordic/N540 ,
         \mycordic/N539 , \mycordic/N538 , \mycordic/N537 , \mycordic/N536 ,
         \mycordic/N533 , \mycordic/N532 , \mycordic/N531 , \mycordic/N530 ,
         \mycordic/N529 , \mycordic/N528 , \mycordic/N527 , \mycordic/N526 ,
         \mycordic/N525 , \mycordic/N524 , \mycordic/N523 , \mycordic/N522 ,
         \mycordic/N521 , \mycordic/N520 , \mycordic/N519 , \mycordic/N517 ,
         \mycordic/N516 , \mycordic/N515 , \mycordic/N514 , \mycordic/N513 ,
         \mycordic/N512 , \mycordic/N511 , \mycordic/N510 , \mycordic/N509 ,
         \mycordic/N508 , \mycordic/N507 , \mycordic/N506 , \mycordic/N505 ,
         \mycordic/N504 , \mycordic/N503 , \mycordic/N502 , \mycordic/N500 ,
         \mycordic/N499 , \mycordic/N498 , \mycordic/N497 , \mycordic/N496 ,
         \mycordic/N495 , \mycordic/N494 , \mycordic/N493 , \mycordic/N492 ,
         \mycordic/N491 , \mycordic/N490 , \mycordic/N489 , \mycordic/N488 ,
         \mycordic/N487 , \mycordic/N486 , \mycordic/N485 , \mycordic/N483 ,
         \mycordic/N482 , \mycordic/N481 , \mycordic/N480 , \mycordic/N479 ,
         \mycordic/N478 , \mycordic/N477 , \mycordic/N476 , \mycordic/N475 ,
         \mycordic/N474 , \mycordic/N473 , \mycordic/N472 , \mycordic/N471 ,
         \mycordic/N470 , \mycordic/N469 , \mycordic/N468 , \mycordic/N467 ,
         \mycordic/N466 , \mycordic/N465 , \mycordic/N464 , \mycordic/N463 ,
         \mycordic/N462 , \mycordic/N461 , \mycordic/N460 , \mycordic/N459 ,
         \mycordic/N458 , \mycordic/N457 , \mycordic/N455 , \mycordic/N454 ,
         \mycordic/N453 , \mycordic/N452 , \mycordic/N451 , \mycordic/N450 ,
         \mycordic/N449 , \mycordic/N448 , \mycordic/N447 , \mycordic/N446 ,
         \mycordic/N445 , \mycordic/N444 , \mycordic/N443 , \mycordic/N442 ,
         \mycordic/N441 , \mycordic/N440 , \mycordic/N439 , \mycordic/N438 ,
         \mycordic/N437 , \mycordic/N436 , \mycordic/N435 , \mycordic/N434 ,
         \mycordic/N433 , \mycordic/N432 , \mycordic/N431 , \mycordic/N430 ,
         \mycordic/N428 , \mycordic/N427 , \mycordic/N426 , \mycordic/N425 ,
         \mycordic/N424 , \mycordic/N423 , \mycordic/N422 , \mycordic/N421 ,
         \mycordic/N420 , \mycordic/N419 , \mycordic/N418 , \mycordic/N417 ,
         \mycordic/N416 , \mycordic/N415 , \mycordic/N414 , \mycordic/N413 ,
         \mycordic/N412 , \mycordic/N411 , \mycordic/N410 , \mycordic/N409 ,
         \mycordic/N408 , \mycordic/N407 , \mycordic/N406 , \mycordic/N405 ,
         \mycordic/N404 , \mycordic/N403 , \mycordic/N402 , \mycordic/N401 ,
         \mycordic/N400 , \mycordic/N399 , \mycordic/N398 , \mycordic/N395 ,
         \mycordic/N394 , \mycordic/N393 , \mycordic/N392 , \mycordic/N391 ,
         \mycordic/N390 , \mycordic/N389 , \mycordic/N388 , \mycordic/N387 ,
         \mycordic/N386 , \mycordic/N385 , \mycordic/N384 , \mycordic/N383 ,
         \mycordic/N382 , \mycordic/N381 , \mycordic/N380 , \mycordic/N379 ,
         \mycordic/N378 , \mycordic/N377 , \mycordic/N376 , \mycordic/N375 ,
         \mycordic/N374 , \mycordic/N373 , \mycordic/N372 , \mycordic/N371 ,
         \mycordic/N370 , \mycordic/N369 , \mycordic/N368 , \mycordic/N367 ,
         \mycordic/N366 , \mycordic/N365 , \mycordic/N363 , \mycordic/N362 ,
         \mycordic/N361 , \mycordic/N360 , \mycordic/N359 , \mycordic/N358 ,
         \mycordic/N357 , \mycordic/N356 , \mycordic/N355 , \mycordic/N354 ,
         \mycordic/N353 , \mycordic/N352 , \mycordic/N351 , \mycordic/N350 ,
         \mycordic/N349 , \mycordic/N348 , \mycordic/N347 , \mycordic/N346 ,
         \mycordic/N345 , \mycordic/N344 , \mycordic/N343 , \mycordic/N342 ,
         \mycordic/N341 , \mycordic/N340 , \mycordic/N339 , \mycordic/N338 ,
         \mycordic/N337 , \mycordic/N336 , \mycordic/N335 , \mycordic/N334 ,
         \mycordic/N333 , \mycordic/N331 , \mycordic/N330 , \mycordic/N329 ,
         \mycordic/N328 , \mycordic/N327 , \mycordic/N326 , \mycordic/N325 ,
         \mycordic/N324 , \mycordic/N323 , \mycordic/N322 , \mycordic/N321 ,
         \mycordic/N320 , \mycordic/N319 , \mycordic/N318 , \mycordic/N317 ,
         \mycordic/N316 , \mycordic/N291 , \mycordic/N290 , \mycordic/N289 ,
         \mycordic/N288 , \mycordic/N287 , \mycordic/N267 , \mycordic/N266 ,
         \mycordic/N265 , \mycordic/N264 , \mycordic/N263 , \mycordic/N259 ,
         \mycordic/N258 , \mycordic/N257 , \mycordic/N256 , \mycordic/N255 ,
         \mycordic/N247 , \mycordic/N246 , \mycordic/N245 , \mycordic/N244 ,
         \mycordic/N238 , \mycordic/N237 , \mycordic/N236 , \mycordic/N212 ,
         \mycordic/N211 , \mycordic/N44 , \mycordic/next_ANGLE_table[6][15] ,
         \mycordic/next_ANGLE_table[6][14] ,
         \mycordic/next_ANGLE_table[6][13] ,
         \mycordic/next_ANGLE_table[6][12] ,
         \mycordic/next_ANGLE_table[6][11] ,
         \mycordic/next_ANGLE_table[6][10] , \mycordic/next_ANGLE_table[6][9] ,
         \mycordic/next_ANGLE_table[6][8] , \mycordic/next_ANGLE_table[6][7] ,
         \mycordic/next_ANGLE_table[6][6] , \mycordic/next_ANGLE_table[6][5] ,
         \mycordic/next_ANGLE_table[6][4] , \mycordic/next_ANGLE_table[6][3] ,
         \mycordic/next_ANGLE_table[6][2] , \mycordic/next_ANGLE_table[6][1] ,
         \mycordic/next_ANGLE_table[6][0] , \mycordic/present_C_table[1][0] ,
         \mycordic/present_C_table[1][1] , \mycordic/present_C_table[1][2] ,
         \mycordic/present_C_table[2][0] , \mycordic/present_C_table[2][1] ,
         \mycordic/present_C_table[2][2] , \mycordic/present_C_table[3][0] ,
         \mycordic/present_C_table[3][1] , \mycordic/present_C_table[3][2] ,
         \mycordic/present_C_table[4][0] , \mycordic/present_C_table[4][1] ,
         \mycordic/present_C_table[4][2] , \mycordic/present_C_table[5][0] ,
         \mycordic/present_C_table[5][1] , \mycordic/present_C_table[5][2] ,
         \mycordic/present_C_table[6][0] , \mycordic/present_C_table[6][1] ,
         \mycordic/present_C_table[6][2] , \mycordic/present_C_table[7][0] ,
         \mycordic/present_C_table[7][1] ,
         \mycordic/present_ANGLE_table[6][15] ,
         \mycordic/present_ANGLE_table[6][14] ,
         \mycordic/present_ANGLE_table[6][13] ,
         \mycordic/present_ANGLE_table[6][12] ,
         \mycordic/present_ANGLE_table[6][11] ,
         \mycordic/present_ANGLE_table[6][10] ,
         \mycordic/present_ANGLE_table[6][9] ,
         \mycordic/present_ANGLE_table[6][8] ,
         \mycordic/present_ANGLE_table[6][7] ,
         \mycordic/present_ANGLE_table[6][6] ,
         \mycordic/present_ANGLE_table[6][5] ,
         \mycordic/present_ANGLE_table[6][4] ,
         \mycordic/present_ANGLE_table[6][3] ,
         \mycordic/present_ANGLE_table[6][2] ,
         \mycordic/present_ANGLE_table[6][1] ,
         \mycordic/present_ANGLE_table[5][15] ,
         \mycordic/present_ANGLE_table[5][14] ,
         \mycordic/present_ANGLE_table[5][13] ,
         \mycordic/present_ANGLE_table[5][12] ,
         \mycordic/present_ANGLE_table[5][11] ,
         \mycordic/present_ANGLE_table[5][10] ,
         \mycordic/present_ANGLE_table[5][9] ,
         \mycordic/present_ANGLE_table[5][8] ,
         \mycordic/present_ANGLE_table[5][7] ,
         \mycordic/present_ANGLE_table[5][6] ,
         \mycordic/present_ANGLE_table[5][5] ,
         \mycordic/present_ANGLE_table[5][4] ,
         \mycordic/present_ANGLE_table[5][3] ,
         \mycordic/present_ANGLE_table[5][2] ,
         \mycordic/present_ANGLE_table[5][1] ,
         \mycordic/present_ANGLE_table[4][15] ,
         \mycordic/present_ANGLE_table[4][14] ,
         \mycordic/present_ANGLE_table[4][13] ,
         \mycordic/present_ANGLE_table[4][12] ,
         \mycordic/present_ANGLE_table[4][11] ,
         \mycordic/present_ANGLE_table[4][10] ,
         \mycordic/present_ANGLE_table[4][9] ,
         \mycordic/present_ANGLE_table[4][8] ,
         \mycordic/present_ANGLE_table[4][7] ,
         \mycordic/present_ANGLE_table[4][6] ,
         \mycordic/present_ANGLE_table[4][5] ,
         \mycordic/present_ANGLE_table[4][4] ,
         \mycordic/present_ANGLE_table[4][3] ,
         \mycordic/present_ANGLE_table[4][2] ,
         \mycordic/present_ANGLE_table[4][1] ,
         \mycordic/present_ANGLE_table[4][0] ,
         \mycordic/present_ANGLE_table[3][15] ,
         \mycordic/present_ANGLE_table[3][14] ,
         \mycordic/present_ANGLE_table[3][13] ,
         \mycordic/present_ANGLE_table[3][12] ,
         \mycordic/present_ANGLE_table[3][11] ,
         \mycordic/present_ANGLE_table[3][10] ,
         \mycordic/present_ANGLE_table[3][9] ,
         \mycordic/present_ANGLE_table[3][8] ,
         \mycordic/present_ANGLE_table[3][7] ,
         \mycordic/present_ANGLE_table[3][6] ,
         \mycordic/present_ANGLE_table[3][5] ,
         \mycordic/present_ANGLE_table[3][4] ,
         \mycordic/present_ANGLE_table[3][3] ,
         \mycordic/present_ANGLE_table[3][2] ,
         \mycordic/present_ANGLE_table[3][1] ,
         \mycordic/present_ANGLE_table[3][0] ,
         \mycordic/present_ANGLE_table[2][15] ,
         \mycordic/present_ANGLE_table[2][14] ,
         \mycordic/present_ANGLE_table[2][13] ,
         \mycordic/present_ANGLE_table[2][12] ,
         \mycordic/present_ANGLE_table[2][11] ,
         \mycordic/present_ANGLE_table[2][10] ,
         \mycordic/present_ANGLE_table[2][9] ,
         \mycordic/present_ANGLE_table[2][8] ,
         \mycordic/present_ANGLE_table[2][7] ,
         \mycordic/present_ANGLE_table[2][6] ,
         \mycordic/present_ANGLE_table[2][5] ,
         \mycordic/present_ANGLE_table[2][4] ,
         \mycordic/present_ANGLE_table[2][3] ,
         \mycordic/present_ANGLE_table[2][2] ,
         \mycordic/present_ANGLE_table[2][1] ,
         \mycordic/present_ANGLE_table[1][15] ,
         \mycordic/present_ANGLE_table[1][14] ,
         \mycordic/present_ANGLE_table[1][13] ,
         \mycordic/present_ANGLE_table[1][12] ,
         \mycordic/present_ANGLE_table[1][11] ,
         \mycordic/present_ANGLE_table[1][10] ,
         \mycordic/present_ANGLE_table[1][9] ,
         \mycordic/present_ANGLE_table[1][8] ,
         \mycordic/present_ANGLE_table[1][7] ,
         \mycordic/present_ANGLE_table[1][6] ,
         \mycordic/present_ANGLE_table[1][5] ,
         \mycordic/present_ANGLE_table[1][4] ,
         \mycordic/present_ANGLE_table[1][3] ,
         \mycordic/present_ANGLE_table[1][2] ,
         \mycordic/present_ANGLE_table[1][1] ,
         \mycordic/present_ANGLE_table[1][0] ,
         \mycordic/present_Q_table[0][3] , \mycordic/present_Q_table[0][4] ,
         \mycordic/present_Q_table[0][5] , \mycordic/present_Q_table[0][6] ,
         \mycordic/present_Q_table[0][7] , \mycordic/present_Q_table[1][3] ,
         \mycordic/present_Q_table[1][4] , \mycordic/present_Q_table[1][5] ,
         \mycordic/present_Q_table[1][6] , \mycordic/present_Q_table[1][7] ,
         \mycordic/present_Q_table[2][0] , \mycordic/present_Q_table[2][1] ,
         \mycordic/present_Q_table[2][2] , \mycordic/present_Q_table[2][3] ,
         \mycordic/present_Q_table[2][4] , \mycordic/present_Q_table[2][5] ,
         \mycordic/present_Q_table[2][6] , \mycordic/present_Q_table[2][7] ,
         \mycordic/present_Q_table[3][0] , \mycordic/present_Q_table[3][1] ,
         \mycordic/present_Q_table[3][2] , \mycordic/present_Q_table[3][3] ,
         \mycordic/present_Q_table[3][4] , \mycordic/present_Q_table[3][5] ,
         \mycordic/present_Q_table[3][6] , \mycordic/present_Q_table[3][7] ,
         \mycordic/present_Q_table[4][0] , \mycordic/present_Q_table[4][1] ,
         \mycordic/present_Q_table[4][2] , \mycordic/present_Q_table[4][3] ,
         \mycordic/present_Q_table[4][4] , \mycordic/present_Q_table[4][5] ,
         \mycordic/present_Q_table[4][6] , \mycordic/present_Q_table[4][7] ,
         \mycordic/present_Q_table[5][0] , \mycordic/present_Q_table[5][1] ,
         \mycordic/present_Q_table[5][2] , \mycordic/present_Q_table[5][3] ,
         \mycordic/present_Q_table[5][4] , \mycordic/present_Q_table[5][5] ,
         \mycordic/present_Q_table[5][6] , \mycordic/present_Q_table[5][7] ,
         \mycordic/present_Q_table[6][7] , \mycordic/present_I_table[0][3] ,
         \mycordic/present_I_table[0][4] , \mycordic/present_I_table[0][5] ,
         \mycordic/present_I_table[0][6] , \mycordic/present_I_table[0][7] ,
         \mycordic/present_I_table[1][3] , \mycordic/present_I_table[1][4] ,
         \mycordic/present_I_table[1][5] , \mycordic/present_I_table[1][6] ,
         \mycordic/present_I_table[1][7] , \mycordic/present_I_table[2][0] ,
         \mycordic/present_I_table[2][1] , \mycordic/present_I_table[2][2] ,
         \mycordic/present_I_table[2][3] , \mycordic/present_I_table[2][4] ,
         \mycordic/present_I_table[2][5] , \mycordic/present_I_table[2][6] ,
         \mycordic/present_I_table[2][7] , \mycordic/present_I_table[3][0] ,
         \mycordic/present_I_table[3][1] , \mycordic/present_I_table[3][2] ,
         \mycordic/present_I_table[3][3] , \mycordic/present_I_table[3][4] ,
         \mycordic/present_I_table[3][5] , \mycordic/present_I_table[3][6] ,
         \mycordic/present_I_table[3][7] , \mycordic/present_I_table[4][0] ,
         \mycordic/present_I_table[4][1] , \mycordic/present_I_table[4][2] ,
         \mycordic/present_I_table[4][3] , \mycordic/present_I_table[4][4] ,
         \mycordic/present_I_table[4][5] , \mycordic/present_I_table[4][6] ,
         \mycordic/present_I_table[4][7] , \mycordic/present_I_table[5][4] ,
         \mycordic/present_I_table[5][5] , \mycordic/present_I_table[5][6] ,
         \mycordic/present_I_table[5][7] , \my_rotation/n85 ,
         \my_rotation/n84 , \my_rotation/n83 , \my_rotation/n82 ,
         \my_rotation/n81 , \my_rotation/n80 , \my_rotation/n79 ,
         \my_rotation/n78 , \my_rotation/n77 , \my_rotation/n76 ,
         \my_rotation/n75 , \my_rotation/n74 , \my_rotation/n73 ,
         \my_rotation/n72 , \my_rotation/n71 , \my_rotation/n70 ,
         \my_rotation/n69 , \my_rotation/n68 , \my_rotation/n67 ,
         \my_rotation/n66 , \my_rotation/n65 , \my_rotation/n64 ,
         \my_rotation/n63 , \my_rotation/n62 , \my_rotation/n61 ,
         \my_rotation/n60 , \my_rotation/n59 , \my_rotation/n58 ,
         \my_rotation/n57 , \my_rotation/n56 , \my_rotation/n55 ,
         \my_rotation/n54 , \my_rotation/n53 , \my_rotation/n52 ,
         \my_rotation/n51 , \my_rotation/n50 , \my_rotation/n49 ,
         \my_rotation/n48 , \my_rotation/n47 , \my_rotation/N40 ,
         \my_rotation/N39 , \my_rotation/N38 , \my_rotation/N37 ,
         \my_rotation/N36 , \my_rotation/N35 , \my_rotation/N34 ,
         \my_rotation/N33 , \my_rotation/N32 , \my_rotation/N31 ,
         \my_rotation/N30 , \my_rotation/N29 , \my_rotation/N25 ,
         \my_rotation/N23 , \my_rotation/present_angle[0][15] ,
         \my_rotation/present_angle[0][14] ,
         \my_rotation/present_angle[0][13] ,
         \my_rotation/present_angle[0][12] ,
         \my_rotation/present_angle[0][11] ,
         \my_rotation/present_angle[0][10] , \my_rotation/present_angle[0][9] ,
         \my_rotation/present_angle[0][8] , \my_rotation/present_angle[0][7] ,
         \my_rotation/present_angle[0][6] , \my_rotation/present_angle[0][5] ,
         \my_rotation/present_angle[0][4] , \my_rotation/present_angle[0][3] ,
         \my_rotation/present_angle[0][2] , \my_rotation/present_angle[0][1] ,
         \my_rotation/present_angle[0][0] , \mycordic/add_191/carry[2] ,
         \mycordic/add_191/carry[3] , \mycordic/add_191/carry[4] ,
         \mycordic/add_191/carry[5] , \mycordic/add_191/carry[6] ,
         \mycordic/add_191/carry[7] , \mycordic/add_191/carry[8] ,
         \mycordic/add_191/carry[9] , \mycordic/add_191/carry[10] ,
         \mycordic/add_191/carry[11] , \mycordic/add_191/carry[12] ,
         \mycordic/add_191/carry[13] , \mycordic/add_191/carry[14] ,
         \mycordic/add_191/carry[15] , \mycordic/sub_196/carry[2] ,
         \mycordic/sub_196/carry[3] , \mycordic/sub_196/carry[4] ,
         \mycordic/sub_196/carry[5] , \mycordic/sub_196/carry[6] ,
         \mycordic/sub_196/carry[7] , \mycordic/sub_196/carry[8] ,
         \mycordic/sub_196/carry[9] , \mycordic/sub_196/carry[10] ,
         \mycordic/sub_196/carry[11] , \mycordic/sub_196/carry[12] ,
         \mycordic/sub_196/carry[13] , \mycordic/sub_196/carry[14] ,
         \mycordic/sub_196/carry[15] , \mycordic/add_213/carry[2] ,
         \mycordic/add_213/carry[3] , \mycordic/add_213/carry[4] ,
         \mycordic/add_213/carry[5] , \mycordic/add_213/carry[6] ,
         \mycordic/add_213/carry[7] , \mycordic/add_213/carry[8] ,
         \mycordic/add_213/carry[9] , \mycordic/add_213/carry[10] ,
         \mycordic/add_213/carry[11] , \mycordic/add_213/carry[12] ,
         \mycordic/add_213/carry[13] , \mycordic/add_213/carry[14] ,
         \mycordic/add_213/carry[15] , \mycordic/sub_218/carry[2] ,
         \mycordic/sub_218/carry[3] , \mycordic/sub_218/carry[4] ,
         \mycordic/sub_218/carry[5] , \mycordic/sub_218/carry[6] ,
         \mycordic/sub_218/carry[7] , \mycordic/sub_218/carry[8] ,
         \mycordic/sub_218/carry[9] , \mycordic/sub_218/carry[10] ,
         \mycordic/sub_218/carry[11] , \mycordic/sub_218/carry[12] ,
         \mycordic/sub_218/carry[13] , \mycordic/sub_218/carry[14] ,
         \mycordic/sub_218/carry[15] , \mycordic/sub_223/carry[7] ,
         \mycordic/add_224/carry[2] , \mycordic/add_224/carry[3] ,
         \mycordic/add_224/carry[4] , \mycordic/add_224/carry[5] ,
         \mycordic/add_224/carry[6] , \mycordic/add_224/carry[7] ,
         \mycordic/add_224/carry[8] , \mycordic/add_224/carry[9] ,
         \mycordic/add_224/carry[10] , \mycordic/add_224/carry[11] ,
         \mycordic/add_224/carry[12] , \mycordic/add_224/carry[13] ,
         \mycordic/add_224/carry[14] , \mycordic/add_224/carry[15] ,
         \mycordic/add_228/carry[7] , \mycordic/sub_229/carry[2] ,
         \mycordic/sub_229/carry[3] , \mycordic/sub_229/carry[4] ,
         \mycordic/sub_229/carry[5] , \mycordic/sub_229/carry[6] ,
         \mycordic/sub_229/carry[7] , \mycordic/sub_229/carry[8] ,
         \mycordic/sub_229/carry[9] , \mycordic/sub_229/carry[10] ,
         \mycordic/sub_229/carry[11] , \mycordic/sub_229/carry[12] ,
         \mycordic/sub_229/carry[13] , \mycordic/sub_229/carry[14] ,
         \mycordic/sub_229/carry[15] , n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704;
  wire   [15:0] cordic_to_rotation;
  wire   [3:0] I;
  wire   [3:0] Q;
  wire   [2:0] present_state;
  wire   [15:0] \my_rotation/delta ;
  wire   [16:0] \my_rotation/sub_35/carry ;
  wire   [15:1] \my_rotation/add_38/carry ;
  wire   [7:1] \mycordic/r144/carry ;
  wire   [15:1] \mycordic/r173/carry ;
  wire   [8:0] \mycordic/sub_178/carry ;
  wire   [8:0] \mycordic/sub_182/carry ;
  wire   [7:1] \mycordic/add_189/carry ;
  wire   [8:0] \mycordic/sub_190/carry ;
  wire   [8:0] \mycordic/sub_194/carry ;
  wire   [7:1] \mycordic/add_195/carry ;
  wire   [7:1] \mycordic/add_200/carry ;
  wire   [8:0] \mycordic/sub_201/carry ;
  wire   [15:1] \mycordic/add_202/carry ;
  wire   [8:0] \mycordic/sub_205/carry ;
  wire   [7:1] \mycordic/add_206/carry ;
  wire   [16:0] \mycordic/sub_207/carry ;
  wire   [7:1] \mycordic/add_211/carry ;
  wire   [8:0] \mycordic/sub_212/carry ;
  wire   [8:0] \mycordic/sub_216/carry ;
  wire   [7:1] \mycordic/add_217/carry ;
  wire   [15:1] \mycordic/add_233/carry ;
  wire   [16:0] \mycordic/sub_236/carry ;
  wire   [15:1] \mycordic/add_262/carry ;
  wire   [8:0] \mycordic/sub_add_150_b0/carry ;
  wire   [8:0] \mycordic/sub_add_151_b0/carry ;

  ADD32 \my_rotation/sub_35/U2_1  ( .A(\my_rotation/present_angle[0][1] ), .B(
        n47), .CI(\my_rotation/sub_35/carry [1]), .CO(
        \my_rotation/sub_35/carry [2]), .S(\my_rotation/delta [1]) );
  ADD32 \my_rotation/sub_35/U2_2  ( .A(\my_rotation/present_angle[0][2] ), .B(
        n46), .CI(\my_rotation/sub_35/carry [2]), .CO(
        \my_rotation/sub_35/carry [3]), .S(\my_rotation/delta [2]) );
  ADD32 \my_rotation/sub_35/U2_3  ( .A(\my_rotation/present_angle[0][3] ), .B(
        n34), .CI(\my_rotation/sub_35/carry [3]), .CO(
        \my_rotation/sub_35/carry [4]), .S(\my_rotation/delta [3]) );
  ADD32 \my_rotation/sub_35/U2_4  ( .A(\my_rotation/present_angle[0][4] ), .B(
        n49), .CI(\my_rotation/sub_35/carry [4]), .CO(
        \my_rotation/sub_35/carry [5]), .S(\my_rotation/delta [4]) );
  ADD32 \my_rotation/sub_35/U2_5  ( .A(\my_rotation/present_angle[0][5] ), .B(
        n52), .CI(\my_rotation/sub_35/carry [5]), .CO(
        \my_rotation/sub_35/carry [6]), .S(\my_rotation/delta [5]) );
  ADD32 \my_rotation/sub_35/U2_6  ( .A(\my_rotation/present_angle[0][6] ), .B(
        n51), .CI(\my_rotation/sub_35/carry [6]), .CO(
        \my_rotation/sub_35/carry [7]), .S(\my_rotation/delta [6]) );
  ADD32 \my_rotation/sub_35/U2_7  ( .A(\my_rotation/present_angle[0][7] ), .B(
        n50), .CI(\my_rotation/sub_35/carry [7]), .CO(
        \my_rotation/sub_35/carry [8]), .S(\my_rotation/delta [7]) );
  ADD32 \my_rotation/sub_35/U2_8  ( .A(\my_rotation/present_angle[0][8] ), .B(
        n55), .CI(\my_rotation/sub_35/carry [8]), .CO(
        \my_rotation/sub_35/carry [9]), .S(\my_rotation/delta [8]) );
  ADD32 \my_rotation/sub_35/U2_9  ( .A(\my_rotation/present_angle[0][9] ), .B(
        n54), .CI(\my_rotation/sub_35/carry [9]), .CO(
        \my_rotation/sub_35/carry [10]), .S(\my_rotation/delta [9]) );
  ADD32 \my_rotation/sub_35/U2_10  ( .A(\my_rotation/present_angle[0][10] ), 
        .B(n53), .CI(\my_rotation/sub_35/carry [10]), .CO(
        \my_rotation/sub_35/carry [11]), .S(\my_rotation/delta [10]) );
  ADD32 \my_rotation/sub_35/U2_11  ( .A(\my_rotation/present_angle[0][11] ), 
        .B(n68), .CI(\my_rotation/sub_35/carry [11]), .CO(
        \my_rotation/sub_35/carry [12]), .S(\my_rotation/delta [11]) );
  ADD32 \my_rotation/sub_35/U2_12  ( .A(\my_rotation/present_angle[0][12] ), 
        .B(n67), .CI(\my_rotation/sub_35/carry [12]), .CO(
        \my_rotation/sub_35/carry [13]), .S(\my_rotation/delta [12]) );
  ADD32 \my_rotation/sub_35/U2_13  ( .A(\my_rotation/present_angle[0][13] ), 
        .B(n91), .CI(\my_rotation/sub_35/carry [13]), .CO(
        \my_rotation/sub_35/carry [14]), .S(\my_rotation/delta [13]) );
  ADD32 \my_rotation/sub_35/U2_14  ( .A(\my_rotation/present_angle[0][14] ), 
        .B(n90), .CI(\my_rotation/sub_35/carry [14]), .CO(
        \my_rotation/sub_35/carry [15]), .S(\my_rotation/delta [14]) );
  ADD32 \mycordic/r144/U1_4  ( .A(\mycordic/present_I_table[1][4] ), .B(
        \mycordic/present_Q_table[1][4] ), .CI(\mycordic/r144/carry [4]), .CO(
        \mycordic/r144/carry [5]), .S(\mycordic/N256 ) );
  ADD32 \mycordic/r144/U1_5  ( .A(\mycordic/present_I_table[1][5] ), .B(
        \mycordic/present_Q_table[1][5] ), .CI(\mycordic/r144/carry [5]), .CO(
        \mycordic/r144/carry [6]), .S(\mycordic/N257 ) );
  ADD32 \mycordic/r144/U1_6  ( .A(\mycordic/present_I_table[1][6] ), .B(
        \mycordic/present_Q_table[1][6] ), .CI(\mycordic/r144/carry [6]), .CO(
        \mycordic/r144/carry [7]), .S(\mycordic/N258 ) );
  ADD32 \mycordic/r144/U1_7  ( .A(\mycordic/present_I_table[1][7] ), .B(
        \mycordic/present_Q_table[1][7] ), .CI(\mycordic/r144/carry [7]), .S(
        \mycordic/N259 ) );
  ADD32 \mycordic/sub_178/U2_4  ( .A(\mycordic/present_Q_table[1][4] ), .B(
        n161), .CI(\mycordic/sub_178/carry [4]), .CO(
        \mycordic/sub_178/carry [5]), .S(\mycordic/N264 ) );
  ADD32 \mycordic/sub_178/U2_5  ( .A(\mycordic/present_Q_table[1][5] ), .B(
        n160), .CI(\mycordic/sub_178/carry [5]), .CO(
        \mycordic/sub_178/carry [6]), .S(\mycordic/N265 ) );
  ADD32 \mycordic/sub_178/U2_6  ( .A(\mycordic/present_Q_table[1][6] ), .B(
        n188), .CI(\mycordic/sub_178/carry [6]), .CO(
        \mycordic/sub_178/carry [7]), .S(\mycordic/N266 ) );
  ADD32 \mycordic/sub_182/U2_4  ( .A(\mycordic/present_I_table[1][4] ), .B(
        n163), .CI(\mycordic/sub_182/carry [4]), .CO(
        \mycordic/sub_182/carry [5]), .S(\mycordic/N288 ) );
  ADD32 \mycordic/sub_182/U2_5  ( .A(\mycordic/present_I_table[1][5] ), .B(
        n162), .CI(\mycordic/sub_182/carry [5]), .CO(
        \mycordic/sub_182/carry [6]), .S(\mycordic/N289 ) );
  ADD32 \mycordic/sub_182/U2_6  ( .A(\mycordic/present_I_table[1][6] ), .B(
        n189), .CI(\mycordic/sub_182/carry [6]), .CO(
        \mycordic/sub_182/carry [7]), .S(\mycordic/N290 ) );
  ADD32 \mycordic/add_189/U1_1  ( .A(\mycordic/present_I_table[2][1] ), .B(
        \mycordic/present_Q_table[2][2] ), .CI(\mycordic/add_189/carry [1]), 
        .CO(\mycordic/add_189/carry [2]), .S(\mycordic/N317 ) );
  ADD32 \mycordic/add_189/U1_2  ( .A(\mycordic/present_I_table[2][2] ), .B(
        \mycordic/present_Q_table[2][3] ), .CI(\mycordic/add_189/carry [2]), 
        .CO(\mycordic/add_189/carry [3]), .S(\mycordic/N318 ) );
  ADD32 \mycordic/add_189/U1_3  ( .A(\mycordic/present_I_table[2][3] ), .B(
        \mycordic/present_Q_table[2][4] ), .CI(\mycordic/add_189/carry [3]), 
        .CO(\mycordic/add_189/carry [4]), .S(\mycordic/N319 ) );
  ADD32 \mycordic/add_189/U1_4  ( .A(\mycordic/present_I_table[2][4] ), .B(
        \mycordic/present_Q_table[2][5] ), .CI(\mycordic/add_189/carry [4]), 
        .CO(\mycordic/add_189/carry [5]), .S(\mycordic/N320 ) );
  ADD32 \mycordic/add_189/U1_5  ( .A(\mycordic/present_I_table[2][5] ), .B(
        \mycordic/present_Q_table[2][6] ), .CI(\mycordic/add_189/carry [5]), 
        .CO(\mycordic/add_189/carry [6]), .S(\mycordic/N321 ) );
  ADD32 \mycordic/add_189/U1_6  ( .A(\mycordic/present_I_table[2][6] ), .B(
        \mycordic/present_Q_table[2][7] ), .CI(\mycordic/add_189/carry [6]), 
        .CO(\mycordic/add_189/carry [7]), .S(\mycordic/N322 ) );
  ADD32 \mycordic/sub_190/U2_1  ( .A(\mycordic/present_Q_table[2][1] ), .B(
        n127), .CI(\mycordic/sub_190/carry [1]), .CO(
        \mycordic/sub_190/carry [2]), .S(\mycordic/N325 ) );
  ADD32 \mycordic/sub_190/U2_2  ( .A(\mycordic/present_Q_table[2][2] ), .B(
        n126), .CI(\mycordic/sub_190/carry [2]), .CO(
        \mycordic/sub_190/carry [3]), .S(\mycordic/N326 ) );
  ADD32 \mycordic/sub_190/U2_3  ( .A(\mycordic/present_Q_table[2][3] ), .B(
        n125), .CI(\mycordic/sub_190/carry [3]), .CO(
        \mycordic/sub_190/carry [4]), .S(\mycordic/N327 ) );
  ADD32 \mycordic/sub_190/U2_4  ( .A(\mycordic/present_Q_table[2][4] ), .B(
        n159), .CI(\mycordic/sub_190/carry [4]), .CO(
        \mycordic/sub_190/carry [5]), .S(\mycordic/N328 ) );
  ADD32 \mycordic/sub_190/U2_5  ( .A(\mycordic/present_Q_table[2][5] ), .B(
        n158), .CI(\mycordic/sub_190/carry [5]), .CO(
        \mycordic/sub_190/carry [6]), .S(\mycordic/N329 ) );
  ADD32 \mycordic/sub_190/U2_6  ( .A(\mycordic/present_Q_table[2][6] ), .B(
        n186), .CI(\mycordic/sub_190/carry [6]), .CO(
        \mycordic/sub_190/carry [7]), .S(\mycordic/N330 ) );
  ADD32 \mycordic/sub_194/U2_1  ( .A(\mycordic/present_I_table[2][1] ), .B(
        n124), .CI(\mycordic/sub_194/carry [1]), .CO(
        \mycordic/sub_194/carry [2]), .S(\mycordic/N349 ) );
  ADD32 \mycordic/sub_194/U2_2  ( .A(\mycordic/present_I_table[2][2] ), .B(
        n123), .CI(\mycordic/sub_194/carry [2]), .CO(
        \mycordic/sub_194/carry [3]), .S(\mycordic/N350 ) );
  ADD32 \mycordic/sub_194/U2_3  ( .A(\mycordic/present_I_table[2][3] ), .B(
        n122), .CI(\mycordic/sub_194/carry [3]), .CO(
        \mycordic/sub_194/carry [4]), .S(\mycordic/N351 ) );
  ADD32 \mycordic/sub_194/U2_4  ( .A(\mycordic/present_I_table[2][4] ), .B(
        n157), .CI(\mycordic/sub_194/carry [4]), .CO(
        \mycordic/sub_194/carry [5]), .S(\mycordic/N352 ) );
  ADD32 \mycordic/sub_194/U2_5  ( .A(\mycordic/present_I_table[2][5] ), .B(
        n156), .CI(\mycordic/sub_194/carry [5]), .CO(
        \mycordic/sub_194/carry [6]), .S(\mycordic/N353 ) );
  ADD32 \mycordic/sub_194/U2_6  ( .A(\mycordic/present_I_table[2][6] ), .B(
        n185), .CI(\mycordic/sub_194/carry [6]), .CO(
        \mycordic/sub_194/carry [7]), .S(\mycordic/N354 ) );
  ADD32 \mycordic/add_195/U1_1  ( .A(\mycordic/present_Q_table[2][1] ), .B(
        \mycordic/present_I_table[2][2] ), .CI(\mycordic/add_195/carry [1]), 
        .CO(\mycordic/add_195/carry [2]), .S(\mycordic/N357 ) );
  ADD32 \mycordic/add_195/U1_2  ( .A(\mycordic/present_Q_table[2][2] ), .B(
        \mycordic/present_I_table[2][3] ), .CI(\mycordic/add_195/carry [2]), 
        .CO(\mycordic/add_195/carry [3]), .S(\mycordic/N358 ) );
  ADD32 \mycordic/add_195/U1_3  ( .A(\mycordic/present_Q_table[2][3] ), .B(
        \mycordic/present_I_table[2][4] ), .CI(\mycordic/add_195/carry [3]), 
        .CO(\mycordic/add_195/carry [4]), .S(\mycordic/N359 ) );
  ADD32 \mycordic/add_195/U1_4  ( .A(\mycordic/present_Q_table[2][4] ), .B(
        \mycordic/present_I_table[2][5] ), .CI(\mycordic/add_195/carry [4]), 
        .CO(\mycordic/add_195/carry [5]), .S(\mycordic/N360 ) );
  ADD32 \mycordic/add_195/U1_5  ( .A(\mycordic/present_Q_table[2][5] ), .B(
        \mycordic/present_I_table[2][6] ), .CI(\mycordic/add_195/carry [5]), 
        .CO(\mycordic/add_195/carry [6]), .S(\mycordic/N361 ) );
  ADD32 \mycordic/add_195/U1_6  ( .A(\mycordic/present_Q_table[2][6] ), .B(
        \mycordic/present_I_table[2][7] ), .CI(\mycordic/add_195/carry [6]), 
        .CO(\mycordic/add_195/carry [7]), .S(\mycordic/N362 ) );
  ADD32 \mycordic/add_200/U1_1  ( .A(\mycordic/present_I_table[3][1] ), .B(
        \mycordic/present_Q_table[3][3] ), .CI(\mycordic/add_200/carry [1]), 
        .CO(\mycordic/add_200/carry [2]), .S(\mycordic/N381 ) );
  ADD32 \mycordic/add_200/U1_2  ( .A(\mycordic/present_I_table[3][2] ), .B(
        \mycordic/present_Q_table[3][4] ), .CI(\mycordic/add_200/carry [2]), 
        .CO(\mycordic/add_200/carry [3]), .S(\mycordic/N382 ) );
  ADD32 \mycordic/add_200/U1_3  ( .A(\mycordic/present_I_table[3][3] ), .B(
        \mycordic/present_Q_table[3][5] ), .CI(\mycordic/add_200/carry [3]), 
        .CO(\mycordic/add_200/carry [4]), .S(\mycordic/N383 ) );
  ADD32 \mycordic/add_200/U1_4  ( .A(\mycordic/present_I_table[3][4] ), .B(
        \mycordic/present_Q_table[3][6] ), .CI(\mycordic/add_200/carry [4]), 
        .CO(\mycordic/add_200/carry [5]), .S(\mycordic/N384 ) );
  ADD32 \mycordic/add_200/U1_5  ( .A(\mycordic/present_I_table[3][5] ), .B(
        \mycordic/present_Q_table[3][7] ), .CI(\mycordic/add_200/carry [5]), 
        .CO(\mycordic/add_200/carry [6]), .S(\mycordic/N385 ) );
  ADD32 \mycordic/add_200/U1_6  ( .A(\mycordic/present_I_table[3][6] ), .B(
        \mycordic/present_Q_table[3][7] ), .CI(\mycordic/add_200/carry [6]), 
        .CO(\mycordic/add_200/carry [7]), .S(\mycordic/N386 ) );
  ADD32 \mycordic/sub_201/U2_1  ( .A(\mycordic/present_Q_table[3][1] ), .B(
        n121), .CI(\mycordic/sub_201/carry [1]), .CO(
        \mycordic/sub_201/carry [2]), .S(\mycordic/N389 ) );
  ADD32 \mycordic/sub_201/U2_2  ( .A(\mycordic/present_Q_table[3][2] ), .B(
        n120), .CI(\mycordic/sub_201/carry [2]), .CO(
        \mycordic/sub_201/carry [3]), .S(\mycordic/N390 ) );
  ADD32 \mycordic/sub_201/U2_3  ( .A(\mycordic/present_Q_table[3][3] ), .B(
        n119), .CI(\mycordic/sub_201/carry [3]), .CO(
        \mycordic/sub_201/carry [4]), .S(\mycordic/N391 ) );
  ADD32 \mycordic/sub_201/U2_4  ( .A(\mycordic/present_Q_table[3][4] ), .B(
        n155), .CI(\mycordic/sub_201/carry [4]), .CO(
        \mycordic/sub_201/carry [5]), .S(\mycordic/N392 ) );
  ADD32 \mycordic/sub_201/U2_5  ( .A(\mycordic/present_Q_table[3][5] ), .B(
        n152), .CI(\mycordic/sub_201/carry [5]), .CO(
        \mycordic/sub_201/carry [6]), .S(\mycordic/N393 ) );
  ADD32 \mycordic/sub_201/U2_6  ( .A(\mycordic/present_Q_table[3][6] ), .B(
        n152), .CI(\mycordic/sub_201/carry [6]), .CO(
        \mycordic/sub_201/carry [7]), .S(\mycordic/N394 ) );
  ADD32 \mycordic/sub_205/U2_1  ( .A(\mycordic/present_I_table[3][1] ), .B(
        n118), .CI(\mycordic/sub_205/carry [1]), .CO(
        \mycordic/sub_205/carry [2]), .S(\mycordic/N413 ) );
  ADD32 \mycordic/sub_205/U2_2  ( .A(\mycordic/present_I_table[3][2] ), .B(
        n117), .CI(\mycordic/sub_205/carry [2]), .CO(
        \mycordic/sub_205/carry [3]), .S(\mycordic/N414 ) );
  ADD32 \mycordic/sub_205/U2_3  ( .A(\mycordic/present_I_table[3][3] ), .B(
        n116), .CI(\mycordic/sub_205/carry [3]), .CO(
        \mycordic/sub_205/carry [4]), .S(\mycordic/N415 ) );
  ADD32 \mycordic/sub_205/U2_4  ( .A(\mycordic/present_I_table[3][4] ), .B(
        n154), .CI(\mycordic/sub_205/carry [4]), .CO(
        \mycordic/sub_205/carry [5]), .S(\mycordic/N416 ) );
  ADD32 \mycordic/sub_205/U2_5  ( .A(\mycordic/present_I_table[3][5] ), .B(
        n151), .CI(\mycordic/sub_205/carry [5]), .CO(
        \mycordic/sub_205/carry [6]), .S(\mycordic/N417 ) );
  ADD32 \mycordic/sub_205/U2_6  ( .A(\mycordic/present_I_table[3][6] ), .B(
        n151), .CI(\mycordic/sub_205/carry [6]), .CO(
        \mycordic/sub_205/carry [7]), .S(\mycordic/N418 ) );
  ADD32 \mycordic/add_206/U1_1  ( .A(\mycordic/present_Q_table[3][1] ), .B(
        \mycordic/present_I_table[3][3] ), .CI(\mycordic/add_206/carry [1]), 
        .CO(\mycordic/add_206/carry [2]), .S(\mycordic/N421 ) );
  ADD32 \mycordic/add_206/U1_2  ( .A(\mycordic/present_Q_table[3][2] ), .B(
        \mycordic/present_I_table[3][4] ), .CI(\mycordic/add_206/carry [2]), 
        .CO(\mycordic/add_206/carry [3]), .S(\mycordic/N422 ) );
  ADD32 \mycordic/add_206/U1_3  ( .A(\mycordic/present_Q_table[3][3] ), .B(
        \mycordic/present_I_table[3][5] ), .CI(\mycordic/add_206/carry [3]), 
        .CO(\mycordic/add_206/carry [4]), .S(\mycordic/N423 ) );
  ADD32 \mycordic/add_206/U1_4  ( .A(\mycordic/present_Q_table[3][4] ), .B(
        \mycordic/present_I_table[3][6] ), .CI(\mycordic/add_206/carry [4]), 
        .CO(\mycordic/add_206/carry [5]), .S(\mycordic/N424 ) );
  ADD32 \mycordic/add_206/U1_5  ( .A(\mycordic/present_Q_table[3][5] ), .B(
        \mycordic/present_I_table[3][7] ), .CI(\mycordic/add_206/carry [5]), 
        .CO(\mycordic/add_206/carry [6]), .S(\mycordic/N425 ) );
  ADD32 \mycordic/add_206/U1_6  ( .A(\mycordic/present_Q_table[3][6] ), .B(
        \mycordic/present_I_table[3][7] ), .CI(\mycordic/add_206/carry [6]), 
        .CO(\mycordic/add_206/carry [7]), .S(\mycordic/N426 ) );
  ADD32 \mycordic/add_211/U1_4  ( .A(\mycordic/present_I_table[4][4] ), .B(
        \mycordic/present_Q_table[4][7] ), .CI(n644), .CO(
        \mycordic/add_211/carry [5]), .S(\mycordic/N444 ) );
  ADD32 \mycordic/add_211/U1_5  ( .A(\mycordic/present_I_table[4][5] ), .B(
        \mycordic/present_Q_table[4][7] ), .CI(\mycordic/add_211/carry [5]), 
        .CO(\mycordic/add_211/carry [6]), .S(\mycordic/N445 ) );
  ADD32 \mycordic/add_211/U1_6  ( .A(\mycordic/present_I_table[4][6] ), .B(
        \mycordic/present_Q_table[4][7] ), .CI(\mycordic/add_211/carry [6]), 
        .CO(\mycordic/add_211/carry [7]), .S(\mycordic/N446 ) );
  ADD32 \mycordic/sub_212/U2_1  ( .A(\mycordic/present_Q_table[4][1] ), .B(
        n115), .CI(\mycordic/sub_212/carry [1]), .CO(
        \mycordic/sub_212/carry [2]), .S(\mycordic/N449 ) );
  ADD32 \mycordic/sub_212/U2_2  ( .A(\mycordic/present_Q_table[4][2] ), .B(
        n114), .CI(\mycordic/sub_212/carry [2]), .CO(
        \mycordic/sub_212/carry [3]), .S(\mycordic/N450 ) );
  ADD32 \mycordic/sub_212/U2_3  ( .A(\mycordic/present_Q_table[4][3] ), .B(
        n113), .CI(\mycordic/sub_212/carry [3]), .CO(
        \mycordic/sub_212/carry [4]), .S(\mycordic/N451 ) );
  ADD32 \mycordic/sub_212/U2_4  ( .A(\mycordic/present_Q_table[4][4] ), .B(n36), .CI(\mycordic/sub_212/carry [4]), .CO(\mycordic/sub_212/carry [5]), .S(
        \mycordic/N452 ) );
  ADD32 \mycordic/sub_212/U2_5  ( .A(\mycordic/present_Q_table[4][5] ), .B(n36), .CI(\mycordic/sub_212/carry [5]), .CO(\mycordic/sub_212/carry [6]), .S(
        \mycordic/N453 ) );
  ADD32 \mycordic/sub_212/U2_6  ( .A(\mycordic/present_Q_table[4][6] ), .B(n36), .CI(\mycordic/sub_212/carry [6]), .CO(\mycordic/sub_212/carry [7]), .S(
        \mycordic/N454 ) );
  ADD32 \mycordic/sub_216/U2_4  ( .A(\mycordic/present_I_table[4][4] ), .B(n37), .CI(\mycordic/sub_216/carry [4]), .CO(\mycordic/sub_216/carry [5]), .S(
        \mycordic/N472 ) );
  ADD32 \mycordic/sub_216/U2_5  ( .A(\mycordic/present_I_table[4][5] ), .B(n37), .CI(\mycordic/sub_216/carry [5]), .CO(\mycordic/sub_216/carry [6]), .S(
        \mycordic/N473 ) );
  ADD32 \mycordic/sub_216/U2_6  ( .A(\mycordic/present_I_table[4][6] ), .B(n37), .CI(\mycordic/sub_216/carry [6]), .CO(\mycordic/sub_216/carry [7]), .S(
        \mycordic/N474 ) );
  ADD32 \mycordic/add_217/U1_1  ( .A(\mycordic/present_Q_table[4][1] ), .B(
        \mycordic/present_I_table[4][4] ), .CI(\mycordic/add_217/carry [1]), 
        .CO(\mycordic/add_217/carry [2]), .S(\mycordic/N477 ) );
  ADD32 \mycordic/add_217/U1_2  ( .A(\mycordic/present_Q_table[4][2] ), .B(
        \mycordic/present_I_table[4][5] ), .CI(\mycordic/add_217/carry [2]), 
        .CO(\mycordic/add_217/carry [3]), .S(\mycordic/N478 ) );
  ADD32 \mycordic/add_217/U1_3  ( .A(\mycordic/present_Q_table[4][3] ), .B(
        \mycordic/present_I_table[4][6] ), .CI(\mycordic/add_217/carry [3]), 
        .CO(\mycordic/add_217/carry [4]), .S(\mycordic/N479 ) );
  ADD32 \mycordic/add_217/U1_4  ( .A(\mycordic/present_Q_table[4][4] ), .B(
        \mycordic/present_I_table[4][7] ), .CI(\mycordic/add_217/carry [4]), 
        .CO(\mycordic/add_217/carry [5]), .S(\mycordic/N480 ) );
  ADD32 \mycordic/add_217/U1_5  ( .A(\mycordic/present_Q_table[4][5] ), .B(
        \mycordic/present_I_table[4][7] ), .CI(\mycordic/add_217/carry [5]), 
        .CO(\mycordic/add_217/carry [6]), .S(\mycordic/N481 ) );
  ADD32 \mycordic/add_217/U1_6  ( .A(\mycordic/present_Q_table[4][6] ), .B(
        \mycordic/present_I_table[4][7] ), .CI(\mycordic/add_217/carry [6]), 
        .CO(\mycordic/add_217/carry [7]), .S(\mycordic/N482 ) );
  DF3 \present_state_reg[0]  ( .D(N14), .C(clock), .Q(present_state[0]), .QN(
        n187) );
  DF3 \present_state_reg[1]  ( .D(N15), .C(clock), .Q(present_state[1]), .QN(
        n190) );
  DF3 \present_state_reg[2]  ( .D(N16), .C(clock), .Q(present_state[2]), .QN(
        n39) );
  DF3 \mycordic/o_angle_reg[15]  ( .D(n588), .C(clock), .Q(
        cordic_to_rotation[15]) );
  DF3 \mycordic/o_angle_reg[14]  ( .D(n589), .C(clock), .Q(
        cordic_to_rotation[14]) );
  DF3 \mycordic/o_angle_reg[13]  ( .D(n590), .C(clock), .Q(
        cordic_to_rotation[13]) );
  DF3 \mycordic/o_angle_reg[12]  ( .D(n591), .C(clock), .Q(
        cordic_to_rotation[12]) );
  DF3 \mycordic/o_angle_reg[11]  ( .D(n592), .C(clock), .Q(
        cordic_to_rotation[11]) );
  DF3 \mycordic/o_angle_reg[10]  ( .D(n593), .C(clock), .Q(
        cordic_to_rotation[10]) );
  DF3 \mycordic/o_angle_reg[9]  ( .D(n594), .C(clock), .Q(
        cordic_to_rotation[9]) );
  DF3 \mycordic/o_angle_reg[8]  ( .D(n595), .C(clock), .Q(
        cordic_to_rotation[8]) );
  DF3 \mycordic/o_angle_reg[7]  ( .D(n596), .C(clock), .Q(
        cordic_to_rotation[7]) );
  DF3 \mycordic/o_angle_reg[6]  ( .D(n597), .C(clock), .Q(
        cordic_to_rotation[6]) );
  DF3 \mycordic/o_angle_reg[5]  ( .D(n598), .C(clock), .Q(
        cordic_to_rotation[5]) );
  DF3 \mycordic/o_angle_reg[4]  ( .D(n599), .C(clock), .Q(
        cordic_to_rotation[4]) );
  DF3 \mycordic/o_angle_reg[3]  ( .D(n600), .C(clock), .Q(
        cordic_to_rotation[3]) );
  DF3 \mycordic/o_angle_reg[2]  ( .D(n602), .C(clock), .Q(
        cordic_to_rotation[2]) );
  DF3 \mycordic/o_angle_reg[1]  ( .D(n613), .C(clock), .Q(
        cordic_to_rotation[1]) );
  DF3 \mycordic/o_angle_reg[0]  ( .D(n622), .C(clock), .Q(
        cordic_to_rotation[0]) );
  DF3 \mycordic/present_ANGLE_table_reg[6][15]  ( .D(n450), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][15] ) );
  DF3 \mycordic/present_ANGLE_table_reg[6][14]  ( .D(n449), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][14] ), .QN(n168) );
  DF3 \mycordic/present_ANGLE_table_reg[6][13]  ( .D(n448), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][13] ), .QN(n167) );
  DF3 \mycordic/present_ANGLE_table_reg[6][12]  ( .D(n447), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][12] ), .QN(n166) );
  DF3 \mycordic/present_ANGLE_table_reg[6][11]  ( .D(n446), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][11] ), .QN(n135) );
  DF3 \mycordic/present_ANGLE_table_reg[6][10]  ( .D(n445), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][10] ), .QN(n134) );
  DF3 \mycordic/present_ANGLE_table_reg[6][9]  ( .D(n444), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][9] ), .QN(n98) );
  DF3 \mycordic/present_ANGLE_table_reg[6][8]  ( .D(n443), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][8] ), .QN(n99) );
  DF3 \mycordic/present_ANGLE_table_reg[6][7]  ( .D(n442), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][7] ), .QN(n219) );
  DF3 \mycordic/present_ANGLE_table_reg[6][6]  ( .D(n441), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][6] ), .QN(n69) );
  DF3 \mycordic/present_ANGLE_table_reg[6][5]  ( .D(n440), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][5] ), .QN(n215) );
  DF3 \mycordic/present_ANGLE_table_reg[6][4]  ( .D(n439), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][4] ), .QN(n217) );
  DF3 \mycordic/present_ANGLE_table_reg[6][3]  ( .D(n438), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][3] ), .QN(n198) );
  DF3 \mycordic/present_ANGLE_table_reg[6][2]  ( .D(n437), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][2] ), .QN(n57) );
  DF3 \mycordic/present_ANGLE_table_reg[6][1]  ( .D(n436), .C(clock), .Q(
        \mycordic/present_ANGLE_table[6][1] ), .QN(n206) );
  DF3 \mycordic/present_ANGLE_table_reg[6][0]  ( .D(n435), .C(clock), .Q(
        \mycordic/N615 ), .QN(n205) );
  DF3 \mycordic/present_ANGLE_table_reg[5][15]  ( .D(n510), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][15] ) );
  DF3 \mycordic/present_ANGLE_table_reg[5][14]  ( .D(n509), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][14] ), .QN(n204) );
  DF3 \mycordic/present_ANGLE_table_reg[5][13]  ( .D(n508), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][13] ), .QN(n183) );
  DF3 \mycordic/present_ANGLE_table_reg[5][12]  ( .D(n507), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][12] ), .QN(n182) );
  DF3 \mycordic/present_ANGLE_table_reg[5][11]  ( .D(n506), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][11] ), .QN(n181) );
  DF3 \mycordic/present_ANGLE_table_reg[5][10]  ( .D(n505), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][10] ), .QN(n150) );
  DF3 \mycordic/present_ANGLE_table_reg[5][9]  ( .D(n504), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][9] ), .QN(n149) );
  DF3 \mycordic/present_ANGLE_table_reg[5][8]  ( .D(n503), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][8] ), .QN(n106) );
  DF3 \mycordic/present_ANGLE_table_reg[5][7]  ( .D(n502), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][7] ), .QN(n105) );
  DF3 \mycordic/present_ANGLE_table_reg[5][6]  ( .D(n501), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][6] ), .QN(n82) );
  DF3 \mycordic/present_ANGLE_table_reg[5][5]  ( .D(n500), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][5] ), .QN(n81) );
  DF3 \mycordic/present_ANGLE_table_reg[5][4]  ( .D(n499), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][4] ), .QN(n80) );
  DF3 \mycordic/present_ANGLE_table_reg[5][3]  ( .D(n498), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][3] ), .QN(n64) );
  DF3 \mycordic/present_ANGLE_table_reg[5][2]  ( .D(n497), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][2] ), .QN(n63) );
  DF3 \mycordic/present_ANGLE_table_reg[5][1]  ( .D(n496), .C(clock), .Q(
        \mycordic/present_ANGLE_table[5][1] ), .QN(n195) );
  DF3 \mycordic/present_ANGLE_table_reg[5][0]  ( .D(n495), .C(clock), .Q(
        \mycordic/N550 ) );
  DF3 \mycordic/present_ANGLE_table_reg[4][15]  ( .D(n534), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][15] ) );
  DF3 \mycordic/present_ANGLE_table_reg[4][14]  ( .D(n533), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][14] ), .QN(n203) );
  DF3 \mycordic/present_ANGLE_table_reg[4][13]  ( .D(n532), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][13] ), .QN(n180) );
  DF3 \mycordic/present_ANGLE_table_reg[4][12]  ( .D(n531), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][12] ), .QN(n179) );
  DF3 \mycordic/present_ANGLE_table_reg[4][11]  ( .D(n530), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][11] ), .QN(n178) );
  DF3 \mycordic/present_ANGLE_table_reg[4][10]  ( .D(n529), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][10] ), .QN(n148) );
  DF3 \mycordic/present_ANGLE_table_reg[4][9]  ( .D(n528), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][9] ), .QN(n147) );
  DF3 \mycordic/present_ANGLE_table_reg[4][8]  ( .D(n527), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][8] ), .QN(n104) );
  DF3 \mycordic/present_ANGLE_table_reg[4][7]  ( .D(n526), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][7] ), .QN(n103) );
  DF3 \mycordic/present_ANGLE_table_reg[4][6]  ( .D(n525), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][6] ), .QN(n79) );
  DF3 \mycordic/present_ANGLE_table_reg[4][5]  ( .D(n524), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][5] ), .QN(n78) );
  DF3 \mycordic/present_ANGLE_table_reg[4][4]  ( .D(n523), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][4] ), .QN(n77) );
  DF3 \mycordic/present_ANGLE_table_reg[4][3]  ( .D(n522), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][3] ), .QN(n65) );
  DF3 \mycordic/present_ANGLE_table_reg[4][2]  ( .D(n521), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][2] ), .QN(n62) );
  DF3 \mycordic/present_ANGLE_table_reg[4][1]  ( .D(n520), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][1] ), .QN(n59) );
  DF3 \mycordic/present_ANGLE_table_reg[4][0]  ( .D(n519), .C(clock), .Q(
        \mycordic/present_ANGLE_table[4][0] ), .QN(n194) );
  DF3 \mycordic/present_ANGLE_table_reg[3][15]  ( .D(n559), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][15] ) );
  DF3 \mycordic/present_ANGLE_table_reg[3][14]  ( .D(n558), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][14] ), .QN(n202) );
  DF3 \mycordic/present_ANGLE_table_reg[3][13]  ( .D(n557), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][13] ), .QN(n177) );
  DF3 \mycordic/present_ANGLE_table_reg[3][12]  ( .D(n556), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][12] ), .QN(n176) );
  DF3 \mycordic/present_ANGLE_table_reg[3][11]  ( .D(n555), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][11] ), .QN(n175) );
  DF3 \mycordic/present_ANGLE_table_reg[3][10]  ( .D(n554), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][10] ), .QN(n146) );
  DF3 \mycordic/present_ANGLE_table_reg[3][9]  ( .D(n553), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][9] ), .QN(n145) );
  DF3 \mycordic/present_ANGLE_table_reg[3][8]  ( .D(n552), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][8] ), .QN(n102) );
  DF3 \mycordic/present_ANGLE_table_reg[3][7]  ( .D(n551), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][7] ), .QN(n101) );
  DF3 \mycordic/present_ANGLE_table_reg[3][6]  ( .D(n550), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][6] ), .QN(n76) );
  DF3 \mycordic/present_ANGLE_table_reg[3][5]  ( .D(n549), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][5] ), .QN(n75) );
  DF3 \mycordic/present_ANGLE_table_reg[3][4]  ( .D(n548), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][4] ), .QN(n86) );
  DF3 \mycordic/present_ANGLE_table_reg[3][3]  ( .D(n547), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][3] ), .QN(n61) );
  DF3 \mycordic/present_ANGLE_table_reg[3][2]  ( .D(n546), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][2] ), .QN(n71) );
  DF3 \mycordic/present_ANGLE_table_reg[3][1]  ( .D(n545), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][1] ), .QN(n60) );
  DF3 \mycordic/present_ANGLE_table_reg[3][0]  ( .D(n544), .C(clock), .Q(
        \mycordic/present_ANGLE_table[3][0] ), .QN(n193) );
  DF3 \mycordic/present_ANGLE_table_reg[2][15]  ( .D(n466), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][15] ) );
  DF3 \mycordic/present_ANGLE_table_reg[2][14]  ( .D(n465), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][14] ), .QN(n201) );
  DF3 \mycordic/present_ANGLE_table_reg[2][13]  ( .D(n464), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][13] ), .QN(n174) );
  DF3 \mycordic/present_ANGLE_table_reg[2][12]  ( .D(n463), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][12] ), .QN(n173) );
  DF3 \mycordic/present_ANGLE_table_reg[2][11]  ( .D(n462), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][11] ), .QN(n172) );
  DF3 \mycordic/present_ANGLE_table_reg[2][10]  ( .D(n461), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][10] ), .QN(n144) );
  DF3 \mycordic/present_ANGLE_table_reg[2][9]  ( .D(n460), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][9] ), .QN(n137) );
  DF3 \mycordic/present_ANGLE_table_reg[2][8]  ( .D(n459), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][8] ), .QN(n100) );
  DF3 \mycordic/present_ANGLE_table_reg[2][7]  ( .D(n458), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][7] ), .QN(n109) );
  DF3 \mycordic/present_ANGLE_table_reg[2][6]  ( .D(n457), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][6] ), .QN(n74) );
  DF3 \mycordic/present_ANGLE_table_reg[2][5]  ( .D(n456), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][5] ), .QN(n85) );
  DF3 \mycordic/present_ANGLE_table_reg[2][4]  ( .D(n455), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][4] ), .QN(n73) );
  DF3 \mycordic/present_ANGLE_table_reg[2][3]  ( .D(n454), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][3] ), .QN(n70) );
  DF3 \mycordic/present_ANGLE_table_reg[2][2]  ( .D(n453), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][2] ), .QN(n72) );
  DF3 \mycordic/present_ANGLE_table_reg[2][1]  ( .D(n452), .C(clock), .Q(
        \mycordic/present_ANGLE_table[2][1] ), .QN(n192) );
  DF3 \mycordic/present_ANGLE_table_reg[2][0]  ( .D(n451), .C(clock), .Q(
        \mycordic/N428 ) );
  DF3 \mycordic/present_ANGLE_table_reg[1][15]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][15] ) );
  DF3 \mycordic/present_ANGLE_table_reg[1][14]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][14] ), .QN(n200) );
  DF3 \mycordic/present_ANGLE_table_reg[1][13]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][13] ), .QN(n171) );
  DF3 \mycordic/present_ANGLE_table_reg[1][12]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][12] ), .QN(n170) );
  DF3 \mycordic/present_ANGLE_table_reg[1][11]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][11] ), .QN(n169) );
  DF3 \mycordic/present_ANGLE_table_reg[1][10]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][10] ), .QN(n143) );
  DF3 \mycordic/present_ANGLE_table_reg[1][9]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][9] ), .QN(n142) );
  DF3 \mycordic/present_ANGLE_table_reg[1][8]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][8] ), .QN(n108) );
  DF3 \mycordic/present_ANGLE_table_reg[1][7]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][7] ), .QN(n107) );
  DF3 \mycordic/present_ANGLE_table_reg[1][6]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][6] ), .QN(n84) );
  DF3 \mycordic/present_ANGLE_table_reg[1][5]  ( .D(n402), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][5] ), .QN(n88) );
  DF3 \mycordic/present_ANGLE_table_reg[1][4]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][4] ), .QN(n83) );
  DF3 \mycordic/present_ANGLE_table_reg[1][3]  ( .D(n402), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][3] ), .QN(n87) );
  DF3 \mycordic/present_ANGLE_table_reg[1][2]  ( .D(n402), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][2] ), .QN(n66) );
  DF3 \mycordic/present_ANGLE_table_reg[1][1]  ( .D(n625), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][1] ), .QN(n58) );
  DF3 \mycordic/present_ANGLE_table_reg[1][0]  ( .D(n483), .C(clock), .Q(
        \mycordic/present_ANGLE_table[1][0] ), .QN(n191) );
  DF3 \mycordic/present_C_table_reg[7][0]  ( .D(n604), .C(clock), .Q(
        \mycordic/present_C_table[7][0] ) );
  DF3 \mycordic/present_C_table_reg[6][0]  ( .D(n607), .C(clock), .Q(
        \mycordic/present_C_table[6][0] ) );
  DF3 \mycordic/present_C_table_reg[5][0]  ( .D(n610), .C(clock), .Q(
        \mycordic/present_C_table[5][0] ) );
  DF3 \mycordic/present_C_table_reg[4][0]  ( .D(n614), .C(clock), .Q(
        \mycordic/present_C_table[4][0] ) );
  DF3 \mycordic/present_C_table_reg[3][0]  ( .D(n617), .C(clock), .Q(
        \mycordic/present_C_table[3][0] ) );
  DF3 \mycordic/present_C_table_reg[2][0]  ( .D(n620), .C(clock), .Q(
        \mycordic/present_C_table[2][0] ) );
  DF3 \mycordic/present_C_table_reg[1][0]  ( .D(n425), .C(clock), .Q(
        \mycordic/present_C_table[1][0] ) );
  DF3 \mycordic/present_C_table_reg[7][1]  ( .D(n603), .C(clock), .Q(
        \mycordic/present_C_table[7][1] ), .QN(\mycordic/n110 ) );
  DF3 \mycordic/present_C_table_reg[6][1]  ( .D(n606), .C(clock), .Q(
        \mycordic/present_C_table[6][1] ) );
  DF3 \mycordic/present_C_table_reg[5][1]  ( .D(n609), .C(clock), .Q(
        \mycordic/present_C_table[5][1] ) );
  DF3 \mycordic/present_C_table_reg[4][1]  ( .D(n612), .C(clock), .Q(
        \mycordic/present_C_table[4][1] ) );
  DF3 \mycordic/present_C_table_reg[3][1]  ( .D(n616), .C(clock), .Q(
        \mycordic/present_C_table[3][1] ) );
  DF3 \mycordic/present_C_table_reg[2][1]  ( .D(n619), .C(clock), .Q(
        \mycordic/present_C_table[2][1] ) );
  DF3 \mycordic/present_C_table_reg[1][1]  ( .D(\mycordic/N211 ), .C(clock), 
        .Q(\mycordic/present_C_table[1][1] ) );
  DF3 \mycordic/present_C_table_reg[7][2]  ( .D(n601), .C(clock), .QN(
        \mycordic/n108 ) );
  DF3 \mycordic/present_C_table_reg[6][2]  ( .D(n605), .C(clock), .Q(
        \mycordic/present_C_table[6][2] ) );
  DF3 \mycordic/present_C_table_reg[5][2]  ( .D(n608), .C(clock), .Q(
        \mycordic/present_C_table[5][2] ) );
  DF3 \mycordic/present_C_table_reg[4][2]  ( .D(n611), .C(clock), .Q(
        \mycordic/present_C_table[4][2] ) );
  DF3 \mycordic/present_C_table_reg[3][2]  ( .D(n615), .C(clock), .Q(
        \mycordic/present_C_table[3][2] ) );
  DF3 \mycordic/present_C_table_reg[2][2]  ( .D(n618), .C(clock), .Q(
        \mycordic/present_C_table[2][2] ) );
  DF3 \mycordic/present_C_table_reg[1][2]  ( .D(\mycordic/N212 ), .C(clock), 
        .Q(\mycordic/present_C_table[1][2] ) );
  DF3 \mycordic/present_Q_table_reg[6][7]  ( .D(n494), .C(clock), .Q(
        \mycordic/present_Q_table[6][7] ) );
  DF3 \mycordic/present_Q_table_reg[5][7]  ( .D(n518), .C(clock), .Q(
        \mycordic/present_Q_table[5][7] ) );
  DF3 \mycordic/present_Q_table_reg[5][6]  ( .D(n517), .C(clock), .Q(
        \mycordic/present_Q_table[5][6] ), .QN(n184) );
  DF3 \mycordic/present_Q_table_reg[5][5]  ( .D(n516), .C(clock), .Q(
        \mycordic/present_Q_table[5][5] ) );
  DF3 \mycordic/present_Q_table_reg[5][4]  ( .D(n515), .C(clock), .Q(
        \mycordic/present_Q_table[5][4] ), .QN(n153) );
  DF3 \mycordic/present_Q_table_reg[5][3]  ( .D(n514), .C(clock), .Q(
        \mycordic/present_Q_table[5][3] ) );
  DF3 \mycordic/present_Q_table_reg[5][2]  ( .D(n513), .C(clock), .Q(
        \mycordic/present_Q_table[5][2] ), .QN(n111) );
  DF3 \mycordic/present_Q_table_reg[5][1]  ( .D(n512), .C(clock), .Q(
        \mycordic/present_Q_table[5][1] ), .QN(n131) );
  DF3 \mycordic/present_Q_table_reg[5][0]  ( .D(n511), .C(clock), .Q(
        \mycordic/present_Q_table[5][0] ), .QN(n97) );
  DF3 \mycordic/present_I_table_reg[5][7]  ( .D(n538), .C(clock), .Q(
        \mycordic/present_I_table[5][7] ), .QN(n112) );
  DF3 \mycordic/present_I_table_reg[5][6]  ( .D(n537), .C(clock), .Q(
        \mycordic/present_I_table[5][6] ) );
  DF3 \mycordic/present_I_table_reg[5][5]  ( .D(n536), .C(clock), .Q(
        \mycordic/present_I_table[5][5] ), .QN(n35) );
  DF3 \mycordic/present_I_table_reg[5][4]  ( .D(n535), .C(clock), .Q(
        \mycordic/present_I_table[5][4] ) );
  DF3 \mycordic/present_Q_table_reg[4][3]  ( .D(n539), .C(clock), .Q(
        \mycordic/present_Q_table[4][3] ), .QN(n96) );
  DF3 \mycordic/present_Q_table_reg[4][4]  ( .D(n540), .C(clock), .Q(
        \mycordic/present_Q_table[4][4] ) );
  DF3 \mycordic/present_Q_table_reg[4][5]  ( .D(n541), .C(clock), .Q(
        \mycordic/present_Q_table[4][5] ), .QN(n133) );
  DF3 \mycordic/present_Q_table_reg[4][6]  ( .D(n542), .C(clock), .Q(
        \mycordic/present_Q_table[4][6] ) );
  DF3 \mycordic/present_Q_table_reg[4][7]  ( .D(n543), .C(clock), .Q(
        \mycordic/present_Q_table[4][7] ), .QN(n37) );
  DF3 \mycordic/present_I_table_reg[4][0]  ( .D(n560), .C(clock), .Q(
        \mycordic/present_I_table[4][0] ) );
  DF3 \mycordic/present_I_table_reg[4][1]  ( .D(n561), .C(clock), .Q(
        \mycordic/present_I_table[4][1] ), .QN(n132) );
  DF3 \mycordic/present_I_table_reg[4][2]  ( .D(n562), .C(clock), .Q(
        \mycordic/present_I_table[4][2] ), .QN(n130) );
  DF3 \mycordic/present_I_table_reg[4][3]  ( .D(n563), .C(clock), .Q(
        \mycordic/present_I_table[4][3] ), .QN(n89) );
  DF3 \mycordic/present_I_table_reg[4][4]  ( .D(n564), .C(clock), .Q(
        \mycordic/present_I_table[4][4] ), .QN(n115) );
  DF3 \mycordic/present_I_table_reg[4][5]  ( .D(n565), .C(clock), .Q(
        \mycordic/present_I_table[4][5] ), .QN(n114) );
  DF3 \mycordic/present_I_table_reg[4][6]  ( .D(n566), .C(clock), .Q(
        \mycordic/present_I_table[4][6] ), .QN(n113) );
  DF3 \mycordic/present_I_table_reg[4][7]  ( .D(n567), .C(clock), .Q(
        \mycordic/present_I_table[4][7] ), .QN(n36) );
  DF3 \mycordic/present_Q_table_reg[4][0]  ( .D(n568), .C(clock), .Q(
        \mycordic/present_Q_table[4][0] ), .QN(n136) );
  DF3 \mycordic/present_Q_table_reg[4][1]  ( .D(n569), .C(clock), .Q(
        \mycordic/present_Q_table[4][1] ) );
  DF3 \mycordic/present_Q_table_reg[4][2]  ( .D(n570), .C(clock), .Q(
        \mycordic/present_Q_table[4][2] ) );
  DF3 \mycordic/present_Q_table_reg[3][7]  ( .D(n482), .C(clock), .Q(
        \mycordic/present_Q_table[3][7] ), .QN(n151) );
  DF3 \mycordic/present_Q_table_reg[3][6]  ( .D(n481), .C(clock), .Q(
        \mycordic/present_Q_table[3][6] ), .QN(n154) );
  DF3 \mycordic/present_Q_table_reg[3][5]  ( .D(n480), .C(clock), .Q(
        \mycordic/present_Q_table[3][5] ), .QN(n116) );
  DF3 \mycordic/present_Q_table_reg[3][4]  ( .D(n479), .C(clock), .Q(
        \mycordic/present_Q_table[3][4] ), .QN(n117) );
  DF3 \mycordic/present_Q_table_reg[3][3]  ( .D(n478), .C(clock), .Q(
        \mycordic/present_Q_table[3][3] ), .QN(n118) );
  DF3 \mycordic/present_Q_table_reg[3][2]  ( .D(n477), .C(clock), .Q(
        \mycordic/present_Q_table[3][2] ), .QN(n93) );
  DF3 \mycordic/present_Q_table_reg[3][1]  ( .D(n476), .C(clock), .Q(
        \mycordic/present_Q_table[3][1] ) );
  DF3 \mycordic/present_Q_table_reg[3][0]  ( .D(n475), .C(clock), .Q(
        \mycordic/present_Q_table[3][0] ), .QN(n139) );
  DF3 \mycordic/present_I_table_reg[3][7]  ( .D(n474), .C(clock), .Q(
        \mycordic/present_I_table[3][7] ), .QN(n152) );
  DF3 \mycordic/present_I_table_reg[3][6]  ( .D(n473), .C(clock), .Q(
        \mycordic/present_I_table[3][6] ), .QN(n155) );
  DF3 \mycordic/present_I_table_reg[3][5]  ( .D(n472), .C(clock), .Q(
        \mycordic/present_I_table[3][5] ), .QN(n119) );
  DF3 \mycordic/present_I_table_reg[3][4]  ( .D(n471), .C(clock), .Q(
        \mycordic/present_I_table[3][4] ), .QN(n120) );
  DF3 \mycordic/present_I_table_reg[3][3]  ( .D(n470), .C(clock), .Q(
        \mycordic/present_I_table[3][3] ), .QN(n121) );
  DF3 \mycordic/present_I_table_reg[3][2]  ( .D(n469), .C(clock), .Q(
        \mycordic/present_I_table[3][2] ), .QN(n95) );
  DF3 \mycordic/present_I_table_reg[3][1]  ( .D(n468), .C(clock), .Q(
        \mycordic/present_I_table[3][1] ) );
  DF3 \mycordic/present_I_table_reg[3][0]  ( .D(n467), .C(clock), .Q(
        \mycordic/present_I_table[3][0] ), .QN(n138) );
  DF3 \mycordic/present_I_table_reg[2][7]  ( .D(n488), .C(clock), .Q(
        \mycordic/present_I_table[2][7] ), .QN(n186) );
  DF3 \mycordic/present_I_table_reg[2][6]  ( .D(n487), .C(clock), .Q(
        \mycordic/present_I_table[2][6] ), .QN(n158) );
  DF3 \mycordic/present_I_table_reg[2][5]  ( .D(n486), .C(clock), .Q(
        \mycordic/present_I_table[2][5] ), .QN(n159) );
  DF3 \mycordic/present_I_table_reg[2][4]  ( .D(n485), .C(clock), .Q(
        \mycordic/present_I_table[2][4] ), .QN(n125) );
  DF3 \mycordic/present_I_table_reg[2][3]  ( .D(n484), .C(clock), .Q(
        \mycordic/present_I_table[2][3] ), .QN(n126) );
  DF3 \mycordic/present_I_table_reg[2][2]  ( .D(n33), .C(clock), .Q(
        \mycordic/present_I_table[2][2] ), .QN(n127) );
  DF3 \mycordic/present_I_table_reg[2][1]  ( .D(n33), .C(clock), .Q(
        \mycordic/present_I_table[2][1] ), .QN(n94) );
  DF3 \mycordic/present_I_table_reg[2][0]  ( .D(n33), .C(clock), .Q(
        \mycordic/present_I_table[2][0] ), .QN(n140) );
  DF3 \mycordic/present_Q_table_reg[2][7]  ( .D(n493), .C(clock), .Q(
        \mycordic/present_Q_table[2][7] ), .QN(n185) );
  DF3 \mycordic/present_Q_table_reg[2][6]  ( .D(n492), .C(clock), .Q(
        \mycordic/present_Q_table[2][6] ), .QN(n156) );
  DF3 \mycordic/present_Q_table_reg[2][5]  ( .D(n491), .C(clock), .Q(
        \mycordic/present_Q_table[2][5] ), .QN(n157) );
  DF3 \mycordic/present_Q_table_reg[2][4]  ( .D(n490), .C(clock), .Q(
        \mycordic/present_Q_table[2][4] ), .QN(n122) );
  DF3 \mycordic/present_Q_table_reg[2][3]  ( .D(n489), .C(clock), .Q(
        \mycordic/present_Q_table[2][3] ), .QN(n123) );
  DF3 \mycordic/present_Q_table_reg[2][2]  ( .D(n33), .C(clock), .Q(
        \mycordic/present_Q_table[2][2] ), .QN(n124) );
  DF3 \mycordic/present_Q_table_reg[2][1]  ( .D(n33), .C(clock), .Q(
        \mycordic/present_Q_table[2][1] ), .QN(n92) );
  DF3 \mycordic/present_Q_table_reg[2][0]  ( .D(n33), .C(clock), .Q(
        \mycordic/present_Q_table[2][0] ), .QN(n141) );
  DF3 \mycordic/present_Q_table_reg[1][7]  ( .D(n434), .C(clock), .Q(
        \mycordic/present_Q_table[1][7] ), .QN(n197) );
  DF3 \mycordic/present_Q_table_reg[1][6]  ( .D(n433), .C(clock), .Q(
        \mycordic/present_Q_table[1][6] ), .QN(n189) );
  DF3 \mycordic/present_Q_table_reg[1][5]  ( .D(n432), .C(clock), .Q(
        \mycordic/present_Q_table[1][5] ), .QN(n162) );
  DF3 \mycordic/present_Q_table_reg[1][4]  ( .D(n431), .C(clock), .Q(
        \mycordic/present_Q_table[1][4] ), .QN(n163) );
  DF3 \mycordic/present_Q_table_reg[1][3]  ( .D(n430), .C(clock), .Q(
        \mycordic/present_Q_table[1][3] ), .QN(n129) );
  DF3 \mycordic/present_Q_table_reg[0][3]  ( .D(Q[0]), .C(clock), .Q(
        \mycordic/present_Q_table[0][3] ), .QN(n164) );
  DF3 \mycordic/present_Q_table_reg[0][4]  ( .D(Q[1]), .C(clock), .Q(
        \mycordic/present_Q_table[0][4] ), .QN(n42) );
  DF3 \mycordic/present_Q_table_reg[0][5]  ( .D(Q[2]), .C(clock), .Q(
        \mycordic/present_Q_table[0][5] ), .QN(n41) );
  DF3 \mycordic/present_Q_table_reg[0][6]  ( .D(Q[3]), .C(clock), .Q(
        \mycordic/present_Q_table[0][6] ), .QN(n40) );
  DF3 \mycordic/present_Q_table_reg[0][7]  ( .D(Q[3]), .C(clock), .Q(
        \mycordic/present_Q_table[0][7] ) );
  DF3 \mycordic/present_I_table_reg[1][7]  ( .D(\mycordic/N44 ), .C(clock), 
        .Q(\mycordic/present_I_table[1][7] ), .QN(n199) );
  DF3 \mycordic/present_I_table_reg[1][6]  ( .D(n429), .C(clock), .Q(
        \mycordic/present_I_table[1][6] ), .QN(n188) );
  DF3 \mycordic/present_I_table_reg[1][5]  ( .D(n428), .C(clock), .Q(
        \mycordic/present_I_table[1][5] ), .QN(n160) );
  DF3 \mycordic/present_I_table_reg[1][4]  ( .D(n427), .C(clock), .Q(
        \mycordic/present_I_table[1][4] ), .QN(n161) );
  DF3 \mycordic/present_I_table_reg[1][3]  ( .D(n426), .C(clock), .Q(
        \mycordic/present_I_table[1][3] ), .QN(n128) );
  DF3 \mycordic/present_I_table_reg[0][3]  ( .D(I[0]), .C(clock), .Q(
        \mycordic/present_I_table[0][3] ), .QN(n165) );
  DF3 \mycordic/present_I_table_reg[0][4]  ( .D(I[1]), .C(clock), .Q(
        \mycordic/present_I_table[0][4] ), .QN(n43) );
  DF3 \mycordic/present_I_table_reg[0][5]  ( .D(I[2]), .C(clock), .Q(
        \mycordic/present_I_table[0][5] ), .QN(n44) );
  DF3 \mycordic/present_I_table_reg[0][6]  ( .D(I[3]), .C(clock), .Q(
        \mycordic/present_I_table[0][6] ), .QN(n45) );
  DF3 \mycordic/present_I_table_reg[0][7]  ( .D(I[3]), .C(clock), .Q(
        \mycordic/present_I_table[0][7] ), .QN(n196) );
  DF3 \my_rotation/present_direction_reg  ( .D(n575), .C(clock), .Q(dir) );
  DF3 \my_rotation/present_angle_reg[0][0]  ( .D(n574), .C(clock), .Q(
        \my_rotation/present_angle[0][0] ) );
  DF3 \my_rotation/present_angle_reg[0][1]  ( .D(n573), .C(clock), .Q(
        \my_rotation/present_angle[0][1] ) );
  DF3 \my_rotation/present_angle_reg[0][2]  ( .D(n572), .C(clock), .Q(
        \my_rotation/present_angle[0][2] ) );
  DF3 \my_rotation/present_angle_reg[0][3]  ( .D(n571), .C(clock), .Q(
        \my_rotation/present_angle[0][3] ) );
  DF3 \my_rotation/present_angle_reg[0][4]  ( .D(n587), .C(clock), .Q(
        \my_rotation/present_angle[0][4] ) );
  DF3 \my_rotation/present_angle_reg[0][5]  ( .D(n586), .C(clock), .Q(
        \my_rotation/present_angle[0][5] ) );
  DF3 \my_rotation/present_angle_reg[0][6]  ( .D(n585), .C(clock), .Q(
        \my_rotation/present_angle[0][6] ) );
  DF3 \my_rotation/present_angle_reg[0][7]  ( .D(n584), .C(clock), .Q(
        \my_rotation/present_angle[0][7] ) );
  DF3 \my_rotation/present_angle_reg[0][8]  ( .D(n583), .C(clock), .Q(
        \my_rotation/present_angle[0][8] ) );
  DF3 \my_rotation/present_angle_reg[0][9]  ( .D(n582), .C(clock), .Q(
        \my_rotation/present_angle[0][9] ) );
  DF3 \my_rotation/present_angle_reg[0][10]  ( .D(n581), .C(clock), .Q(
        \my_rotation/present_angle[0][10] ) );
  DF3 \my_rotation/present_angle_reg[0][11]  ( .D(n580), .C(clock), .Q(
        \my_rotation/present_angle[0][11] ) );
  DF3 \my_rotation/present_angle_reg[0][12]  ( .D(n579), .C(clock), .Q(
        \my_rotation/present_angle[0][12] ) );
  DF3 \my_rotation/present_angle_reg[0][13]  ( .D(n578), .C(clock), .Q(
        \my_rotation/present_angle[0][13] ) );
  DF3 \my_rotation/present_angle_reg[0][14]  ( .D(n577), .C(clock), .Q(
        \my_rotation/present_angle[0][14] ) );
  DF3 \my_rotation/present_angle_reg[0][15]  ( .D(n576), .C(clock), .Q(
        \my_rotation/present_angle[0][15] ) );
  DFE1 \my_rotation/present_angle_reg[1][13]  ( .D(
        \my_rotation/present_angle[0][13] ), .E(n412), .C(clock), .QN(n91) );
  DFE1 \my_rotation/present_angle_reg[1][14]  ( .D(
        \my_rotation/present_angle[0][14] ), .E(n411), .C(clock), .QN(n90) );
  DFE1 \my_rotation/present_angle_reg[1][15]  ( .D(
        \my_rotation/present_angle[0][15] ), .E(n411), .C(clock), .QN(n110) );
  DFE1 \my_rotation/present_angle_reg[1][11]  ( .D(
        \my_rotation/present_angle[0][11] ), .E(n411), .C(clock), .QN(n68) );
  DFE1 \my_rotation/present_angle_reg[1][12]  ( .D(
        \my_rotation/present_angle[0][12] ), .E(n411), .C(clock), .QN(n67) );
  DFE1 \my_rotation/present_angle_reg[1][8]  ( .D(
        \my_rotation/present_angle[0][8] ), .E(n412), .C(clock), .QN(n55) );
  DFE1 \my_rotation/present_angle_reg[1][9]  ( .D(
        \my_rotation/present_angle[0][9] ), .E(n411), .C(clock), .QN(n54) );
  DFE1 \my_rotation/present_angle_reg[1][10]  ( .D(
        \my_rotation/present_angle[0][10] ), .E(n411), .C(clock), .QN(n53) );
  DFE1 \my_rotation/present_angle_reg[1][5]  ( .D(
        \my_rotation/present_angle[0][5] ), .E(n412), .C(clock), .QN(n52) );
  DFE1 \my_rotation/present_angle_reg[1][6]  ( .D(
        \my_rotation/present_angle[0][6] ), .E(n412), .C(clock), .QN(n51) );
  DFE1 \my_rotation/present_angle_reg[1][7]  ( .D(
        \my_rotation/present_angle[0][7] ), .E(n412), .C(clock), .QN(n50) );
  DFE1 \my_rotation/present_angle_reg[1][3]  ( .D(
        \my_rotation/present_angle[0][3] ), .E(n412), .C(clock), .QN(n34) );
  DFE1 \my_rotation/present_angle_reg[1][4]  ( .D(
        \my_rotation/present_angle[0][4] ), .E(n412), .C(clock), .QN(n49) );
  DFE1 \my_rotation/present_angle_reg[1][0]  ( .D(
        \my_rotation/present_angle[0][0] ), .E(n412), .C(clock), .QN(n48) );
  DFE1 \my_rotation/present_angle_reg[1][1]  ( .D(
        \my_rotation/present_angle[0][1] ), .E(n412), .C(clock), .QN(n47) );
  DFE1 \my_rotation/present_angle_reg[1][2]  ( .D(
        \my_rotation/present_angle[0][2] ), .E(n412), .C(clock), .QN(n46) );
  NAND22 \mycordic/U561  ( .A(\mycordic/N619 ), .B(n393), .Q(\mycordic/n564 )
         );
  NAND22 \mycordic/U559  ( .A(\mycordic/present_ANGLE_table[6][2] ), .B(n393), 
        .Q(\mycordic/n560 ) );
  NAND22 \mycordic/U557  ( .A(\mycordic/N615 ), .B(n393), .Q(\mycordic/n556 )
         );
  NAND22 \mycordic/U560  ( .A(n198), .B(n392), .Q(\mycordic/n562 ) );
  NAND22 \mycordic/U558  ( .A(\mycordic/present_ANGLE_table[6][1] ), .B(n392), 
        .Q(\mycordic/n558 ) );
  IMUX21 \mycordic/U539  ( .A(\mycordic/n572 ), .B(n221), .S(n394), .Q(
        \mycordic/n571 ) );
  MUX22 \mycordic/U540  ( .A(\mycordic/present_ANGLE_table[6][8] ), .B(
        \mycordic/n571 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][8] ) );
  IMUX21 \mycordic/U535  ( .A(\mycordic/n568 ), .B(n220), .S(n394), .Q(
        \mycordic/n567 ) );
  MUX22 \mycordic/U536  ( .A(\mycordic/present_ANGLE_table[6][6] ), .B(
        \mycordic/n567 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][6] ) );
  IMUX21 \mycordic/U533  ( .A(\mycordic/n566 ), .B(n214), .S(n394), .Q(
        \mycordic/n565 ) );
  MUX22 \mycordic/U534  ( .A(\mycordic/present_ANGLE_table[6][5] ), .B(
        \mycordic/n565 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][5] ) );
  IMUX21 \mycordic/U531  ( .A(\mycordic/n564 ), .B(n216), .S(n394), .Q(
        \mycordic/n563 ) );
  MUX22 \mycordic/U532  ( .A(\mycordic/present_ANGLE_table[6][4] ), .B(
        \mycordic/n563 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][4] ) );
  IMUX21 \mycordic/U529  ( .A(\mycordic/n562 ), .B(n222), .S(n394), .Q(
        \mycordic/n561 ) );
  MUX22 \mycordic/U530  ( .A(\mycordic/present_ANGLE_table[6][3] ), .B(
        \mycordic/n561 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][3] ) );
  IMUX21 \mycordic/U527  ( .A(\mycordic/n560 ), .B(
        \mycordic/present_ANGLE_table[6][2] ), .S(n394), .Q(\mycordic/n559 )
         );
  MUX22 \mycordic/U528  ( .A(\mycordic/present_ANGLE_table[6][2] ), .B(
        \mycordic/n559 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][2] ) );
  IMUX21 \mycordic/U525  ( .A(\mycordic/n558 ), .B(n206), .S(n394), .Q(
        \mycordic/n557 ) );
  MUX22 \mycordic/U526  ( .A(\mycordic/present_ANGLE_table[6][1] ), .B(
        \mycordic/n557 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][1] ) );
  IMUX21 \mycordic/U523  ( .A(\mycordic/n556 ), .B(n205), .S(n394), .Q(
        \mycordic/n555 ) );
  MUX22 \mycordic/U524  ( .A(\mycordic/N615 ), .B(\mycordic/n555 ), .S(n213), 
        .Q(\mycordic/next_ANGLE_table[6][0] ) );
  NAND22 \mycordic/U565  ( .A(\mycordic/N623 ), .B(n393), .Q(\mycordic/n572 )
         );
  NAND22 \mycordic/U563  ( .A(\mycordic/N621 ), .B(n393), .Q(\mycordic/n568 )
         );
  NAND22 \mycordic/U562  ( .A(\mycordic/N620 ), .B(n392), .Q(\mycordic/n566 )
         );
  XOR21 \mycordic/U555  ( .A(\mycordic/n110 ), .B(
        \mycordic/present_C_table[7][0] ), .Q(\mycordic/n587 ) );
  IMUX21 \mycordic/U537  ( .A(\mycordic/n570 ), .B(n218), .S(n394), .Q(
        \mycordic/n569 ) );
  MUX22 \mycordic/U538  ( .A(\mycordic/present_ANGLE_table[6][7] ), .B(
        \mycordic/n569 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][7] ) );
  NAND22 \mycordic/U566  ( .A(\mycordic/N624 ), .B(n392), .Q(\mycordic/n574 )
         );
  NAND22 \mycordic/U564  ( .A(\mycordic/N622 ), .B(n392), .Q(\mycordic/n570 )
         );
  IMUX21 \mycordic/U547  ( .A(\mycordic/n580 ), .B(n212), .S(n394), .Q(
        \mycordic/n579 ) );
  MUX22 \mycordic/U548  ( .A(\mycordic/present_ANGLE_table[6][12] ), .B(
        \mycordic/n579 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][12] ) );
  IMUX21 \mycordic/U545  ( .A(\mycordic/n578 ), .B(n211), .S(n394), .Q(
        \mycordic/n577 ) );
  MUX22 \mycordic/U546  ( .A(\mycordic/present_ANGLE_table[6][11] ), .B(
        \mycordic/n577 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][11] ) );
  IMUX21 \mycordic/U543  ( .A(\mycordic/n576 ), .B(n210), .S(n394), .Q(
        \mycordic/n575 ) );
  MUX22 \mycordic/U544  ( .A(\mycordic/present_ANGLE_table[6][10] ), .B(
        \mycordic/n575 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][10] ) );
  IMUX21 \mycordic/U541  ( .A(\mycordic/n574 ), .B(n209), .S(n394), .Q(
        \mycordic/n573 ) );
  MUX22 \mycordic/U542  ( .A(\mycordic/present_ANGLE_table[6][9] ), .B(
        \mycordic/n573 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][9] ) );
  XOR31 \mycordic/sub_182/U2_7  ( .A(\mycordic/present_I_table[1][7] ), .B(
        n197), .C(\mycordic/sub_182/carry [7]), .Q(\mycordic/N291 ) );
  XOR31 \mycordic/sub_178/U2_7  ( .A(\mycordic/present_Q_table[1][7] ), .B(
        n199), .C(\mycordic/sub_178/carry [7]), .Q(\mycordic/N267 ) );
  NAND22 \mycordic/U569  ( .A(\mycordic/N627 ), .B(n393), .Q(\mycordic/n580 )
         );
  NAND22 \mycordic/U567  ( .A(\mycordic/N625 ), .B(n393), .Q(\mycordic/n576 )
         );
  NAND22 \mycordic/U570  ( .A(\mycordic/N628 ), .B(n392), .Q(\mycordic/n582 )
         );
  NAND22 \mycordic/U568  ( .A(\mycordic/N626 ), .B(n392), .Q(\mycordic/n578 )
         );
  IMUX21 \mycordic/U553  ( .A(\mycordic/n586 ), .B(n56), .S(n394), .Q(
        \mycordic/n585 ) );
  MUX22 \mycordic/U554  ( .A(\mycordic/present_ANGLE_table[6][15] ), .B(
        \mycordic/n585 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][15] ) );
  IMUX21 \mycordic/U551  ( .A(\mycordic/n584 ), .B(n208), .S(n394), .Q(
        \mycordic/n583 ) );
  MUX22 \mycordic/U552  ( .A(\mycordic/present_ANGLE_table[6][14] ), .B(
        \mycordic/n583 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][14] ) );
  IMUX21 \mycordic/U549  ( .A(\mycordic/n582 ), .B(n207), .S(n394), .Q(
        \mycordic/n581 ) );
  MUX22 \mycordic/U550  ( .A(\mycordic/present_ANGLE_table[6][13] ), .B(
        \mycordic/n581 ), .S(n213), .Q(\mycordic/next_ANGLE_table[6][13] ) );
  XOR31 \mycordic/sub_212/U2_7  ( .A(\mycordic/present_Q_table[4][7] ), .B(n36), .C(\mycordic/sub_212/carry [7]), .Q(\mycordic/N455 ) );
  XOR31 \mycordic/add_217/U1_7  ( .A(\mycordic/present_Q_table[4][7] ), .B(
        \mycordic/present_I_table[4][7] ), .C(\mycordic/add_217/carry [7]), 
        .Q(\mycordic/N483 ) );
  XOR31 \mycordic/sub_223/U2_7  ( .A(\mycordic/present_Q_table[5][7] ), .B(
        n112), .C(\mycordic/sub_223/carry[7] ), .Q(\mycordic/N500 ) );
  XOR31 \mycordic/add_228/U1_7  ( .A(\mycordic/present_Q_table[5][7] ), .B(
        \mycordic/present_I_table[5][7] ), .C(\mycordic/add_228/carry[7] ), 
        .Q(\mycordic/N517 ) );
  XOR31 \mycordic/sub_194/U2_7  ( .A(\mycordic/present_I_table[2][7] ), .B(
        n185), .C(\mycordic/sub_194/carry [7]), .Q(\mycordic/N355 ) );
  XOR31 \mycordic/add_189/U1_7  ( .A(\mycordic/present_I_table[2][7] ), .B(
        \mycordic/present_Q_table[2][7] ), .C(\mycordic/add_189/carry [7]), 
        .Q(\mycordic/N323 ) );
  XOR31 \mycordic/sub_205/U2_7  ( .A(\mycordic/present_I_table[3][7] ), .B(
        n151), .C(\mycordic/sub_205/carry [7]), .Q(\mycordic/N419 ) );
  XOR31 \mycordic/add_200/U1_7  ( .A(\mycordic/present_I_table[3][7] ), .B(
        \mycordic/present_Q_table[3][7] ), .C(\mycordic/add_200/carry [7]), 
        .Q(\mycordic/N387 ) );
  XOR31 \mycordic/sub_190/U2_7  ( .A(\mycordic/present_Q_table[2][7] ), .B(
        n186), .C(\mycordic/sub_190/carry [7]), .Q(\mycordic/N331 ) );
  XOR31 \mycordic/add_195/U1_7  ( .A(\mycordic/present_Q_table[2][7] ), .B(
        \mycordic/present_I_table[2][7] ), .C(\mycordic/add_195/carry [7]), 
        .Q(\mycordic/N363 ) );
  XOR31 \mycordic/add_211/U1_7  ( .A(\mycordic/present_I_table[4][7] ), .B(
        \mycordic/present_Q_table[4][7] ), .C(\mycordic/add_211/carry [7]), 
        .Q(\mycordic/N447 ) );
  XOR31 \mycordic/sub_216/U2_7  ( .A(\mycordic/present_I_table[4][7] ), .B(n37), .C(\mycordic/sub_216/carry [7]), .Q(\mycordic/N475 ) );
  XOR31 \mycordic/sub_201/U2_7  ( .A(\mycordic/present_Q_table[3][7] ), .B(
        n152), .C(\mycordic/sub_201/carry [7]), .Q(\mycordic/N395 ) );
  XOR31 \mycordic/add_206/U1_7  ( .A(\mycordic/present_Q_table[3][7] ), .B(
        \mycordic/present_I_table[3][7] ), .C(\mycordic/add_206/carry [7]), 
        .Q(\mycordic/N427 ) );
  NAND22 \mycordic/U572  ( .A(\mycordic/N630 ), .B(n392), .Q(\mycordic/n586 )
         );
  NAND22 \mycordic/U571  ( .A(\mycordic/N629 ), .B(n393), .Q(\mycordic/n584 )
         );
  XOR31 \my_rotation/sub_35/U2_15  ( .A(\my_rotation/present_angle[0][15] ), 
        .B(n110), .C(\my_rotation/sub_35/carry [15]), .Q(\my_rotation/N23 ) );
  DFE1 o_dir_reg ( .D(n629), .E(N26), .C(clock), .Q(o_dir) );
  DFE1 \Q_reg[2]  ( .D(n421), .E(N17), .C(clock), .Q(Q[2]) );
  DFE1 \Q_reg[1]  ( .D(n422), .E(N17), .C(clock), .Q(Q[1]) );
  DFE1 \Q_reg[0]  ( .D(n423), .E(N17), .C(clock), .Q(Q[0]) );
  DFE1 \I_reg[2]  ( .D(n417), .E(N17), .C(clock), .Q(I[2]) );
  DFE1 \I_reg[1]  ( .D(n418), .E(N17), .C(clock), .Q(I[1]) );
  DFE1 \I_reg[0]  ( .D(n419), .E(N17), .C(clock), .Q(I[0]) );
  DFE1 \Q_reg[3]  ( .D(n420), .E(N17), .C(clock), .Q(Q[3]) );
  DFE1 \I_reg[3]  ( .D(n416), .E(N17), .C(clock), .Q(I[3]) );
  ADD32 \mycordic/r144/U1_3  ( .A(\mycordic/present_I_table[1][3] ), .B(
        \mycordic/present_Q_table[1][3] ), .CI(n33), .CO(
        \mycordic/r144/carry [4]), .S(\mycordic/N255 ) );
  ADD32 \mycordic/sub_182/U2_3  ( .A(\mycordic/present_I_table[1][3] ), .B(
        n129), .CI(n32), .CO(\mycordic/sub_182/carry [4]), .S(\mycordic/N287 )
         );
  ADD32 \mycordic/sub_178/U2_3  ( .A(\mycordic/present_Q_table[1][3] ), .B(
        n128), .CI(n32), .CO(\mycordic/sub_178/carry [4]), .S(\mycordic/N263 )
         );
  LOGIC1 U39 ( .Q(n32) );
  LOGIC0 U40 ( .Q(n33) );
  INV3 U41 ( .A(\mycordic/n353 ), .Q(n434) );
  XNR21 U42 ( .A(n196), .B(\mycordic/sub_add_150_b0/carry [7]), .Q(n38) );
  XNR21 U43 ( .A(\mycordic/present_ANGLE_table[6][15] ), .B(
        \mycordic/r173/carry [15]), .Q(n56) );
  AOI221 U44 ( .A(n621), .B(\mycordic/N247 ), .C(\mycordic/n354 ), .D(
        \mycordic/present_Q_table[0][7] ), .Q(\mycordic/n353 ) );
  OAI2111 U45 ( .A(n653), .B(n654), .C(n655), .D(n656), .Q(n700) );
  NOR40 U46 ( .A(n656), .B(n655), .C(n654), .D(n653), .Q(\my_rotation/n57 ) );
  INV3 U47 ( .A(n395), .Q(n664) );
  AOI211 U48 ( .A(n703), .B(n702), .C(n650), .Q(n704) );
  NOR40 U49 ( .A(n651), .B(n652), .C(n658), .D(n657), .Q(n702) );
  NOR40 U50 ( .A(n663), .B(n662), .C(n661), .D(n701), .Q(n703) );
  AOI211 U51 ( .A(\my_rotation/n48 ), .B(n700), .C(\my_rotation/n47 ), .Q(n701) );
  INV3 U52 ( .A(\my_rotation/n68 ), .Q(n650) );
  AOI221 U53 ( .A(n396), .B(n664), .C(\my_rotation/N40 ), .D(n395), .Q(
        \my_rotation/n68 ) );
  XOR21 U54 ( .A(\my_rotation/add_38/carry [15]), .B(n395), .Q(
        \my_rotation/N40 ) );
  NOR21 U55 ( .A(n318), .B(n319), .Q(\my_rotation/add_38/carry [15]) );
  INV3 U56 ( .A(\my_rotation/add_38/carry [14]), .Q(n318) );
  INV3 U57 ( .A(\mycordic/n548 ), .Q(n627) );
  NAND22 U58 ( .A(\mycordic/present_Q_table[4][7] ), .B(n407), .Q(
        \mycordic/n548 ) );
  BUF2 U59 ( .A(\mycordic/n363 ), .Q(n405) );
  AOI221 U60 ( .A(\my_rotation/delta [7]), .B(n664), .C(\my_rotation/N32 ), 
        .D(n396), .Q(\my_rotation/n47 ) );
  XOR21 U61 ( .A(\my_rotation/delta [7]), .B(\my_rotation/add_38/carry [7]), 
        .Q(\my_rotation/N32 ) );
  AOI221 U62 ( .A(\my_rotation/delta [6]), .B(n664), .C(\my_rotation/N31 ), 
        .D(n396), .Q(\my_rotation/n48 ) );
  XNR21 U63 ( .A(\my_rotation/delta [6]), .B(\my_rotation/add_38/carry [6]), 
        .Q(\my_rotation/N31 ) );
  NOR40 U64 ( .A(n659), .B(n650), .C(n658), .D(n657), .Q(\my_rotation/n56 ) );
  INV3 U65 ( .A(\my_rotation/n69 ), .Q(n659) );
  AOI221 U66 ( .A(\my_rotation/delta [1]), .B(n664), .C(\my_rotation/delta [1]), .D(n395), .Q(\my_rotation/n69 ) );
  BUF2 U67 ( .A(\my_rotation/N23 ), .Q(n395) );
  BUF2 U68 ( .A(\my_rotation/N23 ), .Q(n396) );
  INV3 U69 ( .A(\my_rotation/n71 ), .Q(n661) );
  AOI221 U70 ( .A(\my_rotation/delta [10]), .B(n664), .C(\my_rotation/N35 ), 
        .D(n395), .Q(\my_rotation/n71 ) );
  XOR21 U71 ( .A(\my_rotation/delta [10]), .B(\my_rotation/add_38/carry [10]), 
        .Q(\my_rotation/N35 ) );
  INV3 U72 ( .A(\my_rotation/n67 ), .Q(n658) );
  AOI221 U73 ( .A(\my_rotation/delta [14]), .B(n664), .C(\my_rotation/N39 ), 
        .D(n395), .Q(\my_rotation/n67 ) );
  XOR21 U74 ( .A(\my_rotation/delta [14]), .B(\my_rotation/add_38/carry [14]), 
        .Q(\my_rotation/N39 ) );
  INV3 U75 ( .A(\my_rotation/n66 ), .Q(n657) );
  AOI221 U76 ( .A(\my_rotation/delta [13]), .B(n664), .C(\my_rotation/N38 ), 
        .D(n396), .Q(\my_rotation/n66 ) );
  XOR21 U77 ( .A(\my_rotation/delta [13]), .B(\my_rotation/add_38/carry [13]), 
        .Q(\my_rotation/N38 ) );
  INV3 U78 ( .A(\my_rotation/n61 ), .Q(n652) );
  AOI221 U79 ( .A(\my_rotation/delta [8]), .B(n664), .C(\my_rotation/N33 ), 
        .D(n396), .Q(\my_rotation/n61 ) );
  XNR21 U80 ( .A(\my_rotation/delta [8]), .B(\my_rotation/add_38/carry [8]), 
        .Q(\my_rotation/N33 ) );
  INV3 U81 ( .A(\my_rotation/n72 ), .Q(n662) );
  AOI221 U82 ( .A(\my_rotation/delta [11]), .B(n664), .C(\my_rotation/N36 ), 
        .D(n395), .Q(\my_rotation/n72 ) );
  XOR21 U83 ( .A(\my_rotation/delta [11]), .B(\my_rotation/add_38/carry [11]), 
        .Q(\my_rotation/N36 ) );
  INV3 U84 ( .A(\my_rotation/n60 ), .Q(n651) );
  AOI221 U85 ( .A(\my_rotation/delta [9]), .B(n664), .C(\my_rotation/N34 ), 
        .D(n396), .Q(\my_rotation/n60 ) );
  XOR21 U86 ( .A(\my_rotation/delta [9]), .B(\my_rotation/add_38/carry [9]), 
        .Q(\my_rotation/N34 ) );
  INV3 U87 ( .A(\my_rotation/n73 ), .Q(n663) );
  AOI221 U88 ( .A(\my_rotation/delta [12]), .B(n664), .C(\my_rotation/N37 ), 
        .D(n395), .Q(\my_rotation/n73 ) );
  XOR21 U89 ( .A(\my_rotation/delta [12]), .B(\my_rotation/add_38/carry [12]), 
        .Q(\my_rotation/N37 ) );
  INV3 U90 ( .A(\my_rotation/n63 ), .Q(n654) );
  AOI221 U91 ( .A(\my_rotation/delta [3]), .B(n664), .C(n306), .D(n396), .Q(
        \my_rotation/n63 ) );
  INV3 U92 ( .A(\my_rotation/n65 ), .Q(n656) );
  AOI221 U93 ( .A(\my_rotation/delta [5]), .B(n664), .C(\my_rotation/N30 ), 
        .D(n396), .Q(\my_rotation/n65 ) );
  XNR21 U94 ( .A(\my_rotation/delta [5]), .B(\my_rotation/add_38/carry [5]), 
        .Q(\my_rotation/N30 ) );
  INV3 U95 ( .A(\my_rotation/n62 ), .Q(n653) );
  AOI221 U96 ( .A(\my_rotation/delta [2]), .B(n664), .C(\my_rotation/delta [2]), .D(n396), .Q(\my_rotation/n62 ) );
  INV3 U97 ( .A(\my_rotation/n64 ), .Q(n655) );
  AOI221 U98 ( .A(\my_rotation/delta [4]), .B(n664), .C(\my_rotation/N29 ), 
        .D(n396), .Q(\my_rotation/n64 ) );
  XOR21 U99 ( .A(\my_rotation/delta [4]), .B(\my_rotation/delta [3]), .Q(
        \my_rotation/N29 ) );
  INV3 U100 ( .A(\my_rotation/n53 ), .Q(n575) );
  NAND31 U101 ( .A(n411), .B(\my_rotation/n54 ), .C(n649), .Q(
        \my_rotation/n53 ) );
  NAND41 U102 ( .A(\my_rotation/n55 ), .B(\my_rotation/n56 ), .C(
        \my_rotation/n57 ), .D(\my_rotation/n58 ), .Q(\my_rotation/n54 ) );
  INV3 U103 ( .A(n704), .Q(n649) );
  NOR21 U104 ( .A(n226), .B(n309), .Q(\my_rotation/add_38/carry [10]) );
  INV3 U105 ( .A(\my_rotation/delta [9]), .Q(n309) );
  NOR21 U106 ( .A(n310), .B(n311), .Q(\my_rotation/add_38/carry [11]) );
  INV3 U107 ( .A(\my_rotation/add_38/carry [10]), .Q(n310) );
  INV3 U108 ( .A(\my_rotation/delta [10]), .Q(n311) );
  NOR21 U109 ( .A(n312), .B(n313), .Q(\my_rotation/add_38/carry [12]) );
  INV3 U110 ( .A(\my_rotation/add_38/carry [11]), .Q(n312) );
  INV3 U111 ( .A(\my_rotation/delta [11]), .Q(n313) );
  NOR21 U112 ( .A(n314), .B(n315), .Q(\my_rotation/add_38/carry [13]) );
  INV3 U113 ( .A(\my_rotation/add_38/carry [12]), .Q(n314) );
  INV3 U114 ( .A(\my_rotation/delta [12]), .Q(n315) );
  NOR21 U115 ( .A(n316), .B(n317), .Q(\my_rotation/add_38/carry [14]) );
  INV3 U116 ( .A(\my_rotation/add_38/carry [13]), .Q(n316) );
  INV3 U117 ( .A(\my_rotation/delta [13]), .Q(n317) );
  INV3 U118 ( .A(n226), .Q(\my_rotation/add_38/carry [9]) );
  NOR21 U119 ( .A(\my_rotation/add_38/carry [8]), .B(\my_rotation/delta [8]), 
        .Q(n226) );
  NOR21 U120 ( .A(n225), .B(n308), .Q(\my_rotation/add_38/carry [8]) );
  INV3 U121 ( .A(\my_rotation/delta [7]), .Q(n308) );
  INV3 U122 ( .A(\my_rotation/delta [14]), .Q(n319) );
  INV3 U123 ( .A(n224), .Q(\my_rotation/add_38/carry [6]) );
  NOR21 U124 ( .A(\my_rotation/add_38/carry [5]), .B(\my_rotation/delta [5]), 
        .Q(n224) );
  INV3 U125 ( .A(n225), .Q(\my_rotation/add_38/carry [7]) );
  NOR21 U126 ( .A(\my_rotation/add_38/carry [6]), .B(\my_rotation/delta [6]), 
        .Q(n225) );
  NOR21 U127 ( .A(n306), .B(n307), .Q(\my_rotation/add_38/carry [5]) );
  INV3 U128 ( .A(\my_rotation/delta [3]), .Q(n306) );
  INV3 U129 ( .A(\my_rotation/delta [4]), .Q(n307) );
  INV3 U130 ( .A(\mycordic/r173/carry [14]), .Q(n325) );
  INV3 U131 ( .A(\mycordic/add_262/carry [14]), .Q(n387) );
  INV3 U132 ( .A(\mycordic/n378 ), .Q(n471) );
  AOI221 U133 ( .A(\mycordic/N320 ), .B(n400), .C(\mycordic/N352 ), .D(n624), 
        .Q(\mycordic/n378 ) );
  INV3 U134 ( .A(\mycordic/n377 ), .Q(n472) );
  AOI221 U135 ( .A(\mycordic/N321 ), .B(n400), .C(\mycordic/N353 ), .D(n624), 
        .Q(\mycordic/n377 ) );
  INV3 U136 ( .A(\mycordic/n376 ), .Q(n473) );
  AOI221 U137 ( .A(\mycordic/N322 ), .B(n400), .C(\mycordic/N354 ), .D(n624), 
        .Q(\mycordic/n376 ) );
  INV3 U138 ( .A(\mycordic/n339 ), .Q(n479) );
  AOI221 U139 ( .A(\mycordic/N328 ), .B(n400), .C(\mycordic/N360 ), .D(n624), 
        .Q(\mycordic/n339 ) );
  INV3 U140 ( .A(\mycordic/n338 ), .Q(n480) );
  AOI221 U141 ( .A(\mycordic/N329 ), .B(n400), .C(\mycordic/N361 ), .D(n624), 
        .Q(\mycordic/n338 ) );
  INV3 U142 ( .A(\mycordic/n337 ), .Q(n481) );
  AOI221 U143 ( .A(\mycordic/N330 ), .B(n400), .C(\mycordic/N362 ), .D(n624), 
        .Q(\mycordic/n337 ) );
  INV3 U144 ( .A(\mycordic/n368 ), .Q(n566) );
  AOI221 U145 ( .A(\mycordic/N386 ), .B(n406), .C(\mycordic/N418 ), .D(n628), 
        .Q(\mycordic/n368 ) );
  INV3 U146 ( .A(\mycordic/n369 ), .Q(n565) );
  AOI221 U147 ( .A(\mycordic/N385 ), .B(n406), .C(\mycordic/N417 ), .D(n628), 
        .Q(\mycordic/n369 ) );
  INV3 U148 ( .A(\mycordic/n370 ), .Q(n564) );
  AOI221 U149 ( .A(\mycordic/N384 ), .B(n406), .C(\mycordic/N416 ), .D(n628), 
        .Q(\mycordic/n370 ) );
  INV3 U150 ( .A(\mycordic/n550 ), .Q(n542) );
  AOI221 U151 ( .A(\mycordic/N394 ), .B(\mycordic/n332 ), .C(\mycordic/N426 ), 
        .D(n628), .Q(\mycordic/n550 ) );
  INV3 U152 ( .A(\mycordic/n551 ), .Q(n541) );
  AOI221 U153 ( .A(\mycordic/N393 ), .B(n406), .C(\mycordic/N425 ), .D(n628), 
        .Q(\mycordic/n551 ) );
  INV3 U154 ( .A(\mycordic/n552 ), .Q(n540) );
  AOI221 U155 ( .A(\mycordic/N392 ), .B(\mycordic/n332 ), .C(\mycordic/N424 ), 
        .D(n628), .Q(\mycordic/n552 ) );
  INV3 U156 ( .A(\mycordic/n366 ), .Q(n535) );
  AOI221 U157 ( .A(\mycordic/N444 ), .B(n405), .C(\mycordic/N472 ), .D(n627), 
        .Q(\mycordic/n366 ) );
  INV3 U158 ( .A(\mycordic/n365 ), .Q(n536) );
  AOI221 U159 ( .A(\mycordic/N445 ), .B(n405), .C(\mycordic/N473 ), .D(n627), 
        .Q(\mycordic/n365 ) );
  INV3 U160 ( .A(\mycordic/n364 ), .Q(n537) );
  AOI221 U161 ( .A(\mycordic/N446 ), .B(n405), .C(\mycordic/N474 ), .D(n627), 
        .Q(\mycordic/n364 ) );
  INV3 U162 ( .A(\mycordic/n543 ), .Q(n515) );
  AOI221 U163 ( .A(\mycordic/N452 ), .B(n405), .C(\mycordic/N480 ), .D(n627), 
        .Q(\mycordic/n543 ) );
  INV3 U164 ( .A(\mycordic/n542 ), .Q(n516) );
  AOI221 U165 ( .A(\mycordic/N453 ), .B(n405), .C(\mycordic/N481 ), .D(n627), 
        .Q(\mycordic/n542 ) );
  INV3 U166 ( .A(\mycordic/n541 ), .Q(n517) );
  AOI221 U167 ( .A(\mycordic/N454 ), .B(n405), .C(\mycordic/N482 ), .D(n627), 
        .Q(\mycordic/n541 ) );
  INV3 U168 ( .A(\mycordic/n544 ), .Q(n514) );
  AOI221 U169 ( .A(\mycordic/N451 ), .B(\mycordic/n363 ), .C(\mycordic/N479 ), 
        .D(n627), .Q(\mycordic/n544 ) );
  NOR21 U170 ( .A(\mycordic/present_Q_table[0][5] ), .B(n390), .Q(
        \mycordic/sub_add_151_b0/carry [6]) );
  INV3 U171 ( .A(\mycordic/sub_add_151_b0/carry [5]), .Q(n390) );
  NOR21 U172 ( .A(\mycordic/present_Q_table[0][4] ), .B(
        \mycordic/present_Q_table[0][3] ), .Q(
        \mycordic/sub_add_151_b0/carry [5]) );
  INV3 U173 ( .A(\mycordic/n587 ), .Q(n394) );
  NOR21 U174 ( .A(\mycordic/present_Q_table[0][6] ), .B(n391), .Q(
        \mycordic/sub_add_151_b0/carry [7]) );
  INV3 U175 ( .A(\mycordic/sub_add_151_b0/carry [6]), .Q(n391) );
  INV3 U176 ( .A(\mycordic/n348 ), .Q(n490) );
  AOI221 U177 ( .A(n625), .B(\mycordic/N256 ), .C(n402), .D(\mycordic/N264 ), 
        .Q(\mycordic/n348 ) );
  INV3 U178 ( .A(\mycordic/n347 ), .Q(n491) );
  AOI221 U179 ( .A(n625), .B(\mycordic/N257 ), .C(n402), .D(\mycordic/N265 ), 
        .Q(\mycordic/n347 ) );
  INV3 U180 ( .A(\mycordic/n346 ), .Q(n492) );
  AOI221 U181 ( .A(n625), .B(\mycordic/N258 ), .C(n402), .D(\mycordic/N266 ), 
        .Q(\mycordic/n346 ) );
  INV3 U182 ( .A(\mycordic/n386 ), .Q(n485) );
  AOI221 U183 ( .A(n625), .B(\mycordic/N288 ), .C(n401), .D(\mycordic/N256 ), 
        .Q(\mycordic/n386 ) );
  INV3 U184 ( .A(\mycordic/n385 ), .Q(n486) );
  AOI221 U185 ( .A(n625), .B(\mycordic/N289 ), .C(n401), .D(\mycordic/N257 ), 
        .Q(\mycordic/n385 ) );
  INV3 U186 ( .A(\mycordic/n384 ), .Q(n487) );
  AOI221 U187 ( .A(n625), .B(\mycordic/N290 ), .C(n401), .D(\mycordic/N258 ), 
        .Q(\mycordic/n384 ) );
  INV3 U188 ( .A(\mycordic/n331 ), .Q(n570) );
  AOI221 U189 ( .A(\mycordic/N390 ), .B(\mycordic/n332 ), .C(\mycordic/N422 ), 
        .D(n628), .Q(\mycordic/n331 ) );
  INV3 U190 ( .A(\mycordic/n372 ), .Q(n562) );
  AOI221 U191 ( .A(\mycordic/N382 ), .B(\mycordic/n332 ), .C(\mycordic/N414 ), 
        .D(n628), .Q(\mycordic/n372 ) );
  INV3 U192 ( .A(\mycordic/n380 ), .Q(n469) );
  AOI221 U193 ( .A(\mycordic/N318 ), .B(n400), .C(\mycordic/N350 ), .D(n624), 
        .Q(\mycordic/n380 ) );
  INV3 U194 ( .A(\mycordic/n379 ), .Q(n470) );
  AOI221 U195 ( .A(\mycordic/N319 ), .B(\mycordic/n336 ), .C(\mycordic/N351 ), 
        .D(n624), .Q(\mycordic/n379 ) );
  INV3 U196 ( .A(\mycordic/n341 ), .Q(n477) );
  AOI221 U197 ( .A(\mycordic/N326 ), .B(n400), .C(\mycordic/N358 ), .D(n624), 
        .Q(\mycordic/n341 ) );
  INV3 U198 ( .A(\mycordic/n340 ), .Q(n478) );
  AOI221 U199 ( .A(\mycordic/N327 ), .B(\mycordic/n336 ), .C(\mycordic/N359 ), 
        .D(n624), .Q(\mycordic/n340 ) );
  INV3 U200 ( .A(\mycordic/n371 ), .Q(n563) );
  AOI221 U201 ( .A(\mycordic/N383 ), .B(n406), .C(\mycordic/N415 ), .D(n628), 
        .Q(\mycordic/n371 ) );
  INV3 U202 ( .A(\mycordic/n553 ), .Q(n539) );
  AOI221 U203 ( .A(\mycordic/N391 ), .B(n406), .C(\mycordic/N423 ), .D(n628), 
        .Q(\mycordic/n553 ) );
  INV3 U204 ( .A(\mycordic/n545 ), .Q(n513) );
  AOI221 U205 ( .A(\mycordic/N450 ), .B(n405), .C(\mycordic/N478 ), .D(n627), 
        .Q(\mycordic/n545 ) );
  NAND22 U206 ( .A(N17), .B(n190), .Q(n17) );
  BUF2 U207 ( .A(\mycordic/n332 ), .Q(n406) );
  BUF2 U208 ( .A(\mycordic/n336 ), .Q(n400) );
  NOR21 U209 ( .A(\mycordic/present_I_table[0][4] ), .B(
        \mycordic/present_I_table[0][3] ), .Q(
        \mycordic/sub_add_150_b0/carry [5]) );
  NOR21 U210 ( .A(n414), .B(\mycordic/present_Q_table[4][7] ), .Q(
        \mycordic/n363 ) );
  INV3 U211 ( .A(\mycordic/n391 ), .Q(n621) );
  BUF2 U212 ( .A(\mycordic/n438 ), .Q(n398) );
  BUF2 U213 ( .A(\mycordic/n438 ), .Q(n399) );
  BUF2 U214 ( .A(\mycordic/n345 ), .Q(n402) );
  BUF2 U215 ( .A(\mycordic/n345 ), .Q(n401) );
  NOR21 U216 ( .A(\mycordic/present_I_table[0][6] ), .B(n389), .Q(
        \mycordic/sub_add_150_b0/carry [7]) );
  INV3 U217 ( .A(\mycordic/sub_add_150_b0/carry [6]), .Q(n389) );
  INV3 U218 ( .A(n403), .Q(n404) );
  NOR21 U219 ( .A(\mycordic/present_I_table[0][5] ), .B(n388), .Q(
        \mycordic/sub_add_150_b0/carry [6]) );
  INV3 U220 ( .A(\mycordic/sub_add_150_b0/carry [5]), .Q(n388) );
  INV3 U221 ( .A(\mycordic/n349 ), .Q(n489) );
  AOI221 U222 ( .A(n625), .B(\mycordic/N255 ), .C(n402), .D(\mycordic/N263 ), 
        .Q(\mycordic/n349 ) );
  INV3 U223 ( .A(\mycordic/n387 ), .Q(n484) );
  AOI221 U224 ( .A(n625), .B(\mycordic/N287 ), .C(n401), .D(\mycordic/N255 ), 
        .Q(\mycordic/n387 ) );
  INV3 U225 ( .A(\mycordic/n381 ), .Q(n468) );
  AOI221 U226 ( .A(\mycordic/N317 ), .B(\mycordic/n336 ), .C(\mycordic/N349 ), 
        .D(n624), .Q(\mycordic/n381 ) );
  INV3 U227 ( .A(\mycordic/n342 ), .Q(n476) );
  AOI221 U228 ( .A(\mycordic/N325 ), .B(\mycordic/n336 ), .C(\mycordic/N357 ), 
        .D(n624), .Q(\mycordic/n342 ) );
  INV3 U229 ( .A(\mycordic/n333 ), .Q(n569) );
  AOI221 U230 ( .A(\mycordic/N389 ), .B(n406), .C(\mycordic/N421 ), .D(n628), 
        .Q(\mycordic/n333 ) );
  INV3 U231 ( .A(\mycordic/n373 ), .Q(n561) );
  AOI221 U232 ( .A(\mycordic/N381 ), .B(n406), .C(\mycordic/N413 ), .D(n628), 
        .Q(\mycordic/n373 ) );
  INV3 U233 ( .A(\mycordic/n546 ), .Q(n512) );
  AOI221 U234 ( .A(\mycordic/N449 ), .B(\mycordic/n363 ), .C(\mycordic/N477 ), 
        .D(n627), .Q(\mycordic/n546 ) );
  INV3 U235 ( .A(\mycordic/n536 ), .Q(n483) );
  NOR21 U236 ( .A(n401), .B(n625), .Q(\mycordic/n536 ) );
  INV3 U237 ( .A(n414), .Q(n411) );
  INV3 U238 ( .A(n414), .Q(n409) );
  INV3 U239 ( .A(n414), .Q(n407) );
  INV3 U240 ( .A(n413), .Q(n408) );
  INV3 U241 ( .A(n413), .Q(n410) );
  INV3 U242 ( .A(n413), .Q(n412) );
  NOR40 U243 ( .A(n663), .B(n662), .C(n661), .D(n660), .Q(\my_rotation/n55 )
         );
  INV3 U244 ( .A(\my_rotation/n70 ), .Q(n660) );
  AOI221 U245 ( .A(\my_rotation/N25 ), .B(n664), .C(\my_rotation/N25 ), .D(
        n395), .Q(\my_rotation/n70 ) );
  XNR21 U246 ( .A(\my_rotation/present_angle[0][0] ), .B(n48), .Q(
        \my_rotation/N25 ) );
  NOR40 U247 ( .A(\my_rotation/n59 ), .B(n652), .C(dir), .D(n651), .Q(
        \my_rotation/n58 ) );
  NAND22 U248 ( .A(\my_rotation/n48 ), .B(\my_rotation/n47 ), .Q(
        \my_rotation/n59 ) );
  INV3 U249 ( .A(n223), .Q(\my_rotation/sub_35/carry [1]) );
  NOR21 U250 ( .A(n48), .B(\my_rotation/present_angle[0][0] ), .Q(n223) );
  AOI211 U251 ( .A(\mycordic/present_I_table[4][1] ), .B(
        \mycordic/present_Q_table[4][4] ), .C(n647), .Q(n696) );
  INV3 U252 ( .A(n694), .Q(n647) );
  OAI2111 U253 ( .A(\mycordic/present_I_table[4][1] ), .B(
        \mycordic/present_Q_table[4][4] ), .C(\mycordic/present_I_table[4][0] ), .D(\mycordic/present_Q_table[4][3] ), .Q(n694) );
  INV3 U254 ( .A(n678), .Q(n638) );
  NAND22 U255 ( .A(n111), .B(n679), .Q(n678) );
  AOI221 U256 ( .A(n677), .B(\mycordic/present_Q_table[5][1] ), .C(n35), .D(
        n640), .Q(n679) );
  AOI221 U257 ( .A(n691), .B(\mycordic/present_I_table[4][2] ), .C(n133), .D(
        n642), .Q(n693) );
  INV3 U258 ( .A(n690), .Q(n642) );
  NOR21 U259 ( .A(\mycordic/present_I_table[4][2] ), .B(n691), .Q(n690) );
  INV3 U260 ( .A(n682), .Q(n634) );
  AOI211 U261 ( .A(n153), .B(n683), .C(\mycordic/present_I_table[5][7] ), .Q(
        n682) );
  AOI211 U262 ( .A(n681), .B(\mycordic/present_Q_table[5][3] ), .C(n637), .Q(
        n683) );
  NOR21 U263 ( .A(n191), .B(n58), .Q(\mycordic/sub_196/carry[2] ) );
  NOR21 U264 ( .A(n346), .B(n70), .Q(\mycordic/sub_207/carry [4]) );
  INV3 U265 ( .A(\mycordic/sub_207/carry [3]), .Q(n346) );
  NOR21 U266 ( .A(n358), .B(n71), .Q(\mycordic/sub_218/carry[3] ) );
  INV3 U267 ( .A(\mycordic/sub_218/carry[2] ), .Q(n358) );
  NOR21 U268 ( .A(n194), .B(n59), .Q(\mycordic/sub_229/carry[2] ) );
  NOR21 U269 ( .A(n198), .B(n57), .Q(\mycordic/r173/carry [4]) );
  XOR21 U270 ( .A(\mycordic/add_262/carry [14]), .B(
        \mycordic/present_ANGLE_table[6][14] ), .Q(\mycordic/N629 ) );
  NOR21 U271 ( .A(n219), .B(n304), .Q(\mycordic/add_262/carry [8]) );
  INV3 U272 ( .A(n696), .Q(n646) );
  NOR21 U273 ( .A(n89), .B(n136), .Q(\mycordic/add_217/carry [1]) );
  INV3 U274 ( .A(n234), .Q(\mycordic/sub_194/carry [1]) );
  NOR21 U275 ( .A(n92), .B(\mycordic/present_I_table[2][0] ), .Q(n234) );
  INV3 U276 ( .A(n230), .Q(\mycordic/sub_190/carry [1]) );
  NOR21 U277 ( .A(n94), .B(\mycordic/present_Q_table[2][0] ), .Q(n230) );
  INV3 U278 ( .A(n699), .Q(n644) );
  AOI211 U279 ( .A(n698), .B(\mycordic/present_I_table[4][3] ), .C(n645), .Q(
        n699) );
  INV3 U280 ( .A(n697), .Q(n645) );
  INV3 U281 ( .A(n249), .Q(\mycordic/sub_205/carry [1]) );
  NOR21 U282 ( .A(n93), .B(\mycordic/present_I_table[3][0] ), .Q(n249) );
  INV3 U283 ( .A(n246), .Q(\mycordic/sub_201/carry [1]) );
  NOR21 U284 ( .A(n95), .B(\mycordic/present_Q_table[3][0] ), .Q(n246) );
  INV3 U285 ( .A(n261), .Q(\mycordic/sub_212/carry [1]) );
  NOR21 U286 ( .A(n89), .B(\mycordic/present_Q_table[4][0] ), .Q(n261) );
  NOR21 U287 ( .A(n331), .B(n169), .Q(\mycordic/add_191/carry[12] ) );
  INV3 U288 ( .A(\mycordic/add_191/carry[11] ), .Q(n331) );
  NOR21 U289 ( .A(n332), .B(n170), .Q(\mycordic/add_191/carry[13] ) );
  INV3 U290 ( .A(\mycordic/add_191/carry[12] ), .Q(n332) );
  NOR21 U291 ( .A(n192), .B(n72), .Q(\mycordic/sub_207/carry [3]) );
  NOR21 U292 ( .A(n248), .B(n73), .Q(\mycordic/add_202/carry [5]) );
  NOR21 U293 ( .A(n339), .B(n100), .Q(\mycordic/add_202/carry [9]) );
  INV3 U294 ( .A(\mycordic/add_202/carry [8]), .Q(n339) );
  NOR21 U295 ( .A(n340), .B(n137), .Q(\mycordic/add_202/carry [10]) );
  INV3 U296 ( .A(\mycordic/add_202/carry [9]), .Q(n340) );
  NOR21 U297 ( .A(n193), .B(n60), .Q(\mycordic/sub_218/carry[2] ) );
  NOR21 U298 ( .A(n263), .B(n61), .Q(\mycordic/add_213/carry[4] ) );
  NOR21 U299 ( .A(n350), .B(n101), .Q(\mycordic/add_213/carry[8] ) );
  INV3 U300 ( .A(\mycordic/add_213/carry[7] ), .Q(n350) );
  NOR21 U301 ( .A(n351), .B(n102), .Q(\mycordic/add_213/carry[9] ) );
  INV3 U302 ( .A(\mycordic/add_213/carry[8] ), .Q(n351) );
  NOR21 U303 ( .A(n276), .B(n62), .Q(\mycordic/add_224/carry[3] ) );
  NOR21 U304 ( .A(n363), .B(n103), .Q(\mycordic/add_224/carry[8] ) );
  INV3 U305 ( .A(\mycordic/add_224/carry[7] ), .Q(n363) );
  NOR21 U306 ( .A(n364), .B(n104), .Q(\mycordic/add_224/carry[9] ) );
  INV3 U307 ( .A(\mycordic/add_224/carry[8] ), .Q(n364) );
  NOR21 U308 ( .A(n195), .B(n63), .Q(\mycordic/add_233/carry [3]) );
  NOR21 U309 ( .A(n371), .B(n64), .Q(\mycordic/add_233/carry [4]) );
  INV3 U310 ( .A(\mycordic/add_233/carry [3]), .Q(n371) );
  NOR21 U311 ( .A(n375), .B(n105), .Q(\mycordic/add_233/carry [8]) );
  INV3 U312 ( .A(\mycordic/add_233/carry [7]), .Q(n375) );
  NOR21 U313 ( .A(n376), .B(n106), .Q(\mycordic/add_233/carry [9]) );
  INV3 U314 ( .A(\mycordic/add_233/carry [8]), .Q(n376) );
  NOR21 U315 ( .A(n99), .B(n229), .Q(\mycordic/r173/carry [9]) );
  NOR21 U316 ( .A(n98), .B(n320), .Q(\mycordic/r173/carry [10]) );
  INV3 U317 ( .A(\mycordic/r173/carry [9]), .Q(n320) );
  NOR21 U318 ( .A(n98), .B(n305), .Q(\mycordic/add_262/carry [10]) );
  NOR21 U319 ( .A(n134), .B(n321), .Q(\mycordic/r173/carry [11]) );
  INV3 U320 ( .A(\mycordic/r173/carry [10]), .Q(n321) );
  NOR21 U321 ( .A(n134), .B(n383), .Q(\mycordic/add_262/carry [11]) );
  INV3 U322 ( .A(\mycordic/add_262/carry [10]), .Q(n383) );
  NOR21 U323 ( .A(n135), .B(n322), .Q(\mycordic/r173/carry [12]) );
  INV3 U324 ( .A(\mycordic/r173/carry [11]), .Q(n322) );
  NOR21 U325 ( .A(n135), .B(n384), .Q(\mycordic/add_262/carry [12]) );
  INV3 U326 ( .A(\mycordic/add_262/carry [11]), .Q(n384) );
  NOR21 U327 ( .A(n166), .B(n323), .Q(\mycordic/r173/carry [13]) );
  INV3 U328 ( .A(\mycordic/r173/carry [12]), .Q(n323) );
  NOR21 U329 ( .A(n166), .B(n385), .Q(\mycordic/add_262/carry [13]) );
  INV3 U330 ( .A(\mycordic/add_262/carry [12]), .Q(n385) );
  NOR21 U331 ( .A(n167), .B(n324), .Q(\mycordic/r173/carry [14]) );
  INV3 U332 ( .A(\mycordic/r173/carry [13]), .Q(n324) );
  NOR21 U333 ( .A(n167), .B(n386), .Q(\mycordic/add_262/carry [14]) );
  INV3 U334 ( .A(\mycordic/add_262/carry [13]), .Q(n386) );
  NAND22 U335 ( .A(\mycordic/present_I_table[5][4] ), .B(n97), .Q(n677) );
  NOR21 U336 ( .A(n96), .B(\mycordic/present_I_table[4][0] ), .Q(n689) );
  NOR21 U337 ( .A(\mycordic/present_I_table[4][3] ), .B(n641), .Q(n692) );
  INV3 U338 ( .A(n693), .Q(n641) );
  XOR21 U339 ( .A(\mycordic/present_ANGLE_table[6][15] ), .B(
        \mycordic/add_262/carry [15]), .Q(\mycordic/N630 ) );
  NOR21 U340 ( .A(n168), .B(n387), .Q(\mycordic/add_262/carry [15]) );
  NOR21 U341 ( .A(n93), .B(n138), .Q(\mycordic/add_200/carry [1]) );
  NOR21 U342 ( .A(n95), .B(n139), .Q(\mycordic/add_206/carry [1]) );
  NOR21 U343 ( .A(n92), .B(n140), .Q(\mycordic/add_189/carry [1]) );
  NOR21 U344 ( .A(n94), .B(n141), .Q(\mycordic/add_195/carry [1]) );
  INV3 U345 ( .A(n247), .Q(\mycordic/add_202/carry [3]) );
  NOR21 U346 ( .A(\mycordic/present_ANGLE_table[2][1] ), .B(
        \mycordic/present_ANGLE_table[2][2] ), .Q(n247) );
  INV3 U347 ( .A(n262), .Q(\mycordic/add_213/carry[2] ) );
  NOR21 U348 ( .A(\mycordic/present_ANGLE_table[3][0] ), .B(
        \mycordic/present_ANGLE_table[3][1] ), .Q(n262) );
  INV3 U349 ( .A(n295), .Q(\mycordic/sub_236/carry [3]) );
  NOR21 U350 ( .A(\mycordic/present_ANGLE_table[5][1] ), .B(
        \mycordic/present_ANGLE_table[5][2] ), .Q(n295) );
  INV3 U351 ( .A(n303), .Q(\mycordic/add_262/carry [6]) );
  NOR21 U352 ( .A(\mycordic/present_ANGLE_table[6][5] ), .B(
        \mycordic/add_262/carry [5]), .Q(n303) );
  INV3 U353 ( .A(n227), .Q(\mycordic/r173/carry [5]) );
  NOR21 U354 ( .A(\mycordic/present_ANGLE_table[6][4] ), .B(
        \mycordic/r173/carry [4]), .Q(n227) );
  NOR21 U355 ( .A(n334), .B(n200), .Q(\mycordic/add_191/carry[15] ) );
  INV3 U356 ( .A(\mycordic/add_191/carry[14] ), .Q(n334) );
  NOR21 U357 ( .A(n345), .B(n201), .Q(\mycordic/add_202/carry [15]) );
  INV3 U358 ( .A(\mycordic/add_202/carry [14]), .Q(n345) );
  NOR21 U359 ( .A(n357), .B(n202), .Q(\mycordic/add_213/carry[15] ) );
  INV3 U360 ( .A(\mycordic/add_213/carry[14] ), .Q(n357) );
  NOR21 U361 ( .A(n370), .B(n203), .Q(\mycordic/add_224/carry[15] ) );
  INV3 U362 ( .A(\mycordic/add_224/carry[14] ), .Q(n370) );
  NOR21 U363 ( .A(n382), .B(n204), .Q(\mycordic/add_233/carry [15]) );
  INV3 U364 ( .A(\mycordic/add_233/carry [14]), .Q(n382) );
  NOR21 U365 ( .A(n217), .B(n198), .Q(\mycordic/add_262/carry [5]) );
  INV3 U366 ( .A(n232), .Q(\mycordic/add_191/carry[4] ) );
  NOR21 U367 ( .A(\mycordic/add_191/carry[3] ), .B(
        \mycordic/present_ANGLE_table[1][3] ), .Q(n232) );
  INV3 U368 ( .A(n241), .Q(\mycordic/sub_196/carry[6] ) );
  NOR21 U369 ( .A(\mycordic/sub_196/carry[5] ), .B(
        \mycordic/present_ANGLE_table[1][5] ), .Q(n241) );
  INV3 U370 ( .A(n242), .Q(\mycordic/sub_196/carry[7] ) );
  NOR21 U371 ( .A(\mycordic/sub_196/carry[6] ), .B(
        \mycordic/present_ANGLE_table[1][6] ), .Q(n242) );
  INV3 U372 ( .A(n243), .Q(\mycordic/sub_196/carry[8] ) );
  NOR21 U373 ( .A(\mycordic/sub_196/carry[7] ), .B(
        \mycordic/present_ANGLE_table[1][7] ), .Q(n243) );
  INV3 U374 ( .A(n244), .Q(\mycordic/sub_196/carry[9] ) );
  NOR21 U375 ( .A(\mycordic/sub_196/carry[8] ), .B(
        \mycordic/present_ANGLE_table[1][8] ), .Q(n244) );
  INV3 U376 ( .A(n245), .Q(\mycordic/sub_196/carry[10] ) );
  NOR21 U377 ( .A(\mycordic/sub_196/carry[9] ), .B(
        \mycordic/present_ANGLE_table[1][9] ), .Q(n245) );
  INV3 U378 ( .A(n235), .Q(\mycordic/sub_196/carry[11] ) );
  NOR21 U379 ( .A(\mycordic/sub_196/carry[10] ), .B(
        \mycordic/present_ANGLE_table[1][10] ), .Q(n235) );
  INV3 U380 ( .A(n236), .Q(\mycordic/sub_196/carry[12] ) );
  NOR21 U381 ( .A(\mycordic/sub_196/carry[11] ), .B(
        \mycordic/present_ANGLE_table[1][11] ), .Q(n236) );
  INV3 U382 ( .A(n237), .Q(\mycordic/sub_196/carry[13] ) );
  NOR21 U383 ( .A(\mycordic/sub_196/carry[12] ), .B(
        \mycordic/present_ANGLE_table[1][12] ), .Q(n237) );
  INV3 U384 ( .A(n238), .Q(\mycordic/sub_196/carry[14] ) );
  NOR21 U385 ( .A(\mycordic/sub_196/carry[13] ), .B(
        \mycordic/present_ANGLE_table[1][13] ), .Q(n238) );
  INV3 U386 ( .A(n255), .Q(\mycordic/sub_207/carry [5]) );
  NOR21 U387 ( .A(\mycordic/sub_207/carry [4]), .B(
        \mycordic/present_ANGLE_table[2][4] ), .Q(n255) );
  INV3 U388 ( .A(n256), .Q(\mycordic/sub_207/carry [6]) );
  NOR21 U389 ( .A(\mycordic/sub_207/carry [5]), .B(
        \mycordic/present_ANGLE_table[2][5] ), .Q(n256) );
  INV3 U390 ( .A(n257), .Q(\mycordic/sub_207/carry [7]) );
  NOR21 U391 ( .A(\mycordic/sub_207/carry [6]), .B(
        \mycordic/present_ANGLE_table[2][6] ), .Q(n257) );
  INV3 U392 ( .A(n258), .Q(\mycordic/sub_207/carry [8]) );
  NOR21 U393 ( .A(\mycordic/sub_207/carry [7]), .B(
        \mycordic/present_ANGLE_table[2][7] ), .Q(n258) );
  INV3 U394 ( .A(n259), .Q(\mycordic/sub_207/carry [9]) );
  NOR21 U395 ( .A(\mycordic/sub_207/carry [8]), .B(
        \mycordic/present_ANGLE_table[2][8] ), .Q(n259) );
  INV3 U396 ( .A(n260), .Q(\mycordic/sub_207/carry [10]) );
  NOR21 U397 ( .A(\mycordic/sub_207/carry [9]), .B(
        \mycordic/present_ANGLE_table[2][9] ), .Q(n260) );
  INV3 U398 ( .A(n250), .Q(\mycordic/sub_207/carry [11]) );
  NOR21 U399 ( .A(\mycordic/sub_207/carry [10]), .B(
        \mycordic/present_ANGLE_table[2][10] ), .Q(n250) );
  INV3 U400 ( .A(n251), .Q(\mycordic/sub_207/carry [12]) );
  NOR21 U401 ( .A(\mycordic/sub_207/carry [11]), .B(
        \mycordic/present_ANGLE_table[2][11] ), .Q(n251) );
  INV3 U402 ( .A(n252), .Q(\mycordic/sub_207/carry [13]) );
  NOR21 U403 ( .A(\mycordic/sub_207/carry [12]), .B(
        \mycordic/present_ANGLE_table[2][12] ), .Q(n252) );
  INV3 U404 ( .A(n253), .Q(\mycordic/sub_207/carry [14]) );
  NOR21 U405 ( .A(\mycordic/sub_207/carry [13]), .B(
        \mycordic/present_ANGLE_table[2][13] ), .Q(n253) );
  INV3 U406 ( .A(n269), .Q(\mycordic/sub_218/carry[4] ) );
  NOR21 U407 ( .A(\mycordic/sub_218/carry[3] ), .B(
        \mycordic/present_ANGLE_table[3][3] ), .Q(n269) );
  INV3 U408 ( .A(n270), .Q(\mycordic/sub_218/carry[5] ) );
  NOR21 U409 ( .A(\mycordic/sub_218/carry[4] ), .B(
        \mycordic/present_ANGLE_table[3][4] ), .Q(n270) );
  INV3 U410 ( .A(n271), .Q(\mycordic/sub_218/carry[6] ) );
  NOR21 U411 ( .A(\mycordic/sub_218/carry[5] ), .B(
        \mycordic/present_ANGLE_table[3][5] ), .Q(n271) );
  INV3 U412 ( .A(n272), .Q(\mycordic/sub_218/carry[7] ) );
  NOR21 U413 ( .A(\mycordic/sub_218/carry[6] ), .B(
        \mycordic/present_ANGLE_table[3][6] ), .Q(n272) );
  INV3 U414 ( .A(n273), .Q(\mycordic/sub_218/carry[8] ) );
  NOR21 U415 ( .A(\mycordic/sub_218/carry[7] ), .B(
        \mycordic/present_ANGLE_table[3][7] ), .Q(n273) );
  INV3 U416 ( .A(n274), .Q(\mycordic/sub_218/carry[9] ) );
  NOR21 U417 ( .A(\mycordic/sub_218/carry[8] ), .B(
        \mycordic/present_ANGLE_table[3][8] ), .Q(n274) );
  INV3 U418 ( .A(n275), .Q(\mycordic/sub_218/carry[10] ) );
  NOR21 U419 ( .A(\mycordic/sub_218/carry[9] ), .B(
        \mycordic/present_ANGLE_table[3][9] ), .Q(n275) );
  INV3 U420 ( .A(n264), .Q(\mycordic/sub_218/carry[11] ) );
  NOR21 U421 ( .A(\mycordic/sub_218/carry[10] ), .B(
        \mycordic/present_ANGLE_table[3][10] ), .Q(n264) );
  INV3 U422 ( .A(n265), .Q(\mycordic/sub_218/carry[12] ) );
  NOR21 U423 ( .A(\mycordic/sub_218/carry[11] ), .B(
        \mycordic/present_ANGLE_table[3][11] ), .Q(n265) );
  INV3 U424 ( .A(n266), .Q(\mycordic/sub_218/carry[13] ) );
  NOR21 U425 ( .A(\mycordic/sub_218/carry[12] ), .B(
        \mycordic/present_ANGLE_table[3][12] ), .Q(n266) );
  INV3 U426 ( .A(n267), .Q(\mycordic/sub_218/carry[14] ) );
  NOR21 U427 ( .A(\mycordic/sub_218/carry[13] ), .B(
        \mycordic/present_ANGLE_table[3][13] ), .Q(n267) );
  INV3 U428 ( .A(n282), .Q(\mycordic/sub_229/carry[3] ) );
  NOR21 U429 ( .A(\mycordic/sub_229/carry[2] ), .B(
        \mycordic/present_ANGLE_table[4][2] ), .Q(n282) );
  INV3 U430 ( .A(n283), .Q(\mycordic/sub_229/carry[4] ) );
  NOR21 U431 ( .A(\mycordic/sub_229/carry[3] ), .B(
        \mycordic/present_ANGLE_table[4][3] ), .Q(n283) );
  INV3 U432 ( .A(n284), .Q(\mycordic/sub_229/carry[5] ) );
  NOR21 U433 ( .A(\mycordic/sub_229/carry[4] ), .B(
        \mycordic/present_ANGLE_table[4][4] ), .Q(n284) );
  INV3 U434 ( .A(n285), .Q(\mycordic/sub_229/carry[6] ) );
  NOR21 U435 ( .A(\mycordic/sub_229/carry[5] ), .B(
        \mycordic/present_ANGLE_table[4][5] ), .Q(n285) );
  INV3 U436 ( .A(n286), .Q(\mycordic/sub_229/carry[7] ) );
  NOR21 U437 ( .A(\mycordic/sub_229/carry[6] ), .B(
        \mycordic/present_ANGLE_table[4][6] ), .Q(n286) );
  INV3 U438 ( .A(n287), .Q(\mycordic/sub_229/carry[8] ) );
  NOR21 U439 ( .A(\mycordic/sub_229/carry[7] ), .B(
        \mycordic/present_ANGLE_table[4][7] ), .Q(n287) );
  INV3 U440 ( .A(n288), .Q(\mycordic/sub_229/carry[9] ) );
  NOR21 U441 ( .A(\mycordic/sub_229/carry[8] ), .B(
        \mycordic/present_ANGLE_table[4][8] ), .Q(n288) );
  INV3 U442 ( .A(n289), .Q(\mycordic/sub_229/carry[10] ) );
  NOR21 U443 ( .A(\mycordic/sub_229/carry[9] ), .B(
        \mycordic/present_ANGLE_table[4][9] ), .Q(n289) );
  INV3 U444 ( .A(n277), .Q(\mycordic/sub_229/carry[11] ) );
  NOR21 U445 ( .A(\mycordic/sub_229/carry[10] ), .B(
        \mycordic/present_ANGLE_table[4][10] ), .Q(n277) );
  INV3 U446 ( .A(n278), .Q(\mycordic/sub_229/carry[12] ) );
  NOR21 U447 ( .A(\mycordic/sub_229/carry[11] ), .B(
        \mycordic/present_ANGLE_table[4][11] ), .Q(n278) );
  INV3 U448 ( .A(n279), .Q(\mycordic/sub_229/carry[13] ) );
  NOR21 U449 ( .A(\mycordic/sub_229/carry[12] ), .B(
        \mycordic/present_ANGLE_table[4][12] ), .Q(n279) );
  INV3 U450 ( .A(n280), .Q(\mycordic/sub_229/carry[14] ) );
  NOR21 U451 ( .A(\mycordic/sub_229/carry[13] ), .B(
        \mycordic/present_ANGLE_table[4][13] ), .Q(n280) );
  INV3 U452 ( .A(n296), .Q(\mycordic/sub_236/carry [4]) );
  NOR21 U453 ( .A(\mycordic/sub_236/carry [3]), .B(
        \mycordic/present_ANGLE_table[5][3] ), .Q(n296) );
  INV3 U454 ( .A(n297), .Q(\mycordic/sub_236/carry [5]) );
  NOR21 U455 ( .A(\mycordic/sub_236/carry [4]), .B(
        \mycordic/present_ANGLE_table[5][4] ), .Q(n297) );
  INV3 U456 ( .A(n298), .Q(\mycordic/sub_236/carry [6]) );
  NOR21 U457 ( .A(\mycordic/sub_236/carry [5]), .B(
        \mycordic/present_ANGLE_table[5][5] ), .Q(n298) );
  INV3 U458 ( .A(n299), .Q(\mycordic/sub_236/carry [7]) );
  NOR21 U459 ( .A(\mycordic/sub_236/carry [6]), .B(
        \mycordic/present_ANGLE_table[5][6] ), .Q(n299) );
  INV3 U460 ( .A(n300), .Q(\mycordic/sub_236/carry [8]) );
  NOR21 U461 ( .A(\mycordic/sub_236/carry [7]), .B(
        \mycordic/present_ANGLE_table[5][7] ), .Q(n300) );
  INV3 U462 ( .A(n301), .Q(\mycordic/sub_236/carry [9]) );
  NOR21 U463 ( .A(\mycordic/sub_236/carry [8]), .B(
        \mycordic/present_ANGLE_table[5][8] ), .Q(n301) );
  INV3 U464 ( .A(n302), .Q(\mycordic/sub_236/carry [10]) );
  NOR21 U465 ( .A(\mycordic/sub_236/carry [9]), .B(
        \mycordic/present_ANGLE_table[5][9] ), .Q(n302) );
  INV3 U466 ( .A(n290), .Q(\mycordic/sub_236/carry [11]) );
  NOR21 U467 ( .A(\mycordic/sub_236/carry [10]), .B(
        \mycordic/present_ANGLE_table[5][10] ), .Q(n290) );
  INV3 U468 ( .A(n291), .Q(\mycordic/sub_236/carry [12]) );
  NOR21 U469 ( .A(\mycordic/sub_236/carry [11]), .B(
        \mycordic/present_ANGLE_table[5][11] ), .Q(n291) );
  INV3 U470 ( .A(n292), .Q(\mycordic/sub_236/carry [13]) );
  NOR21 U471 ( .A(\mycordic/sub_236/carry [12]), .B(
        \mycordic/present_ANGLE_table[5][12] ), .Q(n292) );
  INV3 U472 ( .A(n293), .Q(\mycordic/sub_236/carry [14]) );
  NOR21 U473 ( .A(\mycordic/sub_236/carry [13]), .B(
        \mycordic/present_ANGLE_table[5][13] ), .Q(n293) );
  INV3 U474 ( .A(n231), .Q(\mycordic/add_191/carry[2] ) );
  NOR21 U475 ( .A(\mycordic/present_ANGLE_table[1][0] ), .B(
        \mycordic/present_ANGLE_table[1][1] ), .Q(n231) );
  INV3 U476 ( .A(n276), .Q(\mycordic/add_224/carry[2] ) );
  NOR21 U477 ( .A(\mycordic/present_ANGLE_table[4][0] ), .B(
        \mycordic/present_ANGLE_table[4][1] ), .Q(n276) );
  INV3 U478 ( .A(n228), .Q(\mycordic/r173/carry [6]) );
  NOR21 U479 ( .A(\mycordic/present_ANGLE_table[6][5] ), .B(
        \mycordic/r173/carry [5]), .Q(n228) );
  INV3 U480 ( .A(n304), .Q(\mycordic/add_262/carry [7]) );
  NOR21 U481 ( .A(\mycordic/present_ANGLE_table[6][6] ), .B(
        \mycordic/add_262/carry [6]), .Q(n304) );
  INV3 U482 ( .A(n229), .Q(\mycordic/r173/carry [8]) );
  NOR21 U483 ( .A(\mycordic/present_ANGLE_table[6][7] ), .B(
        \mycordic/r173/carry [7]), .Q(n229) );
  INV3 U484 ( .A(n305), .Q(\mycordic/add_262/carry [9]) );
  NOR21 U485 ( .A(\mycordic/present_ANGLE_table[6][8] ), .B(
        \mycordic/add_262/carry [8]), .Q(n305) );
  INV3 U486 ( .A(n240), .Q(\mycordic/sub_196/carry[3] ) );
  NOR21 U487 ( .A(\mycordic/sub_196/carry[2] ), .B(
        \mycordic/present_ANGLE_table[1][2] ), .Q(n240) );
  INV3 U488 ( .A(n233), .Q(\mycordic/add_191/carry[5] ) );
  NOR21 U489 ( .A(\mycordic/add_191/carry[4] ), .B(
        \mycordic/present_ANGLE_table[1][4] ), .Q(n233) );
  INV3 U490 ( .A(n248), .Q(\mycordic/add_202/carry [4]) );
  NOR21 U491 ( .A(\mycordic/add_202/carry [3]), .B(
        \mycordic/present_ANGLE_table[2][3] ), .Q(n248) );
  INV3 U492 ( .A(n263), .Q(\mycordic/add_213/carry[3] ) );
  NOR21 U493 ( .A(\mycordic/add_213/carry[2] ), .B(
        \mycordic/present_ANGLE_table[3][2] ), .Q(n263) );
  NOR21 U494 ( .A(n327), .B(n107), .Q(\mycordic/add_191/carry[8] ) );
  INV3 U495 ( .A(\mycordic/add_191/carry[7] ), .Q(n327) );
  NOR21 U496 ( .A(n328), .B(n108), .Q(\mycordic/add_191/carry[9] ) );
  INV3 U497 ( .A(\mycordic/add_191/carry[8] ), .Q(n328) );
  NOR21 U498 ( .A(n329), .B(n142), .Q(\mycordic/add_191/carry[10] ) );
  INV3 U499 ( .A(\mycordic/add_191/carry[9] ), .Q(n329) );
  NOR21 U500 ( .A(n330), .B(n143), .Q(\mycordic/add_191/carry[11] ) );
  INV3 U501 ( .A(\mycordic/add_191/carry[10] ), .Q(n330) );
  NOR21 U502 ( .A(n333), .B(n171), .Q(\mycordic/add_191/carry[14] ) );
  INV3 U503 ( .A(\mycordic/add_191/carry[13] ), .Q(n333) );
  NOR21 U504 ( .A(n337), .B(n74), .Q(\mycordic/add_202/carry [7]) );
  INV3 U505 ( .A(\mycordic/add_202/carry [6]), .Q(n337) );
  NOR21 U506 ( .A(n338), .B(n109), .Q(\mycordic/add_202/carry [8]) );
  INV3 U507 ( .A(\mycordic/add_202/carry [7]), .Q(n338) );
  NOR21 U508 ( .A(n341), .B(n144), .Q(\mycordic/add_202/carry [11]) );
  INV3 U509 ( .A(\mycordic/add_202/carry [10]), .Q(n341) );
  NOR21 U510 ( .A(n342), .B(n172), .Q(\mycordic/add_202/carry [12]) );
  INV3 U511 ( .A(\mycordic/add_202/carry [11]), .Q(n342) );
  NOR21 U512 ( .A(n343), .B(n173), .Q(\mycordic/add_202/carry [13]) );
  INV3 U513 ( .A(\mycordic/add_202/carry [12]), .Q(n343) );
  NOR21 U514 ( .A(n344), .B(n174), .Q(\mycordic/add_202/carry [14]) );
  INV3 U515 ( .A(\mycordic/add_202/carry [13]), .Q(n344) );
  NOR21 U516 ( .A(n348), .B(n75), .Q(\mycordic/add_213/carry[6] ) );
  INV3 U517 ( .A(\mycordic/add_213/carry[5] ), .Q(n348) );
  NOR21 U518 ( .A(n349), .B(n76), .Q(\mycordic/add_213/carry[7] ) );
  INV3 U519 ( .A(\mycordic/add_213/carry[6] ), .Q(n349) );
  NOR21 U520 ( .A(n352), .B(n145), .Q(\mycordic/add_213/carry[10] ) );
  INV3 U521 ( .A(\mycordic/add_213/carry[9] ), .Q(n352) );
  NOR21 U522 ( .A(n353), .B(n146), .Q(\mycordic/add_213/carry[11] ) );
  INV3 U523 ( .A(\mycordic/add_213/carry[10] ), .Q(n353) );
  NOR21 U524 ( .A(n354), .B(n175), .Q(\mycordic/add_213/carry[12] ) );
  INV3 U525 ( .A(\mycordic/add_213/carry[11] ), .Q(n354) );
  NOR21 U526 ( .A(n355), .B(n176), .Q(\mycordic/add_213/carry[13] ) );
  INV3 U527 ( .A(\mycordic/add_213/carry[12] ), .Q(n355) );
  NOR21 U528 ( .A(n356), .B(n177), .Q(\mycordic/add_213/carry[14] ) );
  INV3 U529 ( .A(\mycordic/add_213/carry[13] ), .Q(n356) );
  NOR21 U530 ( .A(n360), .B(n77), .Q(\mycordic/add_224/carry[5] ) );
  INV3 U531 ( .A(\mycordic/add_224/carry[4] ), .Q(n360) );
  NOR21 U532 ( .A(n361), .B(n78), .Q(\mycordic/add_224/carry[6] ) );
  INV3 U533 ( .A(\mycordic/add_224/carry[5] ), .Q(n361) );
  NOR21 U534 ( .A(n362), .B(n79), .Q(\mycordic/add_224/carry[7] ) );
  INV3 U535 ( .A(\mycordic/add_224/carry[6] ), .Q(n362) );
  NOR21 U536 ( .A(n365), .B(n147), .Q(\mycordic/add_224/carry[10] ) );
  INV3 U537 ( .A(\mycordic/add_224/carry[9] ), .Q(n365) );
  NOR21 U538 ( .A(n366), .B(n148), .Q(\mycordic/add_224/carry[11] ) );
  INV3 U539 ( .A(\mycordic/add_224/carry[10] ), .Q(n366) );
  NOR21 U540 ( .A(n367), .B(n178), .Q(\mycordic/add_224/carry[12] ) );
  INV3 U541 ( .A(\mycordic/add_224/carry[11] ), .Q(n367) );
  NOR21 U542 ( .A(n368), .B(n179), .Q(\mycordic/add_224/carry[13] ) );
  INV3 U543 ( .A(\mycordic/add_224/carry[12] ), .Q(n368) );
  NOR21 U544 ( .A(n369), .B(n180), .Q(\mycordic/add_224/carry[14] ) );
  INV3 U545 ( .A(\mycordic/add_224/carry[13] ), .Q(n369) );
  NOR21 U546 ( .A(n372), .B(n80), .Q(\mycordic/add_233/carry [5]) );
  INV3 U547 ( .A(\mycordic/add_233/carry [4]), .Q(n372) );
  NOR21 U548 ( .A(n373), .B(n81), .Q(\mycordic/add_233/carry [6]) );
  INV3 U549 ( .A(\mycordic/add_233/carry [5]), .Q(n373) );
  NOR21 U550 ( .A(n374), .B(n82), .Q(\mycordic/add_233/carry [7]) );
  INV3 U551 ( .A(\mycordic/add_233/carry [6]), .Q(n374) );
  NOR21 U552 ( .A(n377), .B(n149), .Q(\mycordic/add_233/carry [10]) );
  INV3 U553 ( .A(\mycordic/add_233/carry [9]), .Q(n377) );
  NOR21 U554 ( .A(n378), .B(n150), .Q(\mycordic/add_233/carry [11]) );
  INV3 U555 ( .A(\mycordic/add_233/carry [10]), .Q(n378) );
  NOR21 U556 ( .A(n379), .B(n181), .Q(\mycordic/add_233/carry [12]) );
  INV3 U557 ( .A(\mycordic/add_233/carry [11]), .Q(n379) );
  NOR21 U558 ( .A(n380), .B(n182), .Q(\mycordic/add_233/carry [13]) );
  INV3 U559 ( .A(\mycordic/add_233/carry [12]), .Q(n380) );
  NOR21 U560 ( .A(n381), .B(n183), .Q(\mycordic/add_233/carry [14]) );
  INV3 U561 ( .A(\mycordic/add_233/carry [13]), .Q(n381) );
  NOR21 U562 ( .A(n335), .B(n83), .Q(\mycordic/sub_196/carry[5] ) );
  INV3 U563 ( .A(\mycordic/sub_196/carry[4] ), .Q(n335) );
  NOR21 U564 ( .A(n326), .B(n84), .Q(\mycordic/add_191/carry[7] ) );
  INV3 U565 ( .A(\mycordic/add_191/carry[6] ), .Q(n326) );
  NOR21 U566 ( .A(n336), .B(n85), .Q(\mycordic/add_202/carry [6]) );
  INV3 U567 ( .A(\mycordic/add_202/carry [5]), .Q(n336) );
  NOR21 U568 ( .A(n347), .B(n86), .Q(\mycordic/add_213/carry[5] ) );
  INV3 U569 ( .A(\mycordic/add_213/carry[4] ), .Q(n347) );
  NOR21 U570 ( .A(n359), .B(n65), .Q(\mycordic/add_224/carry[4] ) );
  INV3 U571 ( .A(\mycordic/add_224/carry[3] ), .Q(n359) );
  NOR21 U572 ( .A(\mycordic/present_I_table[4][1] ), .B(n643), .Q(n688) );
  INV3 U573 ( .A(n689), .Q(n643) );
  INV3 U574 ( .A(n239), .Q(\mycordic/sub_196/carry[15] ) );
  NOR21 U575 ( .A(\mycordic/sub_196/carry[14] ), .B(
        \mycordic/present_ANGLE_table[1][14] ), .Q(n239) );
  INV3 U576 ( .A(n254), .Q(\mycordic/sub_207/carry [15]) );
  NOR21 U577 ( .A(\mycordic/sub_207/carry [14]), .B(
        \mycordic/present_ANGLE_table[2][14] ), .Q(n254) );
  INV3 U578 ( .A(n268), .Q(\mycordic/sub_218/carry[15] ) );
  NOR21 U579 ( .A(\mycordic/sub_218/carry[14] ), .B(
        \mycordic/present_ANGLE_table[3][14] ), .Q(n268) );
  INV3 U580 ( .A(n281), .Q(\mycordic/sub_229/carry[15] ) );
  NOR21 U581 ( .A(\mycordic/sub_229/carry[14] ), .B(
        \mycordic/present_ANGLE_table[4][14] ), .Q(n281) );
  INV3 U582 ( .A(n294), .Q(\mycordic/sub_236/carry [15]) );
  NOR21 U583 ( .A(\mycordic/sub_236/carry [14]), .B(
        \mycordic/present_ANGLE_table[5][14] ), .Q(n294) );
  NOR21 U584 ( .A(n231), .B(n66), .Q(\mycordic/add_191/carry[3] ) );
  NOR21 U585 ( .A(n240), .B(n87), .Q(\mycordic/sub_196/carry[4] ) );
  NOR21 U586 ( .A(n233), .B(n88), .Q(\mycordic/add_191/carry[6] ) );
  NOR21 U587 ( .A(n69), .B(n228), .Q(\mycordic/r173/carry [7]) );
  NOR21 U588 ( .A(n168), .B(n325), .Q(\mycordic/r173/carry [15]) );
  XNR21 U589 ( .A(\mycordic/r173/carry [13]), .B(
        \mycordic/present_ANGLE_table[6][13] ), .Q(n207) );
  XNR21 U590 ( .A(\mycordic/r173/carry [14]), .B(
        \mycordic/present_ANGLE_table[6][14] ), .Q(n208) );
  INV3 U591 ( .A(n680), .Q(n637) );
  INV3 U592 ( .A(n684), .Q(n633) );
  INV3 U593 ( .A(n676), .Q(n640) );
  NOR21 U594 ( .A(\mycordic/present_Q_table[5][1] ), .B(n677), .Q(n676) );
  INV3 U595 ( .A(n686), .Q(n630) );
  AOI211 U596 ( .A(n184), .B(n687), .C(\mycordic/present_I_table[5][7] ), .Q(
        n686) );
  AOI211 U597 ( .A(n685), .B(\mycordic/present_Q_table[5][5] ), .C(n633), .Q(
        n687) );
  INV3 U598 ( .A(\mycordic/n507 ), .Q(n463) );
  AOI221 U599 ( .A(\mycordic/N344 ), .B(n400), .C(\mycordic/N376 ), .D(n624), 
        .Q(\mycordic/n507 ) );
  XNR21 U600 ( .A(\mycordic/present_ANGLE_table[1][12] ), .B(
        \mycordic/sub_196/carry[12] ), .Q(\mycordic/N376 ) );
  XOR21 U601 ( .A(\mycordic/present_ANGLE_table[1][12] ), .B(
        \mycordic/add_191/carry[12] ), .Q(\mycordic/N344 ) );
  INV3 U602 ( .A(\mycordic/n506 ), .Q(n464) );
  AOI221 U603 ( .A(\mycordic/N345 ), .B(\mycordic/n336 ), .C(\mycordic/N377 ), 
        .D(n624), .Q(\mycordic/n506 ) );
  XNR21 U604 ( .A(\mycordic/present_ANGLE_table[1][13] ), .B(
        \mycordic/sub_196/carry[13] ), .Q(\mycordic/N377 ) );
  XOR21 U605 ( .A(\mycordic/present_ANGLE_table[1][13] ), .B(
        \mycordic/add_191/carry[13] ), .Q(\mycordic/N345 ) );
  INV3 U606 ( .A(\mycordic/n505 ), .Q(n465) );
  AOI221 U607 ( .A(\mycordic/N346 ), .B(n400), .C(\mycordic/N378 ), .D(n624), 
        .Q(\mycordic/n505 ) );
  XNR21 U608 ( .A(\mycordic/present_ANGLE_table[1][14] ), .B(
        \mycordic/sub_196/carry[14] ), .Q(\mycordic/N378 ) );
  XOR21 U609 ( .A(\mycordic/present_ANGLE_table[1][14] ), .B(
        \mycordic/add_191/carry[14] ), .Q(\mycordic/N346 ) );
  INV3 U610 ( .A(\mycordic/n490 ), .Q(n557) );
  AOI221 U611 ( .A(\mycordic/N409 ), .B(n406), .C(\mycordic/N441 ), .D(n628), 
        .Q(\mycordic/n490 ) );
  XNR21 U612 ( .A(\mycordic/present_ANGLE_table[2][13] ), .B(
        \mycordic/sub_207/carry [13]), .Q(\mycordic/N441 ) );
  XOR21 U613 ( .A(\mycordic/present_ANGLE_table[2][13] ), .B(
        \mycordic/add_202/carry [13]), .Q(\mycordic/N409 ) );
  INV3 U614 ( .A(\mycordic/n489 ), .Q(n558) );
  AOI221 U615 ( .A(\mycordic/N410 ), .B(\mycordic/n332 ), .C(\mycordic/N442 ), 
        .D(n628), .Q(\mycordic/n489 ) );
  XNR21 U616 ( .A(\mycordic/present_ANGLE_table[2][14] ), .B(
        \mycordic/sub_207/carry [14]), .Q(\mycordic/N442 ) );
  XOR21 U617 ( .A(\mycordic/present_ANGLE_table[2][14] ), .B(
        \mycordic/add_202/carry [14]), .Q(\mycordic/N410 ) );
  INV3 U618 ( .A(\mycordic/n475 ), .Q(n531) );
  AOI221 U619 ( .A(\mycordic/N468 ), .B(n405), .C(\mycordic/N496 ), .D(n627), 
        .Q(\mycordic/n475 ) );
  XNR21 U620 ( .A(\mycordic/present_ANGLE_table[3][12] ), .B(
        \mycordic/sub_218/carry[12] ), .Q(\mycordic/N496 ) );
  XOR21 U621 ( .A(\mycordic/present_ANGLE_table[3][12] ), .B(
        \mycordic/add_213/carry[12] ), .Q(\mycordic/N468 ) );
  INV3 U622 ( .A(\mycordic/n474 ), .Q(n532) );
  AOI221 U623 ( .A(\mycordic/N469 ), .B(\mycordic/n363 ), .C(\mycordic/N497 ), 
        .D(n627), .Q(\mycordic/n474 ) );
  XNR21 U624 ( .A(\mycordic/present_ANGLE_table[3][13] ), .B(
        \mycordic/sub_218/carry[13] ), .Q(\mycordic/N497 ) );
  XOR21 U625 ( .A(\mycordic/present_ANGLE_table[3][13] ), .B(
        \mycordic/add_213/carry[13] ), .Q(\mycordic/N469 ) );
  INV3 U626 ( .A(\mycordic/n473 ), .Q(n533) );
  AOI221 U627 ( .A(\mycordic/N470 ), .B(n405), .C(\mycordic/N498 ), .D(n627), 
        .Q(\mycordic/n473 ) );
  XNR21 U628 ( .A(\mycordic/present_ANGLE_table[3][14] ), .B(
        \mycordic/sub_218/carry[14] ), .Q(\mycordic/N498 ) );
  XOR21 U629 ( .A(\mycordic/present_ANGLE_table[3][14] ), .B(
        \mycordic/add_213/carry[14] ), .Q(\mycordic/N470 ) );
  INV3 U630 ( .A(\mycordic/n459 ), .Q(n507) );
  AOI221 U631 ( .A(\mycordic/N513 ), .B(\mycordic/n456 ), .C(\mycordic/N530 ), 
        .D(n626), .Q(\mycordic/n459 ) );
  XNR21 U632 ( .A(\mycordic/present_ANGLE_table[4][12] ), .B(
        \mycordic/sub_229/carry[12] ), .Q(\mycordic/N530 ) );
  XOR21 U633 ( .A(\mycordic/present_ANGLE_table[4][12] ), .B(
        \mycordic/add_224/carry[12] ), .Q(\mycordic/N513 ) );
  INV3 U634 ( .A(\mycordic/n458 ), .Q(n508) );
  AOI221 U635 ( .A(\mycordic/N514 ), .B(n404), .C(\mycordic/N531 ), .D(n626), 
        .Q(\mycordic/n458 ) );
  XNR21 U636 ( .A(\mycordic/present_ANGLE_table[4][13] ), .B(
        \mycordic/sub_229/carry[13] ), .Q(\mycordic/N531 ) );
  XOR21 U637 ( .A(\mycordic/present_ANGLE_table[4][13] ), .B(
        \mycordic/add_224/carry[13] ), .Q(\mycordic/N514 ) );
  INV3 U638 ( .A(\mycordic/n457 ), .Q(n509) );
  AOI221 U639 ( .A(\mycordic/N515 ), .B(n404), .C(\mycordic/N532 ), .D(n626), 
        .Q(\mycordic/n457 ) );
  XNR21 U640 ( .A(\mycordic/present_ANGLE_table[4][14] ), .B(
        \mycordic/sub_229/carry[14] ), .Q(\mycordic/N532 ) );
  XOR21 U641 ( .A(\mycordic/present_ANGLE_table[4][14] ), .B(
        \mycordic/add_224/carry[14] ), .Q(\mycordic/N515 ) );
  INV3 U642 ( .A(\mycordic/n440 ), .Q(n448) );
  AOI221 U643 ( .A(\mycordic/N547 ), .B(n399), .C(\mycordic/N563 ), .D(n623), 
        .Q(\mycordic/n440 ) );
  XNR21 U644 ( .A(\mycordic/present_ANGLE_table[5][13] ), .B(
        \mycordic/sub_236/carry [13]), .Q(\mycordic/N563 ) );
  XOR21 U645 ( .A(\mycordic/present_ANGLE_table[5][13] ), .B(
        \mycordic/add_233/carry [13]), .Q(\mycordic/N547 ) );
  INV3 U646 ( .A(\mycordic/n439 ), .Q(n449) );
  AOI221 U647 ( .A(\mycordic/N548 ), .B(n398), .C(\mycordic/N564 ), .D(n623), 
        .Q(\mycordic/n439 ) );
  XNR21 U648 ( .A(\mycordic/present_ANGLE_table[5][14] ), .B(
        \mycordic/sub_236/carry [14]), .Q(\mycordic/N564 ) );
  XOR21 U649 ( .A(\mycordic/present_ANGLE_table[5][14] ), .B(
        \mycordic/add_233/carry [14]), .Q(\mycordic/N548 ) );
  INV3 U650 ( .A(\mycordic/n504 ), .Q(n466) );
  AOI221 U651 ( .A(\mycordic/N347 ), .B(\mycordic/n336 ), .C(\mycordic/N379 ), 
        .D(n624), .Q(\mycordic/n504 ) );
  XNR21 U652 ( .A(\mycordic/sub_196/carry[15] ), .B(
        \mycordic/present_ANGLE_table[1][15] ), .Q(\mycordic/N379 ) );
  XOR21 U653 ( .A(\mycordic/add_191/carry[15] ), .B(
        \mycordic/present_ANGLE_table[1][15] ), .Q(\mycordic/N347 ) );
  INV3 U654 ( .A(\mycordic/n488 ), .Q(n559) );
  AOI221 U655 ( .A(\mycordic/N411 ), .B(n406), .C(\mycordic/N443 ), .D(n628), 
        .Q(\mycordic/n488 ) );
  XNR21 U656 ( .A(\mycordic/sub_207/carry [15]), .B(
        \mycordic/present_ANGLE_table[2][15] ), .Q(\mycordic/N443 ) );
  XOR21 U657 ( .A(\mycordic/add_202/carry [15]), .B(
        \mycordic/present_ANGLE_table[2][15] ), .Q(\mycordic/N411 ) );
  INV3 U658 ( .A(\mycordic/n472 ), .Q(n534) );
  AOI221 U659 ( .A(\mycordic/N471 ), .B(\mycordic/n363 ), .C(\mycordic/N499 ), 
        .D(n627), .Q(\mycordic/n472 ) );
  XNR21 U660 ( .A(\mycordic/sub_218/carry[15] ), .B(
        \mycordic/present_ANGLE_table[3][15] ), .Q(\mycordic/N499 ) );
  XOR21 U661 ( .A(\mycordic/add_213/carry[15] ), .B(
        \mycordic/present_ANGLE_table[3][15] ), .Q(\mycordic/N471 ) );
  INV3 U662 ( .A(\mycordic/n455 ), .Q(n510) );
  AOI221 U663 ( .A(\mycordic/N516 ), .B(\mycordic/n456 ), .C(\mycordic/N533 ), 
        .D(n626), .Q(\mycordic/n455 ) );
  XNR21 U664 ( .A(\mycordic/sub_229/carry[15] ), .B(
        \mycordic/present_ANGLE_table[4][15] ), .Q(\mycordic/N533 ) );
  XOR21 U665 ( .A(\mycordic/add_224/carry[15] ), .B(
        \mycordic/present_ANGLE_table[4][15] ), .Q(\mycordic/N516 ) );
  INV3 U666 ( .A(\mycordic/n437 ), .Q(n450) );
  AOI221 U667 ( .A(\mycordic/N549 ), .B(n399), .C(\mycordic/N565 ), .D(n623), 
        .Q(\mycordic/n437 ) );
  XNR21 U668 ( .A(\mycordic/sub_236/carry [15]), .B(
        \mycordic/present_ANGLE_table[5][15] ), .Q(\mycordic/N565 ) );
  XOR21 U669 ( .A(\mycordic/add_233/carry [15]), .B(
        \mycordic/present_ANGLE_table[5][15] ), .Q(\mycordic/N549 ) );
  INV3 U670 ( .A(\mycordic/n549 ), .Q(n543) );
  AOI221 U671 ( .A(\mycordic/N395 ), .B(n406), .C(\mycordic/N427 ), .D(n628), 
        .Q(\mycordic/n549 ) );
  INV3 U672 ( .A(\mycordic/n362 ), .Q(n538) );
  AOI221 U673 ( .A(\mycordic/N447 ), .B(\mycordic/n363 ), .C(\mycordic/N475 ), 
        .D(n627), .Q(\mycordic/n362 ) );
  INV3 U674 ( .A(\mycordic/n335 ), .Q(n482) );
  AOI221 U675 ( .A(\mycordic/N331 ), .B(\mycordic/n336 ), .C(\mycordic/N363 ), 
        .D(n624), .Q(\mycordic/n335 ) );
  INV3 U676 ( .A(\mycordic/n367 ), .Q(n567) );
  AOI221 U677 ( .A(\mycordic/N387 ), .B(n406), .C(\mycordic/N419 ), .D(n628), 
        .Q(\mycordic/n367 ) );
  INV3 U678 ( .A(\mycordic/n375 ), .Q(n474) );
  AOI221 U679 ( .A(\mycordic/N323 ), .B(\mycordic/n336 ), .C(\mycordic/N355 ), 
        .D(n624), .Q(\mycordic/n375 ) );
  INV3 U680 ( .A(\mycordic/n538 ), .Q(n494) );
  AOI221 U681 ( .A(\mycordic/N500 ), .B(n404), .C(\mycordic/N517 ), .D(n626), 
        .Q(\mycordic/n538 ) );
  INV3 U682 ( .A(\mycordic/n540 ), .Q(n518) );
  AOI221 U683 ( .A(\mycordic/N455 ), .B(\mycordic/n363 ), .C(\mycordic/N483 ), 
        .D(n627), .Q(\mycordic/n540 ) );
  INV3 U684 ( .A(\mycordic/n401 ), .Q(n590) );
  NAND22 U685 ( .A(\mycordic/next_ANGLE_table[6][13] ), .B(n410), .Q(
        \mycordic/n401 ) );
  INV3 U686 ( .A(\mycordic/n400 ), .Q(n589) );
  NAND22 U687 ( .A(\mycordic/next_ANGLE_table[6][14] ), .B(n410), .Q(
        \mycordic/n400 ) );
  INV3 U688 ( .A(\mycordic/n399 ), .Q(n588) );
  NAND22 U689 ( .A(\mycordic/next_ANGLE_table[6][15] ), .B(n410), .Q(
        \mycordic/n399 ) );
  INV3 U690 ( .A(n671), .Q(n635) );
  AOI211 U691 ( .A(n669), .B(\mycordic/present_Q_table[5][3] ), .C(n636), .Q(
        n671) );
  OAI2111 U692 ( .A(\mycordic/present_Q_table[5][1] ), .B(
        \mycordic/present_I_table[5][5] ), .C(\mycordic/present_Q_table[5][0] ), .D(\mycordic/present_I_table[5][4] ), .Q(n665) );
  INV3 U693 ( .A(n675), .Q(n631) );
  AOI211 U694 ( .A(n673), .B(\mycordic/present_Q_table[5][5] ), .C(n632), .Q(
        n675) );
  INV3 U695 ( .A(n666), .Q(n639) );
  XOR21 U696 ( .A(\mycordic/add_262/carry [11]), .B(
        \mycordic/present_ANGLE_table[6][11] ), .Q(\mycordic/N626 ) );
  XOR21 U697 ( .A(\mycordic/add_262/carry [13]), .B(
        \mycordic/present_ANGLE_table[6][13] ), .Q(\mycordic/N628 ) );
  XOR21 U698 ( .A(\mycordic/add_262/carry [10]), .B(
        \mycordic/present_ANGLE_table[6][10] ), .Q(\mycordic/N625 ) );
  XOR21 U699 ( .A(\mycordic/add_262/carry [12]), .B(
        \mycordic/present_ANGLE_table[6][12] ), .Q(\mycordic/N627 ) );
  INV3 U700 ( .A(n668), .Q(n636) );
  INV3 U701 ( .A(n672), .Q(n632) );
  XNR21 U702 ( .A(\mycordic/r173/carry [9]), .B(
        \mycordic/present_ANGLE_table[6][9] ), .Q(n209) );
  XNR21 U703 ( .A(\mycordic/r173/carry [10]), .B(
        \mycordic/present_ANGLE_table[6][10] ), .Q(n210) );
  XNR21 U704 ( .A(\mycordic/r173/carry [11]), .B(
        \mycordic/present_ANGLE_table[6][11] ), .Q(n211) );
  XNR21 U705 ( .A(\mycordic/r173/carry [12]), .B(
        \mycordic/present_ANGLE_table[6][12] ), .Q(n212) );
  INV3 U706 ( .A(\mycordic/n344 ), .Q(n493) );
  AOI221 U707 ( .A(n625), .B(\mycordic/N259 ), .C(n402), .D(\mycordic/N267 ), 
        .Q(\mycordic/n344 ) );
  INV3 U708 ( .A(\mycordic/n383 ), .Q(n488) );
  AOI221 U709 ( .A(n625), .B(\mycordic/N291 ), .C(n401), .D(\mycordic/N259 ), 
        .Q(\mycordic/n383 ) );
  INV3 U710 ( .A(\mycordic/n511 ), .Q(n459) );
  AOI221 U711 ( .A(\mycordic/N340 ), .B(n400), .C(\mycordic/N372 ), .D(n624), 
        .Q(\mycordic/n511 ) );
  XNR21 U712 ( .A(\mycordic/present_ANGLE_table[1][8] ), .B(
        \mycordic/sub_196/carry[8] ), .Q(\mycordic/N372 ) );
  XOR21 U713 ( .A(\mycordic/present_ANGLE_table[1][8] ), .B(
        \mycordic/add_191/carry[8] ), .Q(\mycordic/N340 ) );
  INV3 U714 ( .A(\mycordic/n510 ), .Q(n460) );
  AOI221 U715 ( .A(\mycordic/N341 ), .B(\mycordic/n336 ), .C(\mycordic/N373 ), 
        .D(n624), .Q(\mycordic/n510 ) );
  XNR21 U716 ( .A(\mycordic/present_ANGLE_table[1][9] ), .B(
        \mycordic/sub_196/carry[9] ), .Q(\mycordic/N373 ) );
  XOR21 U717 ( .A(\mycordic/present_ANGLE_table[1][9] ), .B(
        \mycordic/add_191/carry[9] ), .Q(\mycordic/N341 ) );
  INV3 U718 ( .A(\mycordic/n509 ), .Q(n461) );
  AOI221 U719 ( .A(\mycordic/N342 ), .B(n400), .C(\mycordic/N374 ), .D(n624), 
        .Q(\mycordic/n509 ) );
  XNR21 U720 ( .A(\mycordic/present_ANGLE_table[1][10] ), .B(
        \mycordic/sub_196/carry[10] ), .Q(\mycordic/N374 ) );
  XOR21 U721 ( .A(\mycordic/present_ANGLE_table[1][10] ), .B(
        \mycordic/add_191/carry[10] ), .Q(\mycordic/N342 ) );
  INV3 U722 ( .A(\mycordic/n508 ), .Q(n462) );
  AOI221 U723 ( .A(\mycordic/N343 ), .B(\mycordic/n336 ), .C(\mycordic/N375 ), 
        .D(n624), .Q(\mycordic/n508 ) );
  XNR21 U724 ( .A(\mycordic/present_ANGLE_table[1][11] ), .B(
        \mycordic/sub_196/carry[11] ), .Q(\mycordic/N375 ) );
  XOR21 U725 ( .A(\mycordic/present_ANGLE_table[1][11] ), .B(
        \mycordic/add_191/carry[11] ), .Q(\mycordic/N343 ) );
  INV3 U726 ( .A(\mycordic/n494 ), .Q(n553) );
  AOI221 U727 ( .A(\mycordic/N405 ), .B(n406), .C(\mycordic/N437 ), .D(n628), 
        .Q(\mycordic/n494 ) );
  XNR21 U728 ( .A(\mycordic/present_ANGLE_table[2][9] ), .B(
        \mycordic/sub_207/carry [9]), .Q(\mycordic/N437 ) );
  XOR21 U729 ( .A(\mycordic/present_ANGLE_table[2][9] ), .B(
        \mycordic/add_202/carry [9]), .Q(\mycordic/N405 ) );
  INV3 U730 ( .A(\mycordic/n493 ), .Q(n554) );
  AOI221 U731 ( .A(\mycordic/N406 ), .B(\mycordic/n332 ), .C(\mycordic/N438 ), 
        .D(n628), .Q(\mycordic/n493 ) );
  XNR21 U732 ( .A(\mycordic/present_ANGLE_table[2][10] ), .B(
        \mycordic/sub_207/carry [10]), .Q(\mycordic/N438 ) );
  XOR21 U733 ( .A(\mycordic/present_ANGLE_table[2][10] ), .B(
        \mycordic/add_202/carry [10]), .Q(\mycordic/N406 ) );
  INV3 U734 ( .A(\mycordic/n492 ), .Q(n555) );
  AOI221 U735 ( .A(\mycordic/N407 ), .B(n406), .C(\mycordic/N439 ), .D(n628), 
        .Q(\mycordic/n492 ) );
  XNR21 U736 ( .A(\mycordic/present_ANGLE_table[2][11] ), .B(
        \mycordic/sub_207/carry [11]), .Q(\mycordic/N439 ) );
  XOR21 U737 ( .A(\mycordic/present_ANGLE_table[2][11] ), .B(
        \mycordic/add_202/carry [11]), .Q(\mycordic/N407 ) );
  INV3 U738 ( .A(\mycordic/n491 ), .Q(n556) );
  AOI221 U739 ( .A(\mycordic/N408 ), .B(\mycordic/n332 ), .C(\mycordic/N440 ), 
        .D(n628), .Q(\mycordic/n491 ) );
  XNR21 U740 ( .A(\mycordic/present_ANGLE_table[2][12] ), .B(
        \mycordic/sub_207/carry [12]), .Q(\mycordic/N440 ) );
  XOR21 U741 ( .A(\mycordic/present_ANGLE_table[2][12] ), .B(
        \mycordic/add_202/carry [12]), .Q(\mycordic/N408 ) );
  INV3 U742 ( .A(\mycordic/n479 ), .Q(n527) );
  AOI221 U743 ( .A(\mycordic/N464 ), .B(n405), .C(\mycordic/N492 ), .D(n627), 
        .Q(\mycordic/n479 ) );
  XNR21 U744 ( .A(\mycordic/present_ANGLE_table[3][8] ), .B(
        \mycordic/sub_218/carry[8] ), .Q(\mycordic/N492 ) );
  XOR21 U745 ( .A(\mycordic/present_ANGLE_table[3][8] ), .B(
        \mycordic/add_213/carry[8] ), .Q(\mycordic/N464 ) );
  INV3 U746 ( .A(\mycordic/n478 ), .Q(n528) );
  AOI221 U747 ( .A(\mycordic/N465 ), .B(\mycordic/n363 ), .C(\mycordic/N493 ), 
        .D(n627), .Q(\mycordic/n478 ) );
  XNR21 U748 ( .A(\mycordic/present_ANGLE_table[3][9] ), .B(
        \mycordic/sub_218/carry[9] ), .Q(\mycordic/N493 ) );
  XOR21 U749 ( .A(\mycordic/present_ANGLE_table[3][9] ), .B(
        \mycordic/add_213/carry[9] ), .Q(\mycordic/N465 ) );
  INV3 U750 ( .A(\mycordic/n477 ), .Q(n529) );
  AOI221 U751 ( .A(\mycordic/N466 ), .B(n405), .C(\mycordic/N494 ), .D(n627), 
        .Q(\mycordic/n477 ) );
  XNR21 U752 ( .A(\mycordic/present_ANGLE_table[3][10] ), .B(
        \mycordic/sub_218/carry[10] ), .Q(\mycordic/N494 ) );
  XOR21 U753 ( .A(\mycordic/present_ANGLE_table[3][10] ), .B(
        \mycordic/add_213/carry[10] ), .Q(\mycordic/N466 ) );
  INV3 U754 ( .A(\mycordic/n476 ), .Q(n530) );
  AOI221 U755 ( .A(\mycordic/N467 ), .B(\mycordic/n363 ), .C(\mycordic/N495 ), 
        .D(n627), .Q(\mycordic/n476 ) );
  XNR21 U756 ( .A(\mycordic/present_ANGLE_table[3][11] ), .B(
        \mycordic/sub_218/carry[11] ), .Q(\mycordic/N495 ) );
  XOR21 U757 ( .A(\mycordic/present_ANGLE_table[3][11] ), .B(
        \mycordic/add_213/carry[11] ), .Q(\mycordic/N467 ) );
  INV3 U758 ( .A(\mycordic/n463 ), .Q(n503) );
  AOI221 U759 ( .A(\mycordic/N509 ), .B(n404), .C(\mycordic/N526 ), .D(n626), 
        .Q(\mycordic/n463 ) );
  XNR21 U760 ( .A(\mycordic/present_ANGLE_table[4][8] ), .B(
        \mycordic/sub_229/carry[8] ), .Q(\mycordic/N526 ) );
  XOR21 U761 ( .A(\mycordic/present_ANGLE_table[4][8] ), .B(
        \mycordic/add_224/carry[8] ), .Q(\mycordic/N509 ) );
  INV3 U762 ( .A(\mycordic/n462 ), .Q(n504) );
  AOI221 U763 ( .A(\mycordic/N510 ), .B(\mycordic/n456 ), .C(\mycordic/N527 ), 
        .D(n626), .Q(\mycordic/n462 ) );
  XNR21 U764 ( .A(\mycordic/present_ANGLE_table[4][9] ), .B(
        \mycordic/sub_229/carry[9] ), .Q(\mycordic/N527 ) );
  XOR21 U765 ( .A(\mycordic/present_ANGLE_table[4][9] ), .B(
        \mycordic/add_224/carry[9] ), .Q(\mycordic/N510 ) );
  INV3 U766 ( .A(\mycordic/n461 ), .Q(n505) );
  AOI221 U767 ( .A(\mycordic/N511 ), .B(n404), .C(\mycordic/N528 ), .D(n626), 
        .Q(\mycordic/n461 ) );
  XNR21 U768 ( .A(\mycordic/present_ANGLE_table[4][10] ), .B(
        \mycordic/sub_229/carry[10] ), .Q(\mycordic/N528 ) );
  XOR21 U769 ( .A(\mycordic/present_ANGLE_table[4][10] ), .B(
        \mycordic/add_224/carry[10] ), .Q(\mycordic/N511 ) );
  INV3 U770 ( .A(\mycordic/n460 ), .Q(n506) );
  AOI221 U771 ( .A(\mycordic/N512 ), .B(n404), .C(\mycordic/N529 ), .D(n626), 
        .Q(\mycordic/n460 ) );
  XNR21 U772 ( .A(\mycordic/present_ANGLE_table[4][11] ), .B(
        \mycordic/sub_229/carry[11] ), .Q(\mycordic/N529 ) );
  XOR21 U773 ( .A(\mycordic/present_ANGLE_table[4][11] ), .B(
        \mycordic/add_224/carry[11] ), .Q(\mycordic/N512 ) );
  INV3 U774 ( .A(\mycordic/n444 ), .Q(n444) );
  AOI221 U775 ( .A(\mycordic/N543 ), .B(n399), .C(\mycordic/N559 ), .D(n623), 
        .Q(\mycordic/n444 ) );
  XNR21 U776 ( .A(\mycordic/present_ANGLE_table[5][9] ), .B(
        \mycordic/sub_236/carry [9]), .Q(\mycordic/N559 ) );
  XOR21 U777 ( .A(\mycordic/present_ANGLE_table[5][9] ), .B(
        \mycordic/add_233/carry [9]), .Q(\mycordic/N543 ) );
  INV3 U778 ( .A(\mycordic/n443 ), .Q(n445) );
  AOI221 U779 ( .A(\mycordic/N544 ), .B(n398), .C(\mycordic/N560 ), .D(n623), 
        .Q(\mycordic/n443 ) );
  XNR21 U780 ( .A(\mycordic/present_ANGLE_table[5][10] ), .B(
        \mycordic/sub_236/carry [10]), .Q(\mycordic/N560 ) );
  XOR21 U781 ( .A(\mycordic/present_ANGLE_table[5][10] ), .B(
        \mycordic/add_233/carry [10]), .Q(\mycordic/N544 ) );
  INV3 U782 ( .A(\mycordic/n442 ), .Q(n446) );
  AOI221 U783 ( .A(\mycordic/N545 ), .B(n399), .C(\mycordic/N561 ), .D(n623), 
        .Q(\mycordic/n442 ) );
  XNR21 U784 ( .A(\mycordic/present_ANGLE_table[5][11] ), .B(
        \mycordic/sub_236/carry [11]), .Q(\mycordic/N561 ) );
  XOR21 U785 ( .A(\mycordic/present_ANGLE_table[5][11] ), .B(
        \mycordic/add_233/carry [11]), .Q(\mycordic/N545 ) );
  INV3 U786 ( .A(\mycordic/n441 ), .Q(n447) );
  AOI221 U787 ( .A(\mycordic/N546 ), .B(n398), .C(\mycordic/N562 ), .D(n623), 
        .Q(\mycordic/n441 ) );
  XNR21 U788 ( .A(\mycordic/present_ANGLE_table[5][12] ), .B(
        \mycordic/sub_236/carry [12]), .Q(\mycordic/N562 ) );
  XOR21 U789 ( .A(\mycordic/present_ANGLE_table[5][12] ), .B(
        \mycordic/add_233/carry [12]), .Q(\mycordic/N546 ) );
  INV3 U790 ( .A(\mycordic/n405 ), .Q(n594) );
  NAND22 U791 ( .A(\mycordic/next_ANGLE_table[6][9] ), .B(n409), .Q(
        \mycordic/n405 ) );
  INV3 U792 ( .A(\mycordic/n404 ), .Q(n593) );
  NAND22 U793 ( .A(\mycordic/next_ANGLE_table[6][10] ), .B(n409), .Q(
        \mycordic/n404 ) );
  INV3 U794 ( .A(\mycordic/n403 ), .Q(n592) );
  NAND22 U795 ( .A(\mycordic/next_ANGLE_table[6][11] ), .B(n410), .Q(
        \mycordic/n403 ) );
  INV3 U796 ( .A(\mycordic/n402 ), .Q(n591) );
  NAND22 U797 ( .A(\mycordic/next_ANGLE_table[6][12] ), .B(n410), .Q(
        \mycordic/n402 ) );
  MUX22 U798 ( .A(\mycordic/present_C_table[7][1] ), .B(n392), .S(n394), .Q(
        n213) );
  BUF2 U799 ( .A(\mycordic/n108 ), .Q(n392) );
  XOR21 U800 ( .A(\mycordic/add_262/carry [7]), .B(
        \mycordic/present_ANGLE_table[6][7] ), .Q(\mycordic/N622 ) );
  XOR21 U801 ( .A(\mycordic/add_262/carry [9]), .B(
        \mycordic/present_ANGLE_table[6][9] ), .Q(\mycordic/N624 ) );
  INV3 U802 ( .A(\mycordic/n407 ), .Q(n596) );
  NAND22 U803 ( .A(\mycordic/next_ANGLE_table[6][7] ), .B(n409), .Q(
        \mycordic/n407 ) );
  XNR21 U804 ( .A(\mycordic/add_262/carry [5]), .B(
        \mycordic/present_ANGLE_table[6][5] ), .Q(\mycordic/N620 ) );
  XNR21 U805 ( .A(\mycordic/add_262/carry [6]), .B(
        \mycordic/present_ANGLE_table[6][6] ), .Q(\mycordic/N621 ) );
  XNR21 U806 ( .A(\mycordic/add_262/carry [8]), .B(
        \mycordic/present_ANGLE_table[6][8] ), .Q(\mycordic/N623 ) );
  XNR21 U807 ( .A(\mycordic/r173/carry [5]), .B(n215), .Q(n214) );
  XNR21 U808 ( .A(\mycordic/r173/carry [4]), .B(n217), .Q(n216) );
  XNR21 U809 ( .A(\mycordic/r173/carry [7]), .B(n219), .Q(n218) );
  XNR21 U810 ( .A(\mycordic/r173/carry [6]), .B(
        \mycordic/present_ANGLE_table[6][6] ), .Q(n220) );
  XNR21 U811 ( .A(\mycordic/r173/carry [8]), .B(
        \mycordic/present_ANGLE_table[6][8] ), .Q(n221) );
  INV3 U812 ( .A(\mycordic/n514 ), .Q(n456) );
  AOI221 U813 ( .A(\mycordic/N337 ), .B(\mycordic/n336 ), .C(\mycordic/N369 ), 
        .D(n624), .Q(\mycordic/n514 ) );
  XNR21 U814 ( .A(\mycordic/present_ANGLE_table[1][5] ), .B(
        \mycordic/sub_196/carry[5] ), .Q(\mycordic/N369 ) );
  XOR21 U815 ( .A(\mycordic/present_ANGLE_table[1][5] ), .B(
        \mycordic/add_191/carry[5] ), .Q(\mycordic/N337 ) );
  INV3 U816 ( .A(\mycordic/n513 ), .Q(n457) );
  AOI221 U817 ( .A(\mycordic/N338 ), .B(n400), .C(\mycordic/N370 ), .D(n624), 
        .Q(\mycordic/n513 ) );
  XNR21 U818 ( .A(\mycordic/present_ANGLE_table[1][6] ), .B(
        \mycordic/sub_196/carry[6] ), .Q(\mycordic/N370 ) );
  XOR21 U819 ( .A(\mycordic/present_ANGLE_table[1][6] ), .B(
        \mycordic/add_191/carry[6] ), .Q(\mycordic/N338 ) );
  INV3 U820 ( .A(\mycordic/n512 ), .Q(n458) );
  AOI221 U821 ( .A(\mycordic/N339 ), .B(\mycordic/n336 ), .C(\mycordic/N371 ), 
        .D(n624), .Q(\mycordic/n512 ) );
  XNR21 U822 ( .A(\mycordic/present_ANGLE_table[1][7] ), .B(
        \mycordic/sub_196/carry[7] ), .Q(\mycordic/N371 ) );
  XOR21 U823 ( .A(\mycordic/present_ANGLE_table[1][7] ), .B(
        \mycordic/add_191/carry[7] ), .Q(\mycordic/N339 ) );
  INV3 U824 ( .A(\mycordic/n498 ), .Q(n549) );
  AOI221 U825 ( .A(\mycordic/N401 ), .B(n406), .C(\mycordic/N433 ), .D(n628), 
        .Q(\mycordic/n498 ) );
  XNR21 U826 ( .A(\mycordic/present_ANGLE_table[2][5] ), .B(
        \mycordic/sub_207/carry [5]), .Q(\mycordic/N433 ) );
  XOR21 U827 ( .A(\mycordic/present_ANGLE_table[2][5] ), .B(
        \mycordic/add_202/carry [5]), .Q(\mycordic/N401 ) );
  INV3 U828 ( .A(\mycordic/n497 ), .Q(n550) );
  AOI221 U829 ( .A(\mycordic/N402 ), .B(\mycordic/n332 ), .C(\mycordic/N434 ), 
        .D(n628), .Q(\mycordic/n497 ) );
  XNR21 U830 ( .A(\mycordic/present_ANGLE_table[2][6] ), .B(
        \mycordic/sub_207/carry [6]), .Q(\mycordic/N434 ) );
  XOR21 U831 ( .A(\mycordic/present_ANGLE_table[2][6] ), .B(
        \mycordic/add_202/carry [6]), .Q(\mycordic/N402 ) );
  INV3 U832 ( .A(\mycordic/n496 ), .Q(n551) );
  AOI221 U833 ( .A(\mycordic/N403 ), .B(n406), .C(\mycordic/N435 ), .D(n628), 
        .Q(\mycordic/n496 ) );
  XNR21 U834 ( .A(\mycordic/present_ANGLE_table[2][7] ), .B(
        \mycordic/sub_207/carry [7]), .Q(\mycordic/N435 ) );
  XOR21 U835 ( .A(\mycordic/present_ANGLE_table[2][7] ), .B(
        \mycordic/add_202/carry [7]), .Q(\mycordic/N403 ) );
  INV3 U836 ( .A(\mycordic/n495 ), .Q(n552) );
  AOI221 U837 ( .A(\mycordic/N404 ), .B(\mycordic/n332 ), .C(\mycordic/N436 ), 
        .D(n628), .Q(\mycordic/n495 ) );
  XNR21 U838 ( .A(\mycordic/present_ANGLE_table[2][8] ), .B(
        \mycordic/sub_207/carry [8]), .Q(\mycordic/N436 ) );
  XOR21 U839 ( .A(\mycordic/present_ANGLE_table[2][8] ), .B(
        \mycordic/add_202/carry [8]), .Q(\mycordic/N404 ) );
  INV3 U840 ( .A(\mycordic/n483 ), .Q(n523) );
  AOI221 U841 ( .A(\mycordic/N460 ), .B(n405), .C(\mycordic/N488 ), .D(n627), 
        .Q(\mycordic/n483 ) );
  XNR21 U842 ( .A(\mycordic/present_ANGLE_table[3][4] ), .B(
        \mycordic/sub_218/carry[4] ), .Q(\mycordic/N488 ) );
  XOR21 U843 ( .A(\mycordic/present_ANGLE_table[3][4] ), .B(
        \mycordic/add_213/carry[4] ), .Q(\mycordic/N460 ) );
  INV3 U844 ( .A(\mycordic/n482 ), .Q(n524) );
  AOI221 U845 ( .A(\mycordic/N461 ), .B(\mycordic/n363 ), .C(\mycordic/N489 ), 
        .D(n627), .Q(\mycordic/n482 ) );
  XNR21 U846 ( .A(\mycordic/present_ANGLE_table[3][5] ), .B(
        \mycordic/sub_218/carry[5] ), .Q(\mycordic/N489 ) );
  XOR21 U847 ( .A(\mycordic/present_ANGLE_table[3][5] ), .B(
        \mycordic/add_213/carry[5] ), .Q(\mycordic/N461 ) );
  INV3 U848 ( .A(\mycordic/n481 ), .Q(n525) );
  AOI221 U849 ( .A(\mycordic/N462 ), .B(n405), .C(\mycordic/N490 ), .D(n627), 
        .Q(\mycordic/n481 ) );
  XNR21 U850 ( .A(\mycordic/present_ANGLE_table[3][6] ), .B(
        \mycordic/sub_218/carry[6] ), .Q(\mycordic/N490 ) );
  XOR21 U851 ( .A(\mycordic/present_ANGLE_table[3][6] ), .B(
        \mycordic/add_213/carry[6] ), .Q(\mycordic/N462 ) );
  INV3 U852 ( .A(\mycordic/n480 ), .Q(n526) );
  AOI221 U853 ( .A(\mycordic/N463 ), .B(\mycordic/n363 ), .C(\mycordic/N491 ), 
        .D(n627), .Q(\mycordic/n480 ) );
  XNR21 U854 ( .A(\mycordic/present_ANGLE_table[3][7] ), .B(
        \mycordic/sub_218/carry[7] ), .Q(\mycordic/N491 ) );
  XOR21 U855 ( .A(\mycordic/present_ANGLE_table[3][7] ), .B(
        \mycordic/add_213/carry[7] ), .Q(\mycordic/N463 ) );
  INV3 U856 ( .A(\mycordic/n467 ), .Q(n499) );
  AOI221 U857 ( .A(\mycordic/N505 ), .B(n404), .C(\mycordic/N522 ), .D(n626), 
        .Q(\mycordic/n467 ) );
  XNR21 U858 ( .A(\mycordic/present_ANGLE_table[4][4] ), .B(
        \mycordic/sub_229/carry[4] ), .Q(\mycordic/N522 ) );
  XOR21 U859 ( .A(\mycordic/present_ANGLE_table[4][4] ), .B(
        \mycordic/add_224/carry[4] ), .Q(\mycordic/N505 ) );
  INV3 U860 ( .A(\mycordic/n466 ), .Q(n500) );
  AOI221 U861 ( .A(\mycordic/N506 ), .B(n404), .C(\mycordic/N523 ), .D(n626), 
        .Q(\mycordic/n466 ) );
  XNR21 U862 ( .A(\mycordic/present_ANGLE_table[4][5] ), .B(
        \mycordic/sub_229/carry[5] ), .Q(\mycordic/N523 ) );
  XOR21 U863 ( .A(\mycordic/present_ANGLE_table[4][5] ), .B(
        \mycordic/add_224/carry[5] ), .Q(\mycordic/N506 ) );
  INV3 U864 ( .A(\mycordic/n465 ), .Q(n501) );
  AOI221 U865 ( .A(\mycordic/N507 ), .B(\mycordic/n456 ), .C(\mycordic/N524 ), 
        .D(n626), .Q(\mycordic/n465 ) );
  XNR21 U866 ( .A(\mycordic/present_ANGLE_table[4][6] ), .B(
        \mycordic/sub_229/carry[6] ), .Q(\mycordic/N524 ) );
  XOR21 U867 ( .A(\mycordic/present_ANGLE_table[4][6] ), .B(
        \mycordic/add_224/carry[6] ), .Q(\mycordic/N507 ) );
  INV3 U868 ( .A(\mycordic/n464 ), .Q(n502) );
  AOI221 U869 ( .A(\mycordic/N508 ), .B(n404), .C(\mycordic/N525 ), .D(n626), 
        .Q(\mycordic/n464 ) );
  XNR21 U870 ( .A(\mycordic/present_ANGLE_table[4][7] ), .B(
        \mycordic/sub_229/carry[7] ), .Q(\mycordic/N525 ) );
  XOR21 U871 ( .A(\mycordic/present_ANGLE_table[4][7] ), .B(
        \mycordic/add_224/carry[7] ), .Q(\mycordic/N508 ) );
  INV3 U872 ( .A(\mycordic/n448 ), .Q(n440) );
  AOI221 U873 ( .A(\mycordic/N539 ), .B(n399), .C(\mycordic/N555 ), .D(n623), 
        .Q(\mycordic/n448 ) );
  XNR21 U874 ( .A(\mycordic/present_ANGLE_table[5][5] ), .B(
        \mycordic/sub_236/carry [5]), .Q(\mycordic/N555 ) );
  XOR21 U875 ( .A(\mycordic/present_ANGLE_table[5][5] ), .B(
        \mycordic/add_233/carry [5]), .Q(\mycordic/N539 ) );
  INV3 U876 ( .A(\mycordic/n447 ), .Q(n441) );
  AOI221 U877 ( .A(\mycordic/N540 ), .B(n398), .C(\mycordic/N556 ), .D(n623), 
        .Q(\mycordic/n447 ) );
  XNR21 U878 ( .A(\mycordic/present_ANGLE_table[5][6] ), .B(
        \mycordic/sub_236/carry [6]), .Q(\mycordic/N556 ) );
  XOR21 U879 ( .A(\mycordic/present_ANGLE_table[5][6] ), .B(
        \mycordic/add_233/carry [6]), .Q(\mycordic/N540 ) );
  INV3 U880 ( .A(\mycordic/n446 ), .Q(n442) );
  AOI221 U881 ( .A(\mycordic/N541 ), .B(n399), .C(\mycordic/N557 ), .D(n623), 
        .Q(\mycordic/n446 ) );
  XNR21 U882 ( .A(\mycordic/present_ANGLE_table[5][7] ), .B(
        \mycordic/sub_236/carry [7]), .Q(\mycordic/N557 ) );
  XOR21 U883 ( .A(\mycordic/present_ANGLE_table[5][7] ), .B(
        \mycordic/add_233/carry [7]), .Q(\mycordic/N541 ) );
  INV3 U884 ( .A(\mycordic/n445 ), .Q(n443) );
  AOI221 U885 ( .A(\mycordic/N542 ), .B(n398), .C(\mycordic/N558 ), .D(n623), 
        .Q(\mycordic/n445 ) );
  XNR21 U886 ( .A(\mycordic/present_ANGLE_table[5][8] ), .B(
        \mycordic/sub_236/carry [8]), .Q(\mycordic/N558 ) );
  XOR21 U887 ( .A(\mycordic/present_ANGLE_table[5][8] ), .B(
        \mycordic/add_233/carry [8]), .Q(\mycordic/N542 ) );
  XNR21 U888 ( .A(\mycordic/present_Q_table[0][7] ), .B(
        \mycordic/sub_add_151_b0/carry [7]), .Q(\mycordic/N247 ) );
  INV3 U889 ( .A(\mycordic/n515 ), .Q(n455) );
  AOI221 U890 ( .A(\mycordic/N336 ), .B(n400), .C(\mycordic/N368 ), .D(n624), 
        .Q(\mycordic/n515 ) );
  XOR21 U891 ( .A(\mycordic/present_ANGLE_table[1][4] ), .B(
        \mycordic/sub_196/carry[4] ), .Q(\mycordic/N368 ) );
  XNR21 U892 ( .A(\mycordic/present_ANGLE_table[1][4] ), .B(
        \mycordic/add_191/carry[4] ), .Q(\mycordic/N336 ) );
  INV3 U893 ( .A(\mycordic/n436 ), .Q(n622) );
  NAND22 U894 ( .A(\mycordic/next_ANGLE_table[6][0] ), .B(n407), .Q(
        \mycordic/n436 ) );
  INV3 U895 ( .A(\mycordic/n424 ), .Q(n613) );
  NAND22 U896 ( .A(\mycordic/next_ANGLE_table[6][1] ), .B(n408), .Q(
        \mycordic/n424 ) );
  INV3 U897 ( .A(\mycordic/n413 ), .Q(n602) );
  NAND22 U898 ( .A(\mycordic/next_ANGLE_table[6][2] ), .B(n409), .Q(
        \mycordic/n413 ) );
  INV3 U899 ( .A(\mycordic/n411 ), .Q(n600) );
  NAND22 U900 ( .A(\mycordic/next_ANGLE_table[6][3] ), .B(n409), .Q(
        \mycordic/n411 ) );
  INV3 U901 ( .A(\mycordic/n410 ), .Q(n599) );
  NAND22 U902 ( .A(\mycordic/next_ANGLE_table[6][4] ), .B(n409), .Q(
        \mycordic/n410 ) );
  INV3 U903 ( .A(\mycordic/n409 ), .Q(n598) );
  NAND22 U904 ( .A(\mycordic/next_ANGLE_table[6][5] ), .B(n409), .Q(
        \mycordic/n409 ) );
  INV3 U905 ( .A(\mycordic/n408 ), .Q(n597) );
  NAND22 U906 ( .A(\mycordic/next_ANGLE_table[6][6] ), .B(n409), .Q(
        \mycordic/n408 ) );
  INV3 U907 ( .A(\mycordic/n406 ), .Q(n595) );
  NAND22 U908 ( .A(\mycordic/next_ANGLE_table[6][8] ), .B(n409), .Q(
        \mycordic/n406 ) );
  INV3 U909 ( .A(\mycordic/n554 ), .Q(n628) );
  NAND22 U910 ( .A(\mycordic/present_Q_table[3][7] ), .B(n409), .Q(
        \mycordic/n554 ) );
  INV3 U911 ( .A(\mycordic/n520 ), .Q(n624) );
  NAND22 U912 ( .A(\mycordic/present_Q_table[2][7] ), .B(n407), .Q(
        \mycordic/n520 ) );
  NOR40 U913 ( .A(\mycordic/present_Q_table[0][3] ), .B(
        \mycordic/present_Q_table[0][4] ), .C(n648), .D(n397), .Q(
        \mycordic/N212 ) );
  INV3 U914 ( .A(\mycordic/n435 ), .Q(n648) );
  NOR31 U915 ( .A(\mycordic/present_Q_table[0][5] ), .B(
        \mycordic/present_Q_table[0][7] ), .C(\mycordic/present_Q_table[0][6] ), .Q(\mycordic/n435 ) );
  NOR21 U916 ( .A(present_state[0]), .B(present_state[2]), .Q(N17) );
  NAND22 U917 ( .A(\mycordic/present_I_table[0][7] ), .B(n407), .Q(
        \mycordic/n391 ) );
  INV3 U918 ( .A(\mycordic/n537 ), .Q(n625) );
  NAND22 U919 ( .A(\mycordic/present_Q_table[1][7] ), .B(n407), .Q(
        \mycordic/n537 ) );
  INV3 U920 ( .A(\mycordic/n454 ), .Q(n623) );
  NAND22 U921 ( .A(\mycordic/present_Q_table[6][7] ), .B(n407), .Q(
        \mycordic/n454 ) );
  INV3 U922 ( .A(\mycordic/n539 ), .Q(n626) );
  NAND22 U923 ( .A(\mycordic/present_Q_table[5][7] ), .B(n407), .Q(
        \mycordic/n539 ) );
  OAI2111 U924 ( .A(\mycordic/present_Q_table[0][7] ), .B(\mycordic/n391 ), 
        .C(\mycordic/n432 ), .D(n424), .Q(\mycordic/N211 ) );
  NAND22 U925 ( .A(\mycordic/present_Q_table[0][7] ), .B(\mycordic/n354 ), .Q(
        \mycordic/n432 ) );
  INV3 U926 ( .A(\mycordic/N212 ), .Q(n424) );
  AOI211 U927 ( .A(n29), .B(n415), .C(n413), .Q(N14) );
  NAND22 U928 ( .A(n187), .B(n39), .Q(n29) );
  INV3 U929 ( .A(n30), .Q(n415) );
  AOI211 U930 ( .A(n39), .B(i_enable_in), .C(present_state[1]), .Q(n30) );
  NOR21 U931 ( .A(n414), .B(\mycordic/present_Q_table[3][7] ), .Q(
        \mycordic/n332 ) );
  NOR21 U932 ( .A(present_state[0]), .B(present_state[1]), .Q(N26) );
  NOR21 U933 ( .A(n413), .B(\mycordic/present_Q_table[2][7] ), .Q(
        \mycordic/n336 ) );
  BUF2 U934 ( .A(\mycordic/n108 ), .Q(n393) );
  NOR21 U935 ( .A(n414), .B(\mycordic/present_Q_table[1][7] ), .Q(
        \mycordic/n345 ) );
  AOI2111 U936 ( .A(n27), .B(n28), .C(n413), .D(present_state[2]), .Q(N15) );
  NAND22 U937 ( .A(present_state[1]), .B(n187), .Q(n27) );
  NAND31 U938 ( .A(present_state[0]), .B(n190), .C(i_enable_in), .Q(n28) );
  NOR21 U939 ( .A(n413), .B(\mycordic/present_Q_table[6][7] ), .Q(
        \mycordic/n438 ) );
  INV3 U940 ( .A(\mycordic/n456 ), .Q(n403) );
  NOR21 U941 ( .A(n414), .B(\mycordic/present_Q_table[5][7] ), .Q(
        \mycordic/n456 ) );
  AOI211 U942 ( .A(n25), .B(n26), .C(n414), .Q(N16) );
  NAND22 U943 ( .A(N26), .B(present_state[2]), .Q(n25) );
  NAND31 U944 ( .A(present_state[0]), .B(n39), .C(present_state[1]), .Q(n26)
         );
  XOR21 U945 ( .A(\mycordic/present_ANGLE_table[6][3] ), .B(
        \mycordic/present_ANGLE_table[6][4] ), .Q(\mycordic/N619 ) );
  INV3 U946 ( .A(\mycordic/n354 ), .Q(n397) );
  NOR21 U947 ( .A(n413), .B(\mycordic/present_I_table[0][7] ), .Q(
        \mycordic/n354 ) );
  NOR21 U948 ( .A(\mycordic/n391 ), .B(n38), .Q(\mycordic/N44 ) );
  XNR21 U949 ( .A(\mycordic/present_ANGLE_table[6][2] ), .B(
        \mycordic/present_ANGLE_table[6][3] ), .Q(n222) );
  INV3 U950 ( .A(n24), .Q(n419) );
  NAND22 U951 ( .A(i_I[0]), .B(n17), .Q(n24) );
  INV3 U952 ( .A(n23), .Q(n418) );
  NAND22 U953 ( .A(i_I[1]), .B(n17), .Q(n23) );
  INV3 U954 ( .A(n22), .Q(n417) );
  NAND22 U955 ( .A(i_I[2]), .B(n17), .Q(n22) );
  INV3 U956 ( .A(n21), .Q(n416) );
  NAND22 U957 ( .A(i_I[3]), .B(n17), .Q(n21) );
  INV3 U958 ( .A(n20), .Q(n423) );
  NAND22 U959 ( .A(i_Q[0]), .B(n17), .Q(n20) );
  INV3 U960 ( .A(n19), .Q(n422) );
  NAND22 U961 ( .A(i_Q[1]), .B(n17), .Q(n19) );
  INV3 U962 ( .A(n18), .Q(n421) );
  NAND22 U963 ( .A(i_Q[2]), .B(n17), .Q(n18) );
  INV3 U964 ( .A(n16), .Q(n420) );
  NAND22 U965 ( .A(i_Q[3]), .B(n17), .Q(n16) );
  INV3 U966 ( .A(\mycordic/n433 ), .Q(n425) );
  AOI211 U967 ( .A(n411), .B(\mycordic/present_Q_table[0][7] ), .C(
        \mycordic/N212 ), .Q(\mycordic/n433 ) );
  INV3 U968 ( .A(\mycordic/n358 ), .Q(n430) );
  AOI221 U969 ( .A(n621), .B(\mycordic/present_Q_table[0][3] ), .C(
        \mycordic/n354 ), .D(\mycordic/present_Q_table[0][3] ), .Q(
        \mycordic/n358 ) );
  INV3 U970 ( .A(n15), .Q(n629) );
  NAND31 U971 ( .A(N26), .B(present_state[2]), .C(dir), .Q(n15) );
  INV3 U972 ( .A(\mycordic/n395 ), .Q(n426) );
  AOI221 U973 ( .A(\mycordic/present_I_table[0][3] ), .B(\mycordic/n354 ), .C(
        \mycordic/present_I_table[0][3] ), .D(n621), .Q(\mycordic/n395 ) );
  INV3 U974 ( .A(\mycordic/n382 ), .Q(n467) );
  AOI221 U975 ( .A(\mycordic/N316 ), .B(n400), .C(\mycordic/N348 ), .D(n624), 
        .Q(\mycordic/n382 ) );
  XOR21 U976 ( .A(\mycordic/present_I_table[2][0] ), .B(
        \mycordic/present_Q_table[2][1] ), .Q(\mycordic/N316 ) );
  XNR21 U977 ( .A(\mycordic/present_I_table[2][0] ), .B(n92), .Q(
        \mycordic/N348 ) );
  INV3 U978 ( .A(\mycordic/n374 ), .Q(n560) );
  AOI221 U979 ( .A(\mycordic/N380 ), .B(\mycordic/n332 ), .C(\mycordic/N412 ), 
        .D(n628), .Q(\mycordic/n374 ) );
  XOR21 U980 ( .A(\mycordic/present_I_table[3][0] ), .B(
        \mycordic/present_Q_table[3][2] ), .Q(\mycordic/N380 ) );
  XNR21 U981 ( .A(\mycordic/present_I_table[3][0] ), .B(n93), .Q(
        \mycordic/N412 ) );
  INV3 U982 ( .A(\mycordic/n517 ), .Q(n453) );
  AOI221 U983 ( .A(\mycordic/N334 ), .B(n400), .C(\mycordic/N366 ), .D(n624), 
        .Q(\mycordic/n517 ) );
  XNR21 U984 ( .A(\mycordic/present_ANGLE_table[1][2] ), .B(
        \mycordic/sub_196/carry[2] ), .Q(\mycordic/N366 ) );
  XOR21 U985 ( .A(\mycordic/present_ANGLE_table[1][2] ), .B(
        \mycordic/add_191/carry[2] ), .Q(\mycordic/N334 ) );
  INV3 U986 ( .A(\mycordic/n499 ), .Q(n548) );
  AOI221 U987 ( .A(\mycordic/N400 ), .B(\mycordic/n332 ), .C(\mycordic/N432 ), 
        .D(n628), .Q(\mycordic/n499 ) );
  XNR21 U988 ( .A(\mycordic/present_ANGLE_table[2][4] ), .B(
        \mycordic/sub_207/carry [4]), .Q(\mycordic/N432 ) );
  XOR21 U989 ( .A(\mycordic/present_ANGLE_table[2][4] ), .B(
        \mycordic/add_202/carry [4]), .Q(\mycordic/N400 ) );
  INV3 U990 ( .A(\mycordic/n484 ), .Q(n522) );
  AOI221 U991 ( .A(\mycordic/N459 ), .B(\mycordic/n363 ), .C(\mycordic/N487 ), 
        .D(n627), .Q(\mycordic/n484 ) );
  XNR21 U992 ( .A(\mycordic/present_ANGLE_table[3][3] ), .B(
        \mycordic/sub_218/carry[3] ), .Q(\mycordic/N487 ) );
  XOR21 U993 ( .A(\mycordic/present_ANGLE_table[3][3] ), .B(
        \mycordic/add_213/carry[3] ), .Q(\mycordic/N459 ) );
  INV3 U994 ( .A(\mycordic/n469 ), .Q(n497) );
  AOI221 U995 ( .A(\mycordic/N503 ), .B(n404), .C(\mycordic/N520 ), .D(n626), 
        .Q(\mycordic/n469 ) );
  XNR21 U996 ( .A(\mycordic/present_ANGLE_table[4][2] ), .B(
        \mycordic/sub_229/carry[2] ), .Q(\mycordic/N520 ) );
  XOR21 U997 ( .A(\mycordic/present_ANGLE_table[4][2] ), .B(
        \mycordic/add_224/carry[2] ), .Q(\mycordic/N503 ) );
  INV3 U998 ( .A(\mycordic/n468 ), .Q(n498) );
  AOI221 U999 ( .A(\mycordic/N504 ), .B(\mycordic/n456 ), .C(\mycordic/N521 ), 
        .D(n626), .Q(\mycordic/n468 ) );
  XNR21 U1000 ( .A(\mycordic/present_ANGLE_table[4][3] ), .B(
        \mycordic/sub_229/carry[3] ), .Q(\mycordic/N521 ) );
  XOR21 U1001 ( .A(\mycordic/present_ANGLE_table[4][3] ), .B(
        \mycordic/add_224/carry[3] ), .Q(\mycordic/N504 ) );
  INV3 U1002 ( .A(\mycordic/n451 ), .Q(n437) );
  AOI221 U1003 ( .A(\mycordic/N536 ), .B(n398), .C(\mycordic/N552 ), .D(n623), 
        .Q(\mycordic/n451 ) );
  XNR21 U1004 ( .A(\mycordic/present_ANGLE_table[5][2] ), .B(
        \mycordic/present_ANGLE_table[5][1] ), .Q(\mycordic/N552 ) );
  XOR21 U1005 ( .A(\mycordic/present_ANGLE_table[5][2] ), .B(
        \mycordic/present_ANGLE_table[5][1] ), .Q(\mycordic/N536 ) );
  INV3 U1006 ( .A(\mycordic/n450 ), .Q(n438) );
  AOI221 U1007 ( .A(\mycordic/N537 ), .B(n399), .C(\mycordic/N553 ), .D(n623), 
        .Q(\mycordic/n450 ) );
  XNR21 U1008 ( .A(\mycordic/present_ANGLE_table[5][3] ), .B(
        \mycordic/sub_236/carry [3]), .Q(\mycordic/N553 ) );
  XOR21 U1009 ( .A(\mycordic/present_ANGLE_table[5][3] ), .B(
        \mycordic/add_233/carry [3]), .Q(\mycordic/N537 ) );
  INV3 U1010 ( .A(\mycordic/n449 ), .Q(n439) );
  AOI221 U1011 ( .A(\mycordic/N538 ), .B(n398), .C(\mycordic/N554 ), .D(n623), 
        .Q(\mycordic/n449 ) );
  XNR21 U1012 ( .A(\mycordic/present_ANGLE_table[5][4] ), .B(
        \mycordic/sub_236/carry [4]), .Q(\mycordic/N554 ) );
  XOR21 U1013 ( .A(\mycordic/present_ANGLE_table[5][4] ), .B(
        \mycordic/add_233/carry [4]), .Q(\mycordic/N538 ) );
  INV3 U1014 ( .A(\mycordic/n394 ), .Q(n427) );
  AOI221 U1015 ( .A(\mycordic/present_I_table[0][4] ), .B(\mycordic/n354 ), 
        .C(\mycordic/N236 ), .D(n621), .Q(\mycordic/n394 ) );
  XOR21 U1016 ( .A(n165), .B(n43), .Q(\mycordic/N236 ) );
  INV3 U1017 ( .A(\mycordic/n393 ), .Q(n428) );
  AOI221 U1018 ( .A(\mycordic/present_I_table[0][5] ), .B(\mycordic/n354 ), 
        .C(\mycordic/N237 ), .D(n621), .Q(\mycordic/n393 ) );
  XOR21 U1019 ( .A(\mycordic/sub_add_150_b0/carry [5]), .B(n44), .Q(
        \mycordic/N237 ) );
  INV3 U1020 ( .A(\mycordic/n392 ), .Q(n429) );
  AOI221 U1021 ( .A(\mycordic/present_I_table[0][6] ), .B(\mycordic/n354 ), 
        .C(\mycordic/N238 ), .D(n621), .Q(\mycordic/n392 ) );
  XOR21 U1022 ( .A(\mycordic/sub_add_150_b0/carry [6]), .B(n45), .Q(
        \mycordic/N238 ) );
  INV3 U1023 ( .A(\mycordic/n518 ), .Q(n452) );
  AOI221 U1024 ( .A(\mycordic/N333 ), .B(\mycordic/n336 ), .C(\mycordic/N365 ), 
        .D(n624), .Q(\mycordic/n518 ) );
  XOR21 U1025 ( .A(\mycordic/present_ANGLE_table[1][1] ), .B(
        \mycordic/present_ANGLE_table[1][0] ), .Q(\mycordic/N365 ) );
  XNR21 U1026 ( .A(\mycordic/present_ANGLE_table[1][1] ), .B(
        \mycordic/present_ANGLE_table[1][0] ), .Q(\mycordic/N333 ) );
  INV3 U1027 ( .A(\mycordic/n501 ), .Q(n546) );
  AOI221 U1028 ( .A(\mycordic/N398 ), .B(\mycordic/n332 ), .C(\mycordic/N430 ), 
        .D(n628), .Q(\mycordic/n501 ) );
  XOR21 U1029 ( .A(\mycordic/present_ANGLE_table[2][2] ), .B(
        \mycordic/present_ANGLE_table[2][1] ), .Q(\mycordic/N430 ) );
  XNR21 U1030 ( .A(\mycordic/present_ANGLE_table[2][2] ), .B(
        \mycordic/present_ANGLE_table[2][1] ), .Q(\mycordic/N398 ) );
  INV3 U1031 ( .A(\mycordic/n486 ), .Q(n520) );
  AOI221 U1032 ( .A(\mycordic/N457 ), .B(\mycordic/n363 ), .C(\mycordic/N485 ), 
        .D(n627), .Q(\mycordic/n486 ) );
  XOR21 U1033 ( .A(\mycordic/present_ANGLE_table[3][1] ), .B(
        \mycordic/present_ANGLE_table[3][0] ), .Q(\mycordic/N485 ) );
  XNR21 U1034 ( .A(\mycordic/present_ANGLE_table[3][1] ), .B(
        \mycordic/present_ANGLE_table[3][0] ), .Q(\mycordic/N457 ) );
  INV3 U1035 ( .A(\mycordic/n470 ), .Q(n496) );
  AOI221 U1036 ( .A(\mycordic/N502 ), .B(\mycordic/n456 ), .C(\mycordic/N519 ), 
        .D(n626), .Q(\mycordic/n470 ) );
  XOR21 U1037 ( .A(\mycordic/present_ANGLE_table[4][1] ), .B(
        \mycordic/present_ANGLE_table[4][0] ), .Q(\mycordic/N519 ) );
  XNR21 U1038 ( .A(\mycordic/present_ANGLE_table[4][1] ), .B(
        \mycordic/present_ANGLE_table[4][0] ), .Q(\mycordic/N502 ) );
  INV3 U1039 ( .A(\mycordic/n357 ), .Q(n431) );
  AOI221 U1040 ( .A(n621), .B(\mycordic/N244 ), .C(\mycordic/n354 ), .D(
        \mycordic/present_Q_table[0][4] ), .Q(\mycordic/n357 ) );
  XOR21 U1041 ( .A(n164), .B(n42), .Q(\mycordic/N244 ) );
  INV3 U1042 ( .A(\mycordic/n356 ), .Q(n432) );
  AOI221 U1043 ( .A(n621), .B(\mycordic/N245 ), .C(\mycordic/n354 ), .D(
        \mycordic/present_Q_table[0][5] ), .Q(\mycordic/n356 ) );
  XOR21 U1044 ( .A(\mycordic/sub_add_151_b0/carry [5]), .B(n41), .Q(
        \mycordic/N245 ) );
  INV3 U1045 ( .A(\mycordic/n355 ), .Q(n433) );
  AOI221 U1046 ( .A(n621), .B(\mycordic/N246 ), .C(\mycordic/n354 ), .D(
        \mycordic/present_Q_table[0][6] ), .Q(\mycordic/n355 ) );
  XOR21 U1047 ( .A(\mycordic/sub_add_151_b0/carry [6]), .B(n40), .Q(
        \mycordic/N246 ) );
  INV3 U1048 ( .A(\mycordic/n516 ), .Q(n454) );
  AOI221 U1049 ( .A(\mycordic/N335 ), .B(\mycordic/n336 ), .C(\mycordic/N367 ), 
        .D(n624), .Q(\mycordic/n516 ) );
  XOR21 U1050 ( .A(\mycordic/present_ANGLE_table[1][3] ), .B(
        \mycordic/sub_196/carry[3] ), .Q(\mycordic/N367 ) );
  XNR21 U1051 ( .A(\mycordic/present_ANGLE_table[1][3] ), .B(
        \mycordic/add_191/carry[3] ), .Q(\mycordic/N335 ) );
  INV3 U1052 ( .A(\mycordic/n547 ), .Q(n511) );
  AOI221 U1053 ( .A(\mycordic/N448 ), .B(n405), .C(\mycordic/N476 ), .D(n627), 
        .Q(\mycordic/n547 ) );
  XOR21 U1054 ( .A(\mycordic/present_Q_table[4][0] ), .B(
        \mycordic/present_I_table[4][3] ), .Q(\mycordic/N476 ) );
  XNR21 U1055 ( .A(\mycordic/present_Q_table[4][0] ), .B(n89), .Q(
        \mycordic/N448 ) );
  INV3 U1056 ( .A(\mycordic/n343 ), .Q(n475) );
  AOI221 U1057 ( .A(\mycordic/N324 ), .B(n400), .C(\mycordic/N356 ), .D(n624), 
        .Q(\mycordic/n343 ) );
  XOR21 U1058 ( .A(\mycordic/present_Q_table[2][0] ), .B(
        \mycordic/present_I_table[2][1] ), .Q(\mycordic/N356 ) );
  XNR21 U1059 ( .A(\mycordic/present_Q_table[2][0] ), .B(n94), .Q(
        \mycordic/N324 ) );
  INV3 U1060 ( .A(\mycordic/n334 ), .Q(n568) );
  AOI221 U1061 ( .A(\mycordic/N388 ), .B(\mycordic/n332 ), .C(\mycordic/N420 ), 
        .D(n628), .Q(\mycordic/n334 ) );
  XOR21 U1062 ( .A(\mycordic/present_Q_table[3][0] ), .B(
        \mycordic/present_I_table[3][2] ), .Q(\mycordic/N420 ) );
  XNR21 U1063 ( .A(\mycordic/present_Q_table[3][0] ), .B(n95), .Q(
        \mycordic/N388 ) );
  INV3 U1064 ( .A(\mycordic/n500 ), .Q(n547) );
  AOI221 U1065 ( .A(\mycordic/N399 ), .B(n406), .C(\mycordic/N431 ), .D(n628), 
        .Q(\mycordic/n500 ) );
  XOR21 U1066 ( .A(\mycordic/present_ANGLE_table[2][3] ), .B(
        \mycordic/sub_207/carry [3]), .Q(\mycordic/N431 ) );
  XNR21 U1067 ( .A(\mycordic/present_ANGLE_table[2][3] ), .B(
        \mycordic/add_202/carry [3]), .Q(\mycordic/N399 ) );
  INV3 U1068 ( .A(\mycordic/n485 ), .Q(n521) );
  AOI221 U1069 ( .A(\mycordic/N458 ), .B(n405), .C(\mycordic/N486 ), .D(n627), 
        .Q(\mycordic/n485 ) );
  XOR21 U1070 ( .A(\mycordic/present_ANGLE_table[3][2] ), .B(
        \mycordic/sub_218/carry[2] ), .Q(\mycordic/N486 ) );
  XNR21 U1071 ( .A(\mycordic/present_ANGLE_table[3][2] ), .B(
        \mycordic/add_213/carry[2] ), .Q(\mycordic/N458 ) );
  INV3 U1072 ( .A(\mycordic/n503 ), .Q(n544) );
  AOI221 U1073 ( .A(\mycordic/N428 ), .B(\mycordic/n332 ), .C(\mycordic/N428 ), 
        .D(n628), .Q(\mycordic/n503 ) );
  INV3 U1074 ( .A(\mycordic/n453 ), .Q(n435) );
  AOI221 U1075 ( .A(\mycordic/N550 ), .B(n398), .C(\mycordic/N550 ), .D(n623), 
        .Q(\mycordic/n453 ) );
  INV3 U1076 ( .A(\mycordic/n519 ), .Q(n451) );
  AOI221 U1077 ( .A(n191), .B(n400), .C(n191), .D(n624), .Q(\mycordic/n519 )
         );
  INV3 U1078 ( .A(\mycordic/n502 ), .Q(n545) );
  AOI221 U1079 ( .A(n192), .B(n406), .C(n192), .D(n628), .Q(\mycordic/n502 )
         );
  INV3 U1080 ( .A(\mycordic/n487 ), .Q(n519) );
  AOI221 U1081 ( .A(n193), .B(n405), .C(n193), .D(n627), .Q(\mycordic/n487 )
         );
  INV3 U1082 ( .A(\mycordic/n471 ), .Q(n495) );
  AOI221 U1083 ( .A(n194), .B(\mycordic/n456 ), .C(n194), .D(n626), .Q(
        \mycordic/n471 ) );
  INV3 U1084 ( .A(\mycordic/n452 ), .Q(n436) );
  AOI221 U1085 ( .A(n195), .B(n399), .C(n195), .D(n623), .Q(\mycordic/n452 )
         );
  INV3 U1086 ( .A(\my_rotation/n74 ), .Q(n576) );
  NAND22 U1087 ( .A(cordic_to_rotation[15]), .B(n411), .Q(\my_rotation/n74 )
         );
  INV3 U1088 ( .A(\my_rotation/n75 ), .Q(n577) );
  NAND22 U1089 ( .A(cordic_to_rotation[14]), .B(n411), .Q(\my_rotation/n75 )
         );
  INV3 U1090 ( .A(\my_rotation/n76 ), .Q(n578) );
  NAND22 U1091 ( .A(cordic_to_rotation[13]), .B(n411), .Q(\my_rotation/n76 )
         );
  INV3 U1092 ( .A(\my_rotation/n77 ), .Q(n579) );
  NAND22 U1093 ( .A(cordic_to_rotation[12]), .B(n411), .Q(\my_rotation/n77 )
         );
  INV3 U1094 ( .A(\my_rotation/n78 ), .Q(n580) );
  NAND22 U1095 ( .A(cordic_to_rotation[11]), .B(n411), .Q(\my_rotation/n78 )
         );
  INV3 U1096 ( .A(\my_rotation/n50 ), .Q(n572) );
  NAND22 U1097 ( .A(cordic_to_rotation[2]), .B(n411), .Q(\my_rotation/n50 ) );
  INV3 U1098 ( .A(\my_rotation/n51 ), .Q(n573) );
  NAND22 U1099 ( .A(cordic_to_rotation[1]), .B(n411), .Q(\my_rotation/n51 ) );
  INV3 U1100 ( .A(\my_rotation/n52 ), .Q(n574) );
  NAND22 U1101 ( .A(cordic_to_rotation[0]), .B(n411), .Q(\my_rotation/n52 ) );
  INV3 U1102 ( .A(\my_rotation/n49 ), .Q(n571) );
  NAND22 U1103 ( .A(n411), .B(cordic_to_rotation[3]), .Q(\my_rotation/n49 ) );
  INV3 U1104 ( .A(\my_rotation/n79 ), .Q(n581) );
  NAND22 U1105 ( .A(cordic_to_rotation[10]), .B(n410), .Q(\my_rotation/n79 )
         );
  INV3 U1106 ( .A(\my_rotation/n80 ), .Q(n582) );
  NAND22 U1107 ( .A(cordic_to_rotation[9]), .B(n410), .Q(\my_rotation/n80 ) );
  INV3 U1108 ( .A(\my_rotation/n81 ), .Q(n583) );
  NAND22 U1109 ( .A(cordic_to_rotation[8]), .B(n410), .Q(\my_rotation/n81 ) );
  INV3 U1110 ( .A(\my_rotation/n82 ), .Q(n584) );
  NAND22 U1111 ( .A(cordic_to_rotation[7]), .B(n410), .Q(\my_rotation/n82 ) );
  INV3 U1112 ( .A(\my_rotation/n83 ), .Q(n585) );
  NAND22 U1113 ( .A(cordic_to_rotation[6]), .B(n410), .Q(\my_rotation/n83 ) );
  INV3 U1114 ( .A(\my_rotation/n84 ), .Q(n586) );
  NAND22 U1115 ( .A(cordic_to_rotation[5]), .B(n410), .Q(\my_rotation/n84 ) );
  INV3 U1116 ( .A(\my_rotation/n85 ), .Q(n587) );
  NAND22 U1117 ( .A(cordic_to_rotation[4]), .B(n410), .Q(\my_rotation/n85 ) );
  INV3 U1118 ( .A(\mycordic/n429 ), .Q(n618) );
  NAND22 U1119 ( .A(\mycordic/present_C_table[1][2] ), .B(n407), .Q(
        \mycordic/n429 ) );
  INV3 U1120 ( .A(\mycordic/n426 ), .Q(n615) );
  NAND22 U1121 ( .A(\mycordic/present_C_table[2][2] ), .B(n408), .Q(
        \mycordic/n426 ) );
  INV3 U1122 ( .A(\mycordic/n422 ), .Q(n611) );
  NAND22 U1123 ( .A(\mycordic/present_C_table[3][2] ), .B(n408), .Q(
        \mycordic/n422 ) );
  INV3 U1124 ( .A(\mycordic/n419 ), .Q(n608) );
  NAND22 U1125 ( .A(\mycordic/present_C_table[4][2] ), .B(n408), .Q(
        \mycordic/n419 ) );
  INV3 U1126 ( .A(\mycordic/n416 ), .Q(n605) );
  NAND22 U1127 ( .A(\mycordic/present_C_table[5][2] ), .B(n408), .Q(
        \mycordic/n416 ) );
  INV3 U1128 ( .A(\mycordic/n412 ), .Q(n601) );
  NAND22 U1129 ( .A(\mycordic/present_C_table[6][2] ), .B(n409), .Q(
        \mycordic/n412 ) );
  INV3 U1130 ( .A(\mycordic/n430 ), .Q(n619) );
  NAND22 U1131 ( .A(\mycordic/present_C_table[1][1] ), .B(n407), .Q(
        \mycordic/n430 ) );
  INV3 U1132 ( .A(\mycordic/n427 ), .Q(n616) );
  NAND22 U1133 ( .A(\mycordic/present_C_table[2][1] ), .B(n407), .Q(
        \mycordic/n427 ) );
  INV3 U1134 ( .A(\mycordic/n423 ), .Q(n612) );
  NAND22 U1135 ( .A(\mycordic/present_C_table[3][1] ), .B(n408), .Q(
        \mycordic/n423 ) );
  INV3 U1136 ( .A(\mycordic/n420 ), .Q(n609) );
  NAND22 U1137 ( .A(\mycordic/present_C_table[4][1] ), .B(n408), .Q(
        \mycordic/n420 ) );
  INV3 U1138 ( .A(\mycordic/n417 ), .Q(n606) );
  NAND22 U1139 ( .A(\mycordic/present_C_table[5][1] ), .B(n408), .Q(
        \mycordic/n417 ) );
  INV3 U1140 ( .A(\mycordic/n414 ), .Q(n603) );
  NAND22 U1141 ( .A(\mycordic/present_C_table[6][1] ), .B(n409), .Q(
        \mycordic/n414 ) );
  INV3 U1142 ( .A(\mycordic/n431 ), .Q(n620) );
  NAND22 U1143 ( .A(\mycordic/present_C_table[1][0] ), .B(n407), .Q(
        \mycordic/n431 ) );
  INV3 U1144 ( .A(\mycordic/n428 ), .Q(n617) );
  NAND22 U1145 ( .A(\mycordic/present_C_table[2][0] ), .B(n407), .Q(
        \mycordic/n428 ) );
  INV3 U1146 ( .A(\mycordic/n425 ), .Q(n614) );
  NAND22 U1147 ( .A(\mycordic/present_C_table[3][0] ), .B(n408), .Q(
        \mycordic/n425 ) );
  INV3 U1148 ( .A(\mycordic/n421 ), .Q(n610) );
  NAND22 U1149 ( .A(\mycordic/present_C_table[4][0] ), .B(n408), .Q(
        \mycordic/n421 ) );
  INV3 U1150 ( .A(\mycordic/n418 ), .Q(n607) );
  NAND22 U1151 ( .A(\mycordic/present_C_table[5][0] ), .B(n408), .Q(
        \mycordic/n418 ) );
  INV3 U1152 ( .A(\mycordic/n415 ), .Q(n604) );
  NAND22 U1153 ( .A(\mycordic/present_C_table[6][0] ), .B(n408), .Q(
        \mycordic/n415 ) );
  NOR31 U1154 ( .A(n39), .B(present_state[1]), .C(n187), .Q(o_enable_out) );
  INV3 U1155 ( .A(reset), .Q(n413) );
  INV3 U1156 ( .A(reset), .Q(n414) );
  OAI212 U1157 ( .A(n131), .B(n35), .C(n665), .Q(n666) );
  OAI212 U1158 ( .A(\mycordic/present_Q_table[5][2] ), .B(n666), .C(
        \mycordic/present_I_table[5][6] ), .Q(n667) );
  OAI212 U1159 ( .A(n639), .B(n111), .C(n667), .Q(n669) );
  OAI212 U1160 ( .A(\mycordic/present_Q_table[5][3] ), .B(n669), .C(
        \mycordic/present_I_table[5][7] ), .Q(n668) );
  OAI212 U1161 ( .A(\mycordic/present_Q_table[5][4] ), .B(n635), .C(
        \mycordic/present_I_table[5][7] ), .Q(n670) );
  OAI212 U1162 ( .A(n671), .B(n153), .C(n670), .Q(n673) );
  OAI212 U1163 ( .A(\mycordic/present_Q_table[5][5] ), .B(n673), .C(
        \mycordic/present_I_table[5][7] ), .Q(n672) );
  OAI212 U1164 ( .A(\mycordic/present_Q_table[5][6] ), .B(n631), .C(
        \mycordic/present_I_table[5][7] ), .Q(n674) );
  OAI212 U1165 ( .A(n675), .B(n184), .C(n674), .Q(\mycordic/add_228/carry[7] )
         );
  OAI222 U1166 ( .A(n679), .B(n111), .C(\mycordic/present_I_table[5][6] ), .D(
        n638), .Q(n681) );
  OAI212 U1167 ( .A(\mycordic/present_Q_table[5][3] ), .B(n681), .C(n112), .Q(
        n680) );
  OAI212 U1168 ( .A(n683), .B(n153), .C(n634), .Q(n685) );
  OAI212 U1169 ( .A(\mycordic/present_Q_table[5][5] ), .B(n685), .C(n112), .Q(
        n684) );
  OAI212 U1170 ( .A(n687), .B(n184), .C(n630), .Q(\mycordic/sub_223/carry[7] )
         );
  OAI222 U1171 ( .A(n689), .B(n132), .C(\mycordic/present_Q_table[4][4] ), .D(
        n688), .Q(n691) );
  OAI222 U1172 ( .A(n693), .B(n89), .C(\mycordic/present_Q_table[4][6] ), .D(
        n692), .Q(\mycordic/sub_216/carry [4]) );
  OAI212 U1173 ( .A(\mycordic/present_I_table[4][2] ), .B(n646), .C(
        \mycordic/present_Q_table[4][5] ), .Q(n695) );
  OAI212 U1174 ( .A(n696), .B(n130), .C(n695), .Q(n698) );
  OAI212 U1175 ( .A(\mycordic/present_I_table[4][3] ), .B(n698), .C(
        \mycordic/present_Q_table[4][6] ), .Q(n697) );
endmodule

