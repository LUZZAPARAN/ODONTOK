toc.dat                                                                                             0000600 0004000 0002000 00000045055 14441642124 0014452 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       
                    {            odontok    15.2    15.2 8    Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         \           1262    17212    odontok    DATABASE     z   CREATE DATABASE odontok WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE odontok;
                postgres    false                     2615    17213    odontok    SCHEMA        CREATE SCHEMA odontok;
    DROP SCHEMA odontok;
                postgres    false         ]           0    0    SCHEMA odontok    COMMENT     H   COMMENT ON SCHEMA odontok IS 'Base de datos para el proyecto Odonto k';
                   postgres    false    6         �            1255    17214    audi_patient_fun()    FUNCTION       CREATE FUNCTION odontok.audi_patient_fun() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
	BEGIN 
		IF(TG_OP='UPDATE') THEN
			INSERT INTO ODONTOK.AUDI_PATIENT(CONSECUTIVO, COD_PATIENT, COD_DOCUMENT_TYPE, COD_BLOOD_TYPE, NAME_PATIENT, 
											 LAST_NAME_PATIENT,NUMBER_DOCUMENT,BIRTH_DATE,PHONE,EMAIL,REGISTER_DATE,ACTION_AUDI)
			VALUES (DEFAULT, OLD.COD_PATIENT, OLD.COD_DOCUMENT_TYPE,OLD.COD_BLOOD_TYPE,OLD.NAME_PATIENT,OLD.LAST_NAME_PATIENT,
					OLD.NUMBER_DOCUMENT,OLD.BIRTH_DATE,OLD.PHONE,OLD.EMAIL,current_timestamp(0),'U' );
			RETURN NEW;
		ELSIF(TG_OP='DELETE') THEN
			INSERT INTO ODONTOK.AUDI_PATIENT(CONSECUTIVO, COD_PATIENT, COD_DOCUMENT_TYPE, COD_BLOOD_TYPE, NAME_PATIENT, 
											 LAST_NAME_PATIENT,NUMBER_DOCUMENT,BIRTH_DATE,PHONE,EMAIL,REGISTER_DATE,ACTION_AUDI)
			VALUES (DEFAULT, OLD.COD_PATIENT, OLD.COD_DOCUMENT_TYPE,OLD.COD_BLOOD_TYPE,OLD.NAME_PATIENT,OLD.LAST_NAME_PATIENT,
					OLD.NUMBER_DOCUMENT,OLD.BIRTH_DATE,OLD.PHONE,OLD.EMAIL,current_timestamp(0),'D' );
			RETURN OLD;
		END IF;
   END;
 $$;
 *   DROP FUNCTION odontok.audi_patient_fun();
       odontok          postgres    false    6         �            1259    17215    audi_patient    TABLE     �  CREATE TABLE odontok.audi_patient (
    consecutivo integer NOT NULL,
    cod_patient integer,
    cod_document_type integer,
    cod_blood_type integer,
    name_patient character varying(30),
    last_name_patient character varying(30),
    number_document character varying(10),
    birth_date date,
    phone character varying(15),
    email character varying(50),
    register_date timestamp without time zone,
    action_audi character(1)
);
 !   DROP TABLE odontok.audi_patient;
       odontok         heap    postgres    false    6         �            1259    17218    audi_patient_consecutivo_seq    SEQUENCE     �   CREATE SEQUENCE odontok.audi_patient_consecutivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE odontok.audi_patient_consecutivo_seq;
       odontok          postgres    false    215    6         ^           0    0    audi_patient_consecutivo_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE odontok.audi_patient_consecutivo_seq OWNED BY odontok.audi_patient.consecutivo;
          odontok          postgres    false    216         �            1259    17219    seq_blood_type    SEQUENCE     {   CREATE SEQUENCE odontok.seq_blood_type
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE odontok.seq_blood_type;
       odontok          postgres    false    6         �            1259    17220 
   blood_type    TABLE     �   CREATE TABLE odontok.blood_type (
    cod_blood_type integer DEFAULT nextval('odontok.seq_blood_type'::regclass) NOT NULL,
    blood_type character varying(5),
    CONSTRAINT nn_blood_type CHECK ((blood_type IS NOT NULL))
);
    DROP TABLE odontok.blood_type;
       odontok         heap    postgres    false    217    6         �            1259    17225    document_type    TABLE     �   CREATE TABLE odontok.document_type (
    cod_document_type integer NOT NULL,
    name_document_type character varying(40),
    CONSTRAINT nn_name_document_type CHECK ((name_document_type IS NOT NULL))
);
 "   DROP TABLE odontok.document_type;
       odontok         heap    postgres    false    6         �            1259    17229    seq_patient    SEQUENCE     x   CREATE SEQUENCE odontok.seq_patient
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE odontok.seq_patient;
       odontok          postgres    false    6         �            1259    17230    patient    TABLE     �  CREATE TABLE odontok.patient (
    cod_patient integer DEFAULT nextval('odontok.seq_patient'::regclass) NOT NULL,
    cod_document_type integer,
    cod_blood_type integer,
    name_patient character varying(30),
    last_name_patient character varying(30),
    number_document character varying(10),
    birth_date date,
    phone character varying(15),
    email character varying(50),
    CONSTRAINT nn_birth_date CHECK ((birth_date IS NOT NULL)),
    CONSTRAINT nn_last_name_patient CHECK ((last_name_patient IS NOT NULL)),
    CONSTRAINT nn_name_patient CHECK ((name_patient IS NOT NULL)),
    CONSTRAINT nn_number_document CHECK ((number_document IS NOT NULL)),
    CONSTRAINT nn_phone CHECK ((phone IS NOT NULL))
);
    DROP TABLE odontok.patient;
       odontok         heap    postgres    false    220    6         �            1259    17239    pocument_type_seq    SEQUENCE     }   CREATE SEQUENCE odontok.pocument_type_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE odontok.pocument_type_seq;
       odontok          postgres    false    6         �            1259    17240    seq_procedure    SEQUENCE     z   CREATE SEQUENCE odontok.seq_procedure
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE odontok.seq_procedure;
       odontok          postgres    false    6         �            1259    17241 	   procedure    TABLE     C  CREATE TABLE odontok.procedure (
    cod_procedure integer DEFAULT nextval('odontok.seq_procedure'::regclass) NOT NULL,
    name_procedure character varying(100),
    description_procedure character varying(200),
    state_procedure character(1),
    CONSTRAINT ck_state_procedure CHECK ((state_procedure = ANY (ARRAY['A'::bpchar, 'I'::bpchar]))),
    CONSTRAINT nn_description_procedure CHECK ((description_procedure IS NOT NULL)),
    CONSTRAINT nn_name_procedure CHECK ((name_procedure IS NOT NULL)),
    CONSTRAINT nn_state_procedure CHECK ((state_procedure IS NOT NULL))
);
    DROP TABLE odontok.procedure;
       odontok         heap    postgres    false    223    6         �            1259    17249 	   prole_seq    SEQUENCE     u   CREATE SEQUENCE odontok.prole_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE odontok.prole_seq;
       odontok          postgres    false    6         �            1259    17250 	   puser_seq    SEQUENCE     u   CREATE SEQUENCE odontok.puser_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE odontok.puser_seq;
       odontok          postgres    false    6         �            1259    17251    role    TABLE     �   CREATE TABLE odontok.role (
    cod_role integer NOT NULL,
    name_role character varying(30),
    CONSTRAINT nn_name_role CHECK ((name_role IS NOT NULL))
);
    DROP TABLE odontok.role;
       odontok         heap    postgres    false    6         �            1259    17255    user    TABLE     �  CREATE TABLE odontok."user" (
    cod_user integer DEFAULT nextval('odontok.puser_seq'::regclass) NOT NULL,
    cod_role integer NOT NULL,
    cod_document_type integer,
    username character varying(30),
    user_last_name character varying(30),
    document_number character varying(15),
    usser character varying(20),
    password_user character varying(50),
    state character(1),
    CONSTRAINT ch_state CHECK ((state = ANY (ARRAY['A'::bpchar, 'I'::bpchar]))),
    CONSTRAINT nn_password_user CHECK ((password_user IS NOT NULL)),
    CONSTRAINT nn_user_last_name CHECK ((user_last_name IS NOT NULL)),
    CONSTRAINT nn_username CHECK ((username IS NOT NULL))
);
    DROP TABLE odontok."user";
       odontok         heap    postgres    false    226    6         �           2604    17263    audi_patient consecutivo    DEFAULT     �   ALTER TABLE ONLY odontok.audi_patient ALTER COLUMN consecutivo SET DEFAULT nextval('odontok.audi_patient_consecutivo_seq'::regclass);
 H   ALTER TABLE odontok.audi_patient ALTER COLUMN consecutivo DROP DEFAULT;
       odontok          postgres    false    216    215         I          0    17215    audi_patient 
   TABLE DATA           �   COPY odontok.audi_patient (consecutivo, cod_patient, cod_document_type, cod_blood_type, name_patient, last_name_patient, number_document, birth_date, phone, email, register_date, action_audi) FROM stdin;
    odontok          postgres    false    215       3401.dat L          0    17220 
   blood_type 
   TABLE DATA           A   COPY odontok.blood_type (cod_blood_type, blood_type) FROM stdin;
    odontok          postgres    false    218       3404.dat M          0    17225    document_type 
   TABLE DATA           O   COPY odontok.document_type (cod_document_type, name_document_type) FROM stdin;
    odontok          postgres    false    219       3405.dat O          0    17230    patient 
   TABLE DATA           �   COPY odontok.patient (cod_patient, cod_document_type, cod_blood_type, name_patient, last_name_patient, number_document, birth_date, phone, email) FROM stdin;
    odontok          postgres    false    221       3407.dat R          0    17241 	   procedure 
   TABLE DATA           k   COPY odontok.procedure (cod_procedure, name_procedure, description_procedure, state_procedure) FROM stdin;
    odontok          postgres    false    224       3410.dat U          0    17251    role 
   TABLE DATA           4   COPY odontok.role (cod_role, name_role) FROM stdin;
    odontok          postgres    false    227       3413.dat V          0    17255    user 
   TABLE DATA           �   COPY odontok."user" (cod_user, cod_role, cod_document_type, username, user_last_name, document_number, usser, password_user, state) FROM stdin;
    odontok          postgres    false    228       3414.dat _           0    0    audi_patient_consecutivo_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('odontok.audi_patient_consecutivo_seq', 2, true);
          odontok          postgres    false    216         `           0    0    pocument_type_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('odontok.pocument_type_seq', 104, true);
          odontok          postgres    false    222         a           0    0 	   prole_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('odontok.prole_seq', 105, true);
          odontok          postgres    false    225         b           0    0 	   puser_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('odontok.puser_seq', 109, true);
          odontok          postgres    false    226         c           0    0    seq_blood_type    SEQUENCE SET     ?   SELECT pg_catalog.setval('odontok.seq_blood_type', 108, true);
          odontok          postgres    false    217         d           0    0    seq_patient    SEQUENCE SET     <   SELECT pg_catalog.setval('odontok.seq_patient', 105, true);
          odontok          postgres    false    220         e           0    0    seq_procedure    SEQUENCE SET     >   SELECT pg_catalog.setval('odontok.seq_procedure', 118, true);
          odontok          postgres    false    223         �           2606    17265    audi_patient pk_audi_patient 
   CONSTRAINT     d   ALTER TABLE ONLY odontok.audi_patient
    ADD CONSTRAINT pk_audi_patient PRIMARY KEY (consecutivo);
 G   ALTER TABLE ONLY odontok.audi_patient DROP CONSTRAINT pk_audi_patient;
       odontok            postgres    false    215         �           2606    17267    blood_type pk_blood_type 
   CONSTRAINT     c   ALTER TABLE ONLY odontok.blood_type
    ADD CONSTRAINT pk_blood_type PRIMARY KEY (cod_blood_type);
 C   ALTER TABLE ONLY odontok.blood_type DROP CONSTRAINT pk_blood_type;
       odontok            postgres    false    218         �           2606    17269 "   document_type pk_cod_document_type 
   CONSTRAINT     p   ALTER TABLE ONLY odontok.document_type
    ADD CONSTRAINT pk_cod_document_type PRIMARY KEY (cod_document_type);
 M   ALTER TABLE ONLY odontok.document_type DROP CONSTRAINT pk_cod_document_type;
       odontok            postgres    false    219         �           2606    17271    patient pk_cod_patient 
   CONSTRAINT     ^   ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT pk_cod_patient PRIMARY KEY (cod_patient);
 A   ALTER TABLE ONLY odontok.patient DROP CONSTRAINT pk_cod_patient;
       odontok            postgres    false    221         �           2606    17273    procedure pk_cod_procedure 
   CONSTRAINT     d   ALTER TABLE ONLY odontok.procedure
    ADD CONSTRAINT pk_cod_procedure PRIMARY KEY (cod_procedure);
 E   ALTER TABLE ONLY odontok.procedure DROP CONSTRAINT pk_cod_procedure;
       odontok            postgres    false    224         �           2606    17275    role pk_cod_role 
   CONSTRAINT     U   ALTER TABLE ONLY odontok.role
    ADD CONSTRAINT pk_cod_role PRIMARY KEY (cod_role);
 ;   ALTER TABLE ONLY odontok.role DROP CONSTRAINT pk_cod_role;
       odontok            postgres    false    227         �           2606    17277    user pk_user 
   CONSTRAINT     ]   ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT pk_user PRIMARY KEY (cod_role, cod_user);
 9   ALTER TABLE ONLY odontok."user" DROP CONSTRAINT pk_user;
       odontok            postgres    false    228    228         �           2606    17279    blood_type uc_blood_type 
   CONSTRAINT     Z   ALTER TABLE ONLY odontok.blood_type
    ADD CONSTRAINT uc_blood_type UNIQUE (blood_type);
 C   ALTER TABLE ONLY odontok.blood_type DROP CONSTRAINT uc_blood_type;
       odontok            postgres    false    218         �           2606    17281 #   document_type uc_name_document_type 
   CONSTRAINT     m   ALTER TABLE ONLY odontok.document_type
    ADD CONSTRAINT uc_name_document_type UNIQUE (name_document_type);
 N   ALTER TABLE ONLY odontok.document_type DROP CONSTRAINT uc_name_document_type;
       odontok            postgres    false    219         �           2606    17283    procedure uc_name_procedure 
   CONSTRAINT     a   ALTER TABLE ONLY odontok.procedure
    ADD CONSTRAINT uc_name_procedure UNIQUE (name_procedure);
 F   ALTER TABLE ONLY odontok.procedure DROP CONSTRAINT uc_name_procedure;
       odontok            postgres    false    224         �           2606    17285    role uc_name_role 
   CONSTRAINT     R   ALTER TABLE ONLY odontok.role
    ADD CONSTRAINT uc_name_role UNIQUE (name_role);
 <   ALTER TABLE ONLY odontok.role DROP CONSTRAINT uc_name_role;
       odontok            postgres    false    227         �           2606    17287    patient uc_number_document 
   CONSTRAINT     a   ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT uc_number_document UNIQUE (number_document);
 E   ALTER TABLE ONLY odontok.patient DROP CONSTRAINT uc_number_document;
       odontok            postgres    false    221         �           2606    17289    user uc_usser 
   CONSTRAINT     L   ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT uc_usser UNIQUE (usser);
 :   ALTER TABLE ONLY odontok."user" DROP CONSTRAINT uc_usser;
       odontok            postgres    false    228         �           2606    17291    user un_document_number 
   CONSTRAINT     `   ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT un_document_number UNIQUE (document_number);
 D   ALTER TABLE ONLY odontok."user" DROP CONSTRAINT un_document_number;
       odontok            postgres    false    228         �           2620    17292    patient trg_audi_patient    TRIGGER     �   CREATE TRIGGER trg_audi_patient BEFORE DELETE OR UPDATE ON odontok.patient FOR EACH ROW EXECUTE FUNCTION odontok.audi_patient_fun();
 2   DROP TRIGGER trg_audi_patient ON odontok.patient;
       odontok          postgres    false    229    221         �           2606    17293    patient fk_cod_blood_type    FK CONSTRAINT     �   ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT fk_cod_blood_type FOREIGN KEY (cod_blood_type) REFERENCES odontok.blood_type(cod_blood_type);
 D   ALTER TABLE ONLY odontok.patient DROP CONSTRAINT fk_cod_blood_type;
       odontok          postgres    false    218    221    3229         �           2606    17298    user fk_cod_document_type    FK CONSTRAINT     �   ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT fk_cod_document_type FOREIGN KEY (cod_document_type) REFERENCES odontok.document_type(cod_document_type);
 F   ALTER TABLE ONLY odontok."user" DROP CONSTRAINT fk_cod_document_type;
       odontok          postgres    false    219    3233    228         �           2606    17303    patient fk_cod_document_type    FK CONSTRAINT     �   ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT fk_cod_document_type FOREIGN KEY (cod_document_type) REFERENCES odontok.document_type(cod_document_type);
 G   ALTER TABLE ONLY odontok.patient DROP CONSTRAINT fk_cod_document_type;
       odontok          postgres    false    3233    221    219         �           2606    17308    user fk_cod_role    FK CONSTRAINT     y   ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT fk_cod_role FOREIGN KEY (cod_role) REFERENCES odontok.role(cod_role);
 =   ALTER TABLE ONLY odontok."user" DROP CONSTRAINT fk_cod_role;
       odontok          postgres    false    228    3245    227                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3401.dat                                                                                            0000600 0004000 0002000 00000000323 14441642124 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	102	104	101	BRAYAN STIVEN A	ARIZA FLOREZ	2222222222	2012-12-23	3155095919		2023-06-04 22:02:27	U
