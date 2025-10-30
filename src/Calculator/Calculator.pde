// Calculator | Samuel Harmon | 9\25\25
// dont backspace to much...
//I cant figure out how to make the exponents work. expample:2^3
Button[] buttons = new Button[13];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal;
String op;
boolean left;

void setup () {
  size(220, 260);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = "";
  left = true;
  buttons[0] = new Button(30, 75, 35, 35, 'C', #EA55D2, #CE49B8);
  numButtons[0] = new Button(50, 235, 75, 35, '0', #EA55D2, #CE49B8);
  buttons[1] = new Button(110, 235, 35, 35, '.', #EA55D2, #CE49B8);
  numButtons[7] = new Button(30, 115, 35, 35, '7', #EA55D2, #CE49B8);
  numButtons[1] = new Button(30, 155, 35, 35, '4', #EA55D2, #CE49B8);
  numButtons[6] = new Button(30, 195, 35, 35, '1', #EA55D2, #CE49B8);
  numButtons[8] = new Button(70, 115, 35, 35, '8', #EA55D2, #CE49B8);
  numButtons[5] = new Button(70, 155, 35, 35, '5', #EA55D2, #CE49B8);
  numButtons[2] = new Button(70, 195, 35, 35, '2', #EA55D2, #CE49B8);
  numButtons[9] = new Button(110, 115, 35, 35, '9', #EA55D2, #CE49B8);
  numButtons[4] = new Button(110, 155, 35, 35, '6', #EA55D2, #CE49B8);
  numButtons[3] = new Button(110, 195, 35, 35, '3', #EA55D2, #CE49B8);
  buttons[2] = new Button(150, 115, 35, 35, '*', #EA55D2, #CE49B8);
  buttons[3] = new Button(150, 155, 35, 35, '÷', #EA55D2, #CE49B8);
  buttons[4] = new Button(150, 195, 35, 35, '-', #EA55D2, #CE49B8);
  buttons[5] = new Button(150, 235, 35, 35, '+', #EA55D2, #CE49B8);
  buttons[6] = new Button(193, 215, 35, 75, '=', #EA55D2, #CE49B8);
  buttons[7] = new Button(70, 75, 35, 35, '±', #EA55D2, #CE49B8);
  buttons[8] = new Button(193, 155, 35, 35, '√', #EA55D2, #CE49B8);
  buttons[9] = new Button(110, 75, 35, 35, '%', #EA55D2, #CE49B8);
  buttons[10] = new Button(150, 75, 35, 35, '^', #EA55D2, #CE49B8);
  buttons[11] = new Button(193, 75, 35, 35, '<', #EA55D2, #CE49B8);
  buttons[12] = new Button(193, 115, 35, 35, ' ', #EA55D2, #CE49B8);
}

void draw () {
  background(127);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyReleased() {
  println("Key:" + key);
  println("KeyCode" + keyCode);
  if (keyCode == 107) {
    dVal = "0.0";
    left = false;
    op = "+";
  } else if (keyCode == 10) {
    performCalculation();
  } else if (keyCode == 45 || keyCode == 109) {
    dVal = "0.0";
    left = false;
    op = "-";
  } else if (keyCode == 49 || keyCode == 97) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          l = float(dVal);
        } else {
          dVal += "1";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          r = float(dVal);
        } else {
          dVal += "1";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 8 || keyCode == 8) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "<";
          l = float(dVal);
        } else {
          dVal += "<";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "<";
          r = float(dVal);
        } else {
          dVal += "<";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 50 || keyCode == 98) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          l = float(dVal);
        } else {
          dVal += "2";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          r = float(dVal);
        } else {
          dVal += "2";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 51 || keyCode == 99) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          l = float(dVal);
        } else {
          dVal += "3";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          r = float(dVal);
        } else {
          dVal += "3";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 52 || keyCode == 100) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          l = float(dVal);
        } else {
          dVal += "4";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          r = float(dVal);
        } else {
          dVal += "4";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 53 || keyCode == 101) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          l = float(dVal);
        } else {
          dVal += "5";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          r = float(dVal);
        } else {
          dVal += "5";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 54 || keyCode == 102) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          l = float(dVal);
        } else {
          dVal += "6";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          r = float(dVal);
        } else {
          dVal += "6";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          r = float(dVal);
        } else {
          dVal += "7";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 56 || keyCode == 104) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          l = float(dVal);
        } else {
          dVal += "8";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          r = float(dVal);
        } else {
          dVal += "8";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 57 || keyCode == 105) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          l = float(dVal);
        } else {
          dVal += "9";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          r = float(dVal);
        } else {
          dVal += "9";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 96 || keyCode == 48) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          l = float(dVal);
        } else {
          dVal += "0";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          r = float(dVal);
        } else {
          dVal += "0";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 46 || keyCode == 110) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = ".";
          l = float(dVal);
        } else {
          dVal += ".";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = ".";
          r = float(dVal);
        } else {
          dVal += ".";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 88 || keyCode == 106) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "X";
          l = float(dVal);
        } else {
          dVal += "X";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "X";
          r = float(dVal);
        } else {
          dVal += "X";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  } else if (keyCode == 111 || keyCode == 47) {
    if (dVal.length()<12) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "/";
          l = float(dVal);
        } else {
          dVal += "/";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "/";
          r = float(dVal);
        } else {
          dVal += "/";
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  }
}

void mouseReleased() {
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val == '+') {
      dVal = "0.0";
      left = false;
      op = "+";
    } else if (buttons[i].over && buttons[i].val == '=') {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val == '-') {
      dVal = "0.0";
      left = false;
      op = "-";
    } else if (buttons[i].over && buttons[i].val == '*') {
      dVal = "0.0";
      left = false;
      op = "*";
    } else if (buttons[i].over && buttons[i].val == '÷') {
      dVal = "0.0";
      left = false;
      op = "/";
    } else if (buttons[i].over && buttons[i].val == '±') {
      if (left) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == 'C') {
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0";
      op = "";
      left = true;
    } else if (buttons[i].over && buttons[i].val == '.') {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val == '%') {
      if (left) {
        l = l*0.01;
        dVal = str(l);
      } else {
        r = r*0.01;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '<') {
      if (left) {
        dVal = dVal.substring(0, dVal.length() - 1);
        l = float(dVal);
      } else {
        dVal = dVal.substring(0, dVal.length() - 1);
        dVal = str(r);
      }
    }
  }
  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<12) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0.0")) {
          dVal = str(numButtons[i].val);
          l = float(dVal);
        } else {
          dVal += str(numButtons[i].val);
          l = float(dVal);
        }
      } else if (numButtons[i].over && left == false) {
        if (dVal.equals("0.0")) {
          dVal = str(numButtons[i].val);
          r = float(dVal);
        } else {
          dVal += str(numButtons[i].val);
          r = float(dVal);
        }
      }
      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  }
}
void updateDisplay() {
  rectMode(CORNER);
  rect(10, 10, 200, 40, 5);
  fill(0);
  textSize(30);
  textAlign(RIGHT);
  text (dVal, 200, 40);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  } else if (op.equals("√")) {
    result = pow(l, r);
  }
  dVal = str(result);
  l = result;
  left = true;
}
