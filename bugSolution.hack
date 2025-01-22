```hack
function foo(x: int): int {
  if (x < 0) {
    throw new Exception("x cannot be negative");
  }
  return x + 1;
}

function bar(x: int): int {
  try {
    return foo(x) * 2;
  } catch (Exception $e) {
    echo "Error: ", $e->getMessage(), "\n";
    return 0; // Or handle the error in some other way
  }
}

function main(): void {
  echo bar(5); // This will print 12
  echo bar(-5); // This will print "Error: x cannot be negative" and 0
}
```