2	101	102	101	PEDRO	JIMENEZ PAEZ	1065234102	1998-01-10	3150009911	PJIMENEZ@GMAIL.COM	2023-06-04 22:02:35	D
\.


                                                                                                                                                                                                                                                                                                             3404.dat                                                                                            0000600 0004000 0002000 00000000107 14441642124 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        101	O +
102	A +
103	B +
104	AB +
105	O -
106	A -
107	B -
108	AB -
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3405.dat                                                                                            0000600 0004000 0002000 00000000125 14441642124 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        102	Cédula de Ciudadanía
103	Cédula de Extranjería
104	Tarjeta de identidad
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                           3407.dat                                                                                            0000600 0004000 0002000 00000000340 14441642124 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        104	102	101	LUZ	ZAPARAN	1234567891	2003-09-23	3003973730	LMZAPARANC@UFPSO.EDU.CO
105	102	104	MANUEL	CARRASCAL	2987654321	2002-06-13	3112225566	
102	104	101	BRAYAN STIVEN A	ARIZA FLOREZ	2222222222	2012-12-23	3155095916	
\.


                                                                                                                                                                                                                                                                                                3410.dat                                                                                            0000600 0004000 0002000 00000000766 14441642124 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        113	ENDODONCIA	Tratar una infección o inflamación en la pulpa dental, implica la eliminación de la pulpa infectada y el sellado del área con un material de obturación.	A
