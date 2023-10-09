CREATE TABLE "API_LOG" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"USER_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"START_TS" TIMESTAMP (6), 
	"REQ" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"STAT" NUMBER, 
	"ERR" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"END_TS" TIMESTAMP (6), 
	"RES" VARCHAR2(32000) COLLATE "USING_NLS_COMP", 
	"API" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"F1" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"F2" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"F3" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"METH" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"QUERY_PARAMS" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_COUNSELOR_OBSERVATIONS_NA" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"TYPE" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"DOCUMENT" BLOB, 
	"DOCUMENT_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DOCUMENT_MIME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"REMARKS" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"CREATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_ON" DATE, 
	"REFERRED" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_FILES" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"FILE_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CONTENT_TYPE" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CONTENT" BLOB, 
	"REF_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_ON" DATE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_REMARKS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"REF_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"TITLE" VARCHAR2(2000) COLLATE "USING_NLS_COMP", 
	"REMARKS" VARCHAR2(32000) COLLATE "USING_NLS_COMP", 
	"REMARKS_TYPE" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENTS_NA" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" NUMBER, 
	"STUDENT_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"PARENT_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ADDRESS" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CLASS" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"DIVISION" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"STUDENT_SINCE" DATE, 
	"CLASS_TEACHER" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"SPECIAL_INSTRUCTOR" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_PHOTO" BLOB, 
	"CREATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"LAST_UPDATED_ON" DATE, 
	"DOB" DATE, 
	"TEACHERS_CHECKLIST" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"TEACHERS_REMARKS" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"COUNSULAR_NOTES_TO_SPL_INST" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"SPL_EDU_CHECKLIST" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"SPL_EDU_REMARKS" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"CHECKLISTS" VARCHAR2(32000) COLLATE "USING_NLS_COMP", 
	"PHOTO_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_TEACHER_OBSERVATIONS_NA" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DOCUMENT" BLOB, 
	"REMARKS" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"CREATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_ON" DATE, 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DOCUMENT_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DOCUMENT_MIME" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "DBG_LOGS" 
   (	"TS" TIMESTAMP (6), 
	"TXT" VARCHAR2(2000) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_ADDL_INFO" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"REF_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_AUDIT_LOG" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CREATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"LAST_UPDATED_ON" DATE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_LOOKUP" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"TYPE" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"VAL" VARCHAR2(4000) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_LOOKUP_NA" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"TYPE" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"VAL" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_ROLES" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"ROLE_ID" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"ROLE_DESCRIPTION" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENTS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" NUMBER, 
	"STUDENT_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"PARENT_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ADDRESS" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CLASS" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"DIVISION" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"STUDENT_SINCE" DATE, 
	"CLASS_TEACHER" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"SPECIAL_INSTRUCTOR" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DOB" DATE, 
	"PHOTO_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CONSULAR" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DOCTOR" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"AGENCY" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"SPECIAL_EDUCATOR" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"THERAPIST" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_CALENDAR" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"LOCATION" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CONFERENCE_LINK" VARCHAR2(2000) COLLATE "USING_NLS_COMP", 
	"REF_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"REPEAT" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"REPEAT_FREQUENCY" NUMBER, 
	"REPEAT_ON" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"START_HR" NUMBER, 
	"START_MIN" NUMBER, 
	"DURATION_HR" NUMBER, 
	"DURATION_MIN" NUMBER, 
	"USER_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_CALENDAR_EVENTS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CALENDAR_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"DT" DATE, 
	"CANCEL" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"START_HR" NUMBER, 
	"START_MIN" NUMBER, 
	"DURATION_HR" NUMBER, 
	"DURATION_MIN" NUMBER, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_CALENDAR_PARTICIPANTS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CALENDAR_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"PARTICIPANT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"REQUIRED" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"ORD" NUMBER, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_CHECKLISTS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CHECKLIST_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_CHECKLIST_ITEMS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP" NOT NULL ENABLE, 
	"CHECKLIST_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP" NOT NULL ENABLE, 
	"CHECKED" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_IEP" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"IEP_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_IEP_OBJECTIVES" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"PLAN_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"OBJ_TYPE" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"OBJ_NUM" NUMBER, 
	"PCT_PROGRESS" NUMBER, 
	"STATUS" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"START_DATE" DATE, 
	"PLANNED_END_DATE" DATE, 
	"ACTUAL_END_DATE" DATE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_STUDENT_NOTES" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"STUDENT_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"SECTION" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"NOTES_TYPE" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_USERS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"USER_ID" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"USER_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"USER_ROLES" VARCHAR2(500) COLLATE "USING_NLS_COMP", 
	"LAST_LOGGED_IN" DATE, 
	"AUTHORIZED" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"API_AUTH_CRED" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TM_CHECKLISTS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"SECTION" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CHECKLIST_NAME" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"ORD" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TM_CHECKLIST_DETAILS" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CHECKLIST_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"CHECKLIST_TEXT" VARCHAR2(2000) COLLATE "USING_NLS_COMP", 
	"ORD" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TOKENS" 
   (	"TOKEN" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"EXP_TS" TIMESTAMP (6), 
	"USER_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("TOKEN")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE INDEX "IND_ADDL_INFO" ON "TB_ADDL_INFO" ("REF_ID") 
  ;

  CREATE INDEX "IND_TB_COUNSELOR_OBSERVATIONS" ON "TB_COUNSELOR_OBSERVATIONS_NA" ("STUDENT_ID", "TYPE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_COUNSELOR_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" ENABLE;

  CREATE INDEX "IND_FILES" ON "TB_FILES" ("REF_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_LOOKUP" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_lookup
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_LOOKUP" ENABLE;

  CREATE INDEX "IND_REMARKS" ON "TB_REMARKS" ("REF_ID") 
  ;

  CREATE UNIQUE INDEX "IND_TB_ROLES" ON "TB_ROLES" ("ROLE_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_ROLES" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_roles 
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_ROLES" ENABLE;

  CREATE UNIQUE INDEX "IND_TB_STUDENTS" ON "TB_STUDENTS" ("STUDENT_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENTS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_students
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENTS" ENABLE;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_ST" ON "TB_STUDENT_CALENDAR" ("STUDENT_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_USER" ON "TB_STUDENT_CALENDAR" ("USER_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_DATES_CALENDAR_ID" ON "TB_STUDENT_CALENDAR_EVENTS" ("CALENDAR_ID") 
  ;

  CREATE INDEX "IND_CAL_PARTICIPANTS_CAL_ID" ON "TB_STUDENT_CALENDAR_PARTICIPANTS" ("CALENDAR_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_CHECKLISTS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_STUDENT_CHECKLISTS"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_CHECKLISTS" ENABLE;

  CREATE UNIQUE INDEX "IND_STUDENT_CHECKLISTS" ON "TB_STUDENT_CHECKLIST_ITEMS" ("STUDENT_ID", "CHECKLIST_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENT_IEP" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_student_iep
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENT_IEP" ENABLE;

  CREATE INDEX "IND_TB_STUDENT_IEP_OBJECTIVES" ON "TB_STUDENT_IEP_OBJECTIVES" ("PLAN_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENT_NOTES" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_student_notes
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENT_NOTES" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_TEACHER_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_TEACHER_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_TEACHER_OBSERVATIONS" ENABLE;

  CREATE UNIQUE INDEX "IND_TB_USERS" ON "TB_USERS" ("USER_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_USERS" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_USERS
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_USERS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TM_CHECKLISTS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklists
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TM_CHECKLISTS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TM_CHECKLIST_DETAILS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklist_details
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TM_CHECKLIST_DETAILS" ENABLE;
create or replace function fn_audit_log(p_id in varchar2,p_depth in number := 0)
return json_object_t
is
r tb_audit_log%rowtype;
o json_object_t := new json_object_t;
begin
    begin
        select  *
        into    r
        from    tb_audit_log
        where   id = p_id;
    exception
        when no_data_found
        then
            if p_depth = 0
            then
                pr_audit_log(p_id);
                return fn_audit_log(p_id,p_depth+1);
            end if;
    end;
    o.put(tags.createdBy1,r.created_by);
    o.put(tags.createdOn1,r.created_on);
    o.put(tags.lastupdatedby1,r.last_updated_by);
    o.put(tags.lastupdatedon1,r.last_updated_on);
    return o;
end;
/
create or replace function            fn_create_a_student(
    p_id varchar2,
    p_obj in json_object_t
) return json_element_t
is
o json_object_t := new JSON_OBJECT_t;
r TB_STUDENTS%rowtype;
n number;
procedure p(p_field in varchar2, p_val in out varchar2)
is
begin
    p_val := nvl(p_obj.get_string(p_field),p_val);
end;
procedure p(p_field in varchar2, p_val in out date)
is
begin
    p_val := nvl(global.to_dt(p_obj.get_string(p_field)),p_val);
end;
begin
    if p_id = tags.c_new
    then
        r.id := sys_guid();
    else
        begin
            select *
            into   r
            from TB_STUDENTS
            where id = p_id;
        exception when others
        then
            global.raise_error('Invalid Student ID '||p_id);
        end;
        delete TB_STUDENTS where id = p_id;
    end if;
    p(tags.studentId,r.student_id);
    p(tags.studentname,r.student_name);
    p(tags.class,r.class);
    p(tags.division,r.division);
    p(tags.dob,r.dob);
    p(tags.classTeacher,r.class_teacher);
    p(tags.specialinstructor,r.special_instructor);
    p(tags.parentname,r.parent_name);
    p(tags.consular,r.consular);
    p(tags.doctor,r.doctor);
    p(tags.agency,r.agency);
    p(tags.specialeducator,r.special_educator);
    p(tags.therapist,r.therapist);
    p(tags.studentSince,r.student_Since);
    p(tags.photoid,r.photo_id);
    for j in (select 1 from TB_STUDENTS where student_id = r.student_id and rownum=1)
    loop
        global.RAISE_ERROR('Student Id '||r.student_id|| ' already exists');
    end loop;
    if r.photo_id is not null
    then
        begin
            select 1 into n from tb_files where id = r.photo_id or ref_id = r.photo_id and rownum=1;
        exception when others
        then
            global.RAISE_ERROR('Invalid Photo Id '||r.photo_id );
        end;
    end if;
    insert into tb_students values r;
    return fn_get_a_student(r.id,true);
end;
/
create or replace function            fn_create_student_calendar
(
p_student_id in varchar2,
p_cal_id in varchar2,
p_ref_id in varchar2,
p_req in JSON_ELEMENT_T
) return JSON_ELEMENT_T
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
e JSON_ELEMENT_T;
r tb_student_calendar%rowtype;
res json_object_t := new json_object_t;
l_chk number;
pa  JSON_ARRAY_t := new JSON_ARRAY_T;
po JSON_OBJECT_t := new JSON_OBJECT_t;
pe JSON_ELEMENT_T;
pr TB_STUDENT_CALENDAR_PARTICIPANTS%rowtype;
l_id varchar2(200);
qids json_object_t := new json_object_t;
rp varchar2(32000);
rpa  json_array_t;
rpn number;
parti boolean := false;
base_dt date;
ldt date;
procedure ins_dt (p_dt in date)
is
    dt TB_STUDENT_CALENDAR_EVENTS%rowtype;
begin
    if p_dt >= r.start_date and p_dt <= nvl(r.end_date,p_dt)
    then
        dt.id := sys_guid();
        dt.calendar_id := r.id;
        dt.dt := trunc(p_dt);
        dt.cancel := 'N';
        dt.start_hr := r.start_hr;
        dt.start_min := r.start_min;
        dt.duration_hr := r.duration_hr;
        dt.duration_min := r.duration_min;
        delete TB_STUDENT_CALENDAR_EVENTS where calendar_id = r.id and dt = dt.dt;
        insert into TB_STUDENT_CALENDAR_EVENTS values dt;
    end if;
end;
begin
   if (p_req.is_object) then
    o := TREAT (p_req as json_object_t);
    a.append(o);
  elsif (p_req.is_array) then
    a := TREAT (p_req as json_array_t);
  end if;

  if p_ref_id is not null then
  for i in (select student_id,id from tb_student_calendar where ref_id = p_ref_id)
  loop
      PR_DELETE_STUDENT_CALENDAR(i.student_id,i.id);
  end loop;
  end if;
  for i in 0 .. (a.get_size - 1) loop
    e := a.get(i);
    o := TREAT (e as json_object_t);
    r := null;
    if o.get_string(tags.repeat) not in ('N','D','W','M','Y')
    then
        global.raise_error('Invalid repeat '||o.get_string(tags.repeat));
    end if;

    r.repeat := o.get_string(tags.repeat);
    r.repeat_frequency := nvl(o.get_string(tags.repeatFrequency),1);
    r.start_date := global.to_dt(o.get_string(tags.startDate));
    r.end_date := global.to_dt(o.get_string(tags.endDate));
    r.ref_id := nvl(p_ref_id,o.get_string(tags.refId));
    if r.start_date is null
    then
        global.raise_error('Invalid Start Date '||o.get_string(tags.startDate));
    end if;
    if r.start_date > r.end_date
    then
        global.raise_error('End Date < Start Date '||r.start_date||':'||r.end_date);
    end if;
    if r.repeat != 'N' and r.end_date is null
    then
        global.raise_error('Invalid End Date');
    end if;
    begin
        rpa := TREAT (o.get(tags.repeatOn) as json_array_t);
    exception when others
    then
        rpa := new json_array_t;
    end;
    if rpa is not null
    and rpa.get_size > 0
    then
        for rpi in 0 .. (rpa.get_size - 1) loop
            begin
                rpn := rpa.get_string(rpi);
            exception
                when others
                then
                    global.raise_error('Invalid value repeatOn '||rpa.get_string(rpi));
            end;
            if      (r.repeat in ('N','D') and rpn is not null)
                or  (r.repeat = 'W' and rpn not between 1 and 7)
                or  (r.repeat = 'M' and rpn not between 1 and 31)
                or  (r.repeat = 'Y' and rpn not between 1 and 366)
                or  (rpn != trunc(rpn))
            then
                global.raise_error('Invalid value repeatOn '||rpa.get_string(rpi)|| ' for repeat type '||r.repeat);
            end if;
        end loop;
        r.repeat_on := rpa.to_string();
    elsif r.repeat in ('W','M','Y')
    then
        global.raise_error('repeatOn is mandatory');
    end if;
    if r.repeat = 'N' and r.end_date != r.start_date
    then
        global.raise_error('Invalid End Date');
    end if;
    r.start_hr := o.get_string(tags.startHour);
    r.start_min := nvl(o.get_string(tags.startMinute),0);
    r.duration_hr := nvl(o.get_string(tags.durationHours),0);
    r.duration_min := nvl(o.get_string(tags.durationMinutes),0);

    if r.start_hr not between 0 and 24 or r.start_hr!=trunc(r.start_hr) or r.start_hr is null 
    then 
        global.raise_error('Invalid startHour '||r.start_hr);
    end if;
    if r.start_min not between 0 and 60 or r.start_min!=trunc(r.start_min) or r.start_min is null 
    then 
        global.raise_error('Invalid startMinute '||r.start_min);
    end if;
    if r.duration_hr + r.duration_min  <= 0
    then
        global.raise_error('Invalid Duration');
    end if;

    r.conference_Link := o.get_string(tags.conferenceLink);
    r.location := o.get_string(tags.location);
    l_id := p_cal_id;
    if nvl(l_id,tags.c_new) = tags.c_new
    then
        r.id := sys_guid();
    else
        r.id := l_id;
        delete tb_student_calendar where id = r.id;
    end if;
    r.student_id := p_student_id;
    r.user_id := global.user_id;
    insert into tb_student_calendar values r;
    if o.has(tags.participants)
    then
        pa := treat ((o.get(tags.participants)) as json_array_t);
        delete TB_STUDENT_CALENDAR_PARTICIPANTS where calendar_id = r.id;
        for j in 0 .. (pa.get_size - 1) loop
            pe := pa.get(j);
            po := TREAT (pe as json_object_t);
            pr := null;
            pr.id := sys_guid();
            pr.calendar_id := r.id;
            pr.participant_id := po.get_string(tags.participantId);
            pr.required := case when po.get_boolean(tags.required) then 'Y' else 'N' end;
            pr.ord := j;
            insert into TB_STUDENT_CALENDAR_PARTICIPANTS values pr;
        end loop;
    end if;
    delete TB_STUDENT_CALENDAR_EVENTS where calendar_id = r.id;
    base_dt := r.start_date;
    if nvl(r.repeat,'N') in ('N')
    then
        ins_dt(base_dt);
    elsif nvl(r.repeat,'N') = 'D'
    then
        for dd in 1..200
        loop
            ins_dt(base_dt);
            base_dt := base_dt+nvl(r.repeat_frequency,1);
            if base_dt > r.end_date
            then
                exit;
            end if;
        end loop;
    elsif nvl(r.repeat,'N') in ('W','M','Y')
    then
        base_dt := case when r.repeat = 'M' then trunc(base_dt,'MM')
            when r.repeat ='W' then trunc(base_dt,'IW')
            else trunc(base_dt,r.repeat) end;
        for dd in 1..200
        loop
            if rpa is not null
            and rpa.get_size > 0
            then
                for rpi in 0 .. (rpa.get_size - 1) loop
                    if r.repeat in ('W','M','Y')
                    then
                        begin
                            rpn := rpa.get_string(rpi);
                        exception
                            when others
                            then
                                global.raise_error('Invalid value repeatOn '||rpa.get_string(rpi));
                        end;
                        ldt := base_dt+rpn-1;
                        if r.repeat in ('M') and trunc(ldt,'MM') != trunc(base_dt,'MM')
                        then
                            ldt := last_day(base_dt);
                        end if;
                        ins_dt(ldt);
                    end if;
                end loop;
            end if;
            if r.repeat = 'W'
            then
                base_dt := base_dt+(r.repeat_frequency*7);
            elsif r.repeat = 'M'
            then
                base_dt := add_months(base_dt,r.repeat_frequency);
            elsif r.repeat = 'Y'
            then
                base_dt := add_months(base_dt,r.repeat_frequency*12);
            end if;
            if base_dt > r.end_date then
                exit;
            end if;
            base_dt := case when r.repeat = 'M' then trunc(base_dt,'MM')
            when r.repeat ='W' then trunc(base_dt,'IW')
            else trunc(base_dt,r.repeat) end;
        end loop;
    end if;
    if o.has(tags.referenceMaterials)
    then
        pr_create_addl_info(r.id, treat ((o.get(tags.referenceMaterials)) as json_array_t));
    end if;
    if o.has(tags.agenda)
    then
        pr_update_remarks(r.id, treat ((o.get(tags.agenda)) as json_object_t));
    end if;
    if o.has(tags.files) then 
        pr_update_file(r.id, treat ((o.get(tags.files)) as json_array_t));
    end if;
    pr_audit_log(r.id);
  end loop;
  qids.put(tags.id,r.id);
  if p_ref_id is null
  then
    return fn_get_student_calendar(p_student_id,qids);
  else
    return new json_array_t;
  end if;
end;
/
create or replace function            fn_create_student_checklist
(
p_student_id in varchar2,
p_checklist_id in varchar2,
p_req in JSON_ELEMENT_T
) return JSON_ELEMENT_T
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
e JSON_ELEMENT_T;
r tb_student_checklists%rowtype;
ri tb_student_checklist_items%rowtype;
res json_array_t := new json_array_t;
o1 JSON_OBJECT_t := new JSON_OBJECT_t;
begin
  o := TREAT (p_req as json_object_t);

  if global.category_item(p_checklist_id).id is null
  then
      global.raise_error('Invalid CheckList ID '||p_checklist_id);
  end if;

  r.checklist_id := p_checklist_id;
  r.student_id := p_student_id;
  --r.remarks := o.get_string(tags.remarks);
  update tb_student_checklists set student_id = p_student_id --set remarks = r.remarks
  where  student_id = p_student_id
  and    checklist_id = p_checklist_id
  returning id into r.id;
  if sql%rowcount = 0
  then
      r.id := sys_guid();
      insert into tb_student_checklists values r;
  end if;
  if o.has(tags.remarks)
  then
    pr_update_remarks(r.id, treat ((o.get(tags.remarks)) as json_object_t));
  end if;
  if o.has(tags.files)
  then 
    pr_update_file(r.id, treat ((o.get(tags.files)) as json_array_t));
  end if;
  pr_audit_log(r.id);
  begin
  a := treat(o.get(tags.checkLists) as json_array_t);
  exception when others then a := new json_array_t;
  end;
  if a is not null then
  for i in 0 .. (a.get_size - 1) loop
    e := a.get(i);
    o1 := TREAT (e as json_object_t);
    ri := null;
    ri.checklist_id := o1.get_string(tags.itemId);
    ri.student_id := p_student_id;
    --ri.remarks := o1.get_string(tags.remarks);
    if global.list_item(ri.checklist_id).id is null then global.raise_error('invalid checklist ID '|| ri.checklist_id); end if;
    if o1.get_boolean(tags.checked) then ri.checked := 'Y'; else ri.checked := 'N'; end if;
    --ri.last_updated_by := global.user_id;
    --ri.last_updated_on := sysdate;
    update  tb_student_checklist_items
    set     checked = ri.checked--,
            --remarks = ri.remarks--,
            --last_updated_by =ri.last_updated_by,
            --last_updated_on=ri.last_updated_on
    where   student_id = ri.student_id
    and     checklist_id = ri.checklist_id
    returning id into ri.id;
    if sql%rowcount = 0
    then
        ri.id := sys_guid();
        --ri.created_by := global.user_id;
        --ri.created_on := sysdate;
        insert into tb_student_checklist_items values ri;
    end if;
    if o1.has(tags.remarks)
    then
        pr_update_remarks(ri.id, treat ((o1.get(tags.remarks)) as json_object_t));
    end if;
    if o1.has(tags.files) then 
        pr_update_file(ri.id, treat ((o1.get(tags.files)) as json_array_t));
    end if;
    pr_audit_log(ri.id);
  end loop;
  end if;
  --return fn_get_student_iep(p_student_id,case when p_plan_id = 'new' then r.id else p_plan_id end);
  return fn_get_student_checklists(p_student_id,global.category_item(p_checklist_id).section,p_checklist_id);
end;
/
create or replace function            fn_create_student_iep
(
p_student_id in varchar2,
p_iep_id in varchar2,
p_req in JSON_ELEMENT_T
) return JSON_ELEMENT_T
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
e JSON_ELEMENT_T;
r TB_STUDENT_IEP%rowtype;
res json_object_t := new json_object_t;
l_chk number;
calc json_element_t;
begin
   if (p_req.is_object) then
    o := TREAT (p_req as json_object_t);
    a.append(o);
  elsif (p_req.is_array) then
    a := TREAT (p_req as json_array_t);
  end if;

  for i in 0 .. (a.get_size - 1) loop
    e := a.get(i);
    o := TREAT (e as json_object_t);
    r := null;
    --r.section := o.get_string(tags.section);
    r.iep_Id := p_iep_id;
    if global.list_item(p_iep_id).id is null then global.raise_error('invalid iep ID '|| r.iep_id); end if;
    --r.last_updated_by := global.user_id;
    --r.last_updated_on := sysdate;
    --r.remarks := o.get_string(tags.remarks);
    update  TB_STUDENT_IEP
    set     student_id = student_id --remarks = r.remarks
            --last_updated_by = r.last_updated_by,
            --last_updated_on = r.last_updated_on
    where   student_id = p_student_id
    and     iep_id     = p_iep_id
    returning id into r.id;
    if sql%rowcount = 0
    THEN
        r.id := sys_guid();
        --r.created_on := sysdate;
        --r.created_by := global.user_id;
        r.student_id := p_student_id;
        insert into TB_STUDENT_IEP values r;
    end if;
    pr_audit_log(r.id);
    if o.has(tags.remarks)
    then
        pr_update_remarks(r.id, treat ((o.get(tags.remarks)) as json_object_t));
    end if;
    if o.has(tags.objectives)
    then
        pr_create_student_iep_objectives(r.id, treat ((o.get(tags.objectives)) as json_array_t));
    end if;
    if o.has(tags.files) then 
        pr_update_file(r.id, treat ((o.get(tags.files)) as json_array_t));
    end if;
    if o.has(tags.calendar) then
        calc := fn_create_student_calendar(p_student_id, tags.c_new, r.id, treat (o.get(tags.calendar) as json_array_t));
    end if;
  end loop;
  return fn_get_student_iep(p_student_id,p_iep_id);
end;
/
create or replace function            fn_create_student_notes
(
p_student_id in varchar2,
p_notes_id in varchar2,
p_notes_type in varchar2,
p_req in JSON_ELEMENT_T
) return JSON_ELEMENT_T
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
e JSON_ELEMENT_T;
r TB_STUDENT_notes%rowtype;
res json_object_t := new json_object_t;
l_chk number;
begin
   if (p_req.is_object) then
    o := TREAT (p_req as json_object_t);
    a.append(o);
  elsif (p_req.is_array) then
    a := TREAT (p_req as json_array_t);
  end if;

  for i in 0 .. (a.get_size - 1) loop
    e := a.get(i);
    o := TREAT (e as json_object_t);
    r := null;
    r.section := o.get_string(tags.section);
    if ((p_notes_type = 'S' and r.section not in ('S','W','O','T'))
    or (p_notes_type != 'S' and  r.section not in ('D','T','P','S','C')))
    then
        global.raise_error('invalid section id '||r.section);
    end if;
    r.section := o.get_string(tags.section);
    --r.notes_title := o.get_string(tags.title);
    --r.notes_text  := o.get_string(tags.text);
    r.notes_type := case p_notes_type when 'O' then 'O' when 'S' then 'S' else 'N' end;
    if nvl(p_notes_id,'new') = 'new'
    then
        r.id := sys_guid();
        r.student_id := p_student_id;
        insert into TB_STUDENT_NOTES values r;
    else
        r.id := p_notes_id;
        update tb_student_notes
        set    section=r.section--,
               --notes_title = r.notes_title,
               --notes_text = r.notes_text
        where  id = p_notes_id;
        if sql%rowcount=0
        then
            global.raise_error('invalid '||
            case when p_notes_type ='O' then tags.observations 
            when p_notes_type ='S' then tags.swot 
            else tags.notes end || ' id '||p_notes_id);
        end if;
    end if;
    if o.has(tags.remarks)
    then
        pr_update_remarks(r.id, treat ((o.get(tags.remarks)) as json_object_t));
    end if;
    if o.has(tags.files) then 
        pr_update_file(r.id, treat ((o.get(tags.files)) as json_array_t));
    end if;
    pr_audit_log(r.id);
  end loop;
  return fn_get_student_notes(p_student_id,r.id,p_notes_type);
end;
/
create or replace function            fn_get_addl_info
(
    p_ref_id in varchar2
) return json_array_t
is
a json_array_t := new json_array_t;
begin
    for i in (select * from TB_ADDL_INFO where ref_id = p_ref_id)
    loop
        a.append(fn_get_remarks(i.id));
    end loop;
    return a;
end;
/
create or replace function            fn_get_a_student(
    p_id varchar2,
    p_basic in boolean := false
) return json_element_t
is
o json_object_t := new JSON_OBJECT_t;
begin
    for i in 
    (
        select a.* from TB_STUDENTS a
        where id = p_id
    )
    loop
        o.put(tags.id,i.id);
        o.put(tags.studentId,i.student_id);
        o.put(tags.studentName,i.student_name);
        o.put(tags.class,i.class);
        o.put(tags.division,i.division);
        o.put(tags.dob,i.dob);
        o.put(tags.classTeacher,i.class_teacher);
        o.put(tags.specialInstructor,i.special_instructor);
        o.put(tags.parentName,i.parent_name);
        o.put(tags.consular,i.consular);
        o.put(tags.doctor,i.doctor);
        o.put(tags.agency,i.agency);
        o.put(tags.specialeducator,i.special_educator);
        o.put(tags.therapist,i.therapist);
        o.put(tags.studentSince,i.student_since);
        o.put(tags.photoId,i.photo_id);
        if not p_basic then
        o.put(tags.teachersCheckLists,fn_get_student_checklists(p_id,'T',null));
        o.put(tags.specialEducatorsCheckLists,fn_get_student_checklists(p_id,'S',null));
        o.put(tags.counselorsCheckLists,fn_get_student_checklists(p_id,'C',null));
        o.put(tags.parentsCheckLists,fn_get_student_checklists(p_id,'P',null));
        o.put(tags.individualisedEducationPlan,fn_get_student_iep(p_id));
        o.put(tags.notes,fn_get_student_notes(p_id,null,'N'));
        o.put(tags.observations,fn_get_student_notes(p_id,null,'O'));
        o.put(tags.swot,fn_get_student_notes(p_id,null,'S'));
        o.put(tags.photo,fn_get_files(i.photo_id));
        o.put(tags.auditLog, fn_audit_log(i.id));
        end if;
    end loop;
    return o;
end;
/
create or replace function            fn_get_a_student_calendar_event(p_event_id in varchar2, p_full in boolean := false) return json_object_t
is
o json_object_t := new json_object_t;
c tb_student_calendar%rowtype;
begin
    for i in (select * from tb_student_calendar_events where id=p_event_id)
    loop
        if p_full then
            for j in (select * from tb_student_calendar where id = i.calendar_id)
            loop
                c := j;
            end loop;
        end if;
        o.put(tags.eventId,i.id);
        o.put(tags.eventdate,i.dt);
        o.put(tags.startHour,i.start_hr);
        o.put(tags.startMinute,i.start_min);
        o.put(tags.durationHours,i.duration_hr);
        o.put(tags.durationMinutes,i.duration_min);
        o.put(tags.cancelled,(i.cancel='Y'));
        if p_full then
            o.put(tags.calendarId,c.id);
            o.put(tags.refId, c.ref_id);
            o.put(tags.studentId,c.student_id);
            o.put(tags.agenda,fn_get_remarks(c.id));
            o.put(tags.location,c.location);
            o.put(tags.conferenceLink,c.conference_link);
            --o.put(tags.studentInformation, fn_get_a_student(c.student_id,true));
        end if;
    end loop;
    return o;
end;
/
create or replace function            fn_get_checklist(p_section in varchar2, p_checklist_id in varchar2)
return json_element_t
is
l_res varchar2(32000);
a json_array_t := new json_array_t;
o json_object_t := new JSON_OBJECT_t;
d json_object_t := new JSON_OBJECT_t;
da json_array_t := new json_array_t;
tcl varchar2(200) := tags.teachersCheckLists;
ssl varchar2(200) := tags.specialEducatorsCheckLists;
ccl varchar2(200) := tags.counselorsCheckLists;
pcl varchar2(200) := tags.parentsCheckLists;
begin
    for i in 
    (
        select *
        from TM_CHECKLISTS 
        where lower(section) = decode(lower(p_section),'all', lower(section), 
            lower(tcl),'t',lower(ssl),'s',lower(ccl),'c',lower(pcl),'p',p_section)
        and (p_checklist_id is null or id = p_checklist_id)
        and ((lower(p_section) = 'iep' and lower(section) = 'iep') 
        or (lower(p_section) != 'iep' and lower(section) != 'iep'))
        order by ord
    )
    loop
        o := new JSON_OBJECT_t;
        o.put(tags.id,i.id);
        o.put(tags.section,i.section);
        o.put(tags.sectionName, case i.section 
                when 'T' then tags.teachersCheckLists
                when 'S' then tags.specialEducatorsCheckLists
                when 'C' then tags.counselorsCheckLists end
                );
        o.put(tags.name,i.checklist_name);
        o.put(tags.ord,i.ord);
        da  := new json_array_t;
        for j in (select * from WKSP_MUSEE.TM_CHECKLIST_details where checklist_id = i.id order by ord)
        loop
            d := new JSON_OBJECT_t;
            d.put(tags.itemid,j.id);
            d.put(tags.text,j.checklist_text);
            d.put(tags.ord,j.ord);
            da.append(d);
        end loop;
        o.put(tags.items,da);
        a.append(o);
    end loop;
    if p_checklist_id is null
    then
        return a;
    else
        return o;
    end if;
end;
/
create or replace function            fn_get_files
(
p_ref_id in varchar2
) return JSON_ELEMENT_T
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
begin
for i in (select * from tb_files where (ref_id = p_ref_id or id = p_ref_id) order by created_on)
loop
    o := new JSON_OBJECT_t;
    o.put(tags.fileId,i.id);
    o.put(tags.fileName,i.file_name);
    o.put(tags.contentType,i.content_type);
    --o.put(tags.createdBy,i.created_by);
    --o.put(tags.createdOn,i.created_on);
    o.put(tags.auditLog, fn_audit_log(i.id));
    a.append(o);
end loop;
return a;
end;
/
create or replace function            fn_get_remarks
(
p_ref_id in varchar2
) return json_object_t
is
o json_object_t := new json_object_t;
begin
    for i in (select * from tb_remarks where ref_id = p_ref_id)
    loop
        o.put(tags.title,i.title);
        o.put(tags.c_type,i.remarks_type);
        o.put(tags.text,i.remarks);

    end loop;
    return o;
end;
/
create or replace function            fn_get_students(
    --p_pagenum in number,
    --p_num_rows in number,
    p_query in json_object_t
    --p_user in varchar2 
) return json_element_t
is
l_res varchar2(32000);
a json_array_t := new json_array_t;
l_pagenum number ; --:= nvl(p_pagenum,1);
l_num_rows number ; --:= nvl(p_num_rows,50);
q json_object_t;
r tb_students%rowtype;
qry varchar2(32000);
begin
    if p_query is not null then
    BEGIN
        --q := json_object_t.parse(p_query);
        q := p_query;
        l_pagenum := q.get_string(tags.pagenum);
        l_num_rows := q.get_string(tags.numrows);
        r.id := upper(q.get_string(tags.id));
        r.student_id := upper(q.get_string(tags.studentId));
        r.student_name := upper(q.get_string(tags.studentName));
        r.class := upper(q.get_string(tags.class));
        r.class_Teacher := upper(q.get_string(tags.classTeacher));
        r.special_Instructor := upper(q.get_string(tags.specialInstructor));
        r.dob := global.to_dt(q.get_string(tags.dob));
        r.division := upper(q.get_string(tags.division));
        if q.get_string(tags.dob) is not null and r.dob is null then r.dob := sysdate-5000; end if;
        qry := upper(q.get_string(tags.query));
    exception
        when others
        then
            null;
    end;
    end if;
    l_pagenum := nvl(l_pagenum,1);
    l_num_rows := nvl(l_num_rows,50);
    for i in 
    (
        select id from
        (
        select qq.*, ROW_NUMBER() OVER(ORDER BY 1) ORD_RN  from
        (
        select * from TB_STUDENTS
        where (qry is null or (qry is not null
                    and (upper(id) like '%'||upper(qry)|| '%')
                    or (upper(student_id) like '%'||upper(qry)|| '%')
                    or (upper(student_name) like '%'||upper(qry)|| '%')
                    or (upper(class) like '%'||upper(qry)|| '%')
                    or (upper(class_Teacher) like '%'||upper(qry)|| '%')
                    or (upper(division) like '%'||upper(qry)|| '%')
                    or (upper(special_Instructor) like '%'||upper(qry)|| '%')
                    ))
        and (r.id is null or (r.id is not null and upper(id) like '%'||r.id|| '%'))
        and (r.student_id is null or (r.student_id is not null and upper(student_id) like '%'||r.student_id|| '%'))
        and (r.student_name is null or (r.student_name is not null and upper(student_name) like '%'||r.student_name|| '%'))
        and (r.class is null or (r.class is not null and upper(class) like '%'||r.class|| '%'))
        and (r.class_Teacher is null or (r.class_Teacher is not null and upper(class_Teacher) like '%'||r.class_Teacher|| '%'))
        and (r.special_Instructor is null or (r.special_Instructor is not null and upper(special_Instructor) like '%'||r.class_Teacher|| '%'))
        and (r.division is null or (r.division is not null and upper(division) like '%'||r.division|| '%'))
        and (r.dob is null or (r.dob is not null and r.dob = dob))
        order by to_number(student_id)
        ) qq
        )
     where ord_rn between (l_num_rows * (l_pagenum-1) +1) and ( l_num_rows * (l_pagenum-1) +l_num_rows )
    )
    loop
        a.append(fn_get_a_student(i.id,true));
    end loop;
    return a;
end;
/
create or replace function            fn_get_student_calendar
(
    p_student_id in varchar2,
    p_query_obj  in json_object_t
) return json_element_t is
    a json_array_t := new json_array_t;
    o json_object_t;
    l_id varchar2(2000);
    pa json_array_t;
    po json_object_t;
    l_ids json_array_t := new json_array_t;
    s_id varchar2(2000);
    y number;
    m number;
    f date;
    t date;
    da json_array_t;
    rf_id varchar2(200);
    st_id varchar2(2000);
begin
    st_id := nvl(p_student_id,p_query_obj.get_string(tags.studentId));
    if p_query_obj.has(tags.id)
    then
        s_id := p_query_obj.get_string(tags.id);
        l_ids.append(s_id);
    elsif p_query_obj.has(tags.calendarId)
    then
        s_id :=  p_query_obj.get_string(tags.calendarId);
        l_ids.append(s_id);
    elsif p_query_obj.has(tags.refId)
    then
        rf_id := p_query_obj.get_string(tags.refId);
        for i in (select id from TB_STUDENT_CALENDAR a
        where student_id = nvl(st_id, a.student_id)
        and ref_id = rf_id
        )
        loop
            l_ids.append(i.id);
        end loop;
    else
        y := p_query_obj.get_string(tags.year);
        m := p_query_obj.get_string(tags.month);
        f := global.to_dt(p_query_obj.get_string(tags.fromdate));
        t := global.to_dt(p_query_obj.get_string(tags.todate));
        if f is null and (y is not null and m is not null)
        then
            f := to_date('01'||lpad(m,2,'0')||lpad(y,4,'0'),'DDMMYYYY');
        end if;
        if t is null and (y is not null and m is not null)
        then
            t := last_day(f);
        end if;
        for i in (select id from TB_STUDENT_CALENDAR a
        where student_id = nvl(st_id, a.student_id)
        and a.id in (select c.calendar_id
        from TB_STUDENT_CALENDAR_EVENTS c
        where c.dt between f and t)
        order by start_date
        )
        loop
            l_ids.append(i.id);
        end loop;
    end if;
    if l_ids is not null
    then
      for i in 0 .. (l_ids.get_size - 1) loop
        l_id := l_ids.get_string(i);
        for j in 
        (
            select * from TB_STUDENT_CALENDAR 
            where id = l_id
            and user_id = global.user_id
        )
        LOOP
            o := new json_object_t;
            o.put(tags.calendarId,j.id);
            --o.put(tags.kind,j.kind);
            o.put(tags.studentId, j.student_id);
            o.put(tags.refId,j.ref_id);
            o.put(tags.startDate,j.start_date);
            o.put(tags.endDate,j.end_date);
            o.put(tags.repeat,j.repeat);
            if j.repeat not in ('D','N')
            then
                begin
                    o.put(tags.repeatOn,json_array_t.parse(j.repeat_on));
                exception when others
                then
                    o.put(tags.repeatOn,new json_array_t);
                end;
                o.put(tags.repeatFrequency,j.repeat_Frequency);
            end if;
            o.put(tags.startHour,j.start_hr);
            o.put(tags.startMinute,j.start_min);
            o.put(tags.durationHours,j.duration_hr);
            o.put(tags.durationMinutes,j.duration_min);
            o.put(tags.agenda,fn_get_remarks(j.id));
            o.put(tags.location,j.location);
            o.put(tags.conferenceLink,j.conference_link);
            pa := new json_array_t;
            for k in (select * from TB_STUDENT_CALENDAR_PARTICIPANTS where calendar_id = j.id order by ord)
            loop
                po := new JSON_OBJECT_t;
                po.put(tags.participantId,k.participant_Id);
                po.put(tags.required, (k.required='Y'));
                pa.append(po);
            end loop;
            da := new json_array_t;
            for k in 
                (
                select * from TB_STUDENT_CALENDAR_EVENTS
                where calendar_id=j.id
                order by dt
                )
            loop
                da.append(fn_get_a_student_calendar_event(k.id));
            end loop;
            o.put(tags.referenceMaterials, fn_get_addl_info(j.id));
            o.put(tags.participants,pa);
            o.put(tags.events,da);
            o.put(tags.files,fn_get_files(j.id));
            o.put(tags.auditLog, fn_audit_log(j.id));
            a.append(o);
        end loop;
      end loop;
      end if;
      if s_id is not null
      then
          return o;
      else
       return a;
      end if;
end;
/
create or replace function            fn_get_student_calendar_events
(
    p_query_obj  in json_object_t
) return json_element_t is
    a json_array_t := new json_array_t;
    o json_object_t;
    y number;
    m number;
    f date;
    t date;
    st_id varchar2(2000);
begin
        y := p_query_obj.get_string(tags.year);
        m := p_query_obj.get_string(tags.month);
        f := global.to_dt(p_query_obj.get_string(tags.fromdate));
        t := global.to_dt(p_query_obj.get_string(tags.todate));
        if f is null and (y is not null and m is not null)
        then
            f := to_date('01'||lpad(m,2,'0')||lpad(y,4,'0'),'DDMMYYYY');
        end if;
        if t is null and f is not null
        then
            t := last_day(f);
        end if;
        st_id := p_query_obj.get_string(tags.studentId);
        if lower(st_id) = 'all'
        then
            st_id := null;
        end if;
        a := new json_array_t;
        for i in
            (
                select  a.id
                from    TB_STUDENT_CALENDAR_EVENTS a,
                        TB_STUDENT_CALENDAR b
                where a.calendar_id = b.id
                and   b.student_id = nvl(st_id,b.student_id)
                and   b.user_id = global.user_id
                and nvl(a.cancel,'N') != 'Y'
                and dt between f and t
                order by a.dt
            )
        loop
            a.append(fn_get_a_student_calendar_event(i.id,true));
        end loop;
        return a;
end;
/
create or replace function            fn_get_student_checklists
(
    p_student_id in varchar2, p_section in varchar2, p_checklist_id in varchar2
) return json_element_t is
    a json_array_t := new json_array_t;
    o1 json_object_t := new JSON_OBJECT_t;
    a1 json_array_t := new json_array_t;
    o2 json_object_t := new JSON_OBJECT_t;
    --remarks tb_remarks%rowtype;
    r tb_student_checklists%rowtype;
    --b boolean;
begin
    /*
    for j in
    (
        select * from TM_CHECKLISTS b
        where section in ('T','S','P','C')
        and b.id not in (select a.CHECKLIST_ID from tb_student_checklists a 
        where a.student_id = p_student_id)
    )
    loop
        r.id := sys_guid();
        r.student_id := p_student_id;
        r.checklist_id := j.id;
        insert into tb_student_checklists values r;
    end loop;
    */
    for j in (
        /*
        select b.checklist_name, b.ord, a.*
        from tb_student_checklists a,
        tm_checklists b
        where b.id = a.CHECKLIST_ID
        and b.section= p_section 
        and b.id = nvl(p_checklist_id,b.id)
        and a.student_id = p_student_id
        order by b.ord
        */
        select  b.*
        from    tm_checklists b
        where   section= p_section
        order by b.ord
        )
    loop
        o1 := new JSON_OBJECT_t;
        o1.put(tags.id, j.id);--j.checklist_id);
        o1.put(tags.checkListname,j.checklist_name);
        o1.put(tags.ord,j.ord);
        --b := false;
        for k in (
            select * from tb_student_checklists a
            where a.student_id = p_student_id
            and a.checklist_id = j.id
            )
        loop
            o1.put(tags.remarks,fn_get_remarks(k.id));
            o1.put(tags.files,fn_get_files(k.id));
            o1.put(tags.auditLog, fn_audit_log(k.id));
            --b := true;
        end loop;
        --if not b then o1.put(tags.auditLog,new json_object_t); end if;
        a1 := new json_array_t;
        for k in (select * from TM_CHECKLIST_DETAILS where checklist_id = j.id order by ord)
        loop
            o2 := new JSON_OBJECT_t;
            o2.put(tags.itemId,k.id);
            o2.put(tags.ord,k.ord);
            o2.put(tags.text,k.checklist_text);
            o2.put(tags.checked,false);
            for l in (select * from TB_STUDENT_CHECKLIST_items where student_id = p_student_id
            and checklist_id = k.id)
            loop
                o2.put(tags.checked, l.checked = 'Y' );
                o2.put(tags.remarks,fn_get_remarks(l.id));
                o2.put(tags.files,fn_get_files(l.id));
                o2.put(tags.auditLog, fn_audit_log(l.id));
                exit;
            end loop;
            a1.append(o2);
        end loop;
        o1.put(tags.checkLists,a1);
        a.append(o1);
    end loop;
    if p_checklist_id is null then
    return a;
    else
    return o1;
    end if;
end;
/
create or replace function            fn_get_student_iep(p_student_id in varchar2, p_plan_id in varchar2 :=null)
return json_element_t
is
io JSON_OBJECT_t := new JSON_OBJECT_t;
iep JSON_ARRAY_t := new JSON_ARRAY_T;
obj JSON_OBJECT_t := new JSON_OBJECT_t;
aobj JSON_ARRAY_t := new JSON_ARRAY_T;
qids JSON_OBJECT_t := new json_object_t;
begin
    for j in (select * from TB_STUDENT_IEP where student_id = p_student_id 
    and iep_id = nvl(p_plan_id,iep_id)
    order by iep_id
    )
    loop
        io := new JSON_OBJECT_t;
        io.put(tags.id,j.iep_id);
        --io.put(tags.iepId, j.iep_id);
        --io.put(tags.category,global.list_item(j.iep_id).);
        io.put(tags.subject,global.list_item(j.iep_id).checklist_text);
        io.put(tags.category,global.category_item(global.list_item(j.iep_id).checklist_id).checklist_name);
        io.put(tags.remarks,fn_get_remarks(j.id));
        --io.put(tags.docId,j.doc_id);
        --io.put(tags.subject,j.iep_subject);
        --io.put(tags.remarks,j.remarks);
        --io.put(tags.longTermObjective,j.long_term_objective);
        --io.put(tags.shortTermObjective1,j.short_term_objective_1);
        --io.put(tags.shortTermObjective2,j.short_term_objective_2);
        --io.put(tags.shortTermObjective3,j.short_term_objective_3);
        aobj := new json_array_t;
        for k in (select * from tb_student_iep_objectives 
        where plan_id = j.id order by obj_type, obj_num)
        loop
            obj := new JSON_OBJECT_t;
            obj.put(tags.objectiveType,k.obj_type);
            obj.put(tags.objectiveNum,k.obj_num);
            obj.put(tags.pctProgress,k.pct_progress);
            obj.put(tags.status,k.status);
            --obj.put(tags.remarks,k.remarks);
            obj.put(tags.remarks,fn_get_remarks(k.id));
            obj.put(tags.startDate,k.start_Date);
            obj.put(tags.plannedEndDate,k.planned_End_Date);
            obj.put(tags.actualEndDate,k.actual_End_Date);
            --obj.put(tags.createdBy,k.created_by);
            --obj.put(tags.createdOn,k.created_on);
            --obj.put(tags.lastUpdatedBy,k.last_updated_by);
            --obj.put(tags.lastUpdatedOn,k.last_updated_on);
            aobj.append(obj);
        end loop;
        io.put(tags.objectives,aobj);
        --io.put(tags.createdBy,j.created_by);
        --io.put(tags.createdOn,j.created_on);
        --io.put(tags.lastUpdatedBy,j.last_updated_by);
        --io.put(tags.lastUpdatedOn,j.last_updated_on);
        io.put(tags.files,fn_get_files(j.id));
        io.put(tags.auditLog, fn_audit_log(j.id));

        qids.put(tags.refid,j.id);
        io.put(tags.calendar, fn_get_student_calendar(p_student_id,qids));

        iep.append(io);
    end loop;
    if p_plan_id is null then
    return iep;
    else
    return io;
    end if;
end;
/
create or replace function            fn_get_student_notes
(
p_id in varchar2, 
p_notes_id in varchar2,
p_type in varchar2
) return JSON_ELEMENT_T
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
begin
    for j in (select * from TB_STUDENT_notes where student_id = p_id 
    and id = nvl(p_notes_id,id)
    and nvl(notes_type,'N') = nvl(p_type,'N')
    order by section)
    loop
        o := new JSON_OBJECT_t;
        o.put(tags.id,j.id);
        o.put(tags.section,j.section);
        --o.put(tags.title,j.notes_title);
        --o.put(tags.text,j.notes_text);
        o.put(tags.remarks, fn_get_remarks(j.id));
        --o.put(tags.createdOn,j.created_on);
        --o.put(tags.createdBy,j.created_by);
        --o.put(tags.lastUpdatedOn,j.last_updated_on);
        --o.put(tags.lastUpdatedBy,j.last_updated_by);
        o.put(tags.files,fn_get_files(j.id));
        o.put(tags.auditLog, fn_audit_log(j.id));
        a.append(o);
    end loop;
    if p_notes_id is null
    then
        return a;
    else
        return o;
    end if;
end;
/
create or replace function            fn_get_tuples 
( p_type in varchar2,
 p_tuple in varchar2 := null
)
return json_array_t
is
a json_array_t := new json_array_t;
o json_object_t;
begin
    for i in (
        select * from tb_lookup
        where type = p_type
        and (p_tuple is null or lower(name) = lower(p_tuple))
        order by name
    )
    loop
        o := new json_object_t;
        o.put('name',i.name);
        o.put('value',i.val);
        a.append(o);
    end loop;
    return a;
end;
/
create or replace function            fn_get_user(p_user_id in varchar2) return json_element_t
is
--l_res varchar2(32000);
l_user_id varchar2(200) := nvl(p_user_id,global.user_id);
o json_object_t := new json_object_t;
a json_array_t := new json_array_t;
o1 json_object_t := new json_object_t;
begin
    for i in (
    select * --json_object(id,user_id,user_name,user_roles,last_logged_in,authorized) 
    --into   l_res
    from   tb_users
    where  user_id = l_user_id--p_user_id;
    )
    loop
        o.put(tags.userId,i.user_id);
        o.put(tags.userName,i.user_name);
        for j in 
            (
            select * from TB_ROLES
            where '%:' || i.user_roles || ':%' like '%:' || role_id || ':%'
        )
        loop
            o1 := new json_object_t;
            o1.put(tags.roleId, j.role_id);
            o1.put(tags.roleDescription, j.role_description);
            a.append(o1);
        end loop;
        o.put(tags.roles,a);
    end loop;
    return o;
end;
/
create or replace function fn_send_email
(
p_obj in json_object_t
)
return json_object_t
is
  l_resp          CLOB;
  l_url           VARCHAR2(4000) := 'https://api.elasticemail.com/v2/email/send';
  l_apikey        VARCHAR2(4000) := '9CFBEA3DDEEAD9C4493B4AB1D946C83DE53639E13BAE9C9F33468830403F98E4C458753E534DC8929DC2025EEC157D89';
  l_from          VARCHAR2(4000) := 'musee_app@outlook.com';
  l_fromName      VARCHAR2(4000) := 'Musee Notification';
  l_to            VARCHAR2(4000) := 'cv.ranjith@gmail.com';
  l_isTransactional VARCHAR2(4000) := 'true';
  l_req_body      CLOB;
  o json_object_t := new json_object_t;
BEGIN
  l_req_body :=
    'apikey=' || UTL_URL.ESCAPE(l_apikey) || '&' ||
    'from=' || UTL_URL.ESCAPE(l_from) || '&' ||
    'fromName=' || UTL_URL.ESCAPE(l_fromName) || '&' ||
    'to=' || UTL_URL.ESCAPE(p_obj.get_string('to')) || '&' ||
    'subject=' || UTL_URL.ESCAPE(p_obj.get_string('subject')) || '&' ||
    'bodyText=' || UTL_URL.ESCAPE(p_obj.get_string('bodyText')) || '&' ||
    'bodyHtml=' || UTL_URL.ESCAPE(p_obj.get_string('bodyHtml')) || '&' ||
    'isTransactional=' || UTL_URL.ESCAPE(l_isTransactional);
  apex_web_service.g_request_headers(1).name := 'Content-Type';
  apex_web_service.g_request_headers(1).value := 'application/x-www-form-urlencoded';
  l_resp := apex_web_service.make_rest_request(
    p_url => l_url,
    p_http_method => 'POST',
    p_body => l_req_body
  );
  --htp.prn(l_resp);
   o := json_object_t.parse(l_resp);
   return o;
EXCEPTION
  WHEN OTHERS THEN
    --DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    o.put('resp',l_resp);
    o.put('err',sqlerrm);
    return o;
END;
/
create or replace function            fn_update_student_calendar_event
(
    p_event_id in varchar2,
    p_obj in json_object_t
) return json_object_t
is
r tb_student_calendar_events%rowtype;
begin
    r.id := p_event_id;
    r.dt := global.to_dt(p_obj.get_string(tags.eventDate));
    r.cancel := case when p_obj.get_boolean(tags.cancelled) then 'Y' else 'N' end;
    r.start_hr := p_obj.get_string(tags.startHour);
    r.start_min := p_obj.get_string(tags.startMinute);
    r.duration_hr := p_obj.get_string(tags.durationHours);
    r.duration_min := p_obj.get_string(tags.durationMinutes);
    update  tb_student_calendar_events
    set     dt=nvl(r.dt,dt),
            cancel = nvl(r.cancel,cancel),
            start_hr = nvl(r.start_hr,start_hr),
            start_min = nvl(r.start_min,start_min),
            duration_hr = nvl(r.duration_hr,duration_hr),
            duration_min = nvl(r.duration_min,duration_min)
    where   id = r.id;
    if sql%rowcount !=1
    then
        global.raise_error('Invalid Event Id '||p_event_id);
    end if;
    return fn_get_a_student_calendar_event(p_event_id,false);
end;
/
create or replace function            get_user_from_token return varchar2
is
l_auth varchar2(32000);
unauth exception;
l_user varchar2(2000);
begin
    l_auth := ltrim(OWA_UTIL.get_cgi_env('Authorization'),'Bearer ');
    if l_auth is null then raise unauth; end if;
    begin
    select  user_id
    into    l_user
    from    tokens
    where   token = l_auth
    and     exp_ts >= systimestamp and rownum=1;
    global.user_id := l_user;
    return l_user;
    exception when others then global.user_id:=null;raise unauth;end;
end;
/





















































































  CREATE INDEX "IND_ADDL_INFO" ON "TB_ADDL_INFO" ("REF_ID") 
  ;

  CREATE INDEX "IND_CAL_PARTICIPANTS_CAL_ID" ON "TB_STUDENT_CALENDAR_PARTICIPANTS" ("CALENDAR_ID") 
  ;

  CREATE INDEX "IND_FILES" ON "TB_FILES" ("REF_ID") 
  ;

  CREATE INDEX "IND_REMARKS" ON "TB_REMARKS" ("REF_ID") 
  ;

  CREATE UNIQUE INDEX "IND_STUDENT_CHECKLISTS" ON "TB_STUDENT_CHECKLIST_ITEMS" ("STUDENT_ID", "CHECKLIST_ID") 
  ;

  CREATE INDEX "IND_TB_COUNSELOR_OBSERVATIONS" ON "TB_COUNSELOR_OBSERVATIONS_NA" ("STUDENT_ID", "TYPE") 
  ;

  CREATE UNIQUE INDEX "IND_TB_ROLES" ON "TB_ROLES" ("ROLE_ID") 
  ;

  CREATE UNIQUE INDEX "IND_TB_STUDENTS" ON "TB_STUDENTS" ("STUDENT_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_DATES_CALENDAR_ID" ON "TB_STUDENT_CALENDAR_EVENTS" ("CALENDAR_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_ST" ON "TB_STUDENT_CALENDAR" ("STUDENT_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_USER" ON "TB_STUDENT_CALENDAR" ("USER_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_IEP_OBJECTIVES" ON "TB_STUDENT_IEP_OBJECTIVES" ("PLAN_ID") 
  ;

  CREATE UNIQUE INDEX "IND_TB_USERS" ON "TB_USERS" ("USER_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035633" ON "TB_ROLES" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035634" ON "TB_USERS" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035685" ON "TB_COUNSELOR_OBSERVATIONS_NA" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0041440" ON "TOKENS" ("TOKEN") 
  ;

  CREATE UNIQUE INDEX "SYS_C0041481" ON "API_LOG" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042064" ON "TB_FILES" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042097" ON "TB_STUDENT_NOTES" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042179" ON "TB_STUDENT_CHECKLIST_ITEMS" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042281" ON "TB_STUDENT_IEP_OBJECTIVES" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042282" ON "TB_AUDIT_LOG" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042540" ON "TB_REMARKS" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042706" ON "TB_STUDENT_CALENDAR" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042707" ON "TB_STUDENT_CALENDAR_PARTICIPANTS" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042708" ON "TB_ADDL_INFO" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042797" ON "TB_STUDENT_CALENDAR_EVENTS" ("ID") 
  ;



















































create or replace package            global is
user_id varchar2(200);
e_error exception;
g_error varchar2(32000);
procedure raise_error(p_err in varchar2);
procedure validate_student(p_student_id in varchar2);
function  list_item(p_item_id in varchar2) return TM_CHECKLIST_DETAILS%rowtype result_cache;
function  category_item(p_category_id in varchar2) return TM_CHECKLISTS%rowtype result_cache;
function to_dt (p_txt in varchar2) return date;
end;
/
create or replace package            tags
is
teachersCheckLists          varchar2(200) := 'teachersCheckLists';
specialEducatorsCheckLists  varchar2(200) := 'specialEducatorsCheckLists';
counselorsCheckLists        varchar2(200) := 'counselorsCheckLists';
parentsCheckLists            varchar2(200) := 'parentsCheckLists';
checkListName               varchar2(200) := 'checkListName';
ord                         varchar2(200) := 'ord';
id                          varchar2(200) := 'id';
section                     varchar2(200) := 'section';
sectionName                 varchar2(200) := 'sectionName';
text                        varchar2(200) := 'text';
checkLists                  varchar2(200) := 'checkLists';
studentId                   varchar2(200) := 'studentId';
studentName                 varchar2(200) := 'studentName';
class                       varchar2(200) := 'class';
division                    varchar2(200) := 'division';
dob                         varchar2(200) := 'dob';
classTeacher                varchar2(200) := 'classTeacher';
specialInstructor           varchar2(200) := 'specialInstructor';
--docId1                       varchar2(200) := 'docId';
remarks                     varchar2(200) := 'remarks';
checked                     varchar2(200) := 'checked';
studentSince                varchar2(200) := 'studentSince';
createdOn1                   varchar2(200) := 'createdOn';
parentName                  varchar2(200) := 'parentName';
createdBy1                   varchar2(200) := 'createdBy';
lastUpdatedBy1               varchar2(200) := 'lastUpdatedBy';
lastUpdatedOn1               varchar2(200) := 'lastUpdatedOn';
category                    varchar2(200) := 'category';
subject                     varchar2(200) := 'subject';
longTermObjective           varchar2(200) := 'longTermObjective';
shortTermObjective1         varchar2(200) := 'shortTermObjective1';
shortTermObjective2         varchar2(200) := 'shortTermObjective2';
shortTermObjective3         varchar2(200) := 'shortTermObjective3';
individualisedEducationPlan varchar2(200) := 'individualisedEducationPlan';
title                       varchar2(200) := 'title';
notes                    varchar2(200) := 'notes';
name                     varchar2(200) := 'name';
items                    varchar2(200) := 'items';
iepId                    varchar2(200) := 'iepId';
updateCheckList         varchar2(200) := 'updateCheckList';
itemId                    varchar2(200) := 'itemId';
fileId                    varchar2(200) := 'fileId';
fileName                    varchar2(200) := 'fileName';
contentType                    varchar2(200) := 'contentType';
files                    varchar2(200) := 'files';
objectiveType                    varchar2(200) := 'objectiveType';
objectiveNum                    varchar2(200) := 'objectiveNum';
pctProgress                    varchar2(200) := 'pctProgress';
status                    varchar2(200) := 'status';
startDate                    varchar2(200) := 'startDate';
plannedEndDate                    varchar2(200) := 'plannedEndDate';
actualEndDate                    varchar2(200) := 'actualEndDate';
objectives                    varchar2(200) := 'objectives';
auditLog                    varchar2(200) := 'auditLog';
userId                    varchar2(200) := 'userId';
userName                    varchar2(200) := 'userName';
roleId                    varchar2(200) := 'roleId';
roleDescription                    varchar2(200) := 'roleDescription';
roles                    varchar2(200) := 'roles';
observations                    varchar2(200) := 'observations';
swot                    varchar2(200) := 'swot';
photo                    varchar2(200) := 'photo';
query                     varchar2(200) := 'query';
refId                     varchar2(200) := 'refId';
calendar                  varchar2(200) := 'calendar';
kind                      varchar2(200) := 'kind';
c_new                     varchar2(200) := 'new';
startTime                 varchar2(200) := 'startTime';
endTime                   varchar2(200) := 'endTime';
participants              varchar2(200) := 'participants';
participantId             varchar2(200) := 'participantId';
required                  varchar2(200) := 'required';
location                  varchar2(200) := 'location';
conferenceLink            varchar2(200) := 'conferenceLink';
agenda                    varchar2(200) := 'agenda';
additionalInfo            varchar2(200) := 'additionalInfo';
referenceMaterials        varchar2(200) := 'referenceMaterials';
year        varchar2(200) := 'year';
month       varchar2(200) := 'month';
fromDate    varchar2(200) := 'fromDate';
toDate      varchar2(200) := 'toDate';
basicInfo   varchar2(200) := 'basicInfo';
c_type varchar2(200) := 'type';
--startDate                 varchar2(200) := 'startDate';
endDate                  varchar2(200) := 'endDate';
repeat                   varchar2(200) := 'repeat';
repeatFrequency          varchar2(200) := 'repeatFrequency';
repeatOn            varchar2(200) := 'repeatOn';
eventDate           varchar2(200) := 'eventDate';
events              varchar2(200) := 'events';
cancelled           varchar2(200) := 'cancelled';
startHour           varchar2(200) := 'startHour';
startMinute         varchar2(200) := 'startMinute';
durationHours       varchar2(200) := 'durationHours';
durationMinutes     varchar2(200) := 'durationMinutes';
calendarId          varchar2(200) := 'calendarId';
eventId             varchar2(200) := 'eventId';
studentInformation  varchar2(200) := 'studentInformation';
calendarEvents      varchar2(200) := 'calendarEvents';
pagenum             varchar2(200) := 'pagenum';
numrows             varchar2(200) := 'numrows';
consular            varchar2(200) := 'consular';
doctor              varchar2(200) := 'doctor';
agency              varchar2(200) := 'agency';
specialEducator     varchar2(200) := 'specialEducator';
therapist           varchar2(200) := 'therapist';
photoId              varchar2(200) := 'photoId';
general              varchar2(200) := 'general';
c_get                varchar2(200) := 'get';
c_post               varchar2(200) := 'post';
c_delete             varchar2(200) := 'delete' ;
c_public             varchar2(200) := 'PUBLIC';
tuples               varchar2(200) := 'tuples';
c_user               varchar2(200) := 'user';
checklist            varchar2(200) := 'checklist';
ieplist              varchar2(200) := 'ieplist';
iep                  varchar2(200) := 'iep';
emailNotification    varchar2(200) := 'emailNotification';
students             varchar2(200) := 'students';
student             varchar2(200) := 'student';
end;
/











































































































create or replace PROCEDURE            "API_HANDLER" 
(p_method in varchar2,
p_body_text in varchar2, 
p_api in varchar2, 
p_filter_1 in varchar2, 
p_filter_2 in varchar2, 
p_filter_3 in varchar2, 
p_stat out varchar2)
is
    l_auth varchar2(2000);
    unauth exception;
    r      api_log%rowtype;
    resp   json_element_t;
    resp_string varchar2(32000);
    resp_clob clob;
    o json_object_t;
    tf boolean := false;
    qry varchar2(32000);
    n number :=0;
    st tb_students%rowtype;
    procedure b
    is
    begin
        tf := true;
    end;
    function qp return json_object_t
    is
        o json_object_t;
        x varchar2(32000) := owa_util.get_cgi_env('QUERY_STRING');
    begin
        x := rtrim(x,chr(38))||chr(38);
        x := '{'||rtrim(replace(replace(x,'=',':"'),chr(38),'",'),',')|| '}';
        o := json_object_t.parse(x);
        qry := substr(x,1,400);
        return o;
    exception
        when others then o := new json_object_t;
        return o;
    end;
    PROCEDURE HTPPRN(PCLOB IN OUT NOCOPY CLOB) 
    IS
        V_TEMP VARCHAR2(32767);
        V_CLOB CLOB := PCLOB;
        V_AMOUNT NUMBER := 32000;
        V_OFFSET NUMBER := 1;
        V_LENGTH NUMBER := DBMS_LOB.GETLENGTH(PCLOB);
        V_RESULT CLOB;
    BEGIN
        WHILE V_LENGTH >= V_OFFSET LOOP
            V_TEMP:= DBMS_LOB.SUBSTR(V_CLOB, V_AMOUNT, V_OFFSET);
            HTP.PRN(V_TEMP);
            V_OFFSET := V_OFFSET + LENGTH(V_TEMP);
        END LOOP;

    END;
    procedure put_mime
    is
    begin
        OWA_UTIL.mime_header('application/json', FALSE);
        HTP.p('requestId: '||r.id);
        OWA_UTIL.http_header_close;
    end;
begin
begin
    --dbg(OWA_UTIL.get_cgi_env('Authorization'));
    r.id := sys_guid();
    r.start_ts := systimestamp;
    r.req := substr(p_body_text,1,4000);
    r.api := p_api;
    r.f1 := substr(p_filter_1,1,4000);
    r.f2 := substr(p_filter_2,1,4000);
    r.f3 := substr(p_filter_3,1,4000);
    r.meth := substr(p_method,1,20);

    if p_api = tags.student and p_filter_2 is not null
    then
        r.api := r.api || '/' ||p_filter_2;
    end if;

    p_stat := 200;
    if not (nvl(p_api,'*') = tags.general and p_method = tags.c_get)
    then
        begin
        r.user_id :=get_user_from_token;
        exception when others then raise unauth;
        end;
    else
        r.user_id := tags.c_public;
    end if;
    savepoint sp1;
    if p_api = tags.general and p_method = tags.c_get
    then
        if p_filter_1 = tags.tuples
        then
            resp := fn_get_tuples(p_filter_2,p_filter_3);
            b;
        end if;
    elsif p_api = tags.c_user and p_method = tags.c_get
    then
        resp := fn_get_user(p_filter_1);
        b;
    elsif p_api = tags.checklist and p_method = tags.c_get
    then
        resp := fn_get_checklist(p_filter_1,p_filter_2);
        b;
    elsif p_api= tags.ieplist and p_method = tags.c_get
    then
        resp := fn_get_checklist(tags.iep,p_filter_1);
        b;
    elsif p_api = tags.emailNotification and p_method = tags.c_post
    then
        resp := fn_send_email(json_object_t.parse(p_body_text));
        b;
    elsif p_api=tags.students and p_method = tags.c_get
    then
        resp:=fn_get_students(qp);
        b;
    elsif p_api = tags.calendar
    then
        resp := fn_get_student_calendar(null,qp);
        b;
    elsif p_api = tags.calendarEvents
    then
        if p_method = tags.c_get
        then
            if p_filter_1 is null
            then
                resp := fn_get_student_calendar_events(qp);
                b;
            else
                resp := fn_get_a_student_calendar_event(p_filter_1);
                b;
            end if;
        elsif p_method = tags.c_post
        then
            resp := fn_update_student_calendar_event
                (p_filter_1,
                json_object_t.parse(p_body_text));
            b;
        end if;
    elsif p_api= tags.student
    then
        if not (p_method = tags.c_post and p_filter_1 = tags.c_new)
        then
            global.validate_student(p_filter_1);
        end if;
        if p_method = tags.c_get
        then
            if p_filter_2 is null
            then
                resp := fn_get_a_student(p_filter_1,false);
                b;
            else
                if p_filter_2 = tags.basicInfo
                then
                    resp := fn_get_a_student(p_filter_1,true);
                    b;
                elsif p_filter_2 = tags.teachersCheckLists
                then
                    resp := fn_get_student_checklists(p_filter_1,'T',p_filter_3);
                    b;
                elsif p_filter_2 = tags.specialEducatorsCheckLists
                then
                    resp := fn_get_student_checklists(p_filter_1,'S',p_filter_3);
                    b;
                elsif p_filter_2 = tags.counselorsCheckLists
                then
                    resp := fn_get_student_checklists(p_filter_1,'C',p_filter_3);
                    b;
                elsif p_filter_2 = tags.parentsCheckLists
                then
                    resp := fn_get_student_checklists(p_filter_1,'P',p_filter_3);
                    b;
                elsif p_filter_2 = tags.individualisedEducationPlan
                then
                    resp := fn_get_student_iep(p_filter_1,p_filter_3);
                    b;
                elsif p_filter_2 in (tags.notes,tags.observations,tags.swot)
                then
                    resp := fn_get_student_notes(p_filter_1,p_filter_3, 
                        (case p_filter_2
                            when  tags.observations then 'O'
                            when tags.swot then 'S'
                            else 'N' end )
                        );
                    b;
                elsif p_filter_2 = tags.calendar
                then
                    resp := fn_get_student_calendar(p_filter_1,qp);
                    b;
                end if;
            end if;
        elsif p_method = tags.c_post
        then
            if p_filter_2 is null
            then
                resp := fn_create_a_student(p_filter_1, json_object_t.parse(p_body_text));
                b;
            end if;
            if p_filter_3 is not null
            then
                if p_filter_2 in (tags.specialEducatorsCheckLists,tags.counselorsCheckLists,tags.teachersCheckLists,tags.parentsCheckLists)
                then
                    resp := fn_create_student_checklist(p_filter_1, p_filter_3,json_element_t.parse(p_body_text));
                    b;
                elsif p_filter_2 in (tags.notes ,tags.observations,tags.swot)
                then
                    resp := fn_create_student_notes(p_filter_1,p_filter_3, 
                    (
                        case  p_filter_2 when tags.observations then 'O' 
                            when tags.swot then 'S' 
                            else 'N'
                        end )
                    , json_element_t.parse(p_body_text));
                    b;
                elsif p_filter_2 = tags.individualisedEducationPlan
                then
                    resp := fn_create_student_iep(p_filter_1,p_filter_3, json_element_t.parse(p_body_text));
                    b;
                elsif p_filter_2 = tags.calendar
                then
                    resp := fn_create_student_calendar(p_filter_1, p_filter_3, null, json_element_t.parse(p_body_text));
                    b;
                end if;
            end if;
        elsif p_method = tags.c_delete and p_filter_3 is not null
        then
            if p_filter_2 in (tags.specialEducatorsCheckLists,tags.counselorsCheckLists,tags.teachersCheckLists,tags.parentsCheckLists)
            then
                PR_DELETE_STUDENT_CHECKLIST(p_filter_1,p_filter_3);
                b;
            elsif p_filter_2 = tags.individualisedEducationPlan
            then
                PR_DELETE_STUDENT_IEP(p_filter_1,p_filter_3);
                b;
            elsif p_filter_2 in (tags.notes ,tags.observations,tags.swot)
            then
                pr_delete_student_notes(p_filter_1,p_filter_3);
                b;
            elsif p_filter_2 = tags.calendar
            then
                PR_DELETE_STUDENT_CALENDAR(p_filter_1,p_filter_3);
                b;
            end if;
        end if;
    end if;
    if not tf then
    global.raise_error('Invalid request URL');
    end if;
exception
    when unauth then
        p_stat := 401;
        r.err := l_auth;--OWA_UTIL.get_cgi_env('Authorization');
    when global.e_error
    then
        o := new json_object_t;
        o.put('error',global.g_error);
        r.err := substr(sqlerrm||' '||dbms_utility.FORMAT_ERROR_BACKTRACE,1,4000);
        resp := o;
        p_stat := 400;
        rollback to sp1;
    when others then
        p_stat := 500;
        r.err := substr(sqlerrm||' '||dbms_utility.FORMAT_ERROR_BACKTRACE,1,4000);
        rollback to sp1;
end;
if resp is not null then
begin
resp_string := resp.to_string();
exception when others then
    put_mime;
    resp_clob := resp.to_clob;
    HTPPRN(resp_clob);
    resp_string := null;
end;
end if;
if resp_string is not null then
    put_mime;
    r.res := substr(resp_string,1,30000);
    while resp_string is not null
    loop
        htp.prn(substr(resp_string,1,4000));
        resp_string := substr(resp_string,4001);
        n := n+1;
        if n > 1000 then exit; end if;
    end loop;
end if;
r.end_ts := systimestamp;
r.stat := p_stat;
r.query_params := qry; 
if nvl(p_api,'*') != tags.general or r.err is not null
then
begin insert into api_log values r;end;
end if;
end;
/
create or replace procedure dbg(p_txt in varchar2) is
begin
    insert into dbg_logs (ts,txt) values (systimestamp, p_txt);
end;
/
create or replace procedure            file_upload_form
is
begin
htp.p('<html><body>
<input type="file" id="fileInput" />
<button onclick="uploadFile()">Upload</button>
<script>
async function uploadFile() {
  const fileInput = document.getElementById(''fileInput'');
  const file = fileInput.files[0];
  if (!file) {
    alert(''Please select a file.'');
    return;
  }
  const formData = new FormData();
  formData.append(''file'', file);
  const headers = new Headers();
  headers.append(''file_name'', file.name);
  headers.append(''file_type'', file.type);

  try {
    const response = await fetch(''/ords/wksp_musee/files/upload'', {
      method: ''POST'',
      body: formData,
      headers: headers,
    });
    if (response.ok) {
        const result = await response.text();
        console.log(''done'',result);
      alert(''File uploaded successfully.'');
      console.log(response.text);
    } else {
      alert(''Failed to upload file.'');
    }
  } catch (error) {
    console.error(''Error uploading file:'', error);
  }
}
</script>
</body>
</html>
');
end;
/
create or replace PROCEDURE            "GET_OAUTH_TOKEN" 
(
--p_user_id in varchar2, p_password in varchar2, p_grant_type in varchar2,p_stat out varchar2
p_req in varchar2,
p_stat out varchar2
)
is
    l_auth varchar2(4000) ;--:= OWA_UTIL.get_cgi_env('Authorization');
    l_user  varchar2(2000);
    l_obj  json_object_t := new json_object_t;
    l_token varchar2(2000);
    unauth  exception;
    l_req   varchar2(32000) := p_req;
    o json_object_t;
begin
    --dbg('p_req '||p_req);
    --dbg('p_grant_type '||p_grant_type);
    begin
    o := json_object_t.parse(p_req);
    exception when others then
    l_req := replace(l_req,'=','":"');
    l_req := replace(l_req,chr(38),'","');
    l_req := '{"'||l_req||'"}';
    --dbms_output.put_line(l_req);
    o := json_object_t.parse(l_req);
    end;
    --dbms_output.put_line(o.get_string('grant_type'));
    --dbg('o==>'||o.to_string);
    if o.get_string('grant_type') in ('client_credentials','authorization_code','refresh_token') --and l_auth is not NULL
    then
        if o.get_string('client_id') is not null
        then
            l_auth := o.get_string('client_id') || ':' || o.get_string('client_secret');
        else
            l_auth := utl_raw.cast_to_varchar2(utl_encode.base64_decode(utl_raw.cast_to_raw(ltrim(OWA_UTIL.get_cgi_env('Authorization'),'Basic '))));
        end if;
        --dbg('l_auth==>'||l_auth);
        begin
        select  user_id
        into    l_user
        from    tb_users
        where   '#'||user_id||':'||api_auth_cred||'!' = '#'||l_auth||'!'
        and     rownum=1;
        exception
            when no_data_found
            then
                raise unauth;
        end;
        l_token := lower(sys_guid()||sys_guid());
        insert into tokens (token, exp_ts, user_id)
        values (l_token,systimestamp+1/24,l_user);
        delete tokens where exp_ts < systimestamp;
        l_obj.put('access_token',l_token);
        l_obj.put('refresh_token',lower(sys_guid));
        l_obj.put('token_type','bearer');
        l_obj.put('expires_in',3600);
        htp.p(l_obj.to_string());
    else
        raise unauth;
    end if;
exception
    when others
    then
        p_stat := 401;
end;
/
create or replace procedure            pdf_rep
(p_id in varchar2,p_download in varchar2)
is
x varchar2(32000);
n number :=0 ;
BEGIN
    OWA_UTIL.mime_header('text/html', FALSE);
    HTP.p('Access-Control-Allow-Origin: *');
    OWA_UTIL.http_header_close;
    for i in (select * from tb_students where id = p_id)
    loop
x := '<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Individualised Education Plan</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background-color: #f2f2f2;
        }
        .logo {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
        }
        .logo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
	<meta charset="utf-8">
	<title>
	</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
</head>
<body>
    <button onclick="printReport()">Print Report</button>
	<button onclick="convertHTMLtoPDF()">Download</button>
	<br>
	<div id="divID">
    <div class="logo">
    <img src="https://musee-app.netlify.app/logo.svg" alt="Logo">
    </div><h1>Individualised Education Plan : '|| i.student_name ||'</h1>
    <div class="header">
        <table>
            <tr>
                <th>Student Name</th>
                <td>'|| i.student_name ||'</td>
                <th>DOB</th>
                <td>' || to_char(i.dob,'DD Mon YYYY') ||'</td>
                <th>Class</th>
                <td>'|| i.class||'</td>
                <th>Division</th>
                <td>'||i.division||'</td>
            </tr>
        </table>
    </div>

    <table>
        <thead>
            <tr>
                <th>Category</th>
                <th>Subject</th>
                <th>Remarks</th>
                <th>Objective Type</th>
				<th>Objectives</th>
                <th>% Progress</th>
                <th>Status</th>
                <th>Start Date</th>
                <th>Planned End Date</th>
            </tr>
        </thead>
        <tbody id="reportBody">
        </tbody>
    </table>
	</div>
    <script>
        // Sample JSON data (replace with your JSON data)
        var jsonData = '||fn_get_student_iep(p_student_id=>p_id, p_plan_id=>null).to_string|| ';

function formatDate(dateString) {
    const options = { day: ''numeric'', month: ''short'', year: ''numeric'' };
    return new Date(dateString).toLocaleDateString(undefined, options);
}

        // Function to generate the HTML report
        function generateReport() {
            var reportBody = document.getElementById("reportBody");

            jsonData.forEach(function (item) {
                var row = document.createElement("tr");
                row.innerHTML = `
                    <td>${item.category}</td>
                    <td>${item.subject}</td>
                    <td>${item.remarks.text}</td>
                    <td>${item.objectives[0].objectiveType === ''L'' ? ''Long Term'' : ''Short Term''}</td>
					<td>${item.objectives.map(obj => obj.remarks.text).join(''<br>'')}</td>
                    <td>${item.objectives[0].pctProgress}%</td>
                    <td>${item.objectives[0].status === ''O'' ? ''Open'' : ''Completed''}</td>
					<td>${formatDate(item.objectives[0].startDate)}</td>
                    <td>${formatDate(item.objectives[0].plannedEndDate)}</td>
                `;

                reportBody.appendChild(row);
            });
        }

        // Function to print the report
        function printReport() {
            generateReport();
            window.print();
        }
		function convertHTMLtoPDF() {
			const { jsPDF } = window.jspdf;

			let doc = new jsPDF(''l'', ''mm'', [1500, 1400]);
			let pdfjs = document.querySelector(''#divID'');

			doc.html(pdfjs, {
				callback: function(doc) {
					doc.save(" ' || replace(i.student_name,' ','_') || '.pdf");
				},
				x: 150,
				y: 150
			});			
		}	
        // Initial call to generate the report
        generateReport();
        '|| 
        case when lower(p_download) = 'true' then 'convertHTMLtoPDF();' end
        ||'
    </script>
</body>
</html>
';
end loop;
    while x is not null
    loop
        htp.prn(substr(x,1,4000));
        x := substr(x,4001);
        n := n+1;
        if n > 1000 then exit; end if;
    end loop;

end;
/
create or replace procedure pr_audit_log(p_id in varchar2)
is
r tb_audit_log%rowtype;
begin
    r.last_updated_by := global.user_id;
    r.last_updated_on := sysdate;

    update tb_audit_log 
    set last_updated_by = r.last_updated_by,
        last_updated_on = r.last_updated_on
    where   id = p_id;
    if sql%rowcount = 0
    then
        r.id := p_id;
        r.created_by := global.user_id;
        r.created_on := sysdate;
        insert into tb_audit_log values r;
    end if;
end;
/
create or replace procedure pr_create_addl_info
(
    p_ref_id in varchar2,
    p_msg in json_array_t
)
is
o json_object_t;
r tb_addl_info%rowtype;
begin
    delete tb_addl_info where ref_id = p_ref_id;
    for i in 0 .. (p_msg.get_size - 1) loop
        o := TREAT (p_msg.get(i) as json_object_t);
        r.id := sys_guid();
        r.ref_id := p_ref_id;
        insert into tb_addl_info values r;
        pr_update_remarks(r.id,o);
    end loop;
end;
/
create or replace procedure            pr_create_student_iep_objectives
(
p_plan_id in varchar2,
p_obj  in JSON_ARRAY_T
)
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
r TB_STUDENT_IEP_OBJECTIVES%rowtype;
begin
    if p_obj is not null
    then
        delete TB_STUDENT_IEP_OBJECTIVES
        where  plan_id = p_plan_id;
        for i in 0 .. (p_obj.get_size - 1)
        loop
             o := TREAT ( (p_obj.get(i)) as json_object_t);
             r.id := sys_guid();
             r.plan_id := p_plan_id;
             r.obj_type := o.get_string(tags.objectiveType);
             if r.obj_type not in ('L','S') then global.raise_error('Invalid objectiveType '||r.obj_type); end if;
             r.obj_num  := o.get_string(tags.objectiveNum);
             r.pct_progress := o.get_string(tags.pctProgress);
             r.status := o.get_string(tags.status);
             --r.remarks := o.get_string(tags.remarks);
             r.start_Date := global.to_dt(o.get_string(tags.startDate));
             r.planned_End_Date := global.to_dt(o.get_string(tags.plannedEndDate));
             r.actual_End_Date := global.to_dt(o.get_string(tags.actualEndDate));
             insert into TB_STUDENT_IEP_OBJECTIVES values r;
             if o.has(tags.remarks)
             then
                pr_update_remarks(r.id, treat ((o.get(tags.remarks)) as json_object_t));
             end if;
        end loop;
    end if;
end;
/
create or replace procedure            PR_DELETE_STUDENT_CALENDAR
(
p_student_id in varchar2,
p_calendar_id in varchar2
) 
is
begin
   delete TB_STUDENT_CALENDAR where id = p_calendar_id and student_id = p_student_id;
   if sql%rowcount != 1
   then 
        global.raise_error('invalid id '||p_calendar_id);
    end if;
    delete TB_STUDENT_CALENDAR_PARTICIPANTS where calendar_id = p_calendar_id;
    delete TB_STUDENT_CALENDAR_EVENTS where calendar_id = p_calendar_id;
end;
/
create or replace procedure            PR_DELETE_STUDENT_CHECKLIST
(
p_student_id in varchar2,
p_checklist_id in varchar2
) 
is
begin
   delete TB_STUDENT_CHECKLISTS where checklist_id = p_checklist_id and student_id = p_student_id;
   if sql%rowcount != 1
   then 
        global.raise_error('invalid CheckList Id '||p_checklist_id);
    end if;
    delete TB_STUDENT_CHECKLIST_ITEMS where checklist_id = p_checklist_id and student_id = p_student_id;
end;
/
create or replace procedure            PR_DELETE_STUDENT_IEP
(
p_student_id in varchar2,
p_iep_id in varchar2
) 
is
begin
   delete TB_STUDENT_IEP_OBJECTIVES where plan_id in
   (select iep_id from TB_STUDENT_IEP b where b.iep_id = p_iep_id 
   and b.student_id = p_student_id);
   delete TB_STUDENT_IEP where iep_id = p_iep_id and student_id = p_student_id;
   if sql%rowcount != 1
   then 
        global.raise_error('invalid Iep Id '||p_iep_id);
    end if;
end;
/
create or replace procedure            PR_DELETE_STUDENT_NOTES
(
p_student_id in varchar2,
p_notes_id in varchar2
) 
is
begin
   delete TB_STUDENT_NOTES where id = p_notes_id and student_id = p_student_id;
   if sql%rowcount != 1
   then 
        global.raise_error('invalid id '||p_notes_id);
    end if;
end;
/
create or replace PROCEDURE              "PR_POST_LOGIN" 
is
l_user varchar2(200) := v('APP_USER');
begin
    update WKSP_MUSEE.tb_USERS set last_logged_in = sysdate where upper(user_id) = upper(l_user);
    if sql%rowcount = 0
    then
        insert into WKSP_MUSEE.tb_USERS (user_id, user_name, last_logged_in, authorized,api_auth_cred)
        values
        (l_user,l_user,sysdate,'N',sys_guid());
    end if;
end;
/
create or replace procedure pr_send_email
(
    p_to in varchar2,
    p_subject in varchar2,
    p_body_text in varchar2,
    p_body_html in varchar2
)
is
  l_resp          CLOB;
  l_url           VARCHAR2(4000) := 'https://api.elasticemail.com/v2/email/send';
  l_apikey        VARCHAR2(4000) := '9CFBEA3DDEEAD9C4493B4AB1D946C83DE53639E13BAE9C9F33468830403F98E4C458753E534DC8929DC2025EEC157D89';
  l_from          VARCHAR2(4000) := 'musee_app@outlook.com';
  l_fromName      VARCHAR2(4000) := 'Musee Notification';
  l_to            VARCHAR2(4000) := 'cv.ranjith@gmail.com';
  --l_subject       VARCHAR2(4000) := 'Test Notification';
  --l_bodyText      VARCHAR2(4000) := 'Test Notification';
  --l_bodyHtml      VARCHAR2(4000) := '<h1>Test Notification</h1><br><p> Hi There, Have a nice day </p>';
  l_isTransactional VARCHAR2(4000) := 'true';
  l_req_body      CLOB;
BEGIN
  l_req_body :=
    'apikey=' || UTL_URL.ESCAPE(l_apikey) || '&' ||
    'from=' || UTL_URL.ESCAPE(l_from) || '&' ||
    'fromName=' || UTL_URL.ESCAPE(l_fromName) || '&' ||
    'to=' || UTL_URL.ESCAPE(p_to) || '&' ||
    'subject=' || UTL_URL.ESCAPE(p_subject) || '&' ||
    'bodyText=' || UTL_URL.ESCAPE(p_body_Text) || '&' ||
    'bodyHtml=' || UTL_URL.ESCAPE(p_body_Html) || '&' ||
    'isTransactional=' || UTL_URL.ESCAPE(l_isTransactional);
  apex_web_service.g_request_headers(1).name := 'Content-Type';
  apex_web_service.g_request_headers(1).value := 'application/x-www-form-urlencoded';
  l_resp := apex_web_service.make_rest_request(
    p_url => l_url,
    p_http_method => 'POST',
    p_body => l_req_body
  );
  --DBMS_OUTPUT.PUT_LINE(l_resp);
  htp.prn(l_resp);
EXCEPTION
  WHEN OTHERS THEN
    --DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    htp.prn('error '||sqlerrm);
END;
/
create or replace procedure            pr_update_file
(
p_ref_id in varchar2,
p_files  in JSON_ARRAY_T
)
is
o JSON_OBJECT_t := new JSON_OBJECT_t;
a JSON_ARRAY_t := new JSON_ARRAY_T;
r tb_files%rowtype;
begin
    if p_files is not null
    then
        for i in 0 .. (p_files.get_size - 1)
        loop
             o := TREAT ( (p_files.get(i)) as json_object_t);
             r.id := o.get_string(tags.fileId);
             r.file_name := o.get_string(tags.fileName);
             r.content_type := o.get_string(tags.contentType);
             update tb_files
             set    ref_id = p_ref_id,
                    file_name = nvl(r.file_name,file_name),
                    content_type = nvl(r.content_type,content_type)
             where   id = r.id;
             if sql%rowcount = 0
             then
                 global.raise_error('Invalid file Id '||r.id);
             end if;
        end loop;
    end if;
end;
/
create or replace procedure            pr_update_remarks
(
p_ref_id in varchar2,
--p_remarks  in varchar2,
--p_title    in varchar2
p_remarks_obj in json_object_t
)
is
r tb_remarks%rowtype;
begin
    r.remarks := p_remarks_obj.get_string(tags.text);
    r.title := p_remarks_obj.get_string(tags.title);
    r.remarks_type := p_remarks_obj.get_string(tags.c_type);
    r.ref_id := p_ref_id;
    update tb_remarks set title = r.title, remarks = r.remarks, 
    remarks_type = r.remarks_type
    where ref_id = r.ref_id;
    if sql%rowcount = 0
    then
        r.id := sys_guid();
        insert into tb_remarks values r;
    end if;
end;
/






































Rem No sequence found to generate DDL.


  CREATE OR REPLACE EDITIONABLE SYNONYM ""."TB_CHECKLISTS" FOR ""."TB_STUDENT_CHECKLISTS";































































































create or replace TRIGGER WKSP_MUSEE.trg_tb_checklists
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_STUDENT_CHECKLISTS"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_counselor_observations
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_COUNSELOR_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_lookup
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_lookup
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_roles
BEFORE INSERT
   ON WKSP_MUSEE.tb_roles 
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_students
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_students
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_student_iep
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_student_iep
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER "WKSP_MUSEE".TRG_tb_student_notes
BEFORE INSERT
   ON WKSP_MUSEE.tb_student_notes
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_teacher_observations
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_TEACHER_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;
/
create or replace TRIGGER WKSP_MUSEE.trg_tb_USERS
BEFORE INSERT
   ON WKSP_MUSEE.tb_USERS
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER "WKSP_MUSEE".TRG_tm_checklists
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklists
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
create or replace TRIGGER "WKSP_MUSEE".trg_tm_checklist_details
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklist_details
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "VW_IDS" ("ID", "TABLE_NAME") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select id, 'tb_student_checklists' table_name from tb_student_checklists
union all select id, 'tb_student_iep' from tb_student_iep
union all select id, 'tb_student_notes' from tb_student_notes
union all select id, 'tb_students' from tb_students
union all select id, 'tb_student_calendar' from tb_student_calendar;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_COUNSELOR_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_LOOKUP" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_lookup
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_LOOKUP" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_ROLES" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_roles 
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_ROLES" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENTS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_students
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENTS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_CHECKLISTS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_STUDENT_CHECKLISTS"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_CHECKLISTS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENT_IEP" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_student_iep
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENT_IEP" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENT_NOTES" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_student_notes
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENT_NOTES" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_TEACHER_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_TEACHER_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_TEACHER_OBSERVATIONS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_USERS" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_USERS
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_USERS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TM_CHECKLISTS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklists
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TM_CHECKLISTS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TM_CHECKLIST_DETAILS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklist_details
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TM_CHECKLIST_DETAILS" ENABLE;
Rem No database link found to generate DDL.













































































































  CREATE UNIQUE INDEX "SYS_IL0000109072C00014$$" ON "API_LOG" (
  ;
  CREATE UNIQUE INDEX "SYS_C0041481" ON "API_LOG" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042708" ON "TB_ADDL_INFO" ("ID") 
  ;
  CREATE INDEX "IND_ADDL_INFO" ON "TB_ADDL_INFO" ("REF_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042282" ON "TB_AUDIT_LOG" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035685" ON "TB_COUNSELOR_OBSERVATIONS_NA" ("ID") 
  ;
  CREATE UNIQUE INDEX "SYS_IL0000094293C00004$$" ON "TB_COUNSELOR_OBSERVATIONS_NA" (
  ;
  CREATE INDEX "IND_TB_COUNSELOR_OBSERVATIONS" ON "TB_COUNSELOR_OBSERVATIONS_NA" ("STUDENT_ID", "TYPE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_COUNSELOR_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" ENABLE;

  CREATE UNIQUE INDEX "SYS_C0042064" ON "TB_FILES" ("ID") 
  ;
  CREATE UNIQUE INDEX "SYS_IL0000112297C00004$$" ON "TB_FILES" (
  ;
  CREATE INDEX "IND_FILES" ON "TB_FILES" ("REF_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_LOOKUP" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_lookup
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_LOOKUP" ENABLE;

  CREATE UNIQUE INDEX "SYS_C0042540" ON "TB_REMARKS" ("ID") 
  ;
  CREATE UNIQUE INDEX "SYS_IL0000114733C00004$$" ON "TB_REMARKS" (
  ;
  CREATE INDEX "IND_REMARKS" ON "TB_REMARKS" ("REF_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035633" ON "TB_ROLES" ("ID") 
  ;
  CREATE UNIQUE INDEX "IND_TB_ROLES" ON "TB_ROLES" ("ROLE_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_ROLES" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_roles 
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_ROLES" ENABLE;

  CREATE UNIQUE INDEX "IND_TB_STUDENTS" ON "TB_STUDENTS" ("STUDENT_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENTS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_students
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENTS" ENABLE;

  CREATE UNIQUE INDEX "SYS_IL0000116949C00022$$" ON "TB_STUDENTS_NA" (
  ;
  CREATE UNIQUE INDEX "SYS_IL0000116949C00011$$" ON "TB_STUDENTS_NA" (
  ;

  CREATE INDEX "IND_TB_STUDENT_CALENDAR_ST" ON "TB_STUDENT_CALENDAR" ("STUDENT_ID") 
  ;
  CREATE INDEX "IND_TB_STUDENT_CALENDAR_USER" ON "TB_STUDENT_CALENDAR" ("USER_ID") 
  ;
  CREATE UNIQUE INDEX "SYS_C0042706" ON "TB_STUDENT_CALENDAR" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042797" ON "TB_STUDENT_CALENDAR_EVENTS" ("ID") 
  ;
  CREATE INDEX "IND_TB_STUDENT_CALENDAR_DATES_CALENDAR_ID" ON "TB_STUDENT_CALENDAR_EVENTS" ("CALENDAR_ID") 
  ;

  CREATE INDEX "IND_CAL_PARTICIPANTS_CAL_ID" ON "TB_STUDENT_CALENDAR_PARTICIPANTS" ("CALENDAR_ID") 
  ;
  CREATE UNIQUE INDEX "SYS_C0042707" ON "TB_STUDENT_CALENDAR_PARTICIPANTS" ("ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_CHECKLISTS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_STUDENT_CHECKLISTS"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_CHECKLISTS" ENABLE;

  CREATE UNIQUE INDEX "SYS_C0042179" ON "TB_STUDENT_CHECKLIST_ITEMS" ("ID") 
  ;
  CREATE UNIQUE INDEX "IND_STUDENT_CHECKLISTS" ON "TB_STUDENT_CHECKLIST_ITEMS" ("STUDENT_ID", "CHECKLIST_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENT_IEP" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_student_iep
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENT_IEP" ENABLE;

  CREATE INDEX "IND_TB_STUDENT_IEP_OBJECTIVES" ON "TB_STUDENT_IEP_OBJECTIVES" ("PLAN_ID") 
  ;
  CREATE UNIQUE INDEX "SYS_C0042281" ON "TB_STUDENT_IEP_OBJECTIVES" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042097" ON "TB_STUDENT_NOTES" ("ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_STUDENT_NOTES" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_student_notes
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;
/
ALTER TRIGGER "TRG_TB_STUDENT_NOTES" ENABLE;

  CREATE UNIQUE INDEX "SYS_IL0000094204C00002$$" ON "TB_TEACHER_OBSERVATIONS_NA" (
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_TEACHER_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON "WKSP_MUSEE"."TB_TEACHER_OBSERVATIONS_NA"
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_TEACHER_OBSERVATIONS" ENABLE;

  CREATE UNIQUE INDEX "SYS_C0035634" ON "TB_USERS" ("ID") 
  ;
  CREATE UNIQUE INDEX "IND_TB_USERS" ON "TB_USERS" ("USER_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_USERS" 
BEFORE INSERT
   ON WKSP_MUSEE.tb_USERS
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TB_USERS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TM_CHECKLISTS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklists
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TM_CHECKLISTS" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TM_CHECKLIST_DETAILS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tm_checklist_details
   FOR EACH ROW
DECLARE
BEGIN
  if :new.id is null
  then
    :new.id := SYS_GUID;
  end if;
END;

/
ALTER TRIGGER "TRG_TM_CHECKLIST_DETAILS" ENABLE;

  CREATE UNIQUE INDEX "SYS_C0041440" ON "TOKENS" ("TOKEN") 
  ;



















































create or replace package body            global is
curr_student varchar2(200) := '*';
procedure raise_error(p_err in varchar2)
is
begin
    g_error := p_err;
    raise e_error;
end;
procedure validate_student(p_student_id in varchar2)
is
n number;
begin
   if p_student_id = curr_student then return; end if;
   select 1 into n from tb_students where id = p_student_id and rownum=1;
   curr_student := p_student_id;
exception when others then
   raise_error('invalid student id '||p_student_id);
end;
function  list_item(p_item_id in varchar2) return TM_CHECKLIST_DETAILS%rowtype result_cache
is
r  TM_CHECKLIST_DETAILS%rowtype;
begin
    for i in (select * from TM_CHECKLIST_DETAILS where id = p_item_id) loop
    return i;
    end loop;
    return r;
end;
function  category_item(p_category_id in varchar2) return TM_CHECKLISTS%rowtype result_cache
is
r TM_CHECKLISTS%rowtype;
begin
    for i in (select * from TM_CHECKLISTS where id = p_category_id) loop
    return i;
    end loop;
    return r;
end;
function to_dt (p_txt in varchar2) return date
is
d date;
t varchar2(2000);
begin
    begin d := p_txt; 
    exception when others then
        begin d := to_date(p_txt,'YYYY-MM-DD"T"HH24:MI:SS'); 
        exception when others then
            begin
                d := to_date(p_txt,'YYYY-MM-DD');
            exception when others then
                begin
                    t:=p_txt;
                    if p_txt like '%Z' then
                        t := substr(p_txt,1,length(p_txt)-1);
                    end if;
                    d := to_date(to_char(TO_TIMESTAMP(t,'YYYY-MM-DD"T"HH24:MI:SS.FF'),'YYYYMMDDHH24MISS'),'YYYYMMDDHH24MISS'); 
                 exception when others then
                null;
                end;
            end;
        end;
    end;
    return d;
end;
end;
/

































































































































































