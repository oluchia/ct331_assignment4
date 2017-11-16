%1
%base case
isElementInList(El,[El|_]).

%recursive case
isElementInList(El, List) :-
    List =  [_|T],
    isElementInList(El, T).


%2
%base case
mergeLists([], X , X). %if L1 is null then return L2 as MList

%recursive case
mergeLists(L1, L2, MList):-
    L1 = [H|T], %
    MList = [H|X],
    mergeLists(T, L2, X).


%3
%base case 1
reverseList([],[]).

%recursive case
reverseList(List, RList):-
    List = [H|T],
    reverseList(T, X),
    mergeLists(X, [H], RList).

%4
%base case
insertElementIntoListEnd(X, [], [X]).

%recursive case
insertElementIntoListEnd(El, List, NList):-
    mergeLists(El, List, NList).