112	PROFILAXIS  	Limpieza dental para la eliminación de la placa, el sarro y las manchas de los dientes, puede incluir la aplicación de flúor para prevenir la caries dental.	A
118	IMPLANTE DENTAL 	Son raíces artificiales de titanio que se colocan en el hueso maxilar o mandibular para reemplazar un diente perdido. 	A
\.


          3413.dat                                                                                            0000600 0004000 0002000 00000000065 14441642124 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        103	Administrador
104	Asistente
105	Odontólogo
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3414.dat                                                                                            0000600 0004000 0002000 00000000673 14441642124 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        101	104	102	MARIANA ISABEL	CERVANTEZ LOZANO	0123456789	MARIANA	123	A
100	103	102	BREYNNER FABIAN	ARIZA FLOREZ	1065232108	BREYNNER	1232	A
102	105	102	LAURA VANESSA	IBANEZ PEREZ	1234567890	LAURAA	12345	A
104	104	102	LUZ MARINA	ZAPARAN CARDONA	1122334455	LUZMA	123	A
107	104	104	EMANUEL 	HIGUERA	2222222222	EMA	12345	A
109	104	102	MAGRETH ROSSIO	SANGUINO REYES	1234598702	MAGRETH	12345	A
105	103	102	NOEMI 	COLLANTES	0001112223	NOEMI	123*	I
\.


                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000037516 14441642124 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE odontok;
