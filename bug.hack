```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  echo bar(5);
}
```
This code will produce unexpected results if `foo` function throws an exception. The `bar` function does not handle this case which might lead to program crashes. 

Another example of this bug can be seen in asynchronous operations.  If `foo` was an asynchronous function and `bar` didn't handle potential errors or rejections, this would lead to unhandled promise rejections.