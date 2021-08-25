float angle = 0;
float time = 0;
float speed = 60;

int elipseXPoints[] = {40 , 43 , 46 , 49 , 52 , 55 , 58 , 61 , 64 , 67 , 70 , 73 , 76 , 79 , 82 , 85 , 88 , 91 , 94 , 97 , 100 , 103 , 106 , 109 , 112 , 115 , 118 , 121 , 124 , 127 , 130 , 133 , 136 , 139 , 142 , 145 , 148 , 151 , 154 , 157 , 160 , 163 , 166 , 169 , 172 , 175 , 178 , 181 , 184 , 187 , 190 , 193 , 196 , 199 , 202 , 205 , 208 , 211 , 214 , 217 , 220 , 223 , 226 , 229 , 232 , 235 , 238 , 241 , 244 , 247 , 250 , 253 , 256 , 259 , 262 , 265 , 268 , 272 , 275 , 278 , 281 , 284 , 287 , 290 , 293 , 296 , 299 , 302 , 305 , 308 , 311 , 314 , 317 , 320 , 323 , 326 , 329 , 332 , 335 , 338 , 341 , 344 , 347 , 350 , 353 , 356 , 359 , 362 , 365 , 368 , 371 , 374 , 377 , 380 , 383 , 386 , 389 , 392 , 395 , 398 , 401 , 404 , 407 , 410 , 413 , 416 , 419 , 422 , 425 , 428 , 431 , 434 , 437 , 440 , 443 , 446 , 449 , 452 , 455 , 458 , 461 , 464 , 467 , 470 , 473 , 476 , 479 , 482 , 485 , 488 , 491 , 494 , 497 , 500 , 503 , 506 , 509 , 512 , 515 , 518 , 521 , 524 , 527 , 530 , 533 , 536 , 539 , 542 , 545 , 548 , 551 , 554 , 557 , 560 , 563 , 566 , 569 , 572 , 575 , 578 , 581 , 584 , 587 , 590 , 593 , 596 , 599 , 602 , 605 , 608 , 611 , 614 , 617 , 620 , 623 , 626 , 629 , 632 , 635 , 638 , 641 , 644 , 647 , 650 , 653 , 656 , 659 , 662 , 665 , 668 , 671 , 674 , 677 , 680 , 683 , 686 , 689 , 692 , 695 , 698 , 701 , 704 , 707 , 710 , 713 , 710 , 707 , 704 , 701 , 698 , 695 , 692 , 689 , 686 , 683 , 680 , 677 , 674 , 671 , 668 , 665 , 662 , 659 , 656 , 653 , 650 , 647 , 644 , 641 , 638 , 635 , 632 , 629 , 626 , 623 , 620 , 617 , 614 , 611 , 608 , 605 , 602 , 599 , 596 , 593 , 590 , 587 , 584 , 581 , 578 , 575 , 572 , 569 , 566 , 563 , 560 , 557 , 554 , 551 , 548 , 545 , 542 , 539 , 536 , 533 , 530 , 527 , 524 , 521 , 518 , 515 , 512 , 509 , 506 , 503 , 500 , 497 , 494 , 491 , 488 , 485 , 482 , 479 , 476 , 473 , 470 , 467 , 464 , 461 , 458 , 455 , 452 , 449 , 446 , 443 , 440 , 437 , 434 , 431 , 428 , 425 , 422 , 419 , 416 , 413 , 410 , 407 , 404 , 401 , 398 , 395 , 392 , 389 , 386 , 383 , 380 , 377 , 374 , 371 , 368 , 365 , 362 , 359 , 356 , 353 , 350 , 347 , 344 , 341 , 338 , 335 , 332 , 329 , 326 , 323 , 320 , 317 , 314 , 311 , 308 , 305 , 302 , 299 , 296 , 293 , 290 , 287 , 284 , 281 , 278 , 275 , 272 , 269 , 266 , 263 , 260 , 257 , 254 , 251 , 248 , 245 , 242 , 239 , 236 , 233 , 230 , 227 , 224 , 221 , 218 , 215 , 212 , 209 , 206 , 203 , 200 , 197 , 194 , 191 , 188 , 185 , 182 , 179 , 176 , 173 , 170 , 167 , 164 , 161 , 158 , 155 , 152 , 149 , 146 , 143 , 140 , 137 , 134 , 131 , 128 , 125 , 122 , 119 , 116 , 113 , 110 , 107 , 104 , 101 , 98 , 95 , 92 , 89 , 86 , 83 , 80 , 77 , 74 , 71 , 68 , 65 , 62 , 59 , 56 , 53 , 50 , 47 , 44 , 41};
int elipseYPoints[] = {360 , 336 , 323 , 314 , 306 , 299 , 294 , 288 , 282 , 278 , 274 , 270 , 266 , 262 , 258 , 255 , 252 , 249 , 246 , 243 , 240 , 237 , 235 , 232 , 230 , 228 , 225 , 223 , 220 , 218 , 217 , 215 , 213 , 211 , 209 , 207 , 205 , 203 , 201 , 200 , 198 , 197 , 195 , 194 , 193 , 191 , 190 , 188 , 187 , 186 , 185 , 183 , 182 , 181 , 179 , 178 , 177 , 176 , 175 , 174 , 173 , 172 , 171 , 170 , 169 , 168 , 167 , 166 , 166 , 165 , 164 , 163 , 162 , 162 , 161 , 161 , 160 , 159 , 158 , 158 , 157 , 157 , 156 , 155 , 155 , 154 , 154 , 154 , 153 , 153 , 153 , 152 , 152 , 151 , 151 , 151 , 151 , 150 , 150 , 150 , 149 , 149 , 149 , 149 , 149 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 148 , 149 , 149 , 149 , 149 , 149 , 150 , 150 , 150 , 151 , 151 , 151 , 151 , 152 , 152 , 153 , 153 , 153 , 154 , 154 , 154 , 155 , 155 , 156 , 157 , 157 , 158 , 158 , 159 , 160 , 161 , 161 , 162 , 162 , 163 , 164 , 165 , 166 , 166 , 167 , 168 , 169 , 170 , 171 , 172 , 173 , 174 , 175 , 176 , 177 , 178 , 179 , 181 , 182 , 183 , 185 , 186 , 187 , 188 , 190 , 191 , 193 , 194 , 195 , 197 , 198 , 200 , 201 , 203 , 205 , 207 , 209 , 211 , 213 , 215 , 217 , 218 , 220 , 223 , 225 , 228 , 230 , 232 , 235 , 237 , 240 , 243 , 246 , 249 , 252 , 255 , 258 , 262 , 266 , 270 , 274 , 278 , 282 , 288 , 294 , 299 , 306 , 314 , 323 , 336 , 360 , 384 , 397 , 406 , 414 , 421 , 426 , 432 , 438 , 442 , 446 , 450 , 454 , 458 , 462 , 465 , 468 , 471 , 474 , 477 , 480 , 483 , 485 , 488 , 490 , 492 , 495 , 497 , 500 , 502 , 503 , 505 , 507 , 509 , 511 , 513 , 515 , 517 , 519 , 520 , 522 , 523 , 525 , 526 , 527 , 529 , 530 , 532 , 533 , 534 , 535 , 537 , 538 , 539 , 541 , 542 , 543 , 544 , 545 , 546 , 547 , 548 , 549 , 550 , 551 , 552 , 553 , 554 , 554 , 555 , 556 , 557 , 558 , 558 , 559 , 559 , 560 , 561 , 562 , 562 , 563 , 563 , 564 , 565 , 565 , 566 , 566 , 566 , 567 , 567 , 567 , 568 , 568 , 569 , 569 , 569 , 569 , 570 , 570 , 570 , 571 , 571 , 571 , 571 , 571 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 572 , 571 , 571 , 571 , 571 , 571 , 570 , 570 , 570 , 569 , 569 , 569 , 569 , 568 , 568 , 567 , 567 , 567 , 566 , 566 , 566 , 565 , 565 , 564 , 563 , 563 , 562 , 562 , 561 , 560 , 559 , 559 , 558 , 558 , 557 , 556 , 555 , 554 , 554 , 553 , 552 , 551 , 550 , 549 , 548 , 547 , 546 , 545 , 544 , 543 , 542 , 541 , 539 , 538 , 537 , 535 , 534 , 533 , 532 , 530 , 529 , 527 , 526 , 525 , 523 , 522 , 520 , 519 , 517 , 515 , 513 , 511 , 509 , 507 , 505 , 503 , 502 , 500 , 497 , 495 , 492 , 490 , 488 , 485 , 483 , 480 , 477 , 474 , 471 , 468 , 465 , 462 , 458 , 454 , 450 , 446 , 442 , 438 , 432 , 426 , 421 , 414 , 406 , 397 , 384 , 360};
float xCometa = 0;
float yCometa = 0;