--
-- Name: odontok; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE odontok WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE odontok OWNER TO postgres;

\connect odontok

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: odontok; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA odontok;


ALTER SCHEMA odontok OWNER TO postgres;

--
-- Name: SCHEMA odontok; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA odontok IS 'Base de datos para el proyecto Odonto k';


--
-- Name: audi_patient_fun(); Type: FUNCTION; Schema: odontok; Owner: postgres
--

CREATE FUNCTION odontok.audi_patient_fun() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
	BEGIN 
		IF(TG_OP='UPDATE') THEN
			INSERT INTO ODONTOK.AUDI_PATIENT(CONSECUTIVO, COD_PATIENT, COD_DOCUMENT_TYPE, COD_BLOOD_TYPE, NAME_PATIENT, 
											 LAST_NAME_PATIENT,NUMBER_DOCUMENT,BIRTH_DATE,PHONE,EMAIL,REGISTER_DATE,ACTION_AUDI)
			VALUES (DEFAULT, OLD.COD_PATIENT, OLD.COD_DOCUMENT_TYPE,OLD.COD_BLOOD_TYPE,OLD.NAME_PATIENT,OLD.LAST_NAME_PATIENT,
					OLD.NUMBER_DOCUMENT,OLD.BIRTH_DATE,OLD.PHONE,OLD.EMAIL,current_timestamp(0),'U' );
			RETURN NEW;
		ELSIF(TG_OP='DELETE') THEN
			INSERT INTO ODONTOK.AUDI_PATIENT(CONSECUTIVO, COD_PATIENT, COD_DOCUMENT_TYPE, COD_BLOOD_TYPE, NAME_PATIENT, 
											 LAST_NAME_PATIENT,NUMBER_DOCUMENT,BIRTH_DATE,PHONE,EMAIL,REGISTER_DATE,ACTION_AUDI)
			VALUES (DEFAULT, OLD.COD_PATIENT, OLD.COD_DOCUMENT_TYPE,OLD.COD_BLOOD_TYPE,OLD.NAME_PATIENT,OLD.LAST_NAME_PATIENT,
					OLD.NUMBER_DOCUMENT,OLD.BIRTH_DATE,OLD.PHONE,OLD.EMAIL,current_timestamp(0),'D' );
			RETURN OLD;
		END IF;
   END;
 $$;


