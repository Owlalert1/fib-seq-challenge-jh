var recursive_fib = function (n) {
  if (n===1) 
  {
    return [0, 1];
  } 
  else 
  {
    var s = recursive_fib(n - 1);
    s.push(s[s.length - 1] + s[s.length - 2]);
    return s;
  }
};

 console.log(recursive_fib(35));

 var iterative_fib = function(n) {
  let arr = [0, 1];
  for (let i = 2; i < n + 1; i++){
    arr.push(arr[i - 2] + arr[i -1])
  }
 return arr[n]
};

console.log(iterative_fib(35));