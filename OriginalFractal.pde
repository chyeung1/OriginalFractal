public void setup(){
size(720, 445);
}

public void draw(){
 fractal(0, 0, 11, 1, 0);
}

public void fractal(int x, int y, int p, int z, int usingAnotherVariableCuzWhyNot){
  color[] c = {color(255, 0, 0), color(255, 127, 0), color(255, 255, 0), 
               color(0, 255, 0), color(0, 127, 255), color(127, 0 ,255), color(255, 0, 255)};
  int size = fibonacci(p) * 5;
  if(usingAnotherVariableCuzWhyNot >= 7)
  usingAnotherVariableCuzWhyNot = 0;
  if(p <= 1){
  fill(c[usingAnotherVariableCuzWhyNot]);
  rect(x, y, size, size);
  }
  else if(z == 1)
  {
   fill(c[usingAnotherVariableCuzWhyNot]);
   rect(x, y, size, size);
   fractal(x + size, y, p - 1, z + 1, usingAnotherVariableCuzWhyNot + 1);
  }
  else if(z == 2)
  {
   fill(c[usingAnotherVariableCuzWhyNot]);
   rect(x, y, size, size);
   fractal(x + fibonacci(p - 2) * 5, y + size, p - 1, z + 1, usingAnotherVariableCuzWhyNot + 1);
  }
  else if(z == 3)
  {
   fill(c[usingAnotherVariableCuzWhyNot]);
   rect(x, y, size, size);
   fractal(x - fibonacci(p - 1) * 5, y + fibonacci(p - 2) * 5, p - 1, size, usingAnotherVariableCuzWhyNot + 1);
  }
  else
  {
    fill(c[usingAnotherVariableCuzWhyNot]);
    rect(x, y, size, size);
    fractal(x, y - fibonacci(p - 1) * 5, p - 1, 1, usingAnotherVariableCuzWhyNot + 1);
  }
}

public int fibonacci(int n){
 if(n <= 1)
 return n;
 return fibonacci(n - 1) + fibonacci(n - 2);
}
