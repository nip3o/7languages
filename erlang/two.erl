-module (two).
-export ([get/2, matching_get/2, total_price/1]).

get(Needle, List) -> lists:last([Item || {Key, Item} <- List, Key == Needle]).

matching_get(Needle, [{Needle, Item}|_]) -> Item;
matching_get(Needle, [_|Tail]) -> matching_get(Needle, Tail).

total_price(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
