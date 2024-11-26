% **Quan hệ cấp quản lý**
manager(alice, bob).
manager(bob, charlie).
manager(alice, diana).
manager(diana, eve).
manager(alice, frank).
manager(frank, grace).
manager(grace, hannah).
manager(hannah, isaac).
manager(bob, jack).
manager(jack, karen).
manager(diana, liam).
manager(grace, mike).
manager(hannah, nora).

% **Quan hệ phòng ban**
department(alice, hr).
department(bob, finance).
department(charlie, finance).
department(diana, it).
department(eve, it).
department(frank, marketing).
department(grace, marketing).
department(hannah, sales).
department(isaac, sales).
department(jack, hr).
department(karen, finance).
department(liam, it).
department(mike, marketing).
department(nora, sales).
department(sophia, hr).
department(oliver, it).

% **Quan hệ dự án**
project(alice, project_a).
project(bob, project_b).
project(charlie, project_b).
project(diana, project_c).
project(eve, project_c).
project(frank, project_d).
project(grace, project_d).
project(hannah, project_e).
project(isaac, project_e).
project(karen, project_b).
project(liam, project_f).
project(mike, project_d).
project(nora, project_e).
project(sophia, project_a).
project(oliver, project_f).

% **Vai trò nhân viên**
role(alice, manager).
role(bob, supervisor).
role(charlie, analyst).
role(diana, lead_developer).
role(eve, developer).
role(frank, marketing_head).
role(grace, marketing_specialist).
role(hannah, sales_head).
role(isaac, sales_specialist).
role(jack, recruiter).
role(karen, accountant).
role(liam, system_admin).
role(mike, marketing_specialist).
role(nora, sales_representative).
role(sophia, hr_specialist).
role(oliver, it_support).

% **Trưởng phòng**
lead_department(hr, alice).
lead_department(finance, bob).
lead_department(it, diana).
lead_department(marketing, frank).
lead_department(sales, hannah).

% **Trưởng dự án**
lead_prj(project_a, alice).
lead_prj(project_b, bob).
lead_prj(project_c, diana).
lead_prj(project_d, frank).
lead_prj(project_e, hannah).
lead_prj(project_f, liam).

% **Quan hệ đồng nghiệp**
colleague(bob, charlie).
colleague(diana, eve).
colleague(frank, grace).
colleague(hannah, isaac).
colleague(jack, karen).
colleague(mike, nora).
colleague(sophia, alice).
colleague(oliver, eve).

% **Quan hệ văn phòng**
office(alice, office_1).
office(bob, office_1).
office(charlie, office_2).
office(diana, office_2).
office(eve, office_3).
office(frank, office_3).
office(grace, office_4).
office(hannah, office_4).
office(isaac, office_5).
office(jack, office_1).
office(karen, office_1).
office(liam, office_2).
office(mike, office_3).
office(nora, office_5).
office(sophia, office_1).
office(oliver, office_2).

% **Kết nối văn phòng**
connected(office_1, office_2).
connected(office_2, office_3).
connected(office_3, office_4).
connected(office_4, office_5).
connected(office_1, office_3).

% **Trạng thái nhân viên**
fired(john).
fired(mary).
on_probation(nora).
on_probation(mike).
part_time_employee(charlie).
part_time_employee(isaac).
in_training(diana, leadership).
in_training(grace, marketing_strategy).

% **Ngân sách phòng ban**
department_budget(hr, 100000).
department_budget(finance, 200000).
department_budget(it, 150000).
department_budget(marketing, 120000).
department_budget(sales, 180000).

% **Cấp bậc quản lý**
hierarchy_level(alice, 1).
hierarchy_level(bob, 2).
hierarchy_level(charlie, 3).
hierarchy_level(diana, 2).
hierarchy_level(eve, 3).
hierarchy_level(frank, 2).
hierarchy_level(grace, 3).
hierarchy_level(hannah, 2).
hierarchy_level(isaac, 3).

% **Đội dự án**
project_team(project_a, [alice, sophia]).
project_team(project_b, [bob, charlie, karen]).
project_team(project_c, [diana, eve]).
project_team(project_d, [frank, grace, mike]).
project_team(project_e, [hannah, isaac, nora]).
project_team(project_f, [liam, oliver]).

% **Đội phòng ban**
department_team(hr, [alice, jack, sophia]).
department_team(finance, [bob, charlie, karen]).
department_team(it, [diana, eve, liam, oliver]).
department_team(marketing, [frank, grace, mike]).
department_team(sales, [hannah, isaac, nora]).

% **Predicate bổ trợ**

% Tìm cấp trên gián tiếp
indirect_manager(P1, P3) :- 
    manager(P1, P2), 
    (manager(P2, P3) ; indirect_manager(P2, P3)).

% Tìm tất cả cấp dưới
all_subordinates(P1, Subordinates) :-
    findall(P2, (manager(P1, P2) ; indirect_manager(P1, P2)), Subordinates).

% Tìm tất cả cấp trên
all_supervisors(P1, Supervisors) :-
    findall(P2, (manager(P2, P1) ; indirect_manager(P2, P1)), Supervisors).

% Tìm nhân viên cùng dự án
same_project(P1, P2) :-
    project(P1, Project),
    project(P2, Project),
    P1 \= P2.

% Tìm nhân viên cùng phòng ban
same_department(P1, P2) :-
    department(P1, Department),
    department(P2, Department),
    P1 \= P2.

% Tìm nhân viên cùng văn phòng
same_office(P1, P2) :-
    office(P1, Office),
    office(P2, Office),
    P1 \= P2.

% Tìm nhân viên cùng vai trò
role_colleague(P1, P2) :-
    role(P1, Role),
    role(P2, Role),
    P1 \= P2.

% Nhân viên làm việc tại nhiều phòng ban
multi_department_employee(P) :-
    findall(Dept, department(P, Dept), Depts),
    length(Depts, Count),
    Count > 1.

% Nhân viên làm việc tại nhiều văn phòng
multi_office_employee(P) :-
    findall(Office, office(P, Office), Offices),
    length(Offices, Count),
    Count > 1.

% Số lượng nhân viên trong phòng ban
department_size(Department, Size) :-
    department_team(Department, Team),
    length(Team, Size).

% Kiểm tra văn phòng có thể đến được
reachable_office(Office1, Office2) :-
    connected(Office1, Office2).
reachable_office(Office1, Office3) :-
    connected(Office1, Office2),
    reachable_office(Office2, Office3).

% Nhân viên có thể gặp nhau
can_meet(P1, P2) :-
    office(P1, Office1),
    office(P2, Office2),
    reachable_office(Office1, Office2).

% Kiểm tra cấp trên
has_supervisor(P) :-
    manager(_, P).

% Kiểm tra cấp dưới
has_subordinates(P) :-
    manager(P, _).

