program tstMerge;
  uses sysutils, thingies;
  var
    len,max,i:integer;
    a,b,c:array of integer;
  begin
    len:=StrToInt(ParamStr(1));
    max:=StrToInt(ParamStr(2));
    SetLength(a,len);
    SetLength(b,len);
    SetLength(c,2*len);
    Randomize;
    for i:=0 to len-1 do
      begin
        a[i]:=Random(max);
        write(IntToStr(a[i]),' ');
      end;
    writeln(' ');
    sort(a,len);
    for i:=0 to len-1 do
      begin
        b[i]:=Random(max);
        write(IntToStr(b[i]),' ');
      end;
    writeln(' ');
    sort(b,len);
    merge(a,b,c,len);
    for i:=0 to (2*len-1) do
      begin
        write(IntToStr(c[i]),' ');
      end;
    writeln('');
  end.
