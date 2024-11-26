:- consult('manager.pl').

%test set 1
:- writeln('1/ Who is Alice\'s manager?'), 
   (manager(P, alice) -> writeln(P); writeln('No result')). 

:- writeln('2/ Who is Diana\'s manager?'), 
   (manager(P, diana) -> writeln(P); writeln('No result')). 

:- writeln('3/ Is Grace the manager of Frank?'), 
   (manager(grace, frank) -> writeln('true'); writeln('false')). 

%test set 2
:- writeln('4/ Who is Charlie\'s indirect manager?'), 
   (indirect_manager(P, charlie) -> writeln(P); writeln('No result')). 

:- writeln('5/ Who is Isaac\'s indirect manager?'), 
   (indirect_manager(P, isaac) -> writeln(P); writeln('No result')). 

:- writeln('6/ Is Alice an indirect manager of Eve?'), 
   (indirect_manager(alice, eve) -> writeln('true'); writeln('false')).

% Test set 3
:- writeln('7/ Is Alice on probation?'), 
   (in_training(alice, P) -> format('true and she is in ~w~n', [P]); writeln('false')).

:- writeln('8/ Is Grace in_training?'), 
   (in_training(grace, P) -> format('true and she is in ~w~n', [P]); writeln('false')).

:- writeln('9/ Who is in training in leadership?'), 
   (in_training(P, leadership) -> writeln(P); writeln('false')).

%test set 4
:- writeln('10/ Who are all supervisors of Charlie?'), 
   (all_supervisors(charlie, List) -> writeln(List); writeln('No result')). 

:- writeln('11/ Who are all supervisors of Isaac?'), 
   (all_supervisors(isaac, List) -> writeln(List); writeln('No result')). 

:- writeln('12/ Does Charlie have any supervisor?'), 
   (all_supervisors(charlie, List), List \= [] -> writeln('true'); writeln('false')). 

%test set 5
:- writeln('13/ What department does Alice belong to?'), 
   (department(alice, Dept) -> writeln(Dept); writeln('No result')). 

:- writeln('14/ What department does Grace belong to?'), 
   (department(grace, Dept) -> writeln(Dept); writeln('No result')). 

:- writeln('15/ Is Bob in the Finance department?'), 
   (department(bob, finance) -> writeln('true'); writeln('false')). 

%test set 6
:- writeln('16/ What project is Diana in?'), 
   (project(diana, Prj) -> writeln(Prj); writeln('No result')). 

:- writeln('17/ What project is Karen in?'), 
   (project(karen, Prj) -> writeln(Prj); writeln('No result')). 

:- writeln('18/ Is Eve part of Project C?'), 
   (project(eve, project_c) -> writeln('true'); writeln('false')). 

%test set 7
:- writeln('19/ What role does Frank have?'), 
   (role(frank, R) -> writeln(R); writeln('No result')). 

:- writeln('20/ What role does Isaac have?'), 
   (role(isaac, R) -> writeln(R); writeln('No result')). 

:- writeln('21/ Is Diana a Lead Developer?'), 
   (role(diana, lead_developer) -> writeln('true'); writeln('false')). 

%test set 8
:- writeln('22/ Who leads the project a?'), 
   (lead_prj(project_a, Lead) -> writeln(Lead); writeln('No result')). 

:- writeln('23/ Who leads the project b?'), 
   (lead_prj(project_b, Lead) -> writeln(Lead); writeln('No result')). 

:- writeln('24/ Is Frank the leader of the project_c?'), 
   (lead_prj(project_c, frank) -> writeln('true'); writeln('false')). 

%test set 9
:- writeln('25/ Is Charlie a colleague of Bob?'), 
   (colleague(charlie, bob) -> writeln('true'); writeln('false')). 

:- writeln('26/ Is Grace a colleague of Nora?'), 
   (colleague(grace, nora) -> writeln('true'); writeln('false')). 

:- writeln('27/ Who are Diana\'s colleagues?'), 
   (colleague(diana, P) -> writeln(P); writeln('No result')). 


%test set 10
:- writeln('28/ Is Alice in the same department as Bob?'), 
   (same_department(alice, bob) -> writeln('true'); writeln('false')). 

:- writeln('29/ Is Grace in the same department as Karen?'), 
   (same_department(grace, karen) -> writeln('true'); writeln('false')). 

:- writeln('30/ Who is in the same department as Charlie?'), 
   (same_department(charlie, P) -> writeln(P); writeln('No result')).

