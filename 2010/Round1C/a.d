import std.stdio;
import std.conv;
import std.string;
import std.range;
import std.array;
import std.algorithm;
import std.bigint;

void solve(int i){
  
  auto n = to!(int)(readln().chomp());

  int[][] wires;
  foreach(j; iota(0,n)){
    wires ~= array(map!"to!(int)(a)"(readln().chomp().split()));
  }

  int inter=0;
  foreach(w1; wires){
    auto w1l = w1[0];
    auto w1r = w1[1];
    foreach(w2; wires){
      auto w2l = w2[0];
      auto w2r = w2[1];
      if(w1l < w2l && w1r > w2r){
	inter++;
      }
    }
  }
  writefln("Case #%d: %d", i+1, inter);
}

void main(){
  auto t = to!(int)(readln().chomp());
  
  foreach(i; iota(0, t)){
    solve(i);
  }

}
