recursiveFibonacci := method(n,
    if(n <= 2,
        1,
        recursiveFibonacci(n - 2) + recursiveFibonacci(n - 1)
    )
)
recursiveFibonacci(8) println


iterativeFibonacci := method(n,
    series := list(1, 1)
    for(i, 2, n,
        series append((series at(i - 2)) + (series at(i - 1)))
    )
    series at(n - 1)
)
iterativeFibonacci(8) println


Number / := method(x, y,
    if(y == 0, 0, x + y)
)

13/5 println
14/0 println