%test set 11
:- writeln('31/ Is Alice in the same project as Grace?'), 
   (same_project(alice, grace) -> writeln('true'); writeln('false')). 

:- writeln('32/ Is Bob in the same project as Karen?'), 
   (same_project(bob, karen) -> writeln('true'); writeln('false')). 

:- writeln('33/ Who is in the same project as Diana?'), 
   (same_project(diana, P) -> writeln(P); writeln('No result')). 

%test set 12
:- writeln('34/ Is Frank in the same office as Nora?'), 
   (same_office(frank, nora) -> writeln('true'); writeln('false')). 

:- writeln('35/ Is Charlie in the same office as Eve?'), 
   (same_office(charlie, eve) -> writeln('true'); writeln('false')). 

:- writeln('36/ Who works in the same office as Karen?'), 
   (same_office(karen, P) -> writeln(P); writeln('No result')). 


%test set 13
:- writeln('37/ Is Alice a role colleague of Grace?'), 
   (role_colleague(alice, grace) -> writeln('true'); writeln('false')). 

:- writeln('38/ Is Bob a role colleague of Frank?'), 
   (role_colleague(bob, frank) -> writeln('true'); writeln('false')). 

:- writeln('39/ Who shares the same role as Diana?'), 
   (role_colleague(diana, P) -> writeln(P); writeln('No result')). 


%test set 14
:- writeln('40/ Where does Charlie work?'), 
   (office(charlie, Office) -> writeln(Office); writeln('No result')). 

:- writeln('41/ Where does Grace work?'), 
   (office(grace, Office) -> writeln(Office); writeln('No result')). 

:- writeln('42/ Does Bob work at Office 1?'), 
   (office(bob, office1) -> writeln('true'); writeln('false')). 

%test set 15
:- writeln('43/ Are Office 1 and Office 2 connected?'), 
   (connected(office1, office2) -> writeln('true'); writeln('false')). 

:- writeln('44/ Are Office 2 and Office 3 connected?'), 
   (connected(office2, office3) -> writeln('true'); writeln('false')). 

:- writeln('45/ Are Office 3 and Office 4 connected?'), 
   (connected(office3, office4) -> writeln('true'); writeln('false')). 


%test set 16
:- writeln('46/ Who is the lead of Department Information technology?'), 
   (lead_department(it, Lead) -> writeln(Lead); writeln('No result')). 

:- writeln('47/ Who is the lead of Department Sales?'), 
   (lead_department(sales, Lead) -> writeln(Lead); writeln('No result')). 

:- writeln('48/ Who is the lead of Department Marketing?'), 
   (lead_department(marketing, Lead) -> writeln(Lead); writeln('No result')). 

%test set 17
:- writeln('49/ Can Charlie meet Bob?'), 
   (can_meet(charlie, bob) -> writeln('true'); writeln('false')). 

:- writeln('50/ Can Alice meet Frank?'), 
   (can_meet(alice, frank) -> writeln('true'); writeln('false')). 

:- writeln('51/ Can Karen meet Grace?'), 
   (can_meet(karen, grace) -> writeln('true'); writeln('false')). 

%test set 18
:- writeln('52/ Does Charlie have a supervisor?'), 
   (has_supervisor(charlie) -> writeln('true'); writeln('false')). 

:- writeln('53/ Does Bob have a supervisor?'), 
   (has_supervisor(bob) -> writeln('true'); writeln('false')). 

:- writeln('54/ Does Eve have a supervisor?'), 
   (has_supervisor(eve) -> writeln('true'); writeln('false')). 


%test set 19
:- writeln('55/ Does Alice have subordinates?'), 
   (has_subordinates(alice) -> writeln('true'); writeln('false')). 

:- writeln('56/ Does Diana have subordinates?'), 
   (has_subordinates(diana) -> writeln('true'); writeln('false')). 

:- writeln('57/ Does Karen have subordinates?'), 
   (has_subordinates(karen) -> writeln('true'); writeln('false')). 

%test set 20
:- writeln('58/ Is Alice part of multiple departments?'), 
   (multi_department_employee(alice) -> writeln('true'); writeln('false')). 

:- writeln('59/ Is Grace part of multiple departments?'), 
   (multi_department_employee(grace) -> writeln('true'); writeln('false')). 

