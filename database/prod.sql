toc.dat                                                                                             0000600 0004000 0002000 00000006141 13732127625 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           2                x           adamtest    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16394    adamtest    DATABASE     f   CREATE DATABASE adamtest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE adamtest;
                adam_manager    false                    0    0    DATABASE adamtest    COMMENT     @   COMMENT ON DATABASE adamtest IS 'database for adam test (epa)';
                   adam_manager    false    3343         �            1259    16830    expert_product    TABLE       CREATE TABLE public.expert_product (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    transcost double precision NOT NULL,
    unit character varying(20) NOT NULL,
    additionalinfo character varying(1000) NOT NULL,
    public boolean NOT NULL
);
 "   DROP TABLE public.expert_product;
       public         heap    adam_manager    false         �            1259    16828    expert_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expert_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.expert_product_id_seq;
       public          adam_manager    false    241                    0    0    expert_product_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.expert_product_id_seq OWNED BY public.expert_product.id;
          public          adam_manager    false    240         �           2604    16833    expert_product id    DEFAULT     v   ALTER TABLE ONLY public.expert_product ALTER COLUMN id SET DEFAULT nextval('public.expert_product_id_seq'::regclass);
 @   ALTER TABLE public.expert_product ALTER COLUMN id DROP DEFAULT;
       public          adam_manager    false    240    241    241         	          0    16830    expert_product 
   TABLE DATA           [   COPY public.expert_product (id, name, transcost, unit, additionalinfo, public) FROM stdin;
    public          adam_manager    false    241       3337.dat            0    0    expert_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.expert_product_id_seq', 38, true);
          public          adam_manager    false    240         �           2606    16838 "   expert_product expert_product_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.expert_product
    ADD CONSTRAINT expert_product_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.expert_product DROP CONSTRAINT expert_product_pkey;
       public            adam_manager    false    241                                                                                                                                                                                                                                                                                                                                                                                                                                       3337.dat                                                                                            0000600 0004000 0002000 00000007051 13732127625 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Cow Manure (1)	0.5	metric tonne	cow manure	t
2	Bio-Electricity	0.0973	kWh	Electricity generated from burning biogas	t
3	Digestate (slurry, cow) (1)	0.5	metric tonne	Digestate from AD with cow manure (1) 	t
4	Solid Digestate (cow)	0.15	metric tonne	Solid fraction of digestate after SLS	t
5	Liquid Digestate (cow) (1)	0.5	metric tonne	Liquid fraction of digestate from SLS	t
6	Solid Cow Manure	0.15	metric tonne	Solid fraction of diluted manure after SLS	t
7	Liquid Cow Manure	0.5	metric tonne	Liquid fraction of cow manure after SLS	t
8	Waste Liquid (NuReSys 1)	0.5	metric tonne	Residue stream of NuReSys when feeding digestate	t
9	Waste Liquid (NuReSys 2)	0.5	metric tonne	Residue stream from NuReSys tech when feed diluted cow manure	t
10	Waste Liquid (General 1)	0.5	metric tonne	Residue stream from OSTARA, Multiform, and other techs when feeding digestate	t
11	Waste Liquid (General 2)	0.5	metric tonne	Residue stream from OSTARA, Multiform, and other techs when feeding diluted cow manure	t
12	Nutrient Product (NuReSys 1)	0.15	metric tonne	Product from NuReSys tech when feeding digestate	t
13	Nutrient Product (NuReSys 2)	0.15	metric tonne	Product from NuReSys tech when feeding diluted manure	t
14	Waste Slurry (NuReSys 1)	0.5	metric tonne	Residue slurry stream from NuReSys tech when feeding digestate	t
15	Waste Slurry (NuReSys 2)	0.5	metric tonne	Residue slurry stream from NuReSys tech when feeding cow manure	t
16	Nutrient Product (MAPHEX 1)	0.15	metric tonne	Nutrient product from MAPHEX tech when feeding digestate	t
17	Nutrient Product (MAPHEX 2)	0.15	metric tonne	Nutrient product from MAPHEX tech when feeding cow manure	t
18	Waste Liquid (MAPHEX 1)	0.5	metric tonne	Residue stream from MAPHEX tech when feeding digestate	t
19	Waste Liquid (MAPHEX 2)	0.5	metric tonne	Residue stream from MAPHEX tech when feeding cow manure	t
20	Nutrient Product (PROC 1)	0.15	metric tonne	Nutrient product from PROC tech when feeding digestate	t
21	Nutrient Product (PROC 2)	0.15	metric tonne	Nutrient product from PROC tech when feeding cow manure	t
22	Waste Liquid (PROC 1)	0.5	metric tonne	Residue stream from PROC tech when feeding digestate	t
23	Waste Liquid (PROC 2)	0.5	metric tonne	Residue stream from PROC tech when feeding cow manure	t
24	Phosphorus	9999	metric tonne	Phosphorus (hypothetical product), not transportable	t
25	Biogas (60% CH4)	9999	cubic meter	Biogas with 60 vol% methane, not transportable	t
26	Cow Manure (Washed and Diluted)	0.5	metric tonne	Cow manure after dilution and sand recovery	t
27	Digestate (diluted slurry, cow) (1)	0.5	metric tonne	Digestate that generated from AD when feeding diluted cow manure	t
28	Nutrient Product (General 1)	0.15	metric tonne	Nutrient recovery product from general tech (OSTARA, Multiform etc.) when feeding digestate	t
29	Nutrient Product (General 2)	0.15	metric tonne	Nutrient recovery product from general tech (OSTARA, Multiform etc.) when feeding raw manure	t
30	Beef Manure (1)	0.5	metric tonne		t
31	Heifer Manure (1)	0.5	metric tonne	Heifer manure, which has a different composition.	t
34	Solid Beef Manure	0.16	metric tonne	Solid fraction of beef manure after solid-liquid separation of raw manure	t
35	Liquid Beef Manure	0.5	metric tonne	The liquid fraction of beef manure after solid-liquid separation of raw manure	t
36	Solid Heifer Manure	0.16	metric tonne	Solid fraction of heifer manure after solid-liquid separation of raw manure	t
37	Liquid Heifer Manure	0.5	metric tonne	Liquid fraction of heifer manure after solid-liquid separation of raw manure	t
38	Pellets (1)	0.16	metric tonne	Pellets generated from granulation technologies	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000006242 13732127625 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: expert_product; Type: TABLE; Schema: public; Owner: adam_manager
--

CREATE TABLE public.expert_product (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    transcost double precision NOT NULL,
    unit character varying(20) NOT NULL,
    additionalinfo character varying(1000) NOT NULL,
    public boolean NOT NULL
);


ALTER TABLE public.expert_product OWNER TO adam_manager;

--
-- Name: expert_product_id_seq; Type: SEQUENCE; Schema: public; Owner: adam_manager
--

CREATE SEQUENCE public.expert_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expert_product_id_seq OWNER TO adam_manager;

--
-- Name: expert_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adam_manager
--

ALTER SEQUENCE public.expert_product_id_seq OWNED BY public.expert_product.id;


--
-- Name: expert_product id; Type: DEFAULT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_product ALTER COLUMN id SET DEFAULT nextval('public.expert_product_id_seq'::regclass);


--
-- Data for Name: expert_product; Type: TABLE DATA; Schema: public; Owner: adam_manager
--

COPY public.expert_product (id, name, transcost, unit, additionalinfo, public) FROM stdin;
\.
COPY public.expert_product (id, name, transcost, unit, additionalinfo, public) FROM '$$PATH$$/3337.dat';

--
-- Name: expert_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam_manager
--

SELECT pg_catalog.setval('public.expert_product_id_seq', 38, true);


--
-- Name: expert_product expert_product_pkey; Type: CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_product
    ADD CONSTRAINT expert_product_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              