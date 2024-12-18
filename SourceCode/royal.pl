%bậc 1 (các con của elizabeth và philip_duke).
parent('elizabeth', 'charles').
parent('elizabeth', 'anne').
parent('elizabeth', 'andrew_duke').
parent('elizabeth', 'edward_earl').

parent('philip_duke', 'charles').
parent('philip_duke', 'anne').
parent('philip_duke', 'andrew_duke').
parent('philip_duke', 'edward_earl').
%bậc 2(các con của diana và charles).
parent('diana','william_duke').
parent('diana','harry_duke').

parent('charles','william_duke').
parent('charles','harry_duke').
%bậc 2(các con của anne và mark_phillips).
parent('anne','peter_phillips').
parent('anne','zara_tindall').

parent('mark_phillips','peter_phillips').
parent('mark_phillips','zara_tindall').
%bậc 2(các con của sarah_ferguson và andrew_duke).
parent('sarah_ferguson', 'beatrice').
parent('sarah_ferguson', 'eugenie').

parent('andrew_duke', 'beatrice').
parent('andrew_duke', 'eugenie').
%bậc 2(các con của shopie_countess và edward_earl).
parent('sophie_countess', 'lady_louise').
parent('sophie_countess', 'james_viscount_severn').

parent('edward_earl', 'lady_louise').
parent('edward_earl', 'james_viscount_severn').
%bậc 3(các con của 'beatrice' và edoardo_mapelli_mozzi).
parent('beatrice','sienna_elizabeth_mapelli_mozzi').

parent('edoardo_mapelli_mozzi','sienna_elizabeth_mapelli_mozzi').
%bậc 3(các con của 'eugenie' và jack_brooksbank).
parent('eugenie','august_brooksbank').

parent('jack_brooksbank','august_brooksbank').
%bậc 3(các con của 'catherine_duchess' và william_duke).
parent('catherine_duchess','george').
parent('catherine_duchess','charlotte').
parent('catherine_duchess','louis').

parent('william_duke','george').
parent('william_duke','charlotte').
parent('william_duke','louis').
%bậc 3(các con của 'meghan_duchess' và harry_duke).
parent('meghan_duchess','lilibet_diana').
parent('meghan_duchess','archie_harrison').

parent('harry_duke','lilibet_diana').
parent('harry_duke','archie_harrison').
%bậc 3(các con của autumn phillips).
parent('autumn_phillips','savannah').
parent('autumn_phillips','isla').

parent('peter_phillips','savannah').
parent('peter_phillips','isla').
%bậc 3(các con của 'zara').
parent('zara_tindall','lucas').
parent('zara_tindall','lena').
parent('zara_tindall','mia').

parent('mike_tindall','lucas').
parent('mike_tindall','lena').
parent('mike_tindall','mia').
%giới tính.
male('george').
male('louis').
male('archie_harrison').
male('lucas').
male('william_duke').
male('harry_duke').
male('peter_phillips').
male('mike_tindall').
male('edoardo_mapelli_mozzi').
male('jack_brooksbank').
male('charles').
male('mark_phillips').
male('edward_earl').
male('timothy_laurence').
male('andrew_duke').
male('philip_duke').
male('james_viscount_severn').



female('charlotte').
female('lilibet_diana').
female('savannah').
female('isla').
female('mia').
female('lena').
female('catherine_duchess').
female('meghan_duchess').
female('autumn_phillips').
female('zara_tindall').
female('beatrice').
female('eugenie').
female('lady_louise').
female('camilla_duchess').
female('diana').
female('anne').
female('sarah_ferguson').
female('sophie_countess').
female('elizabeth').

%kết hôn 
married('elizabeth', 'philip_duke'). 
married('charles','diana').
married('anne','mark_phillips').
married('andrew_duke','sarah_ferguson').
married('edward_earl','sophie_countess').
married('beatrice','edoardo_mapelli_mozzi').
married('eugenie','jack_brooksbank').
married('william_duke','catherine_duchess').
married('harry_duke','meghan_duchess').
married('peter_phillips','autumn_phillips').
married('zara_tindall','mike_tindall').
%kết hôn ng mới
married('charles','camilla_duchess').
married('anne','timothy_laurence').
%ghi ngược lại
married( 'philip_duke','elizabeth'). 
married('diana','charles').
married('mark_phillips','anne').
married('sarah_ferguson','andrew_duke').
married('sophie_countess','edward_earl').
married('edoardo_mapelli_mozzi','beatrice').
married('jack_brooksbank','eugenie').
married('catherine_duchess','william_duke').
married('meghan_duchess','harry_duke').
married('autumn_phillips','peter_phillips').
married('mike_tindall','zara_tindall').
%kết hôn ng mới
married('camilla_duchess','charles').
married('timothy_laurence','anne').
%li hôn
divorced('charles','diana').
divorced('anne','mark_phillips').
divorced('andrew_duke','sarah_ferguson').
divorced('peter_phillips','autumn_phillips').
%ghi ngược lại
divorced('diana','charles').
divorced('mark_phillips','anne').
divorced('sarah_ferguson','andrew_duke').
divorced('autumn_phillips','peter_phillips').
%qua đời
deceased('elizabeth').
deceased('philip_duke').
deceased('diana').

%rule
husband(Person, Wife) :- married(Person, Wife), male(Person). 
wife(Person, Husband) :- married(Person, Husband), female(Person). 
father(Parent, Child) :- parent(Parent, Child), male(Parent).
mother(Parent, Child) :- parent(Parent, Child), female(Parent). 
child(Child,Parent):-parent(Parent,Child).
son(Child,Parent):-parent(Parent,Child),male(Child).
daughter(Child,Parent):-parent(Parent,Child),female(Child).

grandparent(GP,GC):-parent(GP,P),parent(P,GC).
grandfather(GF,GC):-grandparent(GF,GC),male(GF).
grandmother(GM,GC):-grandparent(GM,GC),female(GM).

grandchild(GC,GP):-grandparent(GP,GC).
grandson(GS,GP):-grandchild(GS,GP),male(GS).
granddaughter(GD,GP):-grandchild(GD,GP),female(GD).
sibling(Person1,Person2):-father(Father, Person1),  father(Father, Person2), mother(Mother, Person1), mother(Mother, Person2), Person1 \= Person2.
brother(Person,Sibling):-sibling(Person,Sibling),male(Person).
sister(Person,Sibling):-sibling(Person,Sibling),female(Person).
aunt(Person,NieceNephew):-female(Person),parent(Z,NieceNephew),(sister(Person,Z); (brother(U,Z), wife(Person, U))).
uncle(Person,NieceNephew):-male(Person),parent(Z,NieceNephew),(brother(Person,Z); (sister(A,Z), husband(Person, A))).
niece(Person,AuntUncle):-(aunt(AuntUncle, Person); uncle(AuntUncle,Person)),female(Person).
nephew(Person,AuntUncle):-(aunt(AuntUncle, Person); uncle(AuntUncle,Person)),male(Person).


