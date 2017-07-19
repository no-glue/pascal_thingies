unit thingies;
  interface
    function factorial(a:integer):integer;
    function isPrime(a:integer):integer;
    procedure message(a:integer);
    procedure merge(a,b,c:pinteger;n:integer);
    procedure sort(a:pinteger;n:integer);
  implementation
    function factorial(a:integer):integer;
    begin
      if a=0 then factorial:=1
      else factorial:=a*factorial(a-1);
    end;
    function isPrime(a:integer):integer;
    var
      i:integer;
    begin
      if (a=0) or (a=1) then isPrime:=0
      else if (a=2) or (a=3) then isPrime:=1
      else
        begin
          i:=2;
          while ((i*i)<=a) do
            begin
              if (a mod i) = 0 then
                begin
                  isPrime:=0;
                  exit;
                end;
              i:=i+1;
            end;
          isPrime:=1;
        end;
    end;
    procedure message(a:integer);
    begin
      if (a mod 15) = 0 then
        write('devops')
      else if (a mod 5) = 0 then
        write('ops')
      else if (a mod 3) = 0 then
        write('dev');
    end;
    procedure merge(a,b,c:pinteger;n:integer);
    var
      i,j,k: integer;
    begin
      i := 0;
      j := 0;
      k := 0;
      while (i < n) and (j < n) do
        begin
          if a[i]<b[j] then
            begin
              c[k]:=a[i];
              i:=i+1;
            end
          else
            begin
              c[k]:=b[j];
              j:=j+1;
            end;
          k:=k+1;
        end;
      while i<n do
        begin
          c[k]:=a[i];
          k:=k+1;
          i:=i+1;
        end;
      while j<n do
        begin
          c[k]:=b[j];
          k:=k+1;
          j:=j+1;
        end;
    end;
    procedure sort(a:pinteger;n:integer);
    var
      i,j,tmp,gap,updates:integer;
    begin
      gap:=n-1;
      updates:=1;
      while updates=1 do
        begin
          if gap>1 then updates:=1
          else
            begin
              updates:=0;
              gap:=1;
            end;
          i:=0;
          for j:=gap to n-1 do
            begin
              if a[i]>a[j] then
                begin
                  tmp:=a[i];
                  a[i]:=a[j];
                  a[j]:=tmp;
                  updates:=1;
                end;
              i:=i+1;
            end;
          gap:=Trunc(gap/1.2);
        end;
    end;
end.
