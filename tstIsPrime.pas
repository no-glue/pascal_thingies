program tstIsPrime;
  uses sysutils, thingies;
  var
    a,r:integer;
  begin
    a:=StrToInt(ParamStr(1));
    r:=isPrime(a);
    write(IntToStr(r));
    writeln('');
  end.
