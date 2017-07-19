program tstFactorial;
  uses sysutils, thingies;
  var
    a,r:integer;
  begin
    a:=IntToStr(ParamStr(1));
    r:=factorial(a);
    write(IntToStr(r));
    writeln('');
  end.
