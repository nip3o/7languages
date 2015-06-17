-module(one).
-export([count_to_ten/0]).
-export([print/1]).

count_to(1) -> io:format("1~n");
count_to(N) -> count_to(N - 1), io:format("~w~n", [N]).

count_to_ten() -> count_to(10).


print(success) -> io:fwrite("success\n");
print({error, Message}) -> io:format("error: ~s\n", [Message]).
