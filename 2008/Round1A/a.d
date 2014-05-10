import std.stdio;
import std.conv;
import std.string;
import std.range;
import std.array;
import std.algorithm;
import std.bigint;

void solve(int i){
  auto n = to!(int)(chomp(readln()));
  
  auto x = array(map!(a => BigInt(to!(int)(a)))(readln().chomp().split()));
  auto y = array(map!(a => BigInt(to!(int)(a)))(readln().chomp().split()));

  sort!"a<b"(x);
  sort!"a>b"(y);

  auto prod = new BigInt[n];
  foreach(j; iota(0,n)){
    prod[j] = x[j] * y[j];
  }
  auto sum = reduce!"a+b"(prod);
  
  writefln("Case #%d: %d", i+1, sum);
}

void main(){
  auto caseNum = to!(int)(readln().chomp());

  foreach(i; iota(0, caseNum)){
    solve(i);
  }

}
