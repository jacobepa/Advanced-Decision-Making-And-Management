toc.dat                                                                                             0000600 0004000 0002000 00000012722 13732127464 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       $    0                x           adamtest    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16394    adamtest    DATABASE     f   CREATE DATABASE adamtest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE adamtest;
                adam_manager    false                    0    0    DATABASE adamtest    COMMENT     @   COMMENT ON DATABASE adamtest IS 'database for adam test (epa)';
                   adam_manager    false    3349         �            1259    16888    expert_transformation    TABLE     �   CREATE TABLE public.expert_transformation (
    id integer NOT NULL,
    transforming_coefficient double precision NOT NULL,
    product_id integer,
    technology_id integer NOT NULL
);
 )   DROP TABLE public.expert_transformation;
       public         heap    adam_manager    false         �            1259    16886    expert_transformation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expert_transformation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.expert_transformation_id_seq;
       public          adam_manager    false    253                    0    0    expert_transformation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.expert_transformation_id_seq OWNED BY public.expert_transformation.id;
          public          adam_manager    false    252         �           2604    16891    expert_transformation id    DEFAULT     �   ALTER TABLE ONLY public.expert_transformation ALTER COLUMN id SET DEFAULT nextval('public.expert_transformation_id_seq'::regclass);
 G   ALTER TABLE public.expert_transformation ALTER COLUMN id DROP DEFAULT;
       public          adam_manager    false    253    252    253                   0    16888    expert_transformation 
   TABLE DATA           h   COPY public.expert_transformation (id, transforming_coefficient, product_id, technology_id) FROM stdin;
    public          adam_manager    false    253       3343.dat            0    0    expert_transformation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.expert_transformation_id_seq', 247, true);
          public          adam_manager    false    252         �           2606    16893 0   expert_transformation expert_transformation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformation_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.expert_transformation DROP CONSTRAINT expert_transformation_pkey;
       public            adam_manager    false    253         �           2606    16997 R   expert_transformation expert_transformation_technology_id_product_id_e5788ea2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformation_technology_id_product_id_e5788ea2_uniq UNIQUE (technology_id, product_id);
 |   ALTER TABLE ONLY public.expert_transformation DROP CONSTRAINT expert_transformation_technology_id_product_id_e5788ea2_uniq;
       public            adam_manager    false    253    253         �           1259    16998 )   expert_transformation_product_id_8e520c91    INDEX     q   CREATE INDEX expert_transformation_product_id_8e520c91 ON public.expert_transformation USING btree (product_id);
 =   DROP INDEX public.expert_transformation_product_id_8e520c91;
       public            adam_manager    false    253         �           1259    16999 ,   expert_transformation_technology_id_684b4cf1    INDEX     w   CREATE INDEX expert_transformation_technology_id_684b4cf1 ON public.expert_transformation USING btree (technology_id);
 @   DROP INDEX public.expert_transformation_technology_id_684b4cf1;
       public            adam_manager    false    253         �           2606    16991 N   expert_transformation expert_transformatio_technology_id_684b4cf1_fk_expert_te    FK CONSTRAINT     �   ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformatio_technology_id_684b4cf1_fk_expert_te FOREIGN KEY (technology_id) REFERENCES public.expert_technology(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.expert_transformation DROP CONSTRAINT expert_transformatio_technology_id_684b4cf1_fk_expert_te;
       public          adam_manager    false    253         �           2606    16986 T   expert_transformation expert_transformation_product_id_8e520c91_fk_expert_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformation_product_id_8e520c91_fk_expert_product_id FOREIGN KEY (product_id) REFERENCES public.expert_product(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.expert_transformation DROP CONSTRAINT expert_transformation_product_id_8e520c91_fk_expert_product_id;
       public          adam_manager    false    253                                                      3343.dat                                                                                            0000600 0004000 0002000 00000010031 13732127464 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	-1	1	1
2	31.1746132	2	1
3	0.981431465	3	1
4	-1	1	2
5	31.1746132	2	2
6	0.981431465	3	2
7	-1	1	3
8	31.1746132	2	3
9	0.981431465	3	3
10	-1	1	4
11	1.85	26	4
15	-1	26	6
16	42.475	25	6
17	0.95	27	6
18	-1	26	7
19	42.475	25	7
20	0.95	27	7
21	-1	26	8
22	42.475	25	8
23	0.95	27	8
24	-1	25	9
25	1.699	2	9
26	-1	25	10
27	1.699	2	10
28	-1	25	11
29	1.699	2	11
30	-1	1	12
31	0.08	6	12
32	0.92	7	12
33	-1	1	13
34	0.08	6	13
35	0.92	7	13
36	-1	1	14
37	0.08	6	14
38	0.92	7	14
39	-1	1	15
40	31.1746132	2	15
41	0.07883187	4	15
42	0.824105334	10	15
43	0.078663065	28	15
44	-1	1	16
45	31.1746132	2	16
46	0.07883187	4	16
47	0.824105334	10	16
48	0.078663065	28	16
49	-1	1	17
50	31.1746132	2	17
51	0.07883187	4	17
52	0.824105334	10	17
53	0.078663065	28	17
54	-1	1	18
55	31.1746132	2	18
56	0.07883187	4	18
57	0.824105334	10	18
58	0.078663065	28	18
59	-1	1	19
60	0.07883187	4	19
61	0.824105334	10	19
62	0.078663065	28	19
63	31.1746132	2	19
64	-1	1	20
65	31.1746132	2	20
66	0.07883187	4	20
67	0.824105334	10	20
68	0.078663065	28	20
69	-1	1	21
70	0.08	6	21
71	0.839992519	11	21
72	0.08017954	29	21
73	-1	1	22
74	0.08	6	22
75	0.839992519	11	22
76	0.08017954	29	22
77	-1	1	23
78	0.08	6	23
79	0.839992519	11	23
80	0.08017954	29	23
81	-1	1	24
82	0.08	6	24
83	0.839992519	11	24
84	0.08017954	29	24
85	-1	1	25
86	0.08	6	25
87	0.839992519	11	25
88	0.08017954	29	25
89	-1	1	26
90	0.08	6	26
91	0.839992519	11	26
92	0.08017954	29	26
93	-1	1	27
94	31.1746132	2	27
95	0.07883187	4	27
96	0.824105334	10	27
97	0.078663065	28	27
98	-1	1	28
99	31.1746132	2	28
100	0.07883187	4	28
101	0.824105334	10	28
102	0.078663065	28	28
103	-1	1	29
104	31.1746132	2	29
105	0.07883187	4	29
106	0.824105334	10	29
107	0.078663065	28	29
108	-1	1	30
109	0.08	6	30
110	0.839992519	11	30
111	0.08017954	29	30
112	-1	1	31
113	0.08	6	31
114	0.839992519	11	31
115	0.08017954	29	31
116	-1	1	32
117	0.08	6	32
118	0.839992519	11	32
119	0.08017954	29	32
120	-1	1	33
121	31.1746132	2	33
122	0.07883187	4	33
123	0.902599595	5	33
124	-1	1	34
125	31.1746132	2	34
126	0.07883187	4	34
127	0.902599595	5	34
128	-1	1	35
129	31.1746132	2	35
130	0.07883187	4	35
131	0.902599595	5	35
132	-1	1	36
133	31.1746132	2	36
134	0.07883187	4	36
135	0.625422012	8	36
136	0.00352971	12	36
137	0.277515192	14	36
138	-1	1	37
139	31.1746132	2	37
140	0.07883187	4	37
141	0.625422012	8	37
142	0.00352971	12	37
143	0.277515192	14	37
144	-1	1	38
145	31.1746132	2	38
146	0.07883187	4	38
147	0.625422012	8	38
148	0.00352971	12	38
149	0.277515192	14	38
150	-1	1	39
151	0.08	6	39
152	0.63747896	9	39
153	0.003597756	13	39
154	0.282865158	15	39
155	-1	1	40
156	0.08	6	40
157	0.63747896	9	40
158	0.003597756	13	40
159	0.282865158	15	40
160	-1	1	41
161	0.08	6	41
162	0.63747896	9	41
163	0.003597756	13	41
164	0.282865158	15	41
165	-1	1	42
166	31.1746132	2	42
167	0.130654963	16	42
168	0.850945307	18	42
169	-1	1	43
170	31.1746132	2	43
171	0.130654963	16	43
172	0.850945307	18	43
173	-1	1	44
174	31.1746132	2	44
175	0.130654963	16	44
176	0.850945307	18	44
177	-1	1	45
178	0.133126935	17	45
179	0.867045064	19	45
180	-1	1	46
181	0.133126935	17	46
182	0.867045064	19	46
183	-1	1	47
184	0.133126935	17	47
185	0.867045064	19	47
186	-1	1	48
187	31.1746132	2	48
188	0.07883187	4	48
189	0.078325456	20	48
190	0.794902093	22	48
191	-1	1	49
192	31.1746132	2	49
193	0.07883187	4	49
194	0.078325456	20	49
195	0.794902093	22	49
196	-1	1	50
197	31.1746132	2	50
198	0.07883187	4	50
199	0.078325456	20	50
200	0.794902093	22	50
201	-1	1	51
202	0.08	6	51
203	0.079835422	21	51
204	0.810226295	23	51
205	-1	1	52
206	0.08	6	52
207	0.079835422	21	52
208	0.810226295	23	52
209	-1	1	53
210	0.08	6	53
211	0.079835422	21	53
212	0.810226295	23	53
215	-1	34	55
216	0.237723997	38	55
217	-1	6	56
218	0.242157248	38	56
219	-1	36	57
220	0.288664853	38	57
221	-1	30	58
222	0.11	34	58
223	0.89	35	58
224	-1	31	59
225	0.11	36	59
226	0.89	37	59
227	-1	1	60
228	0.0008	24	60
229	-1	30	61
230	0.0005	24	61
231	-1	31	62
232	0.0006	24	62
233	-1	35	63
234	0.00042	24	63
235	-1	7	64
236	0.00062	24	64
237	-1	37	65
238	0.00048	24	65
239	-1	34	66
240	0.00129	24	66
241	-1	6	67
242	0.00191	24	67
243	-1	36	68
244	0.0015	24	68
245	-1	1	69
246	0.08	6	69
247	0.92	7	69
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000011343 13732127464 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: expert_transformation; Type: TABLE; Schema: public; Owner: adam_manager
--

CREATE TABLE public.expert_transformation (
    id integer NOT NULL,
    transforming_coefficient double precision NOT NULL,
    product_id integer,
    technology_id integer NOT NULL
);


ALTER TABLE public.expert_transformation OWNER TO adam_manager;

--
-- Name: expert_transformation_id_seq; Type: SEQUENCE; Schema: public; Owner: adam_manager
--

CREATE SEQUENCE public.expert_transformation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expert_transformation_id_seq OWNER TO adam_manager;

--
-- Name: expert_transformation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adam_manager
--

ALTER SEQUENCE public.expert_transformation_id_seq OWNED BY public.expert_transformation.id;


--
-- Name: expert_transformation id; Type: DEFAULT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_transformation ALTER COLUMN id SET DEFAULT nextval('public.expert_transformation_id_seq'::regclass);


--
-- Data for Name: expert_transformation; Type: TABLE DATA; Schema: public; Owner: adam_manager
--

COPY public.expert_transformation (id, transforming_coefficient, product_id, technology_id) FROM stdin;
\.
COPY public.expert_transformation (id, transforming_coefficient, product_id, technology_id) FROM '$$PATH$$/3343.dat';

--
-- Name: expert_transformation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam_manager
--

SELECT pg_catalog.setval('public.expert_transformation_id_seq', 247, true);


--
-- Name: expert_transformation expert_transformation_pkey; Type: CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformation_pkey PRIMARY KEY (id);


--
-- Name: expert_transformation expert_transformation_technology_id_product_id_e5788ea2_uniq; Type: CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformation_technology_id_product_id_e5788ea2_uniq UNIQUE (technology_id, product_id);


--
-- Name: expert_transformation_product_id_8e520c91; Type: INDEX; Schema: public; Owner: adam_manager
--

CREATE INDEX expert_transformation_product_id_8e520c91 ON public.expert_transformation USING btree (product_id);


--
-- Name: expert_transformation_technology_id_684b4cf1; Type: INDEX; Schema: public; Owner: adam_manager
--

CREATE INDEX expert_transformation_technology_id_684b4cf1 ON public.expert_transformation USING btree (technology_id);


--
-- Name: expert_transformation expert_transformatio_technology_id_684b4cf1_fk_expert_te; Type: FK CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformatio_technology_id_684b4cf1_fk_expert_te FOREIGN KEY (technology_id) REFERENCES public.expert_technology(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: expert_transformation expert_transformation_product_id_8e520c91_fk_expert_product_id; Type: FK CONSTRAINT; Schema: public; Owner: adam_manager
--

ALTER TABLE ONLY public.expert_transformation
    ADD CONSTRAINT expert_transformation_product_id_8e520c91_fk_expert_product_id FOREIGN KEY (product_id) REFERENCES public.expert_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             