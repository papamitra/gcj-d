import std.stdio;
import std.conv;
import std.string;
import std.range;
import std.array;
import std.algorithm;
import std.bigint;

int helper(uint[] ary){
  ulong len = ary.length;
  if(len == 2){
    return 0;
  }

  ulong mid = len / 2;
  return 1 + max(helper(ary[0..mid+1]), helper(ary[mid..$]));
}

void solve(int i){
  
  auto lpc = map!"to!(int)(a)"(readln().chomp().split());
  auto l = lpc[0];
  auto p = lpc[1];
  auto c = lpc[2];

  uint[] ary = [l];
  do{
    l *= c;
    ary ~= l;
  }while(l < p);

  writefln("Case #%d: %d", i+1, helper(ary));
}

void main(){
  auto t = to!(int)(readln().chomp());
  
  foreach(i; iota(0, t)){
    solve(i);
  }

}