ALTER FUNCTION odontok.audi_patient_fun() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: audi_patient; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok.audi_patient (
    consecutivo integer NOT NULL,
    cod_patient integer,
    cod_document_type integer,
    cod_blood_type integer,
    name_patient character varying(30),
    last_name_patient character varying(30),
    number_document character varying(10),
    birth_date date,
    phone character varying(15),
    email character varying(50),
    register_date timestamp without time zone,
    action_audi character(1)
);


ALTER TABLE odontok.audi_patient OWNER TO postgres;

--
-- Name: audi_patient_consecutivo_seq; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.audi_patient_consecutivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.audi_patient_consecutivo_seq OWNER TO postgres;

--
-- Name: audi_patient_consecutivo_seq; Type: SEQUENCE OWNED BY; Schema: odontok; Owner: postgres
--

ALTER SEQUENCE odontok.audi_patient_consecutivo_seq OWNED BY odontok.audi_patient.consecutivo;


--
-- Name: seq_blood_type; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.seq_blood_type
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.seq_blood_type OWNER TO postgres;

--
-- Name: blood_type; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok.blood_type (
    cod_blood_type integer DEFAULT nextval('odontok.seq_blood_type'::regclass) NOT NULL,
    blood_type character varying(5),
    CONSTRAINT nn_blood_type CHECK ((blood_type IS NOT NULL))
);


