:- consult('royal.pl').

% Test Set 1: parent
:- writeln('1/ Who is Queen Elizabeth II\'s parent?'),
   (parent(Parent, 'elizabeth') -> writeln(Parent); writeln('No result')).

:- writeln('2/ Who are the children of Charles?'),
   (parent('charles', Child) -> writeln(Child); writeln('No result')).

:- writeln('3/ Is Anne a parent of Peter Phillips?'),
   (parent('anne', 'peter_phillips') -> writeln('true'); writeln('false')).

% Test Set 2: deceased
:- writeln('1/ Who is deceased among the British Royal family?'),
   (deceased(Person) -> writeln(Person); writeln('No result')).

:- writeln('2/ Is Philip Duke deceased?'),
   (deceased('philip_duke') -> writeln('true'); writeln('false')).

:- writeln('3/ Who die except Charles?'),
   (forall((deceased(Person), Person \= 'charles'), writeln(Person)) -> true; writeln('No result')).

% Test Set 3: male
:- writeln('1/ Is Anne a male?'),
   (male('anne') -> writeln('true'); writeln('false')).

:- writeln('2/ Is George a male?'),
   (male('george') -> writeln('true'); writeln('false')).

:- writeln('3/Is Charles a male??'),
   (male('charles') -> writeln('true'); writeln('false')).

% Test Set 4: married
:- writeln('1/ Who is married to Queen Elizabeth II?'),
   (married('elizabeth', Spouse) -> writeln(Spouse); writeln('No result')).