:- writeln('60/ Is Diana part of multiple departments?'), 
   (multi_department_employee(diana) -> writeln('true'); writeln('false')). 


%test set 21
:- writeln('61/ Is Alice working at multiple offices?'), 
   (multi_office_employee(alice) -> writeln('true'); writeln('false')). 

:- writeln('62/ Is Frank working at multiple offices?'), 
   (multi_office_employee(frank) -> writeln('true'); writeln('false')). 

:- writeln('63/ Is Grace working at multiple offices?'), 
   (multi_office_employee(grace) -> writeln('true'); writeln('false')). 

%test set 22
:- writeln('64/ What is Alice\'s hierarchy level?'), 
   (hierarchy_level(alice, Level) -> writeln(Level); writeln('No result')). 

:- writeln('65/ What is Bob\'s hierarchy level?'), 
   (hierarchy_level(bob, Level) -> writeln(Level); writeln('No result')). 

:- writeln('66/ What is Diana\'s hierarchy level?'), 
   (hierarchy_level(diana, Level) -> writeln(Level); writeln('No result')). 

%test set 23
:- writeln('67/ Who is on the project team of Project A?'), 
   (project_team(project_a, Team) -> writeln(Team); writeln('No result')). 

:- writeln('68/ Who is on the project team of Project B?'), 
   (project_team(project_b, Team) -> writeln(Team); writeln('No result')). 

:- writeln('69/ Who is on the project team of Project C?'), 
   (project_team(project_c, Team) -> writeln(Team); writeln('No result')). 


%test set 24
:- writeln('70/ Who is in the department team of Department it?'), 
   (department_team(it, Team) -> writeln(Team); writeln('No result')). 

:- writeln('71/ Who is in the department team of Department hr?'), 
   (department_team(hr, Team) -> writeln(Team); writeln('No result')). 

:- writeln('72/ Who is in the department team of Department Marketing?'), 
   (department_team(marketing, Team) -> writeln(Team); writeln('No result')). 


%test set 25
:- writeln('73/ Is Alice fired?'), 
   (fired(alice) -> writeln('true'); writeln('false')). 

:- writeln('74/ Is Grace fired?'), 
   (fired(grace) -> writeln('true'); writeln('false')). 

:- writeln('75/ Who is fired?'), 
   (fired(P) -> writeln(P); writeln('false')). 

%test set 26
:- writeln('76/ Who is Alice\'s manager?'), 
   (manager(P, alice) -> writeln(P); writeln('No result')). 

:- writeln('77/ Who is Bob\'s manager?'), 
   (manager(bob, P) -> writeln(P); writeln('No result')). 

:- writeln('78/ Is Grace a manager of Frank?'), 
   (manager(grace, frank) -> writeln('true'); writeln('false')). 


%test set 27
:- writeln('79/ Is Alice part_time_employee?'), 
   (part_time_employee(alice) -> writeln('true'); writeln('false')). 

:- writeln('80/ Is Grace part_time_employee?'), 
   (part_time_employee(grace) -> writeln('true'); writeln('false')). 

:- writeln('81/ Who is part_time_employee?'), 
   (part_time_employee(P) -> writeln(P); writeln('false')). 


%test set 28
:- writeln('82/ Who are all subordinates of Alice?'), 
   (all_subordinates(alice, List) -> writeln(List); writeln('No result')). 

:- writeln('83/ Who are all subordinates of Frank?'), 
   (all_subordinates(frank, List) -> writeln(List); writeln('No result')). 

:- writeln('84/ Who are all subordinates of Grace?'), 
   (all_subordinates(grace, List) -> writeln(List); writeln('No result')). 

%test set 29
:- writeln('85/ Is Alice on probation?'), 
   (on_probation(alice) -> writeln('true'); writeln('false')). 

:- writeln('86/ Is Grace on_probation?'), 
   (on_probation(grace) -> writeln('true'); writeln('false')). 

:- writeln('87/ Who is on_probation?'), 
   (on_probation(P) -> writeln(P); writeln('false')). 

%test set 30
:- writeln('88/ What is budget of hr department?'), 
   (department_budget(hr,B) -> writeln(B); writeln('no information')). 

:- writeln('89/ Which department get the budget is 200.000$?'), 
   (department_budget(F,200000) -> writeln(F); writeln('no information')). 

:- writeln('90/ Is marketing department has 180.000$ budget?'), 
   (department_budget(marketing,120000) -> writeln('true'); writeln('false')). 