ALTER TABLE odontok.blood_type OWNER TO postgres;

--
-- Name: document_type; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok.document_type (
    cod_document_type integer NOT NULL,
    name_document_type character varying(40),
    CONSTRAINT nn_name_document_type CHECK ((name_document_type IS NOT NULL))
);


ALTER TABLE odontok.document_type OWNER TO postgres;

--
-- Name: seq_patient; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.seq_patient
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.seq_patient OWNER TO postgres;

--
-- Name: patient; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok.patient (
    cod_patient integer DEFAULT nextval('odontok.seq_patient'::regclass) NOT NULL,
    cod_document_type integer,
    cod_blood_type integer,
    name_patient character varying(30),
    last_name_patient character varying(30),
    number_document character varying(10),
    birth_date date,
    phone character varying(15),
    email character varying(50),
    CONSTRAINT nn_birth_date CHECK ((birth_date IS NOT NULL)),
    CONSTRAINT nn_last_name_patient CHECK ((last_name_patient IS NOT NULL)),
    CONSTRAINT nn_name_patient CHECK ((name_patient IS NOT NULL)),
    CONSTRAINT nn_number_document CHECK ((number_document IS NOT NULL)),
    CONSTRAINT nn_phone CHECK ((phone IS NOT NULL))
);


