-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-12-04 21:39:59 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ATENDIMENTO 
    ( 
     cd_atendimento      NUMBER (6)  NOT NULL , 
     ds_tipo_atendimento VARCHAR2 (20)  NOT NULL , 
     dt_atendimento      DATE  NOT NULL , 
     nm_profissional     VARCHAR2 (100)  NOT NULL , 
     ds_observacao       VARCHAR2 (200) , 
     CRIANCA_cd_crianca  NUMBER (6)  NOT NULL 
    ) 
;

ALTER TABLE ATENDIMENTO 
    ADD CONSTRAINT ATENDIMENTO_PK PRIMARY KEY ( cd_atendimento ) ;

CREATE TABLE ATIVIDADE 
    ( 
     VOLUNTARIO_cd_voluntario NUMBER (6)  NOT NULL , 
     cd_atividade             NUMBER (6)  NOT NULL , 
     nm_atividade             VARCHAR2 (80)  NOT NULL , 
     dt_atividade             DATE  NOT NULL , 
     ds_atividade             VARCHAR2 (200) 
    ) 
;

ALTER TABLE ATIVIDADE 
    ADD CONSTRAINT ATIVIDADE_PK PRIMARY KEY ( cd_atividade ) ;

CREATE TABLE CRIANCA 
    ( 
     cd_crianca                 NUMBER (6)  NOT NULL , 
     nm_crianca                 VARCHAR2 (100)  NOT NULL , 
     dt_nascimento              DATE  NOT NULL , 
     ic_sexo                    CHAR (1)  NOT NULL , 
     nm_escola                  VARCHAR2 (80) , 
     nm_serie                   VARCHAR2 (30) , 
     ds_situacao_familiar       VARCHAR2 (200) , 
     RESPONSAVEL_cd_responsavel NUMBER (6)  NOT NULL 
    ) 
;

ALTER TABLE CRIANCA 
    ADD CONSTRAINT CRIANCA_PK PRIMARY KEY ( cd_crianca ) ;

CREATE TABLE CRIANCA_ATIVIDADE 
    ( 
     CRIANCA_cd_crianca     NUMBER (6)  NOT NULL , 
     ATIVIDADE_cd_atividade NUMBER (6)  NOT NULL , 
     ic_presenca            CHAR (1)  NOT NULL 
    ) 
;

ALTER TABLE CRIANCA_ATIVIDADE 
    ADD CONSTRAINT CRIANCA_ATIVIDADE_PK PRIMARY KEY ( CRIANCA_cd_crianca, ATIVIDADE_cd_atividade ) ;

CREATE TABLE RESPONSAVEL 
    ( 
     cd_responsavel          NUMBER (6)  NOT NULL , 
     nm_responsavel          VARCHAR2 (100)  NOT NULL , 
     ds_parentesco           VARCHAR2 (30)  NOT NULL , 
     cd_telefone_responsavel VARCHAR2 (20)  NOT NULL , 
     cd_email_responsavel    VARCHAR2 (80) , 
     ds_endereco_responsavel VARCHAR2 (200) 
    ) 
;

ALTER TABLE RESPONSAVEL 
    ADD CONSTRAINT RESPONSAVEL_PK PRIMARY KEY ( cd_responsavel ) ;

CREATE TABLE VOLUNTARIO 
    ( 
     cd_voluntario          NUMBER (6)  NOT NULL , 
     nm_voluntario          VARCHAR2 (100)  NOT NULL , 
     nm_area_atuacao        VARCHAR2 (80)  NOT NULL , 
     ds_disponibilidade     VARCHAR2 (50) , 
     cd_telefone_voluntario VARCHAR2 (20)  NOT NULL , 
     cd_email_voluntario    VARCHAR2 (80) , 
     ds_contato_voluntario  VARCHAR2 (50) 
    ) 
;

ALTER TABLE VOLUNTARIO 
    ADD CONSTRAINT VOLUNTARIO_PK PRIMARY KEY ( cd_voluntario ) ;

ALTER TABLE ATENDIMENTO 
    ADD CONSTRAINT ATENDIMENTO_CRIANCA_FK FOREIGN KEY 
    ( 
     CRIANCA_cd_crianca
    ) 
    REFERENCES CRIANCA 
    ( 
     cd_crianca
    ) 
;

ALTER TABLE ATIVIDADE 
    ADD CONSTRAINT ATIVIDADE_VOLUNTARIO_FK FOREIGN KEY 
    ( 
     VOLUNTARIO_cd_voluntario
    ) 
    REFERENCES VOLUNTARIO 
    ( 
     cd_voluntario
    ) 
;

ALTER TABLE CRIANCA_ATIVIDADE 
    ADD CONSTRAINT CRIANCA_ATIVIDADE_ATIVIDADE_FK FOREIGN KEY 
    ( 
     ATIVIDADE_cd_atividade
    ) 
    REFERENCES ATIVIDADE 
    ( 
     cd_atividade
    ) 
;

ALTER TABLE CRIANCA_ATIVIDADE 
    ADD CONSTRAINT CRIANCA_ATIVIDADE_CRIANCA_FK FOREIGN KEY 
    ( 
     CRIANCA_cd_crianca
    ) 
    REFERENCES CRIANCA 
    ( 
     cd_crianca
    ) 
;

ALTER TABLE CRIANCA 
    ADD CONSTRAINT CRIANCA_RESPONSAVEL_FK FOREIGN KEY 
    ( 
     RESPONSAVEL_cd_responsavel
    ) 
    REFERENCES RESPONSAVEL 
    ( 
     cd_responsavel
    ) 
;

--validacoes
ALTER TABLE CRIANCA
ADD CONSTRAINT CK_CRIANCA_SEXO
CHECK (ic_sexo IN ('M','F'));

ALTER TABLE CRIANCA_ATIVIDADE
ADD CONSTRAINT CK_PRESENCA
CHECK (ic_presenca IN ('S','N'));




-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