:- writeln('2/ Is Diana married to Charles?'),
   (married('diana', 'charles') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all married couples in the royal family?'),
   findall((Person1, Person2), married(Person1, Person2), MarriedCouples),
   (MarriedCouples \= [] -> writeln(MarriedCouples); writeln('No result')).

% Test Set 5: female
:- writeln('1/  Is Lucas a female?'),
   (female('lucas') -> writeln('true'); writeln('false')).

:- writeln('2/ Is Meghan Duchess a female?'),
   (female('meghan_duchess') -> writeln('true'); writeln('false')).

:- writeln('3/ Is Elizabeth a female?'),
   (female('elizabeth') -> writeln('true'); writeln('No result')).

% Test Set 6: divorced
:- writeln('1/ Who has divorced in the British Royal family?'),
   findall((Person1, Person2), divorced(Person1, Person2), DivorcedCouples),
   (DivorcedCouples \= [] -> writeln(DivorcedCouples); writeln('No result')).

:- writeln('2/ Is Charles divorced from Diana?'),
   (divorced('charles', 'diana') -> writeln('true'); writeln('false')).

:- writeln('3/ Who is anne divorced with?'),
   (divorced(ExHuband, 'anne') -> writeln(ExHuband); writeln('No result')).

% Test Set 7: husband
:- writeln('1/ Who is the husband of Meghan Duchess?'),
   (husband(Husband, 'meghan_duchess') -> writeln(Husband); writeln('No result')).

:- writeln('2/ Is Peter Phillips a husband?'),
   (husband('peter_phillips', Wife) -> writeln(Wife); writeln('No result')).

:- writeln('3/ Who are all husbands in the royal family?'),
   findall((Person1,Person2), husband(Person1, Person2), Husbands),
   (Husbands \= [] -> writeln(Husbands); writeln('No result')).

% Test Set 8: wife
:- writeln('1/ Who is the wife of Charles?'),
   (wife(Wife, 'charles') -> writeln(Wife); writeln('No result')).

:- writeln('2/ Is Diana a wife of Charles?'),
   (wife('diana', 'charles') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all wives in the royal family?'),
    findall((Person1,Person2), wife(Person1, Person2), Wifes),
   (Wifes \= [] -> writeln(Wifes); writeln('No result')).

% Test Set 9: sibling
:- writeln('1/ Who are the siblings of Charles?'),
   (sibling('charles', Sibling) -> writeln(Sibling); writeln('No result')).

:- writeln('2/ Are Anne and Andrew siblings?'),
   (sibling('anne', 'andrew_duke') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are the siblings of Elizabeth?'),
   (sibling('elizabeth', Sibling) -> writeln(Sibling); writeln('No result')).

% Test Set 10: grandparent
:- writeln('1/ Who is the grandparent of George?'),
   (grandparent(GP, 'george') -> writeln(GP); writeln('No result')).

:- writeln('2/ Is Elizabeth a grandparent?'),
   (grandparent('elizabeth', Grandchild) -> writeln(Grandchild); writeln('No result')).

:- writeln('3/ Who are all grandparents in the royal family?'),
    findall((Person1,Person2), grandparent(Person1, Person2), Grandparents),
   (Grandparents \= [] -> writeln(Grandparents); writeln('No result')).

% Test Set 11: grandchild
:- writeln('1/ Who are the grandchildren of Anne?'),
   (grandchild(GC, 'anne') -> writeln(GC); writeln('No result')).

:- writeln('2/ Is Charlotte a grandchild of Charles?'),
   (grandchild('charlotte', 'charles') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are the grandchildren of Diana?'),
   (grandchild(GC, 'diana') -> writeln(GC); writeln('No result')).

% Test Set 12: aunt
:- writeln('1/ Who is the aunt of William?'),
   (aunt(Aunt, 'william_duke') -> writeln(Aunt); writeln('No result')).

:- writeln('2/ Is Anne an aunt to any of Charles\' children?'),
   (aunt('anne', NieceNephew) -> writeln(NieceNephew); writeln('No result')).

:- writeln('3/ Who are the aunts in the royal family?'),
   findall((Person1,Person2), aunt(Person1, Person2), Aunts),
   (Aunts \= [] -> writeln(Aunts); writeln('No result')).

% Test Set 13: uncle
:- writeln('1/ Who is the uncle of Harry?'),
   (uncle(Uncle, 'harry_duke') -> writeln(Uncle); writeln('No result')).

:- writeln('2/ Is Edward Earl an uncle?'),
   (uncle('edward_earl', NieceNephew) -> writeln(NieceNephew); writeln('No result')).

:- writeln('3/ Who are the uncles in the royal family?'),
    findall((Person1,Person2), uncle(Person1, Person2), Uncles),
   (Uncles \= [] -> writeln(Uncles); writeln('No result')).


% Test Set 14: niece
:- writeln('1/ Who is the niece of Andrew Duke?'),
   (niece(Niece, 'andrew_duke') -> writeln(Niece); writeln('No result')).

:- writeln('2/ Is Beatrice a niece?'),
   (niece('beatrice', AuntUncle) -> writeln(AuntUncle); writeln('No result')).

:- writeln('3/ Who are all nieces in the royal family?'),
    findall((Person1,Person2), niece(Person1, Person2), Nieces),
   (Nieces \= [] -> writeln(Nieces); writeln('No result')).


% Test Set 15: nephew
:- writeln('1/ Who is the nephew of Anne?'),
   (nephew(Nephew, 'anne') -> writeln(Nephew); writeln('No result')).

:- writeln('2/ Is Louis a nephew?'),
   (nephew('louis', AuntUncle) -> writeln(AuntUncle); writeln('No result')).

:- writeln('3/ Who are all nephews in the royal family?'),
  findall((Person1,Person2), nephew(Person1, Person2), Nephews),
   (Nephews \= [] -> writeln(Nephews); writeln('No result')).

% Test Set 16: brother
:- writeln('1/ Who are the brothers of William?'),
   (brother('william_duke', Brother) -> writeln(Brother); writeln('No result')).

:- writeln('2/ Is Edward Earl a brother?'),
   (brother('edward_earl', Sibling) -> writeln(Sibling); writeln('No result')).

:- writeln('3/ Who are all the brothers in the royal family?'),
    findall((Person1,Person2), brother(Person1, Person2), Brothers),
   (Brothers \= [] -> writeln(Brothers); writeln('No result')).

% Test Set 17: sister
:- writeln('1/ Who are the sisters of Charles?'),
   (sister('charles', Sister) -> writeln(Sister); writeln('No result')).

:- writeln('2/ Is Anne a sister?'),
   (sister('anne', Sibling) -> writeln(Sibling); writeln('No result')).

:- writeln('3/ Who are all the sisters in the royal family?'),
    findall((Person1,Person2), sister(Person1, Person2), Sisters),
   (Sisters \= [] -> writeln(Sisters); writeln('No result')).


% Test Set 18: grandson
:- writeln('1/ Who are the grandsons of Elizabeth?'),
   (grandson(GS, 'elizabeth') -> writeln(GS); writeln('No result')).

:- writeln('2/ Is George a grandson of Charles?'),
   (grandson('george', 'charles') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all grandsons in the royal family?'),
    findall((Person1,Person2), grandson(Person1, Person2), Grandsons),
   (Grandsons \= [] -> writeln(Grandsons); writeln('No result')).


% Test Set 19: granddaughter
:- writeln('1/ Who are the granddaughters of Elizabeth?'),
   (granddaughter(GD, 'elizabeth') -> writeln(GD); writeln('No result')).

:- writeln('2/ Is Charlotte a granddaughter of Charles?'),
   (granddaughter('charlotte', 'charles') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all granddaughters in the royal family?'),
    findall((Person1,Person2), granddaughter(Person1, Person2), Granddaughters),
   (Granddaughters \= [] -> writeln(Granddaughters); writeln('No result')).


% Test Set 20: grandmother
:- writeln('1/ Who is the grandmother of George?'),
   (grandmother(GM, 'george') -> writeln(GM); writeln('No result')).

:- writeln('2/ Is Elizabeth a grandmother?'),
   (grandmother('elizabeth', Grandchild) -> writeln(Grandchild); writeln('No result')).

:- writeln('3/ Who are all grandmothers in the royal family?'),
    findall((Person1,Person2), grandmother(Person1, Person2), Grandmothers),
   (Grandmothers \= [] -> writeln(Grandmothers); writeln('No result')).


% Test Set 21: grandfather
:- writeln('1/ Who is the grandfather of George?'),
   (grandfather(GF, 'george') -> writeln(GF); writeln('No result')).

:- writeln('2/ Is Philip Duke a grandfather?'),
   (grandfather('philip_duke', GC) -> writeln(GC); writeln('No result')).

:- writeln('3/ Who are all grandfathers in the royal family?'),
    findall((Person1,Person2), grandfather(Person1, Person2), Grandfathers),
   (Grandfathers \= [] -> writeln(Grandfathers); writeln('No result')).


% Test Set 22: child
:- writeln('1/ Who are the children of Elizabeth?'),
   (child(Child, 'elizabeth') -> writeln(Child); writeln('No result')).

:- writeln('2/ Is Harry a child of Charles?'),
   (child('harry_duke', 'charles') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all children in the royal family?'),
    findall((Person1,Person2), child(Person1, Person2), Childs),
   (Childs \= [] -> writeln(Childs); writeln('No result')).


% Test Set 23: son
:- writeln('1/ Who are the sons of Charles?'),
   (son(Son, 'charles') -> writeln(Son); writeln('No result')).

:- writeln('2/ Is Louis a son of William?'),
   (son('louis', 'william_duke') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all sons in the royal family?'),
    findall((Person1,Person2), son(Person1, Person2), Sons),
   (Sons \= [] -> writeln(Sons); writeln('No result')).


% Test Set 24: daughter
:- writeln('1/ Who are the daughters of Charles?'),
   (daughter(Daughter, 'charles') -> writeln(Daughter); writeln('No result')).

:- writeln('2/ Is Charlotte a daughter of William?'),
   (daughter('charlotte', 'william_duke') -> writeln('true'); writeln('false')).

:- writeln('3/ Who are all daughters in the royal family?'),
    findall((Person1,Person2), daughter(Person1, Person2), Daughters),
   (Daughters \= [] -> writeln(Daughters); writeln('No result')).


% Test Set 25: father
:- writeln('1/ Who are the daughters of Charles?'),
   (father(F,'charles') -> writeln(F); writeln('No result')).

:- writeln('2/William is father of charlotte?'),
   (father('william_duke', 'charlotte') -> writeln('true'); writeln('false')).

:- writeln('3/ All dad in the royal family?'),
    findall((Person1,Person2), father(Person1, Person2), Fathers),
   (Fathers \= [] -> writeln(Fathers); writeln('No result')).


% Test Set 26: mother
:- writeln('1/ Who are the mother of Charles?'),
   (mother(M, 'charles') -> writeln(M); writeln('No result')).

:- writeln('2/ Who is mother of sienna_elizabeth_mapelli_mozzi?'),
   (mother(M, 'sienna_elizabeth_mapelli_mozzi') -> writeln(M); writeln('false')).

:- writeln('3/ All mom in the royal family?'),
    findall((Person1,Person2), mother(Person1, Person2), Mothers),
   (Mothers \= [] -> writeln(Mothers); writeln('No result')).










