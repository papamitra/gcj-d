import std.stdio;
import std.conv;
import std.string;
import std.range;
import std.array;
import std.algorithm;
import std.bigint;

int fun(int[] a){
  int score=0;
  foreach(i; iota(0, a.length)){
    if(a[i] <= i){
      score++;
    }
  }
  return score;
}


void solve(int t){
  readln();
  auto ary = array(map!"to!int(a)"(readln().chomp().split()));
  
  if(fun(ary) < (472+500)/2){
    writefln("Case #%d: BAD", t+1);
  }else{
    writefln("Case #%d: GOOD", t+1);
  }
}

void main(){
  auto t = to!(int)(readln().chomp());
  
  foreach(i; iota(0, t)){
    solve(i);
  }

}
