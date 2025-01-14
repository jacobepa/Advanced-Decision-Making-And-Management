toc.dat                                                                                             0000600 0004000 0002000 00000012437 13732175313 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           x           adamtest    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16394    adamtest    DATABASE     f   CREATE DATABASE adamtest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE adamtest;
                adam_manager    false                    0    0    DATABASE adamtest    COMMENT     @   COMMENT ON DATABASE adamtest IS 'database for adam test (epa)';
                   adam_manager    false    3349                    1259    16928    expert_grouphascase    TABLE     �   CREATE TABLE public.expert_grouphascase (
    id integer NOT NULL,
    casegroup_id integer NOT NULL,
    casestudy_id integer NOT NULL
);
 '   DROP TABLE public.expert_grouphascase;
       public         heap    adam_manager    false                    1259    16926    expert_grouphascase_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expert_grouphascase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.expert_grouphascase_id_seq;
       public          adam_manager    false    261                    0    0    expert_grouphascase_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.expert_grouphascase_id_seq OWNED BY public.expert_grouphascase.id;
          public          adam_manager    false    260         �           2604    16931    expert_grouphascase id    DEFAULT     �   ALTER TABLE ONLY public.expert_grouphascase ALTER COLUMN id SET DEFAULT nextval('public.expert_grouphascase_id_seq'::regclass);
 E   ALTER TABLE public.expert_grouphascase ALTER COLUMN id DROP DEFAULT;
       public          adam_manager    false    261    260    261                   0    16928    expert_grouphascase 
   TABLE DATA           M   COPY public.expert_grouphascase (id, casegroup_id, casestudy_id) FROM stdin;
    public          adam_manager    false    261       3343.dat            0    0    expert_grouphascase_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.expert_grouphascase_id_seq', 6, true);
          public          adam_manager    false    260         �           2606    17028 O   expert_grouphascase expert_grouphascase_casegroup_id_casestudy_id_ac93f82a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_casegroup_id_casestudy_id_ac93f82a_uniq UNIQUE (casegroup_id, casestudy_id);
 y   ALTER TABLE ONLY public.expert_grouphascase DROP CONSTRAINT expert_grouphascase_casegroup_id_casestudy_id_ac93f82a_uniq;
       public            adam_manager    false    261    261         �           2606    16933 ,   expert_grouphascase expert_grouphascase_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.expert_grouphascase DROP CONSTRAINT expert_grouphascase_pkey;
       public            adam_manager    false    261         �           1259    17029 )   expert_grouphascase_casegroup_id_8b42e0fc    INDEX     q   CREATE INDEX expert_grouphascase_casegroup_id_8b42e0fc ON public.expert_grouphascase USING btree (casegroup_id);
 =   DROP INDEX public.expert_grouphascase_casegroup_id_8b42e0fc;
       public            adam_manager    false    261         �           1259    17030 )   expert_grouphascase_casestudy_id_d27e53c4    INDEX     q   CREATE INDEX expert_grouphascase_casestudy_id_d27e53c4 ON public.expert_grouphascase USING btree (casestudy_id);
 =   DROP INDEX public.expert_grouphascase_casestudy_id_d27e53c4;
       public            adam_manager    false    261         �           2606    17017 J   expert_grouphascase expert_grouphascase_casegroup_id_8b42e0fc_fk_expert_ca    FK CONSTRAINT     �   ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_casegroup_id_8b42e0fc_fk_expert_ca FOREIGN KEY (casegroup_id) REFERENCES public.expert_casegroup(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.expert_grouphascase DROP CONSTRAINT expert_grouphascase_casegroup_id_8b42e0fc_fk_expert_ca;
       public          adam_manager    false    261         �           2606    17022 J   expert_grouphascase expert_grouphascase_casestudy_id_d27e53c4_fk_expert_ca    FK CONSTRAINT     �   ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_casestudy_id_d27e53c4_fk_expert_ca FOREIGN KEY (casestudy_id) REFERENCES public.expert_casestudy(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.expert_grouphascase DROP CONSTRAINT expert_grouphascase_casestudy_id_d27e53c4_fk_expert_ca;
       public          adam_manager    false    261                                                                                                                                                                                                                                         3343.dat                                                                                            0000600 0004000 0002000 00000000051 13732175313 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
2	1	2
3	1	3
4	2	4
5	2	5
6	2	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000011057 13732175313 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: expert_grouphascase; Type: TABLE; Schema: public; Owner: adam_manager
--

CREATE TABLE public.expert_grouphascase (
    id integer NOT NULL,
    casegroup_id integer NOT NULL,
    casestudy_id integer NOT NULL
);


ALTER TABLE public.expert_grouphascase OWNER TO adam_manager;

--
-- Name: expert_grouphascase_id_seq; Type: SEQUENCE; Schema: public; Owner: adam_manager
--

CREATE SEQUENCE public.expert_grouphascase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expert_grouphascase_id_seq OWNER TO adam_manager;

--
-- Name: expert_grouphascase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adam_manager
--

ALTER SEQUENCE public.expert_grouphascase_id_seq OWNED BY public.expert_grouphascase.id;


--
-- Name: expert_grouphascase id; Type: DEFAULT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_grouphascase ALTER COLUMN id SET DEFAULT nextval('public.expert_grouphascase_id_seq'::regclass);


--
-- Data for Name: expert_grouphascase; Type: TABLE DATA; Schema: public; Owner: adam_manager
--

COPY public.expert_grouphascase (id, casegroup_id, casestudy_id) FROM stdin;
\.
COPY public.expert_grouphascase (id, casegroup_id, casestudy_id) FROM '$$PATH$$/3343.dat';

--
-- Name: expert_grouphascase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam_manager
--

SELECT pg_catalog.setval('public.expert_grouphascase_id_seq', 6, true);


--
-- Name: expert_grouphascase expert_grouphascase_casegroup_id_casestudy_id_ac93f82a_uniq; Type: CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_casegroup_id_casestudy_id_ac93f82a_uniq UNIQUE (casegroup_id, casestudy_id);


--
-- Name: expert_grouphascase expert_grouphascase_pkey; Type: CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_pkey PRIMARY KEY (id);


--
-- Name: expert_grouphascase_casegroup_id_8b42e0fc; Type: INDEX; Schema: public; Owner: adam_manager
--

CREATE INDEX expert_grouphascase_casegroup_id_8b42e0fc ON public.expert_grouphascase USING btree (casegroup_id);


--
-- Name: expert_grouphascase_casestudy_id_d27e53c4; Type: INDEX; Schema: public; Owner: adam_manager
--

CREATE INDEX expert_grouphascase_casestudy_id_d27e53c4 ON public.expert_grouphascase USING btree (casestudy_id);


--
-- Name: expert_grouphascase expert_grouphascase_casegroup_id_8b42e0fc_fk_expert_ca; Type: FK CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_casegroup_id_8b42e0fc_fk_expert_ca FOREIGN KEY (casegroup_id) REFERENCES public.expert_casegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: expert_grouphascase expert_grouphascase_casestudy_id_d27e53c4_fk_expert_ca; Type: FK CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_grouphascase
    ADD CONSTRAINT expert_grouphascase_casestudy_id_d27e53c4_fk_expert_ca FOREIGN KEY (casestudy_id) REFERENCES public.expert_casestudy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 