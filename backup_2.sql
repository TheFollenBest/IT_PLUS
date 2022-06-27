PGDMP         +                z            it_plus    14.2    14.2 ~    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    it_plus    DATABASE     d   CREATE DATABASE it_plus WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE it_plus;
                postgres    false            �            1259    16395    answers    TABLE       CREATE TABLE public.answers (
    id bigint NOT NULL,
    answer_code_html text,
    id_lesson bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    answer_code_css text,
    answer_code_js text,
    answer_code_other text
);
    DROP TABLE public.answers;
       public         heap    postgres    false            �            1259    16400    answers_id_seq    SEQUENCE     w   CREATE SEQUENCE public.answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answers_id_seq;
       public          postgres    false    209            �           0    0    answers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;
          public          postgres    false    210            �            1259    16401    course_questions    TABLE     �   CREATE TABLE public.course_questions (
    id bigint NOT NULL,
    id_question bigint NOT NULL,
    id_course bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.course_questions;
       public         heap    postgres    false            �            1259    16404    course_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.course_questions_id_seq;
       public          postgres    false    211            �           0    0    course_questions_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.course_questions_id_seq OWNED BY public.course_questions.id;
          public          postgres    false    212            �            1259    16405    courses    TABLE     �  CREATE TABLE public.courses (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    img character varying(255),
    subtitle character varying(255),
    subtitle_text text,
    content text NOT NULL,
    is_hidden boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp(0) without time zone,
    card_color character varying,
    font_color character varying,
    card_img character varying
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16411    courses_id_seq    SEQUENCE     w   CREATE SEQUENCE public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          postgres    false    213            �           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          postgres    false    214            �            1259    16412    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16418    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    215            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    216            �            1259    16419    lessons    TABLE     h  CREATE TABLE public.lessons (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    text text NOT NULL,
    code_html text,
    manual text,
    id_course bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    code_css text,
    code_js text,
    code_other text,
    type boolean
);
    DROP TABLE public.lessons;
       public         heap    postgres    false            �            1259    16424    lessons_id_seq    SEQUENCE     w   CREATE SEQUENCE public.lessons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.lessons_id_seq;
       public          postgres    false    217            �           0    0    lessons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;
          public          postgres    false    218            �            1259    16425 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16428    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    219            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    220            �            1259    16429    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         heap    postgres    false            �            1259    16432    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         heap    postgres    false            �            1259    16435    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    16440    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    16445    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    224            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    225            �            1259    16446    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16451    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    226            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    227            �            1259    16452 	   questions    TABLE     �   CREATE TABLE public.questions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    text text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    16457    questions_id_seq    SEQUENCE     y   CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public          postgres    false    228            �           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public          postgres    false    229            �            1259    16458    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         heap    postgres    false            �            1259    16461    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16466    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    231            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    232            �            1259    16467    statuses    TABLE     �   CREATE TABLE public.statuses (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public         heap    postgres    false            �            1259    16470    statuses_id_seq    SEQUENCE     x   CREATE SEQUENCE public.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          postgres    false    233            �           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          postgres    false    234            �            1259    16471    user_lessons    TABLE     W  CREATE TABLE public.user_lessons (
    id bigint NOT NULL,
    id_lesson bigint NOT NULL,
    id_user bigint NOT NULL,
    id_status bigint,
    user_answer_html text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_answer_css text,
    user_answer_js text,
    user_answer_other text
);
     DROP TABLE public.user_lessons;
       public         heap    postgres    false            �            1259    16476    user_lessons_id_seq    SEQUENCE     |   CREATE SEQUENCE public.user_lessons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_lessons_id_seq;
       public          postgres    false    235            �           0    0    user_lessons_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_lessons_id_seq OWNED BY public.user_lessons.id;
          public          postgres    false    236            �            1259    16477    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    two_factor_secret text,
    two_factor_recovery_codes text,
    two_factor_confirmed_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16482    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    238            �           2604    16483 
   answers id    DEFAULT     h   ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);
 9   ALTER TABLE public.answers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16484    course_questions id    DEFAULT     z   ALTER TABLE ONLY public.course_questions ALTER COLUMN id SET DEFAULT nextval('public.course_questions_id_seq'::regclass);
 B   ALTER TABLE public.course_questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16485 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16486    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16487 
   lessons id    DEFAULT     h   ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);
 9   ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16488    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16489    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16490    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16491    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    16492    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    16493    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    16494    user_lessons id    DEFAULT     r   ALTER TABLE ONLY public.user_lessons ALTER COLUMN id SET DEFAULT nextval('public.user_lessons_id_seq'::regclass);
 >   ALTER TABLE public.user_lessons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    16495    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            {          0    16395    answers 
   TABLE DATA           �   COPY public.answers (id, answer_code_html, id_lesson, created_at, updated_at, answer_code_css, answer_code_js, answer_code_other) FROM stdin;
    public          postgres    false    209   ��       }          0    16401    course_questions 
   TABLE DATA           ^   COPY public.course_questions (id, id_question, id_course, created_at, updated_at) FROM stdin;
    public          postgres    false    211   ��                 0    16405    courses 
   TABLE DATA           �   COPY public.courses (id, name, description, img, subtitle, subtitle_text, content, is_hidden, created_at, updated_at, card_color, font_color, card_img) FROM stdin;
    public          postgres    false    213   �       �          0    16412    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    215   ��       �          0    16419    lessons 
   TABLE DATA           �   COPY public.lessons (id, name, text, code_html, manual, id_course, created_at, updated_at, code_css, code_js, code_other, type) FROM stdin;
    public          postgres    false    217   �       �          0    16425 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    219   ��      �          0    16429    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    221   ��      �          0    16432    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    222   ��      �          0    16435    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    223   -�      �          0    16440    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    224   ��      �          0    16446    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    226   ��      �          0    16452 	   questions 
   TABLE DATA           K   COPY public.questions (id, name, text, created_at, updated_at) FROM stdin;
    public          postgres    false    228   ��      �          0    16458    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    230   �      �          0    16461    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    231   �      �          0    16467    statuses 
   TABLE DATA           D   COPY public.statuses (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    233         �          0    16471    user_lessons 
   TABLE DATA           �   COPY public.user_lessons (id, id_lesson, id_user, id_status, user_answer_html, created_at, updated_at, user_answer_css, user_answer_js, user_answer_other) FROM stdin;
    public          postgres    false    235   S      �          0    16477    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, two_factor_secret, two_factor_recovery_codes, two_factor_confirmed_at) FROM stdin;
    public          postgres    false    237   �      �           0    0    answers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answers_id_seq', 54, true);
          public          postgres    false    210            �           0    0    course_questions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_questions_id_seq', 12, true);
          public          postgres    false    212            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 6, true);
          public          postgres    false    214            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    216            �           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 42, true);
          public          postgres    false    218            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 1, false);
          public          postgres    false    220            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);
          public          postgres    false    225            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    227            �           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 25, true);
          public          postgres    false    229            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    232            �           0    0    statuses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.statuses_id_seq', 1, false);
          public          postgres    false    234            �           0    0    user_lessons_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.user_lessons_id_seq', 270, true);
          public          postgres    false    236            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    238            �           2606    16497    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    209            �           2606    16499 &   course_questions course_questions_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.course_questions
    ADD CONSTRAINT course_questions_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.course_questions DROP CONSTRAINT course_questions_pkey;
       public            postgres    false    211            �           2606    16501    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    213            �           2606    16503    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    215            �           2606    16505 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    215            �           2606    16507    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            postgres    false    217            �           2606    16509    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    219            �           2606    16511 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    221    221    221            �           2606    16513 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    222    222    222            �           2606    16515 .   permissions permissions_name_guard_name_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);
 X   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_name_guard_name_unique;
       public            postgres    false    224    224            �           2606    16517    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    224            �           2606    16519 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    226            �           2606    16521 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    226            �           2606    16523    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    228            �           2606    16525 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    230    230            �           2606    16527 "   roles roles_name_guard_name_unique 
   CONSTRAINT     i   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_guard_name_unique;
       public            postgres    false    231    231            �           2606    16529    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    231            �           2606    16531    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    233            �           2606    16533    user_lessons user_lessons_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_lessons
    ADD CONSTRAINT user_lessons_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_lessons DROP CONSTRAINT user_lessons_pkey;
       public            postgres    false    235            �           2606    16535    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    237            �           2606    16537    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    237            �           1259    16538 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    221    221            �           1259    16539 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    222    222            �           1259    16540    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    223            �           1259    16541 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    226    226            �           2606    16542 !   answers answers_id_lesson_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_id_lesson_foreign FOREIGN KEY (id_lesson) REFERENCES public.lessons(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_id_lesson_foreign;
       public          postgres    false    217    209    3266            �           2606    16547 3   course_questions course_questions_id_course_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_questions
    ADD CONSTRAINT course_questions_id_course_foreign FOREIGN KEY (id_course) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.course_questions DROP CONSTRAINT course_questions_id_course_foreign;
       public          postgres    false    3260    211    213            �           2606    16552 5   course_questions course_questions_id_question_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_questions
    ADD CONSTRAINT course_questions_id_question_foreign FOREIGN KEY (id_question) REFERENCES public.questions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.course_questions DROP CONSTRAINT course_questions_id_question_foreign;
       public          postgres    false    3286    228    211            �           2606    16557 !   lessons lessons_id_course_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_id_course_foreign FOREIGN KEY (id_course) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_id_course_foreign;
       public          postgres    false    217    3260    213            �           2606    16562 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    224    221    3279            �           2606    16567 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    222    231    3292            �           2606    16572 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    224    3279    230            �           2606    16577 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    231    3292    230            �           2606    16582 +   user_lessons user_lessons_id_lesson_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_lessons
    ADD CONSTRAINT user_lessons_id_lesson_foreign FOREIGN KEY (id_lesson) REFERENCES public.lessons(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.user_lessons DROP CONSTRAINT user_lessons_id_lesson_foreign;
       public          postgres    false    3266    217    235            �           2606    16587 +   user_lessons user_lessons_id_status_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_lessons
    ADD CONSTRAINT user_lessons_id_status_foreign FOREIGN KEY (id_status) REFERENCES public.statuses(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.user_lessons DROP CONSTRAINT user_lessons_id_status_foreign;
       public          postgres    false    235    3294    233            �           2606    16592 )   user_lessons user_lessons_id_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_lessons
    ADD CONSTRAINT user_lessons_id_user_foreign FOREIGN KEY (id_user) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.user_lessons DROP CONSTRAINT user_lessons_id_user_foreign;
       public          postgres    false    237    3300    235            {   �  x��V�n�0�N����ࢍc�i굹�GC0D'@���$�aiZe�؆��G���0���Ğ�y#��K�,��`�Ť��>��s�}���Dj�]�y�uo�
��C�h{m�15��������w�7~�?��>Xl]_j(�Td�����9YD5m��Yu� ���s,����X�G�"xl��n��=�۔��?^��2pw��+��ݭ�-����~S��q��*� ���/�w��P��P�q���,�ߔ�2`���ڗ���k�#�5Ϝ
Z\�]1GC���E��*fG�jv,�L`��6�u[S���®�P���'������%bYR�� Be���TL�b��W�R�S	%sGگ
;S��|�M�T���J�V����Nf�j�q�����c)��nhC�g��3o-dj�u�����t��xuJ���K%�V�gT���Gbp���Vn��C��0%E�KRk���z�����w�������{����\(�D2��B���$:�ϴR�Z�y��j�{�X��~�I%�{&E��*�B,m(��/��p��G�7 q���k�-�Yg![�5Jj�G��&Q��Ĭ(�Z�)�(�bI�*����K2�!�Z�H/Ą����Q}Q1�!��hq��1��Z�	k���ˆ6h�y�NP�����۟���5�� ��@�؞!�/.D��7�D2Յ0������Z'[�0s���]�l���GA�Y�3�lWJ��O�d��      }   F   x�m��� C�s<E ��Df��s�3��}�tSM.ϡ|�E��v�鲸�v�5P��t��Rv�o��zM         �  x��WMoE>o~Ő^Z�v��G�b̡P's��M���Q���I�$��)T��V�'����f�ѿ0��%<�3�kǸM�F���y��~�yw���tK��Xw̉>S_|�՗��ٜ(�Pzd��4�[������i�'�ƙ���t��X�o�4���<�=|���'�-}��C�n��[S�!���eC��(�����IY�}qAGx�sB�XCL��%���J�`6�z��S��x�<v��Ƨ�u�g2�v�^%�����j)�����Ѝ!=��ڄ����?��p#&�{�!��Ų����տ�������MO�.k.�Lu�I��儩�m�~��-����nH�:�l�G�yk�C?�pdk1*�X)�S�T'�6#��
��.[���\l*W���G�(9��ؙ.�9+G��3EI$�ЊRq%�予������-d��OlLM��]��BI��Cl�ս�#N�)YVp4�l�����@6�;��� ���W�JYUk?TJ�.V�;��v���]��'�y�;}sK������D��:�̑�t��>�X��$�K�Eq	�� ���R�.cY�,��@�E\��&��P������%$�����麟�i���~�������e��k��{WV6���we��Ž��ꃭ��Y�U�n{����K����{�ϖ���9�CK�H׎HD�#.����Hib�(漘�U�����Zl��F�A��!�-Z	�9a<�Y�Ȣa"�!�t�]��G���]��!�t�}˘�u!�H*�,��F����$+� ���DI��ߒ�H�N�ơ���6�"<!���I(��ɏ�-S�1�����[�abƲ`�^�8�=��9x�r�=d`e�,G�kˁ��M�r�_�O��]�S�F�LX~���.�*,Ƽ�t�\_�f�~��x��J�}H�&��	G���9H1�SEd^��������8�8�,� ��޻�3�O�z�jƦ	��T���2���H8o��������E�����Y�ih���������U:�|&�����&�	Zc�Leļ����+�d� �P2���b�a��p��~�3q�i��X�p�z#;���|t�M��bU,Χ�*�dׂյ���u�g���AvUh�X�f�+Y�Lr�g��f���Wҁ ���²6�0��+��@� �����&=�3Ϧ8�^���,s�];�8T�!�Ҙ�6Ƶ��)�1Z}��R�!�����n�vŕ��sU}���vۑm^�D��s�mI �1kAR��BD��F(CCr�b��"�8>�)^7ǀʩd8���|���q7�Z��Z�X)o��Rڬ��@�7�Ս���Ζ*��*l�J�������� 
^��E��fbRN��ٹ�`��M�=w�qi?~y���ٔ��A��q-�ϑ:�o0��,��k�E��{!�-��/H�^^�.F���]ǜ\<��"�4T����޲�`ş偵 �(�Wo$c�F�A���r�D:��YXX��J��      �      x������ � �      �      x��{��Xv'�w�S�i �.�_�=H�HJ�D�����(�%�D2����q�+�0dl� �v�o��^����I�I�{ϭ��'�I�LT�#��{����[k����7����ׯ���?x���?���7?z���_���ׯD}%?������0�cp�%������W�������Û�Ͽ�>7�~�0�ˇ71|{���90�%��ٛ?y���?LpD��Ty��>����O��Ѓ�zX9Ź�d'=��!�����G���ͧ���͟���,�śOƉ�����_��>���ן���;R�F�?zx�7@X��_ �>{��Ûv���'@�O_��m�����~��o�~��C�m�0P�m�@�/^�|���a͇��`��ǀL���AQ�"P�MD0fe��ǣ���è۟���ɛ?���^���l4���q��_���^�[�O�:򁽌҂}:eY�a��o>�s0����>��b���ݸ_�ޗ���F�_��.�}�hT�/���rp��Wo>m?�����?���W��o��_�����.��a�XnP鸳wV�z0�3��������6j8��o�x�O�=X�f�����߳��P� ��x��`��À!�t4,��`���|�����/?���6`0�����F��x����7S��n~��?��׷o~v����h=� �����S`-`�A�`З�1��&������#��1��^���_����(��^`�����w��r��x|~��'���j���yo~�����'4 �<`��㘇#:���=(�Ao�b||��#6���̬���> E�8�����zO{6*䳛���d�F���7�Y����ۅ�I?vs�_=�����^�������Q1?��'Oq���ٰ�m�Q$0d�%`�������������|��/�Y?�9��}�g���1FF��.����K �~<��7���2�ȟ��c,������p�C��D��,��cU���#�������?��ڏҠ����.����K��K�$������(I1��$�Q���PV]���]#�:�x@������q�ۯ�= P�UC�|�=7����z �z�����>{� D�z���!�W�#��f �~������`�8�'o��VA���3}:��	���-��}�����`�� ԏ>��0"ؗ����$�����5��Ƈ�A`��1p�(=<�}��׷�1���y��o��՛O��߿��������L���w���11}=>�+���S��W7����Q�w��6&��_�y������_�{���i��t7����&�'J2n���[��T�8�m��������í��F����-���gR������xt��p��{�Y�w2����hdT��a����n!< ï�:���9Fx��ѡ_�v��w�ˍ�}�d;�����~|~��vƘ��-�~|�s?��+���o�@����~�o&�~s7�7��2��<�"/�s��������!���3�&��7�����i�!2B�/��{�˾||� �7�̋����ǐ�ޙ�=��{���p���	\�~�����w���|~KMos෠�[q��� 6�w ��#�|<�t�&/G�q�ǜ������~��`� ��>��	 `ߚ�z@�$�N�E^����1�`��a�w�=x�]������{�ڧ��EV����,Ίn\�D��;O��fq3����O� ���X��zv��/P��nXP=%�?��-�G��\
��l�mw �O�`��OG��mq��_X�/�B��ϡ���H���f
�����X%���\�� c��굛S��4xp������-��%p�z����?��-��`�X�&����c�X?{�s?���4|�N7�}�RƇ�d9b�_� �N��a�A���;��5TS���ko_>�/��eHU�?���<���~�����Vj����10�|������{l�����5^<�{nqC��O㷻�b�n�p�n�H4��O�J�D+����_��'߆��Xc��V=��-�=s`��xg��``�'����7�@`���o"�x��!U�|y��`�8�"���(���GE#����=TNq����Nz��G��w`�?���3r�q��;1�|��A��z�������<J�yY���;(����z��3N ����Qa����}t�CO��Ǐ�����W>9�g�� >ڼ�1nC��:88�?�{'a �#ݸ#���Y���	��F?��l�y�����z��� �M俼��1u}z˳�q�?�5F^��p����kd7y�����'�L�H����q0����<���\����B��=7}�?]��}>��8n���-zyW�c�hH𯀵o�S��;a���V�]z54/��S� b����X9�H~��b$|_�d��#��c=����4R�?�����Z$_�l�q��h�w<��3���#���m�;�	�^ݬuoQ�ꑌ>���~���z�|��߻|�w��cC���{!���s$���3�`⁎�	�A	@ϋo��s�-t��O<k�?'-��C������C?|��X�������������aA-�����o���kݱ�P�$����� �Ž���]m}��8��g=�w}���ߌ����������c���R~���{'�T�����㬀��/�g��?gy���>�C��Yoa�s�wF|C���)�ӻHO������(��& ��#��ܔ��=��)�ws�/�:��Q����[� �F���Cq6����.�Xf]�s�_����y|��#�|1���{���G.�����[
sO�����r�ǐC?�������6���@�����=�����!�o=��������	�nL����|��h�$狷����
�Fӳ:���y���؏xj5��Tl����SXܪ��	�M�/��;f�м*�|�r���2ɭ��>����>��;��rl�
��^'�;��?��Kn��uA�ފ�Q������-C���y#�X��B�h��'o#���y����5�S�w�ѷ5�����X�����U�w	�ַ<��[�n�Q�?[�/߱ćc���̐�߭�F�|4ɘ��9���u]~ug�c��h9 �?~��'y���m�z�ߕ�F1Ƴ�h>b��=���Ȼ���7 z@C�z��a��x1���1 wy�b>{l
�/>W�;fx��O��-�x�ܭ�|������ ����v�u��~����ݷU ���y�4����<����ͱ:�'��߁u�T��8�|ގ��[_�������z��{O~��7���Q�z:?�{$ܟ�����q��g~p#z��x�v����r���>�M?��� P>}����-�2��n����X���{���ػ<N��	�]�W�|=6[o:|?&��RF"�_r�¼�B�4F���
��|/҈`J�{�i`T��v���ޗ��Ɲn��[� ���4�3���_<8~�CI�$ ���o{!�Ra��+y��@g���/��/��޽ȹ������꿿w�-?vN�9����ۍP�Ĭ~1,��AQ}S�Yܤ����ٳ9���?�����@��_�_ ϵ�"�}���`���i�c"O������SW�~0T�����`��>�0���̿�Ֆ�~�k�Vh��J��Sy�H�:��p;U��<�ц�?��޽�t������ck���Ӭ���'��|:G�����ߍ�����	��^���:n7���{{�zS��O_���?�������_�k|����������hz�á�7�^��S`O�l���t���ϟ���Λ2?��������͓�Y����ܲ��woO���������-/y�y�{Y�������[^7Z���wo{���m�    �S�߽�������z�yA��|̼��P����{���Ǌ���7֑�IYEU<5�.F���������V�跗f�����j����[A��T��Uu��H�7�^�@R~K��v�鍕��D��������ڭhO�ɐj��Iwk����׿�&���o��v�ݗ��M���ǿr��!��������g� ����k���A�Y������]_o�����x�xR�~I���gOG1_����o��~��34n����9V��W�Q�w�����8��)��7����5��坉�GC���y��^���ߩ�Q�П?p�2��#c�hWD������|w ��6�G����Ƀ��<�o�H����`�8�i�R&��frt7��|8ےĝ�r���M�����l�����X\���JkS�s.�}�+�#R��ܟy�X�8{>�W�|��,˒}�B�ǆ�r�ϋYCB�vm�fW�Z�}q]f'����B_����YZ�wn�ݮ���9��)'�����dɮ6���J��`�̑�b�m7��q�\a�9��-�=e�I	��r����s����"�����l6ٱ�%���eqa��f'22�.!�52�+�^�{f��fb׹�]˾´힔�u�+�P%� ���x:vǒV��$�ّ���]��i�iiM�*�����"E�([(��c;�6��h/�|!��W���g�jy�8h-"h�k�Rp�fE�V��E�B"JQL�ɞd�����UNy���^��N�d�ڝ�����YY�DMq�U������̍�D'O|�5w}\�Ǣ�6��)���)��z4u�(*�4iq�OJz�zǈ�=;Ŕ]r�M�]\_7�Z�lB�'�;ة��3�����>)�녻2inc�#��Ր���c�AZX���إ��ƥ�Y�dIv1*�����!f��,��J6�k>M.sV�kxq�oEu�pۺ(�m|��4�xe�:f@x��h�:�(hA�&~���\�PK�EJf�^�U���0t�Fb�\,���۾Y�-��U�ƛ��x��-Ũ��ش���Jx
c��{�����ZX�,��ͥ��c�YZ�������m�6���J�]M���(����y�r���:�c���r:��)o�������9Y��l�z~F�}������-8��}Y��֗z�l��-\WU��Ƞ>���J�6��C���,�vrl�r������hg=�|�R�Xc��Y�Z_5�[���0�H�(Lƒd����l���E�dm�lM߹�q\%g"�P7l��J��Y;���z���+�aW$"���J�K������(�� t�/+�D�I�r9�r����:Kw�:8A���a*�Y�5g�� V�}R��c9��u�bo
�:�b/�7����uB̬/���'��1�X�6�O���p�#���:�|zz�.R��||6MC.��#�XB�O��2e��`�F15���h2P�5�橬�����
�V��ބ;L�1o����$���~#lQ�?-�k��'�tn����ڴ�_
����N)�J���zQ�Z+��qq
TX�ؒ��n	�D�K�is8l|��Ŏ��]�a���J�(%�k�U��9nI�8˞]���;>&J�vi+ X'Fvd��vԩ����U���0����CN]pr�b���n΄�V����.\��O�X��-�}��<&Y;��$Ð���-�����/n��$[��	�n؅xH��YX�p(�2�	�9��CC�pn ����z��&ד���-�"����;�q/a[m��-�9�����%&ㆴR����gc;M`y�v��X�O�v��7�8,ڙ�.��D�Ai��3<KI�M׮B�N�N��=D�Z{f�y7)��6�ն���6�2z;av���>.׫�,�h��$���6]��y���gi�sP'~p�W+G�g�A�^�Hr�4+Q���S;��8��{A�a�EU��qd5��n�2K\��f��z����2	k�����#��gL�� Q�I�ZP��uv��9U�ET�\��:c�>��y�#p�&������뜘�"�9	�i�N�=k[8���ivo�А�<�-fK��[Q�:��$�_����:�m� ��I���Q����˅�@����%f\�#�['��"�j�0ȿ@{��� �+��L�kB�؂�
h.K(��[<o��i�d&���u�y���\�V�5�Ԅ��E�HZ�9�]�C/��Gw宯�� 1�K�� ܢ�Kt]�M}��~���ҝ�ȟ�h�d�䃌�9�����Cp^�Wq!����F`$���X�t,�ˢU�J%��)��s��o
4M�aN��Ce�I�������5KB�,�4bL$�n�c��f���/e)N���4G����;�7����٨�Z��ˡ���E���_L��*L�:s�KgsO�PIcW3',éCL1@p��Ƚ��y�CI�S�ͨ�<?@���.s��<��(r�a�
|6��C1}�VЮd[47.��%Y�5B���j���T:,M�l����NΩY�q�5�P��i���A�	
Q�lB���J�9ĝ&�h���M�ә�����ұ.�,q�����qBf���4�q� ��
�3|cg��e{����9����*��H!�<����5��!��c`AD��P���x%��Y]2@Κn�	�g��,�����.�Z��}_⍄�r��`s�`�J�}X=�W"]XqT_t����n��MMb3�W�VW{�~��R��\��<�q0i� rh]FWx�q˃�+�@6�=�X��=U�[�b��Ua���Ws��5J�4N�y��qңX�{�ɡ�rⵒ�E�H]�Or�N������B��}�TM�f�x�ef�䩁���u&�,ِ =o-
���
�i�0}�ӢГ9	��0M��1\�)k}%�҃z� ��ֺ��%�y��0�Gj�K�lΖlxF@�¯*/?��ܟ�uF��eDuG�w��fM����. ��@ɽP��8Wg�!HV%���p�+�+�.Mæ�v����	QSL������>>"2��2��V�L�)�ƼN=��-$,#��W�\�;I��Q\��jj�)�P�_�e�,�c������x�8MrmQPpfF5�B뢮��9A1`��I<������rʌH�5��:�u��&�-��ak��[��Kͻ�l��=��s%fX$c��W�y��JGVi3�1�������hH��o�K"�w�9S�4������εꂐs$�k�XE�k�5� _��k�L�ִטј�:�j�`��)`�b�+G�f�f��v+N4��Y�� �Z	Q3?bD+ΗT���$WC-i,ɆW5�w���6S�� ��';_T�EGc�A�����{v�'�dc�J���_.���r����ΐ?��ԛ��@�޻S���z%�Sփ/��J2H2q��z�G�4|p'e�o�I�f��4dY�p��PP#�\�Q/�m˜IF=��G=\��0o�E� x 6��ed�P�+j��sرvj�'8�|�iaB���Ŷ�Z݄UVѩ��l7�K�++�@5z�;8@���ⳝ����J�􅋛����]Q�1��	"��d /rs6s��;.�َ����,;��Q4HW%; ��M�������E���7�U�:X�oj���8z[�.:trm�%Nز��Eo�M�ا���cl�^|��I�wYx��U�6�266�ya)�A���eD���	�����>B�G �]&l�-�S����Y(��A/��b\��V���Ɣ�����q�Gs�2��O�iw���T��n3�1��j}AkgN�
�R���6vp��28u^䗤�LU���0���r�Ix�� ��پ���T�u@��z}�Z��*�F�z<4�uԝ�P1SH@��q�&�� G�nqXa�/�B��"�� V�~�re�A�0�3�d���5n�"{�l�t��	r?��!�c�2�u<���7Y�/$��� �8{�l`g)`'b��.c�~	�	����`E1�C!�-ojV3_AA6;��*�V�� ���o�&ds�0y�L�-�F�&�Qz�Z6V��麨j��P8��    .�E��&gMA��V �ш�D����9պ���!,VÚ;��J��cc�y΂�R�A�Y�5��%:���+B��
��)LU��ǅ�U��]��U/�w�)鄡CoIѹcƓi'�m^��x" �%<k��l��.�DVr"|SY�Y��wT��)7Ѭ���)WG�WR��(ڎ1<]^7�� ������yO�ļ��I�7�u�N��nq�]�(QYMO�fs��RǨ�}��Uav\�0)�xJ�&V�I�.H���m���WL�����
 T��퍲���*�� �h��l�ne����zYz���1��"I��a� 1��U'VR=Vq�4�N9tv4�]��.6L�@AD���Y�&~��E-�T{�9nW�����&}�'�\F���)K��jz��F�z�bwWL6A��q�j-�G�U�E)�6�C��t�k��&t`ѽ�Yج/�F��.�ZfYO