ALTER TABLE odontok.patient OWNER TO postgres;

--
-- Name: pocument_type_seq; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.pocument_type_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.pocument_type_seq OWNER TO postgres;

--
-- Name: seq_procedure; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.seq_procedure
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.seq_procedure OWNER TO postgres;

--
-- Name: procedure; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok.procedure (
    cod_procedure integer DEFAULT nextval('odontok.seq_procedure'::regclass) NOT NULL,
    name_procedure character varying(100),
    description_procedure character varying(200),
    state_procedure character(1),
    CONSTRAINT ck_state_procedure CHECK ((state_procedure = ANY (ARRAY['A'::bpchar, 'I'::bpchar]))),
    CONSTRAINT nn_description_procedure CHECK ((description_procedure IS NOT NULL)),
    CONSTRAINT nn_name_procedure CHECK ((name_procedure IS NOT NULL)),
    CONSTRAINT nn_state_procedure CHECK ((state_procedure IS NOT NULL))
);


ALTER TABLE odontok.procedure OWNER TO postgres;

--
-- Name: prole_seq; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.prole_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.prole_seq OWNER TO postgres;

--
-- Name: puser_seq; Type: SEQUENCE; Schema: odontok; Owner: postgres
--

CREATE SEQUENCE odontok.puser_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE odontok.puser_seq OWNER TO postgres;

--
-- Name: role; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok.role (
    cod_role integer NOT NULL,
    name_role character varying(30),
    CONSTRAINT nn_name_role CHECK ((name_role IS NOT NULL))
);


ALTER TABLE odontok.role OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: odontok; Owner: postgres
--

CREATE TABLE odontok."user" (
    cod_user integer DEFAULT nextval('odontok.puser_seq'::regclass) NOT NULL,
    cod_role integer NOT NULL,
    cod_document_type integer,
    username character varying(30),
    user_last_name character varying(30),
    document_number character varying(15),
    usser character varying(20),
    password_user character varying(50),
    state character(1),
    CONSTRAINT ch_state CHECK ((state = ANY (ARRAY['A'::bpchar, 'I'::bpchar]))),
    CONSTRAINT nn_password_user CHECK ((password_user IS NOT NULL)),
    CONSTRAINT nn_user_last_name CHECK ((user_last_name IS NOT NULL)),
    CONSTRAINT nn_username CHECK ((username IS NOT NULL))
);


ALTER TABLE odontok."user" OWNER TO postgres;

--
-- Name: audi_patient consecutivo; Type: DEFAULT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.audi_patient ALTER COLUMN consecutivo SET DEFAULT nextval('odontok.audi_patient_consecutivo_seq'::regclass);


--
-- Data for Name: audi_patient; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok.audi_patient (consecutivo, cod_patient, cod_document_type, cod_blood_type, name_patient, last_name_patient, number_document, birth_date, phone, email, register_date, action_audi) FROM stdin;
\.
COPY odontok.audi_patient (consecutivo, cod_patient, cod_document_type, cod_blood_type, name_patient, last_name_patient, number_document, birth_date, phone, email, register_date, action_audi) FROM '$$PATH$$/3401.dat';

--
-- Data for Name: blood_type; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok.blood_type (cod_blood_type, blood_type) FROM stdin;
\.
COPY odontok.blood_type (cod_blood_type, blood_type) FROM '$$PATH$$/3404.dat';

--
-- Data for Name: document_type; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok.document_type (cod_document_type, name_document_type) FROM stdin;
\.
COPY odontok.document_type (cod_document_type, name_document_type) FROM '$$PATH$$/3405.dat';

--
-- Data for Name: patient; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok.patient (cod_patient, cod_document_type, cod_blood_type, name_patient, last_name_patient, number_document, birth_date, phone, email) FROM stdin;
\.
COPY odontok.patient (cod_patient, cod_document_type, cod_blood_type, name_patient, last_name_patient, number_document, birth_date, phone, email) FROM '$$PATH$$/3407.dat';

--
-- Data for Name: procedure; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok.procedure (cod_procedure, name_procedure, description_procedure, state_procedure) FROM stdin;
\.
COPY odontok.procedure (cod_procedure, name_procedure, description_procedure, state_procedure) FROM '$$PATH$$/3410.dat';

