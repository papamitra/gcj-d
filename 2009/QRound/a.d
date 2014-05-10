import std.stdio;
import std.conv;
import std.string;
import std.range;
import std.array;
import std.algorithm;
import std.bigint;
import std.regex;

void solve(int i, const string[] words){
  auto pattern = readln().chomp().replace("(", "[").replace(")", "]").regex();

  auto filtered = words.filter!(a => !match(a, pattern).empty())();
  writefln("Case #%d: %d", i+1, filtered.array().length);
}

void main(){
  auto fl = array(map!"to!(int)(a)"(readln().chomp().split()));
  auto l = fl[0];
  auto d = fl[1];
  auto n = fl[2];

  string[] words;
  foreach(_; iota(0, d)){
    words ~= readln().chomp();
  }

  foreach(i; iota(0, n)){
    solve(i, words);
  }

}
