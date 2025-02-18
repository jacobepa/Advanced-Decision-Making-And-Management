toc.dat                                                                                             0000600 0004000 0002000 00000006037 13732175272 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       2    
                x           adamtest    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16394    adamtest    DATABASE     f   CREATE DATABASE adamtest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE adamtest;
                adam_manager    false                    0    0    DATABASE adamtest    COMMENT     @   COMMENT ON DATABASE adamtest IS 'database for adam test (epa)';
                   adam_manager    false    3343         �            1259    16797    expert_casegroup    TABLE     �   CREATE TABLE public.expert_casegroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    notes character varying(1000) NOT NULL,
    published boolean NOT NULL
);
 $   DROP TABLE public.expert_casegroup;
       public         heap    adam_manager    false         �            1259    16795    expert_casegroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expert_casegroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.expert_casegroup_id_seq;
       public          adam_manager    false    235                    0    0    expert_casegroup_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.expert_casegroup_id_seq OWNED BY public.expert_casegroup.id;
          public          adam_manager    false    234         �           2604    16800    expert_casegroup id    DEFAULT     z   ALTER TABLE ONLY public.expert_casegroup ALTER COLUMN id SET DEFAULT nextval('public.expert_casegroup_id_seq'::regclass);
 B   ALTER TABLE public.expert_casegroup ALTER COLUMN id DROP DEFAULT;
       public          adam_manager    false    235    234    235         	          0    16797    expert_casegroup 
   TABLE DATA           F   COPY public.expert_casegroup (id, name, notes, published) FROM stdin;
    public          adam_manager    false    235       3337.dat            0    0    expert_casegroup_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.expert_casegroup_id_seq', 2, true);
          public          adam_manager    false    234         �           2606    16805 &   expert_casegroup expert_casegroup_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.expert_casegroup
    ADD CONSTRAINT expert_casegroup_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.expert_casegroup DROP CONSTRAINT expert_casegroup_pkey;
       public            adam_manager    false    235                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3337.dat                                                                                            0000600 0004000 0002000 00000000141 13732175272 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Revisit Example 1		t
2	Renewable Energy Credits (REC) Analysis in Upper Rock Watershed		t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000006105 13732175272 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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

DROP DATABASE adamtest;
--
-- Name: adamtest; Type: DATABASE; Schema: -; Owner: adam_manager
--

CREATE DATABASE adamtest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE adamtest OWNER TO adam_manager;

\connect adamtest

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
-- Name: DATABASE adamtest; Type: COMMENT; Schema: -; Owner: adam_manager
--

COMMENT ON DATABASE adamtest IS 'database for adam test (epa)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: expert_casegroup; Type: TABLE; Schema: public; Owner: adam_manager
--

CREATE TABLE public.expert_casegroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    notes character varying(1000) NOT NULL,
    published boolean NOT NULL
);


ALTER TABLE public.expert_casegroup OWNER TO adam_manager;

--
-- Name: expert_casegroup_id_seq; Type: SEQUENCE; Schema: public; Owner: adam_manager
--

CREATE SEQUENCE public.expert_casegroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expert_casegroup_id_seq OWNER TO adam_manager;

--
-- Name: expert_casegroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adam_manager
--

ALTER SEQUENCE public.expert_casegroup_id_seq OWNED BY public.expert_casegroup.id;


--
-- Name: expert_casegroup id; Type: DEFAULT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_casegroup ALTER COLUMN id SET DEFAULT nextval('public.expert_casegroup_id_seq'::regclass);


--
-- Data for Name: expert_casegroup; Type: TABLE DATA; Schema: public; Owner: adam_manager
--

COPY public.expert_casegroup (id, name, notes, published) FROM stdin;
\.
COPY public.expert_casegroup (id, name, notes, published) FROM '$$PATH$$/3337.dat';

--
-- Name: expert_casegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam_manager
--

SELECT pg_catalog.setval('public.expert_casegroup_id_seq', 2, true);


--
-- Name: expert_casegroup expert_casegroup_pkey; Type: CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_casegroup
    ADD CONSTRAINT expert_casegroup_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           