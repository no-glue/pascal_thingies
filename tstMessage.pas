program tstMessage;
  uses sysutils, thingies;
  var
    a:integer;
  begin
    a:=StrToInt(ParamStr(1));
    message(a);
    writeln('');
  end.
