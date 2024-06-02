prompt PL/SQL Developer Export Tables for user C##HR@XE
prompt Created by admin on יום שישי/31/מאי/2024
set feedback off
set define off

prompt Creating GENERAL_MANAGER...
create table GENERAL_MANAGER
(
  gmid    INTEGER not null,
  gmname  VARCHAR2(20) not null,
  phone   INTEGER not null,
  reports VARCHAR2(100) not null
)
;
alter table GENERAL_MANAGER
  add primary key (GMID)
  using index 
  ;

prompt Creating DEPARTMENT...
create table DEPARTMENT
(
  deptname VARCHAR2(20) not null,
  gmid     INTEGER not null
)
;
alter table DEPARTMENT
  add primary key (DEPTNAME)
  using index 
 ;
alter table DEPARTMENT
  add foreign key (GMID)
  references GENERAL_MANAGER (GMID);

prompt Creating DEPARTMENT_MANAGERS...
create table DEPARTMENT_MANAGERS
(
  dmid     INTEGER not null,
  dmname   VARCHAR2(20) not null,
  phone    INTEGER not null,
  reports  VARCHAR2(100) not null,
  deptname VARCHAR2(20) not null
)
;
alter table DEPARTMENT_MANAGERS
  add primary key (DMID)
  using index 
  ;
alter table DEPARTMENT_MANAGERS
  add foreign key (DEPTNAME)
  references DEPARTMENT (DEPTNAME);

prompt Creating EMPLOYEE...
create table EMPLOYEE
(
  emid     INTEGER not null,
  emname   VARCHAR2(20) not null,
  phone    INTEGER not null,
  hours    INTEGER not null,
  deptname VARCHAR2(20) not null
)
;
alter table EMPLOYEE
  add primary key (EMID)
  using index 
  ;
alter table EMPLOYEE
  add foreign key (DEPTNAME)
  references DEPARTMENT (DEPTNAME);

prompt Creating INVENTORY...
create table INVENTORY
(
  itemid   INTEGER not null,
  itemdes  VARCHAR2(100) not null,
  amount   INTEGER not null,
  exdate   DATE not null,
  deptname VARCHAR2(20) not null,
  itemname VARCHAR2(20) not null
)
;
alter table INVENTORY
  add primary key (ITEMID)
  using index 
  ;
alter table INVENTORY
  add foreign key (DEPTNAME)
  references DEPARTMENT (DEPTNAME);

prompt Creating SUPPLIERS...
create table SUPPLIERS
(
  supnum  INTEGER not null,
  supname VARCHAR2(20) not null,
  phone   INTEGER not null,
  type_s  VARCHAR2(20) not null
)
;
alter table SUPPLIERS
  add primary key (SUPNUM)
  using index 
  ;

prompt Creating RESERVATIONS...
create table RESERVATIONS
(
  deptname VARCHAR2(20) not null,
  supnum   INTEGER not null,
  resdate  DATE not null
)
;
alter table RESERVATIONS
  add primary key (DEPTNAME, SUPNUM)
  using index 
  ;
alter table RESERVATIONS
  add foreign key (DEPTNAME)
  references DEPARTMENT (DEPTNAME);
alter table RESERVATIONS
  add foreign key (SUPNUM)
  references SUPPLIERS (SUPNUM);

prompt Disabling triggers for GENERAL_MANAGER...
alter table GENERAL_MANAGER disable all triggers;
prompt Disabling triggers for DEPARTMENT...
alter table DEPARTMENT disable all triggers;
prompt Disabling triggers for DEPARTMENT_MANAGERS...
alter table DEPARTMENT_MANAGERS disable all triggers;
prompt Disabling triggers for EMPLOYEE...
alter table EMPLOYEE disable all triggers;
prompt Disabling triggers for INVENTORY...
alter table INVENTORY disable all triggers;
prompt Disabling triggers for SUPPLIERS...
alter table SUPPLIERS disable all triggers;
prompt Disabling triggers for RESERVATIONS...
alter table RESERVATIONS disable all triggers;
prompt Disabling foreign key constraints for DEPARTMENT...
alter table DEPARTMENT disable constraint SYS_C008458;
prompt Disabling foreign key constraints for DEPARTMENT_MANAGERS...
alter table DEPARTMENT_MANAGERS disable constraint SYS_C008478;
prompt Disabling foreign key constraints for EMPLOYEE...
alter table EMPLOYEE disable constraint SYS_C008471;
prompt Disabling foreign key constraints for INVENTORY...
alter table INVENTORY disable constraint SYS_C008486;
prompt Disabling foreign key constraints for RESERVATIONS...
alter table RESERVATIONS disable constraint SYS_C008463;
alter table RESERVATIONS disable constraint SYS_C008464;
prompt Deleting RESERVATIONS...
delete from RESERVATIONS;
commit;
prompt Deleting SUPPLIERS...
delete from SUPPLIERS;
commit;
prompt Deleting INVENTORY...
delete from INVENTORY;
commit;
prompt Deleting EMPLOYEE...
delete from EMPLOYEE;
commit;
prompt Deleting DEPARTMENT_MANAGERS...
delete from DEPARTMENT_MANAGERS;
commit;
prompt Deleting DEPARTMENT...
delete from DEPARTMENT;
commit;
prompt Deleting GENERAL_MANAGER...
delete from GENERAL_MANAGER;
commit;
prompt Loading GENERAL_MANAGER...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1, 'GM Alice', 1231231234, 'Report 1');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2, 'GM Bob', 2342342345, 'Report 2');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1852919, 'Rascal', 862937042, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5081349, 'Jonatha', 605068215, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3339266, 'Geoffrey', 465016685, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2700983, 'Luke', 270651630, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (656255, 'Domingo', 52513277, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1378224, 'Chad', 588673745, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5688631, 'Hilton', 692761946, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6814041, 'Murray', 979527551, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5526831, 'Fionnula', 92319014, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (764701, 'Sheryl', 626850666, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4322446, 'Carlene', 235633865, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (709740, 'Emma', 647447213, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5768694, 'Ronnie', 586220829, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (144925, 'Loreena', 823709694, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6205889, 'Percy', 850331049, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9500231, 'Trick', 898540865, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8351906, 'Kevin', 303124363, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7682805, 'Scarlett', 432775610, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5657655, 'Christian', 677341171, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4244934, 'Cliff', 225102819, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7287546, 'Mel', 614474317, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2177017, 'Liam', 294487257, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3724956, 'Martin', 678440962, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1325531, 'Cherry', 425091448, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3002705, 'Maura', 931754457, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2436001, 'Machine', 273697541, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7558518, 'Jennifer', 74196219, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1820970, 'Ice', 39629190, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1715495, 'Ruth', 143987609, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6652965, 'Laurie', 697173429, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9787582, 'Miles', 781461801, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (882468, 'Judd', 790502544, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4810038, 'Coley', 55235663, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1780882, 'Gwyneth', 791095951, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7894906, 'Radney', 850881629, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7108503, 'Miriam', 17662070, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8211477, 'Shelby', 822099572, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2907488, 'Bill', 118560200, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3591764, 'Geraldine', 904388685, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1919822, 'Mitchell', 116722393, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1760966, 'Ann', 391219350, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2630288, 'Josh', 17075331, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2192943, 'Ray', 572705016, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8934437, 'Ellen', 976462199, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8590678, 'Keith', 936774073, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (431552, 'Red', 36064562, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1991750, 'Vendetta', 932841729, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3342623, 'Avenged', 416324238, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4498800, 'Irene', 297981882, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2053313, 'Gin', 374365174, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3635002, 'Tony', 945598997, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1281925, 'Beverley', 623915321, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7324534, 'Spike', 416599980, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8872373, 'Gilberto', 317728509, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9498038, 'Melba', 893066052, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9212150, 'Lauren', 592506322, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6323099, 'Ricky', 774424629, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7275297, 'Joanna', 676319973, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3059707, 'Larnelle', 816121191, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3290372, 'Kirk', 558532177, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1540729, 'Jackson', 830791159, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8033418, 'Lea', 222219032, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8277376, 'Goran', 951931771, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8745932, 'Marina', 439091886, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3189674, 'Benicio', 460073957, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5677833, 'Harvey', 126919218, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8961929, 'Nora', 171454214, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9255434, 'Mel', 269448510, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1023199, 'Spencer', 389186477, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7874405, 'Dorry', 398828124, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8152763, 'Stephanie', 416934002, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6317748, 'Geena', 640529173, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3710586, 'Isaac', 635081233, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4798762, 'Phil', 320767404, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7492792, 'Isaiah', 139405683, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8629012, 'Alfred', 136425062, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8212131, 'Harold', 942249803, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8511300, 'Hikaru', 887472776, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6603446, 'Sally', 736192863, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1457628, 'Gavin', 771891425, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9154146, 'Freddy', 220222825, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2332177, 'Forest', 243094020, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (2459670, 'Hugo', 988408215, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6019264, 'Samuel', 429847575, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8203959, 'Franz', 981070003, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (216319, 'Victoria', 118694981, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8764924, 'Mira', 498453472, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8851851, 'Roy', 298876884, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3444914, 'Maureen', 776900100, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6128418, 'Rueben', 269753561, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5326185, 'Ewan', 127519429, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1190591, 'Spencer', 310726791, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8751369, 'Jimmie', 637360943, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3417930, 'Bebe', 913661730, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7428944, 'Meredith', 433085944, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8342947, 'Maureen', 577808793, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3163700, 'Kim', 507139424, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4194078, 'Dave', 167225518, '39');
commit;
prompt 100 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5212210, 'Kirk', 106421940, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9063649, 'Jim', 830698452, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (263297, 'Sinead', 683461493, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8700849, 'Simon', 484165017, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3043505, 'Selma', 410085399, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4929694, 'Bruce', 855635392, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7547566, 'Judd', 253592165, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4691998, 'Illeana', 92614383, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8893868, 'Graham', 615423366, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9715343, 'Jose', 932023301, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5804928, 'Wayman', 532335518, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6806044, 'Mark', 432621834, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3712855, 'Diane', 440071952, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8767122, 'Darius', 269929926, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8489821, 'Geggy', 499534691, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5941271, 'Jesse', 593649649, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (803533, 'Stevie', 485456325, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8378825, 'Jeroen', 447587079, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1097698, 'Kelli', 237571886, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8630730, 'Maureen', 752074172, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5197491, 'Lea', 674290720, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (3, 'Steffen Dawidowicz', 7871019439, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (4, 'Bobinette Petran', 4295803437, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (5, 'Cirstoforo Desaur', 2698247625, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (6, 'Domenico Buckhurst', 2143916162, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (7, 'Ariella Somes', 5003784932, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (8, 'Jacqui Lepard', 3059078076, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (9, 'Darb Davydkov', 3551841597, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (10, 'Bernie Eyeington', 4517502894, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (11, 'Dasha Camp', 5158588195, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (12, 'Gilda Di Pietro', 5567824467, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (13, 'Cassondra Minger', 2677907005, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (14, 'Lethia Faveryear', 6278332126, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (15, 'Lanie Heindl', 6208268583, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (16, 'Beth Eccleston', 1341850958, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (17, 'Alard Lipprose', 3935355018, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (18, 'Nance Linnell', 6234979027, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (19, 'Maurizio Twigge', 8736291676, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (20, 'Kriste Stoney', 1933095991, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (21, 'Betta Goodge', 5243337001, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (22, 'Maye Plumm', 7855755205, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (23, 'Isidoro Odo', 9793576668, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (24, 'Wallis Lilywhite', 8965915487, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (25, 'Gabie Ogus', 9171385764, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (26, 'Galen Ciciari', 1521411883, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (27, 'Glenden Havercroft', 8126316193, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (28, 'Nobie D''Ugo', 8541397274, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (29, 'Frayda Checketts', 7993707656, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (30, 'Ermina Scurrer', 2166383044, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (31, 'Cornie Hatt', 5379657360, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (32, 'Adoree Chatenet', 4074856473, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (33, 'Davidde Geertje', 3578775634, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (34, 'Donovan Henrichs', 2946620442, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (35, 'Marcia Kellart', 3236048992, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (36, 'Doria Veel', 4371563680, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (37, 'Elroy Sarch', 9968099964, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (38, 'Benson Armit', 3838334427, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (39, 'Heidie Willgoose', 9868670838, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (40, 'Kiersten Flanaghan', 3142855521, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (41, 'Muffin Mcmanaman', 2138902511, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (42, 'Bard Gaishson', 8257048366, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (43, 'Petunia Salisbury', 9406175913, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (44, 'Uriel Woodberry', 4728740952, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (45, 'Randall Sawers', 4369991421, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (46, 'Noby Caron', 4592178847, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (47, 'Archibold Coggings', 9532805546, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (48, 'Sharron Pettus', 6959210974, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (49, 'Northrup Charles', 1694478222, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (50, 'Kristoffer Ballard', 2939289711, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (51, 'Ruthy Barthelme', 2861225645, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (52, 'Kimble Stalley', 3129677610, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (53, 'Emmy Linck', 5279251247, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (54, 'Delores Amber', 2039519972, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (55, 'Micky Alaway', 2899140612, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (56, 'Elie Gatehouse', 3552811569, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (57, 'Adah Simkiss', 5796853337, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (58, 'Domini Bentley', 6478241389, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (59, 'Reginald Patrone', 9445795871, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (60, 'Obediah Maydwell', 1295947083, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (61, 'Jacklyn Batchley', 6514822447, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (62, 'Craggie Tullis', 7014994618, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (63, 'Francisco Bichard', 2854973465, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (64, 'Renae Roakes', 5607258209, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (65, 'Kile Holsall', 9471959578, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (66, 'Clayborne Hindrich', 4716568531, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (67, 'Earle Guiu', 2787717054, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (68, 'Llywellyn Vaud', 8626538012, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (69, 'Jen Richings', 3536186385, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (70, 'Erek Miettinen', 2603353564, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (71, 'Morly Burchfield', 2851891346, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (72, 'Herbie Anscombe', 3009945289, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (73, 'Horace Drinkhill', 4869444458, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (74, 'Rouvin Davydychev', 8131515202, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (75, 'Noam Whitney', 5852672263, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (76, 'Hallie Leith-Harvey', 8805091583, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (77, 'Denna Tonner', 8931969525, '23');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (78, 'Gaultiero Simister', 2274254005, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (79, 'Flor Gandy', 2761806768, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (80, 'Cahra Mansell', 3903782562, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (81, 'Alleen Hagley', 8321528380, '62');
commit;
prompt 200 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (82, 'Kaylyn Stinson', 9451950466, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (83, 'Phyllis Redgate', 2471604614, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (84, 'Fritz Longcaster', 3313754360, '53');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (85, 'Margo Maywood', 1573303063, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (86, 'Di Gales', 4527954658, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (87, 'Dru Belfelt', 3453040636, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (88, 'Lisette Berisford', 5408408906, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (89, 'Emmy Plewes', 3473333891, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (90, 'Keefe O''Spillane', 9218517461, '35');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (91, 'Keelia Wrathmall', 6502780372, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (92, 'Kylen Grass', 8954826741, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (93, 'Julienne Sabatier', 6131641539, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (94, 'Annadiana Calbert', 1835274496, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (95, 'Luigi Langman', 4572377331, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (96, 'Marion Elward', 9695932515, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (97, 'Diarmid McGonigle', 5821078664, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (98, 'Amii Joules', 1951683417, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (99, 'Caro Basill', 4042782478, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (100, 'Noam Peploe', 5611199471, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (101, 'Upton Bilsford', 4495269049, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (102, 'Kristo Redwood', 2257457713, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (103, 'Sibyl MacArdle', 7138571925, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (104, 'Renelle Rowley', 9687567964, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (105, 'Almeda Kingsnoad', 7069525157, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (106, 'Land Saxelby', 7726446567, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (107, 'Theo Younge', 3374360977, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (108, 'Brennen McOmish', 4851868787, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (109, 'Cahra Suermeier', 4097256525, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (110, 'Shannen Scogings', 8591362038, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (111, 'Leone Cheeney', 5624933499, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (112, 'Dorree Germann', 4767815244, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (113, 'Berkie Conws', 4179211195, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (114, 'Joell Pococke', 3069475642, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (115, 'Waldo Middlemist', 1168300287, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (116, 'Benedetta Gayforth', 5622106168, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (117, 'Laurent Darrel', 4639965797, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (118, 'Von Ebourne', 4823235711, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (119, 'Nikita Mugleston', 8652295357, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (120, 'Udell Tinker', 3857078624, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (121, 'Stephenie Robinson', 2363966118, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (122, 'Paulita Bourgaize', 3478228904, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (123, 'Mitchell Dadswell', 9632732339, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (124, 'Tildi Reinert', 2024665064, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (125, 'Tonie Wickmann', 2308638307, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (126, 'Hastie Garter', 6633714860, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (127, 'Dorthy Ferrolli', 8957989938, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (128, 'Velvet Sandry', 7841227610, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (129, 'Eldin Beavan', 1765545520, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (130, 'Lise Lambard', 1208984755, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (131, 'Colan Gorger', 2416837549, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (132, 'Xylia Macveigh', 8589414902, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (133, 'Monique Kenafaque', 1709107242, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (134, 'Stefano Eynon', 2588695366, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (135, 'Chico Patty', 5019012698, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (136, 'Daffi Firminger', 9607722374, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (137, 'Yvon Josefer', 7155799667, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (138, 'Jess Cristofalo', 6459840129, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (139, 'Fabio Okenden', 2924962467, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (140, 'Una Staker', 3289894672, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (141, 'Jordan Hixson', 2322146856, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (142, 'Clotilda Bremeyer', 3118910067, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (143, 'Welby Sterland', 8884998244, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (144, 'Rubetta Trazzi', 5857917665, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (145, 'Osmond Peile', 6923573272, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (146, 'Caryn Girvin', 7738409414, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (147, 'Christoforo Triggel', 5295889904, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (148, 'Kipp Remington', 6909748399, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (149, 'Thorsten Scard', 5135308593, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (150, 'Drusi Spivey', 2933076135, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (151, 'Titos Rutigliano', 7822765474, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (152, 'Clarissa Heliot', 1253861316, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (153, 'Chrystel Coche', 4005724552, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (154, 'Libbey Valencia', 1261277882, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (155, 'Jess Giacomozzo', 6077515684, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (156, 'Lurleen Habble', 2157577645, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (157, 'Gilbert Kirckman', 4052629630, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (158, 'Annadiana McCartney', 6249891194, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (159, 'Martita Beaze', 4709307927, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (160, 'Reid Racher', 1909487952, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (161, 'Deck Bowman', 1877567681, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (162, 'Dinny Bonas', 7835228396, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (163, 'Meggie Haggart', 5897114161, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (164, 'Jeddy Pauler', 9519399284, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (165, 'Gray Biffen', 6013660745, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (166, 'Sammie Dodds', 2697216970, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (167, 'Barb Jacklings', 6129708676, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (168, 'Clemmie Dohrmann', 8102862518, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (169, 'Kaiser Keppy', 2209668458, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (170, 'Pearla Denecamp', 6423117395, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (171, 'Dorolisa Champniss', 6799951303, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (172, 'Casie Hutton', 3539227151, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (173, 'Monah Gartsyde', 7933068929, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (174, 'Taddeo Trew', 4604829004, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (175, 'Cassie Bettridge', 3555507233, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (176, 'Hyacinthia Metzing', 3888973169, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (177, 'Leshia Bristow', 5304364309, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (178, 'Olenolin Liggons', 7831058851, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (179, 'Kit Merrick', 5394602607, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (180, 'Ania Fredi', 8813370630, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (181, 'Nickola Hallan', 6879740615, '78');
commit;
prompt 300 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (182, 'Rooney Dolby', 2216446331, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (183, 'Cobb Hutley', 4083670881, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (184, 'Brennen Thorowgood', 6132705943, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (185, 'Melamie Sirkett', 8583342045, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (186, 'Roxine Kightly', 6483722599, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (187, 'Marne Lister', 4968957317, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (188, 'Norry Morot', 5733462077, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (189, 'Jeanna McArthur', 1883379531, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (191, 'Netta Eadmead', 5863928655, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (192, 'Olia Giannazzi', 1049658389, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (193, 'Shawna Brugh', 7992523658, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (194, 'Ardella Furness', 1322262139, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (195, 'Dedra Goldberg', 8055034148, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (196, 'Tadd Larway', 3886706898, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (197, 'Nathanial Lough', 3225230891, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (198, 'Hyman Blinkhorn', 1933531320, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (199, 'Gabi Meriton', 5043338091, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (200, 'Ardra Empson', 5533173039, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (201, 'Carlita Hardey', 6551650617, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (202, 'Goldarina Durrell', 4941030848, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (203, 'Moise Arpe', 5783660668, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (204, 'Britta Bunyan', 4426189000, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (205, 'Sollie Timmis', 8661366329, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (206, 'Ashil Brompton', 5526931765, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (207, 'Jilli Ferrai', 3114495239, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (208, 'Gearard Troke', 4166902263, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (209, 'Ody Gowdy', 2861641844, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (210, 'Leonore Talkington', 8236788052, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (211, 'Mallory Marchant', 1226151556, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (212, 'Clayborn McAuley', 2996326224, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (213, 'Tedmund Brazur', 1857863991, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (214, 'Karol Onians', 5741157592, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (215, 'Irina Cotes', 3897112866, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (216, 'Darda Farens', 7625297724, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (217, 'Lanette Nanni', 2568617129, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (218, 'Tadeas Galiero', 6562122162, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (219, 'Adelaida Dormon', 7622217345, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (220, 'Homerus Daynter', 9925735595, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (221, 'Andras Cussins', 4357129322, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (222, 'Raina Clearley', 4502527842, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (223, 'Garreth Loynton', 7415670425, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (224, 'Ines Kittle', 2924300542, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (225, 'Francisco Pickrell', 9917442395, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (226, 'Michelle Vaughn', 8368743774, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (227, 'Ilise Rambaut', 4877505007, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (228, 'Lorrie Grossman', 3727878778, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (229, 'Nannie Sherman', 5032592214, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (230, 'Sanders Fabler', 4333432293, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (231, 'Lynna Payze', 3254554189, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (232, 'Jdavie Colthard', 2174423426, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (233, 'Dame Cantera', 1913213863, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (234, 'Percival Millgate', 2203264005, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (235, 'Evvie McKiddin', 8338835210, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (236, 'Burke Phillcock', 3231280642, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (237, 'Candace Hunnam', 3714924740, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (238, 'Arlina D''orsay', 1701526505, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (239, 'Justina Nemchinov', 7197965627, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (240, 'Renado Sweetnam', 1635175418, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (241, 'Roxie Gregolotti', 2155350101, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (242, 'Myles Hunday', 2932059031, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (243, 'Cheslie Guidetti', 3962990908, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (244, 'Amelia Phalip', 9284696605, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (245, 'Nealson Axtonne', 1439267371, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (246, 'Benedicta Coe', 2105810249, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (247, 'Gregor Gadd', 2497748737, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (248, 'Charles Tremaine', 1183950376, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (249, 'Malena Farenden', 6479614518, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (250, 'Hugh Morsom', 2082353460, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (251, 'Fredra Rewcassell', 3751273052, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (252, 'Sully Bowery', 3286347913, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (253, 'Tremain Fishleigh', 2977864849, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (254, 'Dione MacGarvey', 5152325192, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (255, 'Roslyn Geratt', 5858061525, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (256, 'Hadria Auten', 9424324098, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (257, 'Cissiee Roy', 9799524615, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (258, 'Alfredo Palliser', 2563706210, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (259, 'Kerrie Jansen', 1951487107, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (260, 'Gaylene McLewd', 8239156099, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (261, 'Davey Duester', 7619313336, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (262, 'Brynne Tomkinson', 1836811663, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (263, 'Nickola Suthren', 2048463222, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (264, 'Koren Hussy', 9003598641, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (265, 'Inness Nucciotti', 8042138473, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (266, 'Itch Tewnion', 6543840432, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (267, 'Alexia Cannop', 9168116328, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (268, 'Hana Methley', 2148745490, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (269, 'Ranee Reye', 2432234202, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (270, 'Tova Squibb', 3812299347, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (271, 'Annis Tolworthy', 3271660367, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (272, 'Cindelyn Mc Ilory', 6422767345, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (273, 'Glen Sebyer', 1481648417, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (274, 'Valerie Duddan', 5231685003, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (275, 'Rafael Pexton', 7674319897, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (276, 'Gardie Bordiss', 9209339833, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (277, 'Benedicta Gravenell', 6233713541, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (279, 'Roland Van Hault', 6295293364, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (280, 'Heddie Spurett', 5188202188, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (281, 'Cara Wicken', 9196785099, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (282, 'Felic Ellerby', 6927411082, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (283, 'Wayne Holdin', 2005977407, '12');
commit;
prompt 400 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (284, 'Gabi Brayshaw', 4285725768, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (285, 'Alicea Trickett', 2148713969, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (286, 'Oralle Duckham', 4331002998, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (287, 'Maximilian Rebichon', 7272872952, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (288, 'Edouard Titmus', 2947923681, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (289, 'Cathi Bark', 9217979666, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (290, 'Pedro Penn', 5388764460, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (291, 'Loretta Montier', 3335725576, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (292, 'Milicent Regi', 6565424008, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (293, 'Peggie Edling', 2059053092, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (294, 'Tami Garretson', 7208189052, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (295, 'Patricia Ferson', 7558920598, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (296, 'Waverley Mattson', 5476721791, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (297, 'Briney Wigfall', 6094315552, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (298, 'Bartie Dymick', 5441995824, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (299, 'Damien Girodin', 1299634456, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (300, 'Mead Wigginton', 1243652706, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (301, 'Lind Pavier', 4516840245, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (302, 'Val Aleevy', 2944635112, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (303, 'Jo Lomaz', 4977022892, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (304, 'Faythe Prestidge', 5058491605, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (305, 'Marguerite Redhole', 7904645131, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (306, 'Maegan Di Pietro', 2673319746, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (307, 'Bamby Gellibrand', 2062989181, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (308, 'Rog Eicheler', 1152029596, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (309, 'Jobey Harg', 3806124310, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (310, 'Gizela Whiston', 3782718469, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (311, 'Giselle Bernucci', 9726393008, '35');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (312, 'Carlina Allwell', 6465265977, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (313, 'Purcell Trownson', 9976787769, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (314, 'Napoleon Rzehor', 8129477170, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (315, 'Jillene Brownhall', 8319773089, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (316, 'Benedetto Surmeyers', 3829285197, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (317, 'Drusy Coffin', 5457651712, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (318, 'Davidde Swinnard', 1793839174, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (319, 'Thatch Ticic', 9278113168, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (320, 'Emilio Scanlan', 9519854431, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (321, 'Fidelia Janeczek', 4751958856, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (322, 'Wynn Dallosso', 5083991006, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (323, 'Taite McCromley', 7093540914, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (324, 'Norbert Casaccia', 6801682889, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (325, 'Tallia Cleghorn', 3959890969, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (326, 'Pavlov Kitching', 6481668021, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (327, 'Allyson Tommeo', 3223044797, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (328, 'Thedric Rolph', 2397697872, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (329, 'Jesus Turbard', 5526798587, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (330, 'Paxton Franceschi', 3393906571, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (331, 'Aluin Brogioni', 8633323073, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (332, 'Katy Passman', 9731056036, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (333, 'Port Cudmore', 9442202197, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (334, 'Ezequiel Stirley', 3085575057, '53');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (335, 'Aryn O''Dee', 3359523214, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (336, 'Udale Blount', 9785969761, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (337, 'Tiphani Balffye', 9317316803, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (338, 'Ira Loudwell', 9733212343, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (339, 'Zabrina Statton', 9827263756, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (340, 'Bennie Turville', 1776220812, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (341, 'Waldon Bonnyson', 4148639014, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (342, 'Bruno Raynard', 8774931985, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (343, 'Marj Didsbury', 7175810720, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (344, 'Sigismund Haswall', 3528346335, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (345, 'Thia Guion', 1846426032, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (346, 'Stevie Bounds', 6402850136, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (347, 'Timi Maberley', 7233680765, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (348, 'Norina Leys', 1754550197, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (349, 'Ortensia Doody', 9199258018, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (350, 'Dania Pepper', 1739468570, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (351, 'Roz Tome', 7358200365, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (352, 'Loraine Pochet', 8573268388, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (353, 'Laurence Higounet', 1867528456, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (354, 'Panchito Pedel', 7348747461, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (355, 'Ula Skunes', 2384146982, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (356, 'Alvinia Dallander', 2333454659, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (357, 'Tabby Botwright', 4795300931, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (358, 'Mordy Maylor', 6223160654, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (359, 'Isak Russell', 4265437424, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (360, 'Wendie Crosfeld', 5816019791, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (361, 'Rhetta Malby', 9045804883, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (362, 'Britta Kunat', 8316154107, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (363, 'Dela Saw', 6273671640, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (364, 'Mollie Caplis', 4127856490, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (365, 'Irvine Oley', 9304137923, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (366, 'Saudra Abrahart', 2071719624, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (367, 'Emelia Emeney', 6155089610, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (368, 'Henka Worsell', 2664332655, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (369, 'Creighton Motten', 9572137918, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (370, 'Callie Dennerley', 1601998136, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (371, 'Nickie Vaggers', 2043123012, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (372, 'Constantino Reinbeck', 1917678225, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (373, 'Keane Sturrock', 6557422398, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (374, 'Cathie Pluthero', 5173795542, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (375, 'Garrot Sambrook', 2497140460, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (376, 'Kelcey Jickells', 9469845585, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (377, 'Ricardo Tetley', 7517121545, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (378, 'Aube Cloute', 5454897402, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (379, 'Gill Van Velde', 8211026315, '86');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (380, 'Cynthea Strowther', 3475308258, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (381, 'Tracie Fallis', 4754181587, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (382, 'Coral Mollene', 3991899658, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (383, 'Haroun Anthoney', 8401249392, '44');
commit;
prompt 500 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (384, 'Berky Alessandrucci', 1428550024, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (385, 'Hulda Cruikshank', 3949104454, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (386, 'Carlita Muckloe', 8914545234, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (387, 'Dionis Serchwell', 4678058760, '86');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (388, 'Cordula McQuin', 7191315012, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (389, 'Claribel Arthars', 5121973145, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (390, 'Ulrich Curnucke', 1402489302, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (391, 'Norean Pinnock', 6781317906, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (392, 'Rodney Jose', 2983121255, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (393, 'Libby Barrett', 9384977028, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (394, 'Mireille Shinn', 3759799815, '99');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (395, 'Mela Vanni', 1498233245, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (396, 'Kaye Rodd', 8041418588, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (397, 'Celesta Water', 5239804494, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (398, 'Linnell Grinishin', 6177449766, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (399, 'Maritsa Elven', 9375726187, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (400, 'Shea Stowte', 2514003921, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (401, 'Abigael Pryde', 9699386431, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (402, 'Iggy Drakers', 5317843480, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (403, 'Terri-jo Noton', 2228520261, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (404, 'Baryram Duffield', 7376289435, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (405, 'Waiter Mangenot', 4207454615, '23');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (406, 'Valencia Schlag', 9982430256, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (407, 'Marianna Voss', 7746481241, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (409, 'Brana Eppson', 8498758111, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (410, 'Yvor Prue', 7848941039, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (411, 'Sari Minghi', 3564183563, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (412, 'Vivianna Petcher', 8558610379, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (413, 'Georas Cristofano', 2359988769, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (414, 'Nefen Rathmell', 6645719572, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (415, 'Danette Swettenham', 5934443270, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (416, 'Janenna Aysh', 6199255719, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (417, 'Jens Alexandrou', 1308444892, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (418, 'Fanni Middlehurst', 5084075795, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (419, 'Nicky Caroline', 5689203581, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (420, 'Dianna Warrier', 3789433478, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (421, 'Faber Innot', 1037662009, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (422, 'Erika Francescoccio', 4566994960, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (423, 'Syd Heaney`', 9387870274, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (424, 'Isidore Roubottom', 8803312805, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (425, 'Jaquelin felip', 6259409178, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (426, 'Karola Mooreed', 8406771680, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (427, 'Charmine Wherton', 9776878959, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (428, 'Chrysler Streetfield', 7692138673, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (429, 'Xerxes Rousel', 2023798674, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (430, 'Darby Gofforth', 2531237513, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (431, 'Shandee Bengal', 8283521155, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (432, 'Reinald Hollow', 7621612737, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (433, 'Rutledge Dendle', 9949536660, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (434, 'Gwenore McGuire', 4111109608, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (435, 'Pierson Kilcullen', 6292876493, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (436, 'Lambert Rummery', 2759027562, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (437, 'Ronica Collins', 9345588565, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (438, 'Kerianne Ranyell', 9385613261, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (439, 'Kameko Housecraft', 1744105397, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (440, 'Lorraine Isham', 5303917353, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (441, 'Mile Godfree', 5727330469, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (442, 'Bar Ivanyushkin', 7789766573, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (443, 'Madalena Munnis', 5752907344, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (444, 'Merwin Addis', 6486059443, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (445, 'Will Napoleon', 8198366270, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (446, 'Joe Birt', 8453304216, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (447, 'Mandi Cummungs', 4887605371, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (448, 'Lewie Drysdale', 8646733467, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (449, 'Donelle Rew', 8296941930, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (450, 'Constantine McCowen', 3012276693, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (451, 'Odette Sarton', 1662834823, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (452, 'Goraud Stitle', 7972185296, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (453, 'Martino Abson', 4437579852, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (454, 'Judi Dubble', 3821522685, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (455, 'Lanna McGrah', 3306404020, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (456, 'Roma Axtens', 8202564657, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (457, 'Hamel Benny', 4918516430, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (458, 'Inigo Diss', 3576313143, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (459, 'Ramon Goodwill', 7972506256, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (460, 'Elyse Maywood', 2721719416, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (461, 'Daile Carwithan', 1448370121, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (462, 'Eolande Elkin', 5665645512, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (463, 'Bibbie Ratnage', 6554656629, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (464, 'Bay Galgey', 4319337894, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (465, 'Ethelred Tamlett', 3052664886, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (466, 'Lory Camblin', 6988194779, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (467, 'Baird Benfell', 8329421859, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (468, 'Ingrid Tomasz', 8735984773, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (469, 'Godard Hourihan', 5133297296, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (470, 'Guinna Heningam', 8604949157, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (471, 'Delphinia Blackie', 4705029568, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (472, 'Catha Palliser', 3822154507, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (473, 'Georgi Ivanchenkov', 1506279828, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (474, 'Fernanda Breewood', 8567287186, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (475, 'Pancho Frankes', 8463882993, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (476, 'Vinni Hinckesman', 9183289624, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (477, 'Jorry Melsom', 5268822803, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (478, 'Caryl Cochrane', 5043443647, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (479, 'Alfons Randall', 2933197635, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (480, 'Bellina Yeates', 4964767742, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (481, 'Corena O''Sherrin', 3078556078, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (482, 'Heywood Meikle', 2451934877, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (483, 'Maxie Ruslen', 4564647012, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (484, 'Denis Boick', 5572590789, '23');
commit;
prompt 600 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (485, 'Broderic Fear', 4016175760, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (486, 'Hedvig Cuckson', 4799237971, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (487, 'Maegan McBrearty', 7768407637, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (488, 'Athene Honsch', 8562479583, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (489, 'Gabriellia Ludl', 5767743835, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (490, 'Laura Renahan', 4594114191, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (491, 'Homer Ulyet', 5347765023, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (492, 'Carmine Pavese', 8961637177, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (493, 'Corie Hinstridge', 1954177899, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (494, 'Paige Tonbridge', 7947334419, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (495, 'Rebeca Algy', 2794166966, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (496, 'Trace Lodford', 3639747526, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (497, 'Carree Bovingdon', 2699658317, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (498, 'Sean Cheyney', 7094136081, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (499, 'Ahmed Halladey', 7944874343, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (500, 'Brietta Hartlebury', 3619628559, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (501, 'Nicolai Goldstone', 6005936878, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (502, 'Candide Kittiman', 7544956028, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (503, 'Misty Ebourne', 8098444954, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (504, 'Livvyy McFeat', 1163316309, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (505, 'Fara Garritley', 1242036446, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (506, 'Jocelin Gott', 2059455817, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (507, 'Rivy Sheara', 8632782849, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (508, 'Collie Grinnell', 7473357879, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (509, 'Franky Lewty', 4199681448, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (510, 'Juliette Maggiore', 4943444189, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (511, 'Sibella Landeg', 3034058473, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (512, 'Atalanta Rigolle', 9886694453, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (513, 'Ezekiel Daniell', 4766534172, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (514, 'Pippa Ronisch', 7302536652, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (515, 'Aloise Larrosa', 4663094833, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (516, 'Gustav Costell', 7317966859, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (517, 'Collin Hornig', 3798446347, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (518, 'Tabb Kuhlmey', 4827491520, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (519, 'Kelsy Toffanelli', 9713178859, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (520, 'Mariquilla Sibly', 4097638790, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (521, 'Hermon Arnowitz', 3523906559, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (522, 'Gusella Haliburton', 2569082695, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (523, 'Jammal Cliffe', 5357332549, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (524, 'Morse Revett', 2379561462, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (525, 'Lidia Coule', 2875090416, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (526, 'Ingeborg Innocenti', 3123393887, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (527, 'Jaclin Conkling', 8721177535, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (528, 'Eal Oldis', 3673261868, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (529, 'Celene Furley', 2077879888, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (530, 'Adair Aylott', 5572683974, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (531, 'Darcy Barrowcliffe', 1663643416, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (532, 'Kath Gabbitus', 4696077816, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (533, 'Bret Comelini', 4291740094, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (534, 'Bruno Shuttleworth', 8777123404, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (535, 'Selma Skehens', 6226493568, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (536, 'Farlay Castanie', 9024777737, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (537, 'Thomas Krzysztof', 8156235244, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (538, 'Karry Clapston', 2649286473, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (539, 'Ermin Struys', 5024293187, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (540, 'Lorens Zupone', 6979924112, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (541, 'August Kelwaybamber', 8051775055, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (542, 'Evangeline Jackways', 4909692223, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (543, 'Jeri Scoates', 4204556201, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (544, 'Adolph Gerckens', 6643446036, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (545, 'Orville Karlmann', 2422690716, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (546, 'Barret Aldred', 5222861052, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (547, 'Decca Mattiazzi', 1892671028, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (548, 'Merle Warnes', 8435247083, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (549, 'Talyah Nerney', 2701691419, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (550, 'Arley Murison', 9251598289, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (551, 'Ophelia Handaside', 1615340279, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (552, 'Justin Dufall', 7187739925, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (553, 'Barbey Bugg', 8949049517, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (554, 'Kristien Rens', 3121066075, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (555, 'Tades Rollitt', 5031651688, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (556, 'Tomasine Turfrey', 5622121226, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (557, 'Derrek Trayes', 1414391900, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (558, 'Victoir Eppson', 9913582806, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (559, 'Demetra Pestell', 7802566432, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (560, 'Glyn Voelker', 2502030830, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (561, 'Rooney Denness', 2548939852, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (562, 'Rutger Moisey', 3706017277, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (563, 'Yale Barnsley', 8989039960, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (564, 'Clerissa McGrann', 5436766384, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (565, 'Rachele Nealand', 6912227996, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (566, 'Tilly Durtnel', 7843293868, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (567, 'Flinn Tomkins', 5625085786, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (568, 'Harland Matushevich', 5724608228, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (569, 'Maisie Swinglehurst', 2859436074, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (570, 'Benson Kinchley', 4094053918, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (571, 'Bambie Badger', 1179863942, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (572, 'Cull Sieghard', 1082205902, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (573, 'Anni Traher', 1979683824, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (574, 'Polly Taylor', 4407805555, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (575, 'Crysta Heitz', 4102362128, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (576, 'Kassia Durrans', 4959127171, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (577, 'Marchelle Maccrae', 2127801396, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (578, 'Elmira Stanyon', 5117951601, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (579, 'Dill Gott', 1966205913, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (580, 'Ashlee Cornock', 5661606546, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (581, 'Cybill Sindall', 9847503609, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (582, 'Neille Westby', 3177603390, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (583, 'Augusta Pactat', 4394114691, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (584, 'Krishna Aronstam', 6651404782, '12');
commit;
prompt 700 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (585, 'Pearce Hobble', 2597597764, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (586, 'Elwyn Goodbourn', 6979771226, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (587, 'Elvera Mikalski', 1877608971, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (588, 'Avie Britch', 2829887460, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (589, 'Lily Acton', 1373129688, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (590, 'Burk Setch', 6864227092, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (591, 'Alvy Thickens', 6695315822, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (592, 'Quinn Racine', 4024027559, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (593, 'Dianna Dewsbury', 6689871384, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (594, 'Sunny Benko', 7501784504, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (595, 'Letti Starrs', 5132076621, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (596, 'Marys Hamflett', 4434186491, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (597, 'Valle Vassall', 7933721292, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (598, 'Claybourne Manueau', 3924282095, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (599, 'Ellissa Easom', 3751262765, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (600, 'Adora Libby', 7143889361, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (601, 'Saxon Beebis', 8649738040, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (602, 'Dunc Tregea', 8724967967, '35');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (603, 'Hetty Lis', 2966756475, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (604, 'Atlanta Allin', 5554082580, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (605, 'Adore Broggetti', 1366382471, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (606, 'Wilt Fullun', 9067475548, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (607, 'Cletus Kinforth', 9572553193, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (608, 'Corenda Birtles', 7179278782, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (609, 'Josias Litchmore', 2279106758, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (610, 'Karina Mallender', 8561583078, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (611, 'Hadleigh Frenzl', 9469053832, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (612, 'Dulcinea Larkby', 3114460339, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (613, 'Addison Peek', 4936694604, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (614, 'Andras Fenwick', 5221936804, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (615, 'Lionello Carter', 3114087479, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (616, 'Creighton Flewan', 2332899900, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (617, 'Mallory Hubert', 9127728280, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (618, 'Paige Enriques', 5301164029, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (619, 'Thaddeus Munslow', 9573044814, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (620, 'Mireille Elsmore', 7756355057, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (621, 'Ailyn Rowlatt', 3106642996, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (622, 'Eirena Waleworke', 5083456344, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (623, 'Korella Heddon', 6213084598, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (624, 'Stu Brugsma', 5435782840, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (625, 'Anstice Oleszkiewicz', 9744565379, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (627, 'Padriac Stanley', 2178872237, '23');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (628, 'Sarajane Epton', 3179535234, '99');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (629, 'Feliza Batte', 1619207420, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (630, 'Maisey Szymonowicz', 1334762355, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (631, 'Cecilla Seller', 9896030723, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (632, 'Alane Pisco', 7329429405, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (633, 'Egbert Gammie', 1989891395, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (634, 'Mela Mander', 1995583320, '31');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (635, 'Broderick Oxby', 7699028368, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (636, 'Essie Hatcher', 5681123594, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (637, 'Kylie Claypole', 6309626070, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (638, 'Caitrin Tisun', 5591162675, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (639, 'Gris Parlor', 9212160283, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (640, 'Agnesse Dienes', 1999109283, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (641, 'Cornell Tantum', 2666699408, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (642, 'Cookie MacTrustrie', 7899416380, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (643, 'Cristen Gosneye', 3729127164, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (644, 'Sybil Brand-Hardy', 9896050742, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (645, 'Bambie Devitt', 6829587157, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (646, 'Buddy Seagar', 9197540167, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (647, 'Maxie Hugonin', 5742218139, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (648, 'Caitlin Wiper', 2025461392, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (649, 'Ronnica McNeigh', 8483589846, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (650, 'Bartolomeo Henrie', 5942303369, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (651, 'Nikoletta Goodere', 3257524888, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (652, 'Audrey Wilsdon', 7583090695, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (653, 'Freddie Kamen', 4081524012, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (654, 'Robinet Galbraeth', 7718127344, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (655, 'Corny Burdekin', 8389430393, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (656, 'Ephrayim Beden', 2791889829, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (657, 'Bailie Metcalfe', 9378089304, '35');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (658, 'Colver Fisbburne', 6379214674, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (659, 'Bordy MacGee', 4455681862, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (660, 'Sallyann aManger', 9093678600, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (661, 'Randa MacArte', 8939296883, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (663, 'Angus Michelin', 2311635893, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (664, 'Suzi Holtham', 9233360786, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (665, 'Hubert Newnham', 1463536419, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (666, 'Corbie Chomicz', 4365110360, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (667, 'Fanya Quinnelly', 4431347311, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (668, 'Renata Skerratt', 1227891943, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (669, 'Coralie Withinshaw', 5986135895, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (670, 'Kristien Jaksic', 8366515918, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (671, 'Barrie Allaker', 8494341992, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (672, 'Luis Jellico', 6818536767, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (673, 'Darn Waud', 9417654714, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (674, 'Kara Brewster', 2974541655, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (675, 'Mattie Emmens', 5116509732, '47');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (676, 'Corey Semrad', 8446716912, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (677, 'Dunn Van Merwe', 2732796646, '35');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (678, 'Winonah Graal', 4467940907, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (679, 'Ole Arington', 8574280555, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (680, 'Anastassia Tidswell', 8044136796, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (681, 'Karisa Hince', 1331525796, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (682, 'Jennifer Lannin', 5969551161, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (683, 'Costa Baulch', 4631972711, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (684, 'Daren Bottoner', 6224042232, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (685, 'Renado Barneville', 2202596514, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (686, 'Karola Batty', 2037258739, '93');
commit;
prompt 800 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (687, 'Panchito Fawloe', 1552673350, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (688, 'Lorilee Yurkevich', 6988903380, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (689, 'Jacky Eveque', 6506822136, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (690, 'Pam McMarquis', 8438272952, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (691, 'Lynnett Benedito', 2746592475, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (692, 'Rhetta Skyme', 1535999391, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (693, 'Dyann Erickssen', 8999029782, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (694, 'Murry Donovan', 3639577184, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (695, 'Libbey McCrisken', 2311664772, '100');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (696, 'Joana Alyonov', 9327417935, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (697, 'Mariellen Kloser', 2332761215, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (698, 'Crissie Entwistle', 4405980216, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (699, 'Jackqueline Matsell', 1623493012, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (700, 'Ellary Gill', 6009524191, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (701, 'Val Labarre', 7325336627, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (702, 'Carolina Garritley', 6523756970, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (703, 'Woody Morrel', 3697891727, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (704, 'Lorrayne Vergo', 4898058756, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (705, 'Matilde Grigoliis', 5163858940, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (706, 'Chadd Bragge', 6049317941, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (707, 'Hope Ferrar', 2984485911, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (708, 'Tove Levesley', 4642892733, '37');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (709, 'Mab O''Scollee', 9061616747, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (710, 'Portie Gutowski', 7592785351, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (711, 'Lori O''Dunniom', 4924245154, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (712, 'King Warnes', 5242516726, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (713, 'Elijah Hazell', 9915686256, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (714, 'Miles Inder', 7616315746, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (715, 'Hercules Webben', 3886222168, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (716, 'Johnette Critoph', 8963772761, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (717, 'Aguie Sattin', 5227230874, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (718, 'Hamil Askaw', 2059166277, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (719, 'Lizabeth Tong', 5075642318, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (720, 'Wendye Alltimes', 9221076008, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (721, 'Beverlie Colhoun', 8993460111, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (722, 'Ulysses Houlahan', 2544308686, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (723, 'Jordanna Petworth', 9742600667, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (724, 'Alisun Passie', 9366388618, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (725, 'Yvon Iacovelli', 6236348405, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (726, 'Maryanna Grandin', 3372594478, '53');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (727, 'Konstantin Brizell', 9441155286, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (728, 'Elli Dutch', 5711302649, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (729, 'Arliene Sacks', 9643438526, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (730, 'Paddy Gorhardt', 4725055499, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (731, 'Darrick Hegg', 5418389784, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (732, 'Claudine Trenouth', 5511759396, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (733, 'Orin Stanfield', 3023074031, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (734, 'Corabella Aicken', 5434844082, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (735, 'Amory Crebbin', 3864001711, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (736, 'Holly Seegar', 2748415929, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (737, 'Kat Toulamain', 9889358078, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (738, 'Tobit Hanretty', 1393795964, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (739, 'Ernestine Mudle', 9376672110, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (740, 'Loren Santry', 9228435374, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (741, 'Judah Eliez', 8417670693, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (742, 'Allin Marini', 2839811065, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (743, 'Merrel Cammis', 6672277799, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (744, 'Denise Seamarke', 4598485632, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (745, 'Nestor Cescon', 5784042016, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (746, 'Joela Capeling', 4045783902, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (747, 'Eran Powdrill', 8541005873, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (748, 'Leroy Kohn', 2608359860, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (749, 'Harper Gutsell', 3993736306, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (750, 'Sammie Skym', 5458372405, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (751, 'Cecile O''Flannery', 4894808707, '24');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (752, 'Riordan Monketon', 1089328383, '16');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (753, 'Gardiner Borsay', 7859771742, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (754, 'Celina Sempill', 4198042204, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (755, 'Otto Truggian', 7751213109, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (756, 'Meryl Grumble', 3367954020, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (757, 'Garland Kleinmann', 8319228023, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (758, 'Gina Enric', 8816243406, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (759, 'Barbi Gadd', 1622154062, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (760, 'Curry Gurery', 9703060301, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (761, 'Cooper Ellcome', 8334109543, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (762, 'Polly Shury', 8407743946, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (763, 'Free Dimbleby', 6616232032, '99');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (764, 'Glenna Collett', 9171294917, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (765, 'Rheta Pepler', 9948344711, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (766, 'Betsy Fevier', 7978159106, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (767, 'Dwayne Crier', 3117882538, '99');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (768, 'Christiane Marlow', 6786557355, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (769, 'Anna Penley', 8689714593, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (770, 'Alexine Hassett', 4984061661, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (771, 'Hube Donnelly', 5063778204, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (772, 'Bartram Wadman', 4774054049, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (773, 'Lazarus Hun', 3667442565, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (774, 'Shandra Genge', 1432820283, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (775, 'Sydelle Clubb', 1435454531, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (776, 'Easter Theunissen', 4131644015, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (777, 'Yetty Kelloway', 8945816403, '39');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (778, 'Gillan Kingdon', 3667726517, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (779, 'Mercie Tutt', 3387025560, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (780, 'Udell Kull', 6136688862, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (781, 'Morley Cadden', 5235824887, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (782, 'Harmon MacFaell', 1787582329, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (783, 'Wit Carradice', 2196811112, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (784, 'Dorree Josland', 3037053614, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (785, 'Rance La Wille', 5588448761, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (786, 'Gill Newlands', 4135082786, '64');
commit;
prompt 900 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (787, 'Uta Iffe', 3109071198, '53');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (788, 'Jess Leavy', 1378325409, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (789, 'Muriel Calderon', 7662841880, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (790, 'Odelia Stallebrass', 6496356010, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (791, 'Anstice Royds', 2653913389, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (792, 'Kala Fernant', 4039001444, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (793, 'Veda Pilmer', 6881968926, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (794, 'Lind Brilon', 5276341634, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (795, 'Jean Knowler', 2291580789, '99');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (796, 'Charmion Rodders', 1836059496, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (797, 'Morgen Doggrell', 7774682997, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (798, 'Sheffield Ballchin', 3225572687, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (799, 'Kiel O''Sheils', 8404300479, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (800, 'Flory Side', 4433197371, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (801, 'Sancho Zanutti', 5154678457, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (802, 'Berti Ibbitt', 1183745046, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (803, 'Marjie Whiteford', 3998577715, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (804, 'Peadar Dorbon', 7388307785, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (805, 'Tracee Fawthrop', 3238244808, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (806, 'Henderson Cuddehay', 5284908168, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (807, 'Maurie Raeside', 1501255035, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (808, 'Arty Caton', 7737301171, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (809, 'Cobby Yegorev', 8694556536, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (810, 'Therese Khan', 2797762999, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (811, 'Nicoli Cammell', 7546090615, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (812, 'Darwin Kuhle', 3511398134, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (813, 'Jamil Saffen', 9509642915, '73');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (814, 'Zelma Janeway', 4968632156, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (815, 'Basia Ginnane', 2637514153, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (816, 'Veronique Fealty', 7181209068, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (817, 'Keith Breche', 1985624069, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (818, 'Brook Kopec', 5105264276, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (819, 'Shaun Garrad', 5615449123, '80');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (820, 'Marjy Toffolini', 7332158679, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (821, 'Cornelia Deuss', 3394049299, '66');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (822, 'Micki Laudham', 8237057146, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (823, 'Claire Hakonsen', 7693555394, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (824, 'Adey Koeppke', 5482589139, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (825, 'Lanni Seine', 2069759103, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (826, 'Elyn Girt', 8986467361, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (827, 'Garry Poland', 8741780220, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (828, 'Raina Haskey', 9004686632, '75');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (829, 'Dino Drinkhill', 8093354875, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (830, 'Nonah Scade', 7404721806, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (831, 'Maire Spottswood', 5935234616, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (832, 'Sebastiano Rossant', 6941509533, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (833, 'Pacorro Vasyushkhin', 3705118244, '43');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (834, 'Alejoa Bridat', 7947986561, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (835, 'Konstanze Richemont', 2605327782, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (836, 'Henrietta Howat', 9777695729, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (837, 'Maureen Lugsdin', 6582442081, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (838, 'Mair Pollitt', 3085214948, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (839, 'Karalynn Lundberg', 4735883766, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (840, 'Hebert Witcher', 9659326451, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (841, 'Jackqueline Phettis', 7402784616, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (842, 'Sibella Minger', 9525228568, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (843, 'Lynnette Thomerson', 7284008203, '21');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (844, 'Xymenes Leist', 4254609070, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (845, 'Katherine Burchall', 9571938256, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (846, 'Rudd January 1st', 4643199920, '52');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (847, 'Franny Wands', 5727058344, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (848, 'Doralin Ferretti', 9346991874, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (849, 'Hinda Ebbings', 5216612721, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (850, 'Thomasine Matthessen', 5492955346, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (851, 'Gilli Ledbury', 3903306736, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (852, 'Dottie Cristofolo', 3222094471, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (853, 'Cordelia Rubinshtein', 9375879293, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (854, 'Idelle Shillaker', 9916762441, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (855, 'Carree Richardot', 5686723838, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (856, 'Odelinda Ridges', 1616480469, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (857, 'Kathryn Gilks', 4322429455, '81');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (858, 'Nadya Formoy', 4848388561, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (859, 'Charis Bradshaw', 1818051307, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (860, 'Rosemarie Simmgen', 3017840537, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (861, 'Lenard Espinoza', 2518586642, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (862, 'Hartley Wiffield', 6061188406, '20');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (863, 'Tallia Brookhouse', 3568422961, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (864, 'Hortense Muffitt', 7822192601, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (865, 'Ewen Giampietro', 1964801766, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (866, 'Nonnah Staveley', 3745508367, '99');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (867, 'Poppy Pursehouse', 3575671178, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (868, 'Marchall Pelzer', 4798068451, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (869, 'Donall Jenicke', 4055005048, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (870, 'Krystal Mundell', 6369120693, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (871, 'Tilly Foxley', 2592625315, '64');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (872, 'Lishe Obee', 6298387178, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (873, 'Pascal Brymham', 5741875123, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (874, 'Chic Seleway', 2794145505, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (875, 'Madonna Adam', 8981602345, '79');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (876, 'Clemmie Mayman', 7949384591, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (877, 'Nickie Carlan', 2866020762, '13');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (878, 'Adolphus Wiffler', 1006458817, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (879, 'Kerwinn Kusick', 5013930576, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (880, 'Jerrome Hurdedge', 2373027596, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (881, 'Vanessa Craigmile', 2838677158, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (882, 'Emmeline Duigenan', 5188648063, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (883, 'Tobey Papez', 1235550866, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (884, 'Joan McVane', 4746978673, '42');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (885, 'Merle Pendlebery', 6476092032, '78');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (886, 'Valentina Stembridge', 9384496382, '13');
commit;
prompt 1000 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (887, 'Phillie Habbal', 6957869243, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (888, 'Danella Wyon', 6598799864, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (889, 'Heidie Downing', 7968072176, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (890, 'Elisabetta Fulloway', 8932171977, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (891, 'Julee Churchward', 3915480449, '62');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (892, 'Anastassia Griswaite', 8684246202, '49');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (893, 'Claretta Kane', 3065286462, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (894, 'Torrence Shory', 1698336531, '94');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (895, 'Hali Jentgens', 5583914295, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (896, 'Latrena Girardeau', 3004100548, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (897, 'Kiersten Shaylor', 3802805436, '50');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (898, 'Rogers Tarpey', 7029146714, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (899, 'Wolfy Capponeer', 7711816810, '15');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (900, 'Archy Stocken', 8394826883, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (901, 'Charley Gravestone', 3305382006, '95');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (902, 'Moore Bayne', 1171631464, '40');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (903, 'Illa Bainbridge', 8345557327, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (904, 'Siffre Ferraraccio', 6294837357, '98');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (905, 'Wallis Cleare', 6416182802, '87');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (906, 'Den Manser', 2072169319, '61');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (907, 'Rodi Hazell', 2081892742, '18');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (908, 'Florida Tuffin', 3845517267, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (909, 'Hermon Evison', 7784230715, '67');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (910, 'Konstantine Chittock', 2981632313, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (911, 'Arney Taillard', 7397438273, '17');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (912, 'Hi Tewelson', 5059792499, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (913, 'Saw Nehls', 2748626189, '86');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (914, 'Konstanze McKea', 1384788486, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (915, 'Atalanta Milburn', 9174175864, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (916, 'Maureen Pieroni', 3178239126, '51');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (917, 'Natividad Delacote', 1741415326, '96');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (918, 'Jereme Ausher', 5557040943, '27');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (919, 'Nadya Malshinger', 3983717987, '45');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (920, 'Jade Goodbairn', 3403776629, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (921, 'Maximo Dearl', 2812311726, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (922, 'Brena Blasiak', 8169710974, '30');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (923, 'Salomi Lorand', 7693540240, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (924, 'Baird Pisco', 4121712655, '44');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (925, 'Tuesday Raggitt', 6523047379, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (926, 'Nellie Craisford', 7587249280, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (927, 'Melinde Hayball', 6108890546, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (928, 'Alejandra Gergolet', 6215358130, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (929, 'Dean Prujean', 1151698724, '11');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (930, 'Beck Ort', 5899713849, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (931, 'Nikki Benini', 1608253789, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (932, 'Celeste Ferrillio', 8286462042, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (933, 'Marylin Revely', 1817575134, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (934, 'Ezekiel Cammidge', 1559914093, '82');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (935, 'Krista Conring', 1436073661, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (936, 'Daveta Burle', 4914544246, '91');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (937, 'Alf Smallwood', 4192645622, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (938, 'Herb Aymerich', 6809367561, '88');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (939, 'Shaine Cushworth', 5393559022, '77');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (940, 'Minnie Bramont', 3902253185, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (941, 'Rose Mannin', 9775026405, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (942, 'Doralin Loyd', 7394568917, '69');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (943, 'Gayle Trevarthen', 8907507134, '29');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (944, 'Merrielle Ivakhno', 1361925157, '23');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (945, 'Cheri Maplethorp', 5452882024, '97');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (946, 'Adriana Dicky', 2076870331, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (947, 'Melva Awcoate', 7915897551, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (948, 'Sigismundo Geldeford', 8608519924, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (949, 'Caesar Verralls', 2659673740, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (950, 'Dorena Dowbakin', 7774658047, '68');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (951, 'Sigismund Brounsell', 9908793694, '54');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (952, 'Urson Moniker', 6434552819, '23');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (953, 'Phebe Pohlak', 3278133075, '25');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (954, 'Franklin Boyce', 3096934004, '28');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (955, 'Ivar Rubes', 4485246115, '14');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (956, 'Tisha MacClancey', 1153353287, '72');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (957, 'Leoine Gainor', 2235603033, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (958, 'Bree Turner', 2695403156, '65');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (959, 'Octavius Anders', 1347923685, '34');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (960, 'Ryun McWhin', 3376846462, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (961, 'Tulley Creech', 5888821777, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (962, 'Tamarra Eshmade', 9169912608, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (963, 'Blancha Bowkley', 9804583487, '23');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (964, 'Danya Brightman', 4969012427, '56');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (965, 'Marci Farran', 8943190864, '33');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (966, 'Odille Lethbridge', 6026637159, '70');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (967, 'Lorne Caldaro', 4503190377, '89');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (968, 'Philis Phythien', 1252207616, '58');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (969, 'Emmye St. Quentin', 1698599302, '59');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (970, 'Travis Patemore', 8518543102, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (971, 'Hershel Fulks', 9847266472, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (972, 'Ladonna Whorall', 7964826539, '63');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (973, 'Abie Shieldon', 7879727055, '57');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (974, 'Hervey Wyard', 6953031310, '36');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (975, 'Dori Caldero', 5401275718, '74');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (976, 'Selby Cotgrove', 5043416375, '19');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (977, 'Upton Crevy', 8173532982, '35');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (978, 'Cate Prenty', 5287611036, '55');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (979, 'Northrup Benoi', 6987156410, '83');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (980, 'Farrah Jinkin', 4242369401, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (981, 'Norman Woodhead', 3605252478, '93');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (982, 'Carter Ambrosini', 9815965980, '32');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (983, 'Martie Sperski', 5339397825, '12');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (984, 'Deck Ruspine', 6141353073, '10');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (985, 'Bartolemo Adamovicz', 9823210080, '26');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (986, 'Arlyn Ivanovic', 9595239028, '34');
commit;
prompt 1100 records committed...
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (987, 'Bambi Hirjak', 1552347713, '90');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (988, 'Burtie Braiden', 9274397805, '41');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (989, 'Teodora Flacke', 1676035467, '92');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (990, 'Dre De Ferraris', 1756819190, '76');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (991, 'Lindy Sinden', 1113192720, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (992, 'Kienan Pendre', 5262967964, '71');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (993, 'Matilda Trimmell', 7759494531, '60');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (994, 'Alidia Hallybone', 3242706604, '22');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (995, 'Bink Heck', 9805680840, '38');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (996, 'Candy Stanlock', 2822696814, '85');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (997, 'Elisabetta Chesher', 1325502681, '46');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (998, 'Ferne Tomaino', 1048190694, '48');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (999, 'Alic Littlekit', 8202069722, '84');
insert into GENERAL_MANAGER (gmid, gmname, phone, reports)
values (1000, 'Babara Challenger', 9443264816, '79');
commit;
prompt 1114 records loaded
prompt Loading DEPARTMENT...
insert into DEPARTMENT (deptname, gmid)
values ('HR', 1);
insert into DEPARTMENT (deptname, gmid)
values ('Finance', 2);
insert into DEPARTMENT (deptname, gmid)
values ('IT', 1);
insert into DEPARTMENT (deptname, gmid)
values ('Conquest Systems', 5688631);
insert into DEPARTMENT (deptname, gmid)
values ('G.A. Beck Artistic S', 3163700);
insert into DEPARTMENT (deptname, gmid)
values ('GTS Refreshment Serv', 1760966);
insert into DEPARTMENT (deptname, gmid)
values ('Evergreen Resources', 1852919);
insert into DEPARTMENT (deptname, gmid)
values ('Wal-Mart Stores', 9063649);
insert into DEPARTMENT (deptname, gmid)
values ('ProClarity', 8203959);
insert into DEPARTMENT (deptname, gmid)
values ('Volkswagen', 6205889);
insert into DEPARTMENT (deptname, gmid)
values ('GRT', 7287546);
insert into DEPARTMENT (deptname, gmid)
values ('ScriptSave', 3002705);
insert into DEPARTMENT (deptname, gmid)
values ('Linksys', 5526831);
insert into DEPARTMENT (deptname, gmid)
values ('Serentec', 9212150);
insert into DEPARTMENT (deptname, gmid)
values ('Summit Energy', 656255);
insert into DEPARTMENT (deptname, gmid)
values ('Capital Crossing Ban', 2630288);
insert into DEPARTMENT (deptname, gmid)
values ('American Pan & Engin', 9715343);
insert into DEPARTMENT (deptname, gmid)
values ('Digital Visual Displ', 5688631);
insert into DEPARTMENT (deptname, gmid)
values ('ACS International Re', 709740);
insert into DEPARTMENT (deptname, gmid)
values ('Texas Residential Mo', 144925);
insert into DEPARTMENT (deptname, gmid)
values ('North Coast Energy', 8511300);
insert into DEPARTMENT (deptname, gmid)
values ('American Vanguard', 4810038);
insert into DEPARTMENT (deptname, gmid)
values ('TechBooks', 263297);
insert into DEPARTMENT (deptname, gmid)
values ('White Wave', 803533);
insert into DEPARTMENT (deptname, gmid)
values ('Cura Group', 6603446);
insert into DEPARTMENT (deptname, gmid)
values ('MasterCard Internati', 803533);
insert into DEPARTMENT (deptname, gmid)
values ('Astute', 9212150);
insert into DEPARTMENT (deptname, gmid)
values ('Adea Solutions', 1378224);
insert into DEPARTMENT (deptname, gmid)
values ('Doral Dental USA', 3290372);
insert into DEPARTMENT (deptname, gmid)
values ('Lydian Trust', 9498038);
insert into DEPARTMENT (deptname, gmid)
values ('Mercantile Bank', 2907488);
insert into DEPARTMENT (deptname, gmid)
values ('ComGlobal Systems', 6323099);
insert into DEPARTMENT (deptname, gmid)
values ('3t Systems', 8211477);
insert into DEPARTMENT (deptname, gmid)
values ('Key Information Syst', 6603446);
insert into DEPARTMENT (deptname, gmid)
values ('C & A Industries', 2177017);
insert into DEPARTMENT (deptname, gmid)
values ('InfoPros', 9498038);
insert into DEPARTMENT (deptname, gmid)
values ('Axis Consulting', 2332177);
insert into DEPARTMENT (deptname, gmid)
values ('Dynacq International', 6652965);
insert into DEPARTMENT (deptname, gmid)
values ('Diamond Group', 7874405);
insert into DEPARTMENT (deptname, gmid)
values ('Bluff City Steel', 8203959);
insert into DEPARTMENT (deptname, gmid)
values ('Aventis', 6806044);
insert into DEPARTMENT (deptname, gmid)
values ('Denali Ventures', 1715495);
insert into DEPARTMENT (deptname, gmid)
values ('Employer Services', 1457628);
insert into DEPARTMENT (deptname, gmid)
values ('Caliber Collision Ce', 8211477);
insert into DEPARTMENT (deptname, gmid)
values ('Lindin Consulting', 2053313);
insert into DEPARTMENT (deptname, gmid)
values ('AXSA Document Soluti', 1991750);
insert into DEPARTMENT (deptname, gmid)
values ('Formatech', 7428944);
insert into DEPARTMENT (deptname, gmid)
values ('Advanced Internet Te', 3002705);
insert into DEPARTMENT (deptname, gmid)
values ('SurModics', 1);
insert into DEPARTMENT (deptname, gmid)
values ('Unicru', 2);
insert into DEPARTMENT (deptname, gmid)
values ('GulfMark Offshore', 9500231);
insert into DEPARTMENT (deptname, gmid)
values ('Dataprise', 8872373);
insert into DEPARTMENT (deptname, gmid)
values ('Clover Technologies ', 9498038);
insert into DEPARTMENT (deptname, gmid)
values ('Swiss Watch Internat', 1023199);
insert into DEPARTMENT (deptname, gmid)
values ('Fetch Logistics', 4322446);
insert into DEPARTMENT (deptname, gmid)
values ('Terra Firma', 1097698);
insert into DEPARTMENT (deptname, gmid)
values ('Harrison & Shriftman', 5941271);
insert into DEPARTMENT (deptname, gmid)
values ('PepsiCo', 2700983);
insert into DEPARTMENT (deptname, gmid)
values ('Analytical Managemen', 8893868);
insert into DEPARTMENT (deptname, gmid)
values ('GlaxoSmithKline', 8489821);
insert into DEPARTMENT (deptname, gmid)
values ('Oneida Financial', 1378224);
insert into DEPARTMENT (deptname, gmid)
values ('FSF Financial', 6652965);
insert into DEPARTMENT (deptname, gmid)
values ('Great Lakes Media Te', 3002705);
insert into DEPARTMENT (deptname, gmid)
values ('Kimberly-Clark Corp.', 7275297);
insert into DEPARTMENT (deptname, gmid)
values ('Green Mountain Coffe', 3290372);
insert into DEPARTMENT (deptname, gmid)
values ('TruSecure', 3339266);
insert into DEPARTMENT (deptname, gmid)
values ('Speakeasy', 7324534);
insert into DEPARTMENT (deptname, gmid)
values ('Access US', 5657655);
insert into DEPARTMENT (deptname, gmid)
values ('Total Entertainment', 9498038);
insert into DEPARTMENT (deptname, gmid)
values ('CLT Meetings Interna', 3290372);
insert into DEPARTMENT (deptname, gmid)
values ('Pfizer', 216319);
insert into DEPARTMENT (deptname, gmid)
values ('Process Plus', 8630730);
insert into DEPARTMENT (deptname, gmid)
values ('Quaker City Bancorp', 6128418);
insert into DEPARTMENT (deptname, gmid)
values ('Banfe Products', 8961929);
insert into DEPARTMENT (deptname, gmid)
values ('Joe Lombardo Plumbin', 1540729);
insert into DEPARTMENT (deptname, gmid)
values ('North American Theat', 144925);
insert into DEPARTMENT (deptname, gmid)
values ('Anheuser-Busch Cos.', 6019264);
insert into DEPARTMENT (deptname, gmid)
values ('Heartlab', 263297);
insert into DEPARTMENT (deptname, gmid)
values ('McDonald’s Corp.', 7874405);
insert into DEPARTMENT (deptname, gmid)
values ('Sara Lee Corp.', 1852919);
insert into DEPARTMENT (deptname, gmid)
values ('Hershey Foods Corp.', 144925);
insert into DEPARTMENT (deptname, gmid)
values ('Cynergy Data', 3724956);
insert into DEPARTMENT (deptname, gmid)
values ('Great Lakes Technolo', 1325531);
insert into DEPARTMENT (deptname, gmid)
values ('Infinity Software De', 8751369);
insert into DEPARTMENT (deptname, gmid)
values ('Imports By Four Hand', 6652965);
insert into DEPARTMENT (deptname, gmid)
values ('Megha Systems', 2436001);
insert into DEPARTMENT (deptname, gmid)
values ('Sea Fox Boat', 9500231);
insert into DEPARTMENT (deptname, gmid)
values ('Keller Williams Real', 9787582);
insert into DEPARTMENT (deptname, gmid)
values ('Spenser Communicatio', 6323099);
insert into DEPARTMENT (deptname, gmid)
values ('ATX Forms', 2053313);
insert into DEPARTMENT (deptname, gmid)
values ('Novartis', 5526831);
insert into DEPARTMENT (deptname, gmid)
values ('TimeVision', 8378825);
insert into DEPARTMENT (deptname, gmid)
values ('Bioanalytical System', 8934437);
insert into DEPARTMENT (deptname, gmid)
values ('AT&T Corp.', 8751369);
insert into DEPARTMENT (deptname, gmid)
values ('Timberlane Woodcraft', 8211477);
insert into DEPARTMENT (deptname, gmid)
values ('Electrical Solutions', 216319);
insert into DEPARTMENT (deptname, gmid)
values ('NoBrainerBlinds.com', 6652965);
insert into DEPARTMENT (deptname, gmid)
values ('Security Check', 3444914);
insert into DEPARTMENT (deptname, gmid)
values ('SHOT', 6019264);
insert into DEPARTMENT (deptname, gmid)
values ('Portage Environmenta', 3444914);
commit;
prompt 100 records committed...
insert into DEPARTMENT (deptname, gmid)
values ('Imaging Business Mac', 6814041);
insert into DEPARTMENT (deptname, gmid)
values ('AQuickDelivery', 5197491);
insert into DEPARTMENT (deptname, gmid)
values ('SSCI', 3724956);
insert into DEPARTMENT (deptname, gmid)
values ('Sandy Spring Bancorp', 3043505);
insert into DEPARTMENT (deptname, gmid)
values ('esoftsolutions', 3043505);
insert into DEPARTMENT (deptname, gmid)
values ('Alternative Technolo', 1715495);
insert into DEPARTMENT (deptname, gmid)
values ('Liners Direct', 2332177);
insert into DEPARTMENT (deptname, gmid)
values ('Data Warehouse', 1);
insert into DEPARTMENT (deptname, gmid)
values ('IntegraMed America', 3342623);
insert into DEPARTMENT (deptname, gmid)
values ('Royal Gold', 144925);
insert into DEPARTMENT (deptname, gmid)
values ('Bayer', 6205889);
insert into DEPARTMENT (deptname, gmid)
values ('Venoco', 6019264);
insert into DEPARTMENT (deptname, gmid)
values ('Extreme Pizza', 4322446);
insert into DEPARTMENT (deptname, gmid)
values ('State Farm Mutual Au', 5197491);
insert into DEPARTMENT (deptname, gmid)
values ('Pyramid Digital Solu', 5804928);
insert into DEPARTMENT (deptname, gmid)
values ('Kellogg Co.', 5657655);
insert into DEPARTMENT (deptname, gmid)
values ('Ositis Software', 8511300);
insert into DEPARTMENT (deptname, gmid)
values ('''IT''', 1);
insert into DEPARTMENT (deptname, gmid)
values ('''Investor Relations''', 2);
insert into DEPARTMENT (deptname, gmid)
values ('''Corporate Comms''', 3);
insert into DEPARTMENT (deptname, gmid)
values ('''Tech Support''', 4);
insert into DEPARTMENT (deptname, gmid)
values ('''Sales''', 5);
insert into DEPARTMENT (deptname, gmid)
values ('''Planning''', 6);
insert into DEPARTMENT (deptname, gmid)
values ('''Compliance''', 7);
insert into DEPARTMENT (deptname, gmid)
values ('''Security''', 9);
insert into DEPARTMENT (deptname, gmid)
values ('''Admin''', 10);
insert into DEPARTMENT (deptname, gmid)
values ('''Biz Development''', 11);
insert into DEPARTMENT (deptname, gmid)
values ('''Logistics''', 13);
insert into DEPARTMENT (deptname, gmid)
values ('''Customer Service''', 15);
insert into DEPARTMENT (deptname, gmid)
values ('''Finance''', 16);
insert into DEPARTMENT (deptname, gmid)
values ('''Legal''', 18);
insert into DEPARTMENT (deptname, gmid)
values ('''Operations''', 19);
insert into DEPARTMENT (deptname, gmid)
values ('''Procurement''', 20);
insert into DEPARTMENT (deptname, gmid)
values ('''PR''', 21);
insert into DEPARTMENT (deptname, gmid)
values ('''Accounting''', 27);
insert into DEPARTMENT (deptname, gmid)
values ('''Facilities''', 28);
insert into DEPARTMENT (deptname, gmid)
values ('''Inventory''', 34);
insert into DEPARTMENT (deptname, gmid)
values ('''R&D''', 36);
insert into DEPARTMENT (deptname, gmid)
values ('''Engineering''', 41);
insert into DEPARTMENT (deptname, gmid)
values ('''Marketing''', 47);
insert into DEPARTMENT (deptname, gmid)
values ('''Product Mgmt''', 48);
insert into DEPARTMENT (deptname, gmid)
values ('''QA''', 56);
insert into DEPARTMENT (deptname, gmid)
values ('''Risk Mgmt''', 68);
insert into DEPARTMENT (deptname, gmid)
values ('''Training''', 96);
insert into DEPARTMENT (deptname, gmid)
values ('''Production''', 98);
insert into DEPARTMENT (deptname, gmid)
values ('''HR''', 103);
insert into DEPARTMENT (deptname, gmid)
values ('''PMO''', 106);
insert into DEPARTMENT (deptname, gmid)
values ('Gagwear', 586);
insert into DEPARTMENT (deptname, gmid)
values ('All Star Consulting', 273);
insert into DEPARTMENT (deptname, gmid)
values ('Linac Systems', 777);
insert into DEPARTMENT (deptname, gmid)
values ('Think Tank Systems', 4194078);
insert into DEPARTMENT (deptname, gmid)
values ('Ogio International', 1325531);
insert into DEPARTMENT (deptname, gmid)
values ('Y2Marketing', 229);
insert into DEPARTMENT (deptname, gmid)
values ('Studio B Productions', 5197491);
insert into DEPARTMENT (deptname, gmid)
values ('Canterbury Park', 855);
insert into DEPARTMENT (deptname, gmid)
values ('Federated Department', 308);
insert into DEPARTMENT (deptname, gmid)
values ('Coridian Technologie', 207);
insert into DEPARTMENT (deptname, gmid)
values ('Reckitt Benckiser', 286);
insert into DEPARTMENT (deptname, gmid)
values ('Tilson Landscape', 84);
insert into DEPARTMENT (deptname, gmid)
values ('In Zone', 277);
insert into DEPARTMENT (deptname, gmid)
values ('First South Bancorp', 280);
insert into DEPARTMENT (deptname, gmid)
values ('United Asset Coverag', 5197491);
insert into DEPARTMENT (deptname, gmid)
values ('Atlantic Credit & Fi', 653);
insert into DEPARTMENT (deptname, gmid)
values ('Access Systems', 780);
insert into DEPARTMENT (deptname, gmid)
values ('Woronoco Bancorp', 618);
insert into DEPARTMENT (deptname, gmid)
values ('Multimedia Live', 298);
insert into DEPARTMENT (deptname, gmid)
values ('Gillani', 770);
insert into DEPARTMENT (deptname, gmid)
values ('Outta the Box Dispen', 10);
insert into DEPARTMENT (deptname, gmid)
values ('Deutsche Telekom', 8630730);
insert into DEPARTMENT (deptname, gmid)
values ('Black Mountain Manag', 829);
insert into DEPARTMENT (deptname, gmid)
values ('httprint', 550);
insert into DEPARTMENT (deptname, gmid)
values ('Bashen Consulting', 760);
insert into DEPARTMENT (deptname, gmid)
values ('Signal Perfection', 976);
insert into DEPARTMENT (deptname, gmid)
values ('DrinkMore Water', 39);
insert into DEPARTMENT (deptname, gmid)
values ('Eze Castle Software', 4798762);
insert into DEPARTMENT (deptname, gmid)
values ('Pharmacia Corp.', 769);
insert into DEPARTMENT (deptname, gmid)
values ('Max & Erma''s Restaur', 133);
insert into DEPARTMENT (deptname, gmid)
values ('Knightsbridge Soluti', 229);
insert into DEPARTMENT (deptname, gmid)
values ('Network Management R', 994);
insert into DEPARTMENT (deptname, gmid)
values ('Capitol Bancorp', 802);
insert into DEPARTMENT (deptname, gmid)
values ('Elite Medical', 979);
insert into DEPARTMENT (deptname, gmid)
values ('Johnson & Johnson', 812);
insert into DEPARTMENT (deptname, gmid)
values ('BASE Consulting Grou', 836);
insert into DEPARTMENT (deptname, gmid)
values ('Glacier Bancorp', 433);
insert into DEPARTMENT (deptname, gmid)
values ('Simply Certificates', 742);
insert into DEPARTMENT (deptname, gmid)
values ('Vivendi Universal', 924);
insert into DEPARTMENT (deptname, gmid)
values ('Office Depot', 286);
insert into DEPARTMENT (deptname, gmid)
values ('Synovis Life Technol', 830);
insert into DEPARTMENT (deptname, gmid)
values ('L.E.M. Products', 716);
insert into DEPARTMENT (deptname, gmid)
values ('Procter & Gamble Co.', 884);
insert into DEPARTMENT (deptname, gmid)
values ('J.C. Malone Associat', 640);
insert into DEPARTMENT (deptname, gmid)
values ('Hospital Solutions', 711);
insert into DEPARTMENT (deptname, gmid)
values ('Sequoia System Inter', 8751369);
insert into DEPARTMENT (deptname, gmid)
values ('Appriss', 427);
insert into DEPARTMENT (deptname, gmid)
values ('Genex Technologies', 354);
insert into DEPARTMENT (deptname, gmid)
values ('Sunstream', 745);
insert into DEPARTMENT (deptname, gmid)
values ('Primus Software', 546);
insert into DEPARTMENT (deptname, gmid)
values ('Providence Service', 925);
insert into DEPARTMENT (deptname, gmid)
values ('Albertson’s', 445);
insert into DEPARTMENT (deptname, gmid)
values ('WorldCom', 258);
commit;
prompt 200 records committed...
insert into DEPARTMENT (deptname, gmid)
values ('Jolly Enterprises', 994);
insert into DEPARTMENT (deptname, gmid)
values ('U.S. Government', 420);
insert into DEPARTMENT (deptname, gmid)
values ('Visa International', 400);
insert into DEPARTMENT (deptname, gmid)
values ('Merck & Co.', 273);
insert into DEPARTMENT (deptname, gmid)
values ('Exinom Technologies', 234);
insert into DEPARTMENT (deptname, gmid)
values ('Printcafe Software', 952);
insert into DEPARTMENT (deptname, gmid)
values ('Staff Force', 727);
insert into DEPARTMENT (deptname, gmid)
values ('PowerLight', 1378224);
insert into DEPARTMENT (deptname, gmid)
values ('Gentra Systems', 8378825);
insert into DEPARTMENT (deptname, gmid)
values ('Tripwire', 573);
insert into DEPARTMENT (deptname, gmid)
values ('Alternative Business', 857);
insert into DEPARTMENT (deptname, gmid)
values ('netNumina', 273);
insert into DEPARTMENT (deptname, gmid)
values ('Kia Motors Corp.', 391);
insert into DEPARTMENT (deptname, gmid)
values ('Dell Computer Corp.', 843);
insert into DEPARTMENT (deptname, gmid)
values ('New Media Communicat', 1378224);
insert into DEPARTMENT (deptname, gmid)
values ('Keith Companies', 468);
insert into DEPARTMENT (deptname, gmid)
values ('Tastefully Simple', 320);
insert into DEPARTMENT (deptname, gmid)
values ('American Healthways', 485);
insert into DEPARTMENT (deptname, gmid)
values ('Third Millennium Tel', 1760966);
insert into DEPARTMENT (deptname, gmid)
values ('Marriott Internation', 949);
insert into DEPARTMENT (deptname, gmid)
values ('ProSys Information S', 107);
insert into DEPARTMENT (deptname, gmid)
values ('Sony Corp.', 625);
insert into DEPARTMENT (deptname, gmid)
values ('OnStaff', 533);
insert into DEPARTMENT (deptname, gmid)
values ('Prosoft Technology G', 296);
insert into DEPARTMENT (deptname, gmid)
values ('ProfitLine', 400);
insert into DEPARTMENT (deptname, gmid)
values ('Prometheus Laborator', 697);
insert into DEPARTMENT (deptname, gmid)
values ('Southern Financial B', 1281925);
insert into DEPARTMENT (deptname, gmid)
values ('DaimlerChrysler', 996);
insert into DEPARTMENT (deptname, gmid)
values ('Integrated Decisions', 712);
insert into DEPARTMENT (deptname, gmid)
values ('Mosaic', 571);
insert into DEPARTMENT (deptname, gmid)
values ('Phoenix Rehabilitati', 178);
insert into DEPARTMENT (deptname, gmid)
values ('One Source Printing', 309);
insert into DEPARTMENT (deptname, gmid)
values ('Nike', 213);
insert into DEPARTMENT (deptname, gmid)
values ('E Commerce Group Pro', 379);
insert into DEPARTMENT (deptname, gmid)
values ('Columbia Bancorp', 289);
insert into DEPARTMENT (deptname, gmid)
values ('Trinity HomeCare', 3189674);
insert into DEPARTMENT (deptname, gmid)
values ('Limited Brands', 313);
insert into DEPARTMENT (deptname, gmid)
values ('Merit Medical System', 739);
insert into DEPARTMENT (deptname, gmid)
values ('Service Link', 123);
insert into DEPARTMENT (deptname, gmid)
values ('Interface Software', 785);
insert into DEPARTMENT (deptname, gmid)
values ('Carteret Mortgage', 901);
insert into DEPARTMENT (deptname, gmid)
values ('Investors Title', 202);
insert into DEPARTMENT (deptname, gmid)
values ('Trainersoft', 801);
insert into DEPARTMENT (deptname, gmid)
values ('Veri-Tek Internation', 806);
insert into DEPARTMENT (deptname, gmid)
values ('Infinity Contractors', 8351906);
insert into DEPARTMENT (deptname, gmid)
values ('Tilia', 361);
insert into DEPARTMENT (deptname, gmid)
values ('Microsoft Corp.', 656);
insert into DEPARTMENT (deptname, gmid)
values ('FirstFed America Ban', 363);
insert into DEPARTMENT (deptname, gmid)
values ('InfoVision Consultan', 891);
insert into DEPARTMENT (deptname, gmid)
values ('Cima Consulting Grou', 572);
insert into DEPARTMENT (deptname, gmid)
values ('Clorox Co.', 139);
insert into DEPARTMENT (deptname, gmid)
values ('Safeway', 353);
insert into DEPARTMENT (deptname, gmid)
values ('AOL Time Warner', 192);
insert into DEPARTMENT (deptname, gmid)
values ('BioReliance', 290);
insert into DEPARTMENT (deptname, gmid)
values ('Marlabs', 2459670);
insert into DEPARTMENT (deptname, gmid)
values ('Contract Counsel', 273);
insert into DEPARTMENT (deptname, gmid)
values ('FNB', 9715343);
insert into DEPARTMENT (deptname, gmid)
values ('Global Wireless Data', 639);
insert into DEPARTMENT (deptname, gmid)
values ('Computer Engineering', 577);
insert into DEPARTMENT (deptname, gmid)
values ('CapTech Ventures', 878);
insert into DEPARTMENT (deptname, gmid)
values ('Analytics Operations', 2332177);
insert into DEPARTMENT (deptname, gmid)
values ('Lloyd Group', 380);
insert into DEPARTMENT (deptname, gmid)
values ('Ivory Systems', 103);
insert into DEPARTMENT (deptname, gmid)
values ('Consultants'' Choice', 306);
insert into DEPARTMENT (deptname, gmid)
values ('ELMCO', 400);
insert into DEPARTMENT (deptname, gmid)
values ('Intel Corp.', 185);
insert into DEPARTMENT (deptname, gmid)
values ('Viacom', 306);
insert into DEPARTMENT (deptname, gmid)
values ('Pacific Data Designs', 993);
insert into DEPARTMENT (deptname, gmid)
values ('Anworth Mortgage', 282);
insert into DEPARTMENT (deptname, gmid)
values ('Solipsys', 753);
insert into DEPARTMENT (deptname, gmid)
values ('Dillard’s', 679);
insert into DEPARTMENT (deptname, gmid)
values ('Hudson River Bancorp', 667);
insert into DEPARTMENT (deptname, gmid)
values ('Best Buy Co.', 215);
insert into DEPARTMENT (deptname, gmid)
values ('Saks Inc.', 453);
insert into DEPARTMENT (deptname, gmid)
values ('Biosite', 871);
insert into DEPARTMENT (deptname, gmid)
values ('Dancor', 467);
insert into DEPARTMENT (deptname, gmid)
values ('Elite Computers & So', 70);
insert into DEPARTMENT (deptname, gmid)
values ('Gorman Richardson Ar', 3043505);
insert into DEPARTMENT (deptname, gmid)
values ('Computer Source', 6814041);
insert into DEPARTMENT (deptname, gmid)
values ('MHF Logistical Solut', 480);
insert into DEPARTMENT (deptname, gmid)
values ('Walt Disney Co.', 674);
insert into DEPARTMENT (deptname, gmid)
values ('Meridian Gold', 433);
insert into DEPARTMENT (deptname, gmid)
values ('Abatix', 300);
insert into DEPARTMENT (deptname, gmid)
values ('Yum Brands', 32);
insert into DEPARTMENT (deptname, gmid)
values ('Tarragon Realty', 471);
insert into DEPARTMENT (deptname, gmid)
values ('Pulaski Financial', 823);
insert into DEPARTMENT (deptname, gmid)
values ('Greene County Bancor', 983);
insert into DEPARTMENT (deptname, gmid)
values ('Cody-Kramer Imports', 809);
insert into DEPARTMENT (deptname, gmid)
values ('Quicksilver Resource', 188);
insert into DEPARTMENT (deptname, gmid)
values ('Taycor Financial', 909);
insert into DEPARTMENT (deptname, gmid)
values ('MoneyLine Lending Se', 490);
insert into DEPARTMENT (deptname, gmid)
values ('Integra Telecom', 745);
insert into DEPARTMENT (deptname, gmid)
values ('Bowman Consulting Gr', 76);
insert into DEPARTMENT (deptname, gmid)
values ('Questar Capital', 770);
insert into DEPARTMENT (deptname, gmid)
values ('Larkin Enterprises', 4798762);
insert into DEPARTMENT (deptname, gmid)
values ('Dankoff Solar Produc', 402);
insert into DEPARTMENT (deptname, gmid)
values ('Advantage Credit Int', 853);
insert into DEPARTMENT (deptname, gmid)
values ('GHR Systems', 680);
insert into DEPARTMENT (deptname, gmid)
values ('Portfolio Recovery A', 399);
insert into DEPARTMENT (deptname, gmid)
values ('Trek Equipment', 327);
commit;
prompt 300 records committed...
insert into DEPARTMENT (deptname, gmid)
values ('Heartland Payment Sy', 564);
insert into DEPARTMENT (deptname, gmid)
values ('Spectrum Communicati', 953);
insert into DEPARTMENT (deptname, gmid)
values ('Hewlett-Packard Co.', 3189674);
insert into DEPARTMENT (deptname, gmid)
values ('Virtual Meeting Stra', 63);
insert into DEPARTMENT (deptname, gmid)
values ('Advertising Ventures', 115);
insert into DEPARTMENT (deptname, gmid)
values ('Myricom', 586);
insert into DEPARTMENT (deptname, gmid)
values ('Momentum Marketing S', 505);
insert into DEPARTMENT (deptname, gmid)
values ('Sammy''s Woodfired Pi', 538);
insert into DEPARTMENT (deptname, gmid)
values ('Manhattan Associates', 251);
insert into DEPARTMENT (deptname, gmid)
values ('North Highland', 820);
insert into DEPARTMENT (deptname, gmid)
values ('Capstone', 317);
insert into DEPARTMENT (deptname, gmid)
values ('Escalade', 130);
insert into DEPARTMENT (deptname, gmid)
values ('Quality Assured Serv', 184);
insert into DEPARTMENT (deptname, gmid)
values ('Gray Hawk Systems', 805);
insert into DEPARTMENT (deptname, gmid)
values ('Arkidata', 793);
insert into DEPARTMENT (deptname, gmid)
values ('MedAmicus', 186);
insert into DEPARTMENT (deptname, gmid)
values ('Amerisource Funding', 60);
insert into DEPARTMENT (deptname, gmid)
values ('Kramont Realty Trust', 351);
insert into DEPARTMENT (deptname, gmid)
values ('DB Professionals', 130);
insert into DEPARTMENT (deptname, gmid)
values ('Hencie', 654);
insert into DEPARTMENT (deptname, gmid)
values ('Call Henry', 633);
insert into DEPARTMENT (deptname, gmid)
values ('National Home Health', 750);
insert into DEPARTMENT (deptname, gmid)
values ('Inspiration Software', 578);
insert into DEPARTMENT (deptname, gmid)
values ('Business Plus Corpor', 754);
insert into DEPARTMENT (deptname, gmid)
values ('Sterling Financial G', 774);
insert into DEPARTMENT (deptname, gmid)
values ('MindIQ', 88);
insert into DEPARTMENT (deptname, gmid)
values ('CREDO Petroleum', 189);
insert into DEPARTMENT (deptname, gmid)
values ('Pragmatech Software', 8767122);
insert into DEPARTMENT (deptname, gmid)
values ('Market-Based Solutio', 7);
insert into DEPARTMENT (deptname, gmid)
values ('Tracer Technologies', 24);
insert into DEPARTMENT (deptname, gmid)
values ('Unit', 762);
insert into DEPARTMENT (deptname, gmid)
values ('General Mills', 708);
insert into DEPARTMENT (deptname, gmid)
values ('Legacy Financial Gro', 717);
insert into DEPARTMENT (deptname, gmid)
values ('Balchem', 949);
insert into DEPARTMENT (deptname, gmid)
values ('TRX', 718);
insert into DEPARTMENT (deptname, gmid)
values ('Calence', 650);
insert into DEPARTMENT (deptname, gmid)
values ('SBC Communications', 576);
insert into DEPARTMENT (deptname, gmid)
values ('Networking Technolog', 802);
insert into DEPARTMENT (deptname, gmid)
values ('CIW Services', 76);
insert into DEPARTMENT (deptname, gmid)
values ('CookTek', 692);
insert into DEPARTMENT (deptname, gmid)
values ('Franklin American Mo', 4322446);
insert into DEPARTMENT (deptname, gmid)
values ('Corporate Executive ', 276);
insert into DEPARTMENT (deptname, gmid)
values ('Random Walk Computin', 267);
insert into DEPARTMENT (deptname, gmid)
values ('NLX', 173);
insert into DEPARTMENT (deptname, gmid)
values ('York Enterprise Solu', 451);
insert into DEPARTMENT (deptname, gmid)
values ('Shuffle Master', 891);
insert into DEPARTMENT (deptname, gmid)
values ('Custom Solutions Int', 722);
insert into DEPARTMENT (deptname, gmid)
values ('SafeHome Security', 793);
insert into DEPARTMENT (deptname, gmid)
values ('Peerless Manufacturi', 6806044);
insert into DEPARTMENT (deptname, gmid)
values ('V-Span', 11);
insert into DEPARTMENT (deptname, gmid)
values ('Aquascape Designs', 39);
insert into DEPARTMENT (deptname, gmid)
values ('ZonePerfect Nutritio', 723);
insert into DEPARTMENT (deptname, gmid)
values ('McKee Wallwork Hende', 10);
insert into DEPARTMENT (deptname, gmid)
values ('Wyeth', 258);
insert into DEPARTMENT (deptname, gmid)
values ('Print-Tech', 763);
insert into DEPARTMENT (deptname, gmid)
values ('Gillette Co.', 128);
insert into DEPARTMENT (deptname, gmid)
values ('Diamond Technologies', 926);
insert into DEPARTMENT (deptname, gmid)
values ('Envision Telephony', 125);
insert into DEPARTMENT (deptname, gmid)
values ('Alden Systems', 456);
insert into DEPARTMENT (deptname, gmid)
values ('Tropical Oasis', 976);
insert into DEPARTMENT (deptname, gmid)
values ('Advanced Neuromodula', 936);
insert into DEPARTMENT (deptname, gmid)
values ('Estee Lauder Cos.', 132);
insert into DEPARTMENT (deptname, gmid)
values ('Campbell Soup Co.', 741);
insert into DEPARTMENT (deptname, gmid)
values ('Topics Entertainment', 279);
insert into DEPARTMENT (deptname, gmid)
values ('WRG Services', 939);
insert into DEPARTMENT (deptname, gmid)
values ('EagleOne', 698);
insert into DEPARTMENT (deptname, gmid)
values ('Mission Controls Aut', 91);
insert into DEPARTMENT (deptname, gmid)
values ('TMA Resources', 463);
insert into DEPARTMENT (deptname, gmid)
values ('Sears, Roebuck & Co.', 8630730);
insert into DEPARTMENT (deptname, gmid)
values ('FFLC Bancorp', 25);
insert into DEPARTMENT (deptname, gmid)
values ('Perfect Order', 937);
insert into DEPARTMENT (deptname, gmid)
values ('Web Group', 175);
insert into DEPARTMENT (deptname, gmid)
values ('Nissan Motor Co.', 557);
insert into DEPARTMENT (deptname, gmid)
values ('Arrow Financial Serv', 246);
insert into DEPARTMENT (deptname, gmid)
values ('Flake-Wilkerson Mark', 142);
insert into DEPARTMENT (deptname, gmid)
values ('Asta Funding', 199);
insert into DEPARTMENT (deptname, gmid)
values ('Gap Inc.', 725);
insert into DEPARTMENT (deptname, gmid)
values ('Unica', 579);
insert into DEPARTMENT (deptname, gmid)
values ('Visionary Systems', 8629012);
insert into DEPARTMENT (deptname, gmid)
values ('Colgate-Palmolive Co', 327);
insert into DEPARTMENT (deptname, gmid)
values ('Softworld', 733);
insert into DEPARTMENT (deptname, gmid)
values ('Accuship', 8629012);
insert into DEPARTMENT (deptname, gmid)
values ('InsurMark', 320);
insert into DEPARTMENT (deptname, gmid)
values ('Data Company', 400);
insert into DEPARTMENT (deptname, gmid)
values ('Alliance of Professi', 573);
insert into DEPARTMENT (deptname, gmid)
values ('St. Mary Land & Expl', 918);
insert into DEPARTMENT (deptname, gmid)
values ('Spinnaker Exploratio', 63);
insert into DEPARTMENT (deptname, gmid)
values ('Adolph Coors Co.', 932);
insert into DEPARTMENT (deptname, gmid)
values ('Telechem Internation', 7547566);
insert into DEPARTMENT (deptname, gmid)
values ('Connected', 339);
insert into DEPARTMENT (deptname, gmid)
values ('Morgan Research', 439);
insert into DEPARTMENT (deptname, gmid)
values ('Miracle Software Sys', 40);
insert into DEPARTMENT (deptname, gmid)
values ('Computer World Servi', 802);
insert into DEPARTMENT (deptname, gmid)
values ('Cima Labs', 871);
insert into DEPARTMENT (deptname, gmid)
values ('Oakleaf Waste Manage', 426);
insert into DEPARTMENT (deptname, gmid)
values ('Orange Glo Internati', 102);
insert into DEPARTMENT (deptname, gmid)
values ('AT&T Wireless', 14);
insert into DEPARTMENT (deptname, gmid)
values ('Eastman Kodak Co.', 491);
insert into DEPARTMENT (deptname, gmid)
values ('Main Street Banks', 414);
insert into DEPARTMENT (deptname, gmid)
values ('Team', 783);
commit;
prompt 400 records committed...
insert into DEPARTMENT (deptname, gmid)
values ('MRE Consulting', 889);
insert into DEPARTMENT (deptname, gmid)
values ('Kingland Companies', 749);
insert into DEPARTMENT (deptname, gmid)
values ('Bio-Reference Labs', 820);
insert into DEPARTMENT (deptname, gmid)
values ('Extra Mile Transport', 734);
insert into DEPARTMENT (deptname, gmid)
values ('SALT Group', 363);
insert into DEPARTMENT (deptname, gmid)
values ('Open Software Soluti', 15);
insert into DEPARTMENT (deptname, gmid)
values ('AccuCode', 805);
insert into DEPARTMENT (deptname, gmid)
values ('Noodles & Co.', 1325531);
insert into DEPARTMENT (deptname, gmid)
values ('Diageo', 205);
insert into DEPARTMENT (deptname, gmid)
values ('Signature Consultant', 139);
insert into DEPARTMENT (deptname, gmid)
values ('Boldtech Systems', 987);
insert into DEPARTMENT (deptname, gmid)
values ('Tigris Consulting', 603);
insert into DEPARTMENT (deptname, gmid)
values ('SYS-CON Media', 471);
insert into DEPARTMENT (deptname, gmid)
values ('New Horizons Compute', 559);
insert into DEPARTMENT (deptname, gmid)
values ('Accurate Autobody', 723);
insert into DEPARTMENT (deptname, gmid)
values ('Automated License Sy', 424);
commit;
prompt 416 records loaded
prompt Loading DEPARTMENT_MANAGERS...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1, 'DM Kate', 6786786789, 'HR Report', 'HR');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (2, 'DM Luke', 7897897890, 'Finance Report', 'Finance');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3, 'DM Mike', 8908908901, 'IT Report', 'IT');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5021736, 'Moreno', 972627012, '29', 'Analytical Managemen');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8927514, 'Clark', 58963929, '51', 'Cynergy Data');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1257651, 'Hynde', 432665105, '40', 'Swiss Watch Internat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (2671588, 'Bello', 185212465, '68', 'Liners Direct');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6757582, 'Cantrell', 81675732, '25', 'Portage Environmenta');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3391462, 'Sobieski', 332624048, '62', 'GRT');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5464535, 'Starr', 788889162, '21', 'Lydian Trust');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1324389, 'Harary', 418555169, '23', 'Summit Energy');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7772320, 'Minogue', 175549825, '47', 'AXSA Document Soluti');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (961166, 'Cozier', 619212416, '79', 'Astute');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5037271, 'Harrison', 894213188, '47', 'Portage Environmenta');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (870346, 'Hubbard', 930199350, '68', 'Access US');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9714966, 'Esposito', 970542626, '53', 'ATX Forms');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9147461, 'Macy', 789563381, '61', 'Bluff City Steel');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1121945, 'Hubbard', 207606300, '97', 'ProClarity');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4489239, 'Thornton', 763342640, '96', 'Great Lakes Media Te');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6822429, 'Metcalf', 652674032, '34', 'Ositis Software');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (2892822, 'Allison', 293612857, '56', 'AQuickDelivery');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9640036, 'Sedaka', 126514177, '16', 'Sea Fox Boat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9979987, 'Scheider', 509034234, '75', 'GulfMark Offshore');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (294506, 'Lyonne', 815190503, '85', 'North American Theat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8946363, 'Macy', 97898320, '71', 'Sandy Spring Bancorp');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5663413, 'von Sydow', 924359060, '93', 'Dynacq International');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4135650, 'Norton', 243674888, '17', 'ACS International Re');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (2668888, 'Prinze', 396065061, '72', 'HR');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (238840, 'D''Onofrio', 623058808, '40', 'Liners Direct');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7789335, 'Wheel', 688039753, '16', 'Liners Direct');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7118430, 'Mueller-Stahl', 466516922, '47', 'Kimberly-Clark Corp.');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (2196154, 'Murdock', 615497292, '5', 'Pyramid Digital Solu');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (257649, 'Jovovich', 681334921, '93', 'Swiss Watch Internat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (2515453, 'Young', 255431622, '56', 'esoftsolutions');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6834668, 'Savage', 37164217, '67', 'NoBrainerBlinds.com');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7214774, 'Sandler', 913413343, '3', 'Kimberly-Clark Corp.');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7421827, 'Yulin', 414068822, '22', 'AQuickDelivery');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8614807, 'Elizabeth', 152886595, '21', 'Linksys');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3309847, 'Faithfull', 113072219, '28', 'Unicru');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (526110, 'Williamson', 886965924, '63', 'TechBooks');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9457052, 'Garofalo', 229204238, '57', 'Adea Solutions');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1510828, 'Hanley', 532733164, '39', 'ComGlobal Systems');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3063588, 'Kadison', 87047933, '2', 'Axis Consulting');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3769413, 'Gleeson', 228034308, '27', 'TruSecure');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7770641, 'Rudd', 738786456, '26', 'Volkswagen');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7652339, 'Hatchet', 110776383, '13', 'TruSecure');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3484656, 'Cagle', 524749930, '44', 'Axis Consulting');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1796825, 'Phillips', 660724328, '59', 'AT&T Corp.');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1826554, 'Peebles', 696462326, '30', 'Axis Consulting');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8888552, 'Bragg', 103797867, '3', 'Sea Fox Boat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7205954, 'Pearce', 102188340, '66', 'Novartis');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7048380, 'Milsap', 878868384, '1', 'Adea Solutions');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3520389, 'Michaels', 934980263, '8', 'Dataprise');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6844070, 'Charles', 167055796, '84', 'Green Mountain Coffe');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6479527, 'Holbrook', 543224859, '2', 'Evergreen Resources');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3927001, 'Nicks', 483525434, '54', 'IT');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1554388, 'Lauper', 303690240, '9', 'Digital Visual Displ');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7293889, 'Frampton', 331784911, '18', 'Mercantile Bank');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7551561, 'Levin', 557072742, '82', 'GulfMark Offshore');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3173503, 'Loggins', 920481001, '39', 'Quaker City Bancorp');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5812429, 'Tyler', 606043797, '58', 'Astute');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4538390, 'Melvin', 942696515, '28', 'PepsiCo');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5037381, 'Hong', 775796811, '94', 'G.A. Beck Artistic S');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6241590, 'Goodall', 417747171, '68', 'ScriptSave');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1735035, 'Cozier', 537094035, '25', 'ACS International Re');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5778352, 'Kidman', 595478475, '61', 'ScriptSave');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6296455, 'Torn', 691813445, '58', 'Linksys');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9672857, 'Rapaport', 923062590, '13', 'American Pan & Engin');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4694368, 'Mifune', 620995615, '97', 'Green Mountain Coffe');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5489937, 'Amos', 74295219, '55', 'American Pan & Engin');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5807388, 'Gere', 595390590, '94', 'AT&T Corp.');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9471791, 'Bedelia', 41392469, '77', 'Security Check');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4369230, 'Mould', 148504764, '41', 'McDonald’s Corp.');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9799705, 'Chinlund', 289287738, '14', 'Novartis');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9542930, 'Sarsgaard', 512147753, '86', 'Sea Fox Boat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5480769, 'McAnally', 972428580, '56', 'Linksys');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9120064, 'Baker', 114479270, '79', 'Spenser Communicatio');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (859600, 'Shearer', 214073587, '76', 'ScriptSave');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9344967, 'Furay', 140556002, '57', 'Denali Ventures');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5755057, 'Pesci', 448089258, '14', 'NoBrainerBlinds.com');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (363953, 'Checker', 155378484, '53', 'Cura Group');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1221961, 'Collette', 823246881, '74', 'Swiss Watch Internat');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7299530, 'Benoit', 789437971, '36', 'GTS Refreshment Serv');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (937814, 'Broadbent', 670019401, '53', 'Heartlab');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6949623, 'Adams', 486763318, '94', 'Key Information Syst');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8214517, 'Pitney', 29878299, '13', 'GulfMark Offshore');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (111789, 'Kinnear', 315467852, '25', 'Venoco');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8635089, 'Vance', 247090468, '74', 'Cynergy Data');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9532438, 'Lloyd', 840796248, '90', 'Terra Firma');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8315385, 'Loeb', 623015083, '37', 'Axis Consulting');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3481052, 'Lizzy', 60671403, '68', 'Ositis Software');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (7790819, 'Baez', 132900482, '52', 'North Coast Energy');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4949404, 'Rickles', 403741312, '60', 'SHOT');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1528077, 'Leachman', 205181036, '96', 'Bluff City Steel');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6475772, 'Squier', 789925943, '19', 'Sandy Spring Bancorp');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (3061837, 'Brothers', 563274027, '3', 'Imports By Four Hand');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (594166, 'Aiken', 753464111, '14', 'Doral Dental USA');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5756491, 'Janssen', 129876524, '14', 'IntegraMed America');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5908540, 'Womack', 628460354, '17', 'Bioanalytical System');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (9192861, 'Speaks', 993762252, '56', 'Unicru');
commit;
prompt 100 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (8792013, 'Aykroyd', 796931807, '31', 'Lydian Trust');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1179918, 'Fierstein', 439078476, '61', 'Dataprise');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (711088, 'Koteas', 999355080, '45', 'Portage Environmenta');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (5391503, 'Duncan', 37142867, '12', 'Bioanalytical System');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (1174871, 'Duschel', 707713128, '20', 'Astute');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (4628041, 'Gershon', 800740383, '19', 'Great Lakes Media Te');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (6309289, 'Coltrane', 561042129, '7', 'Sandy Spring Bancorp');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (687895, 'Sabra Cecere', 3192743198, '86', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (360920, 'Miriam Sunner', 8171795107, '50', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (536397, 'Myra Saunders', 6412669612, '65', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (729787, 'Ivory Reddecliffe', 7587216814, '60', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (758565, 'Jdavie Coldman', 5984710432, '41', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (752333, 'Jonathan Aiers', 7649279730, '21', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (951710, 'Sonny Deniseau', 6496653964, '47', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (648962, 'Yanaton Reinert', 7488587526, '27', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (956192, 'Thomasin Meijer', 7836861042, '16', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (627814, 'Claresta Lawtey', 6836391861, '90', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (723208, 'Felicia Tolomelli', 7635621861, '65', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (507522, 'Catherin Edelmann', 7867349585, '22', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (475728, 'Hoebart Churchman', 4717263927, '14', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (210972, 'Maria Claremont', 9575981520, '81', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (598517, 'Daisie Meneo', 3174027800, '30', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (699210, 'Araldo Audsley', 3683619807, '84', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (800596, 'Alaster Kennington', 2259641038, '50', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (537967, 'Sonnie Tyrer', 7442455477, '64', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (848093, 'Gisela McMeyler', 6292654315, '41', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (988885, 'Daffy Haken', 1358300310, '44', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (209405, 'Kory Oolahan', 9051532461, '55', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (665542, 'Claudie Brackstone', 8701234079, '72', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (871856, 'Roxane Yashanov', 7534407881, '78', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (414829, 'Shelli MacKean', 3604503623, '41', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (905986, 'Jerrome Carolan', 1426935621, '83', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (549857, 'Cristiano Grout', 1629134823, '65', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (999178, 'Rutledge Hurrion', 1492879344, '49', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (769368, 'Vilhelmina Eggleton', 3241257007, '80', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (789782, 'Jodi Lindman', 9771788637, '84', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (273224, 'Stevana Jancar', 6063614497, '31', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (182368, 'Maurizio Dyche', 8395853750, '34', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (288871, 'Lyndsey Searson', 3314491318, '74', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (504864, 'Chantalle Bate', 9323022802, '93', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (597078, 'Sonny Imlacke', 3464922342, '51', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (654162, 'Chadwick Humbert', 6416291137, '81', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (973965, 'Tilda Tutill', 6102694774, '75', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (176074, 'Erinn Canter', 7223106431, '83', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (420747, 'Myrtia Robberts', 9365883978, '92', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (551956, 'Allegra Rimer', 3464387241, '27', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (776583, 'Reggie Fenton', 9943433526, '51', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (439913, 'Marlon Rustedge', 2623085588, '20', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (993680, 'Carrol Endersby', 6029103028, '68', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (979726, 'Glenn Tchir', 9749243734, '97', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (688156, 'Janith Trump', 6368192854, '11', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (659991, 'Leila Spawton', 3445457301, '65', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (688683, 'Bennie Tissier', 4006506925, '97', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (961437, 'Faber Timmins', 4496247445, '10', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (278218, 'Tarah Flecknoe', 3165484493, '49', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (903271, 'Noam Dancey', 1524674783, '67', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (539522, 'Lorain Connors', 4228922593, '66', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (799418, 'Alexei Strettell', 8152427838, '52', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (883197, 'Tremayne Cheese', 8127784316, '66', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (621069, 'Julietta Roulston', 7175947184, '89', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (703358, 'Lori Isacke', 9095672846, '16', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (925685, 'Gloriana Grigorian', 8021304102, '51', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (626519, 'Liesa Hannaford', 1167461312, '15', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (142614, 'Carly Goublier', 6786565615, '17', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (943629, 'Rosemaria Spoor', 7552184102, '80', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (771782, 'Eugene Crookes', 5359691294, '58', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (517361, 'Filip Ralestone', 3858492875, '26', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (523330, 'Aurie Silverston', 3869646266, '77', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (275073, 'Johnnie Nitti', 8699365998, '63', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (696657, 'Freddie Bus', 4378862583, '79', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (934948, 'Bernie Ryle', 4453110957, '65', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (750815, 'Zilvia Kilroy', 3389552794, '98', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (528508, 'Saw Ioselevich', 9295720887, '98', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (577637, 'Rozelle Tooting', 4521742258, '32', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (891540, 'Abbi Alberti', 6227223217, '37', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (785444, 'Ryann Cattrell', 7082466252, '32', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (358107, 'Alastair Wims', 3276300862, '38', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (628934, 'Elvera Langan', 6151259028, '87', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (578222, 'Roderigo O''Carroll', 4416388006, '69', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (467052, 'Harlen Hodcroft', 1461281919, '60', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (629935, 'Rebecca Clemetts', 3153897913, '59', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (417443, 'Merissa Estabrook', 6162949327, '57', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (766984, 'Seymour Bilton', 4453568454, '90', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (831812, 'Rani Joska', 3918052360, '37', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (946115, 'Spense Laslett', 9557136793, '87', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (730309, 'Devlin Huntall', 1006368346, '50', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (506908, 'Davita Taks', 7883629192, '79', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (169533, 'Humphrey Pearlman', 6658711047, '91', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (291646, 'Mata Hast', 8476249344, '92', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (942150, 'Helene Eagland', 3426063399, '13', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (814866, 'Luella Armand', 8184994687, '63', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (352979, 'Jacinda Tandey', 5172442779, '92', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (501909, 'Hall Minton', 8094763095, '92', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (553051, 'Kilian Balk', 7421453668, '17', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (432759, 'Adolphe McPolin', 7435416188, '28', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (204623, 'Nettie Oliver-Paull', 6352261130, '92', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (435057, 'Abby Croose', 4513877355, '13', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (317035, 'Shaine Wrigglesworth', 7065578212, '46', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (500674, 'Kayla Goodredge', 8274616559, '29', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (449325, 'Gare Kleinzweig', 5284361884, '63', '''Security''');
commit;
prompt 200 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (653936, 'Beilul Kurdani', 3819279288, '57', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (204938, 'Mag Verni', 7523063025, '93', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (273861, 'Ivar Karsh', 3123954488, '35', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (674575, 'Derick Colwill', 3937686798, '99', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (522958, 'Cristabel Garlett', 9227590664, '96', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (648437, 'Gabbi Weerdenburg', 1495564063, '33', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (214824, 'Julie Le Conte', 2337628375, '69', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (299237, 'Lucias Hannond', 7689641199, '47', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (213831, 'Ole Perrone', 9119794500, '77', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (417348, 'Raymund Batiste', 5393673860, '98', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (297480, 'Devina Trebble', 3627863415, '62', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (882684, 'Consolata Maybury', 5073249411, '36', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (407929, 'Codie Eva', 3649652995, '74', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (595671, 'Maitilde Davidovsky', 2372627650, '85', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (452842, 'Nickolai Hallows', 4838892744, '87', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (626093, 'Adelle Desson', 1413718167, '48', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (352736, 'Saidee Hornung', 8158457067, '72', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (505637, 'Tiffany McCathy', 8942843261, '78', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (537150, 'Dick Dawby', 3339809181, '46', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (411899, 'Yuri McCallam', 8823969232, '48', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (387160, 'Sean McGirr', 9045878731, '14', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (682946, 'Stevie O''Cahsedy', 8162378316, '47', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (503404, 'Redd Soan', 6892917346, '12', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (957312, 'Darleen Pursehouse', 1842755814, '50', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (240825, 'Ronna Swatman', 6324815388, '17', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (642703, 'Sanderson Gibbett', 5449729116, '50', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (328235, 'Whitman Romans', 8923658705, '58', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (339845, 'Nanine Kits', 6647228966, '70', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (414795, 'Lemar Veelers', 3669142534, '30', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (854457, 'Leyla Mitro', 4701697157, '56', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (793325, 'Aubrey Corsor', 4346045102, '54', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (737986, 'Claybourne Heighton', 8299618675, '82', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (361372, 'Rinaldo Griswaite', 3621183337, '12', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (858889, 'Franny Rochelle', 1867219253, '35', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (580554, 'Angy Myford', 3836360327, '25', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (931349, 'Koo Bartosch', 5119370688, '55', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (193012, 'Earl Maccari', 7112163512, '54', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (464675, 'Kelley Legendre', 7566265912, '47', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (298054, 'Gwenni Tedder', 1429988503, '39', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (471803, 'Leah Swiers', 8107283673, '25', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (568914, 'Stacee Fihelly', 1694544166, '58', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (507433, 'Maximilian Bazell', 5345891566, '84', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (639274, 'Ricki Lehrmann', 9564356464, '40', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (499650, 'Dmitri Brealey', 1165067886, '76', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (781134, 'Mariele Tineman', 4392447330, '77', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (494856, 'Garek Filippazzo', 3526882649, '92', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (530562, 'Reilly Behninck', 1161897241, '41', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (423022, 'Jada Ingold', 1484396093, '53', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (287921, 'Mart Snalom', 6036067159, '67', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (139056, 'Rodrique Adamik', 1205661202, '35', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (628519, 'Rodney O''Lahy', 8831205545, '10', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (894028, 'Correy Bartzen', 6436342998, '79', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (236220, 'Burty De Biasi', 8819981933, '47', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (899584, 'Lilli Blacket', 4831042162, '15', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (959441, 'Tuck Dace', 9193534929, '97', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (428807, 'Laure Morland', 5734785988, '32', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (461313, 'Gratia Sherrell', 3163449255, '51', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (415674, 'Brig Rubi', 9063569335, '68', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (547991, 'Kath Ceschi', 3791326155, '63', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (330327, 'Breanne Byrch', 4207530277, '52', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (130809, 'Luciano Rubertelli', 8844574775, '32', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (704880, 'Shayne Corradeschi', 9539062969, '25', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (820319, 'Abbott Beaulieu', 7012480362, '58', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (299308, 'Beltran Fawdry', 7616442307, '89', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (139924, 'Leora Schuricke', 3994682314, '72', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (667478, 'Perry Wilstead', 8621072973, '48', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (341287, 'Dalenna Rutherforth', 5714280383, '20', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (468187, 'Remus Willicott', 8413978146, '71', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (895217, 'Maury Rove', 6219459230, '44', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (878431, 'Colan Blaymires', 5178858806, '35', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (542616, 'Quintana Newing', 7526803880, '51', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (857139, 'Laureen Di Ruggero', 1508083823, '96', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (431601, 'Hashim Stidson', 5525430707, '40', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (650978, 'Hamlin Godding', 5393919646, '96', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (854681, 'Elfie Valance', 6645261984, '95', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (386630, 'Si Sneden', 6603714360, '54', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (279059, 'Nalani Weightman', 8498909781, '60', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (809699, 'Manny Alecock', 5655877591, '21', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (397750, 'Elberta Backen', 9323977211, '73', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (821112, 'Tripp Shale', 7578245521, '51', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (207885, 'Dicky Fitzmaurice', 7175010014, '74', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (146986, 'Ettie Geany', 3624541940, '75', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (361577, 'Junia Bauer', 5535974062, '98', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (373667, 'Marge Northen', 5606477788, '35', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (904132, 'Bryna D''Andrea', 8393320510, '61', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (248810, 'Yetta Nares', 4024674291, '22', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (965722, 'Jeremie Capper', 9592734013, '93', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (595775, 'Maddy Denne', 4545681760, '96', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (663822, 'Manfred Artz', 8481090249, '10', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (603313, 'Marni Gaveltone', 8975938837, '97', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (396298, 'Sharity Buxsy', 9918160005, '28', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (356455, 'Randie Cavil', 6679792377, '51', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (193076, 'Brendan Legrand', 2352875561, '44', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (437775, 'Ethelin Isaak', 1044982875, '36', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (588870, 'Walsh Barosch', 4292399538, '74', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (746697, 'Fabiano Silverson', 5887880780, '64', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (390741, 'Dale Marron', 2344380328, '38', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (882902, 'Jarib Gives', 9938634678, '70', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (693354, 'Sayre Cuffin', 6607009625, '41', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (384727, 'Rafaelia Dewberry', 5901661443, '53', '''Investor Relations''');
commit;
prompt 300 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (346562, 'Nettie Kohlert', 2266138512, '59', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (631539, 'Kristo Rydings', 1369520187, '65', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (242642, 'Burnard Giffard', 7966171531, '24', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (545128, 'Kelcie Kyd', 9267000796, '17', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (575914, 'Claybourne Lukianov', 3202709667, '28', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (316984, 'Daisy Blyth', 4032104102, '21', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (684203, 'Cori Wethered', 1462553380, '41', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (417295, 'Stephanie Ipgrave', 2118244143, '91', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (621290, 'Lula Peret', 6151419291, '100', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (538586, 'Pat Bolletti', 8852769422, '26', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (901309, 'Karilynn Shuker', 2733461392, '32', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (710322, 'Melli Steadman', 2512068047, '52', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (875998, 'Rafa Gecke', 5529559626, '42', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (737971, 'Skippy Kenyam', 4161661572, '64', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (749441, 'Georgeta Dowe', 6191092159, '85', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (297508, 'Farlie Bilby', 9237707380, '66', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (966065, 'Anna-diana Hiers', 9786787205, '11', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (303062, 'Kelcy Couth', 3878015412, '85', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (472275, 'Roselia Raitie', 6453181102, '47', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (580851, 'Vonnie Breinlein', 1876755613, '13', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (830910, 'Faunie Sissons', 6696851822, '57', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (230718, 'Nerti Husthwaite', 3235724518, '19', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (919457, 'Freida Rands', 1821912829, '76', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (603075, 'Olympie Flute', 6237466704, '72', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (817627, 'Cirstoforo Biagi', 9418288635, '89', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (161737, 'Tamar Le Sarr', 7152548302, '36', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (373038, 'Schuyler Guisler', 8485261969, '51', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (836156, 'Astrix Loughman', 1701796246, '39', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (705677, 'Smith Pendlenton', 9999537688, '37', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (810743, 'Sibyl Hearst', 4347095922, '62', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (297210, 'Jammal Clixby', 7865943578, '98', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (865018, 'Faun Wanjek', 9438927995, '83', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (652718, 'Valencia Hendrich', 5114975000, '54', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (451753, 'Christy Wardhough', 5834633274, '39', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (498418, 'Jackie Capron', 3018273262, '35', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (355616, 'Kipper Tuddall', 9415074325, '86', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (469358, 'Dorry Ronchetti', 3251438173, '46', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (206491, 'Frazer Martinovic', 3424991145, '11', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (364731, 'Frederico Jencey', 6321999031, '90', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (292194, 'Niccolo Culter', 2465602283, '45', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (222781, 'Loralie Nower', 4486101710, '51', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (115966, 'Wandis Liddiatt', 6638890662, '51', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (745585, 'Gilbertina Petrasek', 5236832701, '66', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (126217, 'Jobie Healings', 7069890584, '66', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (725838, 'Brien Rosenwasser', 9598888518, '34', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (468229, 'Dorian Cluley', 8517863804, '12', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (336595, 'Alejoa Varran', 4951671545, '67', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (486451, 'Torr Doale', 4285505272, '27', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (936640, 'Marge Badland', 7516754180, '80', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (101665, 'Lanna Welman', 2902597392, '79', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (145477, 'Zachariah Kirkup', 7507632970, '88', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (237345, 'Denys Twort', 9068555951, '96', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (643352, 'Jacqueline Woodfine', 7616506792, '50', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (886549, 'Thorpe Douse', 3461206951, '69', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (246210, 'Winston Jirka', 4012018352, '17', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (207720, 'Michale Anneslie', 1125726059, '59', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (981367, 'Aaren Gorden', 3093050678, '70', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (632646, 'Cosette Alcalde', 3638686691, '79', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (326347, 'Sayre Samwayes', 6764007785, '15', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (326194, 'Meryl Hegerty', 7878731909, '53', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (634805, 'Walden Spears', 7533699707, '59', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (833595, 'Nerta Weavill', 7678313315, '62', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (290195, 'Denise Hubbuck', 3654372551, '46', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (580821, 'Fidelia Tenbrug', 7515322078, '63', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (739214, 'Sheeree Spurgin', 5061087290, '44', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (705996, 'Josefina Flatte', 7685253761, '22', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (744486, 'Ricky Shaxby', 4226689345, '71', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (766858, 'Farrah Tomeo', 6386331978, '94', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (798273, 'Gauthier Corroyer', 2023553650, '81', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (532002, 'Franciskus Bartunek', 8528511462, '52', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (892458, 'Frieda Borland', 4593929069, '65', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (990244, 'Martelle Bozward', 3248309744, '39', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (648883, 'Art Coulman', 7582495526, '82', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (675895, 'Pren Dunrige', 4105731209, '42', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (880961, 'Thorin Maffezzoli', 9379347183, '80', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (773965, 'Gearard Harrema', 4768972816, '84', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (596143, 'Yvon Keene', 1972893632, '96', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (445744, 'Gordan Spracklin', 4645392190, '34', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (472322, 'Davide Goodright', 6474383685, '47', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (660002, 'Randal Blaszczynski', 4436126735, '68', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (999884, 'Gerianne Wyllcock', 2044171313, '13', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (102732, 'Lauree Ferraraccio', 7708530288, '93', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (114532, 'Maggi Woolmer', 4949478953, '81', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (305620, 'Lem Demicoli', 7056923250, '86', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (461820, 'Davida Pilch', 6653454490, '17', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (380733, 'Alta Greeding', 5276695395, '46', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (653059, 'Tiffanie Kleis', 6397445677, '93', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (666772, 'Corissa Balnave', 7145544110, '70', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (822759, 'Margaretta Drayn', 8432758314, '94', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (347359, 'Wang Yarnton', 8888994919, '56', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (639242, 'Kassia Colebeck', 3102241793, '30', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (823329, 'Johnnie Effnert', 7029201463, '19', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (330988, 'Ellery Jaffa', 7481007919, '96', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (120625, 'Ursuline Cordell', 5852770226, '19', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (755803, 'Alvira Butler-Bowdon', 7058226102, '76', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (495437, 'Arty Richmont', 2068690917, '58', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (748290, 'Eleni Fowgies', 6642790238, '69', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (829085, 'Josepha Gurnay', 9393787001, '90', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (148220, 'Pren Gavozzi', 3552244745, '58', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (507064, 'Ardyth Cordel', 1049794334, '31', '''Planning''');
commit;
prompt 400 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (258600, 'Salvidor Davy', 5787904636, '17', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (187868, 'Trista McDyer', 3018933445, '34', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (487044, 'Boy Andrat', 6368979398, '59', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (321247, 'Quintana Tarney', 2135781880, '76', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (545242, 'Dorice Hellewell', 2827997841, '23', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (204294, 'Leisha Keates', 6141102413, '92', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (221185, 'Salomone Crolly', 7565600757, '24', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (198300, 'Carter Vanes', 7984582749, '57', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (867120, 'Patricio Zellner', 9061607965, '29', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (473542, 'Carl Westmancoat', 3925771453, '13', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (377449, 'Lenette Syer', 2359833212, '22', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (455069, 'Ripley Lound', 1872348031, '65', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (731272, 'Sasha Ruppel', 6743495690, '12', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (821174, 'Danna Yarrow', 6639134600, '48', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (355251, 'Netti Eaklee', 5467326083, '40', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (456699, 'Jard Lindenbaum', 8331505139, '22', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (838801, 'Tootsie Starton', 8292488369, '61', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (526068, 'Rey Harniman', 5526974525, '90', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (629503, 'Lory Copes', 5702650330, '81', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (792683, 'Joseph Tassell', 1997594621, '75', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (303777, 'Dyane Mainz', 9973255444, '45', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (751998, 'Stephine Feehely', 3135262370, '74', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (611927, 'Celestia Tortoise', 2033733838, '47', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (632183, 'Germain Shear', 6483710675, '18', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (454477, 'Walsh Ulrik', 3572070576, '41', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (323685, 'Zared Abrahamovitz', 6333697631, '35', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (587055, 'Valery Mellhuish', 7639857143, '58', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (495072, 'Sawyer Yashnov', 1527963906, '66', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (956358, 'Kelvin Cobello', 2821117204, '55', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (668344, 'Welch Pesek', 3103486632, '16', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (716219, 'Townsend Durdan', 2678348395, '67', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (693643, 'Dare Bumby', 8949315656, '42', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (896093, 'Derrik Danes', 1982560207, '44', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (256942, 'Ferdy Wesker', 7806678501, '78', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (240468, 'Tod Lardeur', 5304550334, '81', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (952019, 'Theadora Siddens', 7773053490, '52', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (871154, 'Shelia Joiner', 9682498087, '16', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (295916, 'Hewie Lambillion', 7387809919, '12', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (317113, 'Wylma Gutans', 8482183309, '71', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (159310, 'Butch Gabitis', 4915733003, '91', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (206616, 'Lindon Pinnington', 8391447681, '73', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (274947, 'Kalli Narramore', 3738033126, '87', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (402890, 'Kariotta Ziemecki', 8575579373, '86', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (845175, 'Gawain Olechnowicz', 5318691754, '47', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (783109, 'Millie Krojn', 3549286185, '62', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (468241, 'Phip Wenman', 3026978376, '72', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (430881, 'Nathan O''Docherty', 6517259427, '38', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (467051, 'Trixy Glaserman', 3266783142, '12', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (190971, 'Sherilyn Piet', 3977189849, '22', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (403564, 'Jodie Fetter', 6753944439, '62', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (156018, 'Merlina Franscioni', 1489829175, '99', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (502315, 'Llewellyn Miguel', 7029035075, '52', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (421150, 'Kaine Nuscha', 6621135629, '35', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (365884, 'Ivonne Mordan', 7545001744, '38', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (334916, 'Dorelle Kleszinski', 5124157967, '63', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (416462, 'Erik Ovington', 3573938274, '57', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (624654, 'Gerome Bratley', 6004056115, '34', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (890333, 'Jonie Emmott', 6415321277, '88', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (772406, 'Kira Doerffer', 1228306211, '13', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (974244, 'Avril Bentick', 6312539748, '81', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (967141, 'Rey Staggs', 7354025029, '86', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (652570, 'Manny Loveredge', 3606206596, '17', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (426020, 'Henrie Robic', 8245013938, '43', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (449041, 'Patrica Ericssen', 1323681327, '38', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (786285, 'Silas Emig', 4974722307, '75', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (212612, 'Roscoe Janovsky', 1863275852, '57', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (295463, 'Desmund Gremain', 1308350183, '74', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (999828, 'Englebert Ride', 1473931202, '35', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (217780, 'Aidan Heaffey', 5244189811, '95', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (921480, 'Emory Vedyashkin', 4937794990, '56', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (365159, 'Loraine Sherrard', 4444434830, '16', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (979357, 'Malvina Sprull', 3168008071, '27', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (423877, 'Chandal Outhwaite', 8063604745, '78', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (614760, 'Joe Emett', 3432060328, '25', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (297421, 'Reinaldo Gerriets', 3665937035, '88', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (933382, 'Wang Chuney', 3015755618, '46', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (132477, 'Shina Prisley', 2007470020, '91', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (544628, 'Ricoriki Tonna', 1101910497, '86', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (907653, 'Tatum Sherebrooke', 8141023550, '61', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (869945, 'Melesa Corkel', 7287268211, '81', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (789560, 'Jud Slingsby', 9193197938, '42', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (607053, 'Evangelina Moring', 5839011145, '69', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (982471, 'Kim Caukill', 8521937077, '89', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (560559, 'Rana Padillo', 1917066471, '44', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (381618, 'Elvina Turner', 6873499137, '32', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (375677, 'Mickie Bargh', 8163312929, '68', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (387126, 'Charlot Kingshott', 5112989098, '77', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (625458, 'Talya Bentick', 1999210016, '91', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (955765, 'Mara Glader', 7985715508, '45', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (312725, 'Kathrine Leupold', 3645633962, '95', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (731466, 'Cookie Houtbie', 6351204113, '29', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (339843, 'Lolita De Stoop', 1146322566, '61', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (356718, 'Mandy Garroway', 3563249854, '53', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (421111, 'Terese Bront', 5499045612, '30', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (350961, 'Minnaminnie Perelli', 7472783548, '67', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (924384, 'Yoshi McAster', 7465225277, '26', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (591179, 'Edith Chinge', 1818334551, '14', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (284280, 'Loren Clayal', 5312540946, '45', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (587083, 'Retha Kindon', 2297901060, '84', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (532310, 'Lucine Gimblet', 2869979479, '66', '''PMO''');
commit;
prompt 500 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (169376, 'Gonzales Moysey', 4487932454, '70', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (367289, 'Blayne Peachment', 5857587000, '26', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (642996, 'Priscilla McKag', 1677213925, '39', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (419660, 'Liv O''Scully', 7391167391, '14', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (174772, 'Patty Olander', 5018562897, '50', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (568562, 'Marianne Phaup', 7638146739, '96', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (750108, 'Jayme Bedson', 2137844916, '95', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (876923, 'Peirce Maskelyne', 6469382329, '91', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (513285, 'Huntlee Cocks', 2207228816, '23', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (927459, 'Stearn Stoodley', 3403316162, '68', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (591063, 'Ciro Dee', 2415250242, '93', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (172441, 'Mohammed Kesterton', 1416168619, '18', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (707273, 'Stephi Dilger', 5203403919, '82', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (837736, 'Kara-lynn Manchester', 8869226164, '86', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (439658, 'Chane Carnow', 8838431570, '39', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (503749, 'Loren O''Daly', 5505837471, '94', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (363851, 'Nicolais Panchin', 3233842936, '52', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (333176, 'Theadora Wilcott', 7712223903, '15', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (313895, 'Josie Golda', 5981034462, '96', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (133447, 'Cristian Haliday', 1189781434, '19', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (293689, 'Coletta Northern', 7267227604, '57', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (904030, 'Gallagher Drohun', 8672443462, '70', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (619859, 'Joli Becerra', 3365890416, '99', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (297755, 'Sasha Aloshikin', 1505432990, '60', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (959405, 'Tad Keene', 3056938536, '58', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (585748, 'Trever Borne', 2673566380, '10', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (728923, 'Henryetta Ethridge', 5176382735, '72', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (824258, 'Lilah Jiranek', 8418237710, '99', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (788467, 'Urson Ryrie', 7272889590, '37', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (677957, 'Caryl Viggars', 2796590079, '33', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (636446, 'Ravid Gilchriest', 3596428265, '83', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (188130, 'Salli Peel', 1251730984, '44', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (891052, 'Ronnica Freezer', 1501207231, '70', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (174616, 'Kiley Glaister', 2967995222, '66', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (366498, 'Bunnie Gutteridge', 8937631711, '30', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (891707, 'Karlan Mcwhinnie', 8719360389, '55', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (238987, 'Salomon Perel', 8152664470, '98', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (241425, 'Nedi Leaton', 7935847485, '37', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (724910, 'Ignacius Hucquart', 6183523930, '64', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (762825, 'Leisha Liddyard', 6154341577, '15', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (436966, 'Etheline O'' Donohue', 5335046162, '49', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (564760, 'Rubetta MacRannell', 6698929169, '30', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (957672, 'Anthia Middup', 8733050106, '15', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (654225, 'Rowen Bucklan', 7842397784, '28', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (493237, 'Sophronia Planque', 4173423972, '33', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (824714, 'Malva Hawket', 4999718698, '19', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (241835, 'Astrid Antoons', 3585104725, '33', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (884104, 'Dill Thomason', 7624785793, '83', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (232306, 'Lilah Gyngyll', 5714146885, '42', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (893163, 'Eugenie MacBrearty', 1225977389, '51', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (464275, 'Olav St. Quintin', 1611650128, '24', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (916250, 'Brittne Flade', 6822358583, '80', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (750194, 'Zara Eustice', 8056549262, '17', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (951613, 'Corrine Lethabridge', 3771281098, '70', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (221057, 'Norri Airs', 7934789154, '52', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (464493, 'Allene Gunderson', 2314047203, '67', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (276904, 'Nina Horsefield', 7976791621, '14', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (925043, 'Twyla Maddrell', 6792575682, '38', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (154434, 'Jada McCrohon', 1178042587, '18', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (154096, 'Justin Georgius', 3896447152, '48', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (146338, 'Gale Byrd', 2335222499, '42', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (255587, 'Ruddie Gold', 4162978708, '75', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (690758, 'Aymer Kiehl', 9616531564, '94', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (805117, 'Otho Laugier', 5567252561, '77', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (937674, 'Natasha Munnion', 6242963808, '34', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (882284, 'Giacinta Blackie', 8389580238, '33', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (715963, 'Amaleta Iacofo', 2592014891, '32', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (351041, 'Davida Englefield', 8761959694, '66', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (300004, 'Bill Ainley', 5747461608, '86', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (535241, 'Elie Driver', 6075281884, '47', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (952372, 'Jareb Hinkensen', 1292272632, '62', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (752315, 'Jannel Selbie', 2961300460, '69', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (728721, 'Hersch Bourner', 3649205413, '83', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (282758, 'Munmro Baxter', 1438472746, '78', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (679267, 'Janeczka Muncer', 5897700117, '15', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (824942, 'Tanner O''Loghlen', 1213454109, '48', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (722692, 'Chery Jagels', 5005833143, '76', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (984005, 'King Lembke', 9834064173, '54', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (803752, 'Nicolea Tuer', 8122634628, '39', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (313319, 'Raven Birdall', 4626033483, '56', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (154742, 'Bradney Macconaghy', 2122499552, '80', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (897267, 'Caprice McShirrie', 8393900630, '28', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (105566, 'Rhodie Belin', 1693866996, '61', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (223710, 'Alonso Melato', 7142855575, '86', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (277848, 'Inna Garken', 2858723386, '35', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (767892, 'Zitella Stoneley', 6984130032, '57', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (391934, 'Pepito Overell', 2882470115, '21', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (335399, 'Rebeka Wandtke', 4997213862, '67', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (522090, 'Holt Whichelow', 9236422365, '49', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (988505, 'Husein Paslow', 4648983759, '84', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (667713, 'Dulcy Cloney', 2266551803, '83', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (971314, 'Berkley Althorp', 2636203605, '80', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (804123, 'Obie Collins', 6722094690, '76', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (945344, 'Zita Ratter', 5079480831, '68', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (872789, 'Steffie Bradburne', 8133012926, '62', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (819236, 'Colly Gutteridge', 2049583325, '93', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (214697, 'Michal Sailor', 4535665031, '53', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (380195, 'Eamon Kimbly', 6912135570, '13', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (265001, 'Sigismund Pretley', 5884933011, '68', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (911426, 'Fanni Seacombe', 3685738536, '37', '''Accounting''');
commit;
prompt 600 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (163063, 'Melva Mangam', 9433738935, '15', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (932504, 'Farley Knath', 1115404871, '45', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (275996, 'Sarina Petrushkevich', 2427803619, '100', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (978504, 'Melly Blackhurst', 1489811302, '39', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (660461, 'Elsi Gatrell', 2116056195, '46', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (951247, 'Daryle Yesenin', 9765883788, '66', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (886048, 'Hannie Seargeant', 1077936049, '31', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (980207, 'Lazar Deakan', 1174638947, '88', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (525011, 'Domenic Ida', 7369123045, '98', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (775998, 'Ira Mallon', 2259143629, '35', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (649917, 'Lauri Whicher', 9918549042, '73', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (638204, 'Mead Ruddin', 6788507991, '74', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (555294, 'Merwyn Reinhart', 7144446131, '72', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (944890, 'Ulla Chipchase', 1405840925, '13', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (467787, 'Izaak Reardon', 9696344375, '76', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (235336, 'Welch Alltimes', 3898571814, '73', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (748353, 'Sherlock Potteril', 1045325385, '71', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (890783, 'Randy Scrymgeour', 8345718680, '86', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (813513, 'Yule Youtead', 4143775516, '38', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (988609, 'Tandy Brun', 2023537225, '82', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (467157, 'Izabel Kemmish', 5247457161, '99', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (371337, 'Kristopher Pabel', 7182257041, '96', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (538365, 'Livy Colling', 3588182318, '59', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (954191, 'Glynis Bunny', 2704427356, '59', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (495889, 'Hamil Chesman', 4269061438, '32', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (462566, 'Lucia Behling', 4346328679, '17', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (125110, 'Jennie Dilleway', 3382739679, '82', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (861125, 'Chandal Bucknall', 6552094425, '72', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (395442, 'Aylmar Motherwell', 2962019539, '18', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (326089, 'Flynn Patkin', 8012961746, '72', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (497474, 'Marthe Antoney', 3087675870, '47', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (282095, 'Muhammad Benedit', 6351555460, '77', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (325387, 'Guilbert Hlavecek', 9986706032, '60', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (451131, 'Anallese Childerley', 3486852846, '96', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (947285, 'Lori Snape', 8493020900, '95', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (172749, 'Boycey Hiorn', 8711890420, '57', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (499332, 'Adina Clementson', 3047899593, '13', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (266612, 'Babbie Potkin', 8121330443, '12', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (514819, 'Brana Duplock', 5506890925, '33', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (416684, 'Welsh Zealy', 4916923399, '75', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (994573, 'Red Lauderdale', 8551320062, '85', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (393237, 'Humberto Blakiston', 1431805416, '21', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (670849, 'Robina Franzolini', 9751371176, '11', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (835038, 'Delphinia MacGauhy', 5317973534, '68', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (139142, 'Hamil Chatelot', 8351294723, '88', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (527970, 'Flint Cadle', 2791702862, '93', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (523777, 'Idalia Hierro', 3987543445, '87', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (164895, 'Elset Huckfield', 8297960866, '32', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (708489, 'Dalli Kewley', 1618319305, '15', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (339187, 'Valenka Nind', 8345056924, '48', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (425133, 'Clarie Arpino', 2439936531, '58', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (588844, 'Charlene Stannas', 5014018958, '22', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (769457, 'Crosby Ciardo', 6934950059, '72', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (422606, 'Shanda Eddisford', 8053014164, '44', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (567608, 'Chane Merrell', 3595592244, '22', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (321491, 'Kat Dyet', 3628804014, '15', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (723963, 'Mead Gavigan', 5895817641, '36', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (650518, 'Melony Antoniutti', 5454379101, '97', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (811965, 'Alene Reddy', 6911407816, '80', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (215171, 'Tatum Crack', 8338370404, '92', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (357376, 'Aurelie Seward', 3269656438, '52', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (476092, 'Cherilynn Baynton', 3086689405, '12', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (627042, 'Magdaia Steptow', 4036720207, '83', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (820424, 'Townsend MacGinley', 4496982435, '41', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (712049, 'Caryn McDuffie', 5745044913, '58', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (392574, 'Dyanne Meachan', 9241622922, '69', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (760474, 'John Laurant', 4069459751, '22', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (219621, 'Linda Bedward', 2976205120, '21', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (804535, 'Bridgette Baildon', 8653634026, '51', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (463314, 'Ephraim Eilles', 4447865767, '14', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (256285, 'Enos FitzGilbert', 4107701669, '37', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (794925, 'Edithe Pantin', 6961479572, '64', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (695774, 'Francklyn Suttell', 8469029532, '15', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (851687, 'Elfrida Whatson', 5051388795, '83', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (611254, 'Karna Haydn', 7509239882, '73', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (335917, 'Arte Durbyn', 4185908914, '97', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (816316, 'Finley Collier', 4654773587, '82', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (838767, 'Travers Yurkiewicz', 6776347486, '66', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (864969, 'Clemente Bruun', 5452147536, '93', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (688829, 'Talia Iuorio', 7821283412, '55', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (528893, 'Bebe Florence', 4166712366, '73', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (437418, 'Corry Fancott', 7488611751, '38', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (896832, 'Sean Dalliwatr', 9235352764, '84', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (825127, 'Clerissa Folke', 9843560532, '12', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (517044, 'Isidro Boness', 1294284472, '37', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (790949, 'Fransisco Stoneman', 3426776936, '63', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (381782, 'Inglis Conlaund', 3175854005, '49', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (460159, 'Shannan Treneer', 5323483079, '28', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (409640, 'Genni McGeraghty', 7335998210, '68', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (163400, 'Guenna Kasher', 5574442860, '24', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (748737, 'Moore Mulheron', 9093725274, '99', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (685667, 'Martie Pichmann', 9728533695, '93', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (627473, 'Hana Cicchinelli', 2727779600, '92', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (925647, 'Estrella Culver', 8323033882, '24', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (419420, 'Garek Dickenson', 2366596743, '88', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (846215, 'Corly Krikorian', 7117264267, '15', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (787467, 'Hobey Dyka', 1045010586, '32', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (635390, 'Jozef Vannini', 5913007721, '88', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (811435, 'Curran Downer', 7557284670, '53', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (982229, 'Nonah Rathjen', 8217624661, '89', '''Planning''');
commit;
prompt 700 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (831308, 'Denis Lago', 4011481724, '12', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (922836, 'Adan Pabel', 4278495004, '93', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (608822, 'Felicle Woolmington', 3606625409, '18', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (694968, 'Cordy Birkinshaw', 2491676339, '17', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (549587, 'Ted Ashman', 8752886103, '54', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (895824, 'Tallou Orsi', 2229968064, '48', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (975955, 'Marten Sutherley', 5753715337, '100', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (812716, 'Lark Pinhorn', 8809205974, '47', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (138512, 'Tobey Sommerville', 4181612194, '93', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (169984, 'Anders Knappe', 3196718849, '50', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (811340, 'Giusto Aizik', 2086653368, '39', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (245951, 'Orson Cappleman', 2842480424, '82', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (930838, 'Shawn Bruinsma', 1524887826, '63', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (558810, 'Hersch Gallop', 2908581300, '49', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (815803, 'Briant Pendrill', 4623728976, '59', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (813031, 'Chaim Broun', 6568707091, '45', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (174873, 'Thomasa Drakers', 1013640925, '50', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (754757, 'Stephan Dewis', 9601504299, '75', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (272250, 'Jonie Vedyaev', 1521405141, '43', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (664015, 'Kendra Sleigh', 5226660435, '27', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (912569, 'Gaynor Bucke', 2233203051, '71', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (818683, 'Jolene Hinsche', 7586933983, '77', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (576897, 'Ches Freegard', 5306896150, '30', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (876382, 'Hulda Huyghe', 4254791087, '79', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (649386, 'Leopold Stove', 6922996519, '28', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (806531, 'Leonerd Stucke', 8233412139, '94', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (509759, 'Sayers Chalcot', 5067229662, '39', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (666939, 'Port Eggleston', 3441705679, '17', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (938011, 'Arv Toal', 6608584903, '66', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (350157, 'Otis Dighton', 6631191781, '19', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (739196, 'Standford Leband', 8301497368, '92', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (974838, 'Augie Cunniff', 3392065479, '38', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (626617, 'Cornelia McArdell', 6418188875, '81', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (686831, 'Darlleen Slatford', 7583102270, '89', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (202789, 'Mattie Sallnow', 4995181233, '48', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (913608, 'Brendin Waddell', 4933903631, '85', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (932490, 'Raven Grunguer', 5112409223, '50', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (756527, 'Dulcea Kilfoyle', 9023489803, '39', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (985998, 'Garth Mayes', 2894131400, '21', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (346374, 'Catharina Devonish', 6857738449, '92', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (598178, 'Bert Poulsen', 5061519593, '82', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (923125, 'Gunilla McLucas', 5469524337, '22', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (281232, 'Lorant Beadle', 2341040782, '22', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (902084, 'Nickolaus Nary', 6601479333, '26', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (219401, 'Nicolea Hartle', 5627226029, '27', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (401053, 'Lavena Bloor', 1014872471, '100', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (353263, 'Tressa Somner', 1867532313, '27', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (852319, 'Bessie Beeho', 7592041014, '63', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (616297, 'Janela Showers', 3171126027, '13', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (753027, 'Al Skeath', 2023406235, '39', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (711259, 'Klement Demangeon', 9679621369, '38', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (462208, 'Angeli Greggor', 3642425313, '91', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (310497, 'Rachele Tilliard', 8854421800, '18', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (475503, 'Harwell Torregiani', 9173044195, '62', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (599202, 'Haskel Rouse', 3099244727, '12', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (988902, 'Nichol Christol', 1365040112, '57', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (256434, 'Heinrick Fearneley', 3358356088, '82', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (157481, 'Livy Varran', 8864284726, '29', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (924468, 'Morganica Mohammed', 6465911946, '56', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (741761, 'Estrellita Ghirardi', 8636529566, '88', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (318028, 'Mile Thoday', 9332933587, '54', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (662281, 'Sherwood McTiernan', 2887745389, '52', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (185968, 'Fionna McPhelimy', 3823809766, '80', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (913676, 'Fifine Roscamp', 8662361217, '69', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (684782, 'Mallory Davidovitch', 8987753222, '53', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (136252, 'Markus Brigg', 7307419119, '88', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (416907, 'Bartholomeo Ollett', 4984141550, '54', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (465006, 'Corella Oris', 9792750747, '52', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (426823, 'Oralee Seiller', 3151720596, '86', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (493995, 'Gisele Dumbleton', 2672251082, '76', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (323240, 'Barbabra Tyrone', 9642649170, '26', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (951695, 'Brook Gurnee', 6852997725, '52', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (729560, 'Diarmid Vasquez', 8453740259, '93', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (590043, 'Dinah Serraillier', 1438786323, '24', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (684175, 'Bernadene Ashelford', 9422268818, '66', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (843822, 'Tomasina Placide', 5318225484, '48', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (248162, 'Barb Dumbleton', 5494447987, '56', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (746971, 'Kerri Moulin', 8201135502, '54', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (588049, 'Lexi Tatlock', 7285813313, '55', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (880118, 'Vance Espie', 9085696327, '60', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (189484, 'Andeee Megainey', 7623901155, '50', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (211727, 'Sergei Dewberry', 3017080773, '81', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (857467, 'Kit O''Keeffe', 6535980449, '70', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (987538, 'Dav Bercher', 6418622389, '42', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (347656, 'Mohandis Coleford', 8153308720, '94', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (101761, 'Saundra Brennen', 1829844397, '57', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (384459, 'Sidnee Kleinmann', 1303616441, '59', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (569786, 'Brigham Belliard', 3604950602, '60', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (644673, 'Tiffani Joddins', 3819974451, '51', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (961546, 'Ana Klauber', 8137608479, '81', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (245475, 'Hermon Hunnybun', 2669972657, '17', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (474829, 'Crissie Cazalet', 3131895011, '86', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (254991, 'Lina Tierney', 1466769899, '12', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (808361, 'Cherry Ruffy', 5811971884, '44', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (902719, 'Molly Olliffe', 7537436289, '56', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (464935, 'Deana Peinton', 7573274541, '69', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (400650, 'Cami MacKintosh', 8299679585, '97', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (146669, 'Chickie Hansford', 6137382921, '13', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (454582, 'Rozalin Kuhlen', 4011003322, '95', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (562435, 'Arnaldo Jervis', 5278789337, '62', '''Investor Relations''');
commit;
prompt 800 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (248145, 'Monica Raggitt', 9991405766, '20', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (807629, 'Chrystal Castellet', 6439326987, '91', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (440503, 'Elias Becarra', 2281472278, '81', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (311222, 'Reeva Irce', 8451728378, '45', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (417935, 'Lemuel Ludlom', 4371732961, '72', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (614088, 'Mack Ivankin', 9744963409, '89', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (207262, 'Tamqrah Quiney', 5572461901, '56', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (796842, 'Demetre Waldock', 4666371306, '47', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (567060, 'Xever Lumsdale', 8763876999, '95', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (726182, 'Theo Eatttok', 9604642245, '20', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (120265, 'Bridie Mulberry', 3376213704, '99', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (643672, 'Devonna Manus', 6602966135, '77', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (228196, 'Saundra Pople', 4981605202, '49', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (884701, 'Sadie Toquet', 8261937701, '32', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (814307, 'Christine Spinage', 5296317649, '37', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (174374, 'Suzann Pailin', 8706252555, '88', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (576160, 'Anallese Stirtle', 9002730093, '13', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (694547, 'Corrine McShirie', 8248368262, '49', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (743402, 'Maurita Burles', 8289979906, '89', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (738198, 'Trisha Lothean', 2377656593, '43', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (547537, 'Ally Ourtic', 5881215187, '94', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (286673, 'Stacee Matej', 1092383232, '86', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (562289, 'Lindsay Robillard', 3372743255, '52', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (575406, 'Christiane Hallut', 5503275079, '73', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (654548, 'Jayson Sandlin', 6504581341, '33', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (864862, 'Agretha Arent', 2128762612, '53', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (429742, 'Randie Gateman', 5093623685, '99', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (120274, 'Kaila Bilney', 1933750701, '50', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (389446, 'Darin Gillbe', 2511384022, '96', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (672215, 'Perry O''Duggan', 9051242354, '75', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (757319, 'Joel Upham', 6691092313, '69', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (421601, 'Ellerey Brotheridge', 7786364543, '13', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (438708, 'Denis Howkins', 4094437342, '58', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (922697, 'Erwin Alcock', 8415583074, '86', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (718519, 'Fernande Rump', 4623532784, '57', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (139441, 'Caryl Riglar', 2676944292, '14', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (722924, 'Rurik McLauchlin', 8282633771, '39', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (748901, 'Polly Ebenezer', 5842583946, '42', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (500417, 'Barbara-anne Gubbin', 6783453730, '70', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (439113, 'Jon Kunzelmann', 9672374868, '60', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (573567, 'Meryl Pool', 4196245433, '35', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (171147, 'Cherrita Shears', 8982917673, '13', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (439587, 'Nat Rossi', 6006393181, '97', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (806274, 'Pamelina De Stoop', 2814836846, '66', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (498928, 'Kaine Wixey', 3435897396, '99', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (522343, 'Fiann Schoroder', 4097776728, '56', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (720982, 'Brena Lesly', 1481727513, '27', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (483685, 'Natale Curcher', 6506499153, '93', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (937639, 'Lazaro Mayow', 6094482318, '69', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (535734, 'Row Seleway', 6293033672, '10', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (893148, 'Godfrey Boyfield', 7657858839, '18', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (576860, 'Heywood Seymour', 2875414098, '68', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (209203, 'Siegfried Bothram', 6758820055, '97', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (201632, 'Carver Panniers', 1742274781, '73', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (288642, 'Larissa Kenford', 1886956247, '16', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (409633, 'Bamby Savill', 5071868246, '94', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (700713, 'Harcourt Doyle', 4964670545, '61', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (941894, 'Atlante McGloin', 5703833383, '98', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (627530, 'Belicia Copplestone', 2803303904, '26', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (828392, 'Harrison Willerson', 1261744002, '94', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (783447, 'Chickie Guild', 9402365263, '58', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (393062, 'Mathew Seligson', 9409955425, '13', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (241140, 'Corrina Stenson', 6665245804, '65', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (465485, 'Joly Pollicote', 3692030390, '62', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (722967, 'Deeann Carnihan', 5182636085, '46', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (871919, 'Brig Arnaudot', 3302394383, '28', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (668404, 'Tammy Cator', 4549012039, '45', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (190352, 'Judd McPeake', 1402287797, '23', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (101906, 'Nell Huson', 5173619124, '14', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (265246, 'Charmian Hailey', 3524264030, '84', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (710350, 'Wendy Belvin', 1621640994, '19', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (381785, 'Perkin Batterbee', 8088536701, '83', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (644915, 'Fancy Blabey', 9226445575, '82', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (933738, 'Josy Gelling', 2036729827, '89', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (128055, 'Webb Divill', 2051759901, '37', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (640157, 'Lusa Lamprecht', 8646946836, '15', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (794673, 'Clarie Tale', 9958614715, '46', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (664321, 'Wilburt Bartle', 3089162128, '11', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (892524, 'August Guiot', 8416422388, '52', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (884164, 'Lemuel Steptowe', 6664760707, '81', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (769675, 'Robinett Metzig', 8613964861, '97', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (428065, 'Alyse Yakobovitz', 5423330969, '23', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (650353, 'Emmalyn Renackowna', 6039970233, '22', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (651621, 'Peder Murrells', 5052670679, '65', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (353707, 'Briney Cunniff', 2863937583, '14', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (655945, 'Baryram Penhall', 8946765083, '95', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (798243, 'Demetria Joyson', 6141479556, '96', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (252141, 'Conrad Peatheyjohns', 2877186496, '44', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (282029, 'Pennie Ousby', 8161815760, '27', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (814852, 'Tresa Swanston', 3666136315, '99', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (709497, 'Reube Ledeker', 8895596887, '85', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (433054, 'Em Gleave', 1446473231, '71', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (802826, 'Bellanca Draisey', 9062229624, '20', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (561721, 'Nolie Stickler', 4425039478, '37', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (412365, 'Bessy Adanet', 6314083471, '84', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (672175, 'Sherline Leggott', 2169741055, '34', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (607550, 'Loretta Armin', 2444412089, '34', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (377925, 'Yasmin Tallboy', 3092534408, '85', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (921179, 'Alyda Philippart', 5175214282, '41', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (661660, 'Wilden Bloxham', 2445039121, '25', '''PMO''');
commit;
prompt 900 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (845257, 'Torrence Duffield', 8492389158, '49', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (645071, 'Arnie Pyett', 5412315732, '57', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (977157, 'Lexis Besnardeau', 1636696783, '54', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (950882, 'Grantham McCraine', 6395024150, '95', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (390917, 'Darryl Gobel', 2609334456, '15', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (500830, 'Sissy Oakley', 7014789660, '79', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (953662, 'Cherilyn Hindshaw', 5299938649, '98', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (913796, 'Kevon Bradborne', 9492376963, '26', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (137891, 'Fleurette Doumerque', 6031549225, '30', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (543881, 'Frederik Weddup', 1163657717, '11', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (836583, 'Kathy Flury', 1092924936, '47', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (382203, 'Nikolia Fyers', 6908225618, '16', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (505991, 'Cookie Eaden', 2765376538, '13', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (949224, 'Silvio Hoxey', 5812340889, '95', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (714931, 'Dane Hasslocher', 7931164675, '51', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (330116, 'Karia Nisot', 4119500295, '44', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (604686, 'Roma Tosney', 6675718168, '59', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (345771, 'Flem Jobes', 5827656142, '81', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (171142, 'Magdalena Yarham', 4487740836, '30', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (649797, 'Consuela Abarough', 5879820200, '32', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (213343, 'Maria Houliston', 8006953545, '37', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (808321, 'Claretta Mc Cahey', 6886290450, '54', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (945784, 'Valina Kearley', 3969930913, '54', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (277419, 'Augie Sindall', 9303651443, '94', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (628801, 'Louis Oakenfall', 3509296058, '11', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (628616, 'Lannie Hansie', 3615820026, '22', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (510799, 'Pepito Ledster', 8337644744, '93', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (727507, 'Analise Rahlof', 1916580696, '46', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (108211, 'Locke Harrington', 9534387088, '62', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (998685, 'Pollyanna Jachimiak', 1489837008, '97', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (647954, 'Lauraine Alfonso', 3092121731, '22', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (982883, 'Kip Villar', 5998172404, '68', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (188063, 'Angeli Atterbury', 4154151349, '96', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (533824, 'Cecelia Marsden', 9544544498, '93', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (235433, 'Abagael Bryant', 9399239286, '89', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (872068, 'Dalton Cutts', 8272961951, '63', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (430710, 'Micky Cleary', 9443927309, '49', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (445373, 'Heloise Ciottoi', 7487966318, '92', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (196549, 'Charmian Ragbourn', 8417735647, '95', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (167605, 'Melvyn Issit', 8436064516, '54', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (542599, 'Diann Petschelt', 8996407897, '65', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (507719, 'Constantine Barlee', 7833320821, '100', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (358159, 'Darrell Loffhead', 7665304969, '99', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (930942, 'Shaine Langfitt', 3358576846, '69', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (193305, 'Karalynn Spoors', 5604240527, '12', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (807743, 'Gilly Kinastan', 5934224180, '68', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (519205, 'Dag Tomkins', 2698328578, '92', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (621817, 'Immanuel Topping', 7632053332, '41', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (811854, 'Hilliard Silversmid', 7381937500, '68', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (706529, 'Consuelo Spilling', 5886999205, '85', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (396664, 'Ginevra Patek', 1584076370, '39', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (154533, 'Vinson Wadman', 3403575954, '68', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (534160, 'Vladamir Skiggs', 9823717645, '41', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (802325, 'Sherye Venturoli', 7466513592, '76', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (669682, 'Genia Darwin', 9315616366, '69', '''Legal''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (496078, 'Phyllys Waddilove', 4456303962, '55', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (863624, 'Ivy Dudney', 8488157318, '87', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (419760, 'Hunfredo Harmeston', 2726705856, '80', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (988612, 'Micky Walcar', 6766646559, '98', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (703575, 'Aloise O''Sculley', 2454155875, '55', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (624449, 'Gusta Danbye', 5312847881, '64', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (824514, 'Merralee Roll', 8568175901, '58', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (555537, 'Selestina Hebditch', 8064295817, '81', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (326127, 'Howey Sterricks', 1018656156, '50', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (860141, 'Ware Raddan', 2586004774, '86', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (299454, 'Louisette Doll', 6308285376, '81', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (766190, 'Jacki Dresse', 9161078244, '57', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (243186, 'Tadeas Le Lievre', 7526711013, '10', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (270933, 'Estevan Wyeld', 8502850663, '76', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (492070, 'Blondy O''Shee', 6934496636, '58', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (510747, 'Lise Handes', 3082566540, '70', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (572774, 'Kandace Aykroyd', 8785497150, '89', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (521282, 'Jeri Cavozzi', 2969872756, '87', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (819314, 'Patrice Alans', 1699132080, '21', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (154509, 'Merle Bakes', 4821851842, '84', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (345346, 'Shayne Murdoch', 1253939506, '98', '''Customer Service''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (652715, 'Roy Del Monte', 8047163691, '95', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (211428, 'Abby Van Haeften', 8745706220, '52', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (521754, 'Dionis Kinavan', 3102914007, '35', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (742391, 'Lief Woltering', 6533227106, '80', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (482996, 'Leonerd Edghinn', 5417665999, '26', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (342679, 'Abdul Rickman', 4475000518, '25', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (277257, 'Horatia Hurry', 9863965561, '47', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (346943, 'Margaretha Rangall', 2039631417, '17', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (187041, 'Milt Ziehm', 9815404209, '28', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (500718, 'Josepha Greggs', 1871006093, '20', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (802027, 'Una Feldberg', 2583240022, '71', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (895851, 'Peggy Habgood', 3693305259, '81', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (450467, 'Daniele Jenkyn', 3161308167, '65', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (523249, 'Bibby Zywicki', 6035876584, '33', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (145615, 'Hi McCrackem', 8678150544, '32', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (866766, 'Wilhelm Yitzowitz', 3593485978, '54', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (310083, 'Gertruda Hatley', 1847877678, '77', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (484136, 'Bryn Claire', 5379494191, '45', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (667133, 'Devon Benning', 5171220717, '41', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (569659, 'Carolann Herries', 3268960174, '36', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (818099, 'Calhoun Mowen', 8857514466, '76', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (940803, 'Irena Totterdell', 7124700024, '33', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (471599, 'Blanca Shillaber', 7819643999, '46', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (293702, 'Welsh Craigheid', 6087367082, '91', '''Finance''');
commit;
prompt 1000 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (179107, 'Ransom Plumer', 1772060903, '98', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (735988, 'Gustavo Basson', 8313662129, '10', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (510777, 'Gabie Venables', 5394545785, '42', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (799609, 'Em Letterese', 3605187713, '96', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (644555, 'Catina Maidment', 9875413453, '83', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (484796, 'Katya Leedal', 5339300854, '40', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (341077, 'Archibald Lupson', 7379089378, '59', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (144545, 'Myrlene Sesser', 6468970482, '29', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (678251, 'Hodge Pentercost', 5897866205, '84', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (368182, 'Boris Gaskin', 5762254365, '43', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (101214, 'Maria Gittoes', 9708120612, '70', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (643634, 'Alphonse Tinsley', 2248392927, '38', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (517187, 'Veradis Feldbaum', 8815154031, '93', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (826045, 'Arielle Stollenwerck', 7167998778, '73', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (137847, 'Brianna Goodoune', 8537852975, '79', '''HR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (741907, 'Kellby Lakin', 2947162756, '47', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (881568, 'Jerrold Catlow', 2557356942, '38', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (828695, 'Theresa Hendriksen', 7818550010, '53', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (755318, 'Javier Allchorne', 3501710127, '51', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (946077, 'Stearn Nicholls', 5192382000, '82', '''Engineering''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (727501, 'Ange Winslett', 8813110868, '59', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (251831, 'Nerita Dyson', 3995053736, '31', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (163551, 'Tremain Mordecai', 2743213059, '19', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (171745, 'Madlin Iacobo', 4507740819, '81', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (536834, 'Ardelia Danahar', 5756712169, '67', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (551227, 'Nisse Metrick', 1627578009, '72', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (336011, 'Koo Souster', 8931443107, '73', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (795915, 'Zared Troughton', 4472405709, '86', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (986215, 'Camilla Hulson', 2389620844, '38', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (511761, 'Jonathon Adey', 3189583040, '66', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (376725, 'Garrik Jannequin', 2921682295, '14', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (589332, 'Lebbie Bartolijn', 8651846962, '26', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (456160, 'Angelique Lasslett', 8297187361, '73', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (156086, 'Malachi Howell', 4399007227, '94', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (473930, 'Marguerite Witz', 9053763800, '67', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (711009, 'Nadean Glackin', 3098436939, '97', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (214576, 'Skyler Donisthorpe', 1529054880, '52', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (354765, 'Phillip Learoyd', 6257825505, '87', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (350093, 'Thomasin Petriello', 7273747773, '75', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (850815, 'Dael Wellstood', 5004158754, '83', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (849957, 'Vincenz McCotter', 5288315606, '99', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (702764, 'Dyanne Peddersen', 1033834962, '79', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (810352, 'Land Theze', 3042702824, '93', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (486857, 'Giles Rogister', 3482632428, '44', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (229634, 'Kip Tevlin', 4428019987, '37', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (982855, 'Johanna Dulen', 9344519459, '42', '''Product Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (257731, 'Orlando Bragg', 2498492576, '23', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (604388, 'Krysta Portis', 2411720277, '65', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (638971, 'Marlane Frye', 1422956154, '65', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (275230, 'Alejandro Gammell', 1929115334, '12', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (308215, 'Aline Golsworthy', 5276094769, '79', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (261875, 'Alena Pashe', 4122704000, '22', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (425109, 'Samantha Ragate', 8834631921, '18', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (838709, 'Hector Mound', 4806220647, '94', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (841697, 'Donica Phittiplace', 9764392785, '27', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (985626, 'Melantha Gidman', 6602378881, '65', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (905706, 'Isis Newlands', 7671605174, '62', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (682428, 'Andy Pietruschka', 7074897217, '96', '''Investor Relations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (921316, 'Gates Gai', 9877267406, '80', '''Compliance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (446620, 'Angie Maso', 8527653245, '76', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (243366, 'Orazio Mitkcov', 8376028435, '73', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (885357, 'Hort Cubbit', 7721041559, '15', '''Accounting''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (439788, 'Carlyle Crosio', 7127189652, '21', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (843870, 'Marrissa Timlin', 1549474431, '49', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (107908, 'Sinclare Westmorland', 8742438270, '12', '''Logistics''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (420996, 'Tedmund Goalby', 3138465995, '79', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (869385, 'Misti Gregon', 1936068149, '30', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (628059, 'Avrom Harsnep', 6422394392, '28', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (884392, 'Carlota Ferson', 8603783796, '61', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (670710, 'Ruperto Anthon', 8025128827, '83', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (386413, 'Von Rotherforth', 4011329573, '57', '''Sales''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (699232, 'Meryl Vowell', 6089254906, '79', '''Operations''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (422221, 'Roseanne Huxtable', 9847628966, '15', '''PMO''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (469577, 'Derby McFetridge', 4377436672, '42', '''Biz Development''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (306421, 'Claudianus Elwel', 4941023525, '44', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (842046, 'Virgilio Checklin', 3344787060, '27', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (648594, 'Susy Stodhart', 6133765135, '89', '''QA''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (938619, 'Rebekkah Clymo', 7656370362, '75', '''Planning''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (880109, 'Cyrus Kilban', 3545875955, '42', '''Admin''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (767839, 'Cal Aberkirdo', 4447905064, '37', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (337034, 'Raimondo Goaley', 2094974441, '36', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (601281, 'Tye Cunnington', 2111443235, '86', '''Training''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (951674, 'Fidela Elsmore', 2781281470, '71', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (793414, 'Pia Spurnier', 5924247797, '41', '''Procurement''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (290010, 'Cole Kolin', 8139599969, '63', '''Finance''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (351105, 'Iormina Eagle', 2169822070, '58', '''Inventory''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (165113, 'Maxwell Eberts', 3117816994, '96', '''Marketing''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (322343, 'Thadeus Tryme', 1586049807, '65', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (447684, 'Zena Lillywhite', 6616323494, '39', '''PR''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (852484, 'Ashely Broggio', 5416885149, '18', '''Corporate Comms''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (861457, 'Lorene Coad', 8875429917, '25', '''Tech Support''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (733883, 'Trudy Proby', 3971816321, '40', '''Production''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (499970, 'Janek Coppen', 4154998357, '50', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (852163, 'Anneliese Zink', 6336215180, '37', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (782506, 'Orin Askew', 7112129423, '74', '''IT''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (527266, 'Lida Klimkovich', 1484464053, '42', '''Security''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (506727, 'Del Lippiatt', 9554604890, '48', '''Risk Mgmt''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (950095, 'Cleve Bradfield', 2348948682, '10', '''Facilities''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (132586, 'Roseanne Hassent', 3109760216, '95', '''R&D''');
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (568534, 'Con Menichelli', 9191651527, '92', '''Biz Development''');
commit;
prompt 1100 records committed...
insert into DEPARTMENT_MANAGERS (dmid, dmname, phone, reports, deptname)
values (497616, 'Colman Broadhead', 6702763011, '13', '''Inventory''');
commit;
prompt 1101 records loaded
prompt Loading EMPLOYEE...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (1, 'Emp John', 3453453456, 40, 'HR');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (2, 'Emp Jane', 4564564567, 35, 'Finance');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (3, 'Emp Jack', 5675675678, 30, 'IT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (933764, 'WillieBale', 295658376, 5, 'SHOT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (204348, 'PattyMalone', 943610600, 11, 'Hershey Foods Corp.');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (275428, 'NikkiDysart', 936237728, 5, 'Keller Williams Real');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (67769, 'MelanieCollie', 72542710, 11, 'C & A Industries');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (781456, 'SaffronLoggins', 59392545, 9, 'Key Information Syst');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (451394, 'KyraDuke', 675404885, 9, 'Bluff City Steel');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (981599, 'MariaIdol', 114653040, 11, 'Extreme Pizza');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (405919, 'ChristmasRucker', 61917611, 8, 'Keller Williams Real');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (178135, 'JoaquinHayes', 202019448, 7, 'Employer Services');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (572401, 'JakeOntiveros', 827259224, 9, 'Summit Energy');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (226290, 'WangBegley', 509742398, 5, 'IT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (872865, 'MelaniePryce', 70051063, 5, 'SHOT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (526840, 'ReneePepper', 695661039, 6, 'Liners Direct');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (821100, 'MichelleSuvari', 493902802, 10, 'Cynergy Data');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (763959, 'MirandaNeill', 472230735, 7, 'Green Mountain Coffe');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (706945, 'ArminPonty', 179505273, 6, 'Wal-Mart Stores');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (813013, 'ClintBullock', 105567478, 10, 'GRT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (162242, 'RaymondStigers', 674609634, 12, 'Process Plus');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (751751, 'AnnLeachman', 137468995, 10, 'Process Plus');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (582460, 'MattStigers', 776770825, 8, 'IntegraMed America');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (96868, 'AshtonBosco', 198942810, 12, 'Timberlane Woodcraft');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (867237, 'JuniorPeniston', 40959795, 11, 'Royal Gold');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (818524, 'VerticalGracie', 616779343, 8, 'Adea Solutions');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (768304, 'AntonioBello', 193563064, 7, 'Cynergy Data');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (420801, 'MegHopkins', 433653465, 7, 'Spenser Communicatio');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (106866, 'MaggieProwse', 338389717, 7, 'Summit Energy');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (978604, 'AustinAllison', 779620692, 10, 'Ositis Software');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (57101, 'LaurenLapointe', 661595046, 7, 'ACS International Re');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (553713, 'RosanneRedford', 61194566, 8, 'Doral Dental USA');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (900440, 'MickeyReinhold', 343406539, 9, 'Conquest Systems');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (437153, 'JuddHiatt', 485949545, 5, 'Formatech');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (949230, 'DonRatzenberger', 127702053, 5, 'InfoPros');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (244121, 'MoePlowright', 828289051, 7, 'Texas Residential Mo');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (30781, 'JohnetteCube', 548341526, 5, 'GlaxoSmithKline');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (583994, 'KarenGary', 378151146, 7, 'Analytical Managemen');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (826099, 'JulieGray', 726192659, 5, 'PepsiCo');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (903940, 'AlexWhitmore', 511494602, 12, 'Kellogg Co.');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (784387, 'ReeseBerkoff', 995517553, 10, 'GTS Refreshment Serv');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (722804, 'SimonLi', 591915947, 5, 'SurModics');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (97059, 'WoodyArjona', 955301375, 9, 'Digital Visual Displ');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (894794, 'AnnetteCulkin', 769193398, 10, 'Megha Systems');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (626185, 'LeVarBratt', 932705645, 10, 'Electrical Solutions');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (332528, 'RoyBelle', 995436381, 10, 'White Wave');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (554323, 'ArtPlimpton', 854617845, 12, 'SHOT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (838748, 'BetteRoundtree', 45339667, 9, 'ACS International Re');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (168214, 'RedHiatt', 211745582, 5, 'Fetch Logistics');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (907889, 'VingEmmett', 816298957, 9, 'Formatech');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (420269, 'DomFlatts', 730367607, 6, 'Linksys');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (625327, 'RamseyRoot', 509340063, 6, 'Spenser Communicatio');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (41637, 'NickelPhifer', 602205569, 7, 'GTS Refreshment Serv');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (675888, 'KidMann', 765446657, 9, 'Bluff City Steel');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (821498, 'DarSayer', 225419419, 9, 'Royal Gold');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (36701, 'JeanLennix', 266441844, 6, 'Data Warehouse');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (531443, 'AlbertinaIdle', 441955966, 10, 'GTS Refreshment Serv');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (735136, 'OssieO''Donnell', 17586657, 5, 'Aventis');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (674030, 'KennySchock', 780894143, 12, 'Process Plus');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (162901, 'FairuzaRussell', 323003872, 8, 'Royal Gold');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (83225, 'EmmylouTwilley', 296532080, 6, 'TimeVision');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (414936, 'GilbertoMcConaughey', 657418348, 7, 'IntegraMed America');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (214002, 'RascalCox', 786250196, 9, 'Bluff City Steel');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (28963, 'RupertIsaacs', 41025420, 8, 'Anheuser-Busch Cos.');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (41399, 'MacCantrell', 549161020, 5, 'GRT');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (900946, 'Jean-ClaudeBrock', 451056680, 11, 'Green Mountain Coffe');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (658253, 'GinaWhitman', 964720565, 9, 'Great Lakes Media Te');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (105848, 'KaronAffleck', 66307795, 12, 'Terra Firma');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (228243, 'HikaruLorenz', 93327618, 9, 'FSF Financial');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (424329, 'AlanGandolfini', 52025815, 9, 'InfoPros');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (729164, 'JeanneSchwarzenegger', 790976373, 11, 'ComGlobal Systems');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (627033, 'KatieKinski', 964623767, 9, 'Clover Technologies ');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (223135, 'PierceLevert', 549754405, 12, 'AXSA Document Soluti');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (561254, 'DelroyCaviezel', 1198088, 7, 'Unicru');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (28133, 'HankRauhofer', 987892025, 12, 'Bayer');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (882640, 'JonMatheson', 50269822, 6, 'Astute');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (451359, 'SonaTeng', 679670658, 9, 'Speakeasy');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (439621, 'BradChild', 130053285, 7, 'Finance');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (492057, 'GeoffreyVance', 399286900, 9, 'Lydian Trust');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (912978, 'BillTucci', 141376213, 6, 'Ositis Software');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (441854, 'DariusRundgren', 916245505, 11, 'ATX Forms');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (899889, 'VickieO''Keefe', 226633238, 5, 'Linksys');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (417197, 'TiaO''Neal', 785518615, 5, 'Caliber Collision Ce');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (273374, 'BruceBeckinsale', 226349838, 9, 'Bioanalytical System');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (863289, 'MarkStiles', 186060088, 10, 'Green Mountain Coffe');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (906879, 'EmersonSanchez', 73566721, 11, 'Imports By Four Hand');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (784799, 'DarrenStarr', 338802854, 5, 'Extreme Pizza');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (792170, 'HarrisDurning', 275824919, 10, 'Clover Technologies ');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (197828, 'MorrisMichael', 442493801, 12, 'Process Plus');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (759431, 'GeneMueller-Stahl', 217539669, 11, 'ProClarity');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (872852, 'DennisReeve', 965134744, 12, 'Novartis');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (493754, 'LeslieLineback', 684496498, 5, 'G.A. Beck Artistic S');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (161968, 'OmarChandler', 582899578, 10, 'Hershey Foods Corp.');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (894787, 'ToshiroCoward', 79585701, 9, 'SSCI');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (388349, 'BrittanyLightfoot', 629686817, 11, 'Keller Williams Real');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (108516, 'ValCaan', 77211750, 8, 'Bioanalytical System');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (233823, 'IvanSnow', 671443250, 12, 'Astute');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (334573, 'HarrisJackman', 265571966, 10, 'North American Theat');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (604433, 'CaseyColtrane', 312558512, 10, 'Finance');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (841576, 'JoanRamirez', 463694100, 7, 'Bayer');
commit;
prompt 100 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (896223, 'SonaRush', 639481960, 6, 'Anheuser-Busch Cos.');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (69261, 'WaymanShandling', 186255289, 5, 'HR');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (236802, 'MegRizzo', 371752253, 6, 'Timberlane Woodcraft');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (322196, 'KurtwoodBroadbent', 976275156, 12, 'Data Warehouse');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (455018, 'RandyMac', 885356651, 9, 'Pyramid Digital Solu');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (927980, 'DarrenSenior', 346283641, 7, 'Royal Gold');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (43745, 'HollyScorsese', 360251085, 12, 'Summit Energy');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (905713, 'TerryGilley', 675009461, 12, 'Cura Group');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (541942, 'NickConroy', 445473601, 11, 'Astute');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (730554, 'ArtOntiveros', 911517914, 5, 'PepsiCo');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (384187, 'SamMcDowell', 594072875, 10, 'Imports By Four Hand');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (749898, 'ClarenceSteenburgen', 154547044, 9, 'AQuickDelivery');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (661430, 'TedDorff', 658550031, 12, 'G.A. Beck Artistic S');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (768644, 'ChristinaDorn', 414049010, 12, 'Joe Lombardo Plumbin');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (218115, 'LilaLynne', 18176070, 10, 'McDonald’s Corp.');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (337598, 'Jonny LeeCrosby', 937138796, 6, 'North American Theat');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (390749, 'DavidDavidtz', 494898776, 12, 'Unicru');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (912865, 'AnjelicaOlyphant', 704285243, 7, 'Dynacq International');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (283765, 'LiliBorden', 167092027, 11, 'Total Entertainment');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (367548, 'EmmaCronin', 886149652, 11, 'ACS International Re');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (658361, 'Wilek Pidgley', 5919949305, 10, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (383223, 'Paulo Phlippi', 7715214086, 12, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (454511, 'Jesse Kemwal', 9434907980, 8, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (194643, 'Dona Fairfoull', 5521432123, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (541915, 'Alan McQuarrie', 6012938154, 12, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (301580, 'Janot Mapples', 2411710754, 6, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (651984, 'Stacie Manterfield', 3037391238, 6, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (286686, 'Laurette Ledbury', 2462224451, 7, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (141200, 'Sasha Diter', 9015575206, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (198149, 'Oliviero Raunds', 8866955511, 12, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (791484, 'Lorne Berceros', 1961336163, 7, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (419119, 'Fania Feldfisher', 5142767476, 11, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (337429, 'Albie Robertsson', 2635795494, 11, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (764933, 'Wade Windram', 2343881894, 10, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (829390, 'Nataline Dockrill', 6207939729, 12, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (732633, 'Kimbra Paaso', 1101799756, 11, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (857117, 'Patten Byard', 2423580704, 8, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (302376, 'Timothea Franzetti', 8715464462, 6, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (300477, 'Eadmund Tull', 5347854694, 7, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (231242, 'Greta Larvor', 4548103771, 5, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (329360, 'Lynelle Perview', 2474132931, 5, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (801038, 'Artie Rushbrooke', 2754854090, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (850884, 'Aili Haizelden', 4438733533, 10, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (510878, 'Camila Node', 3321978232, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (442221, 'Gillian MacManus', 8627170683, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (505568, 'Simonne Brussell', 1473782473, 6, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (643792, 'Marcelo Klicher', 2547406921, 9, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (302444, 'Thornie Ricardou', 2272867823, 9, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (161993, 'Calhoun Lyard', 6488956878, 9, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (414479, 'Amelie Petrol', 1897419475, 6, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (464020, 'Olivia Livingstone', 9321810835, 11, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (124623, 'Godard Stanlike', 7144050924, 6, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (721883, 'Damian Cuncliffe', 6162833567, 7, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (882364, 'Brit Willson', 7608914891, 8, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (381617, 'Daphene Smickle', 7427580986, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (204844, 'Nikolos Stileman', 7037408709, 6, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (852910, 'Salvador Raoul', 6735307577, 10, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (764967, 'Phedra Sperrett', 7005712657, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (419026, 'Paolina Dewing', 1467594949, 5, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (631956, 'Raoul Grimmolby', 7021297036, 5, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (478442, 'Vonnie Sigge', 5664633189, 12, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (889598, 'Dora Moran', 7293472501, 7, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (431646, 'Sylas Cabrera', 6512496352, 7, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (126541, 'Zitella Winchurch', 4428454047, 9, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (705309, 'Fancie Kersting', 2635709979, 7, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (754668, 'Basilius Roth', 3169222940, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (837547, 'Jennilee Hirtzmann', 9524038843, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (946990, 'Mateo Moyser', 5649609119, 7, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (373539, 'Hyacintha Leacock', 1926241880, 7, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (486912, 'Benjamen Blodg', 3383631881, 7, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (877018, 'Salli Garken', 3655627827, 7, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (337538, 'Lucille Candelin', 9769735364, 8, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (170331, 'Burtie Brindley', 1636431755, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (136568, 'Yoshi Cassy', 8794642311, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (223419, 'Michaella Alfonsetti', 6637721534, 6, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (246364, 'Morty Buscombe', 8427509431, 11, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (989915, 'Wash Atkin', 3181446145, 5, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (833776, 'Andrej Jiruch', 9086835262, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (872954, 'Caprice Fitch', 8233393921, 10, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (195648, 'Edy Oller', 4566178042, 7, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (723466, 'Cordula Ochterlonie', 8793153396, 12, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (185951, 'Gene Frankum', 8738787630, 10, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (236053, 'Marleah Klimecki', 2171628994, 5, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (660208, 'Melisande Geeson', 7934215120, 9, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (676204, 'Tucky Pollack', 5715682520, 7, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (669995, 'Alberik Shefton', 7433436383, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (293578, 'Bethina Klosterman', 5618675115, 7, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (799957, 'Osmund Cobelli', 2407144555, 8, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (350884, 'Guillermo Kinder', 7146948479, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (604354, 'Archibald Lamplough', 5607803086, 11, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (282333, 'Blondell Choak', 1352443700, 5, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (982293, 'Jan Plevey', 9071140664, 9, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (949368, 'Matthaeus Warmington', 6367207337, 5, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (986512, 'Wyatan Pavluk', 6278805969, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (327043, 'Jill Strickett', 7201360611, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (805157, 'Fidelity Nealand', 8629897425, 12, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (487141, 'Carita Wattingham', 7295112382, 8, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (248430, 'Kendre Hambly', 9325918523, 7, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (519785, 'Maurits O''Corrin', 5957451030, 11, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (972108, 'Mel Pechold', 9171626378, 12, '''Tech Support''');
commit;
prompt 200 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (884366, 'Marjie Streatfield', 4489692375, 11, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (870563, 'Reinaldo Tatters', 5155269839, 8, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (889804, 'Ezechiel McCullen', 9468601377, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (619264, 'Melisse Natalie', 9393110525, 10, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (680761, 'Madelena Dradey', 6691533078, 10, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (613119, 'Rutter Yurukhin', 9536930645, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (129471, 'Valera Fairholme', 4666572796, 5, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (841898, 'Ashlan Pidon', 3588947663, 6, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (188251, 'Dedra Procter', 6337919688, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (423933, 'Beatriz Torres', 9544455943, 12, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (106135, 'Portie Michelin', 3516438025, 7, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (397263, 'Harman Northall', 9127312396, 11, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (535568, 'Cayla Toderbrugge', 3246180247, 9, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (350355, 'Adah Bateman', 1039434286, 11, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (287369, 'Borg Stearndale', 4614463756, 10, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (285031, 'Pammie Brown', 2724333023, 7, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (767119, 'Alyosha Dafydd', 9685043287, 7, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (863626, 'Ibbie Bewlay', 5208151880, 12, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (208363, 'Dennie Osbidston', 2295855004, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (582699, 'Madelina Bruni', 8329478926, 5, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (854952, 'Auberta Ponsford', 4488764028, 6, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (102724, 'Noelle Matas', 2331160461, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (338958, 'Verla Coney', 5203213686, 10, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (338954, 'Angelica Gianneschi', 9331769692, 5, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (237646, 'Adair Olekhov', 8649266463, 9, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (475054, 'Matthias Delgardillo', 6902334055, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (694893, 'Dave Buche', 3105650516, 12, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (865607, 'Marc Fumagall', 4194700995, 10, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (351581, 'Salvidor Blouet', 1076233330, 8, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (457104, 'Margaretta Siseland', 6855186132, 11, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (735287, 'Trip Fandrey', 7915309084, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (129563, 'Tawsha Piddock', 2062604585, 10, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (762215, 'Linus Sivior', 7474328773, 11, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (460709, 'Gerhard Lorinez', 2221851307, 10, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (630059, 'Humphrey Haworth', 4192329528, 6, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (200220, 'Berry Londsdale', 1515695225, 8, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (189104, 'Frankie Klejna', 2166421956, 5, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (590255, 'Peria Layzell', 8247401780, 8, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (213576, 'Chet Kendrew', 3982616056, 12, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (982328, 'Suki Durno', 6739145106, 6, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (418414, 'Silvanus Jenoure', 7923140404, 6, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (706053, 'Danny Sharrock', 2227035587, 9, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (686411, 'Adrianne Ainge', 9906242080, 7, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (748326, 'Marlena Aymer', 3583719157, 5, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (545161, 'Tommi Costerd', 5001333649, 12, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (394730, 'Flossi Jedrzejewicz', 8077813910, 6, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (347760, 'Lyndy Maddison', 2619714843, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (462159, 'Elsbeth Collaton', 4603579428, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (566873, 'Vanya Mickan', 4582440297, 12, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (849074, 'Carolyn Yanson', 4838097152, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (607305, 'Gunner Luna', 3079133964, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (150411, 'Hannie Cristofanini', 8191210775, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (926042, 'Briggs Coult', 5584942547, 6, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (385389, 'Aurel Sherrin', 2137193083, 7, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (110111, 'Lanny Skelcher', 8882150012, 12, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (184527, 'Hillary Hadigate', 4197548771, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (946371, 'Jedediah Duggan', 8806403858, 11, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (383679, 'Livvy Grebner', 9115772430, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (310991, 'Mona Ferraraccio', 9356034975, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (697242, 'Sofie Routh', 1479797274, 9, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (786339, 'Nada Vickar', 3223507130, 12, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (176997, 'Livia Fritche', 8654591043, 12, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (233940, 'Sallee Bruhnsen', 4281647525, 11, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (267101, 'Edna Lindelof', 1594208223, 8, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (782350, 'Chaunce Crowcum', 7402203777, 6, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (633182, 'Hubert Cairney', 9568830021, 7, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (227272, 'Alfie Van Arsdale', 2175842514, 11, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (934903, 'Debera Falkus', 8053720604, 7, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (398354, 'Fulton Duchateau', 9922628919, 12, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (322618, 'Raul Palin', 7301889903, 5, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (735528, 'Reamonn Segges', 1766456541, 9, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (591264, 'Daisey Murrigans', 4452385702, 9, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (457327, 'Birgitta Ingrem', 5781915696, 11, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (667964, 'Arlie Sellick', 4358024500, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (690742, 'Dannie Teasey', 3897880998, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (355812, 'Shara Sterke', 8087771167, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (218629, 'Tedi Oldmeadow', 3935776887, 12, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (969531, 'Vaughan Kain', 4002527893, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (416301, 'Pepita Tilio', 1055793336, 5, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (685484, 'Trumann Corday', 9515924157, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (741751, 'Lyndsay Laugharne', 8989070712, 5, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (736819, 'Berri Birwhistle', 4752735196, 12, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (123053, 'Piggy Dewan', 5765609679, 12, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (129977, 'Blancha Gath', 1264697927, 8, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (362623, 'Jaye Douthwaite', 2453440382, 5, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (876466, 'Parnell Langridge', 8018809386, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (331372, 'Lorianna Breawood', 7907791698, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (235211, 'Maud Columbine', 9911402217, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (962319, 'Xever Blethin', 7897625160, 6, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (586101, 'Anselm Glamart', 4131305872, 5, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (595422, 'Fred Benneton', 4398425270, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (206952, 'Ruthi Devin', 9359142012, 11, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (528991, 'Matty Davidsson', 8878977212, 5, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (128036, 'Jazmin Richichi', 7112771878, 7, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (214681, 'Georgianna Hunnisett', 5747963878, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (121790, 'Delcine Hinrich', 4013843169, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (811524, 'Rania Sinyard', 1011275988, 11, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (613231, 'Francyne Kinavan', 2509861639, 6, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (764621, 'Bee Mountfort', 9858214467, 11, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (325082, 'Ealasaid Tippler', 7048080932, 10, '''PMO''');
commit;
prompt 300 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (282124, 'Minette Dallan', 9214373467, 9, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (930060, 'Stefa Rees', 2075805925, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (528892, 'Raffaello Escott', 3501374092, 12, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (384133, 'Sheila-kathryn Jaxon', 1556533889, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (112814, 'Wolfy Jolley', 6579202064, 6, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (803074, 'Padriac Accomb', 3107869711, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (366554, 'Missie Risman', 4302138001, 6, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (859772, 'Swen Ardy', 8352829124, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (981420, 'Barthel Flatt', 2824663600, 7, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (318828, 'Boycey Benettelli', 3253803701, 12, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (757591, 'Hermione Baudin', 4879113385, 10, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (467745, 'Early Toun', 1869687408, 10, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (333905, 'Willem Fidilis', 5383111241, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (168156, 'Allayne Horley', 6048813145, 12, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (881591, 'Arlyn Ganley', 9122062935, 9, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (693092, 'Almire Bernath', 5654504469, 11, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (802481, 'Sybila Gayne', 1587237229, 7, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (669163, 'Parnell Cinelli', 3348732789, 9, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (132033, 'Wilek Nicholl', 6958085801, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (381593, 'Perrine Christofle', 3829946318, 12, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (746514, 'Fianna Postin', 9309986583, 10, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (874475, 'Timmie Vassbender', 6785581523, 10, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (270233, 'Cassandry Margiotta', 1603210053, 10, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (266913, 'Dene DelaField', 5852232897, 6, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (686026, 'Jarret Harvey', 6799488731, 11, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (570572, 'Angie Ferneyhough', 8859915476, 11, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (192439, 'Clarinda Hucke', 2684863996, 10, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (473401, 'Alphonse Benck', 4766457848, 10, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (287674, 'Mitchell Noorwood', 5823741005, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (862198, 'Sephira Bunting', 5427545997, 11, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (308968, 'Raul Geall', 8753246292, 9, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (595455, 'Sibylla Gitting', 6614388967, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (221409, 'Jodie Stearne', 8672816669, 6, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (976610, 'Tierney Rains', 7331055297, 6, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (247822, 'Galven Iwanicki', 1295192658, 11, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (453452, 'Vin McCane', 6985529052, 9, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (618157, 'Claudia Crighton', 6382523060, 8, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (855826, 'Garvy Byllam', 2639054385, 12, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (878166, 'Maurine Vallantine', 3135926542, 10, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (585566, 'Latia MacCaull', 7196840761, 11, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (981007, 'Orson Vise', 4802598699, 9, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (290679, 'Raynell Foxley', 1361640954, 9, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (292093, 'Colline Roiz', 4579495047, 7, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (604983, 'Edvard Faivre', 6356259120, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (351160, 'Kaylyn Figura', 5163105938, 10, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (259378, 'Corilla Ainslee', 3025081133, 6, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (847253, 'Jaquenetta Bulley', 9202691236, 6, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (897016, 'Dulcinea Hauck', 1897380589, 9, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (557819, 'Clareta Tattam', 5564600005, 11, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (934109, 'Anitra Paz', 6153606217, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (577994, 'Jules Cadany', 8272202367, 10, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (346614, 'Emmalee Schreurs', 9329184535, 7, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (428872, 'Jammie Keach', 2256855834, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (626906, 'Ibbie Niemetz', 1048591885, 6, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (526941, 'Karin Wittleton', 7827718718, 5, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (720817, 'Sheeree Hanny', 3834968676, 12, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (589583, 'Heloise Laslett', 7245149200, 10, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (255722, 'See Beades', 7139433849, 11, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (932550, 'Evy Whitemarsh', 5712582373, 7, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (882586, 'Gaby Shingles', 6163632908, 10, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (751773, 'Humbert O''Towey', 4289496094, 6, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (937032, 'Stavro Heaysman', 2207286993, 5, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (863329, 'Legra Beckers', 5399593058, 6, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (858802, 'Jordan Birchenough', 3811419703, 9, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (767264, 'Herve Trengrouse', 7237790138, 11, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (784231, 'Nikki Prott', 8125623896, 9, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (515872, 'Starlin Shall', 9177845839, 12, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (888740, 'Maxim Winfindale', 3062389367, 11, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (185240, 'Anitra Maywood', 1499523794, 9, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (775267, 'Stefano Norcliffe', 2426118555, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (210014, 'Vladamir Holmyard', 9775773394, 7, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (396983, 'Kean Painten', 3359586580, 5, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (438500, 'Damara Kmieciak', 6108724844, 9, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (206024, 'Anya Chadbourne', 4827320267, 7, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (984484, 'Celle Yon', 4199402860, 6, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (859449, 'Cynthy Middell', 6618240077, 11, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (741826, 'Maynord MacChaell', 2176095726, 9, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (649917, 'Roxane Sibbering', 9519129436, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (711579, 'Algernon Lesly', 2347517326, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (649071, 'Kincaid Deluca', 8476376141, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (880656, 'Haskel Kordt', 9224378896, 12, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (417566, 'Cyb Harriss', 7266051975, 12, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (410674, 'Lou Davidowsky', 6521670372, 12, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (396902, 'Garreth Skewis', 8783413520, 8, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (872804, 'Valerye Mart', 1538099053, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (373770, 'Curtis Postins', 8244126648, 12, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (902215, 'Harri Feldhuhn', 9748902336, 9, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (728981, 'Briana Ojeda', 5727605657, 8, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (774361, 'Lissi Giraths', 1824587018, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (552619, 'Lucina Arnke', 8968857183, 9, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (744635, 'Arda Collett', 2564562683, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (816336, 'Gard Cardoo', 6094937834, 6, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (327642, 'Eachelle Lapsley', 2567557089, 10, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (937996, 'Martina Muehle', 8073154433, 5, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (444139, 'Jeremy Maleney', 3673845105, 7, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (185184, 'Cate Bowart', 6425950961, 6, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (894812, 'Lyssa Barkus', 3754701189, 8, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (715279, 'Eli Craigheid', 2444611463, 8, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (318623, 'Demott Flement', 6114728343, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (948043, 'Blythe Hasling', 6756310115, 11, '''IT''');
commit;
prompt 400 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (917052, 'Sandye Bergeau', 4194328266, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (275534, 'Odella D''Antonio', 3836972243, 11, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (392795, 'Alika Jory', 2373251409, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (758858, 'Sheilakathryn McKinn', 7277132177, 7, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (340018, 'Rudd Scandrite', 1079102446, 7, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (635865, 'Brit Joe', 5343862998, 12, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (670648, 'Bradford Leathes', 1564713003, 8, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (211542, 'Joline Hubbert', 6151842451, 12, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (955798, 'Crissy Melhuish', 8769965276, 9, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (223413, 'Gothart Rhubottom', 5644220077, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (929083, 'Minette Rippen', 8886514694, 7, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (989120, 'Reece Linge', 6544813330, 8, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (139946, 'Teena Oglevie', 3309832059, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (902568, 'Murielle Bradley', 7197445816, 7, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (651256, 'Jessika Quixley', 4569836524, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (681514, 'Rubia Knotte', 9397988448, 9, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (443717, 'Forester Ivimy', 2629925452, 5, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (165010, 'Chas Magson', 5598334532, 12, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (350688, 'Thurstan Klink', 3894699433, 5, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (568840, 'Guy Vickers', 1394437324, 5, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (635804, 'Atalanta Kerner', 7116922585, 7, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (318488, 'Edyth Lynam', 3883241359, 6, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (871704, 'Augustina Landre', 2095068144, 10, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (634104, 'Cullan Sexton', 7244162968, 12, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (298902, 'Gianni Rabbage', 5731429921, 12, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (536406, 'Jayson Sextone', 4777910006, 9, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (451417, 'Julius Setter', 8628421977, 11, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (227322, 'Marga Clyde', 8026099036, 7, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (879754, 'Vivien O''Geneay', 1313932726, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (783642, 'Cornelle Belamy', 1737109512, 10, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (104746, 'Ichabod Crilly', 5461836431, 6, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (968885, 'Caryl Cutsforth', 3942217397, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (910641, 'Birgit Caccavella', 2011415282, 10, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (603238, 'Ross Rosencrantz', 8198992700, 8, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (940073, 'Siward Ainscough', 6535859674, 11, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (900269, 'Win Birtchnell', 3108737991, 5, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (210759, 'Corrie Ewenson', 3277336919, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (433008, 'Manya Keward', 5654692655, 8, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (905662, 'Hoebart Brambell', 5794581981, 10, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (410407, 'Dedie Cawdell', 5783855822, 7, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (635615, 'Alene Bernot', 5944915941, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (305434, 'Alex Gouinlock', 9298747079, 9, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (596827, 'Woody Keady', 4575613014, 5, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (804451, 'Amii Dew', 4403764427, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (859856, 'Arline Cure', 3608111062, 12, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (348246, 'Baryram Hugland', 8767307033, 5, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (625035, 'Tandy Loomes', 2094727869, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (958110, 'Jonah Mantione', 5464727123, 12, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (662276, 'Frank Tomashov', 8823589777, 11, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (311205, 'Sawyer De Brett', 3881781341, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (504106, 'Joete Dary', 2204798083, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (524308, 'Vitoria Thumann', 7319205532, 10, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (697961, 'Casie Mellor', 6396391804, 6, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (407794, 'Germayne Denis', 6907864231, 10, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (146681, 'Charity Shadrach', 9427659209, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (868705, 'Jami Corradini', 6065112537, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (390075, 'Yalonda Jeanesson', 1025153781, 12, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (688158, 'Candy Brockman', 7911135430, 12, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (548999, 'Morissa Maddick', 3891222582, 9, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (441153, 'Nora Wooff', 7867629152, 5, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (567583, 'Clayborne Heindl', 3384361261, 8, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (128296, 'Hortense Rossin', 6306248407, 5, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (486803, 'Addie Acarson', 1199412735, 5, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (601464, 'Domeniga Rigg', 7616124192, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (105692, 'Efrem Cosins', 9502908238, 9, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (108478, 'Daffie Thickett', 5545954247, 8, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (601641, 'Vivianna Skotcher', 2159683186, 11, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (165787, 'Leroi Banasik', 8037191423, 12, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (315080, 'Rickert Smithend', 9633137823, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (661404, 'Rogerio Collcott', 2175512629, 7, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (296027, 'Thom Lelievre', 9208251725, 6, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (475812, 'Ware Bosch', 9604909228, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (909385, 'Dianna Lownie', 1445033405, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (243044, 'Robinett Fourcade', 8308497867, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (899550, 'Kristin Glanfield', 7556671369, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (459163, 'Nara Duell', 1977088061, 7, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (193474, 'Dukie Kennewell', 7091547433, 9, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (756102, 'Danyette Flieg', 4593094598, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (219934, 'Lin Gibby', 6878494877, 7, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (182958, 'Si Rosenthal', 3948421983, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (949293, 'Bryn Mulder', 5703878650, 6, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (203483, 'Stephannie Kienlein', 6854862480, 8, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (549921, 'Bonnee Archbald', 3052951306, 11, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (463492, 'Haily Brough', 4738781167, 5, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (899341, 'Culley Woolward', 1316500955, 7, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (178011, 'Minna Volleth', 9424920740, 7, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (497673, 'Angelique Alwin', 1108224846, 9, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (289688, 'Harwilll Coaker', 9002654496, 10, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (346794, 'Smith Headings', 3506488583, 6, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (360158, 'Timothee Sanja', 6123094510, 8, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (576479, 'Launce Antognelli', 7898220669, 5, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (616849, 'Axe Stannett', 3915133476, 8, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (258425, 'Allegra Denidge', 2941274008, 12, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (880837, 'Dory Elsmor', 9989973903, 8, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (650401, 'Swen Hainge', 8896738371, 8, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (141188, 'Gerard Siggs', 7975733667, 10, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (214233, 'Miles Lucken', 1238880361, 6, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (282597, 'Glenn Fulger', 4283347480, 5, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (509730, 'Amalia Cohan', 1797504224, 6, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (227607, 'Shell Bicknell', 4044713113, 5, '''Production''');
commit;
prompt 500 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (266274, 'Doro Botwright', 4035178629, 6, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (355291, 'Trumann Josephoff', 4743538362, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (951087, 'Fay Gruby', 2565592740, 6, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (331722, 'Malva Jouhandeau', 4412297503, 5, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (936216, 'Dacia Capun', 9857631651, 5, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (100479, 'Winston Lilleycrop', 6901210982, 10, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (851381, 'Kinny Karpfen', 4676134785, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (474950, 'Marne Cuphus', 1825503720, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (383558, 'Margo Fiander', 5887879807, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (941470, 'Christian Coumbe', 3916700389, 6, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (411450, 'Ibby Freezer', 1197823197, 5, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (622838, 'Alika Sprankling', 3027824617, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (225020, 'Iormina O''Reagan', 4621632688, 5, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (101631, 'Mareah Climpson', 4559467856, 11, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (993709, 'Pierrette Lengthorn', 5829965100, 5, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (616334, 'Ingemar Pheazey', 6087424597, 6, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (261781, 'Fran Lomas', 3654056728, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (249816, 'Ricoriki Eivers', 5556430246, 12, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (377358, 'Rivi Hegarty', 2505577013, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (221552, 'Mufi MacCracken', 5855517483, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (352721, 'Annaliese Olanda', 3627589886, 5, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (829470, 'Huey Breslauer', 9165487279, 7, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (992523, 'Ashbey Isoldi', 6526327075, 5, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (246077, 'Claude Limbrick', 1748011781, 8, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (257759, 'Sheffield Jacob', 1715233742, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (388687, 'Tiebold Lanceley', 4627388760, 8, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (395000, 'Romola Milnthorpe', 5677608036, 11, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (227698, 'Theodoric Manoch', 1467355022, 6, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (243500, 'Stevy Jacqueminot', 9277448543, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (853228, 'Jo ann Purcell', 1783296276, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (742393, 'Vinnie Erat', 5545523677, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (962863, 'Reece Hedingham', 9967531659, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (189569, 'Micah Yakunikov', 5216953408, 8, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (292536, 'Chery Aurelius', 4204284222, 6, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (529888, 'Madelaine Olivera', 6116675674, 10, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (872732, 'Olia Butts', 1598025087, 11, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (124924, 'Vivianne Cressor', 5453459965, 5, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (204357, 'Liz Wellfare', 1235795173, 10, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (618038, 'Teddie Gerrelts', 3627921339, 9, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (846734, 'Korella Hinemoor', 7751640641, 5, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (363410, 'Erena Blumire', 5812759451, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (664884, 'Elwyn Hatje', 8578346626, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (976164, 'Thorn Shippam', 1732736658, 7, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (506615, 'Sapphira Dax', 9111631928, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (445434, 'Ranique Esselen', 2603433648, 11, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (986089, 'Wallas Colyer', 3265690250, 6, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (690496, 'Avrit Bothams', 8947967425, 8, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (665957, 'Garrik Isaacson', 1219676918, 9, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (112040, 'Kellen Malter', 6467099846, 9, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (514486, 'Eimile Mettricke', 6164981866, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (487568, 'Christoph Hotchkin', 3529717054, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (164297, 'Lanae Duckering', 6725606663, 8, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (986531, 'Sinclair Bartosik', 6592775349, 10, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (839778, 'Tannie Prestige', 3821175531, 12, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (327220, 'Valene Kaman', 9269487184, 7, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (568367, 'Sandie Brandle', 1567983974, 9, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (202380, 'Janene Bordiss', 3156588241, 12, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (902115, 'Alexander Whatham', 3581123500, 10, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (746976, 'Derek Ciccoloi', 5071702261, 12, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (461582, 'Vaughan Geratt', 8231123284, 6, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (353211, 'Fiorenze Fice', 7089917913, 12, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (410601, 'Suzanne Barabisch', 9017354924, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (747926, 'Dill Bayley', 5343996449, 7, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (928436, 'Bertrando Baison', 1972563800, 6, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (976257, 'Pauline Rebert', 4338253071, 12, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (348340, 'Sybilla Banke', 5789756473, 7, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (790569, 'Cristionna Suggey', 5649219468, 5, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (477011, 'Angie Cragoe', 5058111025, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (435695, 'Oliy McDirmid', 4747876194, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (480344, 'Constantino Scargle', 9441014140, 7, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (825203, 'Weidar Bleasdale', 2985121791, 10, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (632196, 'Ardisj Lambden', 4074285666, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (239479, 'Devin Hurst', 3909128052, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (909112, 'Alisa Lockhead', 3943686114, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (681353, 'Danice Effemy', 9074236819, 12, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (970847, 'Saraann Rame', 4851901803, 10, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (847733, 'Yolane O''Donegan', 1322122021, 6, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (359650, 'Rozamond Cosslett', 6299555780, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (339905, 'Patton Veitch', 8628593950, 6, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (387596, 'Goldi Matoshin', 6685666551, 10, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (762972, 'Darrelle Hansberry', 6441576160, 11, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (409499, 'Federica Ricioppo', 9956634669, 11, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (508720, 'Ruy Garnson', 1354252369, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (784012, 'Annadiane Lilian', 7574610786, 6, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (204995, 'Heda Stirtle', 2892351049, 10, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (883163, 'Claudian Gaynesford', 9218304510, 12, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (560392, 'Simonette Heggadon', 7388323544, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (989727, 'Claus Nobles', 9293835213, 9, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (738691, 'Trula Wheaton', 7224116819, 10, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (978955, 'Graig Lugg', 5241112248, 9, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (944486, 'Isabeau Tschiersch', 4456726256, 5, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (297114, 'Viviyan Blenkinsop', 5819083677, 10, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (160674, 'Joletta McShirrie', 9123463104, 12, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (790098, 'Zarla Stare', 6826760942, 6, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (868242, 'Lynna Outhwaite', 8209784006, 12, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (464336, 'Llewellyn Pioch', 8023627875, 8, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (715455, 'Nicolette Whiteley', 9314535963, 12, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (549944, 'Harri Wordsley', 3662844459, 6, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (376665, 'Haydon Branthwaite', 6563771185, 12, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (817097, 'Olivia Rule', 3583963915, 9, '''Planning''');
commit;
prompt 600 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (397686, 'Morton Haugeh', 2697229164, 6, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (149147, 'Isabelle Gathwaite', 2187389095, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (143793, 'Fern Szymonowicz', 6095906049, 11, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (375967, 'Olav Rampton', 5486057882, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (367929, 'Grethel Gaskal', 8012004146, 5, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (108327, 'Zondra McCaster', 6963552568, 11, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (151784, 'Carin Gwilym', 4588716746, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (841559, 'Grant Broadbent', 2537713075, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (983809, 'Kippar Cranson', 3753610935, 9, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (341560, 'Kayley Bubbings', 2777867824, 7, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (334855, 'Marketa Keetley', 9624315604, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (509780, 'Helga Dron', 4231040832, 7, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (377929, 'Marice Foddy', 6105470355, 11, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (863361, 'Benedicto Officer', 6792212679, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (306550, 'Marina Rhodus', 8422384742, 8, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (493868, 'Eartha Fincken', 4269823255, 12, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (922625, 'Lin Windrum', 2651497675, 8, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (525223, 'Lyda Grimoldby', 3911407702, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (250202, 'Janice Dring', 2077654789, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (390414, 'Benedetta Barns', 7055499502, 11, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (720822, 'Marsh Nears', 8994160344, 7, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (406225, 'Rachele Stebbing', 6837020219, 10, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (925936, 'Quintina Bourrel', 3113433218, 5, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (996544, 'Caddric Becaris', 7808139258, 6, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (328924, 'Rolland McCaighey', 7583060590, 9, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (527444, 'Krishnah Prest', 6437546228, 7, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (162174, 'Sawyer Mellish', 6661602470, 9, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (287538, 'Nanete Fulbrook', 3589055750, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (354659, 'Shirl Hargrove', 8346007490, 7, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (316875, 'Bernardine Garvey', 8603065143, 12, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (780855, 'Rochester Gerrad', 9537187710, 7, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (589653, 'Dillon Mc Carroll', 9015897354, 12, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (680321, 'Emilia Train', 2796391486, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (147924, 'Nicolle Halton', 2871435504, 5, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (283839, 'Wallis Germon', 9729959206, 6, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (598813, 'Danell Bolin', 1967908163, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (301472, 'Sheelah Dellenty', 1163319196, 11, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (756930, 'Sterling Legon', 6626240731, 6, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (731124, 'Inga Rolfo', 5937063835, 6, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (991146, 'Missy Downage', 9489613730, 9, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (273198, 'Ollie Devonshire', 3875298494, 7, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (900728, 'Dynah Shoebotham', 4765965171, 11, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (733238, 'Tan Kidman', 9145888217, 8, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (797565, 'Loren Jepps', 2334329070, 6, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (796802, 'Eben Furnell', 5453134593, 7, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (962042, 'Rania Caville', 7645608566, 8, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (398862, 'Stormy Ganning', 2482164530, 7, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (897532, 'Vale Taphouse', 4385005601, 11, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (409405, 'Chaddie Gooden', 5669205185, 12, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (933902, 'Elana Du Plantier', 3866010188, 6, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (119119, 'Willey Proppers', 7469924900, 5, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (409136, 'Dougie Stening', 8146077817, 10, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (792027, 'Irvin Baudinet', 9645331526, 5, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (446302, 'Ileane Hedgecock', 1323641297, 7, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (192940, 'Krystle Stidson', 9868524847, 5, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (842548, 'Kayne Dulany', 4128995739, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (190841, 'Sibel Moneti', 5616525590, 8, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (284502, 'Lissy Shiels', 6828602179, 9, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (926348, 'Zaria Gosforth', 4484946198, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (135027, 'Bren Pogosian', 2094305130, 12, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (230531, 'Chanda Tinman', 6839515375, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (107874, 'Maddie Sprowell', 8052511619, 8, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (531145, 'Renae Meysham', 9772118916, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (748130, 'Merrielle Maskrey', 5386908505, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (558397, 'Priscella Terney', 9631929001, 11, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (921576, 'Corrie Lisimore', 2143928600, 11, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (136943, 'Edie Skitral', 8991487410, 5, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (917154, 'Eleonore Mingauld', 7901093565, 9, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (641779, 'Aldon Barnewille', 6899973526, 8, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (580607, 'Stacee Feary', 5284729715, 12, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (153347, 'Eden Foxley', 5486965705, 8, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (578731, 'Merola Belfrage', 5844958109, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (677794, 'Alejoa Duffer', 3353860129, 5, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (282191, 'Helenka Storr', 5292676259, 11, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (243237, 'Dino Handrock', 9518470791, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (531282, 'Goldarina Camillo', 6494645243, 8, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (648045, 'Theresina Hanmore', 5655901510, 9, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (729973, 'Floyd Castri', 7958687966, 5, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (793984, 'Keeley Ranscombe', 5898765241, 8, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (916176, 'Meg Cuolahan', 6972622817, 11, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (226221, 'Larissa Clementson', 5596470439, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (702084, 'Pat Janks', 1287472485, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (113694, 'Paola Sedgmond', 9496466715, 10, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (113262, 'Mandy Haxby', 2195086059, 5, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (639737, 'Lynnett Knox', 8305578582, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (377746, 'Tiff Lenard', 3836701580, 12, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (403734, 'Yorgos Dionsetto', 2906668099, 6, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (883556, 'Bernelle Valente', 3662927486, 7, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (814843, 'Leontyne Sara', 6613050472, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (928515, 'Bail Discombe', 7446940772, 8, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (449268, 'Freeland Pow', 6136849800, 12, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (420896, 'Wylie Lambrick', 2028773209, 10, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (395567, 'Kippy Godleman', 7468233449, 5, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (386489, 'Matthias Murrthum', 5759010806, 9, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (219437, 'Clayton Sandell', 6633760601, 11, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (390972, 'Merry Batalini', 4617147499, 12, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (798968, 'Carney Dunton', 4288229672, 6, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (349006, 'Juieta Moxom', 7802070742, 9, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (181374, 'Alanah Ceaser', 7804363554, 8, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (531850, 'Trenton Bossons', 6394434330, 11, '''HR''');
commit;
prompt 700 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (972070, 'Shir Seifert', 6172909363, 11, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (506813, 'Birk Noore', 7686067521, 6, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (335180, 'Melly Silverson', 7416454576, 5, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (375126, 'Deerdre Dunstan', 3066911687, 12, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (144516, 'Binni Kasman', 9923939063, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (798333, 'Ursula Heavens', 5992188399, 11, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (394685, 'Arabel Heaysman', 9312254608, 9, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (884652, 'Danya Frude', 9802564885, 5, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (596796, 'Ava Etuck', 7412813167, 10, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (259681, 'Jobey Paulillo', 4024592372, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (834739, 'Hamlen Jouhandeau', 5572715765, 7, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (601263, 'Ashlan Hasty', 7731262113, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (278292, 'Yule Borgne', 8813327085, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (700207, 'Dixie Belhome', 9935775565, 9, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (329110, 'Benton Pittman', 4491411637, 7, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (205356, 'Chrissy Turle', 8653471730, 8, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (886013, 'Poul McDougle', 9066917000, 7, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (998710, 'Sherrie Bowhay', 3152231303, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (370381, 'Alicia Edworthie', 9483040243, 6, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (934692, 'Homer Howe', 8271522786, 9, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (963044, 'Jacky Taylerson', 8171790695, 10, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (771073, 'Cletus Pandey', 9926629976, 12, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (396775, 'Artie Cello', 5153048323, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (973325, 'Daisie Aslen', 2823509612, 7, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (221932, 'Jenelle Rymmer', 5228603974, 11, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (258521, 'Elmira Tremberth', 4038443576, 11, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (412344, 'Wait Trimnell', 1052806576, 6, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (128138, 'Archambault Chalke', 4291028478, 9, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (684106, 'Ives Girardeau', 3279696430, 11, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (487457, 'Kort Cresser', 3993612184, 11, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (721336, 'Nadeen Domengue', 4948003432, 12, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (941845, 'Menard Brazur', 3418414778, 9, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (681835, 'Stanton Scrange', 4639022741, 9, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (265944, 'Koressa Sebring', 3592960467, 7, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (748945, 'Bobine Stockman', 3944369047, 11, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (882719, 'Waylin Normadell', 7029758440, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (610584, 'Alfie Hindes', 8696560306, 11, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (272293, 'Kassey Bannister', 5929746461, 9, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (899807, 'Ralf Creak', 9421146770, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (382512, 'Theodora Mayers', 9943825097, 9, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (277820, 'Basile Girsch', 7548200757, 8, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (531551, 'Abey Triggs', 6256343514, 7, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (923504, 'Carlyn Tumilty', 1281350938, 5, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (963175, 'Lane Luno', 9401105187, 10, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (267893, 'Lawrence Finker', 1875083521, 9, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (949156, 'Tammara Hailwood', 8759212950, 8, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (968379, 'Arluene Tales', 6193586559, 7, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (600381, 'Jody Ingley', 3305054842, 6, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (929644, 'Deedee Sandeford', 6897988792, 8, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (499126, 'Sholom Piggins', 4784241277, 7, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (489388, 'Had Johnys', 2799521325, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (842092, 'Valerie Di Carlo', 7323869702, 10, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (919230, 'Darcie Hamly', 2584195079, 5, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (146205, 'Waring Crosswaite', 8493268023, 8, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (587728, 'Kendal Welbourn', 4895770385, 11, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (182922, 'Grier Hamman', 1574218990, 12, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (664927, 'Welsh Petrasek', 5855079661, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (691707, 'Lyell Dewbury', 4293380639, 8, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (951364, 'Ugo Taft', 7695351303, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (729158, 'Stanfield Mingus', 7776002934, 11, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (619100, 'Hilarius Roggeman', 1331249116, 5, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (351535, 'Talbot Leivesley', 2485968039, 8, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (203487, 'Esme Thow', 9761943487, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (795508, 'Kevon Fuzzens', 1108579926, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (201719, 'Junina Couroy', 4482567770, 7, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (120384, 'Welsh Ramlot', 8784925291, 6, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (444496, 'Lyle Shankle', 7746491465, 10, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (280559, 'Fey Rafter', 9912678008, 5, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (577267, 'Selig Raatz', 1505029325, 9, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (745106, 'Conroy Lavigne', 9574565889, 12, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (740448, 'Danny Tompsett', 9274542908, 6, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (672245, 'Morris Davoren', 2036119410, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (895648, 'Boris Croyden', 8053568688, 12, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (607987, 'Stanton Drage', 5163663750, 10, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (550357, 'Lita Livesley', 8705784013, 5, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (541152, 'Dre Finnan', 1316392930, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (667156, 'Kristo Hatton', 6676124575, 12, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (292825, 'Michale Jacox', 8728791385, 9, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (544607, 'Travis Ferriday', 5281210661, 7, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (601020, 'Llywellyn Grushin', 5865463261, 12, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (225786, 'Johnathon MacKessock', 2703519445, 12, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (724688, 'Curt Flucks', 2021912698, 11, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (924295, 'Stevena Statersfield', 8926611497, 5, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (455901, 'Eddy Coyett', 5827859650, 12, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (892064, 'Dino Longfield', 1253451414, 8, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (877453, 'Alvera Gulleford', 9813255693, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (533024, 'Grove Ferfulle', 9696763356, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (951436, 'Lynnette Bedinn', 4145208673, 11, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (582779, 'Pierre Menichillo', 8048900359, 8, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (657979, 'Rurik Hurst', 6876441492, 6, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (995234, 'Florance Pothbury', 5125537221, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (660181, 'Dew Hauch', 9195749937, 6, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (702971, 'Jacintha Pilger', 6605611775, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (651070, 'Daron Koomar', 7591780294, 10, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (145077, 'Bondie Brash', 4537419260, 10, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (286571, 'Lowrance Hothersall', 2716505865, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (470269, 'Noble Reuben', 6431063056, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (462504, 'Flint Maysor', 4967837321, 12, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (296347, 'Mariele Brandsen', 8064989282, 10, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (322811, 'Benetta Reven', 6426999463, 10, '''Biz Development''');
commit;
prompt 800 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (335907, 'Karyn O''Flynn', 5479587689, 12, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (192948, 'Lorilyn Arrighi', 6887348298, 8, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (857259, 'Micki Scarlett', 9727829974, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (863896, 'Gretal Hammelberg', 8859472945, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (847745, 'Torey Grigolli', 6206814899, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (330486, 'Silvia Leppingwell', 6043757914, 8, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (979333, 'Prisca Castiglio', 9163878963, 6, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (762889, 'Celie Anthoin', 3334534448, 9, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (918021, 'Alex Giacobini', 1681298274, 5, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (728590, 'Shanta Yurov', 1817595146, 8, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (175785, 'Phillida Randell', 5999257213, 10, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (523264, 'Evelin Mayzes', 2798749411, 11, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (666914, 'Wini Hinrichsen', 7597602673, 10, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (912884, 'Hermie Bauckham', 3217082092, 10, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (315022, 'Pren Cushworth', 3191049908, 6, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (196166, 'Mitchael Cartan', 3329069072, 5, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (363792, 'Hansiain Soper', 9932291691, 5, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (733466, 'Isaak Norheny', 8486985800, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (236110, 'Shelba Fandrey', 4906644603, 9, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (486054, 'Caspar Geistbeck', 9941131183, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (519774, 'Joe Kopps', 6778696530, 9, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (802254, 'Bartram Jahncke', 4826626314, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (561503, 'Zollie Enriques', 9936497428, 6, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (771626, 'Jacquelynn Schmidt', 8409308277, 7, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (737405, 'Kore Mullane', 3041242273, 11, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (260216, 'Otto Moncur', 6969934653, 9, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (761014, 'Sara-ann Hardisty', 5838761017, 11, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (221286, 'Chadd Feedham', 2868659344, 9, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (124323, 'Bonni Cardoso', 4709406312, 11, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (538335, 'Tyrone Woodger', 7408344788, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (619693, 'Marji Petrushka', 3766221553, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (747451, 'Gabrielle Trudgian', 4082951264, 10, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (622514, 'Wilbur Furzer', 2858216515, 7, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (250029, 'Kaylyn Smerdon', 2549932842, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (252776, 'Ethan Ruben', 7354419677, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (187047, 'Eleen Dickon', 7975386785, 7, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (514909, 'Lek Everwin', 8345095933, 9, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (622157, 'Tracy Stiegers', 3411665203, 5, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (505896, 'Loise Cutress', 6766947169, 10, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (893354, 'Hercules Strover', 5728940056, 10, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (118009, 'Kaela Dahlborg', 9402027197, 7, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (939645, 'Marcile Meletti', 2202252036, 7, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (413598, 'Shanna Hartland', 1534914097, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (801140, 'Roxy Agastina', 2635286621, 6, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (635157, 'Astrix O''Keevan', 7526573975, 5, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (421613, 'Lev Beran', 1529870296, 8, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (394528, 'Norri Balsom', 6976161840, 8, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (606133, 'Fulvia Ings', 2862078240, 9, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (365860, 'Rodney Trebble', 1565628327, 6, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (653308, 'Eldin Aubury', 2946410756, 8, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (198184, 'Robyn Wensley', 6421968837, 9, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (657699, 'Lynn D''Agostini', 6905043428, 9, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (715108, 'Francesca Stillert', 2211727247, 8, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (114913, 'Vallie Robbins', 5201360433, 7, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (828217, 'Candice Duckham', 7877642964, 7, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (833945, 'Diana Jerrand', 3456464338, 11, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (803649, 'Kingsley Petrello', 5401819562, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (939494, 'Taddeusz Swaine', 8482539559, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (304376, 'Cleve Blucher', 4309036674, 6, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (710980, 'Selle Stansby', 7317890798, 6, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (327276, 'Hastings Hirtzmann', 3379985934, 8, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (363741, 'Angeli Stansbie', 3681896371, 7, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (674553, 'Petrina Issit', 9993947269, 10, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (103572, 'Lesley Filisov', 9431200874, 7, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (920511, 'Wolf Faber', 2007788284, 6, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (621706, 'Vincents Bareford', 3869255705, 12, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (825574, 'Cosetta Craighead', 6552572156, 9, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (735733, 'Antons Power', 2103900674, 10, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (662707, 'Gayel Goodlud', 6887987462, 7, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (392999, 'Trevar Deave', 9156785415, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (154587, 'Hamlen Kurdani', 9601589807, 5, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (611050, 'Dud Grieves', 7729096225, 8, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (267425, 'Ivonne Roset', 1884042395, 6, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (180440, 'Natty Duffill', 3108163122, 9, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (381286, 'Gilbert Servant', 1819382920, 6, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (150157, 'Bobbette Cramer', 9213767630, 6, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (139120, 'Beckie Fagence', 1081418480, 11, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (303179, 'Helsa De Bernardi', 2198671882, 10, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (923235, 'Marnie Spurge', 5486349021, 12, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (726699, 'Quintina Eiler', 5787832673, 6, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (575779, 'Lanae Linny', 6922265924, 11, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (664747, 'Menard Bottomer', 4029468580, 9, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (564101, 'Vaclav Haselden', 6317857683, 6, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (675349, 'Michael Skelton', 2712231354, 6, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (460240, 'Floris Wiffen', 9325808078, 8, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (226994, 'Trudie Setterington', 2248172686, 10, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (524971, 'Steve Pafford', 1307512172, 10, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (713283, 'Shena Lorman', 1405706472, 10, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (453794, 'Adah Edgeson', 1215848892, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (381335, 'Geri Sermin', 4046579202, 12, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (299966, 'Debbie Al Hirsi', 6223548604, 10, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (905621, 'Kakalina Arnout', 8789593325, 9, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (765514, 'Tiphani Bampkin', 7804817249, 10, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (618431, 'Kippie Bleiman', 5586631265, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (622125, 'Hermann Gulvin', 1401438555, 11, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (312861, 'Terrijo Seson', 3703881347, 5, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (971122, 'Gerek Camillo', 8983645601, 8, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (975351, 'Daveen Hoggan', 6974587767, 6, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (446653, 'Cristy Zavittieri', 8141243782, 6, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (950679, 'Davida Dilke', 5665678216, 11, '''Training''');
commit;
prompt 900 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (432958, 'Ronnie Domerc', 9077229852, 5, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (673025, 'Alf Findlater', 1153016080, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (125317, 'Row Bulleyn', 2706273515, 12, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (335580, 'Marcy Cater', 9731367697, 11, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (949930, 'Katina Boyat', 6877935690, 6, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (107275, 'Fayre Wichard', 8195323910, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (177254, 'Tricia Stanhope', 2408316460, 11, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (577086, 'Emyle Halsted', 3382913466, 9, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (292538, 'Skyler Whetnell', 6475362534, 5, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (559270, 'Coralyn McOwen', 7443181634, 8, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (143528, 'Normand Prosek', 5405258567, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (526930, 'Dacie Bowskill', 2749247612, 8, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (176729, 'Arlen McGrorty', 6501916294, 9, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (162620, 'Bea Gatherell', 2517261010, 11, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (321539, 'Sutherland Jackes', 9696966362, 12, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (967157, 'Roanne Whisson', 6419148666, 10, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (275976, 'Fina Lampl', 7546899417, 6, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (662052, 'Elva Magrane', 6339209137, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (536694, 'Tanner M''cowis', 2092675800, 8, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (531319, 'Joseito Duthy', 2211845996, 10, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (320355, 'Nathanil Malatalant', 1233967709, 9, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (807199, 'Andria Orth', 8676043263, 12, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (834576, 'Myrna Baudin', 8915002593, 8, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (384873, 'Jemmy Laurentino', 4215269690, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (780013, 'Chaim Moseley', 3081470285, 10, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (469863, 'Alena Urrey', 2205766081, 9, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (770890, 'Kennett MacGlory', 7256752529, 9, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (318003, 'Bonny Bridson', 1605779501, 6, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (614958, 'Leonard Royse', 3603042061, 6, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (545098, 'Maryjane Mapston', 7164280359, 11, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (977791, 'Brande Fishe', 6174251325, 5, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (304095, 'Clyve Mersh', 7142848202, 8, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (833307, 'Gallagher Leathwood', 2375304285, 11, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (435728, 'Maurene Pritty', 7568059183, 7, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (124870, 'Enos Duchasteau', 3527654620, 12, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (128441, 'Cyrille Robarts', 1772829621, 10, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (255545, 'Lela Fassmann', 6425776737, 12, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (152799, 'Hazel Collopy', 1992001954, 5, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (404466, 'Demetris Crummie', 9258721535, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (264146, 'Boigie Burley', 8776518377, 11, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (828820, 'Gaston d''Arcy', 6495379502, 8, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (861976, 'Tresa Farleigh', 9069040008, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (534672, 'Jamison Klamman', 4842538313, 5, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (952808, 'Wye Ingrey', 1143037369, 10, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (357981, 'Cherilynn Whittet', 5236237018, 7, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (523107, 'Tedmund Fassan', 7198290360, 10, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (898973, 'Nicholle Vigours', 9579190239, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (940080, 'Morty Loyndon', 5818863091, 12, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (837621, 'Katrina Scain', 3379076369, 6, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (101366, 'Devondra McIlwaine', 1843182011, 7, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (205734, 'Fonzie Slay', 5639197745, 7, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (401190, 'Wynne Heberden', 9139576602, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (825181, 'Cicely Yallowley', 6254719579, 10, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (695288, 'Worthy Breede', 8517614659, 10, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (855406, 'Lowrance De Biasi', 2641823437, 11, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (378516, 'Oliver Nacci', 4344339153, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (416502, 'Lucilia Giampietro', 3368919729, 5, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (572903, 'Nataniel Dautry', 3718347069, 5, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (981884, 'Adrianne Tench', 1915497827, 7, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (893982, 'Dulciana Sammars', 4965611099, 5, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (649192, 'Roxi Benner', 9549900929, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (195335, 'Greg Meeron', 6441289959, 11, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (532068, 'Rosette Philbin', 3718084298, 12, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (356863, 'Wendel Wherrett', 9926340928, 5, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (545742, 'Rubie Pavluk', 1632091869, 9, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (675357, 'Edna MacIlhargy', 1221928115, 5, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (923718, 'Chrystel Moynham', 3901668458, 10, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (899174, 'Flossi Simounet', 2439338593, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (319348, 'Karlen Degoe', 5034391024, 11, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (456988, 'Marji Gayforth', 2785061507, 9, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (671185, 'Courtney Lillgard', 7943855861, 12, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (555562, 'Alma MacGillavery', 3905711684, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (143149, 'Alexine McLorinan', 9695421205, 10, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (625166, 'Vergil Lidstone', 4397848107, 5, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (502708, 'Modesta Itschakov', 2564779659, 11, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (691955, 'Merry Bollins', 2981699077, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (740263, 'Perry Schutt', 9688114546, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (631547, 'Koenraad Robrose', 2175385423, 5, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (102386, 'Aimee Dando', 2071896047, 9, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (273704, 'Rolf Joynt', 2919357886, 12, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (550777, 'Kendell Sowerby', 4234586240, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (480028, 'Gretna Beric', 3407954495, 6, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (993900, 'Vern Bayle', 9293503177, 9, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (341724, 'Isa Muckart', 4902148945, 10, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (109822, 'Valencia Ditt', 7748373106, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (723735, 'Gael Marthen', 8244701932, 12, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (187802, 'Baird Colaton', 8207133529, 6, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (233620, 'Cymbre Handrok', 8425846619, 5, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (580906, 'Ursala Betjeman', 8817626653, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (883998, 'Luz Petronis', 1814125343, 5, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (401886, 'Marcelline Boyland', 6088851601, 11, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (759535, 'Glenden Buer', 6377998082, 10, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (240915, 'Benedikt Kennon', 9438541602, 6, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (944808, 'Hadrian Mauger', 1951141210, 8, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (898819, 'Felicity Titchener', 1437326255, 5, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (400405, 'Brander Amort', 6902334160, 8, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (131517, 'Garald Bahde', 8155075923, 12, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (908153, 'Ashleigh Bramham', 5303661009, 10, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (764486, 'Ben Caldeiro', 9177032239, 12, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (603440, 'Arabele Oats', 7789275614, 6, '''Engineering''');
commit;
prompt 1000 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (342220, 'Ailee Ahrend', 7015627268, 5, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (968475, 'Thomasina Frain', 6012872990, 12, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (651310, 'Kimberlyn Matuschek', 7442881388, 12, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (300076, 'Yolanthe Avramovsky', 8581135093, 12, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (414478, 'Cari Jinkin', 6326817858, 6, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (817531, 'Jessamine Emilien', 5764533122, 8, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (237485, 'Zacharie Yukhin', 1914019725, 9, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (616899, 'Berty Motton', 5713694806, 5, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (663934, 'Melisenda Bardill', 1566350554, 8, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (160677, 'Agustin Privett', 8282437102, 6, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (289883, 'Cortney Thurber', 9984676381, 7, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (890542, 'Bethany Morse', 3875958871, 7, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (212621, 'Chick Remnant', 5305307053, 7, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (122963, 'Boy Gillogley', 8303434293, 6, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (589418, 'Alexio Wint', 6427108852, 10, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (249765, 'Hannah Sayce', 1161722021, 12, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (758139, 'Tiffany Jepson', 4559772720, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (979853, 'Karee Corsham', 9482750480, 12, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (814055, 'Lutero Rickcord', 4787215670, 8, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (244129, 'Georgy Coslett', 3578986993, 10, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (817314, 'Murray Gover', 7735202272, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (874531, 'Yulma Dahlberg', 9155418254, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (238208, 'Sidney Tassell', 7786186990, 11, '''Investor Relations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (543918, 'Michele Wentworth', 5051720900, 12, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (339995, 'Eloise Lortzing', 8437590524, 5, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (298265, 'Corrie Greville', 1684188498, 6, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (106886, 'Dom Rayburn', 8927396404, 11, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (866933, 'Temp Canet', 5607694209, 9, '''Sales''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (426469, 'Sterne Wincom', 9783420701, 9, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (524078, 'Doralia Mullinger', 2879573519, 8, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (795665, 'Farrand Conboy', 2823566257, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (902994, 'Darby Bulcock', 6867518256, 9, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (696833, 'Pincus Marval', 5408689011, 9, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (169185, 'Barbabas Geeraert', 4982143839, 5, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (931665, 'Forster Brewett', 9948002042, 5, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (831265, 'Trudey Rubinsohn', 4257317828, 10, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (688165, 'Corbett Ellsbury', 7251286547, 10, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (842909, 'Madella Dunbabin', 2558975043, 8, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (263452, 'Bekki Kenningham', 5581082533, 6, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (659851, 'Corrie Saltsberg', 2441025261, 10, '''PMO''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (897875, 'Abran Maguire', 3734981596, 8, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (588467, 'Garnet Crumby', 3921059667, 10, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (853384, 'Terri-jo Lorryman', 2567370377, 10, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (770478, 'Cissiee Flawith', 5511826658, 9, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (493827, 'Vincenz Danielis', 5049766507, 12, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (940166, 'Kay Morales', 4013591829, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (173956, 'Forest Gowing', 1998869851, 5, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (769841, 'Regen Covington', 9062972731, 5, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (412086, 'Alameda Goude', 4759002737, 6, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (335723, 'Kevina D''Enrico', 7085034193, 7, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (794174, 'Paul Glandfield', 6691195084, 6, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (815626, 'Kaleena Bau', 8592998559, 6, '''Training''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (226434, 'Susann Bollen', 8165544477, 9, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (740987, 'Arline Tippell', 5229073513, 8, '''Tech Support''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (983816, 'Birgitta Baudinot', 4951238374, 12, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (731730, 'Doy Halls', 2138693283, 8, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (192175, 'Iorgo Astbury', 8962267923, 8, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (498414, 'Leonard Deetch', 4809114848, 11, '''Legal''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (335465, 'Dedra Delph', 6209601447, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (489192, 'Hanna Coxwell', 9986094052, 11, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (138401, 'Melisent Balleine', 9423219556, 8, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (925600, 'Puff Endle', 8034539727, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (969268, 'Dante Zucker', 5884244236, 6, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (314195, 'Mindy Klosa', 9097347430, 12, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (876349, 'Sabina Cotes', 9501140406, 9, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (419196, 'Evin Aicken', 1891036452, 7, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (689382, 'Hedda Brundill', 2132722111, 10, '''Corporate Comms''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (660663, 'Waring Snelson', 4911480432, 11, '''PR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (732529, 'Lynnett Hartop', 2097189981, 10, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (827615, 'Sayers Gladbeck', 5927852594, 10, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (926768, 'Liana Roscam', 4363354570, 8, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (655712, 'Dorian Elizabeth', 7445634625, 8, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (120143, 'Park Tessier', 3196583744, 5, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (149855, 'Zondra Kernermann', 6428272306, 12, '''Risk Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (419948, 'Gwenni Orr', 7796813718, 6, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (506081, 'Linoel Layne', 8287411059, 6, '''Product Mgmt''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (115043, 'Electra Polding', 3446856919, 7, '''Security''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (418390, 'Paton Wyon', 2058622143, 6, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (446836, 'Allayne Lurriman', 9677849363, 10, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (904536, 'Daniele Merryman', 2488856172, 10, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (583812, 'Duky Blanche', 7347560125, 6, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (986630, 'Reube Elkins', 9297380028, 12, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (747258, 'Cami Spilsburie', 8279414632, 6, '''Finance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (863248, 'Marjie Tumilty', 2621026874, 6, '''HR''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (499369, 'Pren Hedney', 6376631617, 6, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (253171, 'Rolf Rumbold', 5189258245, 7, '''Customer Service''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (956207, 'Nerty Vivians', 8135762367, 12, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (625939, 'Gretal Babonau', 1202450099, 7, '''Operations''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (912481, 'Patsy Glisenan', 1704935950, 6, '''QA''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (880387, 'Gweneth Jon', 1582391385, 11, '''Compliance''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (263195, 'Brantley Heyfield', 5335862435, 9, '''Accounting''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (904518, 'Simonette Sylett', 6137660432, 5, '''Engineering''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (133584, 'Darya Jacobsson', 4096091642, 12, '''R&D''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (249430, 'Hailee Marxsen', 7537275618, 10, '''Planning''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (647741, 'Erv Mayberry', 1351868232, 8, '''Biz Development''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (246857, 'Ossie Scatchard', 2356550738, 11, '''Marketing''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (378794, 'Beryl Langhorne', 5843546473, 9, '''Admin''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (847508, 'Thibaud Buttrey', 8507194414, 8, '''Facilities''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (787406, 'Saxon Drydale', 8171625119, 7, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (662359, 'Madge Leile', 1972260108, 11, '''Admin''');
commit;
prompt 1100 records committed...
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (246030, 'Orlan Brain', 3384448844, 11, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (871047, 'Prudy Dennehy', 3995426549, 12, '''Procurement''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (931347, 'Tann Burwell', 6804923623, 12, '''Production''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (403976, 'Essy Sammon', 4572625300, 9, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (805191, 'Lynnette Tenaunt', 4053989156, 7, '''Logistics''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (211639, 'Jemie Nuscha', 2658563708, 10, '''Inventory''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (108026, 'Alia Leaton', 4979100193, 12, '''IT''');
insert into EMPLOYEE (emid, emname, phone, hours, deptname)
values (844913, 'Boy Brandreth', 3308262944, 7, '''PMO''');
commit;
prompt 1108 records loaded
prompt Loading INVENTORY...
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (1, 'Item 1 Description', 100, to_date('01-01-2013', 'dd-mm-yyyy'), 'HR', 'computer');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (2, 'Item 2 Description', 200, to_date('01-11-2005', 'dd-mm-yyyy'), 'Finance', 'sofa');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (3, 'Item 3 Description', 300, to_date('02-01-2001', 'dd-mm-yyyy'), 'IT', 'bed');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (705690, 'Highlighters', 37, to_date('13-10-2023', 'dd-mm-yyyy'), 'Analytical Managemen', 'Desk LampsMarket Fir');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (353276, 'Markers', 58, to_date('16-11-2022', 'dd-mm-yyyy'), 'Quaker City Bancorp', 'FoldersProcter & Gam');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (911978, 'Binders', 25, to_date('20-12-2021', 'dd-mm-yyyy'), 'TruSecure', 'Glue SticksFlake-Wil');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (451503, 'Clipboards', 42, to_date('04-12-2014', 'dd-mm-yyyy'), 'AXSA Document Soluti', 'LaminatorsProsperity');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (781320, 'Pens', 81, to_date('14-05-2020', 'dd-mm-yyyy'), 'Portage Environmenta', 'Printer PaperNew Med');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (445546, 'Pens', 86, to_date('25-06-2013', 'dd-mm-yyyy'), 'Aventis', 'ScissorsGreen Mounta');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (681292, 'Folders', 22, to_date('27-07-2023', 'dd-mm-yyyy'), 'North American Theat', 'TapeYoung Innovation');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (270750, 'Sticky Notes', 34, to_date('07-07-2019', 'dd-mm-yyyy'), 'American Pan & Engin', 'HighlightersStaff Fo');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (878467, 'Staple Removers', 24, to_date('12-12-2015', 'dd-mm-yyyy'), 'Quaker City Bancorp', 'ScissorsSummit Energ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (727930, 'Calculators', 29, to_date('11-01-2021', 'dd-mm-yyyy'), 'TechBooks', 'MarkersCatamount Con');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (85845, 'Folders', 67, to_date('22-04-2012', 'dd-mm-yyyy'), 'Hershey Foods Corp.', 'PencilsCapella Educa');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (800810, 'Paper Clips', 13, to_date('26-09-2021', 'dd-mm-yyyy'), 'MasterCard Internati', 'FoldersData Warehous');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (397978, 'Sticky Notes', 30, to_date('03-08-2022', 'dd-mm-yyyy'), 'Speakeasy', 'NotebooksDirect Data');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (775229, 'Calculators', 63, to_date('11-12-2023', 'dd-mm-yyyy'), 'Novartis', 'Printer PaperUnger T');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (691907, 'Correction Fluid', 16, to_date('06-04-2019', 'dd-mm-yyyy'), 'Digital Visual Displ', 'WhiteboardsSpinnaker');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (800719, 'Label Makers', 80, to_date('09-02-2015', 'dd-mm-yyyy'), 'Bioanalytical System', 'CalculatorsShuffle M');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (259548, 'Clipboards', 35, to_date('17-09-2012', 'dd-mm-yyyy'), 'Anheuser-Busch Cos.', 'Trash CansConquest');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (785106, 'Desk Organizers', 66, to_date('10-05-2022', 'dd-mm-yyyy'), 'Lindin Consulting', 'Mouse PadsPrintingFo');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (687148, 'Pens', 55, to_date('05-06-2016', 'dd-mm-yyyy'), 'Evergreen Resources', 'Sticky NotesTurner P');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (762728, 'Erasers', 15, to_date('09-05-2012', 'dd-mm-yyyy'), 'esoftsolutions', 'NotebooksCustom Solu');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (247435, 'Whiteboards', 42, to_date('21-03-2013', 'dd-mm-yyyy'), 'Access US', 'PensScooter Store');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (126920, 'Erasers', 44, to_date('20-03-2021', 'dd-mm-yyyy'), 'Data Warehouse', 'RulersOneida Financi');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (320090, 'Rulers', 65, to_date('07-08-2012', 'dd-mm-yyyy'), 'Axis Consulting', 'Correction FluidGree');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (367380, 'Calendars', 36, to_date('04-11-2019', 'dd-mm-yyyy'), 'White Wave', 'PensKia Motors Corp.');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (606162, 'Label Makers', 20, to_date('24-05-2014', 'dd-mm-yyyy'), 'Bluff City Steel', 'WhiteboardsSmartroni');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (203044, 'Label Makers', 90, to_date('07-03-2014', 'dd-mm-yyyy'), 'Capital Crossing Ban', 'RulersSmartronix');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (152059, 'Correction Fluid', 15, to_date('26-01-2023', 'dd-mm-yyyy'), 'Alternative Technolo', 'CalendarsBoldtech Sy');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (251090, 'Clipboards', 93, to_date('10-10-2012', 'dd-mm-yyyy'), 'Conquest Systems', 'NotebooksAT&T Wirele');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (448724, 'Notebooks', 16, to_date('24-07-2018', 'dd-mm-yyyy'), 'Fetch Logistics', 'CalendarsSimply Cert');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (622704, 'Pens', 49, to_date('29-07-2016', 'dd-mm-yyyy'), 'Portage Environmenta', 'CalendarsAutomated L');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (121642, 'Staple Removers', 15, to_date('24-12-2021', 'dd-mm-yyyy'), 'Linksys', 'Printer PaperDatapri');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (86225, 'Staplers', 45, to_date('02-12-2019', 'dd-mm-yyyy'), 'Bluff City Steel', 'Label MakersStaff Fo');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (977286, 'Rulers', 15, to_date('09-01-2023', 'dd-mm-yyyy'), 'State Farm Mutual Au', 'Desk OrganizersFloor');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (688301, 'Label Makers', 84, to_date('15-07-2014', 'dd-mm-yyyy'), 'Capital Crossing Ban', 'ClipboardsRefinery');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (421635, 'Scissors', 34, to_date('23-04-2022', 'dd-mm-yyyy'), 'SSCI', 'ClipboardsReckitt Be');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (973676, 'File Cabinets', 99, to_date('06-09-2015', 'dd-mm-yyyy'), 'TechBooks', 'Desk OrganizersDrink');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (516388, 'Clipboards', 21, to_date('13-11-2021', 'dd-mm-yyyy'), 'Pyramid Digital Solu', 'Label MakersPriority');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (194239, 'Highlighters', 28, to_date('31-08-2023', 'dd-mm-yyyy'), 'Cura Group', 'EnvelopesGold Crest ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (188498, 'Rulers', 20, to_date('26-08-2017', 'dd-mm-yyyy'), 'Swiss Watch Internat', 'ClipboardsInfoPros');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (147944, 'Pencils', 52, to_date('15-06-2018', 'dd-mm-yyyy'), 'Doral Dental USA', 'Glue SticksTimeVisio');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (358651, 'Tape', 68, to_date('05-08-2014', 'dd-mm-yyyy'), 'ACS International Re', 'PencilsProvident Ban');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (538255, 'Pencils', 10, to_date('30-06-2015', 'dd-mm-yyyy'), 'TruSecure', 'StaplersAppriss');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (4312, 'Highlighters', 31, to_date('16-05-2015', 'dd-mm-yyyy'), 'Bioanalytical System', 'Trash CansMedAmicus');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (422976, 'Sticky Notes', 78, to_date('08-07-2021', 'dd-mm-yyyy'), 'HR', 'CalculatorsMegha Sys');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (145249, 'Folders', 49, to_date('05-12-2013', 'dd-mm-yyyy'), 'ProClarity', 'Correction FluidBedf');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (211226, 'Trash Cans', 50, to_date('23-02-2016', 'dd-mm-yyyy'), 'Dynacq International', 'File CabinetsHorizon');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (380921, 'Rulers', 91, to_date('02-02-2015', 'dd-mm-yyyy'), 'ProClarity', 'BindersTilson HR');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (725249, 'Markers', 24, to_date('21-05-2021', 'dd-mm-yyyy'), 'Capital Crossing Ban', 'TapeCapital Corp.');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (203606, 'Mouse Pads', 91, to_date('18-03-2023', 'dd-mm-yyyy'), 'Anheuser-Busch Cos.', 'Paper ClipsQSS Group');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (38413, 'Label Makers', 85, to_date('17-05-2012', 'dd-mm-yyyy'), 'Astute', 'WhiteboardsCardinal ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (297362, 'Rulers', 74, to_date('02-11-2012', 'dd-mm-yyyy'), 'Denali Ventures', 'Correction FluidBaye');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (661544, 'Sticky Notes', 26, to_date('24-08-2016', 'dd-mm-yyyy'), 'Capital Crossing Ban', 'CalendarsAnalytical ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (714031, 'Laminators', 31, to_date('01-02-2017', 'dd-mm-yyyy'), 'ProClarity', 'CalculatorsInfoVisio');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (541524, 'Correction Fluid', 33, to_date('30-07-2017', 'dd-mm-yyyy'), 'Novartis', 'Printer PaperEagleOn');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (813736, 'Label Makers', 15, to_date('02-11-2021', 'dd-mm-yyyy'), 'Heartlab', 'Desk OrganizersELMCO');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (103828, 'Sticky Notes', 25, to_date('02-12-2020', 'dd-mm-yyyy'), 'Dataprise', 'NotebooksTilson Land');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (850873, 'Folders', 80, to_date('07-05-2013', 'dd-mm-yyyy'), 'Caliber Collision Ce', 'File CabinetsComnet ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (354640, 'Laminators', 29, to_date('21-12-2017', 'dd-mm-yyyy'), 'G.A. Beck Artistic S', 'BindersCircuit City ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (346245, 'Folders', 90, to_date('18-12-2016', 'dd-mm-yyyy'), 'SSCI', 'Desk LampsCardinal C');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (308159, 'Erasers', 29, to_date('28-12-2016', 'dd-mm-yyyy'), 'Bioanalytical System', 'RulersTastefully Sim');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (635953, 'Mouse Pads', 23, to_date('19-02-2016', 'dd-mm-yyyy'), 'Key Information Syst', 'Printer PaperMarket ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (254725, 'Staplers', 87, to_date('18-06-2015', 'dd-mm-yyyy'), 'Kellogg Co.', 'Sticky NotesStrategi');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (237664, 'Staplers', 45, to_date('14-07-2018', 'dd-mm-yyyy'), 'Serentec', 'MarkersSolipsys');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (635394, 'Notebooks', 21, to_date('24-04-2018', 'dd-mm-yyyy'), 'TimeVision', 'NotebooksWeb Group');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (924895, 'Binders', 96, to_date('23-06-2019', 'dd-mm-yyyy'), '3t Systems', 'File CabinetsSears, ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (538580, 'Rulers', 50, to_date('28-12-2016', 'dd-mm-yyyy'), 'Lydian Trust', 'RulersThink Tank Sys');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (649921, 'Trash Cans', 46, to_date('12-08-2014', 'dd-mm-yyyy'), 'Cura Group', 'Label MakersActive S');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (84392, 'Tape', 82, to_date('04-06-2016', 'dd-mm-yyyy'), 'GRT', 'PensAmerisource Fund');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (705951, 'Folders', 29, to_date('18-08-2023', 'dd-mm-yyyy'), 'MasterCard Internati', 'Desk LampsWoronoco B');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (212295, 'Staplers', 22, to_date('15-08-2018', 'dd-mm-yyyy'), 'North American Theat', 'LaminatorsGDA Techno');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (769176, 'Staplers', 51, to_date('11-01-2017', 'dd-mm-yyyy'), 'TimeVision', 'LaminatorsMonarch Ca');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (637713, 'Rulers', 88, to_date('23-10-2019', 'dd-mm-yyyy'), 'Key Information Syst', 'PencilsNovartis');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (711332, 'Desk Organizers', 73, to_date('15-12-2015', 'dd-mm-yyyy'), 'Fetch Logistics', 'ErasersUnited Asset ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (993203, 'Folders', 100, to_date('15-07-2020', 'dd-mm-yyyy'), 'Formatech', 'ClipboardsOne Source');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (323395, 'Notebooks', 80, to_date('19-06-2021', 'dd-mm-yyyy'), 'Royal Gold', 'Correction FluidU.S.');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (419825, 'Trash Cans', 63, to_date('19-11-2014', 'dd-mm-yyyy'), 'ComGlobal Systems', 'Trash CansThink Tank');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (341033, 'Printer Paper', 100, to_date('12-12-2012', 'dd-mm-yyyy'), 'ScriptSave', 'CalculatorsCapella E');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (124332, 'Whiteboards', 37, to_date('29-08-2012', 'dd-mm-yyyy'), 'IntegraMed America', 'EnvelopesJoe Lombard');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (412436, 'Calculators', 10, to_date('17-08-2016', 'dd-mm-yyyy'), 'MasterCard Internati', 'PensHorizon Consulti');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (667806, 'Markers', 29, to_date('17-06-2018', 'dd-mm-yyyy'), 'Formatech', 'CalculatorsMoneyLine');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (899164, 'Sticky Notes', 47, to_date('08-06-2018', 'dd-mm-yyyy'), 'PepsiCo', 'Desk OrganizersJ.C. ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (1361, 'Desk Organizers', 40, to_date('08-05-2015', 'dd-mm-yyyy'), 'Access US', 'PensAdvertising Vent');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (650618, 'Correction Fluid', 80, to_date('17-05-2018', 'dd-mm-yyyy'), 'Kellogg Co.', 'Paper ClipsSafeway');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (514546, 'Label Makers', 53, to_date('02-02-2016', 'dd-mm-yyyy'), 'Cynergy Data', 'ErasersOpen Software');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (142776, 'Clipboards', 73, to_date('11-10-2018', 'dd-mm-yyyy'), 'Harrison & Shriftman', 'PensAccuship');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (612067, 'Staplers', 35, to_date('21-02-2018', 'dd-mm-yyyy'), 'GlaxoSmithKline', 'Desk OrganizersPaisl');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (621806, 'Envelopes', 16, to_date('16-12-2019', 'dd-mm-yyyy'), 'C & A Industries', 'LaminatorsGulfMark O');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (584453, 'File Cabinets', 60, to_date('04-01-2016', 'dd-mm-yyyy'), 'North American Theat', 'CalculatorsL’Oreal');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (143191, 'File Cabinets', 65, to_date('04-02-2015', 'dd-mm-yyyy'), 'Linksys', 'Correction FluidMone');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (788288, 'Folders', 57, to_date('28-12-2021', 'dd-mm-yyyy'), 'SSCI', 'BindersJohn Keeler &');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (646986, 'Pens', 49, to_date('27-07-2015', 'dd-mm-yyyy'), 'Capital Crossing Ban', 'CalculatorsWalt Disn');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (401651, 'Markers', 29, to_date('13-03-2013', 'dd-mm-yyyy'), 'Harrison & Shriftman', 'PensSouthern Financi');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (459829, 'Label Makers', 28, to_date('29-12-2019', 'dd-mm-yyyy'), 'TruSecure', 'StaplersNational Hom');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (270365, 'Desk Organizers', 40, to_date('12-10-2015', 'dd-mm-yyyy'), 'PepsiCo', 'ScissorsConquest');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (864342, 'Clipboards', 98, to_date('21-07-2012', 'dd-mm-yyyy'), 'Summit Energy', 'Desk LampsAdolph Coo');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (610691, 'Staple Removers', 44, to_date('20-08-2020', 'dd-mm-yyyy'), 'InfoPros', 'ClipboardsGlobal Wir');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (584103, 'Sticky Notes', 74, to_date('22-01-2020', 'dd-mm-yyyy'), 'North American Theat', 'CalendarsBest Buy Co');
commit;
prompt 100 records committed...
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (621840, 'Trash Cans', 23, to_date('06-03-2020', 'dd-mm-yyyy'), 'Novartis', 'Mouse PadsJoseph She');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (9745, 'Pencils', 93, to_date('18-10-2022', 'dd-mm-yyyy'), 'Dataprise', 'PensFirstFed America');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (950410, 'Mouse Pads', 19, to_date('26-12-2015', 'dd-mm-yyyy'), 'Linksys', 'PensComputer Source');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (730221, 'Label Makers', 69, to_date('18-09-2016', 'dd-mm-yyyy'), 'Fetch Logistics', 'FoldersDynacq Intern');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (182297, 'Correction Fluid', 49, to_date('04-01-2015', 'dd-mm-yyyy'), 'Cynergy Data', 'Glue SticksMarket-Ba');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (396317, 'Pens', 85, to_date('04-07-2020', 'dd-mm-yyyy'), 'ATX Forms', 'Correction FluidSea ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (623136, 'Glue Sticks', 71, to_date('19-05-2022', 'dd-mm-yyyy'), 'Summit Energy', 'RulersPacific Data D');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (686306, 'Glue Sticks', 76, to_date('04-06-2018', 'dd-mm-yyyy'), 'HR', 'PensAdea Solutions');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (740967, 'Folders', 75, to_date('29-10-2015', 'dd-mm-yyyy'), 'C & A Industries', 'Desk LampsBio-Refere');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (225440, 'Folders', 69, to_date('16-03-2022', 'dd-mm-yyyy'), 'Digital Visual Displ', 'Mouse PadsSouthern H');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (144807, 'Clipboards', 85, to_date('01-05-2018', 'dd-mm-yyyy'), 'TimeVision', 'CalendarsFSF Financi');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (721265, 'Sticky Notes', 90, to_date('23-12-2023', 'dd-mm-yyyy'), 'Timberlane Woodcraft', 'PencilsPowerLight');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (755615, 'Clipboards', 64, to_date('20-03-2014', 'dd-mm-yyyy'), 'TruSecure', 'ScissorsStrategic Pr');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (80383, 'Correction Fluid', 35, to_date('14-10-2017', 'dd-mm-yyyy'), 'Cura Group', 'Desk OrganizersQuant');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (60255, 'Pencils', 90, to_date('20-10-2014', 'dd-mm-yyyy'), 'TruSecure', 'File CabinetsAnworth');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (522280, 'Pens', 71, to_date('21-09-2016', 'dd-mm-yyyy'), 'American Vanguard', 'PensKeith Companies');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (589099, 'Staple Removers', 47, to_date('03-10-2014', 'dd-mm-yyyy'), 'Imaging Business Mac', 'Correction FluideCop');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (955854, 'Tape', 10, to_date('22-09-2019', 'dd-mm-yyyy'), 'TruSecure', 'Sticky NotesAventis');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (7880, 'Printer Paper', 69, to_date('26-04-2018', 'dd-mm-yyyy'), 'Novartis', 'File CabinetsMarket-');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (134260, 'Calendars', 74, to_date('16-02-2018', 'dd-mm-yyyy'), 'Alternative Technolo', 'MarkersAcsis');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (464441, 'Tape', 22, to_date('25-06-2015', 'dd-mm-yyyy'), 'Joe Lombardo Plumbin', 'Desk OrganizersConAg');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (353701, 'Desk Lamps', 93, to_date('05-04-2014', 'dd-mm-yyyy'), 'HR', 'TapeSYS-CON Media');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (80975, 'Mouse Pads', 46, to_date('24-11-2020', 'dd-mm-yyyy'), 'Cynergy Data', 'PensQSS Group');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (711793, 'Erasers', 52, to_date('05-03-2015', 'dd-mm-yyyy'), 'TechBooks', 'RulersQSS Group');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (732413, 'File Cabinets', 14, to_date('11-04-2013', 'dd-mm-yyyy'), 'Keller Williams Real', 'Trash CansMarlabs');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (191117, 'Staplers', 67, to_date('11-02-2016', 'dd-mm-yyyy'), 'Caliber Collision Ce', 'File CabinetsSchool ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (501558, 'Tape', 80, to_date('24-11-2014', 'dd-mm-yyyy'), 'North American Theat', 'Desk OrganizersFSF F');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (83601, 'Paper Clips', 45, to_date('11-06-2015', 'dd-mm-yyyy'), 'Conquest Systems', 'EnvelopesSynhrgy HR ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (451611, 'Erasers', 34, to_date('24-02-2022', 'dd-mm-yyyy'), 'Hershey Foods Corp.', 'Staple RemoversSPS C');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (521340, 'Paper Clips', 34, to_date('06-03-2021', 'dd-mm-yyyy'), 'Spenser Communicatio', 'Mouse PadsLifeline S');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (606697, 'Staplers', 46, to_date('10-09-2020', 'dd-mm-yyyy'), 'Pfizer', 'StaplersInnovative L');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (129492, 'Correction Fluid', 41, to_date('18-04-2012', 'dd-mm-yyyy'), 'Advanced Internet Te', 'LaminatorsAmerican V');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (281033, 'Correction Fluid', 12, to_date('10-09-2019', 'dd-mm-yyyy'), 'TruSecure', 'NotebooksHershey Foo');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (147341, 'Envelopes', 45, to_date('14-06-2018', 'dd-mm-yyyy'), 'Bluff City Steel', 'Trash CansStone Brew');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (969815, 'Calculators', 40, to_date('14-04-2017', 'dd-mm-yyyy'), 'Adea Solutions', 'Desk OrganizersSouth');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (685158, 'Scissors', 87, to_date('14-03-2015', 'dd-mm-yyyy'), 'Axis Consulting', 'BindersHeartlab');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (565126, 'Sticky Notes', 82, to_date('18-09-2020', 'dd-mm-yyyy'), 'Imports By Four Hand', 'Staple RemoversAC Te');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (899644, 'File Cabinets', 64, to_date('30-07-2013', 'dd-mm-yyyy'), 'Lydian Trust', 'Label MakersProgress');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (967410, 'Rulers', 59, to_date('02-10-2014', 'dd-mm-yyyy'), 'Banfe Products', 'WhiteboardsNorthwood');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (451526, 'Glue Sticks', 49, to_date('29-10-2021', 'dd-mm-yyyy'), 'Novartis', 'Staple RemoversAdvan');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (926734, 'Staplers', 20, to_date('29-08-2017', 'dd-mm-yyyy'), 'Venoco', 'FoldersLynk Systems');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (588798, 'Calculators', 77, to_date('29-04-2018', 'dd-mm-yyyy'), 'Sandy Spring Bancorp', 'Desk LampsConAgra');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (542064, 'Markers', 73, to_date('07-12-2019', 'dd-mm-yyyy'), 'Swiss Watch Internat', 'TapeScripNet');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (520811, 'Calendars', 49, to_date('11-06-2017', 'dd-mm-yyyy'), 'Bluff City Steel', 'Desk LampsATA Servic');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (206145, 'Markers', 49, to_date('20-01-2012', 'dd-mm-yyyy'), 'ATX Forms', 'NotebooksAquascape D');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (125358, 'File Cabinets', 36, to_date('02-02-2022', 'dd-mm-yyyy'), 'ACS International Re', 'NotebooksAssociated ');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (797461, 'Folders', 79, to_date('23-12-2022', 'dd-mm-yyyy'), 'GRT', 'Staple RemoversActiv');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (129405, 'Envelopes', 14, to_date('25-12-2014', 'dd-mm-yyyy'), 'McDonald’s Corp.', 'RulersMarket-Based S');
insert into INVENTORY (itemid, itemdes, amount, exdate, deptname, itemname)
values (384883, 'File Cabinets', 75, to_date('30-07-2014', 'dd-mm-yyyy'), 'Fetch Logistics', 'Staple RemoversEPIQ ');
commit;
prompt 149 records loaded
prompt Loading SUPPLIERS...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (1, 'Supplier A', 1234567890, 'Type 1');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (2, 'Supplier B', 2345678901, 'Type 2');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (3, 'Supplier C', 3456789012, 'Type 3');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (270087, 'Southern Homes and R', 370143841, 'Desk Organizers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (216706, 'Capital Bank', 64931090, 'Envelopes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (410790, 'Prosoft Technology G', 975842921, 'Erasers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (827305, 'Johnson & Johnson', 20091911, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (763004, 'Atlantic.Net', 356493217, 'Notebooks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (971310, 'STI Knowledge', 820713812, 'Pens');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (842570, 'Unicru', 447585311, 'Envelopes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (694838, 'Kitba Consulting Ser', 29486807, 'Folders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (324419, 'TimeVision', 186693486, 'Laminators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (813437, 'GTS Refreshment Serv', 129665157, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (313648, 'Cambridge Home Healt', 36396976, 'Staple Removers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (400724, 'Intel Corp.', 625405558, 'Calendars');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (241610, 'Multimedia Live', 88749455, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (488248, 'Catamount Constructo', 775638812, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (110360, 'Miller Systems', 376763856, 'Highlighters');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (486020, 'PrivateBancorp', 627612213, 'File Cabinets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (754478, 'Exinom Technologies', 749845924, 'Binders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (337259, 'McKee Wallwork Hende', 558267064, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (996625, 'Solution Builders', 557009682, 'Staplers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (151557, 'Total Entertainment', 612602783, 'Correction Fluid');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (251744, 'Quicksilver Resource', 810247813, 'Highlighters');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (866936, 'Ositis Software', 19919159, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (339354, 'Global Wireless Data', 418376135, 'Erasers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (480641, 'J.C. Penney Corp.', 92284338, 'Folders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (402666, 'Yum Brands', 587580456, 'File Cabinets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (390127, 'Kroger Co.', 810231941, 'Trash Cans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (508748, 'Pinnacle Staffing', 379279441, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (363496, 'Anworth Mortgage', 32470189, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (541932, 'McDonald’s Corp.', 614521550, 'Rulers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (250866, 'ComGlobal Systems', 826787962, 'Notebooks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (755265, 'Summit Energy', 131890721, 'Glue Sticks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (231391, 'Automated License Sy', 759184985, 'Paper Clips');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (642785, 'Wells Financial', 486381396, 'Pencils');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (343683, 'Infinity Software De', 681727251, 'Correction Fluid');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (461801, 'Gillette Co.', 888279339, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (339410, 'netNumina', 22818052, 'Pencils');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (433643, 'Hi-Tech Pharmacal', 781043062, 'Laminators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (992341, 'Midwest Media Group', 597505724, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (625763, 'American Megacom', 769144951, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (464256, 'Career Control Group', 363949349, 'Rulers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (423206, 'Portage Environmenta', 124879808, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (541048, 'Amerisource Funding', 244339846, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (401330, 'Pragmatech Software', 634102103, 'Correction Fluid');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (924376, 'Democracy Data & Com', 856411857, 'Glue Sticks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (872463, 'ACS International Re', 143910581, 'Desk Lamps');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (354353, 'Johnson & Johnson', 130240207, 'Whiteboards');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (234639, 'ACS International Re', 558237867, 'Calendars');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (676471, 'Cowlitz Bancorp', 19418797, 'Laminators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (304507, 'Service Link', 560117129, 'Calendars');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (761951, 'American Pan & Engin', 346507223, 'Calendars');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (589113, 'Prosum', 515218023, 'Whiteboards');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (343285, 'York Enterprise Solu', 855644185, 'Laminators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (878418, 'Limited Brands', 578514805, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (261791, 'Tilson HR', 177160817, 'Correction Fluid');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (201760, 'Keith Companies', 892567724, 'Pens');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (339918, 'SHOT', 9501541, 'Printer Paper');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (751963, 'USA Environmental Ma', 98186321, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (879554, 'Stone Brewing', 569985295, 'Trash Cans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (252485, 'Axis Consulting', 278161263, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (325493, 'WCI', 721201227, 'Desk Lamps');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (177038, 'Montpelier Plastics', 643907773, 'Notebooks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (426285, 'Young Innovations', 244928020, 'Erasers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (842236, 'Bigdough.com', 290948114, 'Folders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (371280, 'Hilton Hotels Corp.', 425793948, 'File Cabinets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (589022, 'Federated Department', 38722285, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (140606, 'Greenwich Technology', 67952469, 'Staple Removers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (162346, 'Career Control Group', 165893149, 'Whiteboards');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (661639, 'Peerless Manufacturi', 18060950, 'Highlighters');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (127612, 'Teamstudio', 631703596, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (304524, 'Unicru', 366984640, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (807903, 'Spectrum Communicati', 127087343, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (829476, 'U.S Physical Therapy', 471557897, 'Printer Paper');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (187187, 'Comm-Works', 420655392, 'Glue Sticks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (822247, 'Electrical Solutions', 868304846, 'Rulers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (980864, 'Tarragon Realty', 85047653, 'Erasers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (980139, 'Prosoft Technology G', 87120229, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (665225, 'IntegraMed America', 542866991, 'Correction Fluid');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (466551, 'Telechem Internation', 495076470, 'Folders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (308030, 'Eastman Kodak Co.', 992943972, 'Scissors');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (563853, 'Mars Inc.', 487351166, 'Paper Clips');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (477710, 'LogistiCare', 787509983, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (259919, 'Socket Internet', 236705855, 'Rulers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (802383, 'FNB', 661138788, 'Whiteboards');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (901504, 'Orange Glo Internati', 162538928, 'Correction Fluid');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (263790, 'Custom Solutions Int', 995628688, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (419881, 'Inspiration Software', 767888797, 'Clipboards');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (898507, 'PrivateBancorp', 727107366, 'Trash Cans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (809497, 'InsurMark', 587839731, 'Tape');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (780466, 'Conquest', 688502444, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (291986, 'Gorman Richardson Ar', 547795622, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (529812, 'MQ Software', 52762783, 'Highlighters');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (554812, 'Viacom', 526440421, 'Binders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (455365, 'Hat World', 789649081, 'Scissors');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (340557, 'United Asset Coverag', 693985832, 'Desk Lamps');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (611661, 'Restaurant Partners', 556656767, 'Glue Sticks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (883717, 'Viacom', 490244683, 'Folders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (511270, 'Momentum Marketing S', 17379848, 'Desk Organizers');
commit;
prompt 100 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (136471, 'USA Instruments', 168709819, 'Printer Paper');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (341373, 'Glacier Bancorp', 883579498, 'Staple Removers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (535013, 'ATX Forms', 876653100, 'File Cabinets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (921520, 'Traffic Management', 737466048, 'File Cabinets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (323461, 'Horizon Organic', 864622368, 'Sticky Notes');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (596576, 'Y2Marketing', 870965441, 'Tape');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (459983, 'Telepoint Communicat', 968959805, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (439128, 'Merit Medical System', 143008706, 'Notebooks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (554804, 'Carteret Mortgage', 9708000, 'Calculators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (560024, 'Catamount Constructo', 424431140, 'Rulers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (332426, 'TLS Service Bureau', 745349059, 'Rulers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (834162, 'MidAmerica Auto Glas', 171856583, 'Markers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (235666, 'Elite Medical', 17801269, 'Scissors');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (635865, 'Blue Pumpkin Softwar', 912343537, 'Erasers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (630852, 'WorldCom', 456275862, 'Laminators');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (138514, 'IBM Corp.', 569211208, 'Mouse Pads');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (680504, 'SALT Group', 693947549, 'Pens');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (276583, 'eCopy', 594933032, 'Desk Lamps');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (829341, 'Total Entertainment', 977066584, 'Folders');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (4, 'Oozz', 6582293128, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (5, 'Vipe', 1684365245, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (6, 'Photojam', 8524318930, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (7, 'Dynazzy', 2162754201, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (8, 'Youspan', 5302577218, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (9, 'Kwilith', 5306834882, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (10, 'Edgepulse', 3178538701, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (11, 'Linklinks', 3148668749, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (12, 'Youtags', 2251673677, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (13, 'Fanoodle', 1917538359, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (14, 'Skynoodle', 4647845643, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (15, 'Oyonder', 7645912623, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (16, 'Eabox', 5866199257, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (17, 'Yamia', 5013400010, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (18, 'Zoombox', 3991131271, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (19, 'Dabfeed', 6169732612, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (20, 'Youbridge', 3619923953, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (21, 'Aimbo', 4163178009, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (22, 'Vinte', 9327491197, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (23, 'Thoughtstorm', 8262755472, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (24, 'Yodo', 3917813372, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (25, 'Dabshots', 6051233360, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (26, 'Twitterlist', 3643041332, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (27, 'Zoonoodle', 6753740519, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (28, 'Meedoo', 2992296562, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (29, 'Oyoba', 5295446209, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (30, 'Topiclounge', 7434558498, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (31, 'Eazzy', 9432532515, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (32, 'Quimm', 3905664875, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (33, 'Babblestorm', 6397427137, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (34, 'Tazzy', 1932332987, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (35, 'Zoombeat', 8444504468, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (36, 'Jabbercube', 5003764867, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (37, 'Zoozzy', 6126804799, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (38, 'Photolist', 1431102883, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (39, 'Quatz', 8789579563, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (40, 'Zoonder', 8733495943, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (41, 'Jamia', 2729939085, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (42, 'Oodoo', 7059105823, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (43, 'Feedspan', 2513540252, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (44, 'Gabvine', 7905402529, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (45, 'Babbleopia', 7691863712, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (46, 'Gigabox', 2588708299, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (47, 'Meezzy', 4322155581, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (48, 'Meedoo', 4416525616, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (49, 'Eabox', 3855878300, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (50, 'Meemm', 6659532135, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (51, 'Feedbug', 2966160590, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (52, 'Linkbuzz', 9951681108, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (53, 'Oozz', 5796397425, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (54, 'Tekfly', 3128439019, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (55, 'Plajo', 8708150863, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (56, 'Realmix', 7617029090, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (57, 'Oyope', 8542504989, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (58, 'Skilith', 5229674710, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (59, 'Mudo', 8434417997, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (60, 'Centimia', 7867190483, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (61, 'Edgeclub', 1742492197, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (62, 'Kimia', 9606713539, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (63, 'Roodel', 5594170085, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (64, 'Realpoint', 5637180722, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (65, 'Wordify', 8936649703, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (66, 'Roodel', 8001958109, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (67, 'Vipe', 8631628068, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (68, 'Fivechat', 4363654614, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (69, 'BlogXS', 9926946582, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (70, 'Livefish', 7097718756, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (71, 'Tagtune', 8351418375, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (72, 'Linkbridge', 9834521916, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (73, 'Skaboo', 3126710699, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (74, 'Leexo', 2838805292, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (75, 'Livetube', 3662699505, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (76, 'Skiba', 2488779898, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (77, 'Kare', 7193425232, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (78, 'Fivechat', 9449761880, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (79, 'Avamm', 5515411834, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (80, 'Flashpoint', 5811115545, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (81, 'Avamm', 1191171225, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (82, 'Skiba', 9371895426, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (83, 'Pixoboo', 7582345307, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (84, 'Rhynoodle', 5615755545, 'coffee beans');
commit;
prompt 200 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (85, 'Jabbersphere', 7694036071, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (86, 'Gigabox', 1575536568, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (87, 'Voonix', 1229749083, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (88, 'Devcast', 3392358785, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (89, 'Brainbox', 6401910995, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (90, 'Voolia', 8077014556, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (91, 'Jetwire', 5406258221, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (92, 'Vitz', 6029837034, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (93, 'Eadel', 5434391929, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (94, 'Jaxbean', 8006561656, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (95, 'Pixonyx', 6493131347, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (96, 'Tagtune', 9185286654, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (97, 'Topicstorm', 4928562356, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (98, 'Mybuzz', 2549731817, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (99, 'Vitz', 6539547389, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (100, 'Devify', 7773963891, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (101, 'Gevee', 7704258605, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (102, 'Flashspan', 2694175189, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (103, 'Katz', 2523465442, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (104, 'Yombu', 3422865079, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (105, 'Tagfeed', 8555526800, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (106, 'Yabox', 7238334498, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (107, 'Mymm', 3913655885, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (108, 'Blogspan', 9407790330, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (109, 'Dazzlesphere', 9154129265, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (110, 'Myworks', 5076831954, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (111, 'Photospace', 2479919896, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (112, 'Snaptags', 3178452518, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (113, 'Yodel', 4799543222, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (114, 'Fatz', 5175432063, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (115, 'Gabtype', 4856517708, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (116, 'Realbuzz', 9542631803, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (117, 'Youopia', 6709198259, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (118, 'Wikido', 6083705881, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (119, 'Tambee', 6301408540, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (120, 'Wikivu', 4311060090, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (121, 'Bluezoom', 5615794549, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (122, 'Eabox', 1719715876, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (123, 'Photojam', 9875394139, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (124, 'Jayo', 6078203929, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (125, 'Quimm', 6399631767, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (126, 'Topicware', 9681184902, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (127, 'Skimia', 9181015346, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (128, 'Minyx', 5758353931, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (129, 'Demimbu', 4207460056, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (130, 'Buzzshare', 9339086256, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (131, 'Chatterbridge', 3605562450, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (132, 'Feedfish', 2022503068, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (133, 'Nlounge', 4602477489, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (134, 'Livefish', 9795083319, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (135, 'Oozz', 5279462394, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (136, 'Mycat', 2835646587, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (137, 'Avamba', 3464313669, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (138, 'Photobug', 5754946616, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (139, 'Brightdog', 6072324189, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (140, 'Kwilith', 4062637449, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (141, 'Skyba', 8015648207, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (142, 'Devpoint', 4802432872, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (143, 'Wikizz', 2351438313, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (144, 'Topicware', 4542779596, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (145, 'Zoombox', 4711347042, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (146, 'Mymm', 4357143758, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (147, 'Linkbuzz', 9952800536, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (148, 'Meeveo', 2014197624, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (149, 'Omba', 1963389644, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (150, 'Devcast', 1381012666, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (151, 'Realpoint', 3434160191, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (152, 'Jazzy', 3443345793, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (153, 'Thoughtstorm', 5135016809, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (154, 'Minyx', 4516052423, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (155, 'Zoombeat', 3665945787, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (156, 'Reallinks', 9897691402, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (157, 'Linkbuzz', 7022546628, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (158, 'Yakidoo', 6362679570, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (159, 'Twitterbridge', 3817932264, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (160, 'Jayo', 3207632465, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (161, 'Oba', 5476919583, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (162, 'Pixope', 7759720701, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (163, 'Zoomzone', 9762751355, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (164, 'Shuffletag', 3123988198, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (165, 'Tazz', 8343944467, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (166, 'Myworks', 9012225061, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (167, 'Devshare', 1677123785, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (168, 'Tagtune', 1871061021, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (169, 'Edgeblab', 5428733011, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (170, 'Pixope', 6906468181, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (171, 'Lajo', 5187317864, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (172, 'Feedmix', 4306045531, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (173, 'Brainsphere', 7607465543, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (174, 'Mydo', 7353067857, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (175, 'Quimba', 7618534656, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (176, 'Feedspan', 8806861632, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (177, 'Photolist', 1624557611, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (178, 'Realblab', 6771314493, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (179, 'Flashpoint', 5905982584, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (180, 'Rhyzio', 4919955243, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (181, 'LiveZ', 2448333834, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (182, 'Shufflester', 2349016464, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (183, 'Janyx', 9634806830, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (184, 'Twitterlist', 8054884869, 'candle set');
commit;
prompt 300 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (185, 'Mymm', 7522967295, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (186, 'Zoozzy', 2499421775, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (187, 'Jabbersphere', 2071505813, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (188, 'Einti', 4918778121, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (189, 'Eayo', 2294810803, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (190, 'Livetube', 6655902910, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (191, 'Twitterbeat', 9679154584, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (192, 'Eabox', 6285597461, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (193, 'Rooxo', 7613103251, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (194, 'Flipopia', 6025786994, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (195, 'Reallinks', 5207503542, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (196, 'Feedfire', 8097751087, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (197, 'Photobug', 4181927015, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (198, 'Realmix', 2014319313, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (199, 'Gabcube', 4388229847, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (200, 'Skippad', 2203471082, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (201, 'Rooxo', 6371284746, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (202, 'Dabfeed', 8903706977, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (203, 'Feedbug', 1842013875, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (204, 'Skidoo', 8055524611, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (205, 'Rhybox', 5592948965, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (206, 'Shuffledrive', 6502687859, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (207, 'Flipopia', 6919689514, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (208, 'Jaxworks', 8036943145, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (209, 'Eidel', 7219817726, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (210, 'Dabtype', 7969677058, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (211, 'Meezzy', 3956462407, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (212, 'Avamba', 3583066375, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (213, 'Youtags', 6869374619, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (214, 'Demimbu', 3547812796, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (215, 'Oyope', 9506797466, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (216, 'Roodel', 3937892057, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (217, 'Roomm', 8668590347, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (218, 'Plambee', 3346901987, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (219, 'Topicblab', 6246055105, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (220, 'Divavu', 1742946987, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (221, 'Livepath', 4998224215, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (222, 'Cogibox', 7633103121, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (223, 'Yakitri', 3282572156, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (224, 'Gigaclub', 9189926199, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (225, 'Youfeed', 3302483888, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (226, 'Einti', 7719445057, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (227, 'Demivee', 1385632343, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (228, 'Bluezoom', 3592764743, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (229, 'Brainbox', 7739312807, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (230, 'Yodoo', 4998724873, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (231, 'Leenti', 1472475954, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (232, 'Yabox', 4887045560, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (233, 'DabZ', 3973651119, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (234, 'Gabtune', 8713272447, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (235, 'Skimia', 4386271815, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (236, 'Layo', 6926406425, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (237, 'Divanoodle', 2448634674, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (238, 'Dabfeed', 9604172240, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (239, 'Thoughtsphere', 5341494551, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (240, 'Yakitri', 1612194661, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (241, 'Edgewire', 1387905741, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (242, 'Meevee', 4242637612, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (243, 'Jetpulse', 6395610054, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (244, 'Thoughtsphere', 1573100293, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (245, 'Fivebridge', 4669718798, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (246, 'Browsebug', 3553294752, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (247, 'Twitterbeat', 9449073841, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (248, 'Livepath', 6118984079, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (249, 'Quatz', 4506629300, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (250, 'Centidel', 1129196492, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (251, 'Meemm', 5688559402, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (252, 'Mybuzz', 7353395121, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (253, 'Skynoodle', 7954147255, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (254, 'Linktype', 2259496153, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (255, 'Oyope', 3047096646, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (256, 'Twitterbeat', 7972406964, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (257, 'Oyondu', 7859780756, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (258, 'Riffpath', 4929702727, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (259, 'Oyoloo', 6184957990, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (260, 'Einti', 6213353704, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (261, 'Yotz', 8362864725, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (262, 'Voolith', 7243050762, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (263, 'Latz', 5889042570, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (264, 'Photospace', 5053690537, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (265, 'Gabvine', 2981063108, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (266, 'Babbleblab', 7269712347, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (267, 'Meedoo', 7936661358, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (268, 'Gabcube', 9263957386, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (269, 'Dabvine', 8898739203, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (270, 'Dablist', 9129590598, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (271, 'Skimia', 7099321015, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (272, 'Wikizz', 3801187992, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (273, 'Skipstorm', 9831242979, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (274, 'Skimia', 1118162358, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (275, 'Skinder', 8912085536, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (276, 'Divanoodle', 3147651508, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (277, 'Tanoodle', 1444885559, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (278, 'Topiclounge', 8528400234, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (279, 'Trudoo', 7728773155, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (280, 'Thoughtblab', 9838099787, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (281, 'Trilia', 2659925879, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (282, 'Jabbersphere', 1451552906, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (283, 'Npath', 4051302926, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (284, 'Jabbercube', 7328481977, 'socks');
commit;
prompt 400 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (285, 'Flashspan', 4628873227, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (286, 'Muxo', 3961167438, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (287, 'Katz', 2144381505, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (288, 'Abata', 5206243868, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (289, 'Zoovu', 8778485867, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (290, 'Meezzy', 2676732821, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (291, 'Voonder', 4932633202, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (292, 'Thoughtsphere', 8643171560, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (293, 'Skyvu', 2628532462, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (294, 'Quimm', 4535996909, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (295, 'Rhybox', 5926836574, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (296, 'Bluezoom', 1995566057, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (297, 'Wikizz', 2852227074, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (298, 'Zazio', 3369097558, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (299, 'Realcube', 4089629208, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (300, 'Dablist', 6452944691, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (301, 'Livetube', 7763318757, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (302, 'Twitterlist', 7501286763, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (303, 'Kamba', 3344291267, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (304, 'Chatterpoint', 8602706227, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (305, 'Ozu', 5047870510, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (306, 'Leenti', 4222604590, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (307, 'Realblab', 8241788428, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (308, 'Yombu', 7249756712, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (309, 'Gabspot', 7875069816, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (310, 'Npath', 3972900002, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (311, 'Demizz', 5941196892, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (312, 'Zoonoodle', 7111538990, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (313, 'Gabtune', 3053770962, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (314, 'BlogXS', 3239341729, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (315, 'Photofeed', 4331179365, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (316, 'Mydeo', 1374980353, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (317, 'Gevee', 9205165930, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (318, 'Aimbo', 1177403875, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (319, 'Blogpad', 5712981630, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (320, 'Edgeblab', 1562457495, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (321, 'Flipopia', 9499136756, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (322, 'Skipstorm', 6124550902, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (323, 'Chatterbridge', 7233957084, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (324, 'Bubblemix', 6735553790, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (325, 'Feedspan', 2616786846, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (326, 'Realcube', 3699773913, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (327, 'Browsetype', 7348015107, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (328, 'Oozz', 6393103264, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (329, 'Photospace', 7328256002, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (330, 'Teklist', 5421183502, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (331, 'Babbleopia', 6182834870, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (332, 'Skinte', 5651452739, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (333, 'Oyoloo', 3061940634, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (334, 'Browsecat', 8317782337, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (335, 'Camido', 9316588087, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (336, 'Centimia', 8011979479, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (337, 'Buzzdog', 7576713018, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (338, 'Livefish', 5463814467, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (339, 'Gigashots', 8692114939, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (340, 'Vimbo', 6525957763, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (341, 'Gevee', 9501589850, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (342, 'Buzzshare', 6054464600, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (343, 'Trilia', 7469108699, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (344, 'Zoomlounge', 8017768393, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (345, 'Fivespan', 9451634451, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (346, 'Linktype', 2854445151, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (347, 'Skyble', 7109422782, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (348, 'Dablist', 7719141002, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (349, 'Brainlounge', 5815371774, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (350, 'Thoughtsphere', 2387757945, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (351, 'Voonyx', 3928348850, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (352, 'Rhybox', 6052313863, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (353, 'Oloo', 8877075024, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (354, 'Yotz', 2288016419, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (355, 'Jayo', 5748728331, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (356, 'Wikizz', 1286478121, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (357, 'Innotype', 7749840068, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (358, 'Photolist', 9067811908, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (359, 'Photofeed', 4888812251, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (360, 'Mynte', 9111776752, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (361, 'Skipstorm', 2768442680, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (362, 'Cogidoo', 5392570225, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (363, 'Oloo', 7906866154, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (364, 'Skaboo', 4232449234, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (365, 'Quimba', 3296740634, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (366, 'Riffwire', 2685225631, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (367, 'Janyx', 6888185399, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (368, 'Vimbo', 5198963726, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (369, 'Youfeed', 8607680357, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (370, 'Mudo', 9327888549, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (371, 'Gigaclub', 9788410351, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (372, 'Buzzdog', 8725198868, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (373, 'Oyoba', 1656904589, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (374, 'Topicstorm', 9106316048, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (375, 'Centimia', 3521913830, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (376, 'Blogtags', 9011651606, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (377, 'Eabox', 8143318800, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (378, 'Voonder', 2018369854, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (379, 'Buzzbean', 7631179638, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (380, 'Agivu', 6304277594, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (381, 'Shufflebeat', 2092027419, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (382, 'Roomm', 1251049687, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (383, 'Cogidoo', 9455837876, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (384, 'Tanoodle', 3671072809, 'sweater');
commit;
prompt 500 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (385, 'Zazio', 8444112440, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (386, 'Aimbu', 8607745437, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (387, 'Skinder', 1572400972, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (388, 'Photobug', 8168905730, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (389, 'Mynte', 3123473513, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (390, 'Dablist', 2551120221, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (391, 'Twitterbeat', 9447549603, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (392, 'Digitube', 6165359671, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (393, 'Buzzster', 6894310096, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (394, 'Agimba', 1499289928, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (395, 'Divape', 8789406755, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (396, 'Photobug', 5051952081, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (397, 'Plajo', 5566238265, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (398, 'Demimbu', 2933377028, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (399, 'Wikido', 4125558805, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (400, 'Livetube', 8807572614, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (401, 'Dabjam', 8047404217, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (402, 'Vinte', 2253506796, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (403, 'Yambee', 6589994582, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (404, 'Chatterpoint', 6667522318, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (405, 'Skibox', 3994677111, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (406, 'Leexo', 7211983304, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (407, 'Meemm', 1935182388, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (408, 'Brainsphere', 5177726643, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (409, 'Fivechat', 2269638257, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (410, 'Topiczoom', 5532026859, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (411, 'Flipopia', 1212254504, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (412, 'Jaxbean', 2649543481, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (413, 'Katz', 2099563930, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (414, 'Tekfly', 1146903278, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (415, 'Jabberbean', 9214668437, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (416, 'Realbridge', 3994732496, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (417, 'Babbleopia', 8275888148, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (418, 'Janyx', 1395350379, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (419, 'Photobean', 9713845744, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (420, 'Leexo', 7055609974, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (421, 'Zoomdog', 3137156281, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (422, 'Aimbo', 7577826648, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (423, 'Eimbee', 9993254889, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (424, 'Viva', 5009806726, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (425, 'Skimia', 6818779934, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (426, 'Talane', 6174918556, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (427, 'Gigashots', 5402080179, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (428, 'Skaboo', 8986767131, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (429, 'Linktype', 3613085633, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (430, 'Realpoint', 3535432095, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (431, 'Skinix', 8018650117, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (432, 'Livepath', 3451085136, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (433, 'Flipbug', 5236707482, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (434, 'Cogilith', 2219424492, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (435, 'Gigaclub', 9896126122, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (436, 'Wordpedia', 4028935673, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (437, 'Meezzy', 4029957489, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (438, 'Avaveo', 7319253704, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (439, 'Myworks', 9449975247, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (440, 'Flashspan', 4879245663, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (441, 'Skippad', 3033470233, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (442, 'Gigaclub', 9805536785, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (443, 'Dynabox', 7489105381, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (444, 'Browsedrive', 8456074761, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (445, 'Eimbee', 1276907886, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (446, 'Oyoba', 6904776919, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (447, 'Jaloo', 4974388494, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (448, 'Edgetag', 2816020720, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (449, 'Buzzster', 6433418321, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (450, 'Trilia', 8707800812, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (451, 'Bubblebox', 6223429505, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (452, 'Browsetype', 5718300048, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (453, 'Realmix', 1151202143, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (454, 'Dabtype', 1672754350, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (455, 'Livepath', 3214987032, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (456, 'Meejo', 5778727710, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (457, 'Demivee', 1587575988, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (458, 'Tagcat', 1156152438, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (459, 'Realbuzz', 6995875066, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (460, 'Flashset', 1178421594, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (461, 'Mymm', 4766807470, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (462, 'Oozz', 5068830922, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (463, 'Jamia', 5164015684, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (464, 'Voomm', 2242713960, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (465, 'Fanoodle', 1759888084, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (466, 'Gigashots', 7992897068, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (467, 'Divape', 8934472193, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (468, 'Livetube', 1696901821, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (469, 'Oyope', 2091988939, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (470, 'Dablist', 9247257902, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (471, 'Demizz', 1107877464, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (472, 'Skyba', 3529977627, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (473, 'Gabtype', 6855676091, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (474, 'Thoughtstorm', 6117166673, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (475, 'Jabbersphere', 2641542088, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (476, 'Blogpad', 4986511412, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (477, 'Skilith', 9214471418, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (478, 'Quinu', 5528021897, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (479, 'Trudeo', 8723425440, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (480, 'Aimbo', 3005062691, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (481, 'Fivebridge', 9112495956, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (482, 'Cogilith', 7391287389, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (483, 'Oyoloo', 4915893144, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (484, 'Dynava', 5885070001, 'perfume');
commit;
prompt 600 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (485, 'Tagtune', 4871776347, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (486, 'Bubblemix', 3698427686, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (487, 'Oyope', 1176216767, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (488, 'Yamia', 7046171987, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (489, 'Ntags', 2528462845, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (490, 'Skidoo', 6251652081, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (491, 'Bubblemix', 3137362550, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (492, 'Bubblemix', 1658711037, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (493, 'Trupe', 3837818714, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (494, 'Photofeed', 2358960422, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (495, 'Twitterwire', 4118246343, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (496, 'Quinu', 1262168228, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (497, 'Tanoodle', 4939335879, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (498, 'Wikivu', 1705057412, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (499, 'Dazzlesphere', 2794088100, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (500, 'Dynava', 2191267101, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (501, 'Kayveo', 7823588614, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (502, 'Fliptune', 8374455588, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (503, 'Shuffledrive', 2974673870, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (504, 'Twinder', 5406009193, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (505, 'Bubblemix', 4954299838, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (506, 'Oyoyo', 7581274508, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (507, 'Browsedrive', 4285194555, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (508, 'Wikibox', 4956825295, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (509, 'Skipfire', 6979614451, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (510, 'Kare', 6453486253, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (511, 'Kanoodle', 5028796531, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (512, 'Roomm', 5671656778, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (513, 'Trupe', 2062822554, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (514, 'Tagcat', 7219765693, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (515, 'Realcube', 6266090306, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (516, 'Quimba', 2332362071, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (517, 'Aivee', 2264806946, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (518, 'Quamba', 4605754495, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (519, 'Flipopia', 4854198563, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (520, 'JumpXS', 4105840914, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (521, 'Dabshots', 6202452166, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (522, 'Fiveclub', 1776278957, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (523, 'Pixope', 3951633673, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (524, 'Kazio', 3873476570, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (525, 'Wordpedia', 3551292784, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (526, 'Eabox', 2616556443, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (527, 'Twimbo', 8656740566, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (528, 'Eazzy', 7752550408, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (529, 'Voolith', 6361360299, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (530, 'Feednation', 1622459271, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (531, 'Shuffledrive', 7036370658, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (532, 'Linklinks', 3561656447, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (533, 'Dazzlesphere', 8772992367, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (534, 'Skinder', 9961902472, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (535, 'Twitterlist', 5641740390, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (536, 'Mudo', 9018585364, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (537, 'Thoughtstorm', 6694141912, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (538, 'Thoughtstorm', 6348682642, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (539, 'Realbridge', 2095166571, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (540, 'Leenti', 2266446465, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (541, 'Gigashots', 3336812676, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (542, 'Centizu', 2608475653, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (543, 'Meezzy', 1535737860, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (544, 'Bubbletube', 9232087658, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (545, 'Wikizz', 7486049533, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (546, 'Dynabox', 9544762381, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (547, 'Voonix', 9726295803, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (548, 'Teklist', 3674728379, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (549, 'Innotype', 4989442791, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (550, 'Jayo', 6606382421, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (551, 'Zoonoodle', 9143691844, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (552, 'Zoomlounge', 1899541030, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (553, 'Skinix', 9131087112, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (554, 'Talane', 8104298061, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (555, 'Thoughtbeat', 2347801533, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (556, 'Photobean', 6666236453, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (557, 'Skiptube', 7799766474, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (558, 'Zoomdog', 9542694098, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (559, 'Photobean', 1311548633, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (560, 'Devpoint', 2916330771, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (561, 'Talane', 8203110771, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (562, 'Pixonyx', 5337735680, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (563, 'Tavu', 3958793092, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (564, 'Brightbean', 1257124753, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (565, 'Wikizz', 2715956685, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (566, 'Browsedrive', 8728398610, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (567, 'Kamba', 9193773694, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (568, 'Meevee', 4601579958, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (569, 'Layo', 4114556889, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (570, 'Buzzbean', 9686643566, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (571, 'Pixonyx', 6554165077, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (572, 'Blogpad', 2817372178, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (573, 'Oyoyo', 6445739192, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (574, 'Livetube', 4677368003, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (575, 'Cogibox', 8487466492, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (576, 'Edgepulse', 2586650799, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (577, 'Jetpulse', 7872205780, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (578, 'Buzzster', 8634001632, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (579, 'Meezzy', 9404128167, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (580, 'Vinte', 7955920689, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (581, 'Linktype', 6021418997, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (582, 'Oyondu', 7737836748, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (583, 'Pixope', 6824382529, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (584, 'Edgeclub', 9586859762, 'flowers');
commit;
prompt 700 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (585, 'Digitube', 8394750299, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (586, 'Meemm', 2422119688, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (587, 'Linkbridge', 4758353100, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (588, 'Gigashots', 4515273743, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (589, 'Kanoodle', 7296856990, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (590, 'Edgeblab', 8589724589, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (591, 'Kare', 2944787747, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (592, 'Youspan', 8107657129, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (593, 'Tavu', 6919750088, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (594, 'Bluejam', 8109861583, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (595, 'Voomm', 8574756620, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (596, 'Fivechat', 3687157915, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (597, 'Yakijo', 2898160731, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (598, 'Ooba', 4698759438, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (599, 'Twitterbridge', 3102274710, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (600, 'Yotz', 6896771641, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (601, 'Ozu', 1184429982, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (602, 'Abata', 8282664761, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (603, 'Brainsphere', 8353498753, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (604, 'Camido', 6341339086, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (605, 'Quatz', 2204942667, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (606, 'Feedmix', 3523570825, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (607, 'Topicstorm', 5609303873, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (608, 'Jabbersphere', 8291980548, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (609, 'Brainlounge', 7759826830, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (610, 'Feedmix', 6076643929, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (611, 'Realmix', 2455392510, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (612, 'Feedfish', 3077521667, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (613, 'Cogidoo', 5536772872, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (614, 'Nlounge', 1171876429, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (615, 'Babblestorm', 8616134192, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (616, 'Ooba', 5068400126, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (617, 'Riffwire', 5844722210, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (618, 'Kaymbo', 6194502221, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (619, 'Vipe', 7532864387, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (620, 'Skimia', 8632747057, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (621, 'Twinte', 4869770864, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (622, 'Dabfeed', 2585658049, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (623, 'Yakidoo', 6292922032, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (624, 'Twitterworks', 1512552545, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (625, 'Abata', 5145514705, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (626, 'Abata', 3648111015, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (627, 'Innojam', 1673091292, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (628, 'Gabvine', 8607493080, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (629, 'Roodel', 2149603393, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (630, 'Zooveo', 2351396443, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (631, 'Jabbersphere', 2286278451, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (632, 'Bluejam', 2135291088, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (633, 'BlogXS', 8705112610, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (634, 'Bubblemix', 7668013400, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (635, 'Dablist', 5984925659, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (636, 'Linktype', 4268620638, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (637, 'Fadeo', 5455127642, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (638, 'Ntags', 2628014118, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (639, 'Quamba', 6415367932, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (640, 'Jabbersphere', 2729619507, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (641, 'Kwilith', 2536967304, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (642, 'Latz', 3171478522, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (643, 'Bluezoom', 7125071350, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (644, 'Zazio', 3095791805, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (645, 'Mycat', 8148927636, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (646, 'Jabbersphere', 2197147856, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (647, 'Zooxo', 9315205924, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (648, 'Feedspan', 5989209519, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (649, 'Meetz', 4834193603, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (650, 'Gevee', 6729775967, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (651, 'Jabbersphere', 9117591839, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (652, 'Jaxnation', 9392165660, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (653, 'Gigazoom', 7736616991, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (654, 'Thoughtstorm', 1855140391, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (655, 'Quatz', 9213121111, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (656, 'Rhyloo', 4217332400, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (657, 'Jazzy', 6837192117, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (658, 'Browsedrive', 2826169350, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (659, 'Reallinks', 1403371195, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (660, 'InnoZ', 4562549341, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (661, 'Skyba', 6293452889, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (662, 'Youopia', 6322763232, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (663, 'Vinte', 5888090153, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (664, 'Vipe', 5663268048, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (665, 'Tanoodle', 7688956230, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (666, 'Photobug', 4412464394, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (667, 'Jayo', 7078716108, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (668, 'Izio', 7195430887, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (669, 'Twimbo', 3047906784, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (670, 'Skiptube', 2943128565, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (671, 'Youspan', 4635468257, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (672, 'Youbridge', 2004591033, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (673, 'Zazio', 1424587860, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (674, 'Geba', 4534176623, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (675, 'Thoughtstorm', 8433568436, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (676, 'Tagcat', 9609045207, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (677, 'Npath', 2895275170, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (678, 'Blogspan', 4189860766, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (679, 'Tagchat', 7792250020, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (680, 'Dabvine', 7187111654, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (681, 'Camido', 3849252321, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (682, 'Topiczoom', 7003276273, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (683, 'Blogtags', 3215643413, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (684, 'Topicstorm', 9447847135, 'watch');
commit;
prompt 800 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (685, 'Talane', 1629621746, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (686, 'Skinte', 4391422436, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (687, 'Eayo', 9774726493, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (688, 'Chatterbridge', 9615898005, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (689, 'Photospace', 7703706491, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (690, 'Rhynoodle', 5714063650, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (691, 'Miboo', 4305908363, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (692, 'Rooxo', 4815505719, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (693, 'Flashspan', 8856018330, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (694, 'Feedmix', 5786390195, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (695, 'Jaloo', 4308860402, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (696, 'Brainsphere', 9399269725, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (697, 'Bubblemix', 8016501325, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (698, 'Centidel', 1895092019, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (699, 'Kazio', 3874510924, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (700, 'Oozz', 1168685303, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (701, 'Gabtune', 4416658001, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (702, 'Jaloo', 9342791475, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (703, 'Youbridge', 9137575135, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (704, 'Oyondu', 3508771165, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (705, 'Flashpoint', 1986904654, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (706, 'Photospace', 6389731002, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (707, 'Livetube', 5037476249, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (708, 'Katz', 5124509656, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (709, 'Trilith', 1424870047, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (710, 'Browseblab', 9385523327, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (711, 'Flipopia', 2186536998, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (712, 'Jabbertype', 6771272871, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (713, 'Demizz', 8268502321, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (714, 'Twinte', 9176346678, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (715, 'Vinder', 5133166066, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (716, 'Zoomzone', 1416809193, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (717, 'Skajo', 2667016104, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (718, 'Shuffletag', 2141478342, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (719, 'Jabberbean', 4655433568, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (720, 'Twitterlist', 9803554557, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (721, 'Bubbletube', 8534527846, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (722, 'Midel', 5149563912, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (723, 'Eare', 7123918879, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (724, 'Livepath', 3824308817, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (725, 'Mybuzz', 6142636616, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (726, 'Realblab', 7396404625, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (727, 'Gabvine', 8728440828, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (728, 'Dabtype', 1541451143, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (729, 'Vipe', 7205505385, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (730, 'Jamia', 5833945510, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (731, 'Yozio', 7327696550, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (732, 'Feedfish', 8528015866, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (733, 'Skajo', 6806523510, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (734, 'Kwideo', 9502710586, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (735, 'Dazzlesphere', 6155819284, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (736, 'Jaloo', 9757953856, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (737, 'Oodoo', 1831370927, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (738, 'Browseblab', 9549567452, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (739, 'Fivechat', 4324033267, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (740, 'Kazu', 6938892003, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (741, 'Meezzy', 1623824043, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (742, 'Pixonyx', 7009145541, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (743, 'Tagfeed', 5628744418, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (744, 'Zoomcast', 3551089844, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (745, 'Twinder', 8189666881, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (746, 'Topicstorm', 1453419667, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (747, 'Kimia', 3945760716, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (748, 'Mydo', 7144086156, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (749, 'Topicstorm', 9488211350, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (750, 'Wordpedia', 9756147465, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (751, 'Skinix', 8502861733, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (752, 'Jaxworks', 5742231222, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (753, 'Jaloo', 9247596575, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (754, 'Edgetag', 4454135703, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (755, 'Wikizz', 8203428405, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (756, 'Janyx', 4322555675, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (757, 'Quatz', 5077459961, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (758, 'Voolia', 9444719531, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (759, 'Kimia', 4946943450, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (760, 'Viva', 3516304798, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (761, 'Wordtune', 9245816633, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (762, 'Thoughtmix', 2381919534, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (763, 'Babbleopia', 5072893107, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (764, 'Rooxo', 5972438829, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (765, 'Demizz', 2021957770, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (766, 'Meevee', 4266396527, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (767, 'Blogpad', 7273694571, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (768, 'Skipfire', 1254361133, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (769, 'Ntag', 7485880073, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (770, 'Fanoodle', 4107688405, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (771, 'Jabbersphere', 7259417034, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (772, 'Kwideo', 6854125614, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (773, 'Camimbo', 5079113036, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (774, 'Kanoodle', 6881781403, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (775, 'Topicware', 2337951359, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (776, 'Tagpad', 9609998986, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (777, 'Kwimbee', 5514518018, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (778, 'Bubblemix', 3636094510, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (779, 'Bubbletube', 9752535115, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (780, 'Twinte', 9733638024, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (781, 'Geba', 7482213196, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (782, 'Buzzshare', 3778160508, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (783, 'Edgeify', 9823492825, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (784, 'Tazzy', 8292472280, 'coffee beans');
commit;
prompt 900 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (785, 'Meembee', 8442643548, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (786, 'Feedfire', 3777868761, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (787, 'Tambee', 3429262896, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (788, 'Vinte', 2157016987, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (789, 'Voonte', 4285116592, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (790, 'Aivee', 5849469148, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (791, 'Thoughtbridge', 6291445362, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (792, 'Aibox', 8319906033, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (793, 'Browseblab', 3783203407, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (794, 'Vidoo', 8294339096, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (795, 'Zooxo', 9702113392, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (796, 'Innotype', 7629255114, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (797, 'Buzzbean', 6823775117, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (798, 'Photofeed', 3757507395, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (799, 'Cogibox', 4649832655, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (800, 'Zava', 1956672800, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (801, 'Tagpad', 1492205170, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (802, 'Oba', 6256041658, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (803, 'Kwideo', 8566093159, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (804, 'Kwideo', 2619428251, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (805, 'Yakitri', 1857159863, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (806, 'Twitterwire', 7651459799, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (807, 'Einti', 6967403270, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (808, 'Voonix', 7092443565, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (809, 'Quimm', 2941167819, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (810, 'Yombu', 1416252462, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (811, 'Kazu', 7595831506, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (812, 'Wikido', 8238653901, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (813, 'Kazio', 1906182405, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (814, 'Realfire', 4352006469, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (815, 'Topicstorm', 9672191975, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (816, 'Skyba', 3026814983, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (817, 'Skiptube', 7819593201, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (818, 'Edgepulse', 6135115787, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (819, 'Brainlounge', 8287321997, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (820, 'Tagfeed', 4628721634, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (821, 'Eadel', 9136816917, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (822, 'Katz', 1117322163, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (823, 'Demivee', 9608264350, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (824, 'Quinu', 4251666072, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (825, 'Dynava', 3914471521, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (826, 'Teklist', 5972743746, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (827, 'Dabvine', 7189817516, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (828, 'Mymm', 9344738897, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (829, 'Babblestorm', 9422644396, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (830, 'Feedspan', 4869812357, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (831, 'Dabshots', 8294279414, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (832, 'Bluejam', 1638950342, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (833, 'Mydo', 2462423670, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (834, 'Dazzlesphere', 8331987056, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (835, 'Jabberstorm', 6854998655, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (836, 'Voonte', 2394646880, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (837, 'Gevee', 8622107114, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (838, 'BlogXS', 1663856297, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (839, 'Skimia', 9676959904, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (840, 'Skivee', 5727256112, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (841, 'Youspan', 1289877082, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (842, 'Wikivu', 9503785400, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (843, 'Realcube', 1521554104, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (844, 'Jabberstorm', 7245113651, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (845, 'Tanoodle', 2479068963, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (846, 'Fiveclub', 8013581798, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (847, 'Kazio', 3749212613, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (848, 'Thoughtsphere', 9023889760, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (849, 'Browsedrive', 1702405614, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (850, 'Flashspan', 5733696873, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (851, 'Photojam', 6883559097, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (852, 'Yata', 4347328172, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (853, 'Zoovu', 4946379200, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (854, 'LiveZ', 1003066606, 'watch');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (855, 'Babbleopia', 1716120912, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (856, 'Tagpad', 4861531557, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (857, 'Jayo', 3785830691, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (858, 'Yotz', 4813021820, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (859, 'Nlounge', 5712022694, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (860, 'Katz', 2939638024, 'bath bombs');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (861, 'Feedmix', 5001882789, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (862, 'Wikizz', 9525601233, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (863, 'Mydeo', 9039360916, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (864, 'Eazzy', 2975510449, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (865, 'Topiclounge', 5909478757, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (866, 'Pixope', 9172707202, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (867, 'Gabvine', 2511543050, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (868, 'Bubblemix', 9661077047, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (869, 'Ntags', 3674850807, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (870, 'Topicstorm', 5383777436, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (871, 'Dazzlesphere', 5684657595, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (872, 'Mymm', 3101957052, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (873, 'Eazzy', 9716546618, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (874, 'Shufflester', 8211034080, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (875, 'Cogilith', 8453836387, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (876, 'Yotz', 3879153925, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (877, 'Jabbersphere', 7083945626, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (878, 'Zoombeat', 7816743681, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (879, 'Myworks', 5903366821, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (880, 'Innojam', 1552640555, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (881, 'Reallinks', 5159859967, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (882, 'Rhynoodle', 5127832121, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (883, 'Yakitri', 4147529385, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (884, 'Quamba', 9486124498, 'sweater');
commit;
prompt 1000 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (885, 'Blogtag', 7514567203, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (886, 'Kanoodle', 3865945791, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (887, 'Jamia', 3622320449, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (888, 'Miboo', 3371607278, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (889, 'Janyx', 7913255785, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (890, 'Yabox', 9143197085, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (891, 'Wordpedia', 9818175868, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (892, 'Zazio', 5322237720, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (893, 'Mita', 9987595350, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (894, 'Vipe', 5595664788, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (895, 'Skaboo', 9548988379, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (896, 'Realcube', 3543618797, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (897, 'Eire', 9403978413, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (898, 'Zazio', 3389361241, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (899, 'Thoughtworks', 4308634588, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (900, 'Ooba', 2789568201, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (901, 'Roodel', 3671408985, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (902, 'Centizu', 4592254477, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (903, 'Yacero', 1981813209, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (904, 'Skippad', 6816362160, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (905, 'Thoughtstorm', 9638658903, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (906, 'Zoombox', 1645683478, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (907, 'Lazzy', 7637973545, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (908, 'Zoomlounge', 2867124950, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (909, 'Wordpedia', 2839904660, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (910, 'Roombo', 6179161807, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (911, 'Topiclounge', 9062299884, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (912, 'Oodoo', 7103733680, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (913, 'Quatz', 8641958337, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (914, 'Vimbo', 2907527550, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (915, 'Gabvine', 4507250525, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (916, 'Devpulse', 1459222270, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (917, 'Divape', 8757650678, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (918, 'Vipe', 8797085810, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (919, 'Ozu', 8528904982, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (920, 'Chatterbridge', 1991179994, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (921, 'Tavu', 5766414359, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (922, 'Eidel', 6751211091, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (923, 'Mynte', 4767601124, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (924, 'Edgetag', 6423651772, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (925, 'Meembee', 8565766914, 'scented candles');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (926, 'Bluezoom', 4577543969, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (927, 'Dynabox', 1531451169, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (928, 'Voolia', 1322407172, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (929, 'Kwimbee', 5715520783, 'gift card');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (930, 'Flashdog', 5271073678, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (931, 'Trupe', 4143101149, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (932, 'Jabberstorm', 3874586289, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (933, 'Ozu', 1798646956, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (934, 'Jetpulse', 5361352409, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (935, 'Skajo', 3779884212, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (936, 'Edgeify', 1847626029, 'succulent plant');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (937, 'Jabbercube', 1643452317, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (938, 'Skyndu', 8381760902, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (939, 'Devify', 7126000920, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (940, 'Tambee', 1251417526, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (941, 'Bubbletube', 3946388334, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (942, 'Gabcube', 2078073005, 'wine bottle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (943, 'Gigazoom', 4189118554, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (944, 'BlogXS', 6934707684, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (945, 'Meetz', 5763345340, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (946, 'Wikibox', 9355182458, 'tea sampler');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (947, 'Thoughtmix', 9291557451, 'socks');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (948, 'Skipstorm', 8816845191, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (949, 'Avavee', 5645968674, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (950, 'Ntags', 4628507156, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (951, 'Bluejam', 8349862083, 'scarf');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (952, 'Quamba', 3421495463, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (953, 'Topdrive', 5181910347, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (954, 'Wikido', 2446000498, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (955, 'Devcast', 9317237781, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (956, 'Skalith', 9308787134, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (957, 'Browsedrive', 1667984007, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (958, 'Yozio', 5229933254, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (959, 'Zoombeat', 1641868852, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (960, 'Kwideo', 7814923075, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (961, 'Dynabox', 9286167016, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (962, 'Trilith', 6637035978, 'personalized mug');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (963, 'Twitterlist', 9925150109, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (964, 'Kwinu', 7513008930, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (965, 'Twitterworks', 4252726600, 'umbrella');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (966, 'Mudo', 8157438910, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (967, 'Ailane', 4959987223, 'wallet');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (968, 'Thoughtmix', 5729691352, 'perfume');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (969, 'Avamba', 1656825970, 'spa gift basket');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (970, 'Topicshots', 8559833073, 'board game');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (971, 'Jaloo', 1279900083, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (972, 'Realblab', 8177928603, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (973, 'Ntag', 4948169052, 'notebook');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (974, 'Geba', 4962788773, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (975, 'Gabtype', 9115549427, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (976, 'Plambee', 3739634742, 'sweater');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (977, 'Thoughtblab', 3643518114, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (978, 'Riffpath', 8491054739, 'coffee beans');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (979, 'Topicblab', 5735176395, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (980, 'Realmix', 7968566769, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (981, 'JumpXS', 9541192833, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (982, 'Thoughtblab', 4155778520, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (983, 'Jaloo', 8742416190, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (984, 'Voonix', 5796445380, 'notebook');
commit;
prompt 1100 records committed...
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (985, 'Dynabox', 4567885342, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (986, 'Browsecat', 1674659406, 'sunglasses');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (987, 'Jaxworks', 2414160425, 'jewelry');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (988, 'Skippad', 7545852692, 'picture frame');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (989, 'Twinte', 8824929198, 'puzzle');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (990, 'InnoZ', 4518960680, 'flowers');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (991, 'Yombu', 6497671880, 'candle set');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (992, 'Edgeify', 3757999345, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (993, 'Yodo', 1126778658, 'chocolate box');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (994, 'Kwideo', 4468444486, 'headphones');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (995, 'Meedoo', 5965728640, 'movie tickets');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (996, 'Yacero', 3134890560, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (997, 'Mydeo', 3288161743, 'keychain');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (998, 'Realpoint', 8882097239, 'phone case');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (999, 'Twitterwire', 7312903291, 'book');
insert into SUPPLIERS (supnum, supname, phone, type_s)
values (1000, 'Realbridge', 1326299323, 'headphones');
commit;
prompt 1116 records loaded
prompt Loading RESERVATIONS...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visa International', 90, to_date('07-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 293, to_date('20-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 454, to_date('20-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DaimlerChrysler', 677, to_date('27-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 893, to_date('13-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dankoff Solar Produc', 884, to_date('12-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 964, to_date('29-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gorman Richardson Ar', 343, to_date('28-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keller Williams Real', 531, to_date('19-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 925, to_date('08-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Portage Environmenta', 594, to_date('10-06-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('J.C. Malone Associat', 110360, to_date('25-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 341373, to_date('16-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 756, to_date('24-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Clorox Co.', 282, to_date('04-03-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 927, to_date('06-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bashen Consulting', 676, to_date('12-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 972, to_date('15-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Venoco', 547, to_date('06-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 100, to_date('29-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 251, to_date('18-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Momentum Marketing S', 399, to_date('13-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SHOT', 308, to_date('20-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 939, to_date('25-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 51, to_date('09-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Envision Telephony', 778, to_date('17-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quicksilver Resource', 631, to_date('17-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 340, to_date('02-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Colgate-Palmolive Co', 811, to_date('16-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Joe Lombardo Plumbin', 140606, to_date('10-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 857, to_date('18-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 736, to_date('05-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 703, to_date('15-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sony Corp.', 899, to_date('01-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 777, to_date('03-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 809, to_date('09-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('G.A. Beck Artistic S', 142, to_date('28-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 834162, to_date('02-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dynacq International', 752, to_date('05-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hewlett-Packard Co.', 577, to_date('20-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AQuickDelivery', 411, to_date('19-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Banfe Products', 560024, to_date('22-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 999, to_date('01-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Harrison & Shriftman', 939, to_date('26-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eastman Kodak Co.', 35, to_date('27-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 303, to_date('17-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dell Computer Corp.', 352, to_date('08-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 150, to_date('23-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Yum Brands', 383, to_date('13-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spenser Communicatio', 398, to_date('12-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Carteret Mortgage', 465, to_date('20-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kingland Companies', 541, to_date('25-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 287, to_date('21-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProClarity', 22, to_date('16-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 444, to_date('12-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('OnStaff', 532, to_date('03-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Virtual Meeting Stra', 173, to_date('09-06-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IntegraMed America', 375, to_date('16-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 678, to_date('04-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Franklin American Mo', 477710, to_date('22-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 576, to_date('25-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 564, to_date('11-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 176, to_date('22-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 363496, to_date('14-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Corp.', 911, to_date('15-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 227, to_date('15-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DrinkMore Water', 235666, to_date('16-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Virtual Meeting Stra', 274, to_date('07-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 901504, to_date('10-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Harrison & Shriftman', 170, to_date('24-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 455365, to_date('14-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 13, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 155, to_date('17-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 432, to_date('03-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 494, to_date('07-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 199, to_date('06-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Group', 879, to_date('11-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Envision Telephony', 794, to_date('07-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 210, to_date('07-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Columbia Bancorp', 944, to_date('09-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Portfolio Recovery A', 61, to_date('21-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Taycor Financial', 999, to_date('25-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wyeth', 328, to_date('27-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Global Wireless Data', 872463, to_date('17-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Source', 443, to_date('06-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 6, to_date('22-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 818, to_date('01-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Automated License Sy', 553, to_date('24-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartland Payment Sy', 256, to_date('09-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 608, to_date('21-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 326, to_date('12-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Neuromodula', 28, to_date('10-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MRE Consulting', 378, to_date('08-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IntegraMed America', 235666, to_date('20-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 956, to_date('06-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TechBooks', 169, to_date('07-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Global Wireless Data', 477, to_date('17-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 927, to_date('17-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 972, to_date('25-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access US', 701, to_date('19-07-2017', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Technolo', 472, to_date('27-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InsurMark', 156, to_date('25-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bashen Consulting', 780466, to_date('22-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 804, to_date('29-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hewlett-Packard Co.', 787, to_date('01-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 458, to_date('13-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 122, to_date('29-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integra Telecom', 911, to_date('23-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('EagleOne', 701, to_date('14-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 368, to_date('14-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 607, to_date('14-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 847, to_date('02-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nissan Motor Co.', 967, to_date('15-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SurModics', 777, to_date('04-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Texas Residential Mo', 692, to_date('02-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McKee Wallwork Hende', 376, to_date('14-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gentra Systems', 627, to_date('11-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 728, to_date('24-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MedAmicus', 940, to_date('11-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MHF Logistical Solut', 254, to_date('07-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 587, to_date('29-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anworth Mortgage', 802, to_date('21-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sony Corp.', 829476, to_date('17-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Prometheus Laborator', 986, to_date('30-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Solipsys', 680504, to_date('06-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Web Group', 553, to_date('11-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Technolo', 552, to_date('18-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 922, to_date('18-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 387, to_date('18-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alden Systems', 283, to_date('20-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 260, to_date('21-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 467, to_date('04-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 466, to_date('29-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 679, to_date('07-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Liners Direct', 766, to_date('27-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 487, to_date('24-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GulfMark Offshore', 963, to_date('23-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access US', 869, to_date('15-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GulfMark Offshore', 100, to_date('29-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diageo', 234, to_date('10-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FNB', 354353, to_date('04-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Calence', 991, to_date('16-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hudson River Bancorp', 28, to_date('03-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 221, to_date('06-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pharmacia Corp.', 437, to_date('12-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 301, to_date('13-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Portage Environmenta', 530, to_date('28-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gray Hawk Systems', 999, to_date('11-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nissan Motor Co.', 781, to_date('03-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 771, to_date('01-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 298, to_date('14-09-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 151, to_date('13-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 941, to_date('11-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Albertson’s', 701, to_date('18-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Terra Firma', 552, to_date('26-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 133, to_date('20-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 124, to_date('11-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sterling Financial G', 283, to_date('08-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 279, to_date('22-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 429, to_date('26-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 977, to_date('20-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mission Controls Aut', 454, to_date('29-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Jolly Enterprises', 596, to_date('30-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bayer', 948, to_date('27-06-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 797, to_date('17-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 568, to_date('08-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diageo', 126, to_date('25-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Data Warehouse', 472, to_date('23-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 948, to_date('20-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('St. Mary Land & Expl', 323, to_date('22-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Campbell Soup Co.', 873, to_date('22-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 430, to_date('27-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 183, to_date('29-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Terra Firma', 355, to_date('23-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AccuCode', 606, to_date('14-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 924376, to_date('27-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 396, to_date('08-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Consultants'' Choice', 854, to_date('25-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Speakeasy', 600, to_date('09-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 122, to_date('22-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McDonald’s Corp.', 949, to_date('03-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gray Hawk Systems', 416, to_date('20-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 390127, to_date('24-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Employer Services', 57, to_date('03-04-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Team', 630, to_date('26-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartlab', 57, to_date('15-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Manhattan Associates', 674, to_date('13-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trinity HomeCare', 302, to_date('22-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Technolo', 410790, to_date('09-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 807, to_date('22-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accurate Autobody', 716, to_date('18-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Vanguard', 606, to_date('22-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 813437, to_date('26-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sea Fox Boat', 355, to_date('18-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pragmatech Software', 99, to_date('15-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 810, to_date('18-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 272, to_date('28-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Technolo', 55, to_date('23-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoPros', 469, to_date('14-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extra Mile Transport', 382, to_date('03-02-2016', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 589022, to_date('10-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pragmatech Software', 410, to_date('09-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dillard’s', 695, to_date('02-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hospital Solutions', 565, to_date('21-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kimberly-Clark Corp.', 873, to_date('26-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Multimedia Live', 264, to_date('30-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Greene County Bancor', 461801, to_date('08-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hospital Solutions', 535013, to_date('29-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GulfMark Offshore', 902, to_date('05-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 684, to_date('20-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MoneyLine Lending Se', 219, to_date('03-01-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 1000, to_date('01-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 305, to_date('02-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillette Co.', 425, to_date('06-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 63, to_date('27-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 465, to_date('01-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Data Company', 429, to_date('06-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 917, to_date('28-01-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 133, to_date('06-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SHOT', 860, to_date('11-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 453, to_date('06-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 392, to_date('11-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 196, to_date('30-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('U.S. Government', 754, to_date('03-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 135, to_date('22-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 149, to_date('22-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 418, to_date('17-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Automated License Sy', 729, to_date('21-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TruSecure', 589, to_date('04-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Technolo', 926, to_date('20-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Reckitt Benckiser', 940, to_date('26-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 234639, to_date('23-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 834162, to_date('10-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 355, to_date('04-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Wireless', 418, to_date('27-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gray Hawk Systems', 779, to_date('30-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Swiss Watch Internat', 127612, to_date('27-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 841, to_date('12-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 469, to_date('09-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trek Equipment', 316, to_date('05-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 754, to_date('12-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 455365, to_date('15-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Caliber Collision Ce', 337, to_date('11-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 456, to_date('23-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sara Lee Corp.', 501, to_date('10-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Clorox Co.', 603, to_date('09-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 807, to_date('25-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('First South Bancorp', 889, to_date('28-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Best Buy Co.', 406, to_date('01-01-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 103, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 140606, to_date('08-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Carteret Mortgage', 966, to_date('30-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TechBooks', 498, to_date('10-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 850, to_date('26-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merck & Co.', 140606, to_date('21-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Key Information Syst', 570, to_date('30-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 2, to_date('23-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unica', 73, to_date('10-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Business Plus Corpor', 869, to_date('15-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 99, to_date('01-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sandy Spring Bancorp', 288, to_date('12-06-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oakleaf Waste Manage', 795, to_date('06-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 710, to_date('04-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 118, to_date('10-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Studio B Productions', 899, to_date('10-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Albertson’s', 779, to_date('11-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Meridian Gold', 79, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Exinom Technologies', 539, to_date('16-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TruSecure', 335, to_date('21-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('All Star Consulting', 997, to_date('19-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pfizer', 360, to_date('27-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dell Computer Corp.', 176, to_date('04-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('C & A Industries', 710, to_date('26-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BioReliance', 627, to_date('22-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 131, to_date('12-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 981, to_date('03-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tropical Oasis', 339354, to_date('29-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Data Warehouse', 434, to_date('30-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Manhattan Associates', 389, to_date('14-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Swiss Watch Internat', 213, to_date('17-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pyramid Digital Solu', 132, to_date('15-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ScriptSave', 831, to_date('24-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Peerless Manufacturi', 479, to_date('12-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 529812, to_date('24-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 81, to_date('04-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Fetch Logistics', 41, to_date('11-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McKee Wallwork Hende', 703, to_date('10-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Legacy Financial Gro', 164, to_date('01-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 446, to_date('11-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Healthways', 349, to_date('28-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 477710, to_date('08-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keith Companies', 127, to_date('27-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Internet Te', 465, to_date('28-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Banfe Products', 380, to_date('19-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eze Castle Software', 516, to_date('25-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Infinity Software De', 296, to_date('23-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillette Co.', 245, to_date('24-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 110, to_date('20-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 407, to_date('27-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Greene County Bancor', 901, to_date('28-05-2016', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BioReliance', 347, to_date('04-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 313648, to_date('25-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProSys Information S', 5, to_date('26-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CIW Services', 635, to_date('09-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 763, to_date('11-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CIW Services', 1, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 500, to_date('13-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FirstFed America Ban', 310, to_date('31-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 355, to_date('30-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mosaic', 924376, to_date('10-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 5, to_date('02-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 212, to_date('28-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Wireless', 876, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sony Corp.', 856, to_date('13-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trinity HomeCare', 321, to_date('01-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Topics Entertainment', 167, to_date('04-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merck & Co.', 139, to_date('19-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Swiss Watch Internat', 26, to_date('01-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 529, to_date('03-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 914, to_date('15-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eastman Kodak Co.', 883717, to_date('23-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 855, to_date('02-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WorldCom', 601, to_date('17-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Microsoft Corp.', 284, to_date('14-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 59, to_date('18-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 771, to_date('28-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 269, to_date('30-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Portage Environmenta', 395, to_date('10-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 439, to_date('23-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merit Medical System', 767, to_date('19-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visa International', 499, to_date('23-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Third Millennium Tel', 501, to_date('22-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Morgan Research', 159, to_date('13-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capital Crossing Ban', 929, to_date('16-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Main Street Banks', 670, to_date('16-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProClarity', 603, to_date('29-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoVision Consultan', 567, to_date('06-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bayer', 482, to_date('15-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 611661, to_date('31-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Timberlane Woodcraft', 736, to_date('15-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Technolo', 605, to_date('27-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Franklin American Mo', 261, to_date('07-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keller Williams Real', 534, to_date('24-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Network Management R', 283, to_date('17-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 571, to_date('24-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Softworld', 307, to_date('09-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TimeVision', 71, to_date('16-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('First South Bancorp', 422, to_date('08-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advantage Credit Int', 666, to_date('22-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Web Group', 207, to_date('04-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 343683, to_date('09-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sandy Spring Bancorp', 695, to_date('17-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 433, to_date('21-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 575, to_date('19-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Main Street Banks', 458, to_date('18-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MoneyLine Lending Se', 217, to_date('23-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tracer Technologies', 216706, to_date('08-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProfitLine', 512, to_date('15-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 339410, to_date('28-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unicru', 48, to_date('04-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 143, to_date('09-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Timberlane Woodcraft', 972, to_date('09-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 685, to_date('05-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 393, to_date('26-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 392, to_date('29-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Solipsys', 165, to_date('05-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 235, to_date('27-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quicksilver Resource', 212, to_date('08-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Source', 633, to_date('30-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Campbell Soup Co.', 611, to_date('30-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 568, to_date('15-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 176, to_date('15-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 429, to_date('30-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 31, to_date('23-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 74, to_date('02-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Main Street Banks', 50, to_date('14-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 925, to_date('25-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GulfMark Offshore', 6, to_date('15-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visa International', 806, to_date('20-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 958, to_date('31-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eze Castle Software', 428, to_date('20-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Escalade', 791, to_date('07-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 707, to_date('06-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Virtual Meeting Stra', 511, to_date('28-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 439, to_date('17-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merck & Co.', 106, to_date('27-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 143, to_date('15-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 203, to_date('09-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sammy''s Woodfired Pi', 668, to_date('17-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 29, to_date('07-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 250866, to_date('20-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 61, to_date('24-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Max & Erma''s Restaur', 47, to_date('11-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Amerisource Funding', 127612, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 5, to_date('17-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unica', 452, to_date('30-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SYS-CON Media', 221, to_date('02-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 86, to_date('07-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 589022, to_date('17-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 459983, to_date('19-06-2012', 'dd-mm-yyyy'));
commit;
prompt 400 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 750, to_date('19-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North Coast Energy', 35, to_date('11-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 859, to_date('10-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 849, to_date('24-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 74, to_date('23-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Axis Consulting', 12, to_date('26-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 554, to_date('20-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Key Information Syst', 918, to_date('07-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Infinity Software De', 711, to_date('23-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('General Mills', 234, to_date('05-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sammy''s Woodfired Pi', 541048, to_date('28-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('E Commerce Group Pro', 121, to_date('17-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('V-Span', 162346, to_date('07-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tracer Technologies', 131, to_date('07-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Simply Certificates', 354353, to_date('04-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MRE Consulting', 252485, to_date('16-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 340, to_date('17-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 115, to_date('10-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 703, to_date('08-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 261791, to_date('14-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Columbia Bancorp', 868, to_date('26-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 526, to_date('30-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sandy Spring Bancorp', 360, to_date('26-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Max & Erma''s Restaur', 842, to_date('16-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WorldCom', 428, to_date('05-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('General Mills', 428, to_date('07-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tastefully Simple', 48, to_date('30-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Abatix', 724, to_date('15-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Web Group', 556, to_date('03-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProClarity', 309, to_date('23-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 422, to_date('29-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Primus Software', 877, to_date('27-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SafeHome Security', 267, to_date('27-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Max & Erma''s Restaur', 774, to_date('20-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Arkidata', 781, to_date('02-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 601, to_date('07-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Source', 101, to_date('07-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tilson Landscape', 624, to_date('28-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 188, to_date('23-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 196, to_date('03-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gorman Richardson Ar', 633, to_date('26-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoVision Consultan', 634, to_date('06-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 47, to_date('07-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integra Telecom', 137, to_date('05-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 808, to_date('04-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Random Walk Computin', 361, to_date('23-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BioReliance', 42, to_date('11-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Studio B Productions', 769, to_date('02-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SafeHome Security', 868, to_date('20-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nike', 802383, to_date('16-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spenser Communicatio', 533, to_date('12-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 8, to_date('24-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marlabs', 375, to_date('17-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 379, to_date('24-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Momentum Marketing S', 886, to_date('05-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Evergreen Resources', 981, to_date('15-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 808, to_date('06-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 374, to_date('01-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 367, to_date('17-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 485, to_date('23-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 562, to_date('31-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Abatix', 993, to_date('20-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('netNumina', 676, to_date('21-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mission Controls Aut', 348, to_date('05-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Yum Brands', 309, to_date('21-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 729, to_date('03-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PepsiCo', 822, to_date('29-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 186, to_date('15-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 90, to_date('03-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advantage Credit Int', 96, to_date('31-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Colgate-Palmolive Co', 437, to_date('19-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Business', 83, to_date('22-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Saks Inc.', 251, to_date('06-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 911, to_date('21-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Max & Erma''s Restaur', 87, to_date('02-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 715, to_date('07-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('G.A. Beck Artistic S', 812, to_date('22-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 395, to_date('13-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integrated Decisions', 528, to_date('14-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 985, to_date('23-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 549, to_date('04-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bashen Consulting', 980139, to_date('11-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 425, to_date('23-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Connected', 510, to_date('24-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sterling Financial G', 146, to_date('12-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signature Consultant', 62, to_date('20-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Larkin Enterprises', 390127, to_date('20-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Studio B Productions', 430, to_date('18-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Service Link', 182, to_date('21-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 53, to_date('11-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Terra Firma', 349, to_date('03-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 990, to_date('09-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 356, to_date('18-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gagwear', 306, to_date('08-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Escalade', 719, to_date('25-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Abatix', 427, to_date('26-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sammy''s Woodfired Pi', 633, to_date('16-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Clorox Co.', 695, to_date('24-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extreme Pizza', 842236, to_date('19-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kingland Companies', 911, to_date('08-01-2021', 'dd-mm-yyyy'));
commit;
prompt 500 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 512, to_date('21-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Team', 628, to_date('18-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Deutsche Telekom', 212, to_date('28-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Viacom', 459, to_date('23-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 912, to_date('25-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 281, to_date('05-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MoneyLine Lending Se', 127, to_date('02-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 950, to_date('19-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ELMCO', 536, to_date('21-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 201760, to_date('23-09-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 259, to_date('08-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anworth Mortgage', 18, to_date('18-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 558, to_date('30-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Morgan Research', 311, to_date('17-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Biosite', 662, to_date('02-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unica', 233, to_date('02-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Security Check', 842570, to_date('16-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 15, to_date('27-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oakleaf Waste Manage', 127, to_date('18-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 733, to_date('24-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 128, to_date('13-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kia Motors Corp.', 5, to_date('25-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Exinom Technologies', 881, to_date('01-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoPros', 332, to_date('12-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 380, to_date('17-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lindin Consulting', 578, to_date('29-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 912, to_date('01-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Green Mountain Coffe', 267, to_date('21-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 60, to_date('08-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Viacom', 855, to_date('25-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 658, to_date('21-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 590, to_date('18-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 661, to_date('11-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Evergreen Resources', 341, to_date('22-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Deutsche Telekom', 701, to_date('09-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 487, to_date('19-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Connected', 682, to_date('04-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spectrum Communicati', 199, to_date('28-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 213, to_date('19-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McDonald’s Corp.', 807903, to_date('16-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 681, to_date('10-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Albertson’s', 649, to_date('18-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 383, to_date('01-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FNB', 815, to_date('02-02-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('netNumina', 198, to_date('15-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('E Commerce Group Pro', 452, to_date('12-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tigris Consulting', 755, to_date('22-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 489, to_date('21-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Main Street Banks', 43, to_date('14-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hospital Solutions', 447, to_date('05-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 121, to_date('22-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bayer', 528, to_date('26-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 140, to_date('27-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Think Tank Systems', 745, to_date('10-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 639, to_date('29-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Business Plus Corpor', 255, to_date('22-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 967, to_date('29-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 254, to_date('28-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Solipsys', 308030, to_date('04-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 650, to_date('14-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quaker City Bancorp', 829341, to_date('02-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 625763, to_date('10-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Green Mountain Coffe', 79, to_date('02-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 842, to_date('07-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 845, to_date('01-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Fetch Logistics', 852, to_date('04-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 35, to_date('24-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 461801, to_date('19-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ivory Systems', 60, to_date('10-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Microsoft Corp.', 725, to_date('01-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 107, to_date('25-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kramont Realty Trust', 584, to_date('10-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 54, to_date('18-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 163, to_date('19-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AXSA Document Soluti', 929, to_date('04-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BASE Consulting Grou', 324419, to_date('28-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Wireless', 416, to_date('20-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InsurMark', 10, to_date('02-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 162346, to_date('03-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DaimlerChrysler', 411, to_date('03-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 73, to_date('22-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 479, to_date('09-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 250866, to_date('26-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sterling Financial G', 979, to_date('11-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 245, to_date('17-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hudson River Bancorp', 500, to_date('06-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Carteret Mortgage', 25, to_date('08-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 969, to_date('10-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tilson Landscape', 625763, to_date('26-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Escalade', 652, to_date('23-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Amerisource Funding', 294, to_date('26-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 140, to_date('16-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 96, to_date('30-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Y2Marketing', 510, to_date('04-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Microsoft Corp.', 239, to_date('18-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linac Systems', 879554, to_date('07-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 635, to_date('01-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('V-Span', 833, to_date('26-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hospital Solutions', 374, to_date('16-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 904, to_date('24-08-2023', 'dd-mm-yyyy'));
commit;
prompt 600 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 42, to_date('15-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Pan & Engin', 694, to_date('24-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Jolly Enterprises', 552, to_date('17-07-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 985, to_date('17-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 300, to_date('26-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('St. Mary Land & Expl', 42, to_date('15-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Market-Based Solutio', 591, to_date('16-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 500, to_date('08-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 594, to_date('01-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 270087, to_date('19-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Saks Inc.', 515, to_date('17-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 546, to_date('06-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 474, to_date('16-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 980, to_date('15-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NoBrainerBlinds.com', 202, to_date('25-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North American Theat', 559, to_date('13-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 609, to_date('27-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 573, to_date('07-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 923, to_date('01-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 797, to_date('16-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 998, to_date('21-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 856, to_date('10-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kimberly-Clark Corp.', 936, to_date('30-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mosaic', 244, to_date('18-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 967, to_date('07-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 355, to_date('04-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 535, to_date('06-04-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Venoco', 81, to_date('30-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 401330, to_date('29-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 816, to_date('09-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 915, to_date('02-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SHOT', 128, to_date('15-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extra Mile Transport', 433643, to_date('15-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nike', 475, to_date('25-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 396, to_date('04-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Texas Residential Mo', 550, to_date('18-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Networking Technolog', 392, to_date('05-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Connected', 342, to_date('16-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('C & A Industries', 869, to_date('19-07-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillette Co.', 396, to_date('11-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Best Buy Co.', 185, to_date('27-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 148, to_date('17-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Green Mountain Coffe', 748, to_date('15-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 458, to_date('05-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('State Farm Mutual Au', 388, to_date('02-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mission Controls Aut', 439128, to_date('12-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 141, to_date('04-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TruSecure', 997, to_date('01-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tigris Consulting', 149, to_date('09-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North American Theat', 648, to_date('26-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Saks Inc.', 55, to_date('25-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gray Hawk Systems', 780466, to_date('13-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advertising Ventures', 390, to_date('25-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 955, to_date('03-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Group', 865, to_date('11-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accuship', 872, to_date('21-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 727, to_date('26-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 282, to_date('14-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anheuser-Busch Cos.', 972, to_date('29-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 811, to_date('27-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 146, to_date('07-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 280, to_date('04-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 443, to_date('03-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accurate Autobody', 457, to_date('10-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eastman Kodak Co.', 154, to_date('01-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 993, to_date('01-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trainersoft', 311, to_date('19-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bioanalytical System', 534, to_date('24-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 327, to_date('21-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 624, to_date('11-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 265, to_date('11-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 796, to_date('27-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 98, to_date('12-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 911, to_date('23-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 491, to_date('21-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Abatix', 861, to_date('06-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Momentum Marketing S', 616, to_date('28-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Peerless Manufacturi', 727, to_date('25-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 354353, to_date('14-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('U.S. Government', 227, to_date('10-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('New Horizons Compute', 272, to_date('12-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quaker City Bancorp', 445, to_date('31-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tropical Oasis', 283, to_date('06-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cura Group', 86, to_date('29-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pharmacia Corp.', 844, to_date('27-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Total Entertainment', 959, to_date('08-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 794, to_date('20-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tripwire', 852, to_date('22-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 674, to_date('26-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 296, to_date('04-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Think Tank Systems', 621, to_date('16-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 969, to_date('25-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tigris Consulting', 652, to_date('15-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 29, to_date('18-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Amerisource Funding', 596576, to_date('17-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Primus Software', 847, to_date('29-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mercantile Bank', 722, to_date('25-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kramont Realty Trust', 611661, to_date('24-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CIW Services', 560, to_date('01-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 488248, to_date('09-11-2021', 'dd-mm-yyyy'));
commit;
prompt 700 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('St. Mary Land & Expl', 6, to_date('19-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Automated License Sy', 307, to_date('14-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 236, to_date('20-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 709, to_date('01-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dillard’s', 234, to_date('31-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 444, to_date('23-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Networking Technolog', 742, to_date('08-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 416, to_date('01-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 330, to_date('09-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('New Horizons Compute', 899, to_date('22-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North American Theat', 401330, to_date('04-07-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TRX', 284, to_date('15-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 232, to_date('17-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eze Castle Software', 103, to_date('08-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unicru', 312, to_date('17-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProClarity', 20, to_date('19-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Coridian Technologie', 439128, to_date('02-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 2, to_date('23-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 151557, to_date('19-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alden Systems', 152, to_date('09-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 326, to_date('10-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Taycor Financial', 105, to_date('26-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Fetch Logistics', 266, to_date('29-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 20, to_date('30-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Greene County Bancor', 639, to_date('19-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Myricom', 552, to_date('28-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('E Commerce Group Pro', 79, to_date('23-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 630852, to_date('21-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('St. Mary Land & Expl', 564, to_date('29-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 322, to_date('11-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProfitLine', 111, to_date('27-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoVision Consultan', 12, to_date('12-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CookTek', 635, to_date('06-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 68, to_date('21-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Manhattan Associates', 678, to_date('18-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Perfect Order', 412, to_date('27-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Labs', 636, to_date('05-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quaker City Bancorp', 648, to_date('23-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kia Motors Corp.', 869, to_date('18-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Boldtech Systems', 400, to_date('08-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoVision Consultan', 486, to_date('29-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 427, to_date('08-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 913, to_date('29-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 47, to_date('11-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mosaic', 835, to_date('25-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Labs', 789, to_date('11-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 318, to_date('26-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Perfect Order', 395, to_date('23-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Arkidata', 780466, to_date('18-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Business Plus Corpor', 421, to_date('21-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 644, to_date('23-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('National Home Health', 955, to_date('08-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 582, to_date('16-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 543, to_date('23-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 338, to_date('08-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tracer Technologies', 288, to_date('28-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Calence', 72, to_date('05-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 529812, to_date('25-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 708, to_date('04-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('National Home Health', 468, to_date('21-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quicksilver Resource', 575, to_date('06-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Labs', 426, to_date('16-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SurModics', 133, to_date('28-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 433643, to_date('02-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 608, to_date('06-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NLX', 541048, to_date('22-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bioanalytical System', 79, to_date('09-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Group', 278, to_date('27-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Service Link', 449, to_date('30-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Caliber Collision Ce', 155, to_date('31-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 775, to_date('01-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 808, to_date('04-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('J.C. Malone Associat', 62, to_date('05-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 792, to_date('13-02-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integra Telecom', 259919, to_date('14-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 470, to_date('04-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 673, to_date('25-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hewlett-Packard Co.', 980139, to_date('29-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sea Fox Boat', 260, to_date('14-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Technolo', 820, to_date('12-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 409, to_date('29-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 221, to_date('13-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 980139, to_date('06-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AccuCode', 89, to_date('28-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dankoff Solar Produc', 697, to_date('20-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DaimlerChrysler', 644, to_date('15-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 926, to_date('04-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 350, to_date('20-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 401, to_date('01-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 40, to_date('26-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 212, to_date('09-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Technolo', 587, to_date('26-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 657, to_date('18-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 765, to_date('05-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 78, to_date('14-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 238, to_date('28-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adea Solutions', 441, to_date('04-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AccuCode', 586, to_date('31-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nike', 260, to_date('15-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Myricom', 446, to_date('02-02-2016', 'dd-mm-yyyy'));
commit;
prompt 800 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tropical Oasis', 667, to_date('06-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lloyd Group', 787, to_date('10-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 68, to_date('01-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tarragon Realty', 924376, to_date('06-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FNB', 102, to_date('21-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anheuser-Busch Cos.', 858, to_date('30-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Healthways', 504, to_date('11-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Evergreen Resources', 701, to_date('23-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sara Lee Corp.', 261791, to_date('12-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 827, to_date('30-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MRE Consulting', 740, to_date('18-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Calence', 767, to_date('20-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North American Theat', 351, to_date('28-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advantage Credit Int', 391, to_date('09-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FirstFed America Ban', 482, to_date('24-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 799, to_date('22-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 442, to_date('26-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access US', 700, to_date('19-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AccuCode', 609, to_date('29-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IntegraMed America', 604, to_date('12-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 189, to_date('09-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 457, to_date('26-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tarragon Realty', 366, to_date('16-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 877, to_date('05-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 100, to_date('04-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merck & Co.', 836, to_date('14-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tripwire', 456, to_date('25-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('netNumina', 712, to_date('07-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IntegraMed America', 108, to_date('30-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bluff City Steel', 304524, to_date('28-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('OnStaff', 88, to_date('25-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Harrison & Shriftman', 511, to_date('14-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Infinity Software De', 961, to_date('11-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 276583, to_date('21-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Primus Software', 111, to_date('29-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marlabs', 379, to_date('08-01-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 973, to_date('31-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 509, to_date('31-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 441, to_date('21-03-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keith Companies', 378, to_date('05-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 274, to_date('23-02-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hospital Solutions', 950, to_date('15-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Green Mountain Coffe', 679, to_date('26-03-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Green Mountain Coffe', 494, to_date('17-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IntegraMed America', 816, to_date('19-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 910, to_date('22-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signature Consultant', 493, to_date('13-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Boldtech Systems', 611, to_date('06-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AccuCode', 250, to_date('13-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('V-Span', 434, to_date('12-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Green Mountain Coffe', 444, to_date('26-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 788, to_date('27-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 144, to_date('19-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 578, to_date('17-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 739, to_date('12-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Black Mountain Manag', 249, to_date('20-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TruSecure', 692, to_date('21-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 998, to_date('15-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Questar Capital', 681, to_date('15-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Veri-Tek Internation', 365, to_date('09-01-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sony Corp.', 332426, to_date('20-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Coridian Technologie', 856, to_date('19-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('OnStaff', 494, to_date('11-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 970, to_date('06-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oakleaf Waste Manage', 337, to_date('29-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 691, to_date('19-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 697, to_date('04-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Topics Entertainment', 346, to_date('21-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 313648, to_date('07-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 822247, to_date('28-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eze Castle Software', 735, to_date('21-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 968, to_date('31-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 197, to_date('22-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 985, to_date('14-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 398, to_date('30-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('EagleOne', 495, to_date('16-03-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Connected', 994, to_date('18-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spinnaker Exploratio', 159, to_date('20-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tilia', 218, to_date('04-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CookTek', 919, to_date('24-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Questar Capital', 446, to_date('30-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advertising Ventures', 151, to_date('24-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 39, to_date('17-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 672, to_date('10-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 701, to_date('25-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capital Crossing Ban', 469, to_date('21-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 839, to_date('25-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Franklin American Mo', 323461, to_date('21-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 915, to_date('23-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 94, to_date('08-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 693, to_date('24-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 968, to_date('01-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Caliber Collision Ce', 664, to_date('25-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 434, to_date('13-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Data Company', 323461, to_date('22-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Franklin American Mo', 840, to_date('18-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 202, to_date('24-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Amerisource Funding', 507, to_date('26-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bluff City Steel', 697, to_date('19-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 45, to_date('07-05-2012', 'dd-mm-yyyy'));
commit;
prompt 900 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 682, to_date('27-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Astute', 276583, to_date('28-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 143, to_date('22-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 531, to_date('19-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 695, to_date('13-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 739, to_date('14-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('V-Span', 234639, to_date('15-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Myricom', 204, to_date('04-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dynacq International', 513, to_date('12-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 674, to_date('01-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 665225, to_date('17-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 248, to_date('04-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kingland Companies', 811, to_date('25-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 659, to_date('13-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Data Warehouse', 216706, to_date('06-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 555, to_date('04-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eastman Kodak Co.', 726, to_date('21-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dankoff Solar Produc', 582, to_date('15-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 299, to_date('25-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Solipsys', 866936, to_date('12-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MedAmicus', 386, to_date('26-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trinity HomeCare', 884, to_date('19-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Saks Inc.', 885, to_date('03-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 114, to_date('04-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Topics Entertainment', 746, to_date('21-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Printcafe Software', 979, to_date('27-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 555, to_date('01-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 33, to_date('09-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 486, to_date('19-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extreme Pizza', 276583, to_date('25-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 798, to_date('08-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 682, to_date('16-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 665, to_date('18-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 185, to_date('06-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 291986, to_date('29-04-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dynacq International', 630, to_date('11-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 616, to_date('24-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 415, to_date('10-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Prosoft Technology G', 691, to_date('02-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trainersoft', 827, to_date('25-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoPros', 112, to_date('26-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Balchem', 53, to_date('03-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 279, to_date('23-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Texas Residential Mo', 915, to_date('17-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 593, to_date('30-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tastefully Simple', 336, to_date('08-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 983, to_date('22-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IntegraMed America', 128, to_date('13-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sara Lee Corp.', 249, to_date('30-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Business', 620, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 464256, to_date('27-01-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Balchem', 389, to_date('08-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 710, to_date('12-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 560, to_date('16-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pharmacia Corp.', 554812, to_date('17-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anheuser-Busch Cos.', 889, to_date('11-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wyeth', 181, to_date('07-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TMA Resources', 271, to_date('13-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 563, to_date('06-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SBC Communications', 390, to_date('13-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 759, to_date('26-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Taycor Financial', 539, to_date('20-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sara Lee Corp.', 809497, to_date('23-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartland Payment Sy', 200, to_date('25-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CookTek', 454, to_date('26-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 476, to_date('25-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 631, to_date('03-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 919, to_date('11-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 695, to_date('16-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pyramid Digital Solu', 413, to_date('08-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anheuser-Busch Cos.', 429, to_date('05-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AQuickDelivery', 199, to_date('28-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sterling Financial G', 378, to_date('11-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TruSecure', 847, to_date('03-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Procter & Gamble Co.', 893, to_date('21-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gray Hawk Systems', 138514, to_date('02-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 327, to_date('30-07-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NoBrainerBlinds.com', 149, to_date('16-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ivory Systems', 441, to_date('16-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 341, to_date('21-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 906, to_date('19-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 756, to_date('07-09-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unicru', 288, to_date('07-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 294, to_date('17-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Inspiration Software', 923, to_date('04-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pulaski Financial', 443, to_date('02-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adea Solutions', 510, to_date('25-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signature Consultant', 911, to_date('27-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 562, to_date('24-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 390127, to_date('05-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sammy''s Woodfired Pi', 1000, to_date('01-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 982, to_date('16-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Outta the Box Dispen', 379, to_date('14-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoVision Consultan', 757, to_date('18-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WorldCom', 773, to_date('22-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hudson River Bancorp', 74, to_date('17-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProSys Information S', 503, to_date('30-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sea Fox Boat', 422, to_date('04-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 304507, to_date('05-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ogio International', 859, to_date('15-01-2013', 'dd-mm-yyyy'));
commit;
prompt 1000 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Colgate-Palmolive Co', 545, to_date('02-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 100, to_date('15-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 362, to_date('10-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accurate Autobody', 762, to_date('26-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 13, to_date('03-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 353, to_date('08-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Caliber Collision Ce', 118, to_date('04-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 921, to_date('27-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Greene County Bancor', 477, to_date('31-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quaker City Bancorp', 100, to_date('12-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Boldtech Systems', 337259, to_date('01-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Amerisource Funding', 30, to_date('01-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 315, to_date('29-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AccuCode', 883717, to_date('13-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 240, to_date('30-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quaker City Bancorp', 710, to_date('08-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Caliber Collision Ce', 827305, to_date('31-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 624, to_date('09-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wyeth', 126, to_date('18-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 291, to_date('04-06-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 506, to_date('12-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 624, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accurate Autobody', 363, to_date('05-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 920, to_date('02-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Texas Residential Mo', 652, to_date('07-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gentra Systems', 155, to_date('08-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 496, to_date('30-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Topics Entertainment', 600, to_date('20-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Consultants'' Choice', 325493, to_date('29-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CIW Services', 992341, to_date('24-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 377, to_date('28-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 131, to_date('23-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FNB', 548, to_date('05-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Axis Consulting', 308030, to_date('19-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 466551, to_date('14-09-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Venoco', 160, to_date('16-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 114, to_date('23-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lloyd Group', 445, to_date('29-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 623, to_date('18-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 419, to_date('21-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('New Media Communicat', 990, to_date('30-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SYS-CON Media', 91, to_date('19-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 32, to_date('23-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kimberly-Clark Corp.', 166, to_date('17-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Employer Services', 314, to_date('03-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trinity HomeCare', 631, to_date('05-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Saks Inc.', 195, to_date('18-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hospital Solutions', 718, to_date('03-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Neuromodula', 101, to_date('20-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Web Group', 342, to_date('01-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Yum Brands', 623, to_date('06-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 926, to_date('28-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ScriptSave', 235666, to_date('10-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Envision Telephony', 327, to_date('31-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extra Mile Transport', 657, to_date('31-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trek Equipment', 400724, to_date('19-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gagwear', 370, to_date('07-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Best Buy Co.', 462, to_date('20-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 584, to_date('28-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 666, to_date('27-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Coridian Technologie', 339410, to_date('05-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GHR Systems', 340557, to_date('06-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Carteret Mortgage', 426, to_date('26-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 596, to_date('03-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DaimlerChrysler', 921, to_date('05-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 109, to_date('02-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytical Managemen', 53, to_date('15-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('New Horizons Compute', 166, to_date('26-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Y2Marketing', 220, to_date('27-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 310, to_date('17-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kramont Realty Trust', 416, to_date('18-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ogio International', 464, to_date('23-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 400, to_date('31-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sunstream', 401, to_date('28-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PowerLight', 829, to_date('23-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Canterbury Park', 828, to_date('20-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 869, to_date('06-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 370, to_date('18-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Arkidata', 466, to_date('20-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 668, to_date('11-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Network Management R', 393, to_date('06-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gorman Richardson Ar', 459983, to_date('22-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tastefully Simple', 329, to_date('27-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Prometheus Laborator', 459983, to_date('14-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pulaski Financial', 369, to_date('16-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Peerless Manufacturi', 714, to_date('25-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 897, to_date('16-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Wireless', 901, to_date('23-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McDonald’s Corp.', 471, to_date('12-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 283, to_date('06-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 741, to_date('13-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 773, to_date('15-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kramont Realty Trust', 217, to_date('23-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 798, to_date('04-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Envision Telephony', 96, to_date('16-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Primus Software', 285, to_date('04-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 511, to_date('03-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Noodles & Co.', 119, to_date('24-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('U.S. Government', 871, to_date('26-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pfizer', 36, to_date('15-10-2014', 'dd-mm-yyyy'));
commit;
prompt 1100 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 337, to_date('01-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ogio International', 625, to_date('15-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sara Lee Corp.', 961, to_date('05-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 176, to_date('01-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GulfMark Offshore', 156, to_date('18-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Pan & Engin', 901, to_date('11-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 534, to_date('26-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Softworld', 737, to_date('22-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 40, to_date('30-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 729, to_date('03-03-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Formatech', 254, to_date('15-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bioanalytical System', 796, to_date('26-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Axis Consulting', 385, to_date('29-04-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 27, to_date('29-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 654, to_date('29-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extra Mile Transport', 719, to_date('14-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 629, to_date('09-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytics Operations', 553, to_date('13-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 429, to_date('16-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GHR Systems', 568, to_date('15-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 157, to_date('07-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Questar Capital', 883717, to_date('24-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Business', 87, to_date('25-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alden Systems', 231, to_date('29-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('C & A Industries', 584, to_date('01-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 20, to_date('13-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 119, to_date('05-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 129, to_date('11-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PepsiCo', 699, to_date('14-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 752, to_date('19-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Random Walk Computin', 317, to_date('14-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 462, to_date('09-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 846, to_date('12-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Service Link', 53, to_date('30-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 560024, to_date('09-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Y2Marketing', 432, to_date('10-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 878, to_date('29-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytical Managemen', 112, to_date('09-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Global Wireless Data', 157, to_date('10-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 742, to_date('10-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pfizer', 996, to_date('16-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 306, to_date('04-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProSys Information S', 661639, to_date('10-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 766, to_date('21-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Deutsche Telekom', 944, to_date('30-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gagwear', 467, to_date('09-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 579, to_date('02-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dell Computer Corp.', 5, to_date('19-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spinnaker Exploratio', 360, to_date('16-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pharmacia Corp.', 564, to_date('09-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 114, to_date('11-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 687, to_date('08-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 495, to_date('02-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 560, to_date('11-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Black Mountain Manag', 575, to_date('22-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 663, to_date('24-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 235, to_date('16-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bayer', 367, to_date('05-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 231, to_date('24-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lloyd Group', 816, to_date('03-10-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 26, to_date('24-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Security Check', 827, to_date('17-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 882, to_date('16-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MHF Logistical Solut', 932, to_date('01-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 168, to_date('13-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CapTech Ventures', 463, to_date('28-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Portage Environmenta', 666, to_date('23-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 626, to_date('18-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('New Horizons Compute', 878, to_date('14-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 543, to_date('03-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 212, to_date('10-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 578, to_date('02-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Coridian Technologie', 270087, to_date('15-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 194, to_date('02-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Escalade', 978, to_date('17-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 304524, to_date('03-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 619, to_date('22-09-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Fetch Logistics', 308, to_date('02-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 562, to_date('24-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 786, to_date('05-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Reckitt Benckiser', 903, to_date('10-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 114, to_date('05-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 579, to_date('28-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 108, to_date('23-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 829, to_date('28-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mission Controls Aut', 210, to_date('07-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spectrum Communicati', 3, to_date('07-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 980864, to_date('03-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 504, to_date('25-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('State Farm Mutual Au', 596576, to_date('11-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 866, to_date('18-02-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 464256, to_date('31-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accuship', 481, to_date('07-01-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 984, to_date('13-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 834162, to_date('19-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ogio International', 829, to_date('30-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 793, to_date('21-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lindin Consulting', 89, to_date('07-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('httprint', 677, to_date('31-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 453, to_date('07-01-2024', 'dd-mm-yyyy'));
commit;
prompt 1200 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unicru', 884, to_date('04-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sterling Financial G', 97, to_date('28-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 977, to_date('03-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 579, to_date('13-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AXSA Document Soluti', 875, to_date('13-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 828, to_date('06-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 824, to_date('06-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accuship', 815, to_date('14-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Limited Brands', 841, to_date('04-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bashen Consulting', 762, to_date('01-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 711, to_date('22-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FirstFed America Ban', 634, to_date('15-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('National Home Health', 364, to_date('12-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Business Plus Corpor', 668, to_date('06-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 805, to_date('22-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 711, to_date('23-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SHOT', 943, to_date('31-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 542, to_date('09-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Virtual Meeting Stra', 554812, to_date('17-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merit Medical System', 829, to_date('12-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Reckitt Benckiser', 427, to_date('25-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 176, to_date('04-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 560024, to_date('07-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FirstFed America Ban', 639, to_date('22-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Imaging Business Mac', 274, to_date('20-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Myricom', 918, to_date('28-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GHR Systems', 986, to_date('20-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sterling Financial G', 467, to_date('19-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 932, to_date('14-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capital Crossing Ban', 874, to_date('23-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 706, to_date('02-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tigris Consulting', 684, to_date('10-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pfizer', 860, to_date('21-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 622, to_date('14-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kimberly-Clark Corp.', 353, to_date('12-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tigris Consulting', 898507, to_date('13-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 148, to_date('19-01-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 498, to_date('28-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Medical', 8, to_date('23-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Noodles & Co.', 289, to_date('15-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Biosite', 797, to_date('05-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Arkidata', 541, to_date('08-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 220, to_date('30-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 694, to_date('20-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sony Corp.', 169, to_date('24-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Timberlane Woodcraft', 761951, to_date('25-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cura Group', 666, to_date('02-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 371280, to_date('02-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytical Managemen', 650, to_date('24-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 171, to_date('30-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unica', 283, to_date('08-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 966, to_date('01-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 181, to_date('17-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North American Theat', 291986, to_date('02-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 358, to_date('09-03-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 11, to_date('06-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Banfe Products', 595, to_date('12-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Black Mountain Manag', 802, to_date('30-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trainersoft', 938, to_date('12-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sears, Roebuck & Co.', 9, to_date('24-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Albertson’s', 185, to_date('13-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gray Hawk Systems', 494, to_date('26-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Reckitt Benckiser', 386, to_date('05-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Legacy Financial Gro', 477710, to_date('28-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 524, to_date('07-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quicksilver Resource', 131, to_date('21-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Saks Inc.', 690, to_date('05-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AOL Time Warner', 500, to_date('08-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Arkidata', 559, to_date('22-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('httprint', 589113, to_date('05-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anworth Mortgage', 57, to_date('20-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 53, to_date('21-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 375, to_date('19-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Custom Solutions Int', 349, to_date('11-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AXSA Document Soluti', 917, to_date('03-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 506, to_date('13-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 71, to_date('31-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integra Telecom', 299, to_date('30-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kramont Realty Trust', 367, to_date('03-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Internet Te', 769, to_date('26-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 413, to_date('30-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 343, to_date('05-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 673, to_date('29-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Flake-Wilkerson Mark', 780, to_date('21-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 535013, to_date('19-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 833, to_date('18-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 370, to_date('31-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sears, Roebuck & Co.', 677, to_date('31-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Prometheus Laborator', 187, to_date('10-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Procter & Gamble Co.', 258, to_date('02-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 275, to_date('10-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Safeway', 209, to_date('07-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merit Medical System', 498, to_date('03-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AXSA Document Soluti', 781, to_date('22-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('First South Bancorp', 15, to_date('09-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 892, to_date('03-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 883, to_date('13-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Columbia Bancorp', 921520, to_date('31-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Timberlane Woodcraft', 969, to_date('15-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 35, to_date('29-04-2018', 'dd-mm-yyyy'));
commit;
prompt 1300 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 286, to_date('08-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CIW Services', 969, to_date('08-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pacific Data Designs', 210, to_date('24-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 308, to_date('26-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McKee Wallwork Hende', 414, to_date('08-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alden Systems', 344, to_date('01-02-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 770, to_date('08-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 605, to_date('25-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pfizer', 501, to_date('15-01-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytics Operations', 392, to_date('28-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 933, to_date('13-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 879, to_date('01-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Studio B Productions', 813437, to_date('27-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 830, to_date('23-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 298, to_date('26-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quality Assured Serv', 310, to_date('09-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Franklin American Mo', 635, to_date('20-04-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Legacy Financial Gro', 139, to_date('31-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Security Check', 389, to_date('05-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 819, to_date('07-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Carteret Mortgage', 117, to_date('25-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Internet Te', 660, to_date('30-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Formatech', 419881, to_date('06-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AQuickDelivery', 692, to_date('25-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Labs', 836, to_date('23-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('U.S. Government', 929, to_date('04-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FirstFed America Ban', 132, to_date('29-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProfitLine', 276583, to_date('17-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diamond Technologies', 425, to_date('20-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Procter & Gamble Co.', 265, to_date('06-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Think Tank Systems', 251744, to_date('26-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoPros', 489, to_date('27-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 607, to_date('03-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CapTech Ventures', 926, to_date('08-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Softworld', 734, to_date('21-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Colgate-Palmolive Co', 250866, to_date('15-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bio-Reference Labs', 745, to_date('21-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Serentec', 610, to_date('30-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 246, to_date('14-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McKee Wallwork Hende', 957, to_date('16-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quality Assured Serv', 980, to_date('18-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keith Companies', 411, to_date('12-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 162, to_date('31-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 906, to_date('09-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 545, to_date('27-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sandy Spring Bancorp', 726, to_date('07-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 749, to_date('26-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 430, to_date('21-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mosaic', 160, to_date('06-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FirstFed America Ban', 46, to_date('01-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pragmatech Software', 417, to_date('31-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillette Co.', 392, to_date('03-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Labs', 426285, to_date('01-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BASE Consulting Grou', 297, to_date('09-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PepsiCo', 342, to_date('15-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 42, to_date('15-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NoBrainerBlinds.com', 192, to_date('31-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kia Motors Corp.', 721, to_date('15-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integra Telecom', 354353, to_date('12-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nissan Motor Co.', 976, to_date('12-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keith Companies', 177038, to_date('16-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 785, to_date('27-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FNB', 788, to_date('11-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Inspiration Software', 553, to_date('19-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 846, to_date('03-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Swiss Watch Internat', 315, to_date('18-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tripwire', 632, to_date('27-06-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('V-Span', 990, to_date('25-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oakleaf Waste Manage', 397, to_date('30-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 129, to_date('01-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wyeth', 751963, to_date('23-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Third Millennium Tel', 205, to_date('25-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Studio B Productions', 839, to_date('06-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Jolly Enterprises', 106, to_date('10-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Joe Lombardo Plumbin', 606, to_date('02-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 144, to_date('07-02-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 644, to_date('04-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 826, to_date('11-06-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aquascape Designs', 842236, to_date('16-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dillard’s', 855, to_date('19-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gap Inc.', 140606, to_date('20-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Venoco', 341, to_date('05-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advantage Credit Int', 241, to_date('28-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SurModics', 220, to_date('28-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 364, to_date('04-02-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartland Payment Sy', 662, to_date('05-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 241610, to_date('05-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Procter & Gamble Co.', 810, to_date('01-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MHF Logistical Solut', 288, to_date('05-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 464256, to_date('12-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Business', 393, to_date('01-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SHOT', 756, to_date('05-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 252, to_date('27-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillette Co.', 772, to_date('06-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ivory Systems', 266, to_date('03-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Larkin Enterprises', 350, to_date('19-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Anheuser-Busch Cos.', 700, to_date('22-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 519, to_date('07-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 822, to_date('26-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Abatix', 184, to_date('10-03-2022', 'dd-mm-yyyy'));
commit;
prompt 1400 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 735, to_date('06-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Max & Erma''s Restaur', 992, to_date('10-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 165, to_date('06-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Canterbury Park', 259919, to_date('27-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 754, to_date('10-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Solipsys', 603, to_date('21-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 397, to_date('28-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Orange Glo Internati', 24, to_date('07-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tastefully Simple', 638, to_date('07-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 979, to_date('09-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tropical Oasis', 791, to_date('19-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('St. Mary Land & Expl', 315, to_date('15-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 639, to_date('06-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SYS-CON Media', 530, to_date('23-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 354353, to_date('18-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoPros', 447, to_date('26-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cody-Kramer Imports', 861, to_date('10-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sea Fox Boat', 130, to_date('06-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 38, to_date('10-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('C & A Industries', 901, to_date('07-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 345, to_date('29-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North Highland', 984, to_date('08-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 658, to_date('26-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Venoco', 866936, to_date('11-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 639, to_date('22-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Astute', 362, to_date('12-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Fetch Logistics', 32, to_date('05-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 586, to_date('10-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TRX', 236, to_date('21-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 688, to_date('23-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Megha Systems', 785, to_date('22-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 450, to_date('11-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gagwear', 137, to_date('20-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 252485, to_date('17-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 759, to_date('27-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 469, to_date('08-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 809, to_date('02-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 693, to_date('30-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Abatix', 390127, to_date('18-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Max & Erma''s Restaur', 127612, to_date('23-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TMA Resources', 185, to_date('11-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Fetch Logistics', 982, to_date('01-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wyeth', 94, to_date('29-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kingland Companies', 108, to_date('21-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 294, to_date('15-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('One Source Printing', 163, to_date('27-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 408, to_date('08-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adea Solutions', 842570, to_date('09-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Team', 29, to_date('15-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Myricom', 187, to_date('26-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 105, to_date('05-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North American Theat', 843, to_date('02-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Southern Financial B', 649, to_date('11-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Computers & So', 21, to_date('27-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Best Buy Co.', 762, to_date('22-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Market-Based Solutio', 655, to_date('13-01-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('httprint', 276583, to_date('28-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eastman Kodak Co.', 345, to_date('25-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trainersoft', 347, to_date('04-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Axis Consulting', 513, to_date('12-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 261791, to_date('09-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Connected', 4, to_date('08-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('InfoVision Consultan', 879554, to_date('25-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Global Wireless Data', 702, to_date('01-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quality Assured Serv', 946, to_date('12-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Calence', 353, to_date('04-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 207, to_date('14-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Serentec', 925, to_date('27-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CapTech Ventures', 903, to_date('10-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 442, to_date('27-08-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lydian Trust', 216, to_date('27-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CapTech Ventures', 254, to_date('12-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProSys Information S', 843, to_date('07-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NLX', 459983, to_date('10-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cura Group', 894, to_date('13-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Doral Dental USA', 440, to_date('09-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diageo', 617, to_date('28-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Joe Lombardo Plumbin', 882, to_date('23-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 165, to_date('13-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 296, to_date('01-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Printcafe Software', 832, to_date('22-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 773, to_date('23-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Yum Brands', 339354, to_date('25-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Security Check', 61, to_date('01-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MoneyLine Lending Se', 455, to_date('27-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SBC Communications', 262, to_date('03-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 738, to_date('08-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Albertson’s', 933, to_date('18-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trainersoft', 500, to_date('08-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Corp.', 188, to_date('14-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Biosite', 999, to_date('01-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sequoia System Inter', 126, to_date('09-05-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Consultants'' Choice', 630852, to_date('22-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Legacy Financial Gro', 745, to_date('02-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Calence', 395, to_date('17-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Veri-Tek Internation', 290, to_date('27-05-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Lloyd Group', 670, to_date('16-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visionary Systems', 38, to_date('21-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 794, to_date('05-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Manhattan Associates', 511270, to_date('12-03-2019', 'dd-mm-yyyy'));
commit;
prompt 1500 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 262, to_date('24-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Access Systems', 883717, to_date('25-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Denali Ventures', 472, to_date('20-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unicru', 342, to_date('02-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Keith Companies', 58, to_date('26-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 560024, to_date('20-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 238, to_date('25-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 367, to_date('06-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 285, to_date('18-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signature Consultant', 574, to_date('27-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Questar Capital', 266, to_date('26-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 748, to_date('29-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BASE Consulting Grou', 513, to_date('18-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Limited Brands', 797, to_date('09-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 577, to_date('23-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TMA Resources', 943, to_date('05-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Liners Direct', 137, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 589113, to_date('15-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ivory Systems', 972, to_date('08-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Solipsys', 863, to_date('05-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Media Te', 727, to_date('29-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Campbell Soup Co.', 488, to_date('29-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SSCI', 665225, to_date('17-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 981, to_date('04-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Axis Consulting', 109, to_date('18-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capital Crossing Ban', 414, to_date('21-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 413, to_date('11-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Axis Consulting', 21, to_date('18-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 19, to_date('24-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 191, to_date('02-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 961, to_date('22-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 684, to_date('30-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 875, to_date('24-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 313, to_date('27-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Envision Telephony', 486, to_date('21-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 134, to_date('18-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('EagleOne', 38, to_date('20-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Astute', 350, to_date('01-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NLX', 599, to_date('19-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Prosoft Technology G', 333, to_date('15-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 950, to_date('21-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oneida Financial', 622, to_date('26-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pulaski Financial', 394, to_date('27-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Simply Certificates', 560024, to_date('18-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tripwire', 674, to_date('03-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Novartis', 174, to_date('13-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Business Plus Corpor', 343683, to_date('12-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('NLX', 504, to_date('09-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mosaic', 10, to_date('29-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 936, to_date('12-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kingland Companies', 545, to_date('10-11-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 599, to_date('22-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 362, to_date('10-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Networking Technolog', 379, to_date('01-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SSCI', 541, to_date('06-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 990, to_date('07-02-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('White Wave', 371280, to_date('31-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Contract Counsel', 183, to_date('04-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 343, to_date('20-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 415, to_date('18-01-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('EagleOne', 497, to_date('03-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 538, to_date('16-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tilson Landscape', 228, to_date('17-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 389, to_date('29-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 940, to_date('26-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 603, to_date('05-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 981, to_date('01-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Outta the Box Dispen', 81, to_date('06-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 393, to_date('14-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Internet Te', 188, to_date('10-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 448, to_date('30-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 913, to_date('25-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marlabs', 162346, to_date('06-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 920, to_date('13-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nissan Motor Co.', 314, to_date('13-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 342, to_date('19-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Third Millennium Tel', 425, to_date('21-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('New Media Communicat', 903, to_date('27-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 959, to_date('22-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 261, to_date('24-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('IT', 232, to_date('22-09-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bayer', 954, to_date('07-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sammy''s Woodfired Pi', 110360, to_date('22-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Market-Based Solutio', 137, to_date('05-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 974, to_date('06-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Royal Gold', 456, to_date('21-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Procter & Gamble Co.', 621, to_date('18-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 778, to_date('18-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 943, to_date('08-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 875, to_date('21-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Atlantic Credit & Fi', 350, to_date('16-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signature Consultant', 117, to_date('12-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('3t Systems', 83, to_date('14-04-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dynacq International', 176, to_date('27-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 475, to_date('08-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 65, to_date('14-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 952, to_date('27-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('L.E.M. Products', 142, to_date('11-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pharmacia Corp.', 976, to_date('14-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 258, to_date('16-06-2020', 'dd-mm-yyyy'));
commit;
prompt 1600 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('State Farm Mutual Au', 52, to_date('12-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Reckitt Benckiser', 864, to_date('08-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ogio International', 993, to_date('06-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gorman Richardson Ar', 539, to_date('09-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 554804, to_date('17-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('esoftsolutions', 494, to_date('09-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alternative Business', 534, to_date('22-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Security Check', 819, to_date('21-12-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Pan & Engin', 399, to_date('05-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 760, to_date('05-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Adolph Coors Co.', 634, to_date('25-06-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spinnaker Exploratio', 656, to_date('08-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gillani', 463, to_date('14-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Print-Tech', 56, to_date('08-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SBC Communications', 768, to_date('08-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Terra Firma', 9, to_date('19-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('York Enterprise Solu', 651, to_date('05-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 844, to_date('19-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Deutsche Telekom', 328, to_date('08-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SYS-CON Media', 713, to_date('27-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Web Group', 746, to_date('17-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Imports By Four Hand', 176, to_date('21-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Alliance of Professi', 666, to_date('14-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Peerless Manufacturi', 696, to_date('30-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MoneyLine Lending Se', 709, to_date('07-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Softworld', 903, to_date('18-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Campbell Soup Co.', 918, to_date('15-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 485, to_date('23-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Larkin Enterprises', 408, to_date('10-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 255, to_date('11-05-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SurModics', 922, to_date('15-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 651, to_date('20-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Pan & Engin', 646, to_date('15-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 559, to_date('29-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Wal-Mart Stores', 323461, to_date('18-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Noodles & Co.', 423206, to_date('16-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Prometheus Laborator', 745, to_date('15-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('State Farm Mutual Au', 304524, to_date('12-10-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Total Entertainment', 340557, to_date('19-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Clorox Co.', 323461, to_date('31-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tastefully Simple', 453, to_date('26-04-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 60, to_date('16-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Canterbury Park', 627, to_date('07-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 729, to_date('23-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 160, to_date('30-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 903, to_date('08-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 43, to_date('22-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('AT&T Wireless', 277, to_date('05-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dynacq International', 918, to_date('26-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 65, to_date('26-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cody-Kramer Imports', 56, to_date('14-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ZonePerfect Nutritio', 999, to_date('17-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 645, to_date('18-06-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SSCI', 784, to_date('06-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cody-Kramer Imports', 228, to_date('29-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 924376, to_date('15-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Key Information Syst', 639, to_date('12-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Atlantic Credit & Fi', 889, to_date('13-02-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unicru', 356, to_date('19-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mission Controls Aut', 261, to_date('05-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WorldCom', 9, to_date('10-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 993, to_date('28-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kimberly-Clark Corp.', 917, to_date('19-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 8, to_date('04-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tilia', 552, to_date('10-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('WRG Services', 915, to_date('30-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('FSF Financial', 618, to_date('16-01-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Estee Lauder Cos.', 196, to_date('05-07-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signature Consultant', 448, to_date('10-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Asta Funding', 802, to_date('29-01-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Albertson’s', 608, to_date('09-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('In Zone', 439, to_date('13-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spectrum Communicati', 842570, to_date('30-07-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 372, to_date('04-12-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TechBooks', 611661, to_date('18-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 561, to_date('16-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Oakleaf Waste Manage', 483, to_date('24-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('EagleOne', 266, to_date('25-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PepsiCo', 585, to_date('09-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Miracle Software Sys', 229, to_date('19-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marlabs', 200, to_date('25-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tastefully Simple', 855, to_date('28-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tracer Technologies', 950, to_date('13-11-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Neuromodula', 515, to_date('13-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartlab', 235, to_date('29-03-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extreme Pizza', 822, to_date('28-08-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ivory Systems', 653, to_date('17-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Noodles & Co.', 357, to_date('06-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North Highland', 185, to_date('05-11-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TMA Resources', 349, to_date('03-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Open Software Soluti', 256, to_date('20-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Manhattan Associates', 145, to_date('16-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('J.C. Malone Associat', 472, to_date('26-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('OnStaff', 623, to_date('02-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Team', 11, to_date('21-08-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Neuromodula', 381, to_date('18-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('First South Bancorp', 621, to_date('23-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('EagleOne', 595, to_date('18-07-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 299, to_date('05-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 387, to_date('16-10-2012', 'dd-mm-yyyy'));
commit;
prompt 1700 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TRX', 879, to_date('23-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MoneyLine Lending Se', 878418, to_date('18-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cynergy Data', 153, to_date('16-02-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Vivendi Universal', 69, to_date('09-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GlaxoSmithKline', 379, to_date('05-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Veri-Tek Internation', 25, to_date('07-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Momentum Marketing S', 232, to_date('18-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MasterCard Internati', 919, to_date('15-12-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 236, to_date('17-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Appriss', 854, to_date('21-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Synovis Life Technol', 546, to_date('31-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hencie', 59, to_date('09-08-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bluff City Steel', 154, to_date('02-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Envision Telephony', 113, to_date('21-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('All Star Consulting', 139, to_date('31-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 339410, to_date('14-03-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartland Payment Sy', 334, to_date('03-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Web Group', 421, to_date('02-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Ositis Software', 485, to_date('12-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('State Farm Mutual Au', 302, to_date('09-06-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Outta the Box Dispen', 882, to_date('02-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pyramid Digital Solu', 377, to_date('24-11-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Yum Brands', 490, to_date('20-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Call Henry', 859, to_date('01-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Hershey Foods Corp.', 339, to_date('26-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Best Buy Co.', 191, to_date('29-04-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Digital Visual Displ', 739, to_date('15-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GHR Systems', 451, to_date('05-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Office Depot', 765, to_date('03-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marlabs', 996625, to_date('10-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sandy Spring Bancorp', 426, to_date('19-10-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Larkin Enterprises', 234639, to_date('11-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Spenser Communicatio', 671, to_date('27-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capitol Bancorp', 905, to_date('10-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 330, to_date('27-10-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ComGlobal Systems', 129, to_date('22-04-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 464256, to_date('06-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DrinkMore Water', 288, to_date('16-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('J.C. Malone Associat', 924376, to_date('07-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Timberlane Woodcraft', 696, to_date('31-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Mercantile Bank', 245, to_date('04-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytics Operations', 816, to_date('20-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Security Check', 506, to_date('02-09-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Microsoft Corp.', 402666, to_date('31-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Coridian Technologie', 573, to_date('31-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Woronoco Bancorp', 189, to_date('30-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('E Commerce Group Pro', 917, to_date('17-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Merck & Co.', 982, to_date('13-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TRX', 520, to_date('04-12-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Medical', 988, to_date('09-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('SALT Group', 565, to_date('02-04-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MedAmicus', 106, to_date('10-03-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 781, to_date('22-05-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 910, to_date('14-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Virtual Meeting Stra', 351, to_date('14-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Integra Telecom', 783, to_date('01-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Johnson & Johnson', 604, to_date('04-01-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Softworld', 545, to_date('08-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Franklin American Mo', 992341, to_date('02-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bluff City Steel', 444, to_date('17-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Atlantic Credit & Fi', 755, to_date('08-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Taycor Financial', 130, to_date('08-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pyramid Digital Solu', 851, to_date('11-08-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capstone', 541048, to_date('24-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Carteret Mortgage', 983, to_date('10-12-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('TRX', 371, to_date('29-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DrinkMore Water', 547, to_date('01-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Team', 754478, to_date('08-09-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bowman Consulting Gr', 956, to_date('18-08-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advanced Internet Te', 669, to_date('21-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Business Plus Corpor', 274, to_date('29-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 157, to_date('19-05-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('MindIQ', 251, to_date('20-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unit', 560024, to_date('23-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tropical Oasis', 576, to_date('09-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advertising Ventures', 866936, to_date('11-04-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('First South Bancorp', 797, to_date('11-10-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GTS Refreshment Serv', 873, to_date('18-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Telechem Internation', 999, to_date('14-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GRT', 750, to_date('03-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Amerisource Funding', 891, to_date('21-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Phoenix Rehabilitati', 632, to_date('08-02-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Signal Perfection', 752, to_date('29-06-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Topics Entertainment', 872, to_date('04-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Elite Medical', 233, to_date('21-01-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PepsiCo', 476, to_date('09-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('GulfMark Offshore', 701, to_date('14-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nissan Motor Co.', 809497, to_date('26-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Summit Energy', 470, to_date('09-05-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Heartlab', 736, to_date('01-05-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BASE Consulting Grou', 904, to_date('30-08-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 485, to_date('12-12-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dataprise', 875, to_date('11-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 160, to_date('30-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Data Company', 313648, to_date('12-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 630, to_date('25-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Appriss', 754478, to_date('10-02-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Formatech', 472, to_date('23-07-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Sara Lee Corp.', 988, to_date('10-11-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Analytics Operations', 346, to_date('30-03-2017', 'dd-mm-yyyy'));
commit;
prompt 1800 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 580, to_date('04-02-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 680504, to_date('13-10-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Morgan Research', 636, to_date('28-02-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ATX Forms', 514, to_date('02-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 140606, to_date('16-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Larkin Enterprises', 865, to_date('15-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProfitLine', 569, to_date('05-03-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('National Home Health', 844, to_date('21-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eastman Kodak Co.', 952, to_date('31-01-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 16, to_date('23-05-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Advertising Ventures', 476, to_date('05-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('American Healthways', 388, to_date('24-10-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Shuffle Master', 477710, to_date('02-06-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dancor', 522, to_date('06-01-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('G.A. Beck Artistic S', 420, to_date('24-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Aventis', 763004, to_date('13-06-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Unica', 720, to_date('14-10-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Viacom', 924376, to_date('13-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 521, to_date('12-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 543, to_date('25-01-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer Engineering', 578, to_date('06-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CREDO Petroleum', 843, to_date('11-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Timberlane Woodcraft', 102, to_date('01-11-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Terra Firma', 974, to_date('16-02-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Inspiration Software', 970, to_date('12-05-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DB Professionals', 566, to_date('07-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Bayer', 262, to_date('30-09-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kellogg Co.', 131, to_date('21-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Quicksilver Resource', 618, to_date('20-07-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Trinity HomeCare', 597, to_date('19-04-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tracer Technologies', 372, to_date('27-09-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('McDonald’s Corp.', 922, to_date('09-11-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cura Group', 459, to_date('19-07-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Knightsbridge Soluti', 305, to_date('28-08-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('North Highland', 234639, to_date('07-11-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Capital Crossing Ban', 191, to_date('18-08-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Diageo', 53, to_date('11-08-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Consultants'' Choice', 161, to_date('28-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Microsoft Corp.', 754478, to_date('19-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Visa International', 44, to_date('08-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 223, to_date('08-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('PepsiCo', 755, to_date('27-06-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 34, to_date('14-10-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 594, to_date('07-01-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CLT Meetings Interna', 270087, to_date('29-10-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Studio B Productions', 342, to_date('03-12-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Questar Capital', 341373, to_date('14-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('National Home Health', 215, to_date('26-02-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Momentum Marketing S', 874, to_date('27-03-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Random Walk Computin', 417, to_date('28-12-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Gorman Richardson Ar', 574, to_date('14-11-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Accuship', 86, to_date('08-03-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('C & A Industries', 39, to_date('20-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 316, to_date('08-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Interface Software', 803, to_date('18-03-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProSys Information S', 459, to_date('11-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Portfolio Recovery A', 217, to_date('12-08-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Total Entertainment', 124, to_date('20-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ProfitLine', 460, to_date('08-09-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Morgan Research', 755265, to_date('15-03-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Consulting Grou', 410790, to_date('08-03-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Federated Department', 954, to_date('10-04-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Dynacq International', 639, to_date('10-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('United Asset Coverag', 834162, to_date('15-02-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Total Entertainment', 801, to_date('02-10-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Providence Service', 753, to_date('22-05-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Finance', 970, to_date('13-06-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('DaimlerChrysler', 536, to_date('20-03-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Electrical Solutions', 473, to_date('07-09-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Appriss', 480, to_date('21-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('HR', 42, to_date('21-02-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Linksys', 337, to_date('19-11-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Inspiration Software', 201760, to_date('25-04-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Nike', 276583, to_date('15-10-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Kia Motors Corp.', 722, to_date('15-09-2018', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Swiss Watch Internat', 127, to_date('05-12-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Team', 715, to_date('13-09-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('ACS International Re', 263, to_date('08-07-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Great Lakes Technolo', 309, to_date('15-03-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Clorox Co.', 901, to_date('21-07-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cura Group', 42, to_date('23-05-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Tropical Oasis', 779, to_date('28-11-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('CookTek', 962, to_date('12-06-2017', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Banfe Products', 315, to_date('10-09-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Network Management R', 435, to_date('23-11-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Conquest Systems', 107, to_date('15-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Glacier Bancorp', 902, to_date('20-07-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Computer World Servi', 298, to_date('11-04-2014', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Volkswagen', 824, to_date('16-12-2020', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 282, to_date('13-02-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Manhattan Associates', 144, to_date('23-04-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Marriott Internation', 838, to_date('12-01-2022', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Staff Force', 480, to_date('17-07-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Walt Disney Co.', 921, to_date('27-04-2016', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('BioReliance', 979, to_date('05-12-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Process Plus', 91, to_date('10-09-2023', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Extreme Pizza', 371, to_date('12-01-2024', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Softworld', 146, to_date('05-08-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Automated License Sy', 488, to_date('26-12-2012', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Pharmacia Corp.', 754478, to_date('01-06-2014', 'dd-mm-yyyy'));
commit;
prompt 1900 records committed...
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Intel Corp.', 245, to_date('25-01-2013', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Best Buy Co.', 232, to_date('21-05-2021', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Cima Labs', 151, to_date('16-07-2019', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Formatech', 511270, to_date('19-06-2015', 'dd-mm-yyyy'));
insert into RESERVATIONS (deptname, supnum, resdate)
values ('Eze Castle Software', 883717, to_date('02-05-2014', 'dd-mm-yyyy'));
commit;
prompt 1905 records loaded
prompt Enabling foreign key constraints for DEPARTMENT...
alter table DEPARTMENT enable constraint SYS_C008458;
prompt Enabling foreign key constraints for DEPARTMENT_MANAGERS...
alter table DEPARTMENT_MANAGERS enable constraint SYS_C008478;
prompt Enabling foreign key constraints for EMPLOYEE...
alter table EMPLOYEE enable constraint SYS_C008471;
prompt Enabling foreign key constraints for INVENTORY...
alter table INVENTORY enable constraint SYS_C008486;
prompt Enabling foreign key constraints for RESERVATIONS...
alter table RESERVATIONS enable constraint SYS_C008463;
alter table RESERVATIONS enable constraint SYS_C008464;
prompt Enabling triggers for GENERAL_MANAGER...
alter table GENERAL_MANAGER enable all triggers;
prompt Enabling triggers for DEPARTMENT...
alter table DEPARTMENT enable all triggers;
prompt Enabling triggers for DEPARTMENT_MANAGERS...
alter table DEPARTMENT_MANAGERS enable all triggers;
prompt Enabling triggers for EMPLOYEE...
alter table EMPLOYEE enable all triggers;
prompt Enabling triggers for INVENTORY...
alter table INVENTORY enable all triggers;
prompt Enabling triggers for SUPPLIERS...
alter table SUPPLIERS enable all triggers;
prompt Enabling triggers for RESERVATIONS...
alter table RESERVATIONS enable all triggers;

set feedback on
set define on
prompt Done
