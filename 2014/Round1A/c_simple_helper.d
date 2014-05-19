import std.stdio;
import std.conv;
import std.string;
import std.range;
import std.array;
import std.algorithm;
import std.bigint;
import std.random;

int fun(int[] a){
  int score=0;
  foreach(i; iota(0, a.length)){
    if(a[i] <= i){
      score++;
    }
  }
  return score;
}

void main(){
  static const int n = 1000;

  BigInt sum = 0;
  foreach(_; iota(0,100)){
    int[] a = array(iota(0,n));
    foreach(k; iota(0, n)){
      auto p = uniform(0, n);
      swap(a[k], a[p]);
    }
    sum += fun(a);
  }

  writeln(sum / 100); // 472
}
