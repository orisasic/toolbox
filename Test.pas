program Benchmark;

{creative computing benchmark}

 type
  datetimerec = record
    year, month, day, hour, minute, second, dayofweek : integer
   end;

 var
  a, r, s : extended;
  i, n : integer;
  result1, result2 : extended;
  begintime : datetimerec;
  endtime : datetimerec;
  t1, t2 : longint;

begin   {of main program}

 gettime(begintime);
 for n := 1 to 100 do
  begin
    a := n;
   for i := 1 to 10 do
      begin
         a := sqrt(a);
         r := r + random
    end;
    for i := 1 to 10 do
      begin
        a := a * a;
         r := r + random
    end;
    s := s + a
  end;

 result1 := abs(1010 - s / 5);
 result2 := abs(1000 - r);
 gettime(endtime);
 t1 := begintime.hour * 3600 + begintime.minute * 60 +   begintime.second;
 t2 := endtime.hour * 3600 + endtime.minute * 60 +       endtime.second;
 writeln(‘time in seconds=’, t2 - t1);
 writeln(‘ accuracy=’, result1 : 20 : 18);
 writeln(‘ random=’, result2 : 20 : 18);

end.
