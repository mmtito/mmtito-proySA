toc.dat                                                                                             0000600 0004000 0002000 00000176023 14317077262 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       9    *            	    z            distributivodb "   12.12 (Ubuntu 12.12-1.pgdg22.04+1)     14.5 (Ubuntu 14.5-1.pgdg22.04+1) ?               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         	           1262    37863    distributivodb    DATABASE     c   CREATE DATABASE distributivodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_EC.UTF-8';
    DROP DATABASE distributivodb;
                postgres    false                     2615    37864    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                postgres    false         ?            1259    37865    authorities    TABLE     a   CREATE TABLE auth.authorities (
    authority_id integer NOT NULL,
    name character varying
);
    DROP TABLE auth.authorities;
       auth         heap    postgres    false    12         ?            1259    37871    authorities_authority_id_seq    SEQUENCE     ?   CREATE SEQUENCE auth.authorities_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE auth.authorities_authority_id_seq;
       auth          postgres    false    12         ?            1259    37873    authorities_authority_id_seq1    SEQUENCE     ?   CREATE SEQUENCE auth.authorities_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE auth.authorities_authority_id_seq1;
       auth          postgres    false    207    12         
           0    0    authorities_authority_id_seq1    SEQUENCE OWNED BY     Z   ALTER SEQUENCE auth.authorities_authority_id_seq1 OWNED BY auth.authorities.authority_id;
          auth          postgres    false    209         ?            1259    37875    roles    TABLE     V   CREATE TABLE auth.roles (
    role_id integer NOT NULL,
    name character varying
);
    DROP TABLE auth.roles;
       auth         heap    postgres    false    12         ?            1259    37881    roles_authorities    TABLE        CREATE TABLE auth.roles_authorities (
    role_authority_id integer NOT NULL,
    role_id integer,
    authority_id integer
);
 #   DROP TABLE auth.roles_authorities;
       auth         heap    postgres    false    12         ?            1259    37884 '   roles_authorities_role_authority_id_seq    SEQUENCE     ?   CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 <   DROP SEQUENCE auth.roles_authorities_role_authority_id_seq;
       auth          postgres    false    12         ?            1259    37886 (   roles_authorities_role_authority_id_seq1    SEQUENCE     ?   CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE auth.roles_authorities_role_authority_id_seq1;
       auth          postgres    false    12    211                    0    0 (   roles_authorities_role_authority_id_seq1    SEQUENCE OWNED BY     p   ALTER SEQUENCE auth.roles_authorities_role_authority_id_seq1 OWNED BY auth.roles_authorities.role_authority_id;
          auth          postgres    false    213         ?            1259    37888    roles_role_id_seq    SEQUENCE     ?   CREATE SEQUENCE auth.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE auth.roles_role_id_seq;
       auth          postgres    false    12         ?            1259    37890    roles_role_id_seq1    SEQUENCE     ?   CREATE SEQUENCE auth.roles_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auth.roles_role_id_seq1;
       auth          postgres    false    210    12                    0    0    roles_role_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE auth.roles_role_id_seq1 OWNED BY auth.roles.role_id;
          auth          postgres    false    215         ?            1259    37892    users    TABLE     ?   CREATE TABLE auth.users (
    user_id integer NOT NULL,
    password character varying,
    name character varying,
    username character varying,
    looked boolean,
    expired boolean,
    enabled boolean
);
    DROP TABLE auth.users;
       auth         heap    postgres    false    12         ?            1259    37898    users_roles    TABLE     o   CREATE TABLE auth.users_roles (
    user_role_id integer NOT NULL,
    user_id integer,
    role_id integer
);
    DROP TABLE auth.users_roles;
       auth         heap    postgres    false    12         ?            1259    37901    users_roles_user_role_id_seq    SEQUENCE     ?   CREATE SEQUENCE auth.users_roles_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE auth.users_roles_user_role_id_seq;
       auth          postgres    false    12         ?            1259    37903    users_roles_user_role_id_seq1    SEQUENCE     ?   CREATE SEQUENCE auth.users_roles_user_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE auth.users_roles_user_role_id_seq1;
       auth          postgres    false    12    217                    0    0    users_roles_user_role_id_seq1    SEQUENCE OWNED BY     Z   ALTER SEQUENCE auth.users_roles_user_role_id_seq1 OWNED BY auth.users_roles.user_role_id;
          auth          postgres    false    219         ?            1259    37905    users_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE auth.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE auth.users_user_id_seq;
       auth          postgres    false    12         ?            1259    37907    users_user_id_seq1    SEQUENCE     ?   CREATE SEQUENCE auth.users_user_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auth.users_user_id_seq1;
       auth          postgres    false    12    216                    0    0    users_user_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE auth.users_user_id_seq1 OWNED BY auth.users.user_id;
          auth          postgres    false    221         ?            1259    37909    Asignatura_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public."Asignatura_id_seq";
       public          postgres    false         ?            1259    37911    caerer_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.caerer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 $   DROP SEQUENCE public.caerer_id_seq;
       public          postgres    false         ?            1259    37913    career    TABLE     ?   CREATE TABLE public.career (
    id integer NOT NULL,
    name character varying(100),
    duration integer,
    img text,
    status boolean,
    code character varying(100)
);
    DROP TABLE public.career;
       public         heap    postgres    false         ?            1259    37919    career_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.career_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.career_id_seq;
       public          postgres    false    224                    0    0    career_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.career_id_seq OWNED BY public.career.id;
          public          postgres    false    225         ?            1259    37921 	   catalogue    TABLE     ?   CREATE TABLE public.catalogue (
    id integer NOT NULL,
    name character varying(50),
    value character varying(50),
    status boolean
);
    DROP TABLE public.catalogue;
       public         heap    postgres    false         ?            1259    37924    catalogue_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.catalogue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.catalogue_id_seq;
       public          postgres    false    226                    0    0    catalogue_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.catalogue_id_seq OWNED BY public.catalogue.id;
          public          postgres    false    227         ?            1259    37926    classroom_types    TABLE     ?   CREATE TABLE public.classroom_types (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    status boolean DEFAULT true
);
 #   DROP TABLE public.classroom_types;
       public         heap    postgres    false         ?            1259    37930    classroom_types_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.classroom_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.classroom_types_id_seq;
       public          postgres    false         ?            1259    37932    classroom_types_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.classroom_types_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.classroom_types_id_seq1;
       public          postgres    false    228                    0    0    classroom_types_id_seq1    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.classroom_types_id_seq1 OWNED BY public.classroom_types.id;
          public          postgres    false    230         ?            1259    37934 
   classrooms    TABLE     ?   CREATE TABLE public.classrooms (
    id integer NOT NULL,
    type integer,
    location integer,
    name character varying(100),
    capacity integer,
    status boolean DEFAULT true,
    description text,
    code character varying(100)
);
    DROP TABLE public.classrooms;
       public         heap    postgres    false         ?            1259    37941    classrooms_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.classrooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.classrooms_id_seq;
       public          postgres    false         ?            1259    37943    classrooms_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.classrooms_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.classrooms_id_seq1;
       public          postgres    false    231                    0    0    classrooms_id_seq1    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.classrooms_id_seq1 OWNED BY public.classrooms.id;
          public          postgres    false    233         ?            1259    37945    color_id_seq    SEQUENCE     }   CREATE SEQUENCE public.color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.color_id_seq;
       public          postgres    false         ?            1259    37947    configuracion_horario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.configuracion_horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.configuracion_horario_id_seq;
       public          postgres    false         ?            1259    37949    day    TABLE     k   CREATE TABLE public.day (
    id integer NOT NULL,
    name character varying(20),
    posicion integer
);
    DROP TABLE public.day;
       public         heap    postgres    false         ?            1259    37952 
   day_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.day_id_seq;
       public          postgres    false    236                    0    0 
   day_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.day_id_seq OWNED BY public.day.id;
          public          postgres    false    237         ?            1259    37954 
   dia_id_seq    SEQUENCE     {   CREATE SEQUENCE public.dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 !   DROP SEQUENCE public.dia_id_seq;
       public          postgres    false         ?            1259    37956    grade    TABLE     ?   CREATE TABLE public.grade (
    id integer NOT NULL,
    name character varying(100),
    working_day integer,
    level integer,
    parallel integer,
    status boolean DEFAULT true,
    career integer
);
    DROP TABLE public.grade;
       public         heap    postgres    false         ?            1259    37960    school_period    TABLE     ?   CREATE TABLE public.school_period (
    id integer NOT NULL,
    name character varying(100),
    start_date date,
    end_date date,
    status boolean
);
 !   DROP TABLE public.school_period;
       public         heap    postgres    false         ?            1259    37963    subject    TABLE     ?   CREATE TABLE public.subject (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    theoretical_hours integer,
    laboratory_hours integer,
    career integer,
    status boolean
);
    DROP TABLE public.subject;
       public         heap    postgres    false         ?            1259    37966    teacher    TABLE     '  CREATE TABLE public.teacher (
    id integer NOT NULL,
    dni character varying(10),
    name character varying(100),
    color character varying(100),
    phone character varying(10),
    email character varying(100),
    archived boolean DEFAULT false,
    lastname character varying(100)
);
    DROP TABLE public.teacher;
       public         heap    postgres    false         ?            1259    37970    teacher_distributive    TABLE     ?   CREATE TABLE public.teacher_distributive (
    id integer NOT NULL,
    school_time integer,
    teacher integer,
    course integer,
    grade integer,
    career integer
);
 (   DROP TABLE public.teacher_distributive;
       public         heap    postgres    false         ?            1259    37973    distributive    VIEW     ?  CREATE VIEW public.distributive AS
 SELECT dis.id,
    teacher.id AS teacherid,
    teacher.dni AS teacher_cedula,
    teacher.name AS teacher_nombre,
    teacher.lastname AS teacher_apellido,
    grade.id AS gradeid,
    grade.name AS grade_name,
    subject.id AS subjectid,
    subject.name AS subject_name,
    subject.code AS subject_code,
    periood.id AS perioodid,
    periood.name AS period_name
   FROM ((((public.teacher_distributive dis
     JOIN public.school_period periood ON ((periood.id = dis.school_time)))
     JOIN public.teacher ON ((teacher.id = dis.teacher)))
     JOIN public.subject ON ((subject.id = dis.course)))
     JOIN public.grade ON ((grade.id = dis.grade)));
    DROP VIEW public.distributive;
       public          postgres    false    242    242    241    241    241    240    240    239    239    243    243    243    243    243    242    242         ?            1259    37978    distributivo_docente_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.distributivo_docente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 2   DROP SEQUENCE public.distributivo_docente_id_seq;
       public          postgres    false         ?            1259    37980    grade_id_seq    SEQUENCE     }   CREATE SEQUENCE public.grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.grade_id_seq;
       public          postgres    false         ?            1259    37982    grade_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.grade_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.grade_id_seq1;
       public          postgres    false    239                    0    0    grade_id_seq1    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.grade_id_seq1 OWNED BY public.grade.id;
          public          postgres    false    247         ?            1259    37984    hours_table    TABLE     x   CREATE TABLE public.hours_table (
    id integer NOT NULL,
    hour character varying(15),
    time_position integer
);
    DROP TABLE public.hours_table;
       public         heap    postgres    false         ?            1259    37987    hours_table_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.hours_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hours_table_id_seq;
       public          postgres    false    248                    0    0    hours_table_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hours_table_id_seq OWNED BY public.hours_table.id;
          public          postgres    false    249         ?            1259    37989 	   locations    TABLE     ?   CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(300),
    description text,
    status boolean DEFAULT true,
    latitude bigint,
    longitude bigint
);
    DROP TABLE public.locations;
       public         heap    postgres    false         ?            1259    37996    locations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.locations_id_seq;
       public          postgres    false         ?            1259    37998    locations_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.locations_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.locations_id_seq1;
       public          postgres    false    250                    0    0    locations_id_seq1    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.locations_id_seq1 OWNED BY public.locations.id;
          public          postgres    false    252         ?            1259    38000    means_classrom    TABLE     ?   CREATE TABLE public.means_classrom (
    id integer NOT NULL,
    classroom integer,
    proyect character varying(200),
    chairs integer,
    tables integer,
    status boolean DEFAULT true
);
 "   DROP TABLE public.means_classrom;
       public         heap    postgres    false         ?            1259    38004    means_classrom_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.means_classrom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.means_classrom_id_seq;
       public          postgres    false         ?            1259    38006    means_classrom_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.means_classrom_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.means_classrom_id_seq1;
       public          postgres    false    253                    0    0    means_classrom_id_seq1    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.means_classrom_id_seq1 OWNED BY public.means_classrom.id;
          public          postgres    false    255                     1259    38008    periodo_lectivo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.periodo_lectivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.periodo_lectivo_id_seq;
       public          postgres    false                    1259    38010    request    TABLE     ?   CREATE TABLE public.request (
    id integer NOT NULL,
    school_time integer,
    date date,
    career integer,
    status boolean,
    requested_time integer
);
    DROP TABLE public.request;
       public         heap    postgres    false                    1259    38013    request_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.request_id_seq;
       public          postgres    false    257                    0    0    request_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.request_id_seq OWNED BY public.request.id;
          public          postgres    false    258                    1259    38015    school_period_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.school_period_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.school_period_id_seq;
       public          postgres    false    240                    0    0    school_period_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.school_period_id_seq OWNED BY public.school_period.id;
          public          postgres    false    259                    1259    38017    size_request    TABLE     ?   CREATE TABLE public.size_request (
    id integer NOT NULL,
    request integer,
    teaching_subject integer,
    start_date date,
    end_date date,
    status boolean
);
     DROP TABLE public.size_request;
       public         heap    postgres    false                    1259    38020    size_request_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.size_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.size_request_id_seq;
       public          postgres    false    260                    0    0    size_request_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.size_request_id_seq OWNED BY public.size_request.id;
          public          postgres    false    261                    1259    38022    solicitud_detalle_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.solicitud_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 /   DROP SEQUENCE public.solicitud_detalle_id_seq;
       public          postgres    false                    1259    38024    solicitud_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.solicitud_id_seq;
       public          postgres    false                    1259    38026    subject_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.subject_id_seq;
       public          postgres    false    241                    0    0    subject_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;
          public          postgres    false    264         	           1259    38028    tabla_horas_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tabla_horas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.tabla_horas_id_seq;
       public          postgres    false         
           1259    38030    teacher_distributive_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.teacher_distributive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.teacher_distributive_id_seq;
       public          postgres    false    243                    0    0    teacher_distributive_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.teacher_distributive_id_seq OWNED BY public.teacher_distributive.id;
          public          postgres    false    266                    1259    38032    teacher_id_seq    SEQUENCE        CREATE SEQUENCE public.teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 %   DROP SEQUENCE public.teacher_id_seq;
       public          postgres    false                    1259    38034    teacher_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.teacher_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teacher_id_seq1;
       public          postgres    false    242                    0    0    teacher_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.teacher_id_seq1 OWNED BY public.teacher.id;
          public          postgres    false    268                    1259    38036    time_configuration    TABLE     ?   CREATE TABLE public.time_configuration (
    id integer NOT NULL,
    school_period integer,
    classroom integer,
    day integer,
    date date,
    hour integer,
    occupied_by integer,
    status boolean,
    color character varying(20)
);
 &   DROP TABLE public.time_configuration;
       public         heap    postgres    false                    1259    38039    time_configuration_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.time_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.time_configuration_id_seq;
       public          postgres    false    269                    0    0    time_configuration_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.time_configuration_id_seq OWNED BY public.time_configuration.id;
          public          postgres    false    270                    1259    38041    v_distributive    VIEW       CREATE VIEW public.v_distributive AS
 SELECT dis.id,
    teacher.dni AS teacher_cedula,
    teacher.name AS teacher,
    teacher.lastname AS teacher_apellido,
    grade.name AS grade,
    subject.name AS subject,
    periood.name AS period
   FROM ((((public.teacher_distributive dis
     JOIN public.school_period periood ON ((periood.id = dis.school_time)))
     JOIN public.teacher ON ((teacher.id = dis.teacher)))
     JOIN public.subject ON ((subject.id = dis.course)))
     JOIN public.grade ON ((grade.id = dis.grade)));
 !   DROP VIEW public.v_distributive;
       public          postgres    false    243    239    239    240    240    241    241    242    243    242    242    242    243    243    243         ?           2604    38046    authorities authority_id    DEFAULT     ?   ALTER TABLE ONLY auth.authorities ALTER COLUMN authority_id SET DEFAULT nextval('auth.authorities_authority_id_seq1'::regclass);
 E   ALTER TABLE auth.authorities ALTER COLUMN authority_id DROP DEFAULT;
       auth          postgres    false    209    207         ?           2604    38047    roles role_id    DEFAULT     k   ALTER TABLE ONLY auth.roles ALTER COLUMN role_id SET DEFAULT nextval('auth.roles_role_id_seq1'::regclass);
 :   ALTER TABLE auth.roles ALTER COLUMN role_id DROP DEFAULT;
       auth          postgres    false    215    210         ?           2604    38048 #   roles_authorities role_authority_id    DEFAULT     ?   ALTER TABLE ONLY auth.roles_authorities ALTER COLUMN role_authority_id SET DEFAULT nextval('auth.roles_authorities_role_authority_id_seq1'::regclass);
 P   ALTER TABLE auth.roles_authorities ALTER COLUMN role_authority_id DROP DEFAULT;
       auth          postgres    false    213    211         ?           2604    38049    users user_id    DEFAULT     k   ALTER TABLE ONLY auth.users ALTER COLUMN user_id SET DEFAULT nextval('auth.users_user_id_seq1'::regclass);
 :   ALTER TABLE auth.users ALTER COLUMN user_id DROP DEFAULT;
       auth          postgres    false    221    216         ?           2604    38050    users_roles user_role_id    DEFAULT     ?   ALTER TABLE ONLY auth.users_roles ALTER COLUMN user_role_id SET DEFAULT nextval('auth.users_roles_user_role_id_seq1'::regclass);
 E   ALTER TABLE auth.users_roles ALTER COLUMN user_role_id DROP DEFAULT;
       auth          postgres    false    219    217         ?           2604    38051 	   career id    DEFAULT     f   ALTER TABLE ONLY public.career ALTER COLUMN id SET DEFAULT nextval('public.career_id_seq'::regclass);
 8   ALTER TABLE public.career ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224         ?           2604    38052    catalogue id    DEFAULT     l   ALTER TABLE ONLY public.catalogue ALTER COLUMN id SET DEFAULT nextval('public.catalogue_id_seq'::regclass);
 ;   ALTER TABLE public.catalogue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226         ?           2604    38053    classroom_types id    DEFAULT     y   ALTER TABLE ONLY public.classroom_types ALTER COLUMN id SET DEFAULT nextval('public.classroom_types_id_seq1'::regclass);
 A   ALTER TABLE public.classroom_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    228         ?           2604    38054    classrooms id    DEFAULT     o   ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq1'::regclass);
 <   ALTER TABLE public.classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    231         ?           2604    38055    day id    DEFAULT     `   ALTER TABLE ONLY public.day ALTER COLUMN id SET DEFAULT nextval('public.day_id_seq'::regclass);
 5   ALTER TABLE public.day ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236         ?           2604    38056    grade id    DEFAULT     e   ALTER TABLE ONLY public.grade ALTER COLUMN id SET DEFAULT nextval('public.grade_id_seq1'::regclass);
 7   ALTER TABLE public.grade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    239         ?           2604    38057    hours_table id    DEFAULT     p   ALTER TABLE ONLY public.hours_table ALTER COLUMN id SET DEFAULT nextval('public.hours_table_id_seq'::regclass);
 =   ALTER TABLE public.hours_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248         ?           2604    38058    locations id    DEFAULT     m   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq1'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    250         ?           2604    38059    means_classrom id    DEFAULT     w   ALTER TABLE ONLY public.means_classrom ALTER COLUMN id SET DEFAULT nextval('public.means_classrom_id_seq1'::regclass);
 @   ALTER TABLE public.means_classrom ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    253                     2604    38060 
   request id    DEFAULT     h   ALTER TABLE ONLY public.request ALTER COLUMN id SET DEFAULT nextval('public.request_id_seq'::regclass);
 9   ALTER TABLE public.request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257         ?           2604    38061    school_period id    DEFAULT     t   ALTER TABLE ONLY public.school_period ALTER COLUMN id SET DEFAULT nextval('public.school_period_id_seq'::regclass);
 ?   ALTER TABLE public.school_period ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    240                    2604    38062    size_request id    DEFAULT     r   ALTER TABLE ONLY public.size_request ALTER COLUMN id SET DEFAULT nextval('public.size_request_id_seq'::regclass);
 >   ALTER TABLE public.size_request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260         ?           2604    38063 
   subject id    DEFAULT     h   ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);
 9   ALTER TABLE public.subject ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    241         ?           2604    38064 
   teacher id    DEFAULT     i   ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq1'::regclass);
 9   ALTER TABLE public.teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    242         ?           2604    38065    teacher_distributive id    DEFAULT     ?   ALTER TABLE ONLY public.teacher_distributive ALTER COLUMN id SET DEFAULT nextval('public.teacher_distributive_id_seq'::regclass);
 F   ALTER TABLE public.teacher_distributive ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    243                    2604    38066    time_configuration id    DEFAULT     ~   ALTER TABLE ONLY public.time_configuration ALTER COLUMN id SET DEFAULT nextval('public.time_configuration_id_seq'::regclass);
 D   ALTER TABLE public.time_configuration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269         ?          0    37865    authorities 
   TABLE DATA           7   COPY auth.authorities (authority_id, name) FROM stdin;
    auth          postgres    false    207       3269.dat ?          0    37875    roles 
   TABLE DATA           ,   COPY auth.roles (role_id, name) FROM stdin;
    auth          postgres    false    210       3272.dat ?          0    37881    roles_authorities 
   TABLE DATA           S   COPY auth.roles_authorities (role_authority_id, role_id, authority_id) FROM stdin;
    auth          postgres    false    211       3273.dat ?          0    37892    users 
   TABLE DATA           Z   COPY auth.users (user_id, password, name, username, looked, expired, enabled) FROM stdin;
    auth          postgres    false    216       3278.dat ?          0    37898    users_roles 
   TABLE DATA           C   COPY auth.users_roles (user_role_id, user_id, role_id) FROM stdin;
    auth          postgres    false    217       3279.dat ?          0    37913    career 
   TABLE DATA           G   COPY public.career (id, name, duration, img, status, code) FROM stdin;
    public          postgres    false    224       3286.dat ?          0    37921 	   catalogue 
   TABLE DATA           <   COPY public.catalogue (id, name, value, status) FROM stdin;
    public          postgres    false    226       3288.dat ?          0    37926    classroom_types 
   TABLE DATA           A   COPY public.classroom_types (id, code, name, status) FROM stdin;
    public          postgres    false    228       3290.dat ?          0    37934 
   classrooms 
   TABLE DATA           c   COPY public.classrooms (id, type, location, name, capacity, status, description, code) FROM stdin;
    public          postgres    false    231       3293.dat ?          0    37949    day 
   TABLE DATA           1   COPY public.day (id, name, posicion) FROM stdin;
    public          postgres    false    236       3298.dat ?          0    37956    grade 
   TABLE DATA           W   COPY public.grade (id, name, working_day, level, parallel, status, career) FROM stdin;
    public          postgres    false    239       3301.dat ?          0    37984    hours_table 
   TABLE DATA           >   COPY public.hours_table (id, hour, time_position) FROM stdin;
    public          postgres    false    248       3309.dat ?          0    37989 	   locations 
   TABLE DATA           W   COPY public.locations (id, name, description, status, latitude, longitude) FROM stdin;
    public          postgres    false    250       3311.dat ?          0    38000    means_classrom 
   TABLE DATA           X   COPY public.means_classrom (id, classroom, proyect, chairs, tables, status) FROM stdin;
    public          postgres    false    253       3314.dat ?          0    38010    request 
   TABLE DATA           X   COPY public.request (id, school_time, date, career, status, requested_time) FROM stdin;
    public          postgres    false    257       3318.dat ?          0    37960    school_period 
   TABLE DATA           O   COPY public.school_period (id, name, start_date, end_date, status) FROM stdin;
    public          postgres    false    240       3302.dat ?          0    38017    size_request 
   TABLE DATA           c   COPY public.size_request (id, request, teaching_subject, start_date, end_date, status) FROM stdin;
    public          postgres    false    260       3321.dat ?          0    37963    subject 
   TABLE DATA           f   COPY public.subject (id, code, name, theoretical_hours, laboratory_hours, career, status) FROM stdin;
    public          postgres    false    241       3303.dat ?          0    37966    teacher 
   TABLE DATA           Y   COPY public.teacher (id, dni, name, color, phone, email, archived, lastname) FROM stdin;
    public          postgres    false    242       3304.dat ?          0    37970    teacher_distributive 
   TABLE DATA           _   COPY public.teacher_distributive (id, school_time, teacher, course, grade, career) FROM stdin;
    public          postgres    false    243       3305.dat           0    38036    time_configuration 
   TABLE DATA           w   COPY public.time_configuration (id, school_period, classroom, day, date, hour, occupied_by, status, color) FROM stdin;
    public          postgres    false    269       3330.dat            0    0    authorities_authority_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.authorities_authority_id_seq', 1, false);
          auth          postgres    false    208                     0    0    authorities_authority_id_seq1    SEQUENCE SET     J   SELECT pg_catalog.setval('auth.authorities_authority_id_seq1', 12, true);
          auth          postgres    false    209         !           0    0 '   roles_authorities_role_authority_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq', 1, false);
          auth          postgres    false    212         "           0    0 (   roles_authorities_role_authority_id_seq1    SEQUENCE SET     T   SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq1', 4, true);
          auth          postgres    false    213         #           0    0    roles_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.roles_role_id_seq', 1, false);
          auth          postgres    false    214         $           0    0    roles_role_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.roles_role_id_seq1', 3, true);
          auth          postgres    false    215         %           0    0    users_roles_user_role_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq', 1, false);
          auth          postgres    false    218         &           0    0    users_roles_user_role_id_seq1    SEQUENCE SET     J   SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq1', 14, true);
          auth          postgres    false    219         '           0    0    users_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.users_user_id_seq', 1, false);
          auth          postgres    false    220         (           0    0    users_user_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.users_user_id_seq1', 9, true);
          auth          postgres    false    221         )           0    0    Asignatura_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Asignatura_id_seq"', 1, false);
          public          postgres    false    222         *           0    0    caerer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.caerer_id_seq', 1, false);
          public          postgres    false    223         +           0    0    career_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.career_id_seq', 21, true);
          public          postgres    false    225         ,           0    0    catalogue_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.catalogue_id_seq', 12, true);
          public          postgres    false    227         -           0    0    classroom_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.classroom_types_id_seq', 1, false);
          public          postgres    false    229         .           0    0    classroom_types_id_seq1    SEQUENCE SET     F   SELECT pg_catalog.setval('public.classroom_types_id_seq1', 1, false);
          public          postgres    false    230         /           0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    232         0           0    0    classrooms_id_seq1    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq1', 5, true);
          public          postgres    false    233         1           0    0    color_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.color_id_seq', 1, false);
          public          postgres    false    234         2           0    0    configuracion_horario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.configuracion_horario_id_seq', 1, false);
          public          postgres    false    235         3           0    0 
   day_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.day_id_seq', 7, true);
          public          postgres    false    237         4           0    0 
   dia_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.dia_id_seq', 1, false);
          public          postgres    false    238         5           0    0    distributivo_docente_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.distributivo_docente_id_seq', 1, false);
          public          postgres    false    245         6           0    0    grade_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.grade_id_seq', 1, false);
          public          postgres    false    246         7           0    0    grade_id_seq1    SEQUENCE SET     <   SELECT pg_catalog.setval('public.grade_id_seq1', 10, true);
          public          postgres    false    247         8           0    0    hours_table_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hours_table_id_seq', 14, true);
          public          postgres    false    249         9           0    0    locations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq', 1, false);
          public          postgres    false    251         :           0    0    locations_id_seq1    SEQUENCE SET     @   SELECT pg_catalog.setval('public.locations_id_seq1', 13, true);
          public          postgres    false    252         ;           0    0    means_classrom_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.means_classrom_id_seq', 1, false);
          public          postgres    false    254         <           0    0    means_classrom_id_seq1    SEQUENCE SET     E   SELECT pg_catalog.setval('public.means_classrom_id_seq1', 1, false);
          public          postgres    false    255         =           0    0    periodo_lectivo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.periodo_lectivo_id_seq', 1, false);
          public          postgres    false    256         >           0    0    request_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.request_id_seq', 1, false);
          public          postgres    false    258         ?           0    0    school_period_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.school_period_id_seq', 4, true);
          public          postgres    false    259         @           0    0    size_request_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.size_request_id_seq', 1, false);
          public          postgres    false    261         A           0    0    solicitud_detalle_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.solicitud_detalle_id_seq', 1, false);
          public          postgres    false    262         B           0    0    solicitud_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.solicitud_id_seq', 1, false);
          public          postgres    false    263         C           0    0    subject_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.subject_id_seq', 11, true);
          public          postgres    false    264         D           0    0    tabla_horas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tabla_horas_id_seq', 1, false);
          public          postgres    false    265         E           0    0    teacher_distributive_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.teacher_distributive_id_seq', 18, true);
          public          postgres    false    266         F           0    0    teacher_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teacher_id_seq', 1, false);
          public          postgres    false    267         G           0    0    teacher_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teacher_id_seq1', 6, true);
          public          postgres    false    268         H           0    0    time_configuration_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.time_configuration_id_seq', 525138, true);
          public          postgres    false    270                    2606    38068    authorities authorities_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY auth.authorities
    ADD CONSTRAINT authorities_pkey PRIMARY KEY (authority_id);
 D   ALTER TABLE ONLY auth.authorities DROP CONSTRAINT authorities_pkey;
       auth            postgres    false    207                    2606    38070 (   roles_authorities roles_authorities_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT roles_authorities_pkey PRIMARY KEY (role_authority_id);
 P   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT roles_authorities_pkey;
       auth            postgres    false    211                    2606    38072    roles roles_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY auth.roles DROP CONSTRAINT roles_pkey;
       auth            postgres    false    210         
           2606    38074    users users_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth            postgres    false    216                    2606    38076    users_roles users_roles_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_role_id);
 D   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT users_roles_pkey;
       auth            postgres    false    217                    2606    38078    subject Asignatura_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT "Asignatura_pk" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.subject DROP CONSTRAINT "Asignatura_pk";
       public            postgres    false    241                    2606    38080    career caerer_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.career
    ADD CONSTRAINT caerer_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.career DROP CONSTRAINT caerer_pk;
       public            postgres    false    224                    2606    38082    catalogue catalogue_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.catalogue
    ADD CONSTRAINT catalogue_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.catalogue DROP CONSTRAINT catalogue_pk;
       public            postgres    false    226                    2606    38084 $   classroom_types classroom_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.classroom_types
    ADD CONSTRAINT classroom_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.classroom_types DROP CONSTRAINT classroom_types_pkey;
       public            postgres    false    228                    2606    38086    classrooms classrooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT classrooms_pkey;
       public            postgres    false    231         ,           2606    38088 +   time_configuration configuracion_horario_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT configuracion_horario_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT configuracion_horario_pk;
       public            postgres    false    269                    2606    38090 
   day dia_pk 
   CONSTRAINT     H   ALTER TABLE ONLY public.day
    ADD CONSTRAINT dia_pk PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.day DROP CONSTRAINT dia_pk;
       public            postgres    false    236                     2606    38092 ,   teacher_distributive distributivo_docente_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT distributivo_docente_pk PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT distributivo_docente_pk;
       public            postgres    false    243                    2606    38094    grade grade_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT grade_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.grade DROP CONSTRAINT grade_pk;
       public            postgres    false    239         $           2606    38096    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    250         &           2606    38098 "   means_classrom means_classrom_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT means_classrom_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.means_classrom DROP CONSTRAINT means_classrom_pkey;
       public            postgres    false    253                    2606    38100     school_period periodo_lectivo_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.school_period
    ADD CONSTRAINT periodo_lectivo_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.school_period DROP CONSTRAINT periodo_lectivo_pk;
       public            postgres    false    240         *           2606    38102 !   size_request solicitud_detalle_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_detalle_pk PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.size_request DROP CONSTRAINT solicitud_detalle_pk;
       public            postgres    false    260         (           2606    38104    request solicitud_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.request
    ADD CONSTRAINT solicitud_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.request DROP CONSTRAINT solicitud_pk;
       public            postgres    false    257         "           2606    38106    hours_table tabla_horas_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.hours_table
    ADD CONSTRAINT tabla_horas_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hours_table DROP CONSTRAINT tabla_horas_pk;
       public            postgres    false    248                    2606    38108    teacher teacher_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    242         -           2606    38109    roles_authorities fk_auth    FK CONSTRAINT     ?   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_auth FOREIGN KEY (authority_id) REFERENCES auth.authorities(authority_id);
 A   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT fk_auth;
       auth          postgres    false    3076    211    207         .           2606    38114    roles_authorities fk_role    FK CONSTRAINT     y   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES auth.roles(role_id);
 A   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT fk_role;
       auth          postgres    false    211    210    3078         0           2606    46425    users_roles fk_role_users    FK CONSTRAINT     y   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_role_users FOREIGN KEY (role_id) REFERENCES auth.roles(role_id);
 A   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT fk_role_users;
       auth          postgres    false    210    3078    217         /           2606    38124    users_roles fk_user    FK CONSTRAINT     s   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES auth.users(user_id);
 ;   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT fk_user;
       auth          postgres    false    3082    217    216         7           2606    38129 "   teacher_distributive asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT asignatura_fk FOREIGN KEY (course) REFERENCES public.subject(id);
 L   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT asignatura_fk;
       public          postgres    false    243    241    3100         8           2606    38134    teacher_distributive career_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT career_fk FOREIGN KEY (career) REFERENCES public.career(id) NOT VALID;
 H   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT career_fk;
       public          postgres    false    243    3086    224         3           2606    38139    grade career_grade_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT career_grade_fk FOREIGN KEY (career) REFERENCES public.career(id);
 ?   ALTER TABLE ONLY public.grade DROP CONSTRAINT career_grade_fk;
       public          postgres    false    224    239    3086         @           2606    38144    time_configuration classroom_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT classroom_fk FOREIGN KEY (classroom) REFERENCES public.classrooms(id);
 I   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT classroom_fk;
       public          postgres    false    3092    269    231         A           2606    38149    time_configuration dia_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT dia_fk FOREIGN KEY (day) REFERENCES public.day(id);
 C   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT dia_fk;
       public          postgres    false    3094    236    269         >           2606    38154 "   size_request fk-asignatura_docente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT "fk-asignatura_docente" FOREIGN KEY (teaching_subject) REFERENCES public.teacher_distributive(id);
 N   ALTER TABLE ONLY public.size_request DROP CONSTRAINT "fk-asignatura_docente";
       public          postgres    false    3104    243    260         1           2606    38159     classrooms fk_classroom_location    FK CONSTRAINT     ?   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_location FOREIGN KEY (location) REFERENCES public.locations(id);
 J   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT fk_classroom_location;
       public          postgres    false    231    3108    250         2           2606    38164    classrooms fk_classroom_type    FK CONSTRAINT     ?   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_type FOREIGN KEY (type) REFERENCES public.classroom_types(id);
 F   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT fk_classroom_type;
       public          postgres    false    231    3090    228         4           2606    38169    grade fk_level_catalogue    FK CONSTRAINT     y   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT fk_level_catalogue FOREIGN KEY (level) REFERENCES public.catalogue(id);
 B   ALTER TABLE ONLY public.grade DROP CONSTRAINT fk_level_catalogue;
       public          postgres    false    239    226    3088         <           2606    38174     means_classrom fk_mean_classroom    FK CONSTRAINT     ?   ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT fk_mean_classroom FOREIGN KEY (classroom) REFERENCES public.classrooms(id);
 J   ALTER TABLE ONLY public.means_classrom DROP CONSTRAINT fk_mean_classroom;
       public          postgres    false    253    3092    231         9           2606    38179    teacher_distributive grade_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT grade_fk FOREIGN KEY (grade) REFERENCES public.grade(id);
 G   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT grade_fk;
       public          postgres    false    239    243    3096         B           2606    38184    time_configuration hora_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT hora_fk FOREIGN KEY (hour) REFERENCES public.hours_table(id);
 D   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT hora_fk;
       public          postgres    false    269    248    3106         5           2606    38189    grade paralell_catalogue_fk    FK CONSTRAINT        ALTER TABLE ONLY public.grade
    ADD CONSTRAINT paralell_catalogue_fk FOREIGN KEY (parallel) REFERENCES public.catalogue(id);
 E   ALTER TABLE ONLY public.grade DROP CONSTRAINT paralell_catalogue_fk;
       public          postgres    false    226    3088    239         C           2606    38194 %   time_configuration periodo_lectivo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_period) REFERENCES public.school_period(id);
 O   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    3098    240    269         :           2606    38199 '   teacher_distributive periodo_lectivo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);
 Q   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    3098    243    240         =           2606    38204    request periodo_lectivo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.request
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);
 D   ALTER TABLE ONLY public.request DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    257    240    3098         ?           2606    38209    size_request solicitud_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_fk FOREIGN KEY (request) REFERENCES public.request(id);
 C   ALTER TABLE ONLY public.size_request DROP CONSTRAINT solicitud_fk;
       public          postgres    false    3112    260    257         D           2606    38214 :   time_configuration teacher_distributive-config_schedule-fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT "teacher_distributive-config_schedule-fk" FOREIGN KEY (occupied_by) REFERENCES public.teacher_distributive(id);
 f   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT "teacher_distributive-config_schedule-fk";
       public          postgres    false    3104    269    243         ;           2606    38219    teacher_distributive teacher_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT teacher_fk FOREIGN KEY (teacher) REFERENCES public.teacher(id);
 I   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT teacher_fk;
       public          postgres    false    243    3102    242         6           2606    38224    grade working_day_catalogue_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT working_day_catalogue_fk FOREIGN KEY (working_day) REFERENCES public.catalogue(id);
 H   ALTER TABLE ONLY public.grade DROP CONSTRAINT working_day_catalogue_fk;
       public          postgres    false    3088    226    239                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3269.dat                                                                                            0000600 0004000 0002000 00000000315 14317077262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	USUARIO_CREAR
2	USUARIO_LEER
3	USUARIO_ACTUALIZAR
4	USUARIO_ELIMINAR
5	ROL_CREAR
6	ROL_LEER
7	ROL_ACTUALIZAR
8	ROL_ELIMINAR
9	PERMISO_CREAR
10	PERMISO_LEER
11	PERMISO_ACTUALIZAR
12	PERMISO_ELIMINAR
\.


                                                                                                                                                                                                                                                                                                                   3272.dat                                                                                            0000600 0004000 0002000 00000000062 14317077262 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ROLE_ADMIN
2	ROLE_ASESOR
3	ROLE_FACTURADOR
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3273.dat                                                                                            0000600 0004000 0002000 00000000035 14317077262 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
2	1	2
3	1	3
4	1	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3278.dat                                                                                            0000600 0004000 0002000 00000000666 14317077262 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	$2a$10$q9uY/ip4pu.NAZMP.IYnzew.7uqM4LOqiBP9/AMP/X/io5C7cwjhC	Anderson Macias	ander	f	f	t
3	$2a$10$UA54iujLZrJTSLOk3u0GqOEPKEST/0yK4srDyx6ZHTmtGlXhRK5y2	jhoan Rol	jhon	f	f	t
1	$2a$10$TZH6Iw8ZIAAvJajenLF8ieH/FnNrDIUfQZHYT7RmE2k8l1fm38rny	Admin	admin	f	f	f
8	$2a$10$hO5LzphIYlwCeurHOsRS9.RYBtfgp4ZoMUxO4ha9SizRyxHKNMsba	asdasdasd	asdasdasdas	f	f	f
9	$2a$10$FkcpmY5YLLkwWOdEAj89aOwIx8m7tH7bKyq/xNkyjL/ocwDRwYZVe	asdasas	asdasdas	f	f	t
\.


                                                                          3279.dat                                                                                            0000600 0004000 0002000 00000000054 14317077262 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	1
3	3	1
1	1	1
12	9	2
13	9	1
14	9	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3286.dat                                                                                            0000600 0004000 0002000 00000007354 14317077262 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        19	sfrtsd	7	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664552972/distributivo_yavirac/image.png.png	f	\N
14	asxasdas	0	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664143111/distributivo_yavirac/recon.jpg.jpg	f	\N
17	asdasdasd	0	https://res.cloudinary.com/dx5lme7oc/image/upload/v1663865264/cld-sample-4.jpg	f	\N
5	Tecnologias	7	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	t	\N
16	sdfdsf	0	https://res.cloudinary.com/dx5lme7oc/image/upload/v1663865264/cld-sample-4.jpg	f	\N
12	GastronomiaNaturala	3	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	f	\N
7	Patrimonios	4	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664123148/distributivo_yavirac/descarga.jpeg.jpg	f	\N
10	Ciencias	4	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	t	CVC
9	Cultura	4	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664209823/distributivo_yavirac/Captura%20de%20pantalla_2022-09-26_11-30-03.png.png	t	CV4
11	Turismo	5	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	t	TVS
15	asdasd	3	https://res.cloudinary.com/dx5lme7oc/image/upload/v1663865264/cld-sample-4.jpg	f	\N
3	Diseno de modas	8	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	t	DMMV
1	Desarrollo de Software	5	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	t	DSM
18	asdas	14	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664552972/distributivo_yavirac/image.png.png	f	\N
13	Ingenieria	12	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663976744/distributivo_yavirac/tux.jpg.jpg	f	ISS
20	adasasd	0	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664552972/distributivo_yavirac/image.png.png	f	\N
6	Fisica	2	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	f	FV
21	qasasd	10	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664908082/distributivo_yavirac/localhost_5173_%28Galaxy%20Fold%29.png.png	t	\N
2	Diseno Modas	5	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664143111/distributivo_yavirac/recon.jpg.jpg	f	DMM
8	ComunicacionSocial	9	http://res.cloudinary.com/dx5lme7oc/image/upload/v1664123148/distributivo_yavirac/descarga.jpeg.jpg	f	CSV
4	Sistemas	6	http://res.cloudinary.com/dx5lme7oc/image/upload/v1663947826/distributivo_yavirac/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg.jpg	f	SM
\.


                                                                                                                                                                                                                                                                                    3288.dat                                                                                            0000600 0004000 0002000 00000000325 14317077262 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	level	1ro	t
2	level	2do	t
3	level	3ro	t
4	level	4to	t
5	level	5to	t
6	paralell	A	t
7	paralell	B	t
8	paralell	C	t
9	paralell	D	t
10	working_day	Vespertina	t
11	working_day	Matutina	t
12	working_day	Diurna	t
\.


                                                                                                                                                                                                                                                                                                           3290.dat                                                                                            0000600 0004000 0002000 00000000005 14317077262 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3293.dat                                                                                            0000600 0004000 0002000 00000000327 14317077262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	\N	1	Aula 1	30	f	jasa	DFDFSD
2	\N	1	Aula 2	30	t	Aula de desarrollo	ASDASD
4	\N	1	asdasd	41	f	asdasd	\N
3	\N	1	Laboratorio 1	30	t	Laboratorio de desarrollo de software	QWEQWE
5	\N	2	dswfsadfsd	0	t	asdasasd	\N
\.


                                                                                                                                                                                                                                                                                                         3298.dat                                                                                            0000600 0004000 0002000 00000000132 14317077262 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sunday	1
2	Monday	2
3	Tuesday	3
4	Wednesday	4
5	Thursday	5
6	Friday	6
7	Saturday	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                      3301.dat                                                                                            0000600 0004000 0002000 00000000344 14317077262 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	EducacionFisica	12	2	8	t	3
8	sadfsdfadsf	11	1	7	f	19
9	dasd	11	2	6	f	19
5	Cursos	11	3	9	f	2
4	1ro NB-SOFTWARE	12	1	7	f	1
2	1ro VB-SOFTWARE	11	1	7	t	1
3	1ro MB-SOFTWARE	10	1	7	t	1
7	Modasas	11	3	9	f	3
10	asdasd	10	1	6	t	5
\.


                                                                                                                                                                                                                                                                                            3309.dat                                                                                            0000600 0004000 0002000 00000000357 14317077262 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	07:00-08:00	1
2	08:00-09:00	2
3	09:00-10:00	3
4	10:00-11:00	4
5	11:00-12:00	5
6	12:00-13:00	6
7	13:00-14:00	7
8	14:00-15:00	8
9	15:00-16:00	9
10	16:00-17:00	10
11	17:00-18:00	11
12	18:00-19:00	12
13	19:00-20:00	13
14	20:00-21:00	14
\.


                                                                                                                                                                                                                                                                                 3311.dat                                                                                            0000600 0004000 0002000 00000000622 14317077262 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ubicacio2	prueba	t	123123155	26
2	Pasillo2	Pasillo Frontal	f	45	5
4	qweqweqw	asdsadas	t	1231231320	123123
5	asdasd	asdasdsad	t	0	0
6	asdasd	asdasdad	t	0	0
7	asdasdad	asdasdasd	t	0	0
8	asdasdasd	asdasdasdasd	t	0	0
9	asdasdasd	asdasdas	t	0	0
10	asdasdasddsa	asdasasdasd	t	0	0
11	asdasasd	asdasasdasd	t	0	0
12	asdasdasdas	asdassad	t	0	0
3	Aula5	asdasdad	t	23424	334324
13	asdasdasd	asdasdasd	t	0	0
\.


                                                                                                              3314.dat                                                                                            0000600 0004000 0002000 00000000005 14317077262 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3318.dat                                                                                            0000600 0004000 0002000 00000000005 14317077262 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3302.dat                                                                                            0000600 0004000 0002000 00000000333 14317077262 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	MAYO 2022 - OCTUBRE 2022	2019-01-01	2019-06-30	t
2	OCTUBRE 2021 - FEBRERO  2021	2021-04-01	2021-09-30	t
3	ABRIL 2021 - AGOSTO 2022	2021-11-01	2022-04-30	t
4	SEPTIEMBRE 2022 - FEBRERO 2022	2022-06-01	2022-11-30	t
\.


                                                                                                                                                                                                                                                                                                     3321.dat                                                                                            0000600 0004000 0002000 00000000005 14317077262 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3303.dat                                                                                            0000600 0004000 0002000 00000000766 14317077262 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0001S	Matematica Discreta	31	0	1	\N
2	0002S	Estadistica Descriptiva	31	0	1	\N
3	0003S	Diversidad Cultural	31	0	1	\N
4	0004S	Programacion de aplicaciones web	10	21	1	\N
5	0005S	Desarrollo de aplicaciones moviles	10	21	1	\N
6	0006S	Legislacion Informatica	31	0	1	\N
7	0007S	Tendencias actuales del Desarrollo de Software	5	26	1	\N
8	0001M	Expresion oral y escrita	20	11	3	\N
9	0002M	Matematicas financieras	31	0	3	\N
10	0003M	Costos industriales	20	11	3	\N
11	0004M	Contabilidad General	31	0	3	\N
\.


          3304.dat                                                                                            0000600 0004000 0002000 00000000577 14317077262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	1754544564	Maximiliano	#002aff	\N	max@yavirac.edu.ec	t	Tito Moreta
2	123213123	Roberto	#0033ff	\N	carlos@gmail.com	t	Carlos
3	1231312312	Alejo	#9b6350	\N	velastegi@yavirac.edu.ec	t	Velastegi
1	123123123	Andre	#565adc	\N	tigua@yavirac.edu.ec	t	Tijua
4	1726477489	Esteban	#3a9843	\N	esteban@gmail.com	t	Pilarr
6	2101165609	Anderson	#1085a2	\N	ajo.macias@yavirac.edu.ec	t	Macias
\.


                                                                                                                                 3305.dat                                                                                            0000600 0004000 0002000 00000000260 14317077262 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7	\N	\N	\N	\N	\N
5	4	2	2	2	1
6	4	3	2	3	3
8	2	1	9	4	4
9	4	4	1	6	5
10	3	2	6	5	6
12	1	5	10	7	9
13	1	1	2	2	10
14	1	6	7	2	1
15	1	5	4	2	1
16	1	2	1	2	1
17	1	4	8	2	1
18	1	5	1	6	5
\.


                                                                                                                                                                                                                                                                                                                                                3330.dat                                                                                            0000600 0004000 0002000 00000052571 14317077262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        524532	4	3	2	2022-09-26	3	15	t	\N
524533	4	3	3	2022-09-27	3	15	t	\N
524534	4	3	4	2022-09-28	3	15	t	\N
524535	4	3	5	2022-09-29	3	15	t	\N
524536	4	3	6	2022-09-30	3	15	t	\N
524537	4	3	2	2022-10-03	3	15	t	\N
524538	4	3	3	2022-10-04	3	15	t	\N
524539	4	3	4	2022-10-05	3	15	t	\N
524540	4	3	5	2022-10-06	3	15	t	\N
524541	4	3	6	2022-10-07	3	15	t	\N
524542	4	3	2	2022-10-10	3	15	t	\N
524543	4	3	3	2022-10-11	3	15	t	\N
524544	4	3	4	2022-10-12	3	15	t	\N
524545	4	3	5	2022-10-13	3	15	t	\N
524546	4	3	6	2022-10-14	3	15	t	\N
524547	4	3	2	2022-10-17	3	15	t	\N
524548	4	3	3	2022-10-18	3	15	t	\N
524549	4	3	4	2022-10-19	3	15	t	\N
524550	4	3	5	2022-10-20	3	15	t	\N
524551	4	3	6	2022-10-21	3	15	t	\N
524552	4	3	2	2022-10-24	3	15	t	\N
524553	4	3	3	2022-10-25	3	15	t	\N
524554	4	3	4	2022-10-26	3	15	t	\N
524555	4	3	5	2022-10-27	3	15	t	\N
524556	4	3	6	2022-10-28	3	15	t	\N
524557	4	3	2	2022-10-31	3	15	t	\N
524975	4	3	5	2023-01-05	7	15	t	\N
524976	4	3	6	2023-01-06	7	15	t	\N
524977	4	3	2	2023-01-09	7	15	t	\N
524978	4	3	3	2023-01-10	7	15	t	\N
524979	4	3	4	2023-01-11	7	15	t	\N
524980	4	3	5	2023-01-12	7	15	t	\N
524981	4	3	6	2023-01-13	7	15	t	\N
524982	4	3	2	2023-01-16	7	15	t	\N
524983	4	3	3	2023-01-17	7	15	t	\N
524984	4	3	4	2023-01-18	7	15	t	\N
524985	4	3	5	2023-01-19	7	15	t	\N
524986	4	3	6	2023-01-20	7	15	t	\N
524987	4	3	2	2023-01-23	7	15	t	\N
524988	4	3	3	2023-01-24	7	15	t	\N
524989	4	3	4	2023-01-25	7	15	t	\N
524990	4	3	5	2023-01-26	7	15	t	\N
524991	4	3	6	2023-01-27	7	15	t	\N
524992	4	3	2	2023-01-30	7	15	t	\N
524993	4	3	3	2023-01-31	7	15	t	\N
524994	4	3	4	2023-02-01	7	15	t	\N
524995	4	3	5	2023-02-02	7	15	t	\N
524996	4	3	6	2023-02-03	7	15	t	\N
524997	4	3	2	2023-02-06	7	15	t	\N
524998	4	3	3	2023-02-07	7	15	t	\N
524999	4	3	4	2023-02-08	7	15	t	\N
525000	4	3	5	2023-02-09	7	15	t	\N
525001	4	3	6	2023-02-10	7	15	t	\N
525002	4	3	2	2023-02-13	7	15	t	\N
525003	4	3	3	2023-02-14	7	15	t	\N
525004	4	3	4	2023-02-15	7	15	t	\N
525005	4	3	5	2023-02-16	7	15	t	\N
525006	4	3	6	2023-02-17	7	15	t	\N
525007	4	3	2	2023-02-20	7	15	t	\N
525008	4	3	3	2023-02-21	7	15	t	\N
525009	4	3	4	2023-02-22	7	15	t	\N
525010	4	3	5	2023-02-23	7	15	t	\N
525011	4	3	6	2023-02-24	7	15	t	\N
525012	4	3	2	2023-02-27	7	15	t	\N
525013	4	3	3	2023-02-28	7	15	t	\N
525014	4	3	4	2023-03-01	7	15	t	\N
525015	4	3	5	2023-03-02	7	15	t	\N
525016	4	3	6	2023-03-03	7	15	t	\N
525017	4	3	2	2023-03-06	7	15	t	\N
525018	4	3	3	2023-03-07	7	15	t	\N
525019	4	3	4	2023-03-08	7	15	t	\N
525020	4	3	5	2023-03-09	7	15	t	\N
525021	4	3	6	2023-03-10	7	15	t	\N
525022	4	3	2	2023-03-13	7	15	t	\N
525023	4	3	3	2023-03-14	7	15	t	\N
525024	4	3	4	2023-03-15	7	15	t	\N
525025	4	3	5	2023-03-16	7	15	t	\N
525026	4	3	6	2023-03-17	7	15	t	\N
525027	4	3	2	2023-03-20	7	15	t	\N
525028	4	3	3	2023-03-21	7	15	t	\N
525029	4	3	4	2023-03-22	7	15	t	\N
525030	4	3	5	2023-03-23	7	15	t	\N
525031	4	3	6	2023-03-24	7	15	t	\N
525032	4	3	2	2023-03-27	7	15	t	\N
525033	4	3	3	2023-03-28	7	15	t	\N
525034	4	3	4	2023-03-29	7	15	t	\N
525035	4	3	5	2023-03-30	7	15	t	\N
525036	4	3	6	2023-03-31	7	15	t	\N
525037	4	3	2	2023-04-03	7	15	t	\N
525038	4	3	3	2023-04-04	7	15	t	\N
525039	4	3	4	2023-04-05	7	15	t	\N
525040	4	3	5	2023-04-06	7	15	t	\N
525041	4	3	6	2023-04-07	7	15	t	\N
525042	4	3	2	2023-04-10	7	15	t	\N
525043	4	3	3	2023-04-11	7	15	t	\N
525044	4	3	4	2023-04-12	7	15	t	\N
525045	4	3	5	2023-04-13	7	15	t	\N
525046	4	3	6	2023-04-14	7	15	t	\N
525047	4	3	2	2023-04-17	7	15	t	\N
525048	4	3	3	2023-04-18	7	15	t	\N
525049	4	3	4	2023-04-19	7	15	t	\N
525050	4	3	5	2023-04-20	7	15	t	\N
525051	4	3	6	2023-04-21	7	15	t	\N
525052	4	3	2	2023-04-24	7	15	t	\N
525053	4	3	3	2023-04-25	7	15	t	\N
525054	4	3	4	2023-04-26	7	15	t	\N
525055	4	3	5	2023-04-27	7	15	t	\N
525056	4	3	6	2023-04-28	7	15	t	\N
525057	4	3	2	2023-05-01	7	15	t	\N
525058	4	3	3	2023-05-02	7	15	t	\N
525059	4	3	4	2023-05-03	7	15	t	\N
525060	4	3	5	2023-05-04	7	15	t	\N
525061	4	3	6	2023-05-05	7	15	t	\N
525062	4	3	2	2023-05-08	7	15	t	\N
525063	4	3	3	2023-05-09	7	15	t	\N
525064	4	3	4	2023-05-10	7	15	t	\N
525065	4	3	5	2023-05-11	7	15	t	\N
525066	4	3	6	2023-05-12	7	15	t	\N
525067	4	3	2	2023-05-15	7	15	t	\N
525068	4	3	3	2023-05-16	7	15	t	\N
524558	4	3	2	2022-09-26	4	15	t	\N
524559	4	3	3	2022-09-27	4	15	t	\N
524560	4	3	4	2022-09-28	4	15	t	\N
524561	4	3	5	2022-09-29	4	15	t	\N
524562	4	3	6	2022-09-30	4	15	t	\N
524563	4	3	2	2022-10-03	4	15	t	\N
524564	4	3	3	2022-10-04	4	15	t	\N
524565	4	3	4	2022-10-05	4	15	t	\N
524566	4	3	5	2022-10-06	4	15	t	\N
524567	4	3	6	2022-10-07	4	15	t	\N
524568	4	3	2	2022-10-10	4	15	t	\N
524569	4	3	3	2022-10-11	4	15	t	\N
524570	4	3	4	2022-10-12	4	15	t	\N
524571	4	3	5	2022-10-13	4	15	t	\N
524572	4	3	6	2022-10-14	4	15	t	\N
524573	4	3	2	2022-10-17	4	15	t	\N
524574	4	3	3	2022-10-18	4	15	t	\N
524575	4	3	4	2022-10-19	4	15	t	\N
524576	4	3	5	2022-10-20	4	15	t	\N
524577	4	3	6	2022-10-21	4	15	t	\N
524578	4	3	2	2022-10-24	4	15	t	\N
524579	4	3	3	2022-10-25	4	15	t	\N
524580	4	3	4	2022-10-26	4	15	t	\N
524581	4	3	5	2022-10-27	4	15	t	\N
524582	4	3	6	2022-10-28	4	15	t	\N
524583	4	3	2	2022-10-31	4	15	t	\N
525069	4	3	4	2023-05-17	7	15	t	\N
525070	4	3	5	2023-05-18	7	15	t	\N
525071	4	3	6	2023-05-19	7	15	t	\N
525072	4	3	2	2023-05-22	7	15	t	\N
525073	4	3	3	2023-05-23	7	15	t	\N
525074	4	3	4	2023-05-24	7	15	t	\N
525075	4	3	5	2023-05-25	7	15	t	\N
525076	4	3	6	2023-05-26	7	15	t	\N
525077	4	3	2	2023-05-29	7	15	t	\N
525078	4	3	3	2023-05-30	7	15	t	\N
525079	4	3	4	2023-05-31	7	15	t	\N
525080	4	3	5	2023-06-01	7	15	t	\N
525081	4	3	6	2023-06-02	7	15	t	\N
525082	4	3	2	2023-06-05	7	15	t	\N
525083	4	3	3	2023-06-06	7	15	t	\N
525084	4	3	4	2023-06-07	7	15	t	\N
525085	4	3	5	2023-06-08	7	15	t	\N
525086	4	3	6	2023-06-09	7	15	t	\N
525087	4	3	2	2023-06-12	7	15	t	\N
525088	4	3	3	2023-06-13	7	15	t	\N
525089	4	3	4	2023-06-14	7	15	t	\N
525090	4	3	5	2023-06-15	7	15	t	\N
525091	4	3	6	2023-06-16	7	15	t	\N
525092	4	3	2	2023-06-19	7	15	t	\N
525093	4	3	3	2023-06-20	7	15	t	\N
525094	4	3	4	2023-06-21	7	15	t	\N
525095	4	3	5	2023-06-22	7	15	t	\N
525096	4	3	6	2023-06-23	7	15	t	\N
525097	4	3	2	2023-06-26	7	15	t	\N
525098	4	3	3	2023-06-27	7	15	t	\N
525099	4	3	4	2023-06-28	7	15	t	\N
525100	4	3	5	2023-06-29	7	15	t	\N
525101	4	3	6	2023-06-30	7	15	t	\N
524584	4	3	2	2022-09-26	5	15	t	\N
524585	4	3	3	2022-09-27	5	15	t	\N
524586	4	3	4	2022-09-28	5	15	t	\N
524587	4	3	5	2022-09-29	5	15	t	\N
524588	4	3	6	2022-09-30	5	15	t	\N
524589	4	3	2	2022-10-03	5	15	t	\N
524590	4	3	3	2022-10-04	5	15	t	\N
524591	4	3	4	2022-10-05	5	15	t	\N
524592	4	3	5	2022-10-06	5	15	t	\N
524593	4	3	6	2022-10-07	5	15	t	\N
524594	4	3	2	2022-10-10	5	15	t	\N
524595	4	3	3	2022-10-11	5	15	t	\N
524596	4	3	4	2022-10-12	5	15	t	\N
524597	4	3	5	2022-10-13	5	15	t	\N
524598	4	3	6	2022-10-14	5	15	t	\N
524599	4	3	2	2022-10-17	5	15	t	\N
524600	4	3	3	2022-10-18	5	15	t	\N
524601	4	3	4	2022-10-19	5	15	t	\N
524602	4	3	5	2022-10-20	5	15	t	\N
524603	4	3	6	2022-10-21	5	15	t	\N
524604	4	3	2	2022-10-24	5	15	t	\N
524605	4	3	3	2022-10-25	5	15	t	\N
524606	4	3	4	2022-10-26	5	15	t	\N
524607	4	3	5	2022-10-27	5	15	t	\N
524608	4	3	6	2022-10-28	5	15	t	\N
524609	4	3	2	2022-10-31	5	15	t	\N
525102	4	3	2	2022-10-24	10	15	t	\N
524611	4	2	3	2022-11-01	1	13	t	\N
524612	4	2	4	2022-11-02	1	13	t	\N
524613	4	2	5	2022-11-03	1	13	t	\N
524614	4	2	6	2022-11-04	1	13	t	\N
524615	4	2	2	2022-11-07	1	13	t	\N
524616	4	2	3	2022-11-08	1	13	t	\N
524617	4	2	4	2022-11-09	1	13	t	\N
524618	4	2	5	2022-11-10	1	13	t	\N
524619	4	2	6	2022-11-11	1	13	t	\N
524620	4	2	2	2022-11-14	1	13	t	\N
524621	4	2	3	2022-11-15	1	13	t	\N
524622	4	2	4	2022-11-16	1	13	t	\N
524623	4	2	5	2022-11-17	1	13	t	\N
524624	4	2	6	2022-11-18	1	13	t	\N
524625	4	2	2	2022-11-21	1	13	t	\N
524626	4	2	3	2022-11-22	1	13	t	\N
524627	4	2	4	2022-11-23	1	13	t	\N
524628	4	2	5	2022-11-24	1	13	t	\N
524629	4	2	6	2022-11-25	1	13	t	\N
524630	4	2	2	2022-11-28	1	13	t	\N
524631	4	2	3	2022-11-29	1	13	t	\N
524632	4	2	4	2022-11-30	1	13	t	\N
524677	4	\N	2	2022-10-03	7	8	t	\N
524678	4	\N	6	2022-10-07	7	8	t	\N
524679	4	\N	2	2022-10-10	7	8	t	\N
524680	4	\N	6	2022-10-14	7	8	t	\N
524681	4	\N	2	2022-10-17	7	8	t	\N
524682	4	\N	6	2022-10-21	7	8	t	\N
524683	4	\N	2	2022-10-24	7	8	t	\N
524691	4	2	2	2022-10-03	2	12	t	\N
524693	4	2	2	2022-10-10	2	12	t	\N
524694	4	2	6	2022-10-14	2	12	t	\N
524695	4	2	2	2022-10-17	2	12	t	\N
524696	4	2	6	2022-10-21	2	12	t	\N
524697	4	2	2	2022-10-24	2	12	t	\N
524698	4	2	2	2022-10-03	4	12	t	\N
524699	4	2	3	2022-10-04	4	12	t	\N
524700	4	2	4	2022-10-05	4	12	t	\N
524701	4	2	5	2022-10-06	4	12	t	\N
524704	4	2	3	2022-10-11	4	12	t	\N
524705	4	2	4	2022-10-12	4	12	t	\N
524706	4	2	5	2022-10-13	4	12	t	\N
524707	4	2	6	2022-10-14	4	12	t	\N
524708	4	2	2	2022-10-17	4	12	t	\N
524709	4	2	3	2022-10-18	4	12	t	\N
524710	4	2	4	2022-10-19	4	12	t	\N
524711	4	2	5	2022-10-20	4	12	t	\N
524712	4	2	6	2022-10-21	4	12	t	\N
524713	4	2	2	2022-10-24	4	12	t	\N
525103	4	3	2	2022-10-24	12	15	t	\N
524633	4	2	3	2022-11-01	2	13	t	\N
524634	4	2	4	2022-11-02	2	13	t	\N
524635	4	2	5	2022-11-03	2	13	t	\N
524636	4	2	6	2022-11-04	2	13	t	\N
524637	4	2	2	2022-11-07	2	13	t	\N
524638	4	2	3	2022-11-08	2	13	t	\N
524639	4	2	4	2022-11-09	2	13	t	\N
524640	4	2	5	2022-11-10	2	13	t	\N
524641	4	2	6	2022-11-11	2	13	t	\N
524642	4	2	2	2022-11-14	2	13	t	\N
524643	4	2	3	2022-11-15	2	13	t	\N
524644	4	2	4	2022-11-16	2	13	t	\N
524645	4	2	5	2022-11-17	2	13	t	\N
524646	4	2	6	2022-11-18	2	13	t	\N
524647	4	2	2	2022-11-21	2	13	t	\N
524648	4	2	3	2022-11-22	2	13	t	\N
524649	4	2	4	2022-11-23	2	13	t	\N
524650	4	2	5	2022-11-24	2	13	t	\N
524651	4	2	6	2022-11-25	2	13	t	\N
524652	4	2	2	2022-11-28	2	13	t	\N
524653	4	2	3	2022-11-29	2	13	t	\N
524654	4	2	4	2022-11-30	2	13	t	\N
524684	4	2	2	2022-10-03	1	12	t	\N
524686	4	2	2	2022-10-10	1	12	t	\N
524687	4	2	6	2022-10-14	1	12	t	\N
524688	4	2	2	2022-10-17	1	12	t	\N
524689	4	2	6	2022-10-21	1	12	t	\N
524690	4	2	2	2022-10-24	1	12	t	\N
525104	4	2	2	2022-10-03	11	13	t	\N
525105	4	2	3	2022-10-04	12	13	t	\N
525106	4	2	4	2022-10-05	12	13	t	\N
525107	4	2	6	2022-10-07	12	13	t	\N
525108	4	2	2	2022-10-10	12	13	t	\N
525109	4	2	3	2022-10-11	12	13	t	\N
525110	4	2	4	2022-10-12	12	13	t	\N
525111	4	2	6	2022-10-14	12	13	t	\N
525112	4	2	2	2022-10-17	12	13	t	\N
525113	4	2	3	2022-10-18	12	13	t	\N
525114	4	2	4	2022-10-19	12	13	t	\N
525115	4	2	6	2022-10-21	12	13	t	\N
525116	4	2	2	2022-10-24	12	13	t	\N
525117	4	2	3	2022-10-25	12	13	t	\N
525118	4	2	4	2022-10-26	12	13	t	\N
525119	4	2	6	2022-10-28	12	13	t	\N
525120	4	2	2	2022-10-31	12	13	t	\N
525121	4	2	3	2022-11-01	12	13	t	\N
525122	4	2	4	2022-11-02	12	13	t	\N
525123	4	2	6	2022-11-04	12	13	t	\N
525124	4	2	2	2022-11-07	12	13	t	\N
525125	4	2	3	2022-11-08	12	13	t	\N
525126	4	2	4	2022-11-09	12	13	t	\N
525127	4	2	6	2022-11-11	12	13	t	\N
525128	4	2	2	2022-11-14	12	13	t	\N
525129	4	2	3	2022-11-15	12	13	t	\N
525130	4	2	4	2022-11-16	12	13	t	\N
525131	4	2	6	2022-11-18	12	13	t	\N
525132	4	2	2	2022-11-21	12	13	t	\N
525133	4	2	3	2022-11-22	12	13	t	\N
525134	4	2	4	2022-11-23	12	13	t	\N
525135	4	2	6	2022-11-25	12	13	t	\N
525136	4	2	2	2022-11-28	12	13	t	\N
525137	4	2	3	2022-11-29	12	13	t	\N
525138	4	2	4	2022-11-30	12	13	t	\N
524655	4	2	3	2022-11-01	3	17	t	\N
524656	4	2	4	2022-11-02	3	17	t	\N
524657	4	2	5	2022-11-03	3	17	t	\N
524658	4	2	6	2022-11-04	3	17	t	\N
524659	4	2	2	2022-11-07	3	17	t	\N
524660	4	2	3	2022-11-08	3	17	t	\N
524661	4	2	4	2022-11-09	3	17	t	\N
524662	4	2	5	2022-11-10	3	17	t	\N
524663	4	2	6	2022-11-11	3	17	t	\N
524664	4	2	2	2022-11-14	3	17	t	\N
524665	4	2	3	2022-11-15	3	17	t	\N
524666	4	2	4	2022-11-16	3	17	t	\N
524667	4	2	5	2022-11-17	3	17	t	\N
524668	4	2	6	2022-11-18	3	17	t	\N
524669	4	2	2	2022-11-21	3	17	t	\N
524670	4	2	3	2022-11-22	3	17	t	\N
524671	4	2	4	2022-11-23	3	17	t	\N
524672	4	2	5	2022-11-24	3	17	t	\N
524673	4	2	6	2022-11-25	3	17	t	\N
524674	4	2	2	2022-11-28	3	17	t	\N
524675	4	2	3	2022-11-29	3	17	t	\N
524676	4	2	4	2022-11-30	3	17	t	\N
524714	1	2	2	2022-10-03	7	16	t	\N
524718	4	\N	2	2022-10-03	6	6	t	\N
524719	4	\N	3	2022-10-04	6	6	t	\N
524720	4	\N	4	2022-10-05	6	6	t	\N
524721	4	\N	5	2022-10-06	6	6	t	\N
524722	4	\N	6	2022-10-07	6	6	t	\N
524723	4	\N	2	2022-10-10	6	6	t	\N
524724	4	\N	3	2022-10-11	6	6	t	\N
524725	4	\N	4	2022-10-12	6	6	t	\N
524726	4	\N	5	2022-10-13	6	6	t	\N
524727	4	\N	6	2022-10-14	6	6	t	\N
524728	4	\N	2	2022-10-17	6	6	t	\N
524729	4	\N	3	2022-10-18	6	6	t	\N
524730	4	\N	4	2022-10-19	6	6	t	\N
524731	4	\N	5	2022-10-20	6	6	t	\N
524732	4	\N	6	2022-10-21	6	6	t	\N
524733	4	\N	2	2022-10-24	6	6	t	\N
524734	4	\N	3	2022-10-25	6	6	t	\N
524735	4	\N	4	2022-10-26	6	6	t	\N
524736	4	\N	5	2022-10-27	6	6	t	\N
524737	4	\N	6	2022-10-28	6	6	t	\N
524738	4	\N	2	2022-10-31	6	6	t	\N
524760	4	2	2	2022-10-03	3	6	t	\N
524761	4	2	3	2022-10-04	3	6	t	\N
524762	4	2	2	2022-10-10	3	6	t	\N
524763	4	2	3	2022-10-11	3	6	t	\N
524764	4	2	2	2022-10-17	3	6	t	\N
524765	4	2	3	2022-10-18	3	6	t	\N
524766	4	2	2	2022-10-24	3	6	t	\N
524768	4	2	2	2022-10-31	3	6	t	\N
524793	4	2	3	2022-10-04	2	9	t	\N
524794	4	2	4	2022-10-05	2	9	t	\N
524795	4	2	5	2022-10-06	2	9	t	\N
524796	4	2	3	2022-10-11	2	9	t	\N
524797	4	2	4	2022-10-12	2	9	t	\N
524798	4	2	5	2022-10-13	2	9	t	\N
524799	4	2	3	2022-10-18	2	9	t	\N
524800	4	2	4	2022-10-19	2	9	t	\N
524801	4	2	5	2022-10-20	2	9	t	\N
524802	4	2	3	2022-10-25	2	9	t	\N
524803	4	2	4	2022-10-26	2	9	t	\N
524804	4	2	5	2022-10-27	2	9	t	\N
524739	4	2	2	2022-10-03	5	6	t	\N
524740	4	2	3	2022-10-04	5	6	t	\N
524741	4	2	4	2022-10-05	5	6	t	\N
524742	4	2	5	2022-10-06	5	6	t	\N
524744	4	2	2	2022-10-10	5	6	t	\N
524745	4	2	3	2022-10-11	5	6	t	\N
524746	4	2	4	2022-10-12	5	6	t	\N
524747	4	2	5	2022-10-13	5	6	t	\N
524748	4	2	6	2022-10-14	5	6	t	\N
524749	4	2	2	2022-10-17	5	6	t	\N
524750	4	2	3	2022-10-18	5	6	t	\N
524751	4	2	4	2022-10-19	5	6	t	\N
524752	4	2	5	2022-10-20	5	6	t	\N
524753	4	2	6	2022-10-21	5	6	t	\N
524754	4	2	2	2022-10-24	5	6	t	\N
524755	4	2	3	2022-10-25	5	6	t	\N
524756	4	2	4	2022-10-26	5	6	t	\N
524757	4	2	5	2022-10-27	5	6	t	\N
524758	4	2	6	2022-10-28	5	6	t	\N
524759	4	2	2	2022-10-31	5	6	t	\N
524769	4	2	4	2022-10-05	3	13	t	\N
524770	4	2	5	2022-10-06	3	13	t	\N
524772	4	2	4	2022-10-12	3	13	t	\N
524773	4	2	5	2022-10-13	3	13	t	\N
524774	4	2	6	2022-10-14	3	13	t	\N
524775	4	2	4	2022-10-19	3	13	t	\N
524776	4	2	5	2022-10-20	3	13	t	\N
524777	4	2	6	2022-10-21	3	13	t	\N
524779	4	2	5	2022-10-27	3	13	t	\N
524780	4	2	6	2022-10-28	3	13	t	\N
524781	4	2	3	2022-10-04	1	13	t	\N
524782	4	2	4	2022-10-05	1	13	t	\N
524783	4	2	5	2022-10-06	1	13	t	\N
524784	4	2	3	2022-10-11	1	13	t	\N
524785	4	2	4	2022-10-12	1	13	t	\N
524786	4	2	5	2022-10-13	1	13	t	\N
524787	4	2	3	2022-10-18	1	13	t	\N
524788	4	2	4	2022-10-19	1	13	t	\N
524789	4	2	5	2022-10-20	1	13	t	\N
524790	4	2	3	2022-10-25	1	13	t	\N
524791	4	2	4	2022-10-26	1	13	t	\N
524792	4	2	5	2022-10-27	1	13	t	\N
524806	4	2	3	2022-10-04	6	6	t	\N
524835	4	3	4	2022-10-05	10	6	t	\N
524836	4	3	5	2022-10-06	10	6	t	\N
524840	4	3	6	2022-10-07	10	6	t	\N
524843	4	3	4	2022-10-12	10	6	t	\N
524844	4	3	5	2022-10-13	10	6	t	\N
524847	4	3	6	2022-10-14	10	6	t	\N
524850	4	3	4	2022-10-19	10	6	t	\N
524852	4	3	5	2022-10-20	10	6	t	\N
524856	4	3	6	2022-10-21	10	6	t	\N
524859	4	3	4	2022-10-26	10	6	t	\N
524861	4	3	5	2022-10-27	10	6	t	\N
524864	4	3	6	2022-10-28	10	6	t	\N
524867	4	3	4	2022-11-02	10	6	t	\N
524870	4	3	5	2022-11-03	10	6	t	\N
524873	4	3	6	2022-11-04	10	6	t	\N
524876	4	3	4	2022-11-09	10	6	t	\N
524879	4	3	5	2022-11-10	10	6	t	\N
524882	4	3	6	2022-11-11	10	6	t	\N
524885	4	3	4	2022-11-16	10	6	t	\N
524887	4	3	5	2022-11-17	10	6	t	\N
524890	4	3	6	2022-11-18	10	6	t	\N
524893	4	3	4	2022-11-23	10	6	t	\N
524896	4	3	5	2022-11-24	10	6	t	\N
524899	4	3	6	2022-11-25	10	6	t	\N
524902	4	3	4	2022-11-30	10	6	t	\N
524807	4	2	4	2022-10-05	9	6	t	\N
524808	4	2	5	2022-10-06	9	6	t	\N
524809	4	2	6	2022-10-07	9	6	t	\N
524810	4	2	4	2022-10-12	9	6	t	\N
524811	4	2	5	2022-10-13	9	6	t	\N
524812	4	2	6	2022-10-14	9	6	t	\N
524813	4	2	4	2022-10-19	9	6	t	\N
524814	4	2	5	2022-10-20	9	6	t	\N
524815	4	2	6	2022-10-21	9	6	t	\N
524816	4	2	4	2022-10-26	9	6	t	\N
524817	4	2	5	2022-10-27	9	6	t	\N
524818	4	2	6	2022-10-28	9	6	t	\N
524819	4	2	4	2022-11-02	9	6	t	\N
524820	4	2	5	2022-11-03	9	6	t	\N
524821	4	2	6	2022-11-04	9	6	t	\N
524822	4	2	4	2022-11-09	9	6	t	\N
524823	4	2	5	2022-11-10	9	6	t	\N
524824	4	2	6	2022-11-11	9	6	t	\N
524825	4	2	4	2022-11-16	9	6	t	\N
524826	4	2	5	2022-11-17	9	6	t	\N
524827	4	2	6	2022-11-18	9	6	t	\N
524828	4	2	4	2022-11-23	9	6	t	\N
524829	4	2	5	2022-11-24	9	6	t	\N
524830	4	2	6	2022-11-25	9	6	t	\N
524831	4	2	4	2022-11-30	9	6	t	\N
524832	4	3	4	2022-10-05	9	6	t	\N
524833	4	3	5	2022-10-06	9	6	t	\N
524834	4	3	6	2022-10-07	9	6	t	\N
524838	4	3	4	2022-10-12	9	6	t	\N
524842	4	3	5	2022-10-13	9	6	t	\N
524845	4	3	6	2022-10-14	9	6	t	\N
524848	4	3	4	2022-10-19	9	6	t	\N
524851	4	3	5	2022-10-20	9	6	t	\N
524855	4	3	6	2022-10-21	9	6	t	\N
524857	4	3	4	2022-10-26	9	6	t	\N
524860	4	3	5	2022-10-27	9	6	t	\N
524863	4	3	6	2022-10-28	9	6	t	\N
524866	4	3	4	2022-11-02	9	6	t	\N
524869	4	3	5	2022-11-03	9	6	t	\N
524872	4	3	6	2022-11-04	9	6	t	\N
524875	4	3	4	2022-11-09	9	6	t	\N
524878	4	3	5	2022-11-10	9	6	t	\N
524883	4	3	6	2022-11-11	9	6	t	\N
524884	4	3	4	2022-11-16	9	6	t	\N
524888	4	3	5	2022-11-17	9	6	t	\N
524891	4	3	6	2022-11-18	9	6	t	\N
524894	4	3	4	2022-11-23	9	6	t	\N
524897	4	3	5	2022-11-24	9	6	t	\N
524900	4	3	6	2022-11-25	9	6	t	\N
524904	4	3	4	2022-11-30	9	6	t	\N
524837	4	3	4	2022-10-05	11	6	t	\N
524839	4	3	5	2022-10-06	11	6	t	\N
524841	4	3	6	2022-10-07	11	6	t	\N
524846	4	3	4	2022-10-12	11	6	t	\N
524849	4	3	5	2022-10-13	11	6	t	\N
524853	4	3	6	2022-10-14	11	6	t	\N
524854	4	3	4	2022-10-19	11	6	t	\N
524858	4	3	5	2022-10-20	11	6	t	\N
524862	4	3	6	2022-10-21	11	6	t	\N
524865	4	3	4	2022-10-26	11	6	t	\N
524868	4	3	5	2022-10-27	11	6	t	\N
524871	4	3	6	2022-10-28	11	6	t	\N
524874	4	3	4	2022-11-02	11	6	t	\N
524877	4	3	5	2022-11-03	11	6	t	\N
524880	4	3	6	2022-11-04	11	6	t	\N
524881	4	3	4	2022-11-09	11	6	t	\N
524886	4	3	5	2022-11-10	11	6	t	\N
524889	4	3	6	2022-11-11	11	6	t	\N
524892	4	3	4	2022-11-16	11	6	t	\N
524895	4	3	5	2022-11-17	11	6	t	\N
524898	4	3	6	2022-11-18	11	6	t	\N
524901	4	3	4	2022-11-23	11	6	t	\N
524903	4	3	5	2022-11-24	11	6	t	\N
524905	4	3	6	2022-11-25	11	6	t	\N
524906	4	3	4	2022-11-30	11	6	t	\N
524907	4	3	2	2022-10-03	7	15	t	\N
524908	4	3	3	2022-10-04	7	15	t	\N
524909	4	3	4	2022-10-05	7	15	t	\N
524910	4	3	5	2022-10-06	7	15	t	\N
524911	4	3	6	2022-10-07	7	15	t	\N
524912	4	3	2	2022-10-10	7	15	t	\N
524913	4	3	3	2022-10-11	7	15	t	\N
524914	4	3	4	2022-10-12	7	15	t	\N
524915	4	3	5	2022-10-13	7	15	t	\N
524916	4	3	6	2022-10-14	7	15	t	\N
524917	4	3	2	2022-10-17	7	15	t	\N
524918	4	3	3	2022-10-18	7	15	t	\N
524919	4	3	4	2022-10-19	7	15	t	\N
524920	4	3	5	2022-10-20	7	15	t	\N
524921	4	3	6	2022-10-21	7	15	t	\N
524922	4	3	2	2022-10-24	7	15	t	\N
524923	4	3	3	2022-10-25	7	15	t	\N
524925	4	3	5	2022-10-27	7	15	t	\N
524926	4	3	6	2022-10-28	7	15	t	\N
524927	4	3	2	2022-10-31	7	15	t	\N
524928	4	3	3	2022-11-01	7	15	t	\N
524929	4	3	4	2022-11-02	7	15	t	\N
524930	4	3	5	2022-11-03	7	15	t	\N
524931	4	3	6	2022-11-04	7	15	t	\N
524932	4	3	2	2022-11-07	7	15	t	\N
524933	4	3	3	2022-11-08	7	15	t	\N
524480	4	3	2	2022-09-26	1	14	t	\N
524481	4	3	3	2022-09-27	1	14	t	\N
524482	4	3	4	2022-09-28	1	14	t	\N
524483	4	3	5	2022-09-29	1	14	t	\N
524484	4	3	6	2022-09-30	1	14	t	\N
524485	4	3	2	2022-10-03	1	14	t	\N
524486	4	3	3	2022-10-04	1	14	t	\N
524487	4	3	4	2022-10-05	1	14	t	\N
524488	4	3	5	2022-10-06	1	14	t	\N
524489	4	3	6	2022-10-07	1	14	t	\N
524490	4	3	2	2022-10-10	1	14	t	\N
524491	4	3	3	2022-10-11	1	14	t	\N
524492	4	3	4	2022-10-12	1	14	t	\N
524493	4	3	5	2022-10-13	1	14	t	\N
524494	4	3	6	2022-10-14	1	14	t	\N
524495	4	3	2	2022-10-17	1	14	t	\N
524496	4	3	3	2022-10-18	1	14	t	\N
524497	4	3	4	2022-10-19	1	14	t	\N
524498	4	3	5	2022-10-20	1	14	t	\N
524499	4	3	6	2022-10-21	1	14	t	\N
524500	4	3	2	2022-10-24	1	14	t	\N
524501	4	3	3	2022-10-25	1	14	t	\N
524502	4	3	4	2022-10-26	1	14	t	\N
524503	4	3	5	2022-10-27	1	14	t	\N
524504	4	3	6	2022-10-28	1	14	t	\N
524505	4	3	2	2022-10-31	1	14	t	\N
524506	4	3	2	2022-09-26	2	14	t	\N
524507	4	3	3	2022-09-27	2	14	t	\N
524508	4	3	4	2022-09-28	2	14	t	\N
524509	4	3	5	2022-09-29	2	14	t	\N
524510	4	3	6	2022-09-30	2	14	t	\N
524511	4	3	2	2022-10-03	2	14	t	\N
524512	4	3	3	2022-10-04	2	14	t	\N
524513	4	3	4	2022-10-05	2	14	t	\N
524514	4	3	5	2022-10-06	2	14	t	\N
524515	4	3	6	2022-10-07	2	14	t	\N
524516	4	3	2	2022-10-10	2	14	t	\N
524517	4	3	3	2022-10-11	2	14	t	\N
524518	4	3	4	2022-10-12	2	14	t	\N
524519	4	3	5	2022-10-13	2	14	t	\N
524520	4	3	6	2022-10-14	2	14	t	\N
524521	4	3	2	2022-10-17	2	14	t	\N
524522	4	3	3	2022-10-18	2	14	t	\N
524523	4	3	4	2022-10-19	2	14	t	\N
524524	4	3	5	2022-10-20	2	14	t	\N
524525	4	3	6	2022-10-21	2	14	t	\N
524526	4	3	2	2022-10-24	2	14	t	\N
524527	4	3	3	2022-10-25	2	14	t	\N
524528	4	3	4	2022-10-26	2	14	t	\N
524529	4	3	5	2022-10-27	2	14	t	\N
524530	4	3	6	2022-10-28	2	14	t	\N
524531	4	3	2	2022-10-31	2	14	t	\N
524934	4	3	4	2022-11-09	7	15	t	\N
524935	4	3	5	2022-11-10	7	15	t	\N
524936	4	3	6	2022-11-11	7	15	t	\N
524937	4	3	2	2022-11-14	7	15	t	\N
524938	4	3	3	2022-11-15	7	15	t	\N
524939	4	3	4	2022-11-16	7	15	t	\N
524940	4	3	5	2022-11-17	7	15	t	\N
524941	4	3	6	2022-11-18	7	15	t	\N
524942	4	3	2	2022-11-21	7	15	t	\N
524943	4	3	3	2022-11-22	7	15	t	\N
524944	4	3	4	2022-11-23	7	15	t	\N
524945	4	3	5	2022-11-24	7	15	t	\N
524946	4	3	6	2022-11-25	7	15	t	\N
524947	4	3	2	2022-11-28	7	15	t	\N
524948	4	3	3	2022-11-29	7	15	t	\N
524949	4	3	4	2022-11-30	7	15	t	\N
524950	4	3	5	2022-12-01	7	15	t	\N
524951	4	3	6	2022-12-02	7	15	t	\N
524952	4	3	2	2022-12-05	7	15	t	\N
524953	4	3	3	2022-12-06	7	15	t	\N
524954	4	3	4	2022-12-07	7	15	t	\N
524955	4	3	5	2022-12-08	7	15	t	\N
524956	4	3	6	2022-12-09	7	15	t	\N
524957	4	3	2	2022-12-12	7	15	t	\N
524958	4	3	3	2022-12-13	7	15	t	\N
524959	4	3	4	2022-12-14	7	15	t	\N
524960	4	3	5	2022-12-15	7	15	t	\N
524961	4	3	6	2022-12-16	7	15	t	\N
524962	4	3	2	2022-12-19	7	15	t	\N
524963	4	3	3	2022-12-20	7	15	t	\N
524964	4	3	4	2022-12-21	7	15	t	\N
524965	4	3	5	2022-12-22	7	15	t	\N
524966	4	3	6	2022-12-23	7	15	t	\N
524967	4	3	2	2022-12-26	7	15	t	\N
524968	4	3	3	2022-12-27	7	15	t	\N
524969	4	3	4	2022-12-28	7	15	t	\N
524970	4	3	5	2022-12-29	7	15	t	\N
524971	4	3	6	2022-12-30	7	15	t	\N
524972	4	3	2	2023-01-02	7	15	t	\N
524973	4	3	3	2023-01-03	7	15	t	\N
524974	4	3	4	2023-01-04	7	15	t	\N
\.


                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000142540 14317077262 0015403 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-1.pgdg22.04+1)

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

DROP DATABASE distributivodb;
--
-- Name: distributivodb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE distributivodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_EC.UTF-8';


ALTER DATABASE distributivodb OWNER TO postgres;

\connect distributivodb

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
-- Name: auth; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA auth;


ALTER SCHEMA auth OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authorities; Type: TABLE; Schema: auth; Owner: postgres
--

CREATE TABLE auth.authorities (
    authority_id integer NOT NULL,
    name character varying
);


ALTER TABLE auth.authorities OWNER TO postgres;

--
-- Name: authorities_authority_id_seq; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.authorities_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE auth.authorities_authority_id_seq OWNER TO postgres;

--
-- Name: authorities_authority_id_seq1; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.authorities_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth.authorities_authority_id_seq1 OWNER TO postgres;

--
-- Name: authorities_authority_id_seq1; Type: SEQUENCE OWNED BY; Schema: auth; Owner: postgres
--

ALTER SEQUENCE auth.authorities_authority_id_seq1 OWNED BY auth.authorities.authority_id;


--
-- Name: roles; Type: TABLE; Schema: auth; Owner: postgres
--

CREATE TABLE auth.roles (
    role_id integer NOT NULL,
    name character varying
);


ALTER TABLE auth.roles OWNER TO postgres;

--
-- Name: roles_authorities; Type: TABLE; Schema: auth; Owner: postgres
--

CREATE TABLE auth.roles_authorities (
    role_authority_id integer NOT NULL,
    role_id integer,
    authority_id integer
);


ALTER TABLE auth.roles_authorities OWNER TO postgres;

--
-- Name: roles_authorities_role_authority_id_seq; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE auth.roles_authorities_role_authority_id_seq OWNER TO postgres;

--
-- Name: roles_authorities_role_authority_id_seq1; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth.roles_authorities_role_authority_id_seq1 OWNER TO postgres;

--
-- Name: roles_authorities_role_authority_id_seq1; Type: SEQUENCE OWNED BY; Schema: auth; Owner: postgres
--

ALTER SEQUENCE auth.roles_authorities_role_authority_id_seq1 OWNED BY auth.roles_authorities.role_authority_id;


--
-- Name: roles_role_id_seq; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE auth.roles_role_id_seq OWNER TO postgres;

--
-- Name: roles_role_id_seq1; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.roles_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth.roles_role_id_seq1 OWNER TO postgres;

--
-- Name: roles_role_id_seq1; Type: SEQUENCE OWNED BY; Schema: auth; Owner: postgres
--

ALTER SEQUENCE auth.roles_role_id_seq1 OWNED BY auth.roles.role_id;


--
-- Name: users; Type: TABLE; Schema: auth; Owner: postgres
--

CREATE TABLE auth.users (
    user_id integer NOT NULL,
    password character varying,
    name character varying,
    username character varying,
    looked boolean,
    expired boolean,
    enabled boolean
);


ALTER TABLE auth.users OWNER TO postgres;

--
-- Name: users_roles; Type: TABLE; Schema: auth; Owner: postgres
--

CREATE TABLE auth.users_roles (
    user_role_id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE auth.users_roles OWNER TO postgres;

--
-- Name: users_roles_user_role_id_seq; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.users_roles_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE auth.users_roles_user_role_id_seq OWNER TO postgres;

--
-- Name: users_roles_user_role_id_seq1; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.users_roles_user_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth.users_roles_user_role_id_seq1 OWNER TO postgres;

--
-- Name: users_roles_user_role_id_seq1; Type: SEQUENCE OWNED BY; Schema: auth; Owner: postgres
--

ALTER SEQUENCE auth.users_roles_user_role_id_seq1 OWNED BY auth.users_roles.user_role_id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE auth.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq1; Type: SEQUENCE; Schema: auth; Owner: postgres
--

CREATE SEQUENCE auth.users_user_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth.users_user_id_seq1 OWNER TO postgres;

--
-- Name: users_user_id_seq1; Type: SEQUENCE OWNED BY; Schema: auth; Owner: postgres
--

ALTER SEQUENCE auth.users_user_id_seq1 OWNED BY auth.users.user_id;


--
-- Name: Asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public."Asignatura_id_seq" OWNER TO postgres;

--
-- Name: caerer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caerer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.caerer_id_seq OWNER TO postgres;

--
-- Name: career; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.career (
    id integer NOT NULL,
    name character varying(100),
    duration integer,
    img text,
    status boolean,
    code character varying(100)
);


ALTER TABLE public.career OWNER TO postgres;

--
-- Name: career_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.career_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.career_id_seq OWNER TO postgres;

--
-- Name: career_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.career_id_seq OWNED BY public.career.id;


--
-- Name: catalogue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalogue (
    id integer NOT NULL,
    name character varying(50),
    value character varying(50),
    status boolean
);


ALTER TABLE public.catalogue OWNER TO postgres;

--
-- Name: catalogue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalogue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogue_id_seq OWNER TO postgres;

--
-- Name: catalogue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalogue_id_seq OWNED BY public.catalogue.id;


--
-- Name: classroom_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_types (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    status boolean DEFAULT true
);


ALTER TABLE public.classroom_types OWNER TO postgres;

--
-- Name: classroom_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.classroom_types_id_seq OWNER TO postgres;

--
-- Name: classroom_types_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_types_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_types_id_seq1 OWNER TO postgres;

--
-- Name: classroom_types_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_types_id_seq1 OWNED BY public.classroom_types.id;


--
-- Name: classrooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classrooms (
    id integer NOT NULL,
    type integer,
    location integer,
    name character varying(100),
    capacity integer,
    status boolean DEFAULT true,
    description text,
    code character varying(100)
);


ALTER TABLE public.classrooms OWNER TO postgres;

--
-- Name: classrooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classrooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.classrooms_id_seq OWNER TO postgres;

--
-- Name: classrooms_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classrooms_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classrooms_id_seq1 OWNER TO postgres;

--
-- Name: classrooms_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classrooms_id_seq1 OWNED BY public.classrooms.id;


--
-- Name: color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.color_id_seq OWNER TO postgres;

--
-- Name: configuracion_horario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuracion_horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.configuracion_horario_id_seq OWNER TO postgres;

--
-- Name: day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.day (
    id integer NOT NULL,
    name character varying(20),
    posicion integer
);


ALTER TABLE public.day OWNER TO postgres;

--
-- Name: day_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.day_id_seq OWNER TO postgres;

--
-- Name: day_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.day_id_seq OWNED BY public.day.id;


--
-- Name: dia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.dia_id_seq OWNER TO postgres;

--
-- Name: grade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grade (
    id integer NOT NULL,
    name character varying(100),
    working_day integer,
    level integer,
    parallel integer,
    status boolean DEFAULT true,
    career integer
);


ALTER TABLE public.grade OWNER TO postgres;

--
-- Name: school_period; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school_period (
    id integer NOT NULL,
    name character varying(100),
    start_date date,
    end_date date,
    status boolean
);


ALTER TABLE public.school_period OWNER TO postgres;

--
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    theoretical_hours integer,
    laboratory_hours integer,
    career integer,
    status boolean
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    id integer NOT NULL,
    dni character varying(10),
    name character varying(100),
    color character varying(100),
    phone character varying(10),
    email character varying(100),
    archived boolean DEFAULT false,
    lastname character varying(100)
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- Name: teacher_distributive; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher_distributive (
    id integer NOT NULL,
    school_time integer,
    teacher integer,
    course integer,
    grade integer,
    career integer
);


ALTER TABLE public.teacher_distributive OWNER TO postgres;

--
-- Name: distributive; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.distributive AS
 SELECT dis.id,
    teacher.id AS teacherid,
    teacher.dni AS teacher_cedula,
    teacher.name AS teacher_nombre,
    teacher.lastname AS teacher_apellido,
    grade.id AS gradeid,
    grade.name AS grade_name,
    subject.id AS subjectid,
    subject.name AS subject_name,
    subject.code AS subject_code,
    periood.id AS perioodid,
    periood.name AS period_name
   FROM ((((public.teacher_distributive dis
     JOIN public.school_period periood ON ((periood.id = dis.school_time)))
     JOIN public.teacher ON ((teacher.id = dis.teacher)))
     JOIN public.subject ON ((subject.id = dis.course)))
     JOIN public.grade ON ((grade.id = dis.grade)));


ALTER TABLE public.distributive OWNER TO postgres;

--
-- Name: distributivo_docente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.distributivo_docente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.distributivo_docente_id_seq OWNER TO postgres;

--
-- Name: grade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.grade_id_seq OWNER TO postgres;

--
-- Name: grade_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grade_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grade_id_seq1 OWNER TO postgres;

--
-- Name: grade_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grade_id_seq1 OWNED BY public.grade.id;


--
-- Name: hours_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hours_table (
    id integer NOT NULL,
    hour character varying(15),
    time_position integer
);


ALTER TABLE public.hours_table OWNER TO postgres;

--
-- Name: hours_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hours_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hours_table_id_seq OWNER TO postgres;

--
-- Name: hours_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hours_table_id_seq OWNED BY public.hours_table.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(300),
    description text,
    status boolean DEFAULT true,
    latitude bigint,
    longitude bigint
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO postgres;

--
-- Name: locations_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locations_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq1 OWNER TO postgres;

--
-- Name: locations_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locations_id_seq1 OWNED BY public.locations.id;


--
-- Name: means_classrom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.means_classrom (
    id integer NOT NULL,
    classroom integer,
    proyect character varying(200),
    chairs integer,
    tables integer,
    status boolean DEFAULT true
);


ALTER TABLE public.means_classrom OWNER TO postgres;

--
-- Name: means_classrom_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.means_classrom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.means_classrom_id_seq OWNER TO postgres;

--
-- Name: means_classrom_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.means_classrom_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.means_classrom_id_seq1 OWNER TO postgres;

--
-- Name: means_classrom_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.means_classrom_id_seq1 OWNED BY public.means_classrom.id;


--
-- Name: periodo_lectivo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.periodo_lectivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.periodo_lectivo_id_seq OWNER TO postgres;

--
-- Name: request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request (
    id integer NOT NULL,
    school_time integer,
    date date,
    career integer,
    status boolean,
    requested_time integer
);


ALTER TABLE public.request OWNER TO postgres;

--
-- Name: request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_id_seq OWNER TO postgres;

--
-- Name: request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.request_id_seq OWNED BY public.request.id;


--
-- Name: school_period_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.school_period_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.school_period_id_seq OWNER TO postgres;

--
-- Name: school_period_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.school_period_id_seq OWNED BY public.school_period.id;


--
-- Name: size_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size_request (
    id integer NOT NULL,
    request integer,
    teaching_subject integer,
    start_date date,
    end_date date,
    status boolean
);


ALTER TABLE public.size_request OWNER TO postgres;

--
-- Name: size_request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.size_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.size_request_id_seq OWNER TO postgres;

--
-- Name: size_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.size_request_id_seq OWNED BY public.size_request.id;


--
-- Name: solicitud_detalle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitud_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.solicitud_detalle_id_seq OWNER TO postgres;

--
-- Name: solicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.solicitud_id_seq OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subject_id_seq OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;


--
-- Name: tabla_horas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tabla_horas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.tabla_horas_id_seq OWNER TO postgres;

--
-- Name: teacher_distributive_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_distributive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_distributive_id_seq OWNER TO postgres;

--
-- Name: teacher_distributive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_distributive_id_seq OWNED BY public.teacher_distributive.id;


--
-- Name: teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.teacher_id_seq OWNER TO postgres;

--
-- Name: teacher_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_id_seq1 OWNER TO postgres;

--
-- Name: teacher_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_id_seq1 OWNED BY public.teacher.id;


--
-- Name: time_configuration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_configuration (
    id integer NOT NULL,
    school_period integer,
    classroom integer,
    day integer,
    date date,
    hour integer,
    occupied_by integer,
    status boolean,
    color character varying(20)
);


ALTER TABLE public.time_configuration OWNER TO postgres;

--
-- Name: time_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.time_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_configuration_id_seq OWNER TO postgres;

--
-- Name: time_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.time_configuration_id_seq OWNED BY public.time_configuration.id;


--
-- Name: v_distributive; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_distributive AS
 SELECT dis.id,
    teacher.dni AS teacher_cedula,
    teacher.name AS teacher,
    teacher.lastname AS teacher_apellido,
    grade.name AS grade,
    subject.name AS subject,
    periood.name AS period
   FROM ((((public.teacher_distributive dis
     JOIN public.school_period periood ON ((periood.id = dis.school_time)))
     JOIN public.teacher ON ((teacher.id = dis.teacher)))
     JOIN public.subject ON ((subject.id = dis.course)))
     JOIN public.grade ON ((grade.id = dis.grade)));


ALTER TABLE public.v_distributive OWNER TO postgres;

--
-- Name: authorities authority_id; Type: DEFAULT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.authorities ALTER COLUMN authority_id SET DEFAULT nextval('auth.authorities_authority_id_seq1'::regclass);


--
-- Name: roles role_id; Type: DEFAULT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.roles ALTER COLUMN role_id SET DEFAULT nextval('auth.roles_role_id_seq1'::regclass);


--
-- Name: roles_authorities role_authority_id; Type: DEFAULT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.roles_authorities ALTER COLUMN role_authority_id SET DEFAULT nextval('auth.roles_authorities_role_authority_id_seq1'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.users ALTER COLUMN user_id SET DEFAULT nextval('auth.users_user_id_seq1'::regclass);


--
-- Name: users_roles user_role_id; Type: DEFAULT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.users_roles ALTER COLUMN user_role_id SET DEFAULT nextval('auth.users_roles_user_role_id_seq1'::regclass);


--
-- Name: career id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.career ALTER COLUMN id SET DEFAULT nextval('public.career_id_seq'::regclass);


--
-- Name: catalogue id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogue ALTER COLUMN id SET DEFAULT nextval('public.catalogue_id_seq'::regclass);


--
-- Name: classroom_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_types ALTER COLUMN id SET DEFAULT nextval('public.classroom_types_id_seq1'::regclass);


--
-- Name: classrooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq1'::regclass);


--
-- Name: day id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.day ALTER COLUMN id SET DEFAULT nextval('public.day_id_seq'::regclass);


--
-- Name: grade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade ALTER COLUMN id SET DEFAULT nextval('public.grade_id_seq1'::regclass);


--
-- Name: hours_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hours_table ALTER COLUMN id SET DEFAULT nextval('public.hours_table_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq1'::regclass);


--
-- Name: means_classrom id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.means_classrom ALTER COLUMN id SET DEFAULT nextval('public.means_classrom_id_seq1'::regclass);


--
-- Name: request id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request ALTER COLUMN id SET DEFAULT nextval('public.request_id_seq'::regclass);


--
-- Name: school_period id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_period ALTER COLUMN id SET DEFAULT nextval('public.school_period_id_seq'::regclass);


--
-- Name: size_request id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size_request ALTER COLUMN id SET DEFAULT nextval('public.size_request_id_seq'::regclass);


--
-- Name: subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);


--
-- Name: teacher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq1'::regclass);


--
-- Name: teacher_distributive id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive ALTER COLUMN id SET DEFAULT nextval('public.teacher_distributive_id_seq'::regclass);


--
-- Name: time_configuration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration ALTER COLUMN id SET DEFAULT nextval('public.time_configuration_id_seq'::regclass);


--
-- Data for Name: authorities; Type: TABLE DATA; Schema: auth; Owner: postgres
--

COPY auth.authorities (authority_id, name) FROM stdin;
\.
COPY auth.authorities (authority_id, name) FROM '$$PATH$$/3269.dat';

--
-- Data for Name: roles; Type: TABLE DATA; Schema: auth; Owner: postgres
--

COPY auth.roles (role_id, name) FROM stdin;
\.
COPY auth.roles (role_id, name) FROM '$$PATH$$/3272.dat';

--
-- Data for Name: roles_authorities; Type: TABLE DATA; Schema: auth; Owner: postgres
--

COPY auth.roles_authorities (role_authority_id, role_id, authority_id) FROM stdin;
\.
COPY auth.roles_authorities (role_authority_id, role_id, authority_id) FROM '$$PATH$$/3273.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: postgres
--

COPY auth.users (user_id, password, name, username, looked, expired, enabled) FROM stdin;
\.
COPY auth.users (user_id, password, name, username, looked, expired, enabled) FROM '$$PATH$$/3278.dat';

--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: auth; Owner: postgres
--

COPY auth.users_roles (user_role_id, user_id, role_id) FROM stdin;
\.
COPY auth.users_roles (user_role_id, user_id, role_id) FROM '$$PATH$$/3279.dat';

--
-- Data for Name: career; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.career (id, name, duration, img, status, code) FROM stdin;
\.
COPY public.career (id, name, duration, img, status, code) FROM '$$PATH$$/3286.dat';

--
-- Data for Name: catalogue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalogue (id, name, value, status) FROM stdin;
\.
COPY public.catalogue (id, name, value, status) FROM '$$PATH$$/3288.dat';

--
-- Data for Name: classroom_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_types (id, code, name, status) FROM stdin;
\.
COPY public.classroom_types (id, code, name, status) FROM '$$PATH$$/3290.dat';

--
-- Data for Name: classrooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classrooms (id, type, location, name, capacity, status, description, code) FROM stdin;
\.
COPY public.classrooms (id, type, location, name, capacity, status, description, code) FROM '$$PATH$$/3293.dat';

--
-- Data for Name: day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.day (id, name, posicion) FROM stdin;
\.
COPY public.day (id, name, posicion) FROM '$$PATH$$/3298.dat';

--
-- Data for Name: grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grade (id, name, working_day, level, parallel, status, career) FROM stdin;
\.
COPY public.grade (id, name, working_day, level, parallel, status, career) FROM '$$PATH$$/3301.dat';

--
-- Data for Name: hours_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hours_table (id, hour, time_position) FROM stdin;
\.
COPY public.hours_table (id, hour, time_position) FROM '$$PATH$$/3309.dat';

--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (id, name, description, status, latitude, longitude) FROM stdin;
\.
COPY public.locations (id, name, description, status, latitude, longitude) FROM '$$PATH$$/3311.dat';

--
-- Data for Name: means_classrom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.means_classrom (id, classroom, proyect, chairs, tables, status) FROM stdin;
\.
COPY public.means_classrom (id, classroom, proyect, chairs, tables, status) FROM '$$PATH$$/3314.dat';

--
-- Data for Name: request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request (id, school_time, date, career, status, requested_time) FROM stdin;
\.
COPY public.request (id, school_time, date, career, status, requested_time) FROM '$$PATH$$/3318.dat';

--
-- Data for Name: school_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.school_period (id, name, start_date, end_date, status) FROM stdin;
\.
COPY public.school_period (id, name, start_date, end_date, status) FROM '$$PATH$$/3302.dat';

--
-- Data for Name: size_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.size_request (id, request, teaching_subject, start_date, end_date, status) FROM stdin;
\.
COPY public.size_request (id, request, teaching_subject, start_date, end_date, status) FROM '$$PATH$$/3321.dat';

--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (id, code, name, theoretical_hours, laboratory_hours, career, status) FROM stdin;
\.
COPY public.subject (id, code, name, theoretical_hours, laboratory_hours, career, status) FROM '$$PATH$$/3303.dat';

--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (id, dni, name, color, phone, email, archived, lastname) FROM stdin;
\.
COPY public.teacher (id, dni, name, color, phone, email, archived, lastname) FROM '$$PATH$$/3304.dat';

--
-- Data for Name: teacher_distributive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher_distributive (id, school_time, teacher, course, grade, career) FROM stdin;
\.
COPY public.teacher_distributive (id, school_time, teacher, course, grade, career) FROM '$$PATH$$/3305.dat';

--
-- Data for Name: time_configuration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_configuration (id, school_period, classroom, day, date, hour, occupied_by, status, color) FROM stdin;
\.
COPY public.time_configuration (id, school_period, classroom, day, date, hour, occupied_by, status, color) FROM '$$PATH$$/3330.dat';

--
-- Name: authorities_authority_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.authorities_authority_id_seq', 1, false);


--
-- Name: authorities_authority_id_seq1; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.authorities_authority_id_seq1', 12, true);


--
-- Name: roles_authorities_role_authority_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq', 1, false);


--
-- Name: roles_authorities_role_authority_id_seq1; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq1', 4, true);


--
-- Name: roles_role_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.roles_role_id_seq', 1, false);


--
-- Name: roles_role_id_seq1; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.roles_role_id_seq1', 3, true);


--
-- Name: users_roles_user_role_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq', 1, false);


--
-- Name: users_roles_user_role_id_seq1; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq1', 14, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.users_user_id_seq', 1, false);


--
-- Name: users_user_id_seq1; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('auth.users_user_id_seq1', 9, true);


--
-- Name: Asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Asignatura_id_seq"', 1, false);


--
-- Name: caerer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caerer_id_seq', 1, false);


--
-- Name: career_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.career_id_seq', 21, true);


--
-- Name: catalogue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalogue_id_seq', 12, true);


--
-- Name: classroom_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_types_id_seq', 1, false);


--
-- Name: classroom_types_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_types_id_seq1', 1, false);


--
-- Name: classrooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);


--
-- Name: classrooms_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classrooms_id_seq1', 5, true);


--
-- Name: color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.color_id_seq', 1, false);


--
-- Name: configuracion_horario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuracion_horario_id_seq', 1, false);


--
-- Name: day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.day_id_seq', 7, true);


--
-- Name: dia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dia_id_seq', 1, false);


--
-- Name: distributivo_docente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.distributivo_docente_id_seq', 1, false);


--
-- Name: grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grade_id_seq', 1, false);


--
-- Name: grade_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grade_id_seq1', 10, true);


--
-- Name: hours_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hours_table_id_seq', 14, true);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_id_seq', 1, false);


--
-- Name: locations_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_id_seq1', 13, true);


--
-- Name: means_classrom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.means_classrom_id_seq', 1, false);


--
-- Name: means_classrom_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.means_classrom_id_seq1', 1, false);


--
-- Name: periodo_lectivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.periodo_lectivo_id_seq', 1, false);


--
-- Name: request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.request_id_seq', 1, false);


--
-- Name: school_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.school_period_id_seq', 4, true);


--
-- Name: size_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_request_id_seq', 1, false);


--
-- Name: solicitud_detalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitud_detalle_id_seq', 1, false);


--
-- Name: solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitud_id_seq', 1, false);


--
-- Name: subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_id_seq', 11, true);


--
-- Name: tabla_horas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tabla_horas_id_seq', 1, false);


--
-- Name: teacher_distributive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_distributive_id_seq', 18, true);


--
-- Name: teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_id_seq', 1, false);


--
-- Name: teacher_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_id_seq1', 6, true);


--
-- Name: time_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.time_configuration_id_seq', 525138, true);


--
-- Name: authorities authorities_pkey; Type: CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.authorities
    ADD CONSTRAINT authorities_pkey PRIMARY KEY (authority_id);


--
-- Name: roles_authorities roles_authorities_pkey; Type: CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT roles_authorities_pkey PRIMARY KEY (role_authority_id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_role_id);


--
-- Name: subject Asignatura_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT "Asignatura_pk" PRIMARY KEY (id);


--
-- Name: career caerer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.career
    ADD CONSTRAINT caerer_pk PRIMARY KEY (id);


--
-- Name: catalogue catalogue_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogue
    ADD CONSTRAINT catalogue_pk PRIMARY KEY (id);


--
-- Name: classroom_types classroom_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_types
    ADD CONSTRAINT classroom_types_pkey PRIMARY KEY (id);


--
-- Name: classrooms classrooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);


--
-- Name: time_configuration configuracion_horario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT configuracion_horario_pk PRIMARY KEY (id);


--
-- Name: day dia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.day
    ADD CONSTRAINT dia_pk PRIMARY KEY (id);


--
-- Name: teacher_distributive distributivo_docente_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT distributivo_docente_pk PRIMARY KEY (id);


--
-- Name: grade grade_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade
    ADD CONSTRAINT grade_pk PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: means_classrom means_classrom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT means_classrom_pkey PRIMARY KEY (id);


--
-- Name: school_period periodo_lectivo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_period
    ADD CONSTRAINT periodo_lectivo_pk PRIMARY KEY (id);


--
-- Name: size_request solicitud_detalle_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_detalle_pk PRIMARY KEY (id);


--
-- Name: request solicitud_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT solicitud_pk PRIMARY KEY (id);


--
-- Name: hours_table tabla_horas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hours_table
    ADD CONSTRAINT tabla_horas_pk PRIMARY KEY (id);


--
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);


--
-- Name: roles_authorities fk_auth; Type: FK CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_auth FOREIGN KEY (authority_id) REFERENCES auth.authorities(authority_id);


--
-- Name: roles_authorities fk_role; Type: FK CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES auth.roles(role_id);


--
-- Name: users_roles fk_role_users; Type: FK CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_role_users FOREIGN KEY (role_id) REFERENCES auth.roles(role_id);


--
-- Name: users_roles fk_user; Type: FK CONSTRAINT; Schema: auth; Owner: postgres
--

ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES auth.users(user_id);


--
-- Name: teacher_distributive asignatura_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT asignatura_fk FOREIGN KEY (course) REFERENCES public.subject(id);


--
-- Name: teacher_distributive career_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT career_fk FOREIGN KEY (career) REFERENCES public.career(id) NOT VALID;


--
-- Name: grade career_grade_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade
    ADD CONSTRAINT career_grade_fk FOREIGN KEY (career) REFERENCES public.career(id);


--
-- Name: time_configuration classroom_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT classroom_fk FOREIGN KEY (classroom) REFERENCES public.classrooms(id);


--
-- Name: time_configuration dia_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT dia_fk FOREIGN KEY (day) REFERENCES public.day(id);


--
-- Name: size_request fk-asignatura_docente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT "fk-asignatura_docente" FOREIGN KEY (teaching_subject) REFERENCES public.teacher_distributive(id);


--
-- Name: classrooms fk_classroom_location; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_location FOREIGN KEY (location) REFERENCES public.locations(id);


--
-- Name: classrooms fk_classroom_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_type FOREIGN KEY (type) REFERENCES public.classroom_types(id);


--
-- Name: grade fk_level_catalogue; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade
    ADD CONSTRAINT fk_level_catalogue FOREIGN KEY (level) REFERENCES public.catalogue(id);


--
-- Name: means_classrom fk_mean_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT fk_mean_classroom FOREIGN KEY (classroom) REFERENCES public.classrooms(id);


--
-- Name: teacher_distributive grade_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT grade_fk FOREIGN KEY (grade) REFERENCES public.grade(id);


--
-- Name: time_configuration hora_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT hora_fk FOREIGN KEY (hour) REFERENCES public.hours_table(id);


--
-- Name: grade paralell_catalogue_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade
    ADD CONSTRAINT paralell_catalogue_fk FOREIGN KEY (parallel) REFERENCES public.catalogue(id);


--
-- Name: time_configuration periodo_lectivo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_period) REFERENCES public.school_period(id);


--
-- Name: teacher_distributive periodo_lectivo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);


--
-- Name: request periodo_lectivo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);


--
-- Name: size_request solicitud_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_fk FOREIGN KEY (request) REFERENCES public.request(id);


--
-- Name: time_configuration teacher_distributive-config_schedule-fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT "teacher_distributive-config_schedule-fk" FOREIGN KEY (occupied_by) REFERENCES public.teacher_distributive(id);


--
-- Name: teacher_distributive teacher_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT teacher_fk FOREIGN KEY (teacher) REFERENCES public.teacher(id);


--
-- Name: grade working_day_catalogue_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade
    ADD CONSTRAINT working_day_catalogue_fk FOREIGN KEY (working_day) REFERENCES public.catalogue(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                