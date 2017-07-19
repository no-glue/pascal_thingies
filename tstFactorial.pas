program tstFactorial;
  uses sysutils, thingies;
  var
    a,r:integer;
  begin
    a:=StrToInt(ParamStr(1));
    r:=factorial(a);
    write(IntToStr(r));
    writeln('');
  end.