--
-- Data for Name: role; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok.role (cod_role, name_role) FROM stdin;
\.
COPY odontok.role (cod_role, name_role) FROM '$$PATH$$/3413.dat';

--
-- Data for Name: user; Type: TABLE DATA; Schema: odontok; Owner: postgres
--

COPY odontok."user" (cod_user, cod_role, cod_document_type, username, user_last_name, document_number, usser, password_user, state) FROM stdin;
\.
COPY odontok."user" (cod_user, cod_role, cod_document_type, username, user_last_name, document_number, usser, password_user, state) FROM '$$PATH$$/3414.dat';

--
-- Name: audi_patient_consecutivo_seq; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.audi_patient_consecutivo_seq', 2, true);


--
-- Name: pocument_type_seq; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.pocument_type_seq', 104, true);


--
-- Name: prole_seq; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.prole_seq', 105, true);


--
-- Name: puser_seq; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.puser_seq', 109, true);


--
-- Name: seq_blood_type; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.seq_blood_type', 108, true);


--
-- Name: seq_patient; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.seq_patient', 105, true);


--
-- Name: seq_procedure; Type: SEQUENCE SET; Schema: odontok; Owner: postgres
--

SELECT pg_catalog.setval('odontok.seq_procedure', 118, true);


--
-- Name: audi_patient pk_audi_patient; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.audi_patient
    ADD CONSTRAINT pk_audi_patient PRIMARY KEY (consecutivo);


--
-- Name: blood_type pk_blood_type; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.blood_type
    ADD CONSTRAINT pk_blood_type PRIMARY KEY (cod_blood_type);


--
-- Name: document_type pk_cod_document_type; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.document_type
    ADD CONSTRAINT pk_cod_document_type PRIMARY KEY (cod_document_type);


--
-- Name: patient pk_cod_patient; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT pk_cod_patient PRIMARY KEY (cod_patient);


--
-- Name: procedure pk_cod_procedure; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.procedure
    ADD CONSTRAINT pk_cod_procedure PRIMARY KEY (cod_procedure);


--
-- Name: role pk_cod_role; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.role
    ADD CONSTRAINT pk_cod_role PRIMARY KEY (cod_role);


--
-- Name: user pk_user; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT pk_user PRIMARY KEY (cod_role, cod_user);


--
-- Name: blood_type uc_blood_type; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.blood_type
    ADD CONSTRAINT uc_blood_type UNIQUE (blood_type);


--
-- Name: document_type uc_name_document_type; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.document_type
    ADD CONSTRAINT uc_name_document_type UNIQUE (name_document_type);


--
-- Name: procedure uc_name_procedure; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.procedure
    ADD CONSTRAINT uc_name_procedure UNIQUE (name_procedure);


--
-- Name: role uc_name_role; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.role
    ADD CONSTRAINT uc_name_role UNIQUE (name_role);


--
-- Name: patient uc_number_document; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT uc_number_document UNIQUE (number_document);


--
-- Name: user uc_usser; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT uc_usser UNIQUE (usser);


--
-- Name: user un_document_number; Type: CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT un_document_number UNIQUE (document_number);


--
-- Name: patient trg_audi_patient; Type: TRIGGER; Schema: odontok; Owner: postgres
--

CREATE TRIGGER trg_audi_patient BEFORE DELETE OR UPDATE ON odontok.patient FOR EACH ROW EXECUTE FUNCTION odontok.audi_patient_fun();


--
-- Name: patient fk_cod_blood_type; Type: FK CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT fk_cod_blood_type FOREIGN KEY (cod_blood_type) REFERENCES odontok.blood_type(cod_blood_type);


--
-- Name: user fk_cod_document_type; Type: FK CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT fk_cod_document_type FOREIGN KEY (cod_document_type) REFERENCES odontok.document_type(cod_document_type);


--
-- Name: patient fk_cod_document_type; Type: FK CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok.patient
    ADD CONSTRAINT fk_cod_document_type FOREIGN KEY (cod_document_type) REFERENCES odontok.document_type(cod_document_type);


--
-- Name: user fk_cod_role; Type: FK CONSTRAINT; Schema: odontok; Owner: postgres
--

ALTER TABLE ONLY odontok."user"
    ADD CONSTRAINT fk_cod_role FOREIGN KEY (cod_role) REFERENCES odontok.role(cod_role);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  