ᘇ���&��U	;Ի��C�E��1S��P�9���;(4(�4��@�Mvڟ��/;��J�3��*tS�%� �T��C�f"ye/V���#h���o�k��]��l*���"��G��!M?�EL^�3;�Ⱥ&���"��4\5���b��--s{������yY8��xٜr>
WG�gq^� &+�֒k�CTK$,!���6�B�)Zl�Xg|hn�#?��?a��6�Ē���靧G��2G�4%Ĭ�2�s:A����0Kš�0�ʮU�Zĥ�U9�u���"(9l��LUu6S](�Eyo\歏AWc�W*었���$�Sh9�O6��H�:m��4�NHe�BT|'�_��vZ�O���#� [~rn7����yo����Gi�:~�1�%�`�CM���ħ�=�!���ț$�%���:2$�ӜB>qQ8�Q�j���$��v�´���b�I�.]�'�5���w��@��53Z
yF)3�@��aX��vC��w�i��i"h$��sJ���!�0�2�seN��m��f�P��rY-�U��)�q,[�� N��T��Y1�������i��2�R�Ϋ �
�0��W�
�vwX,�-�>^	o��b�g��j{7����|��+�$AA#O�Ȏ����#��C*^M)��YC>�/g�"�l6q!�.z�� l��a���qӳ��y3Yׄ������T5=�x��|1�����[t¯�{�*�Zu{{{Q�6�z�H3�ԟ�՜��Y����m�s@�q����
���]-�d��6�";{����x1�.���u{?�l'�Ō[,mkk�I�����v��L�j���W��a9\���t9��������(�jq8��q���[�F&gw77�w�꼭{��[t��,N�,�h6��o�����(���q]{	���t`�cI�Y��>�0�7�����4�A��I#��Ac�(�z7Z'��	gh���Y�E��JnזW���ګV�Lf;tm�aSfE����E#\9[�;B���m&	S������t�*R�wj筢ଃP=��ݦ5���l��;S��ur#�#t��p�dQrp��\E�J�e�l�;dЉHR�Ю���đ!�����r��Jh�K��Ϋ�Q	uJ�#���miȨ.dw�+! "���ہ�h���H�fF�u��lѭ����1�@q�{|B��z��6��4�uO?�3"�����%���TN/�N�v�mO[l�5�s��(n�輝��%i�dT����-e��m�%���d�����u�rn��̙9IK����]�:P7[�fd2� g�#�Ž�D��WqǊNG��\+O;#mFe���mֆp-tλ�a�}��2'a,���t�G�Ņp/����kp��=m9���JH�K�F>���������LV�bcL
���dܙH��������5O�a��S�Owz���v�
��EV_�^���M�*�DlfRR�C�~�Q�,��!'krEBW!A��g�<z�m��a�RC�d<�+��T}�R������D�Jw�0r$�������Ej}]�&�`���]�j��G�N�����J�PbQ��	������aqb��hl#p�(�+n��v�ɲ�=���2K�?_������J��R�
c�;j؃g��_����C�͕��g9-w�u1��]�G�9��2�`G�^{!��q��G�ζ�0Z����Z�خ�ۡh&q���� 9҈��D,g�J3�#EiB�v��.D�>ɒ��SC0~��z_a��3�I�SvdI4�@�Ip=�=/.�UF���;�i���'O�N֡�Cܨl�ڮYÁ���hMVGyr җ��U�J���Wl���Ak0�`gy��L���ɫ�6�f£T����zT?1�±	�S�P�.<L+)4�)ƘL�UW��̒;3�&���Q���~��Z�\���OE��ro�<�ӈ*��1w�j�Dޮ�ҫ�+�S~�]a��!�M���+���tA���� �E���B�yaON뙘�_�%4��X�|��M�Zq�����O�ƻ΁0��iV���S-�,*۔��hq<��=�D@D ���I��W���AĦU)���Є�we�h�������3䖝k;KCכ���v�x�S����d�nDE�si;lEeih3�̝l+~���k��gqȥNx�/��L�EQ5e�ˍ�L�C,��@O�����`�>p���E�倮�;"^2Eje��tj�¾���ڕrb�#���O���v3#)Q� �F��K����Q�4{D���?���%�n|�ˎ��(U�m̾�	��{�Z,�ݎ?�HǋV�E���z:�
����N�<17���[�.��$���� �����f���2$C!���0��b�b��Ф	V�eNFBF��v�]�T�w-T����̃g�٠A�Z.x�9��KS(:��e����V�m�P,��
��^Q��kDȓRÒf�2�&-Q{�@tت;V��[w��}R���|Q����l��ܜ�B#���1b���Qӎ�����@iM���}|������:��w�ڷ�۽'��$�+#r��ű��3m�H���^#�^wM�P�S3�=�Q&��"S��JȤ���Ԯ�7y�֮�%r�^�M�M������!�V7�B`��tkR��ԥ�%*�zܳ�Gh��E缐c�f����J��[PȔd,ԑ2�Nkg�m�˂o�}�M"����!X+F��ިmno�E|��r9+�5�S]R�<U]�d�rE�YI&�ꊪ嶐`#�dR��j��V��~��-e3�$o�S���2��8ƙ���Q�������E����vy&�)/��k���L	@�|w��zG��n��D}��S̙�ʔ(�A��l����� �7@i�ݐl�"�&,�g��� ЯzBg#��0�Y,�3s�I�my�,ۚ������=��u�w0;�W�e��O�M~_-�0;O�&��u������sk�26{��MO�ۊ�M����+��X��\ؑ��G�3^�i/Ϛ�"r��~J��PРE�	��fO�ptjZ��x��[�.�L�H����Fy�,��V��YB�'=Ó�1>S�,�*IF���),n���=p����i`��rWXߟS�Lq��$���C����S��P�4VrY�UhƸ4=��0Ep��Rˤ������#^(�h���Je�KRJ��rs���I��NU���b����>z7+�Ć"	�+V��X�d��<t�xp��
��xU�K��d�@-��S����A0*�N���t��m��<gTϕ�Y��*ў��3z��1q'��Y�c"���IU��V�M��A��i(�%��O���d�Vn�xL�\vc��p�`_g�E����������q/Xt*M��U��g�ܦ�e!��XK4�p37��2�hG�~ݭ6��	�,M;�:g���9�@z�l�[��'̓)��b]�k�+��4ׅ�m,�T���h-O������R�Q�
��Pݛ�!ef��ܖhԀZ�X~T���~r쪊�=���tғ�9wg�zT�؛��51�����
�h榗/"YD��V�L�:�UlEVpP���]eD�EJ��    _B2�r6��\�r/&�5Y�I��v���B^�&YZJ��3M�Z��v�MN�(�ӹs@�I_.Iuc�t2	��i�x�3v�+�yx��M��.6G�.k�0{y�Ks���@����%�TF҉��aV͏E#���8�V�ZiEAB��+/�ƾ��,Lx�<����%/4e,m�5d�@��gF�:o��c�`3 �3�\[}_�n�;\Z�+JB#ؠ�ű)�>/v+0�〨۲������hZy��>�"[��v�%�5W���,��[Ȼ��M�V�KY�J�2��I��5f�w�h��-#v]�պDȪ;�\wfQ�YΜN��h�eiˡOr���z�-M?����R�	��0*�Kz�9\�+-B{q�,Ϲ�q�ESm��>7����Bی�=�(Z`
�$��5zFsC��\"�fZ��]w��ͦ '��@#�Q?�1_��ަ7�+���eQ%�T�uշ-i3�A��d�M&۝65�8͗	�¼IR�nV>��0M3�diN_�p��v白+����KM��}6@�MR���T/#�L��c{)ܚ�Q�/�4ί4~�-�ե�v�G|,NX.Gϗ�@aN��	A�>#mg��~
d)�9v ��H��6�/њm��p�i)��}`ח�])��CY�&]%�ϊ�ǲIr%j_�
N�-���H\�鞻p|h����`Qt���m-�
�*0W��SZU��G��g5��,��!jo[�\�t� gSj�j>��%A}���6$�𞔩���ɕβ��M��X�����9ˊ���6�A��'E�Z��)������Z]�"\�w�a�����X���h�Y��җmT�V�E6��]N�p��o�eZLf\��T� ,��k����ޠ7�9�ɻ��Vhf_|5������,���F�1+je9�#h�$���i�Bx�a�X��e��v������:�~�����P.�£禍�Ap`ۂ���1�L�/9��;]E�){̹:�ݱ+�59+yW���Dm��z��S�v��Z�^���\��˖�R�z��m�`ޥ���1$�˒��}��K�o㚂��
sv.N��G�$_��nnD)[�Kko�����|��/�6T�(�؛o��6Oz+*|J�{�t<�� s:����^��zu@�m��V8@d�irxhYt;��;M̀!���8�L���@mR��J.Fѹo �
��	һR
x���J����|�P��_!�E��Y�//S�ح%�\ۗ���-��I�)���Wc�V��X�NXt	&��z��،f�
AI� ����2TqfV���#B�UI1�o�^�Q]�D����;U-�S=P�/xLoў)B$H�Z%;�pO��E8-�K�(��+���qM�iian��1��#!���3���K��եQeQ�r!ݢ���2����r*���Z=�p/�1��[¢�q�}Xs�!5���11�����]��e�ns9�Pŋ�����e��6-3�<�t���Z!�/�덷A�2L��h�v��W�5�u&D�,�J1'��Z����!1B�;+[�E�2Y�������U(�7�U�j�]��M���`�~>[�`z��̖�����S�ET�뢧�6-_�J��,��W�����Pml-��x���B�yd�y/�
����~������>	~ڸH�4[�q�f�6��U��I
��Lqf��+W`an�����@�WĞ�<\��MJg�Av!+33��Ҍ2nra@�ջ{i͚5�UQ_�Y&7��q�"v"ٻ�!BZ\A�uq���J��Y.[!��#E�-t2�Y���7����.�����d��zm!�C���pZ��!�{^c�ҮO/���+��S!�� ��k��o	Cܭ7��H�0=0,;���g43!�+
�h}OhZ2�C�X4|-�����z�4�zPP3�~��� c�4(2��ɉ��2x���L��8�	�r~$�3����RkQj%{��H?�/�Ŗ'��D@���h3���|@�V2��EG���y�.٥�����F��_�e�0�6�N]Jjo� A�V�}�ѧ�є:_Ld��v�"�ѤZ���O)�P7��9�>�S7*�ᡬ�%M��R�a�`~Y��9���$qeqXڗKuE��1�y�k;~/x��Ec������t��VG� `]z��*�F]�;;�3:M�ɬ�ڠ?N=�c���Э����M�� ��Z���a�1�R��Kc�8
9���܅��.�lrn�����1(]��i�"J�����)�ir}�^u4-]���X�0�$�,YWح`|κ����e�-*y�4'��Y�4���c��j:����ڮ̋�m�r1[t�`��ׅ�żӆ3P��F��C�	��w��u�NGRt����#$�2BQ.�i����uX*R)���Y�F�Z�j� !M8hs��Z�b��!���}��(k�U�<�s������Kj}2�̶Pwa�)�٠��xZ7Nc���[X�Tk*�{��{]�JҘv*����������@��MU*�*�&�#�=�0~^GxJ���h°S[���<��jo�%7�nL�_�3���l��s;Xn�kJ[:��}��9�I�;Z&cL4��k�glf6��`7I A0�a �ʁ��D�m�:Usw˟�0�╆�/�R���k6���5�c���RϦɎ�)qWp��0P���6h�H)j�i@�
e=d;���̂ ��-
S�fi!\�%��=�Jf����A����UC}k��GW�:���kU�M��H����$�v[&\w9\�Y���Y̦;�϶q�/.����e#��k��x�gv�M�f+��� ~�3iAtk��{H�=�3�U�üР|]��i���i.@�jl}�XE���~��t��z�f�FP�f�0���8��Q�_��dfm�Q�x��KjZ6��`���R��3�&�m�ٞ$is�	�zG�9��	.hf5���N�4I���k<�ZZV���t;���&Y��愀ٲ҄��#1Q��U��f^�P�C��@w4̭��0�9W:'t���H�崇�>Q�DE����B ����V[�sA)t����H��\�t�9�������앨��"o7�L�3W.'E�q��k�m��g��!+v��q���~+��:��6�cC]G�0���ԅ����<!��E�)\���a�߄��UUu���aDU�9�&R;�z֑i��e����bQ��:h�Ʒ{���X�|4#��e�"�dzA�c������q5�j��l�� /�e��1��Ren���p�omC,i�%Ϯ�����
 pձ�Jcax-r� )2�4>�i�F;�e���R�[A˫2��e�	�
4�n8�V�F�2-H���8w�!��=T���W梋��Al�Ihhw�d{�m��A�|e��&%Z�$
��'�g{��/k��*f/Oie��{����Y�r?��g]���q����*����ۂ	F���|559��V��֓6�����o��t�����=�P_��i�їq����M�{���m���Vf�����Z_����}f���:�
Ȍ�xE���!v�ml3ԿsB�Yw��c.!��'�	z���͆�!��2�y��~r�����������>��>�4���7 c�9���x��x˽š�;�j�hų+E�ǂ6t{�������-�'a!��M�+�t���˲���@L�!&V?���
�5C;�0v�b����	�h�w�c�D�gփ���M��2�gHY�\=-��#wU�	�m��< �ɩ�) V4ɴ%{#�����TܙW��@�G��xV6v�g�¬�H!�DL��US�f�������D�ǩ7F{�A*S^��`�pc��?�<��oQ��M����he�0�Y{���[��Mu���|z�R#r�L2���ؒ��<M�+y`k�D��Ľ�V��0X!Αþ����!��KR�6.�=n�S�2��z51�Ey��$��CV0����4p��T�͕�![-8�Q��ބ, �Ҧ�3�׈����F]�%i"^#��qPǺkK�h����ŰZ�/��dEJ`����}�L�{|�U;%��7pt)�
��g``h���c�գ��C�l�|O���i��q^�hͺ���    ؿ��Bɍ�����S(�џ��;)]�A'Mm�
�G	���a����KL���7���D��W�{�ML8I"\yXS��]!â�Y-W�qxݛ�F�iS6H���(u(f�$�z`zf��a8d8y�#����z��4+�J�|͍��#���Ҕ��_E>kMz�v!�JX���'QQ��O�x�s�F�Rײ�P-'�G@��0�~�\�6�_4�۴-�f� �|'׼��k�ܹx�#�!	1n�n;͟�3�����[���H������]�;��lɁ��h�r-����=�Ī�,̫q�ʪ�铽=*dҁs0�஖�P*�sኪY�ˈ$8�bq�[����J6��`&��:Z]�H�z>U����7&�֠F��[qvM���͞�%-sW�������5�cClWa�c�ȗ9��y��Z�r]�H(Qx���;W,&o��O��XA�q�:�R/��8�?�E������NT��]�6����9����CP�-@U�ۛ���u��8���
�U���b�Msb��L�[���$����2�,A��-��j�8�j=�7`���`#C��(���0�鶣l+�8����c�y�qc���V��ס7�D��f� ��_��z��jl��9~�B|#����0'l��cO�,��t�"�P<�i�K�51�+ajNa�>7�٪�쾵����[�{�;T��1���-ifff
�&*�0AM3�4�}׼1�&��_�6�$�(w:�����c��٨a�_Q௯��JW�mj�W6�yR�&����.�T/�T�p����/CpfdIm���[RJ��ta��q�^z��|f~5a�Z��wJd�c��r����Ml\�r���5[�VA3�[MH������PU���0�?�����I�;�ˈ�(����f	����Ue�ީ��jl�Tp���ߔX�%�._e�������6-�t�{l��W#��.�g����c2�)y_(�����w�O_��gVw	9��/ڹ�@n��B�I�o_�b̓ϛ���b���l�[�u�5�C��I�i�B;q�}4��m}���jm"�z�mԀ����N'MK�yd��v��Ͳ!��ң���M� �a�(�W���5LeW�_�k�3����g�h2�y֠�0���ߥ5I<� h��P%��cR}��Z����7.���Ll_�u�T�O�G�&�{l�(�K�$� /�  ��l���g1Hl��RdB�s �<�������Y��h�:Mޞ[	i��Ds��'�9l0�?�ZX�ne�Q����Ւ��>e�����H݂�r�n!t��:�H�#!�(��?i��r�LP��d�$��R�L�_Y��S�jI�!.L�c�����/��LJ.;�c�S���C�77#=�]�u�&�ɑ=�d��;X�Ǝ�h<Z��V�l���*���;�׫���<���N�i ����!�_��
����B1����v��,'�;_.�(p&ð��))*U|�xy5x,|5�J�C�Hj���k*��uC �/�&���jM���v���G����	�ҹ;�?,M.��V�����+`O�=�%U��9ц�@yx[֞zp�u�U~/Å�UE���/x/o$D�A �5���	����j*^3�?1݉aD^���k1�
���q.���^��]�W\�'�V[a����!�E"�λ���4�����|����}�cߘ����H/�����=x[xR�~�8D�R�qc�������O��)�����v,I�h���XϞ'[�ɘ�o>�������=��l�Z�!�v2�A�`�jܚ7�P���B"?���a8�̤�vܕ��W�:��*�U��i�z�uz	p�c��[��`3�q�EOybh��i�EdwV�x�a��;ϭU�uxSL�V��V#��qN0�/�q���3���a�+b�3�Z=�ؠ�ro��j�P��x@Qی�_�hΗ)��x}�<��K=(B>��	Z7�`��������˙ ݔ�o%t��:���� ��V���=���Z]�z!���je�a�4��lK}���i����ޛ�И&1-E��l g�6��,���A���J��~V����M�x�]��D�{~aJ���$�C�0�և�6��I+>�7���["P�ɗ� {��/?ŷ�'��7���/��|�o='ݿz�(Cy�8,��7�75 �xG��������f�T� ���Vԩ���ΐn�_tQ���h[�'lʘ���j	Ȑ!>?Z8Ij9�������s��;v�0�2�Lez��4=��;��Hq�P�%ў��?]��������Ԏ�~�Ya�W�����<ma	A��,l���QB�='y�~W"3���Y�n�N�����h�*��~և��Tpd�Ҁ��[e���Ϳ��:��Q|�&�j$9}�PW�G��j�����*A,�;�G�UC�M����Дi�P_z�}� �����u��l��u��Bite{�0��AtC��S#Zy��CҭA�E�n�&6[H-w�6)��9��B񰦛��Y��6C��PX[
�?�H�\�~����"���CF�Lx���yF�
Aܞ����v���׈��ap3kv������e�w(Ⱦ�/�ۉl��ަϫs�;@�QV�F_�� X�����L��Җꢊ�a�DE#�.�l��M_�8R�������x�W���=�J7g?�g�A�,�R�P�cT�bG4;�xu��i0Я����W*�p7����P(�|��"��/�/u�(_�L�O�Q5*u6�E����@�����0��h�L�2���/*��c��A��A=S�zwJo- ��z���4�,�2���ڛ�s���t������=�gr0wm�A�`N�#�^�O�����=����/qY�\����(9����c8D.U#��ʻvZ���xְ�0�/��l1������O$լ0ܗv��z�m��c�*�7-�><<kI��?kB�R�����m����g��r�/�B���B4^u4]�U�z!����v��:ڵiޗ�*�t�i�J�>ϋ=Nqe��rv���ӊ+Axʈv]������(ȲpĒFw�����<���KK@���\Qľ�`�dqkK��r�Sȧ��-��
\͂��;N��r���0�7Q���|��}�kȤ�l���`���1;I�*���V�ԧ�>:�Z�(-޺�CL�n�յ�C�z5惠�Ä�bG�'�A��ŁƜr|�]�ZJ�'��@h��[i/y${|ɲܠ���4� (�N<{��i�'G��1g&kh�$�#�C��n��I}(-�a���ő*�0�λgڴ]��gI:�`H�����Sx�\,(T��6�ch_-��Za��k-ݜ�'��K�z9s�͢�����rC���ݮ/3� b;'���[�����ʳz�Zl�g�i�9�Bo*+�7�A>b�_^�׉<��I�?i�W�3^q����Y����\�2�ô{�����&���A�SE_|�o����*�����l��>��·�����������sK
B��u�^���fy^��X�s���u�g�����'��2���j�qq��V@�L��	����m��j\��t���獬����Q����^$7�o��ֈ��)~���6Ʒ����g6<���摷����)��F����(,�G�0l#�U������) s4:,X!��T�O� ����2���x�"��g��Og�̆���4C����I�Y�}b�����'ԗ�d�>��*H�5Q.�_"~����3��7�F�A0�v���?�뮭s2�e	ʅ��tk�F���YC�-3|�r����__?��r83E�"�C
�/��;/Ŀx�iC���� F?!Oպ4��|��u{����I_ӝ�ջ��eD޲K�wb��>��i�6��+�_�����6�U:m�W��փ �� V8��/������0��Ï,��b��Q:�hC9�㳡$}Q�e�����١#��r�ҭ%��o_K����x��²6+��i�� 75�g����U:��w�,���o�������%ˣ�C"���^LJ��.    ���\gSa9�h����Us��x2�`���%���ɏp�&3�Y����hz(�0:tQ���vZU�E����ύ���_tl��G@� ?�;6(~>������V���u����)�l��2H�v�m5���4(����&�ҎM�����A#�/a��N�+0ZI86� }�C���)��T���u�=�O�hCA������% 谞����NA�@�X�0���t� Xt���/��(RZ+�Ͻt�%�'���]T��|�/�j��9y�Fݽ������}>/՚���?����UzQNځ>��Z���5<b���z��Pj��=K�/����BA�T���#¶�����E5�WQ�}��3ӄ��k@�x(� ����JڱY֑!8��$��~[�  ��9a�d\;�$��s���g��?�'�\�3V���@*/+$���x�A3�^6����W����r�z�I�K����G�ٿ^� %���+QQ����;3�Ig��<;��V�Q��p�R��Jˠʩ��[<�\{�s���=lh�*Ga������^Mon�+@���uldH2��YjΙp�SL�nT�8R��#8@@*�`��-��Q]���ȺVu}|�EJ����w�0bP0L�(�8/Ј��e�p���v�7(U7g��� �C+��F��$q�=�J���>MQ\��[�N�Ge8Z8u=�N�7܁�Qo����{��y4��h�2'�O���<��}� p�R1L��������N�$��d�-��G����|�=l�X�|��[ˮ� ߩP
uzE�9i��׷l��!�S��@�E�7`Pƹ��(AԪ�p��5���"e�4��kk'��9j��`P�pr2R�h�j�M�Y]+8���W��m�M�� e�K���z㇇�ux�`�z�w1�9_���߁G��z\�A���R�Z�\J�����-��c�@�	4U��ډ��п6o�'��X���%�_fZF�'o=*/��(�t�Ӻ��PP��A��[H�L�α��U�*<���߉Ă�0Ī�C����b��M�ڼ�'N��#��;�q7.)�nZ��Nh�em5AҥYۊ,���~ЀCj� @H���6�:���8�;-cP����d/z;�@	ճ�c�zm�Ff�N�4���L��'w4w��	2s�XT��ͽ���� I�)+���3)܊�pp��H���8E ��O��-��GZ�VpܶZ2���c�g��jn�ⴕ��*�$Ȁ�,�:�̈Wdi�U�f

A�=e��/�2�6���W�9!Qy��[�E
�!�Pe��d�ώ���[���^`~����3��T��a�A֊����NKs\Ey.Kk�v�y�H5��ay1Q	�x$=��)D��"1\	j�.�h�Ģƃ����qN!0�R�����w@7n���t�=�w�O]�x�����6c���F��cf�34��	�Ŭu\�=�<��z/ƛg��g��zH'�I����s��Rˡ=��x2���|(
��6��mʕ��׻�A��U`2z�O��U�����ǆ�I�ylE�{����j�+H�T�=��Ė�Y�S���0���Gۇ�}�<J<>�����*Jҩ�ű�놑dF�A+2��itx���ڣ��"�[�����Y��RQe�<�
�߅�\q�E��m�$���	 �Z�TA��a�R� �uէ�UǦ�g���L
�|AS��^P�$.%�)�Z9�g�w���I���ܷ]���#iR�s�EK�����S��3u�}� < ���Qd�"��/9Gn�p
�Ѱ!�~R5=�1I,ꎀ�W��5����`r��ʱ_Q��	�c�j!ҔkQd�Y%��%�C��M�Kj�L��G��aT{�<�)�I�����Ǡm��t(��(N�_�u!C�(Hcxkށy������ij�F����}��c�>������b�T��ڃru��;�H��k���wS·7*kz�u�+Ė�o�uOק*�<Ѥ���"�����@H	����1g��+�5�颧����b>��0����\ѹ��GȢl��֭�U����C�(���)HE��),�]xP�jA��Jy��0?ݱc�Bz:_�
:�s�I���>Q_P�p��^�j���`tu����M��c��<�Ɛ��)ĘG���D{�[���bʁ[9�`�>��6'TѮ�Ǻ�Ґ̽�D91J�RM3t����
 떦J@fOA=��h���5�	�ȍe�c8�ђ�;�μ�kκRcA���-N"d(-�|��"����6���(6������%V"��� A�i�^�@B���S�i�e���Q�,U��^e9&����k�^s4�]�
�	/������)�;���G�vBд�8�lhV��զ�FЃ�P-p�'�$҉�}|4HJ�lG����Q��_E j^Hnjo��[�2F��(X��?4�"YI����n�Oҭ�8z�x1�رX�g��w�5t�%p�%��O \�h� ��1)�(��9Nd��ר��[1qL�`� u���+*xu$jm%��Z������/��7</4������;��E9+�_�!�N#���g���#`Ni�k�r�����Ƃ/����K����/Dɡ��N�,���i��q����O�.q
��荲�нDL�;H�l(�j(�_6�x�}֧]`�P��+ˇƿ�����Y�z�v��@CZ��Op����4/��eG�Q�����Ya����M�ס�;�_8���k���{���p�R���ո�����!a�K/Ṯ_�Θ���@DK$"�X
�MR:D:ZktxG��<�Mznn\��q_8��p���G3��b.I�d������^S��f|J�8�_�{�'��(�e���\�8�����C>݀(�9��ł�o���B��&FC�G��eQ��V��#ɼ'0�	�����(�-r�B�L=8�UvF?��L#4��1�Ɛ�m�*(i���]E3ZB��^H���J�6_d�U��H�-k�����yk�0>��zy�<�4IJ�'P��uŒq�A�����.�A��Z���N Q�I���MTJU����j�s��@�X���1��^	b�{�x@��3���?' ��b$)��g��~�y���Z�Bx���hT������;΂��Y������/Ӑ����Ļb|�9=�{`��%�P��p3!d|R�_��6�*x�X�L����E2b�������!�]ō4��"�ЌWqT/�5�=:�����(W.�:�)��Ý�$ �-��YH#A�˱5�*k�y��DLf�(~oP.��2���ܯ�&�i٥ۑ�@� ���� l������'��z�L�H������Y��YҔ1Ya@_op�a
V�`��;��Zp���xIn�a=+�5��
�]�~ �.֛�4P�q�< e�z�F�7�Bp���C�lI�,��o�&���N,�Zē@�"(��q�Y��_����A�4�)F@��H�wI�	a��R������~�����r��A ��d�N�'�� ��ֽ݅�ȡrHfڅ�@Gj���j�ɓ[Ijj(s��D?��Y������
f��]�:�mV��w�d�J�e)�2`5�#��~R���^a6vY�򚈱�ցo~�rh
  ��ظĤAjZdWA6D�m�H<�-L{�
��N�CH���tn.�I�M���	���ț�����Fan������>�<�k��0�wx� ��avX���ڏ�)���4R��(����\�I�B�5:����q�˝��I��E�W��j�ɞzu��ZY24L�a�ހ`��n�|^Z ���$�o��y\�|KY+ڷ,H`��<0�ze�At���9��,P���$�����ӐƸ�D:�KL_�#XI"/���֟��D���e)Iv�Q-��\M��ʅ��v�C��l�`? E����}у{s��VX#��Q�    �>\J���@3hL�Z_����+��gƭ٬�䎾ߦ��Ĥ+6��:�F���Eu�+I4�p��bP����]�s�
�a`�����6�*Y�+�G�� 5 T�&1 ���F�����pa(55&\�}f��N8����{����]�~ѵ8lh�=�c�&m�F�Oa����1Hk�T
��}�u��J_��,s:§�(�Y���ɗ���~'���`J+2ë�MZ���
M��.y�o@���4|�!���:��\J`����͓���9ܒ���/�D�a�/�_�����À45	���G��*�x-Wb��� �T�Q�0�'mh���	D�# l�6��J4�_Go4���!R�:���x�� �&J�Ņ��JW!���R����F��%���pHw*��Qe�A����]��VfE>�
|��7CLm��a�9s]ϛC߽̋�Y�7���8��w�n��t�Ii�M �pT�餓`܂i�3'��"�KjqN�B����(Ħ��Mk�~bK}��_6r�T�N��]�˘k��!�=�'�ث�IO�=K�%��?�a�T}'鶔X􇥆I��l�ԴH"F���'�.\�h$K����.ѵ.~(Q�ߖ�"�����)w��M�u����1��<��c����Ff�)ɟ0_��`�����c�����v�U�����q����¿�_�_��_��L�k���Lk�����k��ȷ�U�k�5���m�����hcQ���SE���А�;�L<�o���}}�<����X8�O	S�6@YA�y8��C�}�.�F�mǙ�#J�� �5tY����A��&���ǪйZ��_�Kw��i%(�������>� ���YAA0�/����G/Q #C4��@�)�_�����X+�o/55T'��О���F��5>HQ�,�	҃Ç�A�.���e�Z�;,.������YQ�xz�ų�$����ߡ!����+X��j�Ğ��y�y������K���?:���'DfB8���	v����sK
+�|�
��+x͡z!0Sn��&�ơWL:�M�V�u8����?c%�G��`����,�В�-�����:x&��,���?�p�S)1� ��f�|��ua��I���a(�'i�����?x'E�F�(>���pȏ^&��Lr�o��!��:Xo��&y^8�SA��Bc���TQ�-�V��L��zk�'_�(�N���� �Hp���39[�]�+W��Q0,k�Lyz�_.M���VWI�]��C�3l�MT����I\�}YG���Ig�u����	"�(ys�H�G�M�<�o�}8֔6���a�=�`V|�&$w@ *0�ԆƋnwģQmK3�k:�����.�ūm�]Z�/C<X��O���^ÿ��2�J9J���1���PBw��AX��gd�A��$������"�������"슈Ѕ���������f?gλ������f3��w���;�hH� l�!V2@��<��6Vn��82������:w�NL\�A�'�>�L��dg�꥚�����3�fx������tWa>=��؉��qX�P�������bW�Y����Z]��W廰��� ��x�^5������CSdl��z�
���Ο�L�uc>x�K\�E��W��ɔe�H� _z�8����p��q�=��)y@��#��;v̫�����5�N�+������M�}��͍ɩ������$Sym��<�y���F@��*�7�_���i9��ßr%�β���8�����4S����ܤ����|k������CYq	�Q`ab��_�$��83���_$�Rh�~�`�+�lAw�GݖT��:�O�f�r�=�(��k�[/�g�� _�i���x%lSU�%��I��� �����.I��J�Xj<���vIu�l�C��4��ia �(��G'k��泒��<��^n����w^�l�T�_$�߾�b��|��o�1�"R��҄ƉH>�����3����S��k���)��SO�*deG�����j8+w+��I]d���a𫛄�"�O�S����Y��hF��:��>�d_�X�0��TW3:���<Q�,�J�9���?CL�/,���\���A�������
�t�I;�M8�Q"�o������ <��BM����I'A��dƳ�DQ�&K�@�a��	>ʒ�q�.@y���]��G^��Lj�InP۳8ض�|�h�Yc��V{���r�0������U��Y��&'��C�N����'�g8�_��&��
��	����*����+e��}�;�\z٪��K�Z�A���`�xC��#�%�ԑ[����}�K}:o�s��Y7#F} l®ן��Ԭ9me�M뙅�3̄['b����P;u��t</�ki^au���-���e	.���,�EI}�~��JA>�"~�'�:��y����[�t$��	�M >ef��a���,E��ZG��?�<��v����6%�@�4�W9\�&f�䅍�v���Lp���?��l�7�fu��9�j�h`f}� W@��v�����:T���3��dyk�h���7���� �?�Qe�
)߄���R��M+��0o�=��%��L�":f�}fWms��ѷ�fO�w��~���s�m~@g��a�ط6�u��`ӖW��i Q��2�{=��Nf/J<nF{CE�-�1�
D��Y�a��dBG��Ts���!�J	��G	RxY�'�?�b�)�J��bgP�q��C�DgYTq��4�L��Ԋ���>a�f#|֮����3Ik��E�bwm�X{f�z�hP�5��e�kTh��睁�Q��w8��S:wm��ƩԖӀ��W�M���]3�A����k�1/:�J�UY|�f�d��b���w��Q0tQ[~!�۷���������W�(���Y����U� 87
 ��U�w����ɕ�uW�o����J�P�%^�EѲ�]}9�m���{�����ۡ�^��ˬ.�T��/6�ʎ9)�+gC綁�����6���ڨ،laty�TL���0h���ږQ�2����_P���Y*�Ty,�^`M?p=�{T�~��U��P�C����b�����}�%�xF�����n08�.�bn?j����n$nz���e����	�����������s�d���O»�{���z�F����O
��J���u��5~Y���`��i�k��~d���I3���9 ��Ħ���}F,�Œ�� :���Zm	q�@��pQ����b+M�	��Dy��EN�=k�Q���	2�[��wi�ۏWu"�O�����|�
͝��K��d }�ב8��5-�V�po�7n�q;�T<���p�i��ߟE�_�ǫ@��V�7'^8A��w�,5����X�3�EA���*eQe&�v�yH��qn=r��=�5��Ki�������}�����6�؁hN0�B��M5N�\ٷ��M�B��	d��t����џ�
#�u+��=�K_y>��̏t������БI�V�&�͊Џ��
S�ݱx��=����`fD&շ�A�G�Tо�ؙK6�=�ͅW�.c-`I���+ZtG:i��Ƿ�Etj�������N"V��[p�g��|�,��ň8C=6�#�M��D�~�X�k����V��L�<������D'�)�ąˠ�A���K|ZS4y��j�U��K�ڈ%[�b�ݟ��2�F]�� ���Q���w赊-G\�O|��m����ʬώ���y)�KSYK�I���/��i�T���:n�ڋ�'�ŴɊZ�?�uV��^�����X���F������]�(��{��D���$H �C^��K?!�|�b���n��:�)E�8q1*"�Z�Ht�_�gؿ�B���F���ڊ�wW�W%6	���	m��[櫖t������	9�z��fw���i���W�W��)NP_�|,�u��	��/��b���G*��]0��F����D��\�6 \�s��G��7g7�q������gaw3>��    ��]��7��k��4�>()ψ+$a$E'Ğ��1��ȏ�z��e7����S}��\���f�ha���y�I T���9|���V���������M2�K��C2Pǰ��^�OZ	� �@2�1�4��P�5u"L�ׇ�ԓ�gַ���| ���qlݨiLƠ�6h�uF�5��~>�߇�x�k�X�RS�c�j����Q�u�����;��j�H]e�eN�����H�h����h�_׭r-��,Rs�����,�#"���e�J'�R��~k�Z�1�`�����~�I�R��K9]a䩤hj����'�)�5�);҇o_�g�X�?��/r�Q�
q�^M���hW��?�ǖ�@E?�A␜sf$�9���~W�K���u��*U��\�����<kM�Z>��R�k#)b�yRY�F�WX�6;>zڊL�Kg����p (w�k��g�����E��8����ujKK�m�
q���).����Y�t_L�9.��W������Zə�S��,��"��9tBZI��������Ng����B��R�e���f���}��W�!k�XE����_��� ܶq�]ijMB��V'�J;]�|G�]H����1����MpC~
y������ǲ����3r[�CI�1��ٮ����VD���s�$��"_$��̈́��T���3�����}��M̋|,��b�&��8�`9'dM���S	 �M�&'�o��P�'(u1�~D�J]e�Z�;g��m%���b�E5aE3B?9 �V/��^��Es*��2h��S;7���ĕ�_ſ�?�)7��X\<�P���J6�9�E)��C8�F��H͆W�%��7\���_���q٠�o�ID	�w�(�E��mH��=~�\��Cلe����>��U1� ا��y��g"{%Q̸�e>@ʐ}y��U��]�����=��疽g�R|Ǉ>%ϮW��*�Gȷ����P�d,s�G`/���U0v��a���M�S�l���#9������<���'����b�����L��.�]�ْ}c��$�v���
N�z(��7Ϙ���(�������|�\#�?vΌ,�]{* ��G��]/3� �	�����ߔe\i`�UyV�b�1��`r�N�h"�g}+�-Z�f7XwU�z9�/�+�L?X�`�J	�B�"��i��'�?��b{��9=h`IN�Lv�̴"���ߛN�(k~yM�6�hە
$�CD��~oF�S�t`N�}�^]���\3�r��zE�S��6f$Wzk���l������Ч&���r*��}�\�D����m/�3����w&K@5d���l۝�x���?�ʮ���(��G�q!3ͦ�8-��uRhZ�s�%��W;�(U����f�Q�)��-?M�Z�n;q�����(j~��j��	�3e$A@�@�������W�UB8h�3|�e��?��mQ�:%�8Dq��Mۅ8}���{�hH�:=��a��^�	B�48���=ůL;��TYv�o	��2�,bz���%!P@�����o9�I�O�i�O��{'��g�=(&C�W ��{tK��{
~����3�rs��=�'�N/�B
��ց���r�mm6/Gw��s�z�U5
�=oI�;l�i�η#.`���<0\؆���@��6��J5	���Q������| ƸxO,|�W�Q͊V=t�/�y�R��]9
��� 2R�m��]�3���"��C�wf�N�[�+)�*��`7�?�[{���`r�Jd��>ʜ󕔲���/��/�c8ũ�L�Ѷ6<���+�Y���K��Fȑ��C��goJ&�q9���2��9�؉a��TzBP��GI�IҾ�ߒ�H	o1"��n�b���ob+��Pí��v�p��ѪtHG�R�N�.����9��R�Ւ)8�[[l�|䧉q�I�/�5��M��� <��"�a5(��	���=n�9�n�C�j�U^؀�|�_�cBP���F�|�_P��L����s'݌N���=�)?�C[\�kU���v��ڞ�:�h�eI?�"y��F��f�Y�%r{d�����zG6B�A���z~���C�n�K�N�v6��6`��=��� ��fP�����g��a8a�]�9qV��o�����9�q	�TOrm�)�»������ؘ�[���7�[TN���jvޕW�_��p*!i]ן}��(Mn�(��2Q�����KfV�"lQf��;v	�5�����Y� 8݇D�Q+�%{�0"�>���/�a��x�_�DM��'��r�.�,cV����y"��^����,~wg�z�H��[��������×�h���hh��m�h����g22U����)��]8qt�C���t��=��X�����o0�==+��U�Q�XWM�a��L9�Y�ܦ��C�N ~��S+�#+^v}�7�� ��$����E��5%y)ǯ���缉a��-����S�&��mǘ8Bm��%T�H��/�v4�a��W����փ� �k�J&�d�r�E�uU�WW!+��m��o�b��o��	o�PC\~oY�V��N�L�ړʛW����BIl�Ip���Txu�\�D�ʆe�q �1���5.�O2�>"1������-��H1zl��0���̵�J_�V="������e}�nΟ�o�*���ѫS���"�u�����|��0a����E�T��5�ͣ�D��J&�;&D�w��/|��*1�i��N>ϊd<br%���T
��>�ߢUnA��X�ɭU4 x�h�������z�L%��S��%G3j�(�@(�[m��S=�{�.n�I�.fθ(�2j�.��}F��`�����d�D�:(���9�S���(v��U�Dbc���eO ,�p�-/���+�`��_�>�L�L�ՙ�H�ajQ��[^�]o��|�bI�B2e �fB��� ���7Q޶-k����>������;�����qlV�8W.1���E�8�X��sR8n	�F�z���'�\:}d�"��i��䉊���)r2d��o;h[���]�Iߘ]_������΁>~�9�U9[B��h:��on�tr�;{eCw�?!_�]j��?R�Ք��=k<'�SJJF��I��yh'y�L66Ca>��W�w�4o�V*'���?�{_g=�n;d�v]�J)*6�>���d�G��_�(��o���Pհh��K�1�I{t<Naf�X�XZ^ t0����fǙp��c�-���CΆ��t'Z���}�>���=�������2���A��1!\�J���
S�=�lyTO2#֟�j*�U���)s|�������{��MF�
�Sa���RS�#CQ!�����,�Wޟ�]OL/�v���=��]�Q�\7�5���RʎX�,�m����d0�^'l�=�v<쫳�B�ȭ�ÂŮ�Ï`��"~̚Vp�}�l�%( ���a�b�#��]T��_t4#~��	�78�ط�H��
w'�<%����F�Y.��z�?�8S`�vK@�(�iޡJs��z;�=�?��w�Q���\����R�`�ԹK���\/�^�5�rm,�b�(o���Ǳ8ip�xi����Q���˛y��w�P�AC����>��8!���
xR>�5�S1��f���������Q;Ň���R&�\3>_lH�ڿ ��z�f��I}�P��=RZ-Mwb�Z�j����c|��y���!;���Fb+B�'J�qUˏG"T�¶�]P��v���{ko\�l��c�P������������ٍ��,��^K�x�������Q�"ڵ�����ԅ1���P�M��N=F�d.���Ӵ��Iv�t�}�[y�z���d/*��_��M7�饺��#r��-Hſ���mY̶�j7d�k��X(T:�ō�굾Lz�F���z�e�8���9��?��.m�m�߉"׹�r���J������o�O/Y�#��L����䫕鯺�>���r��	'g�T֌�}F;��T�    ���L!�{PM�������.ݷm'��c�B�Ň\'=�...��1?جm�g���N���[���Mm�آ�V�T]�="�U+���;��E
$���?��B���dG��-Lc^�&��o=u��O�9��T�S�lid^�I#2Xq��G�@�C���l+ΰrB81�r{Ѯ��F�O�[ž�M�Һ�����Pi�$"�ŝ/	�?Sll��o�G��|��&F���5�^�����S4�z� }�S��C���yӟ�]C�R��R�:�l/2��!ޢ�"��`w���䳨�)�H�7w���y]�\�y��=^Q�I�DC�嗕�9%�E�<�*��E;(�vNw4�V]!�{T�`�`���1ٸ?�B-v�/wq��J'�zr�@���i�$4�۷媠Ŋ�Є�E�PD���<}�`�V�e�]6q-e߹:[2F
����-?�^8x���r���9 T�E�-�*�?��m�6��/��KRl9D
ڂ[/^��IL�Og����+ᛆ�ϩS)�pc�u��=����s��x	]���S��Xſc�l��Sg`�6��X�pQ&�'�r1�i�~d��=���[� U���Ǯ�͡wf=tNN�f��y-,�%��x��1q�!�Ҙ��Z���cS�����27�	��+�j� �2���ſ~a8m�p�����4���ꍠ��X��s%eξ��*Zc�j�V��=)Pݽnx�;�Zt/�bC"s��87���G��ɷ��j��5ϰ���5�'L�Un�L�n����]�kFn#�_�l�ֳ��R��f�����s��HA�����s�а
��T��Hw�j���24��-8˖�Ǿ���h���w�D��^�*9�oۛ��szy��X45aH(ߚ�7fy��7^u�nvO~ebg�m��kr�*C�>r���U��WFQ��v�]K^����=Ӷ��҆�ui�QXk6�`.̗��%�Q`D���
�v�u���#��x�����ql�*ԍBax��� �K�o��� \� � V)f��BY}���	
�(J�=�ｯ���D�\�]|r{�ql <��.}��$J�Ӹ�7譈G�ԓ_�/>���.��P�WW7�;�Z���Q�@���O�f��+]3M��]n��k�ÇT��,����黄¦�>�TH�Q�	� O}�UtVƄò�ܲ���$q�j� ��S[jx��?DWs-�k��;!x~�PPY�%
v����#)��o���T�䁸��]����,��R�jѶ��O����z�U�.oA)�J��Q��I�E�`+z��E
�c��96ڠ��H,qm�����QVkZI}�z��CH��v���m��yI�0V���xu�~.�믐��r���",��ކ1�8��
a����i�z�8����e٢;|���3R�%���,3?�dj���~JR�e���/�9F̫)�K�����䧊 �dE|�7�x[���~-��/_˚�obŐe���-0)W��u�P,֫��)W1<��c!a�f2J��a����N�A� 	���*T��(!9���b��@[m\��/y~N��V��m�q�ξK}f&�]��n^�� i����f	bE���j;.� Mj;�Zu�DG�ٯ2Zn�i�X���1G^���2�����H|y��q�0 ��'�x4Jn��acL4g��M�L&�Y5|rt5�/�蜠)��f��~��w��۹��F.�ݼ6֍�R���5��O�o�ӎMW�>	������@�*�{�ӛ�O�^}[�^�i<bϢ"6_�ry�	����,�6�sؚ�g�p���Vv�*��de=(̠���.��v���V.I�~�b�����x/��X�y֍���7J�����xe����V���4a����[O?�Q���z�PZ"�(S-�1��9&���0��D��u�:����Y��s;�A��1'Ӗ��遢p5�����*�l����|zl�-p����-��E֜$
�qAO{�oc]Iڳ�����5�)mɼ4 ���.OF4!��?���l�����&��5S_���Y �=g�M��mVe�Y�1m��*j-�C�YcP��د���ڨ괽�B�
����'�aIq3����5'��D��h�_�	>� ��%^}ɋ%x�qX�;�#��6��B'ɏ`Cx#()Gk��Pp�RE����V�AXuMBl#^S�?���E1X�RB�>���^d��i>qBɰ[6��`�ʼHC�2Y~��4�����uO>M��]�_L/W��L�ԋ�b
3����`�G�I�F!��>ś8���T~y�2R;�GSxՒ3���'�ْ Cb��,��tΟ��<��v�۞'2��t7��J}�y�:�ۧ߿5m�5J�φ��I��q�!dly�
}6���Y�C^�pƶ �we=�1���	����f�cB���7Icy<}�n���7`OJ��~��r��m��m2�(��[4���4���?����� ��'F�G���7P��%�۰hF�"��R�/-���~���ֵh:n��6&��J�>Ty�ϟØ��\g�:=]�O{YLvU�X�YϣG$��{���s�B,O
�-`d+g;ޤ�z���`�k#y3 �R����W�ջ�Y�G2Oˈ��-��q/āl�l�U2&���P�c��F4u	~�.���+f���R��3����N�C*���8���3�q��Ȧ8�(�|�U
���5D��\7���9�@V6d+���zDֽ�W�����Db�e�k�(Zw�Ֆ�L��<�}�&����f"äw?\��]�?�����f|5���o��P�����&1J�(;hP��:�&RxA�X@�ʚu��Rl$��k��.m�_&��ێ����e�VC����0��4	�T���K��4���:�]�gb@����1���������<q)Bǔ��:e��%PW�q��e)���]/�ۍ���� A[����^��n	K����9ۨ��-m�,��R�cy��2݇'>H���Ď�g����Z/A��qgbBQ6�≯���ًh/#v_�4�9��~$�����˩ީf$Uꅳp�l�gs�JD�3�#��J%r7v��rË"���O���HM��I �V�h�Y.|����� �n������I�E�����=���f˫�X�Gq,�-�L�NR���4ഐ�@����4`�O>+��_;C���zC����q��� ��ְˡ��5�f<4Z[V�"�a3����=ŘO����4¢dY֎iqTs�݄�=��٤c��G%HU�?�R��s���U>� &��c	cX3u��az�E���-��;���n�Yl:�ˤ-�W��F�V~ּ�_Ѩ]ij���%�C]��O�X�ٝ/�?���7F�*&�و�)3އ��4������w�_iO/��yIGc�wuN���@��[����}Qkhw+5J�8�������o�J�R*�TJ������`Sh�2�ov�~A/}@Ȳ�-�kn��D��S���{����OU�l�@q)=��F�Ң��?
����v�O+*��\�ȡU��]Yo�ה����$�)����@�0]Չ�Ҧ���#��߷-�Cm0T��%dE�G��(cuE�w��"�B�[T
Nn�IBi��`)��C�F2sO%)8��T"[m?ɠ�l��CGn����BW�ϰ[�pD����#�Fn��P�>K�=[E��ݐ�f~���-����.��R�ř�t���нQ "ї�C}�n�{C�B�$t(��<��\Ʒ����a����F���]l� �?އ����z��l����Xaex+UE��ū)|������.��h$Q�*���rjS��k4�{��߼����}�;�aW2��Y����}^ф�w>�q�3�A�.�uH��	���(����.�JT�X
Y�g~�}�i��_�����h!�TY�w�C���\�T]�ZK��ϴ�m4{%�S�C!�Y�֎x]Ry�zd �w\�u/�u�_� ��F����:;>�E�z�T�P    �4��P�>o@�,�uαٙ��3��#2׮��2�%2-�Zh���8행B����������Dp�A_xo� ѷ'� ��_7z��تϪ�f�]>��RX���;�'��:gZ�rS���Ê���\^f��9����M�f�6�ED���D�0�Ö2�	��=�������n$#}��� � ��t�&�����}̓�x�4K<P뙌t�"m�^�B\y�L8G��Q͏����·I�8f�Z	ְo5V���%� Ip7U�|O��Y�v}�	���Ӝy;݅��V9r�f|�������3��C�C�gR��}�A�����O\e��N���%�P�Gx��<�=7]e��geP��X��c��9���.V����e�����_�CN.�H�?���)1�o�����b׶|�����7�I��&mR�2N�c{��*/%�K�ȸ�C�6xD��Ut���la�܃��]Q�T�P�l����d�I�WD�o2�$��o1���9-i�s�b�9rܞ\?�vxli~���ht�yq����t�$̃U�ɸ�W����U�el��f�<ɕ�Sp��h�6�~�N�������5��(Kb��&K)Ϩ%��褗�Q?�� ���sWD��eo�'��GI�a����K��/������������T�m�x=��/9��H#z�nq��/'��E�Vs�W&�'M�x�$2���`�f�%���v36�e"�I�cVJ�õ��[�р:p�ֿ�#pJ:H$vA�Tz=���}����Qk��	��6����p�����磒9�Kp�78.��P�Q��6����B����6+Y��Fm�p~���#����lzv����O'�u��Ǝ�,;C�Cf���+�ǵ}��Ǻ���{T���-���6�#p��G��p�rBRD,ß��$�����VdL�LϬǁ=��1�0�%}��������t���*�j��K����d��|˲�-����$:����G�
5�/n>�.`��U#���!�旽�P�:Z�*g�}�y���r?����W�k6��{����� �'���^��rjiϵ�|_�h;8�{�tu�fb�b��~'5�4L�rţ�W��E5��d�� 1zM,�������ȯ��[s�NϱO��C9�i��4"�+����|���.���s��b{*s��	�$+�s?.1,'Q�v��8�~� 4���a6�Z����U��'��+5�3���>��T&F�jt��r�\%we~8-��0FEF�%���.�,_���mL?�!@u�;a<V�=u�Q�j�]�o�IiwU�&_9���f�3Xn:P��y/�sW>�KF;�A䎼vs�cA�S�2q�d``͡3�9re �Ӑۏʨ��uȣ�@�3}��^r� Ʌ�Biz�/]����h�|��̈���6K:�(�X?dLP�陥&'?`�Ӝw�%�h�p�z|8n�-�v?�����&�f���m���I����d�k$�S�X��l7B�7�aqc:��ȇ�L3�hm��� ~e$�SNJ�ҟt�XS�>8�~�����(|)<4_��,�\~�\; �=_�h<���LN>�|֢HƠ���O��t~��b���^����Jy�����N��7Is�͡�W��%5	�(]`.��ҥ��L���DR{4���G��q��w>���-Z'"���!Y�곔�z���F�y����>H�ʳ2.#[�`��9�_m-n�BǑu��2�|��u3ɱ	&j_�gջC~&�g�4�I���kØ�k�9�qj(�u�nm�����)qe�%'V�^�"�hU)�AjS��o{w�y�!�.��!��+6^O�W�;�sZG���\�lN�Ea������m:Q�5��$��+Im����+UOn�9���6��+n�l֧zv�`�3�`�/�����Y)2"�:�R�H	U�=�*m8S[޽ ��u�{Z�ǵ>�����^���K|��=(QkS
�а�pl϶|���5s�3��h�I]�b�
Bs|Q�HO?8�R��gY���U�n~��4�o0�����R��C}�Ö�(� Q����J6�Ѷ5s7��	�����58���Z����!�vf<��ڞI�ľ.6�LC��T��Og.�4Јp��h~\.�Ѱ�1�LF+�B�_ݑ]Od�yr�U���[����7 :^?�m���vμ�b�P���P��0��:D f+���(-����ci��RK5�Kj쇝 E6�M(Q�u����e%�!0��ŒIS,���J@�)�9�3��n��9mSZ:�=�G�˃h%�� 1!zb��	��+0�{ �Onf�i0����.B�8��� �=G�8�m6x��	s��"�azY{1L����1���� |�����'�~�S�7��u���m��������T����#��0�ʯ�����
S���xO��V6�(��p� lG��t�$�i��[n�q�#B��)�Ǜ�EL�V�v��~n��_�����������4%�-=����.րO��_�`��"Wm��a����3K��\W��j���j�y!g��B� YM��Mi����C���D~b��cu��{A<��x������lY��%�~�o�/i��*~��!f�8��;Js���sZ��=�e����3�I$l�o��5�֮y�Q!����#<A�9z�xH4o::.K#?*�B5�j`:/�<e����c7�I�[���\�
�Tn(�П�Nκ�����ޡ{"�Uw~j-���'��˃P�N���@V�NNK�D�0Q���N�)޸���L�+�>xy����Z�9�`^ϝ͢SF�Y�����}A�|��.�2j7S�ȕS� 㧭�D2	��g85�B���Q��7�����V ���(�g��$� ��D�41�r���YSD-�I�#.t̼r_u#6���ﾽ�x���pH�H��R���	�xA�.u���l.ҕ��5�U/;l���'���2��LW�~�o��/%?a��ߞպ.j���b7���R
��}�ٰ�þ����O�A4���}%˶q4T���c�ͮP
��V�ƭk��Dg��9PI��i��&g��l������)#�M�/�G9��ӭ���:=1�v�pBT������d��Op���p��/��lf�03'J/�P�r~�Ѥ��*�F��%Ud��e$����^��3��%��#�2��2�U�e�����(�A�n7��6UXc��x|��'Cү��U��o���Þb��
l���糥d�Y�tu��d��*>��J~�6��&Ӛ^!tX�����<ϵJ������� ��?֙5�ֿ�4H��z��>Լ�W��n̉��#�v�wY;�/�+�)
�D��K�R�'�}f���轀��t9XA$��g�q�bKU������r�ͽ�,��(� �t4[\�����W���烁�)1�
�ŏB>��"6{��Vb���=�1��'�&,6ɳ���w)%e ��'\^r�d�)��>��v0Ft@�����6
 6�xV/��÷[�����磳��� ���F��Ʋ:��:<���YP�Υf��
dN��+k)7?+.پ�٣!$|��n�����P�T��˶fB���q�q#���OIje��QO|����硧(~L��)H �|~h�r�M�M�{�oO�̓v+yv�������˧S�zg,ub4�����3WG�	�@�sW-Wh'��lA/a��<����	�5GB�d~�՗�J��!�� ��+�4��"����}���N6�w�v����a'~%Q�&3k�W�FΗvF���;�>����9yO���C(x5�=�5�ﺟʾ�y<��.��;��W%���j��܇n��g��9W�7
?$d^���[�>��Y4{�]��3���g�:H�xC��1��B��z�m�n&���U�%�"K�b߳�/�o�E
�b;�A��r?��/@pbfH-�@	$�%���س��y����}Ջ���!.}���̟��O��
=�1��x�7b��Eb H�wwyח����    ��W%L��� ����m�p�Ct���b���6��|��>����f��.c�sp�I�z��*SГm:Eݷ%oT��7�Cu�n��HqM�B�#��/݉>�K����Z��:�t�o��vH���кU�V��U�D��g�?�? 7���q��s!W��ƲF@���0�h���ސ�d�*�^>��O^��4�?�T�C.��W���ɗi��h$��S�W޸n	�qQJZ>���]2�<~�]�0p{����*�Ba������o��#������@���f���K_�i��Oك������F�P���B��c����s�"��ru���zl�� �ܬ�y�S�b�l��RC�_��U�k<|���V��ӥ�8�"���\�H�z�5!��$���%n�Vq߂�.S����f[��3�2x����z)���ǽ���V�&�5�Y�_��3�O���89�K����^�A�O�}�=�f�9�\����|m����J�]�ޏ��y���EG�җ8����?��%M3̯p�繛>��������"	E�]����R&;���#}c���J(�p&|/�p���p��m����~l������.�kP'�T�+�?]���Rtw�2o�1��� ϑ�5?��n�����IQ�#���fq�t�F
�0]T����(��9�Y�����aZ{�F֓w� G�2�P;�:Χ�F˗���LC�R�!=+ >^"���u�d��]�[W��]��B2��� Ⱦ��a\F��{�`��Q$��~���+E�����r�q���t-�g�"�����t��`V.��%}��h�`|��.�>�R��Bu��f�O�;�_�*j��;P�)��n���3h��D�� n�u#~0�����'����C
(PkJ��xQ?N�v^$+V�+�p��j"+������RKJ��˽�l���:�}��瘄S.�+�"H�?mB�AJ򏣳ؒ�����X��V��pw���gۧ� �^� 3o�<W�4���F��a�P�����f����Z\�/�O��ĩm�6�J�����mMw�����3G�h��Au�Cw�9|W(����j��X�T�T!�����SkXo�V�{�������IU0?~�㽰���q�>Z�oo��uؚũ^�U��C/.u��^(g��N|}r͡����A�ۨ��
�U�`̥;�-*��6����-�˫9���5�da��m�����F�}9����HDU&��ϒ����Kjo L�<C�}���*E�x��$.k.R��y���U�0����ܱ��
<���\��$H�l,�s ֤�AlV�� �q���[X�i�n�h=����V*�g�ۮ@�'gRQ�lt��/$>�e-���H)��Q�K�׿���j[���|�L��gƱ�L�v�c��ɲ �h�@��:���'�KMX���7vJ%1m����G��_(�ZOo����?�H���S�D�*�c���8و����*/��Z�l�mo<���X�B����/�~2,�P����bI=E��O�a�YY���;8���T�\����� S���@]cv?�/"��$�n�[S.�y[�?z�a~�/�5r3��U�F�A�M���&�T���Zh��u�'�	ਆZhɿ,|���y��:��G�#��\�>� e�<���*��L�)���@�����9����*	(5k�|��C�7����R#�}Q���Դ�<�pY�4����bz<��ŧ��ݿ�t���r>�4&����/E��S��l8\f�V��#��X�
)��Ĵ�����칛g���(?��оH� �2ߖ��jѷQ�E�]e@댽�Jy��f]}���*���V��Oe8�3�'Q3����1��	"���/�evD�$?ɔ��$�Ȉ�����Ɣa�B��2�{��Hi�ۚi�����4����mU;0�oU�Jd�G
Q��3p':����uQ��bd�槈I ��N��s�%��>�=? �6��O�������YS~h`�%�x@��z�֪����~���
��I��&�����P��I�T��o�ƍ��u�ί���P)K�>����u�wq���T����c ��Yx⭵j�o���ɴ-����W�y�2i�~�k���\��{���ف���g}�!uD(w��8<��z��u9�䎠��M^�򰨊��e��١?��dLJ�5m_k:����̜
y��
m������1ᴋ��
�%����\�
W�̷e��4��5`��Bcv��F��S�f�w�d6A�?Ks%��Nq�e);R�> ��������$�f6u߅P�ߪ!���/�ez���_��O�%ۜDW��m�Q�UҘ��F�s �<+�W�L{{���s�s�K:0T? Av<��+��!lV/bG��졗�^㩧�8�E0��5)��NK�6��[��{f��LBR��WOj���R)렮�d�� 6�6������i�R��ok�.�)+�,5���eR�LC.󼱟pn���)�i4�D4�CZ�����] ����bxf��uTz��Lȑ�ܟ�������%F��I���_���>Ou9�-��v��]9/�/�5A�4.�پY�9d?�IZ�3YrN��S`wa�63�:��Ô�2��3+,Q��_��s	�GWU[������Z����{�aSO��H���LP�ת�Q��c�jul�F(J_k$~Wn�,��A�,|���ͩ�`Y�%��˲N��!��>���6��N��Q��o��/Gq�%w6aӐ��� |'��<�L�Xx�=����K���%����Kx�˭gs���sm��NjJ���.m{:��Z}�����C��+�B�,���nN�\r7�We��{����o4�x�	1���G��-�}`4����5`�H��[�yo��΋�Ҋ�Q�����L��g+ � ��,��BP�aL'�[�N�ObH\Sy�kUe�qף<W1B3S:Gy��B4����rl��J�d���mr�o�v	g���~C�R跩{ɼ4�y��/����G ���C�{z+�R�q=L��^�F��C����.X1��İ�����'��5���Zۿ+�W��8���%!�츋�<�=3_~.��Ĕ�⊎�1�ϻ�_>�]}��	^B�!FNv����u++��E׬j�������>c��E��8O3����3̓9�x�����KhS׽ͱބ��$^G�L�9�*$RQP||���0�Y7
�W��U)�;ѱ����_9����e
b�G��;��m��� ��
�� W���̤$�� ���3�NO�( ^���b	�������X`�2��B��ǥ��c�r�=;nps<@	!Cs��a?��+���o~���������w�����P�0��lD��֓�������� �>����P�0���Ӕ�l�J���ݨ���}X���&�wf���A7^j�f�c��8�ji꥗�����rc�;V}C(���`ϟJQ��R+9��>�"[d��O������/����ľ��pz'v�>T� ~�,��[k���L)��FQt�B�������}�:i�c�6Ql^se����W�<�Ч$�-`k#�0˒p��oZc>h�]�L���p���q�88�@��Ro��T%N+��gU�Ka����h��V�����QzC����q���J}(�
b{���/���d0/��I�N_��l��|��Rh4@h���Oa���_�;zK��kg�HU�ﹲ3���x�����8�[r�K���ӊ{�D�I���`�3��A��wA5"�xlq�R&�4*� JH}�U�����T�c&T�?� ��W?��������;%%|��|"��DZ�7p�(���w����c	�[X�#�_��n����&9z�6�7g$Y(`>��(����x��4h�����D���vh��֫�8Ӊ��#���	�6��1M���ϐR��U^r�O���vg�����4T�D����Mށ����ɜ�i��l����̨/�|!U���i*�ޝ|    �6_6
^<�������h`MG�?��QK%x��-�P�V��v��b-����K~.3��u�δ���>��=¿� )��N���ǝ�����dIK��F�+"�$ٕ~�Ƚlh�TA�����-�d���}�J/u`��R�.*�xh�8��������nV����rP٢+�͹N��E
�[�=�I�!�F���	za7���J��Ğye!+�7)��m�v�A@@����ɋb��{���3^���$ӳ=C>[���*���;������
*�9�b�p�}܄0��Ip@�ZhD(��%Ш+�2C��"e�q�� �ciA�E9;|p�t��AV-���10�����&c��X������Lvg�{"�q���4-ӌ����}�c���(�(ۆ$0tF
��"zz>Zb�Y}��x7�e�d�M���BD�����B-D�$f�lh�WAN%�yE��1�!�4�:˸�)�J���Gd|Ȕ�`�+�N����B�J{��ZMU5��O�j�z��\5��W����� >h�bo���
����0��ZV�(�9�I�B#��EM:Gjdr��N��x8���$�_�#�a7�M/����:]����"Ģ�z���{���Q&]���T;R�,5e�╀���~%H�;�Q<!r���9=�k�-}�$m�9��gR�'��Pi�����c-.�t)�$�#i����Tp�������� ����({&@�E�d�+�?]J�\Ã�A�$P��g��F�07S��װ9����3�4��XV�tx�&("�b=����rU�Z���3�w�����s6��1S,=�!o���OCo\�7�G()����rsyHڶq��pG����{�P�i�7 ����L�dK��_��؎�v����@�nU��_��q+ܫdc���{������48��o8)���4Wtd�
^��:A��r��/bĺI_�/�ya��ل֮n�����NN`Oa�)!�����UD�РF�j`}k�{��t]q-/�{!��ç��O/T�N�ڍ;	6M8oΘQ����k�[�\�x��<Y|w28��L��p�h�J�~ǘ�q���P#�?�ȶΜ��F���5�6�f���+r�����X  � l�5p��%��A�B#`��u���2+ړ�+tI6�
��9�1�ޞ~�����4�e�H��/7^r��?}�
�P���_\�;��"!�����f�NYNZ�z@�Z@k�`���=$'���G/+PloA �v䁩��C���Xkދ������k���7�e߅#a�� R���.�UE Wn߮��>�y�년�]b���[?�o�I�,^T^���Q
ͧ��>2�|���7h0|k�ޕ��;�\�����^��yO]�5���s��U�Q�3��GI(COr��פ-�7n����Ж[�b�˗p'ʛ茫xT��a�ڍg�i\��U''�� �T���G�����k���M�x�XM���J�fɤ�eq�%�;�+I7L ��7����A�G��� ʿ�]"�_�ZO �
W��} �����L������M	�
���ҫ�|w�Z��-t�$Ez��oa���/�7�ŭuh;]�p��b�ZIо&����p*����������"�VC���i晈2�!��,�]0$`��>b���<�:s�E|ɯ�fO]g�'��ݿ��3c�'�����m�h�����Ĕ��`�|�I�����|ŧ=[;d��S�/g�q�MmXd�ʟ�����:���kd�ܗ�̫�	z��^��W�.S�JBEM���V�-<RN��y�<�J��jU�R���(C���q�s�d:nYO��*1����3�c��-��ͰLWO�B�x����ߣ�N&̌H��dV1K�02ER���������G��
���p�������9b�g�
|@�o�&�yGO�-��7��Q(�-0A�!W/�t\�Nq슞�D^T�K�{�]�Z�z�P���[M��
Vx�A�6&��Gʈ������CT6&3k�CŊ���X�Ig�<Z��{� �F�-)�N��6���Y�d�R	�0,NN3ǳ��P�m5�<L2- �`ì]R- &�TZmZlg��j/&#
֣����vp��o`ς�^5�1��I�}q�[�_��G:�,\���-�}e�H����|�������{�4�9SYv�}��"�];�0骛v�7��_���Rn�V�>�O�r����͏�xd�2J�oƴ�\�؜�{�&{�U�3�N��6PR��L�V}�&����_DŪ��{I�S�!j������5���[��`Aw�h2�CO�=O5��ӪfZ���J@�I@f�G,�"��rN�ʟ�5��Z����H��L���H`�fC�@1(�t�����\��\	U���2z�ܺ|.�!d�$��]����jo"\�$�m6^?9o|�zo�T)������q(G1��p�~߻�8j�/w�<�����8�S�E��z�'ެ�l���4]���І]��%ؿ��!z�]�W�U��r��P�5�`�|�k_V|_��/�����1-�����	$�.��k����/*�f�ZL�f�ql����uu�M��K�z"a͏�غ����~L�H����n�@B�>��YwJx����?�����k��5n�-�4Y�x�p��TM�j�z�0s4N��6YH+�����1��<ST1�l
u�?ef���vP�G�Ⱦ1_m>ߜ���Hfݭ�Ve��g	ĺ'P�m��
�^6��@v�z'L+St(�C��5�'����}:���7}���n����$�XO%LU��ԇ�F��1c�{��}pd�W�?������x�����	B���H�K.e��ċ睩�LV巋a��-���z�.�	-�U�EW�Rū��f��oh7t?#�TJ�B������}�w�v��+��2w;���K'
�mΣ�w������ �Ի��?�����mJ��d/�g5�q����-��7��u��݌��6p�/�����]�TÒ#$�!�i�۳��ݣc���3IG�q�Q�сg1���Ӓ�n��b�L�
Ғ��n6���%����e�Fa�4���*p��8�����k�?�
�H�k.��� ��i�ţQ�zU���"R�W�J�% ���o��ZcC�����ʟ1�d@��4��I-�zI���!j�;K�(N����>>�ژ�7��#	��9�vNӈ4!.�gKC㩯.;��o�[�'��ɏ6���fe!w�`/�"�/6	�͝��9_�s]1i'�㎊[�#��pD;>�1�_3�l1~������;m*�td&s�r�dei��(mE�<��?�\V���3�.4�NQ��������P��7���M�ϴ��i��)^���Ǧ��eՓ�z//����nV�O���q��(�	ɼ�ƴ��Ɇ����}qS�?x�C��:��&p_c���	��jY�̱��.��	Ai���m��SiBَ���qU�
9�~�)�h,C�I�|��LpGZ�H�"e��rX������h�A�ߧQ���<����4���VH�(A�3oQc�#䳓���;��4@�OaG\)�	��Z���ޘN�9+�}�.��l��|���M�n�'�F��aU��}w�?��][���/���t+��Ż0@�?���fݗ}篞���u�M�m�c0��8�����`���U�(z����ZR�&�_s�.;u���$85Z��D��&1?f7���g;���a��E��|kp,��^�wM}����2� H�*�R������'��ra�bc^j�2��6��U��B�Yr�*�G#*���K���%*�h�~< �q�tm �:�a#�F_�h���>���PX�)���;��a�5�kN&�Xr�!S3��+:�:US3��ڎӯ�7�Һ��/>qy�����4��B�%=���]Z���f�gOVǠ�Y��_��|x�wf���a�^��_�k��{Z���A�
������1s>�y�).t̝�s.X�~\1
p�3=��<��#�k��k�p�/W,�WW?�k�"�QS_�U9_=Y
��)c]���l�6    V�?��[B��)����؁ڝ�G�R�.z'�+���IL�������Γ�I�d�S�X���*2�i5G&�<��t�>�,�w�<o����^�6m�{೭=LXL�"L1|�f� +dVH*p�tvS5~3�x?}4T�78�\��۞�ԡ|��OH�眕	g��`W���`�H�T�A�I~���߾�F��9���3�,(6�=���u^	��d��#R�F�Su���Tm�[
V��d��"/��S����,�C�́�|�ʿEA�²�cT̽��]^B="��k���s2�ø`d(۾�>����5S��0 6�ТP4�/��.��\�r�(�����Du��Η,�܊m24e�� h�x2����ag��mݤ�=XKGOb�Ë�k�Z.�
�ț�^+K*�/��tV6����G+��i�z�\K�BbHl�rN�sб����9�se_�p���*b'�6w� ����{��֊�䚈Kl$�}JR���3~�m:6\uqٻ�r����Ch��@y��JG� T��O��v�v�[;�]�ppRk� �ӗ�I	W��5����c���1F���^י��<�:�ؑ�u�k�m)N���ܵa��X+�g�εR�]͖�"��3�� L]�D�1��kA�s�55պ�,���[��P��z^��_����+Z��ԇ�ceE�A��z 4*w���7�>�� x��"Fη0��]V0�!���Whֺ++����{�*��^u�����mU�&�3�u�Y>��vgy�vo;��L�G�-[�3Y��O�Yd��8bE3<�A(=d�ږݎ)ͳ�i�DAeV%��+e��'�����;	���x�]�h��7���	�֗�Ykhlo��u��$�n]�OB��ϣ��g�=8*8�j����3*�1����o ���#��3G`�L�����.i����1%����?~N�6y�ç'^C� ~�C1��,v�̱��%ُ�:
�3`�ü=�'[�{��+��Ȥ�TN/�~E�'��~>片/�yIv�i�OA��Y�"��Los��1�C�A}A���F�� �5_c�".�b7yv�|T�	zr�:?�7Q߭��F���ӭ4i7�*��!��1�g�ɽJ�'F{����9��EQ��W��G
ؐ<�x0Ov.DT�����a��^1,G`��a>�xp�i����3�2�:?��y�=�������ts=&눂��M}[�<�x��zɜ�x�����^&���&?(�x���5�%�Ӟk	�6�V����/$( .���+�#c(W�{,>�Sj~F�����Zȏ⬃ >����vbĭ���h��KAچ^~��S��BĢoeҝO}������np�)3��"��(<-�p|��i@Ǻ�6#����k��d��D���Lk���Y��LY�"6�e���ѕ�P-�+"�3"a5y/���)�b���<Ñ�<Nځ�Q>k�*�Lh�����쉦U�ë8zR[w���`�fY0GL��/���x5�W��|s��M��׬��I��f�R�tK��s�
�Zo��{o�bb�����{~�(��66�5E���7v������%$��H6$<u~�u)n~���'")��4S�Rۨ���.?��l��{z�l��fF� �����	#�=�Ǧ���=NL-�9 �p	w���K|䂽�i�W_Sx�5¹d����٨�;4e�ҧ�]��Y
��z�A@�L�����z�� �U�ٍ��� �U�V�<Gv߶�z���� [J�d�5�qf
^-��M04�mW�t��F�W_J|����@�t�I�� #��ov�4�y�ؠ2��ڒ�	Y�)@��!��Ԑ�M������?	�Tڻ����D�D�	�sXl���)vˉ��`��QN!��, ��+�R���ȹw76bOce����ē+U��a�Dש�?~��}
�.��&��xD+	��4,��y��
<Ae�̽�@��c�x\j������r���W)��޹Z����G`��Жc��&%Q���1�:A����д��Ȅ!� �s�̒ݲ�Vcλpo����s���]��o�N�+ÜWHWIr�>J��v�<HJ*&׾���ay� }�oՇ��I�hl�{���Y4�+Qj�o�`�gl!�'���|�<-�Va6���V�B��}�2L1�SI�8
DV�s����Lj8�tŃ��Yb��΂��U�J��v��==���*�e�Dc���Q������ϳ�0�N}*yz�1�{��ש�����l�-�)ҷ�H���2:�rhwޞb�R�º���� �;q=
���lG�>B�E�5�Js�y(��L�,�}G&� ��ԽD\��Ij�4(�0�~'�*='���)b�!c`q	_~KYۋ�B]��b��V�ݭJU��� ߃�|�d������� �KX����G2����{�	��,��DK�@J/�
�@��&��+S�����ZJc����2�C1ϖ�^���}n�"��TԞ` �n>s��2uO>]�tk�ߒ"6+pH��G<�aͅ�Xsfbv���2��<��4�{��C��*�/� �J�e��q�� �v=���~��"6������y�R�{��b�Q�ʤ��E�+����Y١`iA�.��9ۦ��B1�Wp ҆���<��f���0Vs����ʓ�"*���*�[��u�l*S�$E�t�M��)u��+��JD�|��ni�aT��!����V��Ѻ���n�M9B�T*��Wv{i��6 �QWEPt��B�-��`����1\�<O���C��8�x6(;vS���چfE�Q�>�����t��p�{��ŬK����c�~|R�i��.�(pXH��?7�f�&���'\;���:�@�ĝ~��\��~r̓ǍS8܇�U��(7wc���,�{�FlcZ2����$Ą;⥊L�&Tʥ��v�1�n�SCaP.�ޛs�
�)�У0��Z����,@�(bs� ��	!~S3�y�x[�G��e�\� �s�i��u(�Ԣw�0�(�)ώdV[��ݻ[8hm���)�f����a��}*]�:#������&��H�+"f��5a��gs�Gx��ߨ8�����e�<���ţט{HԀ�k�ߕ� *m�����Ćw�A���ȭ��6/l�b�� ��,�)���7�٤��]�xE�DG+��*�w�+�P(�z)���]���;��]��_�m�[:��+�U�������4���{����{(k��m���C� )f���~���`ᵣ ��m���{��6?/H,�{�� �����+r�M��d���3q��<^["Z"Ḯ�P���̘.��yn������:R֌��`N���=�2?h�<����D4�k=%�J*k2�����y��5@����t�* �`��<A���NK�{�s����z��6�xr��L�?e�E������9���{ �F��<Vw��$O���j���4�j�8dc�J�|�b�K^e���*�q���w8��C�����S�;�k�JX��u�Uk� 6t�6�xU�f�^�ӑ ��y=BS��M���	)*QKI�D�\yN��B=B�;Wj�4q�)��!@Wm��.�ra؊̓��`f�e�v�
�z�X��e��F�"�)'�O$I�q��k����w\���R&��$�Q)W:#ȶS7��s����X���^^�=��!��q�$!�إ���KS� o
���
~�w�@�\QݶS{Uꎦ�Q��{-2l�7�Ah�Cvf������&�6!Vp�9v����3���S�Jzk����c�W��.�X��jh5fP��G�
e�,�mqa�q���s�r��W�,���N��Q�夂jh�ā�_��|!���y�l]���f(�IĹ)]���״�y
#�Z����&6C�ߺ�ߛ_�%=����3�LN��v�ޠ��C>"�L#<\>#�����o{�.E��"�@����ߦ)�-_�\�د��Ѯ��t=d;��i����S��F�f釲;��k�@������rY�}�?BVZ��/ɗ�l*�v��4���?1]�ݩ    �I��ר*b+���۾u������x����躧}q�u�<\j7�%�*sb��MW{�����co7qt�(߸���ۛ9Y������5���~�E۸W0�js���k������o����܉�&V]�K�y��3N�x���b�@
�l��ܿB�(�v��ap?D�L���Ϧn�\�NQmd�|���P~�ô�X��z}]hQ	\��P���k2Cpw>{J�f;7wQ����b%s������!0��a!��^�l�@wk��u*9��xI�Z+�ʋ:�K�ޖI�i�`��XT~�S?~��+�U��׭�y��.�2�+�*8��y�M���T�j��@4̾�,`�Q_3M�҆���^5.NNL�V�`������#}ɯ�u6�~bA:��X?	�B����[c���`F�;U�|�C��*ߛG�tI�o64h\�y���l��aizn�4:�De���Nļ���<9�r=�uzx��,���{�
w�l;�؄s+�����0澿��D�a�~dp�o��S����NK9��X��j,�O.�C�%�ݹ�\쩘꿑3�9��I�����݂ak�²�^�3��Խ�!T��b�4���#�"���⣟T}i���5��:�֬Ikv}L��70��-�Z�����s���l��o����v\���,N���^���n.�'�X�4z@�P�'�k��oM�B�!� ���dp��8'���еU�8���aWnf?wp�7�M4j���H���*�ͻ������D߃l���X����`}���Hݽ�3��%�Xu!>ޗ�
\QŇ���� ����� ��Q�d撿ߓ��G�j�v� �2�H��,��
�uZ�?�̱��'�/���+��Ba9N�J����~�L7�9X#���5W\��*����D^e�T�A>X�X�
�8uL6��T^q3����z�'A���g=S�x'��B��<@������ʋ}�`O�[��N-��[�L��;�*v�g#K(�-b�rrc��g������q"�����n�Ĥ�K��u��\�N�aǒ*E��9:a�^�-@0�Ý;s6�������ڦ�^�PnU1��g��~���U=l��*�8�:�\k���ԃOe����:&p����o���
{K��Z����K��N�"��R6���=U��x���\�bY�,�U�ʼͧ��k��k��15�z��9)��R�i����;���j���^�������B����{t�ym\�J���F�)Ͼ�:�i��������r��mz<�,��W���`i�NF|���(�w�s {���ήz]��y��Nu�0D@��/�}T|�3S_�]Mya�r9	���N�|���F���a�w�~�|����Y�\j+�;�̻y6k�4k�}M��Z���csp�Ս pz�=��5�]/?�n����*���	l#7�m>�����$s%�� ��S���C�����+F���}�u��t���tf�(�Ա�7�j�;� �sxx9�\A��`����hs�����yJCeT8�n���u^��bQ� ���9�7R�s(���F�jKݶ��s�^����kdW�T���+o4�e�/��r{I��$#����>:����n���/X�'�Ih~'�d�F�b�p�����xS���i7��?�1la�G���c`��������LiD����A��4�O�&/�9
��
��@�n]����&�ۖk�I����&��T���Ix��W�^���r	��g��e4����A�U�8ԥ:�݆�Z)^����+�����o���cr|�؉����i��Xܣ����o9��䱪��t�Ԑ�$�]4��{L|W�6)�-����	N��=��Ն�����{#��������M�J�U��A/K��a���e��P��_v#���f{��c��w�K�)��;F�)�-�`[Y~�O�I=I���'qUa,5gĉ8�k�����N��_�%�H������.��ye2��)/^Oښc^��n��� k�·� v��{��/�7�	~ɥPY�uA:ޏL��2}k��ԛU��I��uo݂O[��(�}�cH0��i��\��+.
l�C@T�խ�is�52L�F2��$����I�Mg�kh����c��+�boN�p\��|�C�/�`h�{P� ؤ��-���G��y���^*�Do̖H��69�;��˓��屖A��������i�DS�QLޢ��?_m)MH1�}
hz��:�j��B�U�E@�Fy����8mx��z)}D[��\�m2���!!�Q���g� Rt�T֦����M�[����і[�+�
�̹N6�HL.J�%d>�?#.�U%��zbl=���WG��+e�P�&�a�����SJ���wxo�u!�qo4Cr8JJ��p�+	>H�'(ߥ�NN�ɓ�Kn����6+x9F���y~}�$�Gw�v84�Jܷ�ưq�����������d.;��ZD蔋�����DZ1������¸���-�\W�]���1�x=�^�VY��T�jI�C�Lڂ"@q�b�Jm�|�gt�=�.z�+�����\"١fu)�6f�_v�������j��嫂����x�����ȞX
��Ig�(5ឯ"��L���ߌ莑��J'����oeT߼���߆xÐ�)�!D�;�7|b�:�([�^Q�tVop�ቂ�"\�.�f�5�8����
F���4����<&r �R���i4�NyYG�Vc�ވL��d���/jL�ݭ~��n���ɬt878#���L��U;��c�4W�³����Q2��ӨD���瀅�;=P5,�hͨ9
=?<��]�ZJ �I,#�(�~ȴV�C����g��8D��am=۔�+U�Qp��Q��8��L��7s���:��I��vٳ4�e�J�+��.`����
�/����+ݟ���oL���b����.�@�[Jo*�2rM���][;[)�|��w&��+��ǔ&�w�(��s(A�A�d�K������; ����9�GA�#�&�ҹg��?<+QY��	JM�~��Q'�ˋp��=�l���$^/�Sqo���� ^
��4�k��m.@�Ei3�A��Z19,L˴��ZQ��v/Mw���ں�:�A��U0J�hSϏ�6��,�[��R��ĭ,���Ƒ�����JX*:�o���ʩ����<qћ�\NH�H�f��b��s
X����m�U�aDd����ft��3Dʪ�Zmz��$^T ҇�=C�t|1�(]���<\8��}��R���g���n�t7-�]iX��Q^�����R�)�h u�w�ү�|�ֺU���~��4����p%�"�yC�@R	�? dWN9��WVf���K�J��b7���D��6�D9E�k��P���v
n���]�
�qE��[r�M�
Q�g;�Z#�y�[C���8*rv��-\�Z�.Ħ������JĞ�R)�kG�
�$i��⑑)��)>��|fz��'FԑZ�ގ��P@51�c�����y��@Ӽa��x��$�*�PS�6m�:�g��T����V1nCɓ,�`ͪ|���|eS����^u�_��_�^�*n���� ����06��T���}C�Q���ϑ�!A�HыKq�� �7�ZS���ڡ⾀�Ɠ)5e	�(��ۈk�H1���d6et'b��$� ��6�^
8X���st����4N����!|v:m�<�fg��\X4^YcG���rG?�>2�B�"��5�����Qf�m�лhᥐ^:����yA.��\̹�P1:JW.�+�8�.t�ֶ��%���'W�ԧ��m�=���:og>]�p�z�2��.Q:~���y[������7�Y�Y7v/D_\�����lU�䰺q�w���ۦ��������q�" ��"�/i��Qz�)޷�-��q|�p�V�;��a�d+Ά��t��a^��Æ���">��4Em��k��;�� �ϦxB���Y""��    s�� X��8�7�Ū)��f,K5�;�����:�,��1����h|�a��W�ܖ���+a�����%&���Z��w#��������~_[zC%3���ϙjTO8�P! �p�S��!2�s��L�8��'��x���a��}�.�[ځ�V�r�z��o���u���d�q�b>!�D��ws��-2�o;aq�2b��}����j�yg���3��U��kAW��j�Jn����S��5�P������{S�RZ�������P_���0R�}ɩ3��S#�3��"U]���I�ѽg�B���;���,�LK�n�,�KC�;JB"�:Tm׌��l0�T��hZ=��wZ٤8����������FH�����C����,'`��y�Р�z�iD�S��V���5�*������֩jle�O� �JlT+�R�>5��E���-�x������ ����r�@G�)��1�eWOuɐm�L @x�����n4|y��Q�k)�g��Y׎��]���l��w�L�O�VM���)�A4��E��}P/���#�]����N5Eง!����lI����2��KJ;�.��l��$[��U*�Ǧ��9t�g�w3C 9`�h����ng��"u���?�2TgH�k&/�)a\_Ƀ{8�_þt)-ĬL�z^���X^��m��a^ৌ�Y�a/���j:]��)ҌFr?��\K=7�6��៓��G���)�9�0Gޭp���o�d�[k|t��
ɂ*Ϧ�5��x7�k>��J����O�ֺ����6q0��R�#�*�kY�!�T�!�I�tߠ���Dg�bJ��,|����9����L�~�ZK�ƨ�m�!��E? �bg����St���E
a�U�㐌���h�k����o]��.dSTC'�U�'V���r J�x)o��Xɦ����O>C� �*���۟�Y�`������&�K��X�ڣ���>�-�nM���m+Ͳt��P��ۯ��Ю��8���v'~�@��}}�\s�-�����P��M|��t�h����� �)�WR �OD$�GZ0Y���ӯٖwl�}��{��X	/у�p�Bk'+�PH�������2:$0q�9�T8#��e��ca��o��I���ʃ��kC�+o3���WI���u�D�Ѳ�9FᓱIc��t�0l��р-�f�6�����v�2�Thp�c��EW�0ٲ�2�fҞvvY^����Y~�l�Ʊ$��-�� �x�:1��Z+^�0���W��8}��a.���h*�����p��;Bs��%����i���<1�bK���Jc�B,�4�N{�L����x��X��&��Ң�l���e|�gR|�+�CՌ�������Qz�����NQ
o�$)��j���
�1A;�v��'g�� ����ߘ�B���;�NXN�{�5��dsJ'�빙>��{yJ����2��]��{6Rd�W�)����)/�;�O���~�>�]�~��9�R �J
E<��H��UKϖ���
�r����S;ƀ*��=�Y���p���ɓ� o��W9�9��$Ԟ9���M@��!���K"�e��s"���]��H��\�O��&a/�pU�<�5b�D�i��
@5�,����ңո�Ha���0?��t�SŒa�Z�$=Zc�qun= �2���|M��:�*d�%s#ھ�+�"�Hh���S�<ZX"q$�3��E� �h��R�Oq����E#A\
�ѻ��|��o���'�����+�@rNT��Bn��S��[���v��_�2ּqb�e���;1�e(:?�D cK���  �`�8 ᐷ/`i�~2nq�)�H��=������o7����Ҹ�������(B�Q7�~����m"��K�wW�m�X��H�W6�ꏠ��Q0����L�a7^r�PQBZW�>���C焹F�4�ب���:5���]]�i��n4�	 �{��=�署h#^�8�G"�$|�����;�h2+���=	���ͽ��s� ����58�
{+!�� �kKeF�0->�	��ޮ�����L���~Np����Z1'�1�Ss�ԕ:��r�қ pu��7�������ՐC��������q�#:��!�g�>�-�=�w*\��i��:�a�r�K�����A�L(�����EpY�C�'��:pE��2y��j(
�	^�r�]v?}<iQAmQ���R¡�������˗�eՑ�x�ܣE����ۼ��ǁ5u����e��bi<9�oJ���#���ԁ�Q�Q;��mE9�5�ƍ���:m���U3։d*��#��eq��{?��J;Ն0��2f�����rᇱ :�I�Lz�8E����1���v��vʩ�.��Y�����0��3�%�Rʗ�չ�M�>m��5�έ�� ���PL�'�BV�.躭��iń�6[:'(~���z�^�cFIMD��x�N5g��6��q���:,ZxƦQS�S�v�կ�@
 ���i�E4o���فi+����-��B�L�AB'ٿ�u�+�L�4,���X�U��B��y�X�4�����Q��b�33/z�NX���<X~���*��dq�>�5<UU��q=��Q�����&�k�����Ւ�ԲޫEP@2.v��r�����#
�gP�����Y N�X�f|󽐹%X0�j�p2���sa��u o14�H�3�Q�_l�K�P;%�G�q��}��E��]�B�aKu"��L���ΏZ��B�����(��$@|T����aMӑ_r1{���^�veK�(��������GS=Y��ee�k˲�rF��)��0�����F��㢏q��ȇ�P-��$AH&}��#�^�'}}��f���a�\��~�w� �Z�;X�3�?��8�+_R'�x]�����ߗyW�㲉1��2��E�7C��#�K;�����@��0-C����s����j�̲�o��T�ڤ[S-����mH��	�����B�x�U�>�E��&8Y�'��`¾g*v��]b�G���O
��R/f�����I����u���!��;����3F�p�����R4�����M?ёI�+7vi��I*Ub�d�K�u�ߧ���1���`O"�ZA}sC�����y�*&�_��m���f�Y��>J{�\[��K>^nK�:9����l��O�JNv)��������0�n�&e,�ֽ�ľ�<�~;�j�� �7��myO���7���[���t���w���C���d�0�5��:�Ď\�s���
��Sk&��Jۏ��������Զ��cE߯C|I��s��i��s�cd��p�c[R\]FW5�\�Ӝh���a��{`���|F��C2�F<=�@��O{SL�ϾU��~hL8�}z�/Or6_���DW`#,aħ�G���T����b� <5�����
��Т}U��ZYt-q:��3D�|��C�I.߿��X����&�Y>���N!�A�_�A3�k�m��"~^h���E5���R��[��Ϯ��Ӗ�= ����V�\<�v0�"o��L��ɂr��@N�q�ސ�[ոP���MD"k������׎]x�����������.V������5ۋ@톟�v���me�O�9���[���}��	��C����O���*�]����(Y���~�+���<�'��-�g�=՛��}m�D���NS��f��oҮ~{U3����~& U�s�ើK��z�A�P�/�}���J"."[��4����T��O��l�F#�R��&s-�(.p8�k�h��q�/�u��<��|J���R��j�q���iNN�q���� ���G���'�i����KU0��i�ӑ�+/܅�m.׭޸�������l�ϰ�����O`d�-E����0R��
NZ}���mpЁ�SMT�$n�L��7cۭ��z�����+�!��l˟�1kA��?�B u	k-g��T�˂ ��8�{��敧��*�s�yi���S�\�2-��    }�m��{��*��&��|�qRLG��2�nr� �˴^�!���3�8�Y-�����{!Քn�[`z��H�r�y�f�m ���\i:�h�Z��4�U}�f(��Z�VW4鸔���>�]�/�لL�y�����#��E�Nt��+�v�|=���x�ڙ�=���߿"�2���_��^�.iXF��/e�g(�iO���[�!ј���;�xiх2��j��2Pd(����M�զ�U���ᭃL�ك"	�a���_I�`���L�>.5��`
+�5[�6*߶�ȹ��m��lo}a��6+���=nľ���"�W��up�~Q���A��W��9#h/��{dE�zzwhr����|(\��T0ղ�뤷o�TD�����a,��ODAv[�HV�����j=c'�9.H�'���q��m�,�B�� �z M((ʣM���x=�V����2;��G�"�Y�l�+�i��$�)f�����Z�KK��OtAq��B�σR�����q�_.������Le�MԷz��\#^	%��x80>4���������;L�f�}�),����ޞYfC�Gɉ%��m�د�Ћ�j��w;�If;�ч�c�:�¾��|�z~M����s��!��dA<Ҟ��4}��v�|��ǧ��͉4/� �2h�Y�F*�}&L���ʭ���H9��mK�)z��rբ��4����@a!٧]&��O/��Æ��썡;nş��{cx8ƚ�GՂO�N���xb�b�:.N�X1b�n�|�C�h�ܑ���R�(D:�b:�_&�G\�L�h��8seR��t*J�-�>�@r�ȱ]�t �S����	͔�� �8���c�ߍ���1�Ț�"w�����v�Ϭ�v}6"����i�eZ�y�186wK��΍���#���;�l�/�m�uE�ǵ�a���L�����a�\�)qB&�� ���p�6,�z��Q'D`�?Jb>�{�(���Q:���wfʡj��%�i>[В��~g�����|�o;V����.JD$�y� ρj�U��.��#;�f�4���O���%x�g�p�"	����mҗ�.L��*���.��	����ܙU���i4��g����h��\
�)>�YH��h۰�<�E�]O�MR*T��.\'�"t]8r\9�B۟L�K��ӟ]��=x��7㐖i�>�E��YV�9Ҩ�1&[6"��L�AN*O�@f���B<�Ñ4}������y�[��(���U��|�#}�K�W��3�������ϻ�Oz�C�~����R�9U�����.R0w2p9~ܼHUvǍ���]#Ea
�r�N@�s�p�=6fG���A�dZ_���F J��H���2�-|UY0(��1��|���XH�x�7���9ڞ�2��Z)r˅��;q�\�HR!����O>����Vp|z�f�3�kM�8�~ @.���o$4.)��_ �/�%T׾�4aKw��F*�+�rϻ�k�_}d��qR�T����ߦ�7���&��{�Z�TK<f�/;�K�ܱGY�ǈh�U�P��4��[!;6�Ƣ��~��e��̤x�$n~)M�P��HD�:�~9/�V��v�%fC�yw��*m�Be�f�����(8�Zd�GG�r߷UX����X����q]�ĜL&*��xQ-`d�����A�'t�	��Ě���\L;�:��e�e�<�c.N�y
T��$O	�Ӎƿ�'�PH�����!��r�B�����N����eT�ѡ	خ��B�og��,θ��K�q"�P?��F����
���;U=n׿��mrgb5W�a	#[40�.�C�8�I(�t�Ӹ)�`(��궈N���ܴZ�L���M*�J�ͩ��/O��9ǷQ�3�l���l���z ����߿%S���-:b�EƖ�+���<�R�IL�?
҉t����UA����y*/@�o{gU����[�I��Fןx~���OA� ��Cku[�h5�1� nJd��lm�
�8 ��b�"[��3��ܦ�>j!�]��[�v�.�{�ػʍc�Ww&�)�EN�rE�wV7�^�Oy��^H����E���n,~[��-��~j��G6lq�3u\`WM_RO͌$d��7/��u��Q��z����m'�,^J�JH�}�4���7�;�y�e]U�D�7|���x�hH^�H��\��n1��.o7��Ǧ�E�I��M=�U�3�3;��+��?W�ŖVI�����yaiވ>;&g`�o�:" o{<5ϙ���q�?��.��uǦ�By���*�Zu��wU����w��Yp[ �tr�Y*0�7?�F��Vz��~��J�%8��W6|��_O֝�����I;�Y����Ш"n�N
��.�@͈���Må��8)V�_�|�����3���s
b���w��Y����,exYi��!����[�=ቜ�~h�9b/@����^G�w�䱻�p�P�DT|���~WТ�W�TwhC�N�{��+��z������ H�]��$G����3��v��3�T�'-�7���}��Aq �@�̩�&����Ґ��Vm��wL0,4<��n��g{��A6�:�ɢ��!�9.&��v=�_=���٬�Ǘ@�1�
��&FB+sAU�g��$!��:jD�n�'�5q��6�?� $a����s(�;����>�Vg�d��1
&�=zPnwr�bF+M>J��Q8���_\��/7&�U�c�[/єзd;�F<S�U��$��d6����+�=���;��j���j�c��x �W��p����@w�p+x�7a�w����9y~�|�|z�Ű�74�#��>Q��i�������;ٮ��o+$N�����GZHB_�e�͉{�{�/��fr&�˽�3
��@��J��!jM�w<HB��8K�{]b)�f�;T|��/j�͡�C߰f�$h�Z]p����2L�6���	:9�4����er�h�=���$z?�̊�����n�%7O�zVw�D�=l���'X���┽��z�9�۸����{%ȩ;ڮ����P(���b�0(:-�}F['�{\�I5M��]��黂t�I�G��_��4��߈���C�-E�:ٵ�}3c�kZ�w���I v������g��z���S$����*���W?[�z��{�}L:� A4�(�}�;���{�@�+��t Gȱ(��-���I�=�y!�v3%�P�F*�5/>K�K�eQ��e��4g��m�)�DB\��Mm�#�q��v)'M�*BS�򅢜��5�|V�#}�n�hf�!�󇮊?���I��T/��p&�@�&����3�����8~6N/L��K�i{�S/ݯ v
�R|S"�G^��ɟ��Ҧ@��G����zKT�i��f����q3,�➢�-53Ѳiò��uͿq[�!��S�����_��C�[(\�/.y��ǘF�g`��ov!Ry��ۻ1�|���%Wk���rB����A;����	휅Tv"�鵾�
$�gb��غ��*=�L�dE�����i�T��ȉ�bFyY��#����݋�y���a*~v�O��:��hI�e����
��Uc`���b��ӒuN��bO��YP~����g�*�xŎ����� ���4Z+��-6�B�ȚI�n�MQ������O%�m�i�"u�.!��c�4b��S:OD�.�ZRd�����J�0���H���S��}R?����~���u,̼ǜ�:pc�5�{z�(<?L[�u�c��˪��+�c�X什�I�����
���8S�
�:��}$��,��B�o��*�������|�,^�v�˫��ѿn��]H�-�I�,s�w�4$�����;��YR����~�[1��^�D&����"T�Z��K�x�*�����ߕd��.e�.��z��	�ء�g����O����A�c3Ά�H�.l ;�	����%�S5�Ȋ'�z%���Ջi��Ƹ
3�S�A�QZ�K-��"    �x\g�-�ǟV�LGQ��N�E�H�ё���?_���t$��T`�<��O-�h���U��R�+,�o{]e�ڞnt^��.&m 6r�F�N�w��cΏ��Zbs<���Wq������z�86��cc@�0>�������z��f+rc	X����og��X�-P<n��P��a�[7|�F�)��x�����b=]T�|:�^��C-��,WAD��p�'! }`T�n$u�X�q�j㋸/O;g^ʽ���[	�,P���簝*�M��Sp{�<s����[eE��X��qL.����M�]-�:g�6�ݽ���M��U����� �?��b��������R��!��Xu�%o�L��D�o��}�`\X(_��8�'
�s���F�<�Ή�ߓ���₝��+��D�
�Pс�}E�sf��� W��ٖf:{�턶0Q����E7�S�	,|�ca�����c�Z=���C�S�)�h�b��r�X>	I��]��j����jp�����"��U���pF3������a��G� T��s��mQ��g?�:�ڥ\g ��Xo��K!���aS?G�R�x��H;���^*Qs��k(ZVe3
� �S�L!���؉�/>�J_��V\~p��L�����Ū
��.�\{��Z����$L���@� ��fu;�zL�o85U$� ~e'�Ř�a�PY����	��q"�GcEЌP@�]����������Ȯ�>�h�;�������Bz�V�
���Kڸ]��4�h���:ֳ�ͪ삼��Mm�d��M�����i��)Û<�Ow���L�R�3iL`�.S�WX6� AxP:�7@��nYQ3�^���ꐹ�7��5��|�lP����������|��{W�e�Q3��,p�^Q�y՗s��j�;,S�J�ф�T��&%G��Er`/���|B��05��k߄1��?�~���[�
�#>9���_���v�䳙.+x��X�ə��.܏n��V�����|�O̲���>���\!�rt��Ř��ȫ�'��6
�XD�#��^�L�5������C��wQ�[$�9��%� ?� �!a�0MZ�f�~z{1��r���b,�2B�3��8a �7�
�x%?��KS�\Ĳ͟nS�q&�J-�g�ܕ��)�sj�LnÝ�sUQt���)>hotj�C�|J�(�عa�7�U��+.� �b�뇫�������G�X�:�i
�p�Q�gҁgZ����܌�[:8pC/7G��	Ml�m�<Q�"I"g���uͼ�i�����[u�L%�jo<���"Z97��p3��LՐd��N�b�l��~&v?f�|���(a�j��.ʪ���l=/��v���3+0��~n��]����8\��~�6��z��w�K�P�3tk����$�0�~7�㟴?p��d-�V9#<�7�2���؆���q��e%�̎�,�=�w�|��^��D=��4�����L�NLai�� 
����Uj�$�y��`ٚYj��`U��o%5c��.�Y$�R���=
�!G����:��d�Y�U�3�Kי���+!�qw0�8��Il(�۬�/
�겮�Y\&[�����&��Ѥ�dr�-�m�o�||	Ի��Տ�`|Ud2���~���3�N֘ @G�f���8X[�
�S�5Qw�f��w�<�L��*���@螸(�=6e��n�u
��S��Yð��0�����|��}1�����?.4�T�[>s?�V}mX�a �u�RNn�li�Sj�0u-�e9xY����Îtݼ��'�[_l����S����_@�8���b�*U���"� ?=� +?���g���d�:ر;Od#\�n��P���HX9�5�7��#Ƨ��#����.�M�� ��j{5H��H�D�d�W.��=�&$B\V��;K������VCb`!�.��	�Q�)?-&����qEW�~�2�5�}�
	+����J�y�K|CД�C�^�Ɵ~�O"eo�P�5�,a`|Xq
�7W�QXlv�ՙ{wL�c�i8P������}���b��'R�p��f���BPj�4������pH��A���J�GSL��]�(���"m8i��7�)��I�G+Y�Ac�dV�f�^��TxW\��Q��A#��ϟ����Nq�4T�L�zurv<���D�S�KTz�nx4*����+s�ZN����W!y��_�䠚-�b�wC�7��[��P�o����3�U�$��������.z|\�y�׵_X�����+WG���J(��������}
�Ӷ��O�hg�] ���I?U�.���G��OI)�$�FzB�q����mM�iO��QY�y��+l?�����6�@�x�	���q6�l��ȷ._��a�]�M���T���O��;4� ���Ӿ��u(���:ؼtzp�]4G�o6�j@Q���Z M3�� J��L��ɰ%����K�N��i�`0 s�:�'u�. /��Ǭ���m�K�[q7�h��B<� ��7V<	<t�)����^�pċ���E�_�:2'��%<��FTH[Ϊ�MG��!����1��� p��{�H{� ����߾,�rM�W�����(>N�'�H�7)� S�z5o����|���Bf�$��
������e����h6h]>$e1e�*���w��GN���Y7��%Cs�}a#��"���0����u��uXh���B,�_�Gʒ�(A����o�{��m*Z)������9?w/�$����6�h
�Cv���
A|x/��r�Z�S��|�?����>ƴ*4�;�@7uS3 �uo�i��?o�m��v8 B�,\^N�5�����i!U$a�;d_��63��'^�Al�нF�z1��z��5���s�y��av/xC=!Ы:R�T]V���Z�j�6�L�}
�y���K~t�~���7IV�����UD�D��銏V|���������_Sx�d�?k�(W�0>7[I�+ۺ�h��PXF��ir(���˜%�N���'�\��*ߚE=��n1�qU_܍���YL�͹�hh��L��.���=`��YsX�b{�#�1���?آ���Y�\������VN��RxS�����4�� ]�h�l3/\��
�����ky�:K,6ԥũ��i�{����w�c��;�k�,��zd|��8y~u'�\�4�ô\�=���כe���|W:��D���
����m()e���W�4,�=>r�d�;��8��*�4�}��,@-=�d��셝��t3[#�iw�x���ơ+��V,�Ќ~"=s{g�l!�J���sm���=���
C(u_���	��ٓ;�|��'���/�Aa�o�;Vq=a0�ŭ搯���:�P��G���`fMs�kx�/���"P�J1+V8�7��5 F<i!�Ҽ���%F{El�f��%	��#��Z�M#tއF<-����Қ)P�(=���Ru�y���ċ�9�R�G����^	�E���.���͏ aӘ
eh2m�!]��l����n��$�@������.��G $Ř������`1N��'��.�ΐ)�����wz��e^$��u��.���L4��	�o.J�����fEu�-}��c�j�}�AK0bi���v{����~�u���Qbc�$��O&�@[rx����M�q3%�T8ڗ3�_>+�%�s��:13�$���ߖ� #�r~*)�4	���q���I�L&c@ǯi�^�G���M���Kr,��:s�3�'<�"�v"Q�8�3���B���_���
8Jh�W���j�;���n9�q5�~L>U^g[7�Ŷ�/�S�@CT�26�N��l�a����$$9J�[� ����N��il*o� ��uC��|M�fM��dj�"�.��o��q�P���N�ק��p3\��x�WYM5$ �P�����5���������OCFM>��*@B&��>�XTX�[[��&uAk�I�[�,`}���
Mi}����<͸�۰Ѳ�/��x�yy?�ᓄ+�"*��k&x��    *B��0���*��YｹWv�g�{&t>����ӆ�X��S�B켪�����0���8����W?3���k�}�d��6��j�>��-�g�p�cw��L�*������$V��T�,[	����s;�n��$��zɜ���y�	Ͷ��f��|�c�_�.����g���h�ո>&գ����NcV������n*�])��Q&r�@���W���6#x��ZW��(Q�g���eY_��J�!���*I�~��%v�c��}d<%<��
Xg��+7�c��
>��U�w8w?�1���>��6�xZ�<�d��8Kq�	O~�����[�ݨ��!s(*uD�o��������G��:���/�<��}V���,�>p�߷j5�[���D�o����l����W���x���sro$�cU�5��rĝ�iK͍�٭��I�wb��[82�6�M��\U{|�-wZ1r����X�ATI�k��g0�7q�8�z�o���mI<ۏ�|�e�>�y��	�t�ֽy�P��~pY���x�,�W�__ojU�ߦ]`�2xo�I�y�泈��gm_��w~Ŭ6�R���|m��>��(��� *�i��W��]*�z�X�Ԗ��/E��
1#8�q�y6ωIx^r�^.*��i�}](_.���9�0
ê_A�����63��E�	�/�U����EnbQњ��Z����>�@G*�w5��4O�6?����ҽ��^K��y�#�?�/� V��k�@T+���U?w[�;��S*�Aa��;c��L��"�0.԰.lM}�E�¡��z������֞���s�J'�Y���k����<#�"?���c�����N�~����e8���;vY�5-2�����*W(��R��� �ބ?�V�I�����.qn�#�,V���ԻR�Qs~�#M��ƴ3���_�D�	3S��ܬ2��H�܋g���{+�Ef^��EJ??��s&�9�9�a�p���a�r�����@���]�Q�����E���ۀ`��q�|��W�o� �F�E�FC'y&��^�M1��$^K�'s_����+@���J㥢�ɂ%���6�:�T���t�&�~ei^���B�(�j���t��Q��F!��h����8��_7�BzR�TL5�
��X�2yn�h~<���)��_��)E�)��,sO��}3#M��򹋓 O��Л?���Վ�f���eqZ���`NmTW�:g��Y/M��!oP��OG�y��DBw��r�̑��(��]��[�����սl�u��j k1XHǕH�Ʌ�Y�sl~nc��]_/�7B�E�Ҟʁ{�LGX�JƤ��f�:�7���̮iH�4�+�\�������$�����$�(����>��(��Ȕ2w��_&c~�÷
Xw���552痭&����W�A�O`/}]g�n��Y��c�ӎ>�F�*���ر)x�'�	̂!�ȭb��mG��I7�����8w:\��B3�/�׫Z���g+�'W[�`OZ�1)��HN�e^��OS.Q�&���1�͟�(����{����h�.,L�����gVa�������`��9�������HU��>c�������d�5��mS 4�
���A�i�l�#xbڑ� [�Pn7��Ua���|�PgRN��|���$�*���0���樭ı���Y�y,�<tV��XX� � ��G��ڗ ���ɶǐR���t�8\s���Ѕqu婝�׫Ls�l5�g!����%օ��ݎ�DT��Md�#B�~��1�<Kn��{P�}(A�A��ޏ��Y��$B���g�W!H�gH~�N�b}���=1�'��r
d$�������mS-���w�����F��s�U��(#]��c\>�����E�O�˥��[�Ԏ�gq��b�B��"=/k|����c�����ʺrE��4Q�~�£:N�~�+�Ȑ�4�s�rV��)���_�������e��ej9�E��B�`�8�C�p��D�N�f���AqT	�D�h�X>0$8��C4EW  �l������1�͌��TF�B�x)Ӹ�K�+��en�}���@�l9T��7#�;E�4(���O0;�ѝL�?<�h��wJ�6�es��|�29✯��Ѱ�hۺ�	e��1�2�h�<��J[|9.+�Q�l�<#��i�|WCվ5���KBJ�h%�7n��@l��z�4l�_~�L��[�ɕu{N�0���	��G^\�"��$�h"�B�4�0���"Exj������t��X�5��*J����o����P�� �q	d�r���C�-/j*� �9���;��T���@��1{��)xB�13A��k�׈	^��g@��k#X�a�m �<�c��GT���òL�
U�l-xb�e�ޡ��#XT [�H~i��1?����k�:k�[�+_�ο��ǵ[/�MW�D>J��Ap%w�p-E�P�zn���e����:&
9N�״IL�Pek)��\� �x?E:��`nJ�}؊���)U�s��* ��Îx×���2�]�����#9��S���C�5Gx�i=*v�K�c�V	�'}��k}m�~_���tb���H��>CB�L0բڧ>+>�K����sl\�C���mQ�ƺ�����A�\��m.�#�EW�z�
�r��W��͟�mb���un�"x���V��Ri����hH� ,6���Ǖzux���Y��._Eݕ~��GX���U&ж-o~� �=�]��9� ��v��H�Q��΂�^A�B�y�d�Au�@i�ۄ*f��ġ57¥4{�T�\'�lr'�p��)�,�&�=c"ѧ/��-�m}�e,JDMU���Ͷ4���zW�L�bg�TP���&jU��y4Ջ�8�P�iPΚ�tx�%�4�*�@���K����� ����h�����7��%<�g���EFLxU0�9YSS:��FAȃ��\���5���8�B��xZ9,).y���b5&�'�l����x�Y��������!ʇ��9���z�����N�@��8ց$<�x����I.א{;�͢�r��Χ��`�
�����8�ݲ	�@���.�g��5��ig�D��}���+��w�Y� B��k�rE|R��ap�V��z���[ю��Wۖ��VZP`�,�����9V�z �6�NaV\��,������V$|ܲ�(����Q�@8��ڊvl�u�Ǭ`�g"#��+#t;�D �\��kx����IoӬ^�ј�W���[�����?����F}8�9N�2"�x<x1�#��>��aS��am��u�,s��M�c�`$ gҏcl�/�C��o�ymK�|9^}��|�4&��l��ٝ�:����3�-�)�a/O|'Bt�>7�q�\�:����F�I��I��8Kʺ�L�I?�xځ��~�Ɖ>�K�`��bp@�O�=5�k�[5�09[��:AH������=���W\pvMacO`���v�
k!�cs�ݏ���	������<��(`
6~G�E�/��v�P�F���Ѝg30����	s.R�
��%�s�ɬP+��{'��0��r�V���H��[�/��Ǟ~b
��I��LW�䠥�Ǐ�/ߚ�Օ� �"	�,��m�bB���H�u�q���_�ы|WT��~z�N}|�	��/(�8=�i�CKl�����%��D|fS�K�]���b�Gk^|���a�ۘ6Z�݁��
+�D�e;���ds��'D��4�C��l��Ђ�uW�2��$�:H���V���@q"Z>m�+^/��� �-���N�0H}��$4ԆK���vkAML/(�z��� ��c �r0���V��Lǁ7��׸r峹�\b����w �z� �:Z���gQ�mn����nyO`<P+�U"���F��N����-�Ke��+
�^���8�>�A_`���:d>m��|iݜ�<��?p7�ǲ�Ѷ�.`#��xȝ�F�Ve!���s���.J�h��-�R��6�J��    8m�i`8@6H���P�D�{U6�0AV҅�_}R�Yte�0�0,�N������?�;̗��ad��Zd�4iv��;B��vh�s���_�s�ҫ&n��ʩ�I��/���6)�j��#B�߰k���y'w�����(s��ݢ�DG/�II�n��=�j#�&B����N�;��o���tO�%��Tz��MD5�<���Qcߏ����E����u;F��"�;�X4����z�a+X ���Gl��\��[�;��V�<�Y�*X��e`C`i���V4�R=c-��uP�{�<�c#�&��s�-��k�	?�Q9Q�����k�[ʢe��\'��Y����}��i;`/0eR�d��`� ����Ӷ�Faep�����`�R����%�׏���׀wE�?t�2\��5�7���O>��a cQ��dt�(9�p!��}	}¸/�����7�C�1�E�I��_��&v�4W�MR4��7mM�gQ�(�g� ��Sp��wt��7�/�K��Noz��>ɬ,Ub�Jm�aT�������pK�t��1e@I�(��Yh��U�2��$�]+ss 5ؐ�s��4W����4��i(3�2�����|&�z��.N�qΆy[G],�,Y��µH�^�<��x��,վ��,uX��Y���Ԅ3~)��(��d��w���mN������/,K`�Qy� q�m��!
�Uo� �Q[�Pf�`lʥ
�(��81��<�	K�����)^��T�ЯX�7���G#IgǼ��;Q��!Ѣ����	Ľ��0K�8����y��s�d����
�s�����p]f/��6e0��EY�4�?D�=w��!9?D�˵g���iV����?fH���-  �������Ķ�"$Q�&w9r��!E�Lէ��_�rV�<�\�P�H����v���,<LV�1�t��S�`SHz����g��0wSB|��?G�i���Ou�	����s������L�22�>5( # ��%F��<���!c]���тݺ"��y���^1��2Cm&[����`��"��=�j!���q��*B��s��;��;�!�p�\B=�ǲtw��L�@���`7$x[.�tN|̸%��s�z�Tg0f6q ��ۨ�w��A�[�*��I���`�H�@l��n#N��Q�s�HSe�o�'{����d���A͕����.�v~�[}�-eː~��-�&A��4��qн����+N���c�=��;\)!dd{<P0L�lm�/� n���h)�?e��z��$q%��hW�7��Ze�&LK%���MW6�Q��ǖ^$٘&�¶'�U"��-�Am=�4�H���3��rt]i[��l�v�o�kN>}��/�٠-��ÿNN7|>�	�*K6a�����/���;���0�!m~��;
b��7RN4ֽ�'��(�I~�Y!L�x3���3ҟW���4�Zb�t��?�~��|�_;%*s�<K��hW��g����Q�5��q�:��*$��b����g�=�4�2yt�
1�\I�'����C�j�7p���^����P�h�K�.Oڇ�7�P�Ӹ�`����޼7�rL����w�i����_��|E8��,+�J�)��6�g~2x
�>����o�~�/�㈜�IJ�4�<�CI	�|+���x1���Lo=�F^]���"�]�i�nL?w��?_�	���tw2�"��<,����� �V�U�{�f_ū��[�.�ӭm�[U��f������K���⍞��T;�t�/4�����;*V5#�4�H�U���m@�@�9�N��!�n�'�(+��۝��O��0U��ʋI��a�X)g&7���/Ņ����`���n����&�(2�;�.�x����:±���L�b"�~�Q8�2�&������f,���4�u�ƞ���޺5m�_%8�u�@3�`	dP~}�4""�WR�n]�2LL�X�\U��'�is�月I"�#�\K3Q���$���^%, �@�"~W��Ɔ����o�k@{4���S��r�e�>����nF�3J���PZ�}������}ip�)�j����$�"�$�=p�� A����ʡ���W�V�����0�_��G�,;�u��yV�B	� U ���lY�.�wR�j���|VsQ��Μ�|�דP@�1��-����5coo	ƒ	G7��WM�у��Ĳ� 6��{>Gt��[���h���ռ�����N�4GCy�U���$�H?��b6B'[���Z�W1CKm��2�`��k�N����a��w������[�w�4c`�:�Hmq~hr+��䝢��w�����܆e9�b{��R#��>S�&�1��)U��IU��`���[����L����ܱ��o��,���]��A�� п�`�A����O�\� �����c{ȿ�pGA��E�U͵s^�^s-FmKi@�٣�;+�}��~H�*�;������^��]�}����� �/�X��l]�Rm�W~���{�pcP��c"���8HӉ��`f��l�E���izp�y��# �%�M�`���l��xB��;��6��=�q�
�x�,S�"fb���L�0��l��w�_n�b\����J�un���&�$'������&Gd-�i[�~��Ͳ��[O2PVW
��c�^���[q|u���$�5��:�܅���ʬ�Æc�M��2��+lҲNE*�����w!kN��O��9�/K/ty/��o�3	
�Ѐ~ڸ��o:gNn*cH����ס.�lR�3�gH��Ir�K�O����3:u��ɨ���Ȣ��w��k<�ӟ`�]� ��݁G�~e��L?�E��;N͖�5��Z��p��ڬ�c�S��7��t/L��(�������H����"O�+q�'����I�.�ų�sq��xZ;�E+�x<
cV�:Vp�d�$����w	�̛@G�1U�]�lD���d�!��֘��cw��M��*!:8_Ҕ�!�6k���6u�`"�&n���[ƿ�z;��|��c"�:J�f@?@*Ja��| �� �����-�q~m��m�r:Kux��-i��sS&��Qʷ�}�b�!�з�W%aXN�|��c �pC>%�T�P���n���מ����_�����ƣĐT�� ����/�<=l�����,�ĸxP}�w���(�ǎ��OZK��_����sw�Ϗ�5�,��j��g �#��澻=�
UԮ��Xd̎V$��w��b�}�2��K�F�;����ܔ"�d��@��|o�z�f���q���p�u���B��_�!�����'�'���Ơ�������v0�3����W1&J��s��)���_�x�HI�4#[��pfS�$L3�>K9��,�9����=���Λ����v�����༣Z���[?��ے>�x��v۾l+w��I�V�T�| ���ձ��=~�"�UX�$��$�K)�<�Xg��;m@�5z��5h�
h��1�d~^����[
42�#`6
hX�x_�GR��C��g�T�����m�Y��� k1�}����E��g��b��1ʉ�p.iÁc�뿵�K����D93��<|��3dت/*���657��}D��\��A^�I-%��H���	�{�%/�4 �d_����O��r͞���Hy�ѝQ�̸���*$G��J/i��K�F���>8�ۗM�A��o$������;�mM���0���6��%X3�!�b#e tB��W�Ӫ�h�ZԹ$4� �q
 �	�q\��7�@��2����� �{®�#�[[�Y��'Q�v:D	�8Վ�R����q�>.�DO8��]�k
��[z���G&�r�>���b�9�aP�~��}n�P�xO
�k��Q� ����X�:%
�����J�ܝ���'TH�1�eR���f�Fa㸯-
������B�S �M��E4;���o8�2^�BO�Co;��|�5u���n�
u�N�V�J���!�K/`��Kj��+����Y/q�ىQoLг�    �b��9�Z��.���t��s�~��1w3I��B���+S����K<����!�J�Y�+�`HO���g�A)�@	����U?�X7NO�W��,�!r!����sa��M����J1�����e���%_E�;,�$@�o`7��6�a!���N��Meo����3� �����\LL��.��a�rb�\�%�И�F:1�9�\�[�~3Ok�I��l�0��i*�1ɚ�Єخ.-u�+y�6Fg&�]r��ͼ�i�n�uT��sI��_��(
-V�ǪD���w�����ލ����� 4eK����y���z�ra��Oqc����˵/�F"R}7	���T�%�C'��}QlW��,Fʂ_�}\��؟�BTu��(w��?�o_
`��w��": �D��� �a��������B�?�?��Q����2�-����߻��Æ����_ws�ݍ��#`�b�p�P�a�U��kep�</Xh4/S?Ί�-GH#�&$c��D���a-�!̀�5�,�W�G��'��IA��ޤe=���Wq�;������s]G
�}x�kQO{���C����g����+�	xdm[����4���ܷ��.A��zn�?��yl�W����,xP�;�D��YQ�ި
Ay��R<q�63nP/|�O�C�k�yqN�= ��ɯ�_�%����̽�:��.���+���RV+7��.��3�ْ!{V�<nN�ɱ�j"��U���y_�w�Z��t,���4�쇗=�*}JZ8=&)n4��}�f�Z�C����+�a�.�'fE�����FH'B��sa��F�M+��~�]rc��4̐����R�á��-��D�Ⱦr�m"�\�i�R)�}J�6פ�]X���7ҬmV+��C�Հl>��ld�ܕH<c��20�E� ��s�W��h�loP�� �T�%��0��V�"-���Q��}��=ԛ�z4e���%�0F�H��=��eF�_4�J�~����ĭ',(��n�����P�M@)��	���o��c��p�Lj��!��_���X-�cpA��F�A�2df�1@����_�憶}����P,�#�98�O��	!�	tqۊu���>M�	�o����n�kב�7�*Em�T��+1a��:Au����e�;'+6���X�8�Bw/��*��R2���#�]k��(0���T%ڹ�3[d{U��?�m�$|R��=�2���%���<�3[�U_%��Vs�|��f�Wf՘n2�*|�c������}$݊�B4��6��9��2�썔��2�w��
���*��ϋ�qA��F�a���@�p�,�����&���\wz�fn��lR�E�D��ݢ�O�e��m'T�>�Z�����(/�(d��l2���Ք2���-v�K��
:��"� Î4E_�pB�E�k���رu�@�cV�_x����K���]ra���#�7=XCE6W����^#@曒\��� �<b@?F���,^��Zc.q��nMf���m�JL�&�=��Ƀل��U2���|S�m�Q�n-e�E,��O^l��%�|O����r�r����c�g �R�ȶ���_�3���<+�7/7��Wҍi���E����W(�e&�*u��䟥k��M��	Sq�7���;?�^�4��U��U� �
��X�+����>i*�߹(�WZ������g�S�q�ڂ����ν=��e�!נ �$��E9��HdNę~!ƠI� ��S�X�CT��%.�J�%)0p��r��\	R6,+)���S&�� d��e�f��pЂ��q�Z��eU�	�ܙ�w�t�iv�5dPRa;��Q���ќQ0q�����W	��;�jH��L�w�bd���M�]�P�]��9$���]�hT�{A��N� Y����aؒ�T���|�udo����>_8~�m�lkV! �F=���~py_F�A�@G�y]�Y|��_��h�"*�.��_��i�9�݂>C!1���X�W�z��I�u@4�Q�2�Ȇ.�"�.�{X�����1ސ���q���2�Y4�b�0�h
m��|׭ώ6N�kZ�Ų�EІ��z�]{ga�i���V���L�8v<H�\{0� �'-G�=rY��Z#�#���	x(o�W���s>��9��Pf���[2�ꦬ��fC�)*����4ˎ���pǑX����li�ݛ��D}��ؔ�Nm9(Wd�v������VPZ�!��w)3 ������_�f�«4������̠�_C�M���"
�j���$)�SV�e���g[���㧀����Mv&�e���O)��4��#�X�	nk��0/�/m���Q{�ډ�"5�5���]���Ƽ'x�A��o>��ɉ*�����TN��zB���/�IR�4�)X�n���8\���+�%!o&�D@�&�\�!���Ǭ��t����ti���wl��\�%�3�J�Az/<���U�G�Y�"�@�R,o��.�����d�0����D͊\�*v�B��-!�3��fU�ν�0��%&��҅U{4y䆌Y�'����5ͽ�{贖n�u��>2����ܜ����<�Ǆ� @ g[4�A�������7�����*Y��.;`�C�q�G!�_o�+_g�� �w�e������1(�`�|\��&:d6&[�i�^g��N�j�rW����`Wr���H֟M�-�碏QQ@+����=F���ٕ�6g���:�?՛�T�g�37�Ӗ�{�Q_��cNI���.�������릛�� �NF�lv�5}�}�p�|W�x�5��%�O$kC��Y���y$�����<�$9��$���Bf�z�w\��p��p���o�����˟�%$�=j�h@Q�
�� U�A4�_({r��S���z��G�����Q��n,x���q�1�A��-�u4�Ǚ��g&k�������m,K���+4����M\�r ����(���$J��U$�PO�t.]�՝S�t=�3U/�0 ҙ�^"�/P���%s�
;���`�p�e�.g��9߹$ɜ��M�ӌVj���]�J�O��F9���4�-&�^�)�ڠ�'��e�c��h9��27l���N���֪�NƮ[�#!�t���Ύf�MC�+L�iM
'A趛�0d�6��I~ݯɳ���hԪ֙Ȭ����aNm��]��E�.P��/H�E�)���&�Z��:�QJz
UL]��ݧ���O��b�)���^}��hg5wފ�P��x�����l��e%-7ܤ�Ҡ�Ɠ��ox]Å��,-��-{K{X��'��β�`mb6��b���U��	-ʢ�&+�FQ&�q���ٔ�Mę��ܖ�+W�δ�[K����,�i֮�FG`�U��mj��;SnG��s���"���*"_5	����a˃^����[�y�0���M7_5�L��*G-��l'�=[Gu�ԴF��$�1�Z�2��}c.�LCw'6�U�[�xҢv=c��f�)srX��37�ᮚZJl�)I�Y��M�=�
2�t�jTkͦ����[#���?_I��ζ�d�M}�q$3�H��"(�]�b�h��UJ���.Z�Qk;�f!I{m=��"��-�D��֐���Y�!�MV#s����ʢD��R�� I�6�e��UX{���N��~ʋ�O��+XkB�IC嬊��Y������p��#J�)~��⒢�AU�0��:*��p��U}@����Zר ԃe0��^��b���H�����n^��@ӕ� �\x��7̨��A�+~�É��E��seD*���C�y3��C���ҌX�v�\�w�W�r�5]u
FKdvcUv�Jw�j
sP�����:-�(ϱ~�Y����ʒr��x$?ڬ���TWC�墳�?���^����T�zS[Վԏ6˙rR�W��ZL�RA��xU6�U�O;�zXG�H1:C!T�����,Ֆ�+�(�F�4�Q��)-vF��֬�'�!=��S:Y��d4��R�\/'�|��A��8e��TeShހg+%fo    <f[�چ	�P���:��kk��-�Im�	��:�)|�]T%���[r�ٚV���:�*k�2��:<`��Yt:>`���/���P��@�-#	�l��o��_�����S�:7���a�X��H&@m��}��q,�kGI\�f�<,i؍�D_:�bB;V3Y���Y�,ܺ���rQ"6Zt������l�zZ�D/���;��ڀeẐi��z�o�*�j�^�ES%��M�3��f���_dPk�K{��Z��J�,�z\��x�/U�� �Ȩo��H��q+*&3���u�����	�������vw��Υ1YIR����rY*ѕt�*�R�F���F�t��g;�Z��uB���(�vEՓ�aбxI�m��&ߜ�і�����M����q��v5�؍�B���u�UvU�%���y����Ǝ��'�cfڒ�J)�BP�5~��`U�D�ޮ��x�Z��"!��l�i˼���Y#�Kx���F=��S�X5���1�,K]�ӎ�r{ք��M�Z+���AD׋N�����|Mݖm�X�Iҟ�':[��IM舂�w,)휁?��EY����.�r(��e�Z���%�<�O�A/�]���yco��W�	��X`F���_��͸Yf����n���T_[�f�6Lz\�n��U	��"b�,�J�.���bX�E���������slF5Ra8�'q��fk&KC���%'�ee]�Ԩ�*%����¦�˺#-�T8/�uLi|�]�h�w1�?���2�z��@T�W�Zn���x����b��/��H�k��föۺ�T
|��&ǀ�K�ۢ��H{�R�r��7D3�͵�첺+6M�6�i`D9ˑ�*�i�.�{�G,�YeF��ak��#hFz�(�Y���K+Ov9^oRm��;S��K�\/�R�����Ӷ+�-z�<>Ór�9u}i">Z�J���n;�U ��4��"e��SW���v�zil���zI�4�#�����/���tx��NNR5B.��H�R�h��ph� Ĥ��<�m��g��bی6Ҋd(cRƋ�W��fM�c$�%K�LJ��N�|꯰�l�L�ݲ�;�9��8�jR�]�'�n{��m'�u�Pt�:��yq:��zEMw�I�mӶ3Xţ��/���[m�Kqټ�Z���UV�uw*��-�%'�6�Z�dk9U�(�%s�VLN����.����w�b��k5�Z�H.�
�T��,���ɢ�j�d��լ8$D�Ջ�i[3�E%����]���)�K87�q��Eb�!��D��D���]�;�a{=��Z�z��7]����"iK]2x���~�`h=�X͍*�nb�j`�zY���bGI{�֡f��Q�F�*�v�u������{a��&���M�Қ�f�j�W���K\��f��`Ιt+0��h���ޔ �Z
�� ���X���e_�a��i9�C�8���&�h�ei2�"�g�N�ɻcVU)�0�v��^��L���)�gÅG�YG*0Ei�o�[`�����21��~Cb\�N���W����J�3��#�[e��O�ao��5�
�ci3�h|*jEq���
�J�N,7�2Q�i�| �]4�АԐ#2^w�^���c9�����J%>6gY�Z�U���mOX�ac��l�qyק����nm��6����J\�#ln��B��iZ��TM�l��F��ޕ�	��9�Mq�8�d����+��{�����.�h�z�6_rĂ�:en��iW���ew;����W�����o���Ͱ�DbG5��(��<wé5���[\�R���Q.PI�9��^m�*~���I_Ƌ��Z�xU��zPT�P�1Yc�H�f�ؤ��q�0	���)���fj�EY�7��N��V���4|A�/p?�X��)�%A�TT��8�bu�
���"h_Q;�w�*<c��΂��T �o4FY��k�1�X�����i�Le���t��N�ײ��W�Wh�ٺ�-�xd��4��n���5G��3#K�t��72����M7S��c�`L?��r:Ʒ��-�VQX���X+�E��n06!��p�1��[��͵�&Sܜ���&�P�.���X3
KNm72�L�܈�>1,?1fsf$k�h}�n�J��Fq$u�t�,t�d��׭��^bu�ݵ�@��;��˱G��2��v����6����zj;�i��%��!.���Ck�,�ɬ��ZeA��f��yV��S�P=��OV��[�j�>��Tg
��@��]�%J��ѧ�f+��2�mؕY`�b�̯{�[��|kη$i��7��*�y����M���|<-ı6��m���l�����{�qX�c�� 6��k�^��B�K��~W��#��v�[w+<o�|��w<ZdO�²V��R?����Hi]g �z�؊�>�5��@�zb�Դ��9�ҳ3\t2m�c������כb:�{���7|ڵP�j���R�e�U+;��<�W�̴Y(%��#YWuͨ�=
��p�vKݞS[�S���Z��a���{�֛�#e:�ՀXS�TR��D���f@�3�<Q��1p6��D6�$�ڲ��>����ic'��e>r��١�n)˦8�82��m��5��*V�ѰJ|�_z�A�9���μ_�E�s�~��^�nlRK��J�ۈ�������4�[���q�D�`M�k�]p����%XqX�O&���n�]WU�Y��t�X�&]{NV��/��ňY��l{)[�7唏�r(o��V���K�q8�,n���B3ƽ<���,s������U�m�D���^���&����ᠼ��n��I�
�$���^*/�;;���eg��דeWLf�p��-P7��#���%.�u����5\�w�m����
�n��8�m�0*�{�y+F�ۈ��K������Ʀ�6�]o��B��M��ǌ�w8	x�h��s=�v:���E7���n���3��p����|��y�:%��gul�)�Jԍ�Җ��:(�	.ˋ��T���`��<_�*1�hݞ��Ҡ���a.NRw�����L�9�#�����Q2z<��S䁻sodM�������q��f��ϟ�_�������~q�����/�o���_�/��o�Wן��O��ޟ������9��������������]���%~�7�_�%.����W��?��/����߁۟�ߣ�.�꿄;����os�'w᭛�_���$��(Ilv$}��
����n��/��7�����w���+0����.�j9��;8���y�d�(w�U&������wPS������.\ Ł�`�`���?�}rǾ@���ڗ��_!e^ߓ(�Wn�+�anb��x�|�Ws��J~�6�;�3�cru��zn\w��$��́o�?�_A��-�\�_��? 1^A�宿A>y����Ty�v��;�����wP��B���2H8���%����/��~��X
�~���׏�� aP��!p��^����B+�A�^z�f_B,�����0�] ˢ}�����o�u/ ��6�҉aN<�����Q;�Ώ:���z>	������J�j����o!�_A��	'6۟��#w���FȮ@��H��W��&E�q��w 2�CS@ �%@��_ e�f�\�x|�s�w0,��H���� ���gH�Kd1d��p
���!�Q�@}������Y	�p\hx0f������I�1^xLr9�~J2OI�p�yL29�zJ�Rԃ_K7�<������inyH������ ������_]��2я�<^�FЀ�]��W�ݸY���gY΀ �����ɇ\�A/K~WTߣ�/��$	�6�]�y�0\5v�����9�@�%0�o�6�䞍�ÅA^y	d�y���	��2P�ǻ���@�eq�2if�!�+���C���	�rt$�
������Y�^f��d.0"���t��I4�a��w2��^XLz?R*ޠ<���ME`~����P�L�o ,����)j�|(R��@�8��޺�#�� ��<�����0U���->��~	��s��lq�>��9
^߫,10�;B	����(��v'5��k�O�V�g��h���#   ��$YE��IL=IG�9�>�	��h2�1Ec<����q�������@7\@��� p�����_$'�E�@. ������*�!o����o�4�R�X���.{u(�e����T��3��5�
�Y�d2��'��s�]@`�E^ߝ��#f(�E�+��� ����B�߽y��ArE�,��������og���N�:�����g�Ck�<�%���ذ�߲0��!L�o`F�0}��qJ���s��r�}��������Q�[�aq��H���n��;d��L�,����<��L�;d$�S�9NSx2��ir(���A|	U�����KF�nK�{X�v���a�#����<)�(�\~�>^���S�p~�W9���IA�WJɧ��fOJ)��f�R��`�/�9������Sr��gaw�~�J�	�>E�B�O� �
��'��~����w��`C0����w���{�A���St��}�߬�'41��w��]h�F�'����ٿ+�%}�T@=���p�gw^������.����NfzX�x^��n ��+��~�&�BfW~�3��E�x���ߎݑ�<�	��v����O�8�07r�����;����iU�?	�>��dx([�c��M��ň��M�+P|fR�^�2��f�l:"�,Bؐb`��>�V���[����܍�ϡY�D���D����>h�е�9�}p�Mx��O(�^d%�.ݿ[�/��OG}�p"������K��G qz0X�� �2�~�b��#����"z���uۣ����{5��u)��kTZP�9�
X��{��b"߼���6�������Q�)w0y�d;�R������������������⿾[����S���$�hO�A���#��&`��R���II= �v���۬%Dd�"�KD�.#�8�GDCE�X9���γl����BD|���������� ��*�M+�$9���2P�r���"��/�+ݒtؔ �wu/�d�=.xrC~w�͑+����M:���t��=���ܡzt�uJ-��?�D�2�5�0(�ӓm�����[��{՛^����鐐$�"w4;x	Mvp;�O�
������#�7A�y�����
!2�0���W/P]{���2��;D�_�>�:���Cm��B�u������h�.��_e[�����S?��/Q��Y5S��3�����4���U��!^Pd�|X�)3�9��4���ܡ�}z�x�	=;t���][�汑�b�x�eF8��YS�����7��*�{W���D�㏇S1�z"xqǹ�n�{�'��g��o3�@|���	`;�t�r�١�ɪ$BÍ^7�0c ���X�O@�q�2�6�2f��ű|e��D'�݄����R�P�y������ᣏ>j�pxИu��������>8��}�1��o��O�"��3���&����H�w0����<�����1�}u�2q��0���W�>$����;#!N�\�������8���G���ğ�	p�"N�D���I[�dAA���SfSҴ�g��n��j��A�A��P�s���ȯ��K({�`�7�AЋc9�Z_D� b��{��*c2o�i���g��Nf�t�]F#w���f��������������p�����l��]� E:C�����
س#�x��uy�Q>��Nhs�~�,ˮwڀ���\���_��\e���P�gw�!r�y������_�sK ��ak%�n���1)����6�x.Q9�����������ijV���� ��̅j��[���QE�;͂dGp��.��9&33�
Td����̡���%�>���w���!��H��=G�^@E���٣��4�9P����� �;�:d��Mݿ�NCߢg?��M�����a>b�,���;:y�F���1���E���b:w8��{����.*���[Hn8tvZy|G�����Gu�@b��N�P�͸��IͱqFGr��	�#Q|Jr�v7i���/~�����      �      x������ � �      �      x������ � �      �   1   x�3�t,(����OI�)��	-N-�4�2�"j�U���)VQ3�=... h�$      �   u   x�+(�/�/�,H�K)pH�M���K���T1�T14P	3��M-J�*
��r��4�7�3	w�(r	����70KO)u*�H������6��4202�50�50U04�26�24����� ��6      �      x������ � �      �      x������ � �      �   �  x����N�@���S�Rhb/�5Lԛ�ɛQ��Tƣ�����Zky��7�?[H���vw��7�Y���]���$�sYӅ$�6))O��-�T��Τ�t�s�q�cԙ��x	O��a�<�	����՜#{τ��¨f"2a��V{��7-�?p� ��$�EPR�8Ҝ3e�$,Oa+Ұ�#����;ǋ��Л��Eԓa�o屲�5�hg9t�}��Ys�M��r@��A#4��L�`%2�E��/�/���u�:]��;O����JB�
�Q}+ K�����������98醛q�W�v����9�o��?�iak(f/n4w�|���U	V(Pl�$6��*�#4� >�����/ї��{x�*4������P3�M����}��5E��      �      x������ � �      �   L   x�3�,-N-�,OM�4202�50�52U04�26�2��&�eę�����]��161.cΤ������̰�q��qqq W�"a      �   ?   x�3�0I�����]l���b���[9c���ˈ���.캰��ދ��^������� �V�      �   J  x��VYo�@~v~��/��Ļ��N^8T�R�HH��;q��z�!��� �-���lb��� /(�֟�ٙ�
�OmY|)�4��<a��nڸ(���rN��l�:�bf6��d"�&��ĭ���0�ݺxpڤr��V�V�8�S>a�f�&L����}*k���I�!�&�(���3��w|����O���%ߏ���v�7�j;��k��u�A�[׵��Fw��(rÖ�����w�
?���'�����VmX�������Z��+;}@�AO3L��Y���Q��KuO���p��}�|�P���Mߥ��Ö
��;u��"��%eR,�vI�K��sWo]��_���Q/H͜|�KNQ'
�
!�ʏ���?D�՛K���T9=?rQ��k"*���yKM$h�����+��/Ah�� <@h�\03������gf��E��J1V� �4}>~ƿ�{��`�4*�('r�c��X�W�)'y>�m?��Q���K1 ��֢Q�man.���R**F�o�p2�Ìz�0���Mu)6	)���c-�	������Z>��a,@�ND�XZ��(��������n&a�ΤX�>���>5�a�Z6��X*&r"bq���S)�^W,��)�_�rS�M)�)2]a��;Y�aCгnd1 ��ݞ��h���Zy����G�K�w�^��n��F�F��D}i�M����8E��R,u��4��:��S9�x0�H�̦@v�l4u�ދμ�?��}�?��I�zn�G�:h�fL��j�I��� �6
}ojB�"V�wr���I���ZTw�V8X�{���z��O�r���w�0      �   �  x�m�ˎ�@E���*E�@F�(��oEIOPKy�K诿^�c���=X�J�>G��S����q	������r-X�ВJ���k4~L%�Gk3���牧���<�� ��8�Tjfh���!��p���d$>��=����<e�+jM.�uw+�݆�_��h��w΅��଻Էy�� ���<7n������	ib Y �@k��q't}.N�,ʪ�uNq�ҺWD���&ʶ��*�%s��ؘ�p?��Q�uJ��"��`q�UuJ� ��a9]��,Ѭ{���i7��ﷻi���M�zl�m;)��?�������H-{�!�e��6��Ngy0�#�����[K�<g�Xi��z5�/=;㇒�KX~(&�a���6���*e�j�[�rK�WԚ�&�X?�N%7�4oŮZ.2�.nË;�oUEZ)>?��Kd�C���Ǆ6��X���M>;�F�a#֢     