//Each pixel represents 0.0047 AU

void setup() {
  //Initial Screen
  size(1280, 720);
  background(0);
  //Sun
  fill(#FF8E03);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 80, 80);
  //Earth Orbit
  noFill();
  stroke(#AA0000);
  ellipse(width/2+4, height/2, 213*2, 213*2);
  //Cometa Orbit
  stroke(#0000BB);
  ellipse(width/2-262, height/2, 338*2, 213*2);
  //Cometa
  noStroke();
  fill(#03DBFF);
  ellipse(width/2-600, height/2, 10, 10);
  //Earth
  fill(#06C42A);
  ellipse(width/2+216, height/2, 30, 30);
  //Text
  fill(255);
  textSize(40);
  text("Time:", 1050, 550);
}

void draw() {
  background(0);
  //Text
  fill(255);
  text("Time:", 860, 630);
  //Sun
  fill(#FF8E03);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 80, 80);
  //Earth Orbit
  noFill();
  stroke(#AA0000);
  ellipse(width/2+4, height/2, 213*2, 213*2);
  //Cometa Orbit
  stroke(#0000BB);
  ellipse(width/2-262, height/2, 338*2, 213*2);
  orbitEarth();
  orbitCometa();
}

void orbitEarth() {
  noStroke();
  float x = width/2+4 + cos(angle)*213;
  float y = height/2 + sin(angle)*213;
  //Earth
  fill(#06C42A);
  ellipse(x, y, 30, 30);
  angle += PI/speed;
  time += 1/(speed*2);
  fill(255);
  text(time, 960, 630);
  text("years", 1150, 630);
}

void orbitCometa() {
  noStroke();
  //Cometa
  fill(#03DBFF);
  println(xCometa);
  if (xCometa<=11 || xCometa<449 && xCometa >438) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.4;
    yCometa += (1/(speed/112.5))*0.4;
  } else if (xCometa<=22 && xCometa>11 || xCometa<438 && xCometa >427) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.5;
    yCometa += (1/(speed/112.5))*0.5;
  } else if (xCometa<=33 && xCometa>22|| xCometa<427 && xCometa >416) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.6;
    yCometa += (1/(speed/112.5))*0.6;
  } else if (xCometa<=45 && xCometa>33 || xCometa<416 && xCometa >405) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.7;
    yCometa += (1/(speed/112.5))*0.7;
  } else if (xCometa<=56 && xCometa>45 || xCometa<405 && xCometa >394) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.75;
    yCometa += (1/(speed/112.5))*0.75;
  } else if (xCometa<=67 && xCometa>56 || xCometa<394 && xCometa >383) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.8;
    yCometa += (1/(speed/112.5))*0.8;
  } else if (xCometa<=78 && xCometa>67 || xCometa<383 && xCometa >372) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.85;
    yCometa += (1/(speed/112.5))*0.85;
  } else if (xCometa<=89 && xCometa>78 || xCometa<372 && xCometa >361) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.9;
    yCometa += (1/(speed/112.5))*0.9;
  } else if (xCometa<=100 && xCometa>89 || xCometa<361 && xCometa >350) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*0.95;
    yCometa += (1/(speed/112.5))*0.95;
  } else if (xCometa<=111 && xCometa>100 || xCometa<350 && xCometa >329) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.15;
    yCometa += (1/(speed/112.5))*1.15;
  } else if (xCometa<=122 && xCometa>111|| xCometa<329 && xCometa >318) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.3;
    yCometa += (1/(speed/112.5))*1.3;
  } else if (xCometa<=133 && xCometa>122 || xCometa<318 && xCometa >307) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.5;
    yCometa += (1/(speed/112.5))*1.5;
  } else if (xCometa<=144 && xCometa>133 || xCometa<307 && xCometa >296) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.55;
    yCometa += (1/(speed/112.5))*1.55;
  } else if (xCometa<=155 && xCometa>144 || xCometa<296 && xCometa >285) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.7;
    yCometa += (1/(speed/112.5))*1.7;
  } else if (xCometa<=166 && xCometa>155 || xCometa<285 && xCometa >274) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.8;
    yCometa += (1/(speed/112.5))*1.8;
  } else if (xCometa<=177 && xCometa>166 || xCometa<274 && xCometa >263) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.87;
    yCometa += (1/(speed/112.5))*1.87;
  } else if (xCometa<=188 && xCometa>177 || xCometa<263 && xCometa >252) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*1.95;
    yCometa += (1/(speed/112.5))*1.95;
  } else if (xCometa<=200 && xCometa>188 || xCometa<252 && xCometa >241) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*2;
    yCometa += (1/(speed/112.5))*2;
  } else if (xCometa<=211 && xCometa>200 || xCometa<241 && xCometa >230) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*2.15;
    yCometa += (1/(speed/112.5))*2.15;
  } else if (xCometa<=230 && xCometa>211) {
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
    xCometa += (1/(speed/112.5))*2.3;
    yCometa += (1/(speed/112.5))*2.3;
  } else {
    xCometa = 0;
    yCometa = 0;
    ellipse(elipseXPoints[int(xCometa)], elipseYPoints[int(yCometa)], 10, 10);
  }
}
