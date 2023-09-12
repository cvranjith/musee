

    Schema
    Object Type
    Object Name
    Script

Script


  CREATE TABLE "TB_COUNSELOR_OBSERVATIONS" 
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

  CREATE TABLE "API_LOG" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"USER_ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"START_TS" TIMESTAMP (6), 
	"REQ" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"STAT" NUMBER, 
	"ERR" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"END_TS" TIMESTAMP (6), 
	"RES" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"API" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"F1" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"F2" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"F3" VARCHAR2(4000) COLLATE "USING_NLS_COMP", 
	"METH" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "DBG_LOGS" 
   (	"TS" TIMESTAMP (6), 
	"TXT" VARCHAR2(2000) COLLATE "USING_NLS_COMP"
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
	"VAL" VARCHAR2(200) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;

  CREATE TABLE "TB_ROLES" 
   (	"ID" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
	"ROLE_ID" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"ROLE_DESCRIPTION" VARCHAR2(200) COLLATE "USING_NLS_COMP", 
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

  CREATE INDEX "IND_TB_COUNSELOR_OBSERVATIONS" ON "TB_COUNSELOR_OBSERVATIONS" ("STUDENT_ID", "TYPE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_counselor_observations
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
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
  :new.last_updated_by := v('APP_USER');
  :new.last_updated_on := sysdate;
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
  if o.has(tags.files)
  then 
    pr_update_file(p_checklist_id, treat ((o.get(tags.files)) as json_array_t));
  end if;
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
    if o.has(tags.remarks)
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
create or replace function            fn_get_a_student(
    p_id varchar2
) return json_element_t
is
o json_object_t := new JSON_OBJECT_t;
begin
    for i in 
    (
        select * from TB_STUDENTS
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
        o.put(tags.studentSince,i.student_since);
        --o.put(tags.createdOn,i.created_on);
        --o.put(tags.createdBy,i.created_by);
        --o.put(tags.lastUpdatedBy,i.last_updated_by);
        --o.put(tags.lastUpdatedOn,i.last_updated_on);
        o.put(tags.teachersCheckLists,fn_get_student_checklists(p_id,'T',null));
        o.put(tags.specialEducatorsCheckLists,fn_get_student_checklists(p_id,'S',null));
        o.put(tags.counselorsCheckLists,fn_get_student_checklists(p_id,'C',null));
        o.put(tags.individualisedEducationPlan,fn_get_student_iep(p_id));
        o.put(tags.notes,fn_get_student_notes(p_id,null,'N'));
        o.put(tags.observations,fn_get_student_notes(p_id,null,'O'));
        o.put(tags.swot,fn_get_student_notes(p_id,null,'S'));
        o.put(tags.photo,fn_get_files(i.photo_id));
        o.put(tags.auditLog, fn_audit_log(i.id));
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
begin
    for i in 
    (
        select *
        from TM_CHECKLISTS 
        where lower(section) = decode(lower(p_section),'all', lower(section), lower(tcl),'t',lower(ssl),'s',lower(ccl),'c',p_section)
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
        o.put(tags.text,i.remarks);
    end loop;
    return o;
end;
/
create or replace function            fn_get_students(
    p_pagenum in number,
    p_num_rows in number,
    p_query in varchar2,
    p_user in varchar2 
) return json_element_t
is
l_res varchar2(32000);
a json_array_t := new json_array_t;
o json_object_t := new JSON_OBJECT_t;
l_pagenum number := nvl(p_pagenum,1);
l_num_rows number := nvl(p_num_rows,50);
q json_object_t;
r tb_students%rowtype;
qry varchar2(32000);
begin
    if p_query is not null then
    BEGIN
        q := json_object_t.parse(p_query);
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
    for i in 
    (
        select * from
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
        o := new JSON_OBJECT_t;
        o.put(tags.id,i.id);
        o.put(tags.studentId,i.student_id);
        o.put(tags.studentName,i.student_name);
        o.put(tags.class,i.class);
        o.put(tags.division,i.division);
        o.put(tags.dob,i.dob);
        o.put(tags.classTeacher,i.class_teacher);
        o.put(tags.specialInstructor,i.special_instructor);
        --o.put('studentSince',i.student_since);
        a.append(o);
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
begin
    for j in (
        select b.checklist_name, b.ord, a.*
        from tb_student_checklists a,
        tm_checklists b
        where b.id = a.CHECKLIST_ID
        and b.section= p_section 
        and b.id = nvl(p_checklist_id,b.id)
        and a.student_id = p_student_id
        order by b.ord)
    loop
        o1 := new JSON_OBJECT_t;
        o1.put(tags.id,j.checklist_id);
        o1.put(tags.checkListname,j.checklist_name);
        o1.put(tags.ord,j.ord);
        o1.put(tags.remarks,fn_get_remarks(j.id));

        --o1.put(tags.docId,j.doc_id);
        --o1.put(tags.remarks,j.remarks);

        --o1.put(tags.createdby,j.created_by);
        --o1.put(tags.createdOn,j.created_on);
        --o1.put(tags.lastUpdatedby,j.last_updated_by);
        --o1.put(tags.lastUpdatedOn,j.last_updated_on);
        o1.put(tags.files,fn_get_files(j.checklist_id));
        o1.put(tags.auditLog, fn_audit_log(j.id));
        a1 := new json_array_t;
        for k in (select * from TM_CHECKLIST_DETAILS where checklist_id = j.checklist_id order by ord)
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

                --o2.put(tags.createdby,l.created_by);
                --o2.put(tags.createdOn,l.created_on);
                --o2.put(tags.lastUpdatedby,l.last_updated_by);
                --o2.put(tags.lastUpdatedOn,l.last_updated_on);
                --remarks := fn_get_remarks(l.id); 
                --o2.put(tags.title, remarks.title);
                --o2.put(tags.remarks, remarks.remarks);
                --o2.put(tags.files, )
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
create or replace function            fn_get_student_iep(p_id in varchar2, p_plan_id in varchar2 :=null)
return json_element_t
is
io JSON_OBJECT_t := new JSON_OBJECT_t;
iep JSON_ARRAY_t := new JSON_ARRAY_T;
obj JSON_OBJECT_t := new JSON_OBJECT_t;
aobj JSON_ARRAY_t := new JSON_ARRAY_T;
begin
    for j in (select * from TB_STUDENT_IEP where student_id = p_id 
    and iep_id = nvl(p_plan_id,iep_id)
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

































































  CREATE INDEX "IND_FILES" ON "TB_FILES" ("REF_ID") 
  ;

  CREATE INDEX "IND_REMARKS" ON "TB_REMARKS" ("REF_ID") 
  ;

  CREATE UNIQUE INDEX "IND_STUDENT_CHECKLISTS" ON "TB_STUDENT_CHECKLIST_ITEMS" ("STUDENT_ID", "CHECKLIST_ID") 
  ;

  CREATE INDEX "IND_TB_COUNSELOR_OBSERVATIONS" ON "TB_COUNSELOR_OBSERVATIONS" ("STUDENT_ID", "TYPE") 
  ;

  CREATE UNIQUE INDEX "IND_TB_ROLES" ON "TB_ROLES" ("ROLE_ID") 
  ;

  CREATE UNIQUE INDEX "IND_TB_STUDENTS" ON "TB_STUDENTS" ("STUDENT_ID") 
  ;

  CREATE INDEX "IND_TB_STUDENT_IEP_OBJECTIVES" ON "TB_STUDENT_IEP_OBJECTIVES" ("PLAN_ID") 
  ;

  CREATE UNIQUE INDEX "IND_TB_USERS" ON "TB_USERS" ("USER_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035633" ON "TB_ROLES" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035634" ON "TB_USERS" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035685" ON "TB_COUNSELOR_OBSERVATIONS" ("ID") 
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
query                    varchar2(200) := 'query';
--createdBy                    varchar2(200) := 'createdBy';
--createdBy                    varchar2(200) := 'createdBy';
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
    o json_object_t;
    tf boolean := false;
    procedure b
    is
    begin
        tf := true;
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

    p_stat := 200;
    begin
    r.user_id :=get_user_from_token;
    exception when others then raise unauth;
    end;
    savepoint sp1;
    if p_api = 'user' and p_method = 'get'
    then
        resp := fn_get_user(p_filter_1);
        b;
    elsif p_api='checklist' and p_method = 'get'
    then
        resp := fn_get_checklist(p_filter_1,p_filter_2);
        b;
    elsif p_api='ieplist' and p_method = 'get'
    then
        resp := fn_get_checklist('iep',p_filter_1);
        b;
    elsif p_api='students' and p_method = 'get'
    then
        resp:=fn_get_students(p_filter_1,p_filter_2,p_filter_3,r.user_id);
        b;
    elsif p_api='student'
    then
        global.validate_student(p_filter_1);
        if p_method = 'get'
        then
            if p_filter_2 is null
            then
                resp := fn_get_a_student(p_filter_1);
                b;
            else 
                if p_filter_2 = tags.teachersCheckLists
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
                end if;
            end if;
        elsif p_method = 'post' and p_filter_3 is not null
        then
            if p_filter_2 in (tags.specialEducatorsCheckLists,tags.counselorsCheckLists,tags.teachersCheckLists)
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
            end if;
        elsif p_method = 'delete' and p_filter_3 is not null
        then
            if p_filter_2 in (tags.specialEducatorsCheckLists,tags.counselorsCheckLists,tags.teachersCheckLists)
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
resp_string := resp.to_string();
end if;
if resp_string is not null then
    r.res := substr(resp_string,1,4000);
    while resp_string is not null
    loop
        htp.prn(substr(resp_string,1,4000));
        resp_string := substr(resp_string,4001);
    end loop;
end if;
r.end_ts := systimestamp;
r.stat := p_stat;
begin insert into api_log values r;end;
null;
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
    dbg('p_req '||p_req);
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
    if o.get_string('grant_type') in ('client_credentials','authorization_code') --and l_auth is not NULL
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
    r.ref_id := p_ref_id;
    update tb_remarks set title = r.title, remarks = r.remarks
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
   ON WKSP_MUSEE.tb_counselor_observations
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
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
  :new.last_updated_by := v('APP_USER');
  :new.last_updated_on := sysdate;
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

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_counselor_observations
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
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
  :new.last_updated_by := v('APP_USER');
  :new.last_updated_on := sysdate;
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
















































































  CREATE UNIQUE INDEX "SYS_C0041481" ON "API_LOG" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0042282" ON "TB_AUDIT_LOG" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0035685" ON "TB_COUNSELOR_OBSERVATIONS" ("ID") 
  ;
  CREATE UNIQUE INDEX "SYS_IL0000094293C00004$$" ON "TB_COUNSELOR_OBSERVATIONS" (
  ;
  CREATE INDEX "IND_TB_COUNSELOR_OBSERVATIONS" ON "TB_COUNSELOR_OBSERVATIONS" ("STUDENT_ID", "TYPE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_TB_COUNSELOR_OBSERVATIONS" 
BEFORE INSERT OR UPDATE
   ON WKSP_MUSEE.tb_counselor_observations
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

  CREATE UNIQUE INDEX "SYS_IL0000093840C00022$$" ON "TB_STUDENTS" (
  ;
  CREATE UNIQUE INDEX "SYS_IL0000093840C00011$$" ON "TB_STUDENTS" (
  ;
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
  if :new.created_by is null
  then
      :new.created_by := v('APP_USER');
  end if;
  if :new.created_on is null
  then
      :new.created_on := sysdate;
  end if;
  :new.last_updated_by := v('APP_USER');
  :new.last_updated_on := sysdate;
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
begin
    begin d := p_txt; 
    exception when others then
        begin d := to_date(p_txt,'YYYY-MM-DD"T"HH24:MI:SS'); 
            begin
                d := to_date(p_txt,'YYYY-MM-DD');
            exception when others then
                null;
            end;
        end;
    end;
    return d;
end;
end;
/

