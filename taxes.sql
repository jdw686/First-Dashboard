--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Ausgaben; Type: TABLE; Schema: public; Owner: jdw686
--

CREATE TABLE public."Ausgaben" (
    index bigint,
    "Date" text,
    "Category" text,
    "Prior Total YE" bigint,
    "Budget" bigint,
    "Current Year Total" bigint,
    "Prior Year Total" bigint,
    "Month" bigint,
    "Year" bigint,
    "Monthly Total" double precision,
    category_en character varying(250)
);


ALTER TABLE public."Ausgaben" OWNER TO jdw686;

--
-- Name: Bundessteuern; Type: TABLE; Schema: public; Owner: jdw686
--

CREATE TABLE public."Bundessteuern" (
    index bigint,
    "Unnamed: 0" text,
    "Category" text,
    "Current Year Total" double precision,
    "Date" text,
    "Difference Method" double precision,
    "Month" bigint,
    "Monthly Total" double precision,
    "Percentage Method" double precision,
    "Prior Year Total" double precision,
    "Rolling Total" double precision,
    "Year" bigint,
    category_en text
);


ALTER TABLE public."Bundessteuern" OWNER TO jdw686;

--
-- Name: Revenue Budget; Type: TABLE; Schema: public; Owner: jdw686
--

CREATE TABLE public."Revenue Budget" (
    index bigint,
    "Unnamed: 0" bigint,
    "Category" text,
    "Budget" bigint,
    "Year" bigint,
    category_en text
);


ALTER TABLE public."Revenue Budget" OWNER TO jdw686;

--
-- Data for Name: Ausgaben; Type: TABLE DATA; Schema: public; Owner: jdw686
--

COPY public."Ausgaben" (index, "Date", "Category", "Prior Total YE", "Budget", "Current Year Total", "Prior Year Total", "Month", "Year", "Monthly Total", category_en) FROM stdin;
25	2010-02-01	Allgemeine Dienste	53357	54219	9060	9807	2	2010	3435	General Public Services
26	2010-03-01	Allgemeine Dienste	53357	54219	13200	13794	3	2010	4140	General Public Services
27	2010-04-01	Allgemeine Dienste	53357	54219	17203	17987	4	2010	4003	General Public Services
28	2010-05-01	Allgemeine Dienste	53357	54219	21552	21906	5	2010	4349	General Public Services
29	2010-06-01	Allgemeine Dienste	53357	54219	25873	26003	6	2010	4321	General Public Services
30	2010-07-01	Allgemeine Dienste	53357	54219	30507	30622	7	2010	4634	General Public Services
31	2010-08-01	Allgemeine Dienste	53357	54219	35032	34766	8	2010	4525	General Public Services
32	2010-09-01	Allgemeine Dienste	53357	54219	38991	38889	9	2010	3959	General Public Services
33	2010-10-01	Allgemeine Dienste	53357	54219	43445	42706	10	2010	4454	General Public Services
34	2010-11-01	Allgemeine Dienste	53357	54219	48357	47999	11	2010	4912	General Public Services
35	2010-12-01	Allgemeine Dienste	53357	54219	54227	53357	12	2010	5870	General Public Services
36	2011-01-01	Allgemeine Dienste	54227	55490	5654	5625	1	2011	5654	General Public Services
37	2011-02-01	Allgemeine Dienste	54227	55490	9602	9060	2	2011	3948	General Public Services
38	2011-03-01	Allgemeine Dienste	54227	55490	13408	13200	3	2011	3806	General Public Services
39	2011-04-01	Allgemeine Dienste	54227	55490	17466	17203	4	2011	4058	General Public Services
40	2011-05-01	Allgemeine Dienste	54227	55490	21301	21830	5	2011	3835	General Public Services
41	2011-06-01	Allgemeine Dienste	54227	55490	25546	26028	6	2011	4245	General Public Services
42	2011-07-01	Allgemeine Dienste	54227	55490	30500	30731	7	2011	4954	General Public Services
43	2011-08-01	Allgemeine Dienste	54227	55490	35066	35193	8	2011	4566	General Public Services
44	2011-09-01	Allgemeine Dienste	54227	55490	39159	39201	9	2011	4093	General Public Services
45	2011-10-01	Allgemeine Dienste	54227	55490	43333	43619	10	2011	4174	General Public Services
46	2011-11-01	Allgemeine Dienste	54227	55490	48167	48588	11	2011	4834	General Public Services
47	2011-12-01	Allgemeine Dienste	54227	55490	54407	54227	12	2011	6240	General Public Services
48	2012-01-01	Allgemeine Dienste	54407	55217	5916	5654	1	2012	5916	General Public Services
49	2012-02-01	Allgemeine Dienste	54407	55217	9945	9602	2	2012	4029	General Public Services
50	2012-03-01	Allgemeine Dienste	54407	63904	14057	13408	3	2012	4112	General Public Services
51	2012-04-01	Allgemeine Dienste	54407	63904	18205	17466	4	2012	4148	General Public Services
52	2012-05-01	Allgemeine Dienste	54407	63904	21979	21301	5	2012	3774	General Public Services
53	2012-06-01	Allgemeine Dienste	54407	63904	26354	25546	6	2012	4375	General Public Services
54	2012-07-01	Allgemeine Dienste	54407	63904	31074	30500	7	2012	4720	General Public Services
55	2012-08-01	Allgemeine Dienste	54407	63904	35771	35066	8	2012	4697	General Public Services
56	2012-09-01	Allgemeine Dienste	54407	65521	39760	39159	9	2012	3989	General Public Services
57	2012-10-01	Allgemeine Dienste	54407	65521	53077	43333	10	2012	13317	General Public Services
58	2012-11-01	Allgemeine Dienste	54407	65521	58327	48167	11	2012	5250	General Public Services
59	2012-12-01	Allgemeine Dienste	54407	65521	66542	54407	12	2012	8215	General Public Services
60	2013-01-01	Allgemeine Dienste	0	72949	5826	0	1	2013	5826	General Public Services
61	2013-02-01	Allgemeine Dienste	0	72949	11374	0	2	2013	5548	General Public Services
62	2013-03-01	Allgemeine Dienste	0	72949	15861	0	3	2013	4487	General Public Services
63	2013-04-01	Allgemeine Dienste	0	72949	21115	0	4	2013	5254	General Public Services
64	2013-05-01	Allgemeine Dienste	0	72949	30055	0	5	2013	8940	General Public Services
65	2013-06-01	Allgemeine Dienste	0	72949	35049	0	6	2013	4994	General Public Services
66	2013-07-01	Allgemeine Dienste	0	72949	41005	0	7	2013	5956	General Public Services
67	2013-08-01	Allgemeine Dienste	0	72949	46270	0	8	2013	5265	General Public Services
68	2013-09-01	Allgemeine Dienste	0	72949	51220	0	9	2013	4950	General Public Services
69	2013-10-01	Allgemeine Dienste	0	72949	56310	0	10	2013	5090	General Public Services
70	2013-11-01	Allgemeine Dienste	0	72949	66424	0	11	2013	10114	General Public Services
71	2013-12-01	Allgemeine Dienste	0	72949	72647	0	12	2013	6223	General Public Services
72	2014-01-01	Allgemeine Dienste	72647	0	6421	5826	1	2014	6421	General Public Services
73	2014-02-01	Allgemeine Dienste	72647	69404	11226	11374	2	2014	4805	General Public Services
74	2014-03-01	Allgemeine Dienste	72647	69404	15758	15861	3	2014	4532	General Public Services
75	2014-04-01	Allgemeine Dienste	72647	69404	20524	21115	4	2014	4766	General Public Services
76	2014-05-01	Allgemeine Dienste	72647	69404	29432	30055	5	2014	8908	General Public Services
77	2014-06-01	Allgemeine Dienste	72647	69602	35018	35049	6	2014	5586	General Public Services
78	2014-07-01	Allgemeine Dienste	72647	69602	40740	41005	7	2014	5722	General Public Services
79	2014-08-01	Allgemeine Dienste	72647	69602	45910	46270	8	2014	5170	General Public Services
80	2014-09-01	Allgemeine Dienste	72647	69602	51320	51220	9	2014	5410	General Public Services
81	2014-10-01	Allgemeine Dienste	72647	69602	56781	56310	10	2014	5461	General Public Services
82	2014-11-01	Allgemeine Dienste	72647	69602	62245	66424	11	2014	5464	General Public Services
83	2014-12-01	Allgemeine Dienste	72647	69602	69720	72647	12	2014	7475	General Public Services
84	2015-01-01	Allgemeine Dienste	69720	65882	6496	6430	1	2015	6496	General Public Services
85	2015-02-01	Allgemeine Dienste	69720	66457	11540	11226	2	2015	5044	General Public Services
86	2015-03-01	Allgemeine Dienste	69720	66457	16465	15758	3	2015	4925	General Public Services
87	2015-04-01	Allgemeine Dienste	69720	66457	21703	20524	4	2015	5238	General Public Services
88	2015-05-01	Allgemeine Dienste	69720	66498	26236	29432	5	2015	4533	General Public Services
89	2015-06-01	Allgemeine Dienste	69720	66498	31741	35018	6	2015	5505	General Public Services
90	2015-07-01	Allgemeine Dienste	69720	66498	37338	40740	7	2015	5597	General Public Services
91	2015-08-01	Allgemeine Dienste	69720	66498	42620	45910	8	2015	5282	General Public Services
92	2015-09-01	Allgemeine Dienste	69720	66509	48228	51320	9	2015	5608	General Public Services
93	2015-10-01	Allgemeine Dienste	69720	66614	54040	56781	10	2015	5812	General Public Services
94	2015-11-01	Allgemeine Dienste	69720	66614	59733	62245	11	2015	5693	General Public Services
95	2015-12-01	Allgemeine Dienste	69720	66614	66947	69720	12	2015	7214	General Public Services
96	2016-01-01	Allgemeine Dienste	66947	71572	6970	6496	1	2016	6970	General Public Services
97	2016-02-01	Allgemeine Dienste	66947	71572	12492	11540	2	2016	5522	General Public Services
98	2016-03-01	Allgemeine Dienste	66947	71572	18520	16465	3	2016	6028	General Public Services
99	2016-04-01	Allgemeine Dienste	66947	71572	23688	21703	4	2016	5168	General Public Services
100	2016-05-01	Allgemeine Dienste	66947	71572	29003	26236	5	2016	5315	General Public Services
101	2016-06-01	Allgemeine Dienste	66947	71572	34415	31741	6	2016	5412	General Public Services
102	2016-07-01	Allgemeine Dienste	66947	71572	40276	37338	7	2016	5861	General Public Services
103	2016-08-01	Allgemeine Dienste	66947	71572	46227	42620	8	2016	5951	General Public Services
104	2016-09-01	Allgemeine Dienste	66947	71572	52211	48228	9	2016	5984	General Public Services
105	2016-10-01	Allgemeine Dienste	66947	71572	57860	54040	10	2016	5649	General Public Services
106	2016-11-01	Allgemeine Dienste	66947	71572	64185	59733	11	2016	6325	General Public Services
107	2016-12-01	Allgemeine Dienste	66947	71572	72181	66947	12	2016	7996	General Public Services
108	2017-01-01	Allgemeine Dienste	72181	77807	7147	6970	1	2017	7147	General Public Services
109	2017-02-01	Allgemeine Dienste	72181	77807	12541	12492	2	2017	5394	General Public Services
110	2017-03-01	Allgemeine Dienste	72181	77807	18348	18520	3	2017	5807	General Public Services
111	2017-04-01	Allgemeine Dienste	72181	77807	23518	23688	4	2017	5170	General Public Services
112	2017-05-01	Allgemeine Dienste	72181	77807	29203	29003	5	2017	5685	General Public Services
113	2017-06-01	Allgemeine Dienste	72181	77807	35319	34415	6	2017	6116	General Public Services
114	2017-07-01	Allgemeine Dienste	72181	77807	41318	40276	7	2017	5999	General Public Services
115	2017-08-01	Allgemeine Dienste	72181	77807	48006	46227	8	2017	6688	General Public Services
116	2017-09-01	Allgemeine Dienste	72181	77807	53940	52211	9	2017	5934	General Public Services
117	2017-10-01	Allgemeine Dienste	72181	77807	60207	57860	10	2017	6267	General Public Services
118	2017-11-01	Allgemeine Dienste	72181	77807	67460	64185	11	2017	7253	General Public Services
119	2017-12-01	Allgemeine Dienste	72181	77807	77006	72181	12	2017	9546	General Public Services
120	2018-01-01	Allgemeine Dienste	77006	0	6981	7147	1	2018	6981	General Public Services
121	2018-02-01	Allgemeine Dienste	77006	0	12662	12541	2	2018	5681	General Public Services
122	2018-03-01	Allgemeine Dienste	77006	0	18345	18348	3	2018	5683	General Public Services
123	2018-04-01	Allgemeine Dienste	77006	0	23925	23518	4	2018	5580	General Public Services
124	2018-05-01	Allgemeine Dienste	77006	0	29943	29203	5	2018	6018	General Public Services
125	2018-06-01	Allgemeine Dienste	77006	81712	35252	35319	6	2018	5309	General Public Services
126	2018-07-01	Allgemeine Dienste	77006	81712	41406	41318	7	2018	6154	General Public Services
127	2018-08-01	Allgemeine Dienste	77006	81712	47907	48006	8	2018	6501	General Public Services
128	2018-09-01	Allgemeine Dienste	77006	81712	54363	53363	9	2018	6456	General Public Services
129	2018-10-01	Allgemeine Dienste	77006	81712	61439	60207	10	2018	7076	General Public Services
130	2018-11-01	Allgemeine Dienste	77006	81712	69497	67460	11	2018	8058	General Public Services
131	2018-12-01	Allgemeine Dienste	77006	81712	80341	77006	12	2018	10844	General Public Services
132	2019-01-01	Allgemeine Dienste	80341	89945	7521	6981	1	2019	7521	General Public Services
133	2019-02-01	Allgemeine Dienste	80341	89945	13989	12662	2	2019	6468	General Public Services
134	2019-03-01	Allgemeine Dienste	80341	89945	20157	18345	3	2019	6168	General Public Services
135	2019-04-01	Allgemeine Dienste	80341	89945	26371	23925	4	2019	6214	General Public Services
136	2019-05-01	Allgemeine Dienste	80341	89945	33195	29943	5	2019	6824	General Public Services
137	2008-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	904	0	1	2008	904	Education, Research, and Cultural Affairs
138	2008-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	1663	0	2	2008	759	Education, Research, and Cultural Affairs
139	2008-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	2374	0	3	2008	711	Education, Research, and Cultural Affairs
140	2008-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	3718	0	4	2008	1344	Education, Research, and Cultural Affairs
141	2008-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	4631	0	5	2008	913	Education, Research, and Cultural Affairs
142	2008-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	5530	0	6	2008	899	Education, Research, and Cultural Affairs
143	2008-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	6832	0	7	2008	1302	Education, Research, and Cultural Affairs
144	2008-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	7563	0	8	2008	731	Education, Research, and Cultural Affairs
145	2008-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	8693	0	9	2008	1130	Education, Research, and Cultural Affairs
146	2008-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	10187	0	10	2008	1494	Education, Research, and Cultural Affairs
147	2008-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	11517	0	11	2008	1330	Education, Research, and Cultural Affairs
148	2008-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	13437	0	12	2008	1920	Education, Research, and Cultural Affairs
149	2009-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	942	904	1	2009	942	Education, Research, and Cultural Affairs
150	2009-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	1737	1663	2	2009	795	Education, Research, and Cultural Affairs
151	2009-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	2812	2374	3	2009	1075	Education, Research, and Cultural Affairs
152	2009-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	4065	3718	4	2009	1253	Education, Research, and Cultural Affairs
153	2009-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14602	4944	4631	5	2009	879	Education, Research, and Cultural Affairs
154	2009-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	6132	5530	6	2009	1188	Education, Research, and Cultural Affairs
155	2009-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	7604	6832	7	2009	1472	Education, Research, and Cultural Affairs
156	2009-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	8456	7563	8	2009	852	Education, Research, and Cultural Affairs
157	2009-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	9785	8693	9	2009	1329	Education, Research, and Cultural Affairs
158	2009-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	11255	10187	10	2009	1470	Education, Research, and Cultural Affairs
159	2009-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	12800	11517	11	2009	1545	Education, Research, and Cultural Affairs
160	2009-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	13437	14606	14960	13437	12	2009	2160	Education, Research, and Cultural Affairs
161	2010-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15416	881	942	1	2010	881	Education, Research, and Cultural Affairs
162	2010-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	1803	1737	2	2010	922	Education, Research, and Cultural Affairs
163	2010-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	2642	2812	3	2010	839	Education, Research, and Cultural Affairs
164	2010-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	3824	4065	4	2010	1182	Education, Research, and Cultural Affairs
165	2010-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	4887	4944	5	2010	1063	Education, Research, and Cultural Affairs
166	2010-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	5894	6132	6	2010	1007	Education, Research, and Cultural Affairs
167	2010-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	7498	7604	7	2010	1604	Education, Research, and Cultural Affairs
168	2010-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	8683	8456	8	2010	1185	Education, Research, and Cultural Affairs
169	2010-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	9733	9785	9	2010	1050	Education, Research, and Cultural Affairs
170	2010-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	11020	11255	10	2010	1287	Education, Research, and Cultural Affairs
171	2010-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	12631	12800	11	2010	1611	Education, Research, and Cultural Affairs
172	2010-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14960	15402	14896	14960	12	2010	2265	Education, Research, and Cultural Affairs
173	2011-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	1141	881	1	2011	1141	Education, Research, and Cultural Affairs
174	2011-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	2007	1803	2	2011	866	Education, Research, and Cultural Affairs
175	2011-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	3187	2642	3	2011	1180	Education, Research, and Cultural Affairs
176	2011-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	4603	3824	4	2011	1416	Education, Research, and Cultural Affairs
177	2011-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	5693	4887	5	2011	1090	Education, Research, and Cultural Affairs
178	2011-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	6915	5894	6	2011	1222	Education, Research, and Cultural Affairs
179	2011-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	8592	7498	7	2011	1677	Education, Research, and Cultural Affairs
180	2011-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	9701	8683	8	2011	1109	Education, Research, and Cultural Affairs
181	2011-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	10789	9733	9	2011	1088	Education, Research, and Cultural Affairs
182	2011-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	12225	11020	10	2011	1436	Education, Research, and Cultural Affairs
183	2011-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	13965	12631	11	2011	1740	Education, Research, and Cultural Affairs
184	2011-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	14896	16933	16086	14896	12	2011	2121	Education, Research, and Cultural Affairs
185	2012-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17966	1193	1141	1	2012	1193	Education, Research, and Cultural Affairs
186	2012-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17966	2323	2007	2	2012	1130	Education, Research, and Cultural Affairs
187	2012-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17966	3406	3187	3	2012	1083	Education, Research, and Cultural Affairs
188	2012-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17966	5051	4603	4	2012	1645	Education, Research, and Cultural Affairs
189	2012-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	6510	5693	5	2012	1459	Education, Research, and Cultural Affairs
190	2012-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	7600	6915	6	2012	1090	Education, Research, and Cultural Affairs
191	2012-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	9403	8592	7	2012	1803	Education, Research, and Cultural Affairs
192	2012-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	10656	9701	8	2012	1253	Education, Research, and Cultural Affairs
193	2012-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	11761	10789	9	2012	1105	Education, Research, and Cultural Affairs
194	2012-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	13516	12225	10	2012	1755	Education, Research, and Cultural Affairs
195	2012-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	15405	13965	11	2012	1889	Education, Research, and Cultural Affairs
196	2012-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	16086	17994	17668	16086	12	2012	2263	Education, Research, and Cultural Affairs
197	2013-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	1287	0	1	2013	1287	Education, Research, and Cultural Affairs
198	2013-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	2396	0	2	2013	1109	Education, Research, and Cultural Affairs
199	2013-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	3917	0	3	2013	1521	Education, Research, and Cultural Affairs
200	2013-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	5728	0	4	2013	1811	Education, Research, and Cultural Affairs
201	2013-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	6964	0	5	2013	1236	Education, Research, and Cultural Affairs
202	2013-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	8611	0	6	2013	1647	Education, Research, and Cultural Affairs
203	2013-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	10400	0	7	2013	1789	Education, Research, and Cultural Affairs
204	2013-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	11722	0	8	2013	1322	Education, Research, and Cultural Affairs
205	2013-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	12665	0	9	2013	943	Education, Research, and Cultural Affairs
206	2013-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	14635	0	10	2013	1970	Education, Research, and Cultural Affairs
207	2013-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	16192	0	11	2013	1557	Education, Research, and Cultural Affairs
208	2013-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	0	18952	18684	0	12	2013	2492	Education, Research, and Cultural Affairs
209	2014-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	0	1326	1287	1	2014	1326	Education, Research, and Cultural Affairs
210	2014-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19185	2754	2396	2	2014	1428	Education, Research, and Cultural Affairs
211	2014-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19185	3820	3917	3	2014	1066	Education, Research, and Cultural Affairs
212	2014-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19185	5558	5728	4	2014	1738	Education, Research, and Cultural Affairs
213	2014-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19185	6807	6964	5	2014	1249	Education, Research, and Cultural Affairs
214	2014-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	8276	8611	6	2014	1469	Education, Research, and Cultural Affairs
215	2014-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	10261	10400	7	2014	1985	Education, Research, and Cultural Affairs
216	2014-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	11473	11722	8	2014	1212	Education, Research, and Cultural Affairs
217	2014-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	12756	12665	9	2014	1283	Education, Research, and Cultural Affairs
218	2014-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	14629	14635	10	2014	1873	Education, Research, and Cultural Affairs
219	2014-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	16419	16192	11	2014	1790	Education, Research, and Cultural Affairs
220	2014-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18684	19304	18822	18684	12	2014	2403	Education, Research, and Cultural Affairs
221	2015-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20670	1612	1317	1	2015	1612	Education, Research, and Cultural Affairs
222	2015-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	3033	2754	2	2015	1421	Education, Research, and Cultural Affairs
223	2015-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	4424	3820	3	2015	1391	Education, Research, and Cultural Affairs
224	2015-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	6229	5558	4	2015	1805	Education, Research, and Cultural Affairs
225	2015-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	7393	6807	5	2015	1164	Education, Research, and Cultural Affairs
226	2015-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	9161	8276	6	2015	1768	Education, Research, and Cultural Affairs
227	2015-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	11140	10261	7	2015	1979	Education, Research, and Cultural Affairs
228	2015-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	12600	11473	8	2015	1460	Education, Research, and Cultural Affairs
229	2015-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	13754	12756	9	2015	1154	Education, Research, and Cultural Affairs
1019	2011-08-01	Allgemeine Finanzwirtschaft	34249	35462	29791	29923	8	2011	202	Financial Management
230	2015-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	15627	14629	10	2015	1873	Education, Research, and Cultural Affairs
231	2015-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	17691	16419	11	2015	2064	Education, Research, and Cultural Affairs
232	2015-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	18822	20757	20271	18822	12	2015	2580	Education, Research, and Cultural Affairs
233	2016-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	1427	1612	1	2016	1427	Education, Research, and Cultural Affairs
234	2016-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	2995	3033	2	2016	1568	Education, Research, and Cultural Affairs
235	2016-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	4317	4424	3	2016	1322	Education, Research, and Cultural Affairs
236	2016-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	5748	6229	4	2016	1431	Education, Research, and Cultural Affairs
237	2016-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	7261	7393	5	2016	1513	Education, Research, and Cultural Affairs
238	2016-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	9165	9161	6	2016	1904	Education, Research, and Cultural Affairs
239	2016-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	10969	11140	7	2016	1804	Education, Research, and Cultural Affairs
240	2016-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	12374	12600	8	2016	1405	Education, Research, and Cultural Affairs
241	2016-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	13939	13754	9	2016	1565	Education, Research, and Cultural Affairs
242	2016-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	15798	15627	10	2016	1859	Education, Research, and Cultural Affairs
243	2016-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	18213	17691	11	2016	2415	Education, Research, and Cultural Affairs
244	2016-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	20271	21961	21472	20271	12	2016	3259	Education, Research, and Cultural Affairs
245	2017-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	1526	1427	1	2017	1526	Education, Research, and Cultural Affairs
246	2017-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	3031	2995	2	2017	1505	Education, Research, and Cultural Affairs
247	2017-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	4079	4317	3	2017	1048	Education, Research, and Cultural Affairs
248	2017-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	5698	5748	4	2017	1619	Education, Research, and Cultural Affairs
249	2017-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	7175	7261	5	2017	1477	Education, Research, and Cultural Affairs
250	2017-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	9066	9165	6	2017	1891	Education, Research, and Cultural Affairs
251	2017-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	11020	10969	7	2017	1954	Education, Research, and Cultural Affairs
252	2017-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	12561	12374	8	2017	1541	Education, Research, and Cultural Affairs
253	2017-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	13866	13939	9	2017	1305	Education, Research, and Cultural Affairs
254	2017-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	16314	15798	10	2017	2448	Education, Research, and Cultural Affairs
255	2017-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	18576	18213	11	2017	2262	Education, Research, and Cultural Affairs
256	2017-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	21472	23935	22984	21472	12	2017	4408	Education, Research, and Cultural Affairs
257	2018-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	0	1232	1526	1	2018	1232	Education, Research, and Cultural Affairs
258	2018-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	0	2191	3031	2	2018	959	Education, Research, and Cultural Affairs
259	2018-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	0	3469	4079	3	2018	1278	Education, Research, and Cultural Affairs
260	2018-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	0	5298	5698	4	2018	1829	Education, Research, and Cultural Affairs
261	2018-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	0	6878	7175	5	2018	1580	Education, Research, and Cultural Affairs
262	2018-06-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	8668	9066	6	2018	1790	Education, Research, and Cultural Affairs
263	2018-07-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	10895	11020	7	2018	2227	Education, Research, and Cultural Affairs
264	2018-08-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	12515	12561	8	2018	1620	Education, Research, and Cultural Affairs
265	2018-09-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	13990	13866	9	2018	1475	Education, Research, and Cultural Affairs
266	2018-10-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	16318	16314	10	2018	2328	Education, Research, and Cultural Affairs
267	2018-11-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	18540	18576	11	2018	2222	Education, Research, and Cultural Affairs
268	2018-12-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	22984	24207	23071	22984	12	2018	4531	Education, Research, and Cultural Affairs
269	2019-01-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	23071	25696	1349	1232	1	2019	1349	Education, Research, and Cultural Affairs
270	2019-02-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	23071	25696	2828	2191	2	2019	1479	Education, Research, and Cultural Affairs
271	2019-03-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	23070	25696	4001	3469	3	2019	1173	Education, Research, and Cultural Affairs
272	2019-04-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	23070	25696	5918	5298	4	2019	1917	Education, Research, and Cultural Affairs
273	2019-05-01	Bildung, Wissenschaft, Forschung, Kulturelle Angelegenheiten	23070	25696	7605	6878	5	2019	1687	Education, Research, and Cultural Affairs
274	2008-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	17085	0	1	2008	17085	Social Insurance and Family Affairs
275	2008-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	28694	0	2	2008	11609	Social Insurance and Family Affairs
276	2008-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	39933	0	3	2008	11239	Social Insurance and Family Affairs
277	2008-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	51448	0	4	2008	11515	Social Insurance and Family Affairs
278	2008-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	64370	0	5	2008	12922	Social Insurance and Family Affairs
1020	2011-09-01	Allgemeine Finanzwirtschaft	34249	35462	30460	30712	9	2011	669	Financial Management
279	2008-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	75478	0	6	2008	11108	Social Insurance and Family Affairs
280	2008-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	87609	0	7	2008	12131	Social Insurance and Family Affairs
281	2008-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	98916	0	8	2008	11307	Social Insurance and Family Affairs
282	2008-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	110321	0	9	2008	11405	Social Insurance and Family Affairs
283	2008-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	121789	0	10	2008	11468	Social Insurance and Family Affairs
866	2010-04-01	Verkehrs- und Nachrichtenwesen	12426	12351	2790	2970	4	2010	1002	Transportation and Communications
284	2008-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	134631	0	11	2008	12842	Social Insurance and Family Affairs
285	2008-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	140439	0	12	2008	5808	Social Insurance and Family Affairs
286	2009-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	17022	17085	1	2009	17022	Social Insurance and Family Affairs
287	2009-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	28251	28694	2	2009	11229	Social Insurance and Family Affairs
288	2009-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	40229	39933	3	2009	11978	Social Insurance and Family Affairs
289	2009-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	147091	52168	51448	4	2009	11939	Social Insurance and Family Affairs
290	2009-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	63692	64370	5	2009	11524	Social Insurance and Family Affairs
291	2009-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	74905	75478	6	2009	11213	Social Insurance and Family Affairs
292	2009-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	86881	87609	7	2009	11976	Social Insurance and Family Affairs
293	2009-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	98833	98916	8	2009	11952	Social Insurance and Family Affairs
294	2009-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	111473	110321	9	2009	12640	Social Insurance and Family Affairs
295	2009-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	125327	121789	10	2009	13854	Social Insurance and Family Affairs
296	2009-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	139968	134631	11	2009	14641	Social Insurance and Family Affairs
297	2009-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	140439	152691	147716	140439	12	2009	7748	Social Insurance and Family Affairs
298	2010-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	176680	17996	17022	1	2010	17996	Social Insurance and Family Affairs
299	2010-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	31937	28251	2	2010	13941	Social Insurance and Family Affairs
300	2010-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	45834	40229	3	2010	13897	Social Insurance and Family Affairs
301	2010-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	59654	52168	4	2010	13820	Social Insurance and Family Affairs
302	2010-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	74390	63692	5	2010	14736	Social Insurance and Family Affairs
303	2010-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	87573	74905	6	2010	13183	Social Insurance and Family Affairs
304	2010-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	101475	86881	7	2010	13902	Social Insurance and Family Affairs
305	2010-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	114357	98833	8	2010	12882	Social Insurance and Family Affairs
306	2010-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	126664	111473	9	2010	12307	Social Insurance and Family Affairs
307	2010-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	139189	125327	10	2010	12525	Social Insurance and Family Affairs
308	2010-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	152177	139968	11	2010	12988	Social Insurance and Family Affairs
309	2010-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	147716	173074	163431	147716	12	2010	11254	Social Insurance and Family Affairs
310	2011-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	19244	17996	1	2011	19244	Social Insurance and Family Affairs
311	2011-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	32735	31937	2	2011	13491	Social Insurance and Family Affairs
312	2011-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	46700	45834	3	2011	13965	Social Insurance and Family Affairs
313	2011-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	58874	59654	4	2011	12174	Social Insurance and Family Affairs
314	2011-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	71812	74111	5	2011	12938	Social Insurance and Family Affairs
315	2011-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	84116	87419	6	2011	12304	Social Insurance and Family Affairs
316	2011-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	96966	101250	7	2011	12850	Social Insurance and Family Affairs
317	2011-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	109380	114196	8	2011	12414	Social Insurance and Family Affairs
318	2011-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	121688	126454	9	2011	12308	Social Insurance and Family Affairs
319	2011-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	133666	139016	10	2011	11978	Social Insurance and Family Affairs
320	2011-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	146208	151947	11	2011	12542	Social Insurance and Family Affairs
321	2011-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	163431	160005	155255	163431	12	2011	9047	Social Insurance and Family Affairs
322	2012-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155207	19009	19244	1	2012	19009	Social Insurance and Family Affairs
1006	2010-07-01	Allgemeine Finanzwirtschaft	39412	37532	29598	32414	7	2010	9406	Financial Management
323	2012-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155207	32067	32735	2	2012	13058	Social Insurance and Family Affairs
324	2012-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155207	44754	46700	3	2012	12687	Social Insurance and Family Affairs
325	2012-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155207	57177	58874	4	2012	12423	Social Insurance and Family Affairs
326	2012-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	154880	69421	71812	5	2012	12244	Social Insurance and Family Affairs
327	2012-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	154880	81539	84116	6	2012	12118	Social Insurance and Family Affairs
1021	2011-10-01	Allgemeine Finanzwirtschaft	34249	35462	32767	33286	10	2011	2307	Financial Management
328	2012-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	154880	95439	96966	7	2012	13900	Social Insurance and Family Affairs
329	2012-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	154880	107648	109380	8	2012	12209	Social Insurance and Family Affairs
330	2012-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155460	119482	121688	9	2012	11834	Social Insurance and Family Affairs
331	2012-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155460	131495	133666	10	2012	12013	Social Insurance and Family Affairs
332	2012-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155460	143843	146208	11	2012	12348	Social Insurance and Family Affairs
333	2012-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	155255	155460	153929	155255	12	2012	10086	Social Insurance and Family Affairs
334	2013-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	17840	0	1	2013	17840	Social Insurance and Family Affairs
335	2013-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	29507	0	2	2013	11667	Social Insurance and Family Affairs
336	2013-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	41930	0	3	2013	12423	Social Insurance and Family Affairs
337	2013-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	53859	0	4	2013	11929	Social Insurance and Family Affairs
338	2013-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	65903	0	5	2013	12044	Social Insurance and Family Affairs
339	2013-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	78297	0	6	2013	12394	Social Insurance and Family Affairs
340	2013-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	90612	0	7	2013	12315	Social Insurance and Family Affairs
341	2013-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	102585	0	8	2013	11973	Social Insurance and Family Affairs
342	2013-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	114774	0	9	2013	12189	Social Insurance and Family Affairs
343	2013-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	127592	0	10	2013	12818	Social Insurance and Family Affairs
344	2013-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	138865	0	11	2013	11273	Social Insurance and Family Affairs
345	2013-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	0	145124	145706	0	12	2013	6841	Social Insurance and Family Affairs
346	2014-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	0	18441	17840	1	2014	18441	Social Insurance and Family Affairs
347	2014-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	148162	30612	29507	2	2014	12171	Social Insurance and Family Affairs
348	2014-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	148162	43665	41930	3	2014	13053	Social Insurance and Family Affairs
349	2014-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	148162	55869	53859	4	2014	12204	Social Insurance and Family Affairs
350	2014-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	148162	68129	65903	5	2014	12260	Social Insurance and Family Affairs
351	2014-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	81380	78297	6	2014	13251	Social Insurance and Family Affairs
352	2014-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	94156	90612	7	2014	12776	Social Insurance and Family Affairs
353	2014-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	106530	102585	8	2014	12374	Social Insurance and Family Affairs
354	2014-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	118728	114774	9	2014	12198	Social Insurance and Family Affairs
355	2014-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	130309	127592	10	2014	11581	Social Insurance and Family Affairs
356	2014-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	142365	138865	11	2014	12056	Social Insurance and Family Affairs
357	2014-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	145706	147876	148783	145706	12	2014	6418	Social Insurance and Family Affairs
358	2015-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153144	18618	18441	1	2015	18618	Social Insurance and Family Affairs
359	2015-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153144	30595	30612	2	2015	11977	Social Insurance and Family Affairs
360	2015-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153144	44200	43665	3	2015	13605	Social Insurance and Family Affairs
361	2015-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153144	57202	55869	4	2015	13002	Social Insurance and Family Affairs
362	2015-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153338	69318	68129	5	2015	12116	Social Insurance and Family Affairs
363	2015-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153338	82811	81380	6	2015	13493	Social Insurance and Family Affairs
364	2015-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153338	95523	94156	7	2015	12712	Social Insurance and Family Affairs
365	2015-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153338	107832	106530	8	2015	12309	Social Insurance and Family Affairs
366	2015-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	153338	121267	118728	9	2015	13435	Social Insurance and Family Affairs
367	2015-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	154301	133705	130309	10	2015	12438	Social Insurance and Family Affairs
368	2015-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	154301	146220	142365	11	2015	12515	Social Insurance and Family Affairs
369	2015-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	148783	154301	153611	148783	12	2015	7391	Social Insurance and Family Affairs
370	2016-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	19237	18618	1	2016	19237	Social Insurance and Family Affairs
371	2016-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	31908	30595	2	2016	12671	Social Insurance and Family Affairs
372	2016-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	45240	44200	3	2016	13332	Social Insurance and Family Affairs
373	2016-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	58427	57202	4	2016	13187	Social Insurance and Family Affairs
374	2016-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	71441	69318	5	2016	13014	Social Insurance and Family Affairs
375	2016-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	84603	82811	6	2016	13162	Social Insurance and Family Affairs
376	2016-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	98369	95523	7	2016	13766	Social Insurance and Family Affairs
1022	2011-11-01	Allgemeine Finanzwirtschaft	34249	35462	33285	33522	11	2011	518	Financial Management
377	2016-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	111457	107832	8	2016	13088	Social Insurance and Family Affairs
378	2016-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	125130	121267	9	2016	13673	Social Insurance and Family Affairs
379	2016-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	138358	133705	10	2016	13228	Social Insurance and Family Affairs
380	2016-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	152005	146220	11	2016	13647	Social Insurance and Family Affairs
381	2016-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	153611	161485	160251	153611	12	2016	8246	Social Insurance and Family Affairs
382	2017-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160251	170486	20270	19237	1	2017	20270	Social Insurance and Family Affairs
383	2017-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	33716	31908	2	2017	13446	Social Insurance and Family Affairs
384	2017-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	47696	45240	3	2017	13980	Social Insurance and Family Affairs
385	2017-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	61970	58427	4	2017	14274	Social Insurance and Family Affairs
386	2017-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	75826	71441	5	2017	13856	Social Insurance and Family Affairs
387	2017-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	89604	84603	6	2017	13778	Social Insurance and Family Affairs
388	2017-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	104193	98369	7	2017	14589	Social Insurance and Family Affairs
389	2017-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	118378	111457	8	2017	14185	Social Insurance and Family Affairs
390	2017-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	132333	125130	9	2017	13955	Social Insurance and Family Affairs
391	2017-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	146673	138358	10	2017	14340	Social Insurance and Family Affairs
392	2017-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	161076	152005	11	2017	14403	Social Insurance and Family Affairs
393	2017-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	160593	170486	168801	160593	12	2017	7725	Social Insurance and Family Affairs
394	2018-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	0	21130	20270	1	2018	21130	Social Insurance and Family Affairs
395	2018-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	0	35455	33716	2	2018	14325	Social Insurance and Family Affairs
396	2018-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	0	49688	47696	3	2018	14233	Social Insurance and Family Affairs
397	2018-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	0	64613	61970	4	2018	14925	Social Insurance and Family Affairs
398	2018-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	0	78497	75826	5	2018	13884	Social Insurance and Family Affairs
399	2018-06-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	92461	89604	6	2018	13964	Social Insurance and Family Affairs
1007	2010-08-01	Allgemeine Finanzwirtschaft	39412	37532	29923	32679	8	2010	325	Financial Management
400	2018-07-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	107492	104193	7	2018	15031	Social Insurance and Family Affairs
401	2018-08-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	121734	118378	8	2018	14242	Social Insurance and Family Affairs
402	2018-09-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	135665	132333	9	2018	13931	Social Insurance and Family Affairs
403	2018-10-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	150515	146673	10	2018	14850	Social Insurance and Family Affairs
404	2018-11-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	165159	161076	11	2018	14644	Social Insurance and Family Affairs
405	2018-12-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	168801	173006	172190	168801	12	2018	7031	Social Insurance and Family Affairs
406	2019-01-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	172190	179537	22576	21130	1	2019	22576	Social Insurance and Family Affairs
407	2019-02-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	172190	179537	36856	35455	2	2019	14280	Social Insurance and Family Affairs
408	2019-03-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	172190	179537	51320	49688	3	2019	14464	Social Insurance and Family Affairs
409	2019-04-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	172190	179537	66430	64613	4	2019	15110	Social Insurance and Family Affairs
410	2019-05-01	Soziale Sicherung, Familie und Jugend, Arbeitsmarktpolitik	172190	179537	80924	78497	5	2019	14494	Social Insurance and Family Affairs
411	2008-01-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	81	0	1	2008	81	Health, Environment, Sport and Recreation
412	2008-02-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	135	0	2	2008	54	Health, Environment, Sport and Recreation
413	2008-03-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	189	0	3	2008	54	Health, Environment, Sport and Recreation
414	2008-04-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	254	0	4	2008	65	Health, Environment, Sport and Recreation
415	2008-05-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	0	0	5	2008	-254	Health, Environment, Sport and Recreation
416	2008-06-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	430	0	6	2008	430	Health, Environment, Sport and Recreation
417	2008-07-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	502	0	7	2008	72	Health, Environment, Sport and Recreation
418	2008-08-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	570	0	8	2008	68	Health, Environment, Sport and Recreation
419	2008-09-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	637	0	9	2008	67	Health, Environment, Sport and Recreation
420	2008-10-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	711	0	10	2008	74	Health, Environment, Sport and Recreation
421	2008-11-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	818	0	11	2008	107	Health, Environment, Sport and Recreation
422	2008-12-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	1058	0	12	2008	240	Health, Environment, Sport and Recreation
423	2009-01-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	72	81	1	2009	72	Health, Environment, Sport and Recreation
424	2009-02-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	127	135	2	2009	55	Health, Environment, Sport and Recreation
425	2009-03-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	218	189	3	2009	91	Health, Environment, Sport and Recreation
426	2009-04-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	296	254	4	2009	78	Health, Environment, Sport and Recreation
427	2009-05-01	Gesundheit, Umwelt, Sport, Erholung	1058	1208	0	0	5	2009	-296	Health, Environment, Sport and Recreation
428	2009-06-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	466	430	6	2009	466	Health, Environment, Sport and Recreation
429	2009-07-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	567	502	7	2009	101	Health, Environment, Sport and Recreation
430	2009-08-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	650	570	8	2009	83	Health, Environment, Sport and Recreation
431	2009-09-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	726	637	9	2009	76	Health, Environment, Sport and Recreation
432	2009-10-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	826	711	10	2009	100	Health, Environment, Sport and Recreation
433	2009-11-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	938	818	11	2009	112	Health, Environment, Sport and Recreation
434	2009-12-01	Gesundheit, Umwelt, Sport, Erholung	1058	1274	1251	1058	12	2009	313	Health, Environment, Sport and Recreation
435	2010-01-01	Gesundheit, Umwelt, Sport, Erholung	1251	1434	62	72	1	2010	62	Health, Environment, Sport and Recreation
436	2010-02-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	147	127	2	2010	85	Health, Environment, Sport and Recreation
437	2010-03-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	220	218	3	2010	73	Health, Environment, Sport and Recreation
438	2010-04-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	288	296	4	2010	68	Health, Environment, Sport and Recreation
439	2010-05-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	362	365	5	2010	74	Health, Environment, Sport and Recreation
440	2010-06-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	443	466	6	2010	81	Health, Environment, Sport and Recreation
441	2010-07-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	566	567	7	2010	123	Health, Environment, Sport and Recreation
442	2010-08-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	666	650	8	2010	100	Health, Environment, Sport and Recreation
443	2010-09-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	738	726	9	2010	72	Health, Environment, Sport and Recreation
444	2010-10-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	854	826	10	2010	116	Health, Environment, Sport and Recreation
445	2010-11-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	1007	938	11	2010	153	Health, Environment, Sport and Recreation
446	2010-12-01	Gesundheit, Umwelt, Sport, Erholung	1251	1414	1255	1251	12	2010	248	Health, Environment, Sport and Recreation
447	2011-01-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	120	62	1	2011	120	Health, Environment, Sport and Recreation
448	2011-02-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	214	147	2	2011	94	Health, Environment, Sport and Recreation
449	2011-03-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	295	220	3	2011	81	Health, Environment, Sport and Recreation
450	2011-04-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	374	288	4	2011	79	Health, Environment, Sport and Recreation
451	2011-05-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	463	362	5	2011	89	Health, Environment, Sport and Recreation
452	2011-06-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	542	443	6	2011	79	Health, Environment, Sport and Recreation
453	2011-07-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	642	566	7	2011	100	Health, Environment, Sport and Recreation
454	2011-08-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	762	666	8	2011	120	Health, Environment, Sport and Recreation
455	2011-09-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	854	738	9	2011	92	Health, Environment, Sport and Recreation
456	2011-10-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	951	854	10	2011	97	Health, Environment, Sport and Recreation
457	2011-11-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	1100	1007	11	2011	149	Health, Environment, Sport and Recreation
458	2011-12-01	Gesundheit, Umwelt, Sport, Erholung	1255	1580	1335	1255	12	2011	235	Health, Environment, Sport and Recreation
459	2012-01-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	124	120	1	2012	124	Health, Environment, Sport and Recreation
460	2012-02-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	202	214	2	2012	78	Health, Environment, Sport and Recreation
461	2012-03-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	290	295	3	2012	88	Health, Environment, Sport and Recreation
462	2012-04-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	388	374	4	2012	98	Health, Environment, Sport and Recreation
463	2012-05-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	487	463	5	2012	99	Health, Environment, Sport and Recreation
464	2012-06-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	587	542	6	2012	100	Health, Environment, Sport and Recreation
465	2012-07-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	718	642	7	2012	131	Health, Environment, Sport and Recreation
466	2012-08-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	823	762	8	2012	105	Health, Environment, Sport and Recreation
467	2012-09-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	948	854	9	2012	125	Health, Environment, Sport and Recreation
468	2012-10-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	1056	951	10	2012	108	Health, Environment, Sport and Recreation
469	2012-11-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	1195	1100	11	2012	139	Health, Environment, Sport and Recreation
470	2012-12-01	Gesundheit, Umwelt, Sport, Erholung	1335	1548	1398	1335	12	2012	203	Health, Environment, Sport and Recreation
471	2013-01-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	151	0	1	2013	151	Health, Environment, Sport and Recreation
472	2013-02-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	251	0	2	2013	100	Health, Environment, Sport and Recreation
473	2013-03-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	352	0	3	2013	101	Health, Environment, Sport and Recreation
474	2013-04-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	461	0	4	2013	109	Health, Environment, Sport and Recreation
475	2013-05-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	570	0	5	2013	109	Health, Environment, Sport and Recreation
476	2013-06-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	678	0	6	2013	108	Health, Environment, Sport and Recreation
477	2013-07-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	813	0	7	2013	135	Health, Environment, Sport and Recreation
478	2013-08-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	936	0	8	2013	123	Health, Environment, Sport and Recreation
479	2013-09-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	1087	0	9	2013	151	Health, Environment, Sport and Recreation
480	2013-10-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	1208	0	10	2013	121	Health, Environment, Sport and Recreation
481	2013-11-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	1400	0	11	2013	192	Health, Environment, Sport and Recreation
482	2013-12-01	Gesundheit, Umwelt, Sport, Erholung	0	1740	1633	0	12	2013	233	Health, Environment, Sport and Recreation
483	2014-01-01	Gesundheit, Umwelt, Sport, Erholung	1633	0	112	151	1	2014	112	Health, Environment, Sport and Recreation
484	2014-02-01	Gesundheit, Umwelt, Sport, Erholung	1633	2006	227	251	2	2014	115	Health, Environment, Sport and Recreation
485	2014-03-01	Gesundheit, Umwelt, Sport, Erholung	1633	2006	336	352	3	2014	109	Health, Environment, Sport and Recreation
486	2014-04-01	Gesundheit, Umwelt, Sport, Erholung	1633	2006	457	461	4	2014	121	Health, Environment, Sport and Recreation
487	2014-05-01	Gesundheit, Umwelt, Sport, Erholung	1633	2006	578	570	5	2014	121	Health, Environment, Sport and Recreation
488	2014-06-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	695	678	6	2014	117	Health, Environment, Sport and Recreation
489	2014-07-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	848	813	7	2014	153	Health, Environment, Sport and Recreation
490	2014-08-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	989	936	8	2014	141	Health, Environment, Sport and Recreation
491	2014-09-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	1160	1087	9	2014	171	Health, Environment, Sport and Recreation
492	2014-10-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	1292	1208	10	2014	132	Health, Environment, Sport and Recreation
493	2014-11-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	1486	1400	11	2014	194	Health, Environment, Sport and Recreation
494	2014-12-01	Gesundheit, Umwelt, Sport, Erholung	1633	2008	1889	1633	12	2014	403	Health, Environment, Sport and Recreation
495	2015-01-01	Gesundheit, Umwelt, Sport, Erholung	1889	2031	151	112	1	2015	151	Health, Environment, Sport and Recreation
496	2015-02-01	Gesundheit, Umwelt, Sport, Erholung	1889	2031	256	227	2	2015	105	Health, Environment, Sport and Recreation
497	2015-03-01	Gesundheit, Umwelt, Sport, Erholung	1889	2031	389	336	3	2015	133	Health, Environment, Sport and Recreation
498	2015-04-01	Gesundheit, Umwelt, Sport, Erholung	1889	2031	527	457	4	2015	138	Health, Environment, Sport and Recreation
499	2015-05-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	620	578	5	2015	93	Health, Environment, Sport and Recreation
500	2015-06-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	781	695	6	2015	161	Health, Environment, Sport and Recreation
501	2015-07-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	922	848	7	2015	141	Health, Environment, Sport and Recreation
502	2015-08-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	1055	989	8	2015	133	Health, Environment, Sport and Recreation
503	2015-09-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	1224	1160	9	2015	169	Health, Environment, Sport and Recreation
504	2015-10-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	1372	1292	10	2015	148	Health, Environment, Sport and Recreation
505	2015-11-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	1565	1486	11	2015	193	Health, Environment, Sport and Recreation
506	2015-12-01	Gesundheit, Umwelt, Sport, Erholung	1889	2041	1915	1889	12	2015	350	Health, Environment, Sport and Recreation
507	2016-01-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	130	151	1	2016	130	Health, Environment, Sport and Recreation
508	2016-02-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	271	256	2	2016	141	Health, Environment, Sport and Recreation
509	2016-03-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	394	389	3	2016	123	Health, Environment, Sport and Recreation
510	2016-04-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	543	527	4	2016	149	Health, Environment, Sport and Recreation
511	2016-05-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	695	620	5	2016	152	Health, Environment, Sport and Recreation
512	2016-06-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	838	781	6	2016	143	Health, Environment, Sport and Recreation
513	2016-07-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	995	922	7	2016	157	Health, Environment, Sport and Recreation
514	2016-08-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	1176	1055	8	2016	181	Health, Environment, Sport and Recreation
515	2016-09-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	1318	1224	9	2016	142	Health, Environment, Sport and Recreation
516	2016-10-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	1470	1372	10	2016	152	Health, Environment, Sport and Recreation
517	2016-11-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	1659	1565	11	2016	189	Health, Environment, Sport and Recreation
518	2016-12-01	Gesundheit, Umwelt, Sport, Erholung	1915	2312	2074	1915	12	2016	415	Health, Environment, Sport and Recreation
519	2017-01-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	178	130	1	2017	178	Health, Environment, Sport and Recreation
520	2017-02-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	298	271	2	2017	120	Health, Environment, Sport and Recreation
521	2017-03-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	436	394	3	2017	138	Health, Environment, Sport and Recreation
522	2017-04-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	627	543	4	2017	191	Health, Environment, Sport and Recreation
523	2017-05-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	770	695	5	2017	143	Health, Environment, Sport and Recreation
524	2017-06-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	917	838	6	2017	147	Health, Environment, Sport and Recreation
525	2017-07-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	1073	995	7	2017	156	Health, Environment, Sport and Recreation
526	2017-08-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	1251	1176	8	2017	178	Health, Environment, Sport and Recreation
527	2017-09-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	1409	1318	9	2017	158	Health, Environment, Sport and Recreation
528	2017-10-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	1558	1470	10	2017	149	Health, Environment, Sport and Recreation
529	2017-11-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	1811	1659	11	2017	253	Health, Environment, Sport and Recreation
530	2017-12-01	Gesundheit, Umwelt, Sport, Erholung	2074	2324	2303	2074	12	2017	492	Health, Environment, Sport and Recreation
531	2018-01-01	Gesundheit, Umwelt, Sport, Erholung	2303	0	119	178	1	2018	119	Health, Environment, Sport and Recreation
532	2018-02-01	Gesundheit, Umwelt, Sport, Erholung	2303	0	254	298	2	2018	135	Health, Environment, Sport and Recreation
533	2018-03-01	Gesundheit, Umwelt, Sport, Erholung	2303	0	388	436	3	2018	134	Health, Environment, Sport and Recreation
534	2018-04-01	Gesundheit, Umwelt, Sport, Erholung	2303	0	562	627	4	2018	174	Health, Environment, Sport and Recreation
535	2018-05-01	Gesundheit, Umwelt, Sport, Erholung	2303	0	763	770	5	2018	201	Health, Environment, Sport and Recreation
536	2018-06-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	909	917	6	2018	146	Health, Environment, Sport and Recreation
537	2018-07-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	1060	1073	7	2018	151	Health, Environment, Sport and Recreation
538	2018-08-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	1245	1251	8	2018	185	Health, Environment, Sport and Recreation
539	2018-09-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	1475	1409	9	2018	230	Health, Environment, Sport and Recreation
540	2018-10-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	1669	1558	10	2018	194	Health, Environment, Sport and Recreation
541	2018-11-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	1877	1811	11	2018	208	Health, Environment, Sport and Recreation
542	2018-12-01	Gesundheit, Umwelt, Sport, Erholung	2303	2856	2477	2303	12	2018	600	Health, Environment, Sport and Recreation
543	2019-01-01	Gesundheit, Umwelt, Sport, Erholung	2477	3720	226	119	1	2019	226	Health, Environment, Sport and Recreation
544	2019-02-01	Gesundheit, Umwelt, Sport, Erholung	2477	3720	399	254	2	2019	173	Health, Environment, Sport and Recreation
545	2019-03-01	Gesundheit, Umwelt, Sport, Erholung	2477	3720	558	388	3	2019	159	Health, Environment, Sport and Recreation
546	2019-04-01	Gesundheit, Umwelt, Sport, Erholung	2477	3720	772	562	4	2019	214	Health, Environment, Sport and Recreation
547	2019-05-01	Gesundheit, Umwelt, Sport, Erholung	2477	3720	937	763	5	2019	165	Health, Environment, Sport and Recreation
548	2008-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	141	0	1	2008	141	Housing, Regional Planning, and Community Services
549	2008-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	198	0	2	2008	57	Housing, Regional Planning, and Community Services
550	2008-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	275	0	3	2008	77	Housing, Regional Planning, and Community Services
551	2008-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	471	0	4	2008	196	Housing, Regional Planning, and Community Services
552	2008-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	0	0	5	2008	-471	Housing, Regional Planning, and Community Services
553	2008-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	582	0	6	2008	582	Housing, Regional Planning, and Community Services
554	2008-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	800	0	7	2008	218	Housing, Regional Planning, and Community Services
555	2008-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	867	0	8	2008	67	Housing, Regional Planning, and Community Services
556	2008-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	958	0	9	2008	91	Housing, Regional Planning, and Community Services
557	2008-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1168	0	10	2008	210	Housing, Regional Planning, and Community Services
558	2008-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1276	0	11	2008	108	Housing, Regional Planning, and Community Services
559	2008-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1607	0	12	2008	331	Housing, Regional Planning, and Community Services
560	2009-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	124	141	1	2009	124	Housing, Regional Planning, and Community Services
561	2009-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	176	198	2	2009	52	Housing, Regional Planning, and Community Services
562	2009-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	252	275	3	2009	76	Housing, Regional Planning, and Community Services
563	2009-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	436	471	4	2009	184	Housing, Regional Planning, and Community Services
564	2009-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	0	0	5	2009	-436	Housing, Regional Planning, and Community Services
565	2009-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	602	582	6	2009	602	Housing, Regional Planning, and Community Services
566	2009-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	846	800	7	2009	244	Housing, Regional Planning, and Community Services
567	2009-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	908	867	8	2009	62	Housing, Regional Planning, and Community Services
568	2009-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1010	958	9	2009	102	Housing, Regional Planning, and Community Services
569	2009-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1241	1168	10	2009	231	Housing, Regional Planning, and Community Services
570	2009-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1435	1276	11	2009	194	Housing, Regional Planning, and Community Services
571	2009-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1607	1857	1808	1607	12	2009	373	Housing, Regional Planning, and Community Services
572	2010-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	132	124	1	2010	132	Housing, Regional Planning, and Community Services
573	2010-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	205	176	2	2010	73	Housing, Regional Planning, and Community Services
574	2010-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	284	252	3	2010	79	Housing, Regional Planning, and Community Services
575	2010-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	512	436	4	2010	228	Housing, Regional Planning, and Community Services
714	2015-06-01	Ernährung, Landwirtschaft und Forsten	862	972	226	204	6	2015	47	Food, Agriculture, and Forestry
576	2010-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	605	520	5	2010	93	Housing, Regional Planning, and Community Services
577	2010-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	713	602	6	2010	108	Housing, Regional Planning, and Community Services
578	2010-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	969	846	7	2010	256	Housing, Regional Planning, and Community Services
579	2010-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	1072	908	8	2010	103	Housing, Regional Planning, and Community Services
580	2010-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	1200	1010	9	2010	128	Housing, Regional Planning, and Community Services
581	2010-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	1455	1241	10	2010	255	Housing, Regional Planning, and Community Services
582	2010-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	1613	1435	11	2010	158	Housing, Regional Planning, and Community Services
583	2010-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	1808	2034	2114	1808	12	2010	501	Housing, Regional Planning, and Community Services
584	2011-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	141	132	1	2011	141	Housing, Regional Planning, and Community Services
585	2011-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	223	205	2	2011	82	Housing, Regional Planning, and Community Services
586	2011-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	346	284	3	2011	123	Housing, Regional Planning, and Community Services
587	2011-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	520	512	4	2011	174	Housing, Regional Planning, and Community Services
588	2011-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	641	605	5	2011	121	Housing, Regional Planning, and Community Services
589	2011-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	757	713	6	2011	116	Housing, Regional Planning, and Community Services
590	2011-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	1022	969	7	2011	265	Housing, Regional Planning, and Community Services
591	2011-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	1146	1072	8	2011	124	Housing, Regional Planning, and Community Services
592	2011-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	1276	1200	9	2011	130	Housing, Regional Planning, and Community Services
593	2011-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	1516	1455	10	2011	240	Housing, Regional Planning, and Community Services
594	2011-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	1669	1613	11	2011	153	Housing, Regional Planning, and Community Services
595	2011-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2114	2098	2033	2114	12	2011	364	Housing, Regional Planning, and Community Services
596	2012-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	179	141	1	2012	179	Housing, Regional Planning, and Community Services
597	2012-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	277	223	2	2012	98	Housing, Regional Planning, and Community Services
598	2012-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	415	346	3	2012	138	Housing, Regional Planning, and Community Services
599	2012-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	585	520	4	2012	170	Housing, Regional Planning, and Community Services
600	2012-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	735	641	5	2012	150	Housing, Regional Planning, and Community Services
601	2012-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	855	757	6	2012	120	Housing, Regional Planning, and Community Services
602	2012-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	1127	1022	7	2012	272	Housing, Regional Planning, and Community Services
603	2012-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	1232	1146	8	2012	105	Housing, Regional Planning, and Community Services
604	2012-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	1338	1276	9	2012	106	Housing, Regional Planning, and Community Services
605	2012-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	1579	1516	10	2012	241	Housing, Regional Planning, and Community Services
606	2012-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	1745	1669	11	2012	166	Housing, Regional Planning, and Community Services
607	2012-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2033	2066	2089	2033	12	2012	344	Housing, Regional Planning, and Community Services
608	2013-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	156	0	1	2013	156	Housing, Regional Planning, and Community Services
609	2013-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	305	0	2	2013	149	Housing, Regional Planning, and Community Services
610	2013-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	453	0	3	2013	148	Housing, Regional Planning, and Community Services
611	2013-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	699	0	4	2013	246	Housing, Regional Planning, and Community Services
612	2013-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	848	0	5	2013	149	Housing, Regional Planning, and Community Services
613	2013-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	979	0	6	2013	131	Housing, Regional Planning, and Community Services
614	2013-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	1243	0	7	2013	264	Housing, Regional Planning, and Community Services
615	2013-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	1372	0	8	2013	129	Housing, Regional Planning, and Community Services
616	2013-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	1511	0	9	2013	139	Housing, Regional Planning, and Community Services
617	2013-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	1738	0	10	2013	227	Housing, Regional Planning, and Community Services
618	2013-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	1941	0	11	2013	203	Housing, Regional Planning, and Community Services
619	2013-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	0	2315	2304	0	12	2013	363	Housing, Regional Planning, and Community Services
620	2014-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	0	152	156	1	2014	152	Housing, Regional Planning, and Community Services
621	2014-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2182	295	305	2	2014	143	Housing, Regional Planning, and Community Services
622	2014-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2182	415	453	3	2014	120	Housing, Regional Planning, and Community Services
623	2014-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2182	631	699	4	2014	216	Housing, Regional Planning, and Community Services
624	2014-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2182	777	848	5	2014	146	Housing, Regional Planning, and Community Services
625	2014-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	911	979	6	2014	134	Housing, Regional Planning, and Community Services
626	2014-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	1133	1243	7	2014	222	Housing, Regional Planning, and Community Services
627	2014-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	1250	1372	8	2014	117	Housing, Regional Planning, and Community Services
628	2014-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	1341	1511	9	2014	91	Housing, Regional Planning, and Community Services
629	2014-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	1540	1738	10	2014	199	Housing, Regional Planning, and Community Services
630	2014-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	1684	1941	11	2014	144	Housing, Regional Planning, and Community Services
631	2014-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2304	2192	2010	2304	12	2014	326	Housing, Regional Planning, and Community Services
632	2015-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2184	150	152	1	2015	150	Housing, Regional Planning, and Community Services
633	2015-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2184	283	295	2	2015	133	Housing, Regional Planning, and Community Services
634	2015-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2184	427	415	3	2015	144	Housing, Regional Planning, and Community Services
635	2015-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2184	622	631	4	2015	195	Housing, Regional Planning, and Community Services
636	2015-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	748	777	5	2015	126	Housing, Regional Planning, and Community Services
637	2015-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	877	911	6	2015	129	Housing, Regional Planning, and Community Services
638	2015-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	1124	1133	7	2015	247	Housing, Regional Planning, and Community Services
639	2015-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	1236	1250	8	2015	112	Housing, Regional Planning, and Community Services
640	2015-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	1335	1341	9	2015	99	Housing, Regional Planning, and Community Services
641	2015-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	1507	1540	10	2015	172	Housing, Regional Planning, and Community Services
642	2015-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	1667	1684	11	2015	160	Housing, Regional Planning, and Community Services
643	2015-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2010	2194	2004	2010	12	2015	337	Housing, Regional Planning, and Community Services
644	2016-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	255	150	1	2016	255	Housing, Regional Planning, and Community Services
645	2016-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	402	283	2	2016	147	Housing, Regional Planning, and Community Services
646	2016-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	580	427	3	2016	178	Housing, Regional Planning, and Community Services
647	2016-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	874	622	4	2016	294	Housing, Regional Planning, and Community Services
648	2016-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	994	748	5	2016	120	Housing, Regional Planning, and Community Services
649	2016-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	1117	877	6	2016	123	Housing, Regional Planning, and Community Services
650	2016-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	1482	1124	7	2016	365	Housing, Regional Planning, and Community Services
651	2016-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	1579	1236	8	2016	97	Housing, Regional Planning, and Community Services
652	2016-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	1666	1335	9	2016	87	Housing, Regional Planning, and Community Services
653	2016-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	1960	1507	10	2016	294	Housing, Regional Planning, and Community Services
654	2016-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	2130	1667	11	2016	170	Housing, Regional Planning, and Community Services
655	2016-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2004	2502	2427	2004	12	2016	297	Housing, Regional Planning, and Community Services
656	2017-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	345	255	1	2017	345	Housing, Regional Planning, and Community Services
657	2017-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	456	402	2	2017	111	Housing, Regional Planning, and Community Services
658	2017-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	642	580	3	2017	186	Housing, Regional Planning, and Community Services
659	2017-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	1052	874	4	2017	410	Housing, Regional Planning, and Community Services
660	2017-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	1184	994	5	2017	132	Housing, Regional Planning, and Community Services
661	2017-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	1315	1117	6	2017	131	Housing, Regional Planning, and Community Services
662	2017-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	1725	1482	7	2017	410	Housing, Regional Planning, and Community Services
663	2017-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	1870	1579	8	2017	145	Housing, Regional Planning, and Community Services
664	2017-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	1968	1666	9	2017	98	Housing, Regional Planning, and Community Services
665	2017-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	2334	1960	10	2017	366	Housing, Regional Planning, and Community Services
666	2017-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	2579	2130	11	2017	245	Housing, Regional Planning, and Community Services
667	2017-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2427	3324	2923	2427	12	2017	344	Housing, Regional Planning, and Community Services
668	2018-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	0	311	345	1	2018	311	Housing, Regional Planning, and Community Services
669	2018-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	0	411	456	2	2018	100	Housing, Regional Planning, and Community Services
670	2018-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	0	601	642	3	2018	190	Housing, Regional Planning, and Community Services
671	2018-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	0	1002	1052	4	2018	401	Housing, Regional Planning, and Community Services
672	2018-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	0	1140	1184	5	2018	138	Housing, Regional Planning, and Community Services
673	2018-06-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	1267	1315	6	2018	127	Housing, Regional Planning, and Community Services
674	2018-07-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	1673	1725	7	2018	406	Housing, Regional Planning, and Community Services
675	2018-08-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	1773	1870	8	2018	100	Housing, Regional Planning, and Community Services
676	2018-09-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	1861	1968	9	2018	88	Housing, Regional Planning, and Community Services
677	2018-10-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	2199	2334	10	2018	338	Housing, Regional Planning, and Community Services
678	2018-11-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	2536	2579	11	2018	337	Housing, Regional Planning, and Community Services
679	2018-12-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2923	3549	2947	2923	12	2018	411	Housing, Regional Planning, and Community Services
680	2019-01-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2947	3783	340	311	1	2019	340	Housing, Regional Planning, and Community Services
681	2019-02-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2947	3783	448	411	2	2019	108	Housing, Regional Planning, and Community Services
682	2019-03-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2947	3783	587	601	3	2019	139	Housing, Regional Planning, and Community Services
683	2019-04-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2947	3783	960	1002	4	2019	373	Housing, Regional Planning, and Community Services
684	2019-05-01	Wohnungswesen, Raumordnung und kommunale Gemeinschaftsdienste	2947	3783	1119	1140	5	2019	159	Housing, Regional Planning, and Community Services
685	2013-01-01	Ernährung, Landwirtschaft und Forsten	0	975	30	0	1	2013	30	Food, Agriculture, and Forestry
686	2013-02-01	Ernährung, Landwirtschaft und Forsten	0	975	56	0	2	2013	26	Food, Agriculture, and Forestry
1023	2011-12-01	Allgemeine Finanzwirtschaft	34249	35462	33825	34249	12	2011	540	Financial Management
687	2013-03-01	Ernährung, Landwirtschaft und Forsten	0	975	91	0	3	2013	35	Food, Agriculture, and Forestry
688	2013-04-01	Ernährung, Landwirtschaft und Forsten	0	975	128	0	4	2013	37	Food, Agriculture, and Forestry
689	2013-05-01	Ernährung, Landwirtschaft und Forsten	0	975	171	0	5	2013	43	Food, Agriculture, and Forestry
690	2013-06-01	Ernährung, Landwirtschaft und Forsten	0	975	219	0	6	2013	48	Food, Agriculture, and Forestry
691	2013-07-01	Ernährung, Landwirtschaft und Forsten	0	975	289	0	7	2013	70	Food, Agriculture, and Forestry
692	2013-08-01	Ernährung, Landwirtschaft und Forsten	0	975	334	0	8	2013	45	Food, Agriculture, and Forestry
693	2013-09-01	Ernährung, Landwirtschaft und Forsten	0	975	396	0	9	2013	62	Food, Agriculture, and Forestry
694	2013-10-01	Ernährung, Landwirtschaft und Forsten	0	975	518	0	10	2013	122	Food, Agriculture, and Forestry
695	2013-11-01	Ernährung, Landwirtschaft und Forsten	0	975	628	0	11	2013	110	Food, Agriculture, and Forestry
696	2013-12-01	Ernährung, Landwirtschaft und Forsten	0	975	904	0	12	2013	276	Food, Agriculture, and Forestry
697	2014-01-01	Ernährung, Landwirtschaft und Forsten	904	0	15	30	1	2014	15	Food, Agriculture, and Forestry
698	2014-02-01	Ernährung, Landwirtschaft und Forsten	904	954	57	56	2	2014	42	Food, Agriculture, and Forestry
699	2014-03-01	Ernährung, Landwirtschaft und Forsten	904	954	97	91	3	2014	40	Food, Agriculture, and Forestry
700	2014-04-01	Ernährung, Landwirtschaft und Forsten	904	954	130	128	4	2014	33	Food, Agriculture, and Forestry
701	2014-05-01	Ernährung, Landwirtschaft und Forsten	904	954	162	171	5	2014	32	Food, Agriculture, and Forestry
702	2014-06-01	Ernährung, Landwirtschaft und Forsten	904	960	204	219	6	2014	42	Food, Agriculture, and Forestry
703	2014-07-01	Ernährung, Landwirtschaft und Forsten	904	960	284	289	7	2014	80	Food, Agriculture, and Forestry
704	2014-08-01	Ernährung, Landwirtschaft und Forsten	904	960	328	334	8	2014	44	Food, Agriculture, and Forestry
705	2014-09-01	Ernährung, Landwirtschaft und Forsten	904	960	387	396	9	2014	59	Food, Agriculture, and Forestry
706	2014-10-01	Ernährung, Landwirtschaft und Forsten	904	960	485	518	10	2014	98	Food, Agriculture, and Forestry
707	2014-11-01	Ernährung, Landwirtschaft und Forsten	904	960	585	628	11	2014	100	Food, Agriculture, and Forestry
708	2014-12-01	Ernährung, Landwirtschaft und Forsten	904	960	862	904	12	2014	277	Food, Agriculture, and Forestry
709	2015-01-01	Ernährung, Landwirtschaft und Forsten	862	972	27	15	1	2015	27	Food, Agriculture, and Forestry
710	2015-02-01	Ernährung, Landwirtschaft und Forsten	862	972	50	57	2	2015	23	Food, Agriculture, and Forestry
711	2015-03-01	Ernährung, Landwirtschaft und Forsten	862	972	96	97	3	2015	46	Food, Agriculture, and Forestry
712	2015-04-01	Ernährung, Landwirtschaft und Forsten	862	972	145	130	4	2015	49	Food, Agriculture, and Forestry
713	2015-05-01	Ernährung, Landwirtschaft und Forsten	862	972	179	162	5	2015	34	Food, Agriculture, and Forestry
715	2015-07-01	Ernährung, Landwirtschaft und Forsten	862	972	285	284	7	2015	59	Food, Agriculture, and Forestry
716	2015-08-01	Ernährung, Landwirtschaft und Forsten	862	972	354	328	8	2015	69	Food, Agriculture, and Forestry
717	2015-09-01	Ernährung, Landwirtschaft und Forsten	862	972	398	387	9	2015	44	Food, Agriculture, and Forestry
718	2015-10-01	Ernährung, Landwirtschaft und Forsten	862	972	467	485	10	2015	69	Food, Agriculture, and Forestry
719	2015-11-01	Ernährung, Landwirtschaft und Forsten	862	972	580	585	11	2015	113	Food, Agriculture, and Forestry
720	2015-12-01	Ernährung, Landwirtschaft und Forsten	862	972	846	862	12	2015	266	Food, Agriculture, and Forestry
721	2016-01-01	Ernährung, Landwirtschaft und Forsten	846	1066	40	27	1	2016	40	Food, Agriculture, and Forestry
722	2016-02-01	Ernährung, Landwirtschaft und Forsten	846	1066	66	50	2	2016	26	Food, Agriculture, and Forestry
723	2016-03-01	Ernährung, Landwirtschaft und Forsten	846	1066	103	96	3	2016	37	Food, Agriculture, and Forestry
724	2016-04-01	Ernährung, Landwirtschaft und Forsten	846	1066	164	145	4	2016	61	Food, Agriculture, and Forestry
725	2016-05-01	Ernährung, Landwirtschaft und Forsten	846	1066	201	179	5	2016	37	Food, Agriculture, and Forestry
726	2016-06-01	Ernährung, Landwirtschaft und Forsten	846	1066	244	226	6	2016	43	Food, Agriculture, and Forestry
727	2016-07-01	Ernährung, Landwirtschaft und Forsten	846	1066	300	285	7	2016	56	Food, Agriculture, and Forestry
728	2016-08-01	Ernährung, Landwirtschaft und Forsten	846	1066	354	354	8	2016	54	Food, Agriculture, and Forestry
729	2016-09-01	Ernährung, Landwirtschaft und Forsten	846	1066	425	398	9	2016	71	Food, Agriculture, and Forestry
730	2016-10-01	Ernährung, Landwirtschaft und Forsten	846	1066	473	467	10	2016	48	Food, Agriculture, and Forestry
731	2016-11-01	Ernährung, Landwirtschaft und Forsten	846	1066	604	580	11	2016	131	Food, Agriculture, and Forestry
732	2016-12-01	Ernährung, Landwirtschaft und Forsten	846	1066	900	846	12	2016	296	Food, Agriculture, and Forestry
733	2017-01-01	Ernährung, Landwirtschaft und Forsten	900	1250	20	40	1	2017	20	Food, Agriculture, and Forestry
734	2017-02-01	Ernährung, Landwirtschaft und Forsten	900	1250	71	66	2	2017	51	Food, Agriculture, and Forestry
735	2017-03-01	Ernährung, Landwirtschaft und Forsten	900	1250	114	103	3	2017	43	Food, Agriculture, and Forestry
736	2017-04-01	Ernährung, Landwirtschaft und Forsten	900	1250	172	164	4	2017	58	Food, Agriculture, and Forestry
737	2017-05-01	Ernährung, Landwirtschaft und Forsten	900	1250	225	201	5	2017	53	Food, Agriculture, and Forestry
738	2017-06-01	Ernährung, Landwirtschaft und Forsten	900	1250	285	244	6	2017	60	Food, Agriculture, and Forestry
739	2017-07-01	Ernährung, Landwirtschaft und Forsten	900	1250	345	300	7	2017	60	Food, Agriculture, and Forestry
740	2017-08-01	Ernährung, Landwirtschaft und Forsten	900	1250	401	354	8	2017	56	Food, Agriculture, and Forestry
741	2017-09-01	Ernährung, Landwirtschaft und Forsten	900	1250	508	425	9	2017	107	Food, Agriculture, and Forestry
742	2017-10-01	Ernährung, Landwirtschaft und Forsten	900	1250	577	473	10	2017	69	Food, Agriculture, and Forestry
743	2017-11-01	Ernährung, Landwirtschaft und Forsten	900	1250	714	604	11	2017	137	Food, Agriculture, and Forestry
744	2017-12-01	Ernährung, Landwirtschaft und Forsten	900	1250	1068	900	12	2017	354	Food, Agriculture, and Forestry
745	2018-01-01	Ernährung, Landwirtschaft und Forsten	1068	0	16	20	1	2018	16	Food, Agriculture, and Forestry
746	2018-02-01	Ernährung, Landwirtschaft und Forsten	1068	0	44	71	2	2018	28	Food, Agriculture, and Forestry
747	2018-03-01	Ernährung, Landwirtschaft und Forsten	1068	0	110	114	3	2018	66	Food, Agriculture, and Forestry
748	2018-04-01	Ernährung, Landwirtschaft und Forsten	1068	0	159	172	4	2018	49	Food, Agriculture, and Forestry
749	2018-05-01	Ernährung, Landwirtschaft und Forsten	1068	0	201	225	5	2018	42	Food, Agriculture, and Forestry
750	2018-06-01	Ernährung, Landwirtschaft und Forsten	1068	1233	234	285	6	2018	33	Food, Agriculture, and Forestry
751	2018-07-01	Ernährung, Landwirtschaft und Forsten	1068	1233	288	345	7	2018	54	Food, Agriculture, and Forestry
752	2018-08-01	Ernährung, Landwirtschaft und Forsten	1068	1233	330	401	8	2018	42	Food, Agriculture, and Forestry
753	2018-09-01	Ernährung, Landwirtschaft und Forsten	1068	1233	394	508	9	2018	64	Food, Agriculture, and Forestry
754	2018-10-01	Ernährung, Landwirtschaft und Forsten	1068	1233	457	577	10	2018	63	Food, Agriculture, and Forestry
755	2018-11-01	Ernährung, Landwirtschaft und Forsten	1068	1233	592	714	11	2018	135	Food, Agriculture, and Forestry
756	2018-12-01	Ernährung, Landwirtschaft und Forsten	1068	1233	1087	1068	12	2018	495	Food, Agriculture, and Forestry
757	2019-01-01	Ernährung, Landwirtschaft und Forsten	1087	1423	19	16	1	2019	19	Food, Agriculture, and Forestry
758	2019-02-01	Ernährung, Landwirtschaft und Forsten	1087	1423	45	44	2	2019	26	Food, Agriculture, and Forestry
759	2019-03-01	Ernährung, Landwirtschaft und Forsten	1087	1423	117	110	3	2019	72	Food, Agriculture, and Forestry
760	2019-04-01	Ernährung, Landwirtschaft und Forsten	1087	1423	176	159	4	2019	59	Food, Agriculture, and Forestry
761	2019-05-01	Ernährung, Landwirtschaft und Forsten	1087	1423	251	201	5	2019	75	Food, Agriculture, and Forestry
762	2013-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	119	0	1	2013	119	Energy, Water Mgmt, and Trade Services
763	2013-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	1341	0	2	2013	1222	Energy, Water Mgmt, and Trade Services
764	2013-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	1483	0	3	2013	142	Energy, Water Mgmt, and Trade Services
765	2013-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	1673	0	4	2013	190	Energy, Water Mgmt, and Trade Services
766	2013-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	1838	0	5	2013	165	Energy, Water Mgmt, and Trade Services
767	2013-06-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	2098	0	6	2013	260	Energy, Water Mgmt, and Trade Services
768	2013-07-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	2381	0	7	2013	283	Energy, Water Mgmt, and Trade Services
769	2013-08-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	2611	0	8	2013	230	Energy, Water Mgmt, and Trade Services
770	2013-09-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	2806	0	9	2013	195	Energy, Water Mgmt, and Trade Services
771	2013-10-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	3020	0	10	2013	214	Energy, Water Mgmt, and Trade Services
772	2013-11-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	3337	0	11	2013	317	Energy, Water Mgmt, and Trade Services
773	2013-12-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	0	4589	3900	0	12	2013	563	Energy, Water Mgmt, and Trade Services
774	2014-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	0	1285	119	1	2014	1285	Energy, Water Mgmt, and Trade Services
775	2014-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4395	1473	1341	2	2014	188	Energy, Water Mgmt, and Trade Services
776	2014-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4395	1647	1483	3	2014	174	Energy, Water Mgmt, and Trade Services
777	2014-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4395	1812	1673	4	2014	165	Energy, Water Mgmt, and Trade Services
778	2014-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4395	1968	1838	5	2014	156	Energy, Water Mgmt, and Trade Services
779	2014-06-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	2238	2098	6	2014	270	Energy, Water Mgmt, and Trade Services
780	2014-07-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	2455	2381	7	2014	217	Energy, Water Mgmt, and Trade Services
781	2014-08-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	2737	2611	8	2014	282	Energy, Water Mgmt, and Trade Services
782	2014-09-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	3038	2806	9	2014	301	Energy, Water Mgmt, and Trade Services
783	2014-10-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	3280	3020	10	2014	242	Energy, Water Mgmt, and Trade Services
784	2014-11-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	3580	3337	11	2014	300	Energy, Water Mgmt, and Trade Services
785	2014-12-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	3900	4180	4076	3900	12	2014	496	Energy, Water Mgmt, and Trade Services
786	2015-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	1203	1285	1	2015	1203	Energy, Water Mgmt, and Trade Services
787	2015-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	1361	1473	2	2015	158	Energy, Water Mgmt, and Trade Services
788	2015-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	1604	1647	3	2015	243	Energy, Water Mgmt, and Trade Services
789	2015-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	1749	1812	4	2015	145	Energy, Water Mgmt, and Trade Services
790	2015-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	1906	1968	5	2015	157	Energy, Water Mgmt, and Trade Services
791	2015-06-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	2203	2238	6	2015	297	Energy, Water Mgmt, and Trade Services
792	2015-07-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	2670	2455	7	2015	467	Energy, Water Mgmt, and Trade Services
793	2015-08-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	2903	2737	8	2015	233	Energy, Water Mgmt, and Trade Services
794	2015-09-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4437	3158	3038	9	2015	255	Energy, Water Mgmt, and Trade Services
795	2015-10-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4237	3399	3280	10	2015	241	Energy, Water Mgmt, and Trade Services
796	2015-11-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4237	3654	3580	11	2015	255	Energy, Water Mgmt, and Trade Services
797	2015-12-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4076	4237	4156	4076	12	2015	502	Energy, Water Mgmt, and Trade Services
798	2016-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	1386	1203	1	2016	1386	Energy, Water Mgmt, and Trade Services
799	2016-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	1583	1361	2	2016	197	Energy, Water Mgmt, and Trade Services
800	2016-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	1811	1604	3	2016	228	Energy, Water Mgmt, and Trade Services
801	2016-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	2017	1749	4	2016	206	Energy, Water Mgmt, and Trade Services
802	2016-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	2211	1906	5	2016	194	Energy, Water Mgmt, and Trade Services
803	2016-06-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	2436	2203	6	2016	225	Energy, Water Mgmt, and Trade Services
804	2016-07-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	2760	2670	7	2016	324	Energy, Water Mgmt, and Trade Services
805	2016-08-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	3005	2903	8	2016	245	Energy, Water Mgmt, and Trade Services
806	2016-09-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	3234	3158	9	2016	229	Energy, Water Mgmt, and Trade Services
807	2016-10-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	3407	3399	10	2016	173	Energy, Water Mgmt, and Trade Services
808	2016-11-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	3721	3654	11	2016	314	Energy, Water Mgmt, and Trade Services
809	2016-12-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4156	5870	4252	4156	12	2016	531	Energy, Water Mgmt, and Trade Services
810	2017-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	1173	1386	1	2017	1173	Energy, Water Mgmt, and Trade Services
811	2017-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	1341	1583	2	2017	168	Energy, Water Mgmt, and Trade Services
812	2017-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	1528	1811	3	2017	187	Energy, Water Mgmt, and Trade Services
813	2017-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	1651	2017	4	2017	123	Energy, Water Mgmt, and Trade Services
814	2017-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	1873	2211	5	2017	222	Energy, Water Mgmt, and Trade Services
815	2017-06-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	2187	2436	6	2017	314	Energy, Water Mgmt, and Trade Services
816	2017-07-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	2692	2760	7	2017	505	Energy, Water Mgmt, and Trade Services
817	2017-08-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	2964	3005	8	2017	272	Energy, Water Mgmt, and Trade Services
818	2017-09-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	3135	3234	9	2017	171	Energy, Water Mgmt, and Trade Services
819	2017-10-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	3352	3407	10	2017	217	Energy, Water Mgmt, and Trade Services
820	2017-11-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	3614	3721	11	2017	262	Energy, Water Mgmt, and Trade Services
821	2017-12-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4252	6039	4195	4252	12	2017	581	Energy, Water Mgmt, and Trade Services
822	2018-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	0	1120	1173	1	2018	1120	Energy, Water Mgmt, and Trade Services
823	2018-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	0	1290	1341	2	2018	170	Energy, Water Mgmt, and Trade Services
824	2018-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	0	1477	1528	3	2018	187	Energy, Water Mgmt, and Trade Services
825	2018-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	0	1676	1651	4	2018	199	Energy, Water Mgmt, and Trade Services
826	2018-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	0	1859	1873	5	2018	183	Energy, Water Mgmt, and Trade Services
827	2018-06-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	2068	2187	6	2018	209	Energy, Water Mgmt, and Trade Services
828	2018-07-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	2198	2692	7	2018	130	Energy, Water Mgmt, and Trade Services
829	2018-08-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	2398	2964	8	2018	200	Energy, Water Mgmt, and Trade Services
830	2018-09-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	2612	3135	9	2018	214	Energy, Water Mgmt, and Trade Services
831	2018-10-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	2847	3352	10	2018	235	Energy, Water Mgmt, and Trade Services
832	2018-11-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	3200	3614	11	2018	353	Energy, Water Mgmt, and Trade Services
833	2018-12-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4195	5481	4316	4195	12	2018	1116	Energy, Water Mgmt, and Trade Services
834	2019-01-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4316	5100	1032	1120	1	2019	1032	Energy, Water Mgmt, and Trade Services
835	2019-02-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4316	5100	1165	1290	2	2019	133	Energy, Water Mgmt, and Trade Services
0	2008-01-01	Allgemeine Dienste	50394	53595	5266	0	1	2008	5266	General Public Services
1	2008-02-01	Allgemeine Dienste	50394	53595	9119	0	2	2008	3853	General Public Services
2	2008-03-01	Allgemeine Dienste	50394	53595	12584	0	3	2008	3465	General Public Services
3	2008-04-01	Allgemeine Dienste	50394	53595	16542	0	4	2008	3958	General Public Services
4	2008-05-01	Allgemeine Dienste	50394	53595	20166	0	5	2008	3624	General Public Services
5	2008-06-01	Allgemeine Dienste	50394	53595	23956	0	6	2008	3790	General Public Services
6	2008-07-01	Allgemeine Dienste	50394	53595	28893	0	7	2008	4937	General Public Services
7	2008-08-01	Allgemeine Dienste	50394	53595	32984	0	8	2008	4091	General Public Services
8	2008-09-01	Allgemeine Dienste	50394	53595	36660	0	9	2008	3676	General Public Services
9	2008-10-01	Allgemeine Dienste	50394	53595	40577	0	10	2008	3917	General Public Services
10	2008-11-01	Allgemeine Dienste	50394	53595	45106	0	11	2008	4529	General Public Services
11	2008-12-01	Allgemeine Dienste	50394	53595	50394	0	12	2008	5288	General Public Services
12	2009-01-01	Allgemeine Dienste	50394	53595	6074	5266	1	2009	6074	General Public Services
13	2009-02-01	Allgemeine Dienste	50394	53595	9807	9119	2	2009	3733	General Public Services
14	2009-03-01	Allgemeine Dienste	50394	53595	13794	12584	3	2009	3987	General Public Services
15	2009-04-01	Allgemeine Dienste	50394	53595	17987	16542	4	2009	4193	General Public Services
16	2009-05-01	Allgemeine Dienste	50394	53595	21906	20166	5	2009	3919	General Public Services
17	2009-06-01	Allgemeine Dienste	50394	53595	26003	23956	6	2009	4097	General Public Services
18	2009-07-01	Allgemeine Dienste	50394	53595	30622	28893	7	2009	4619	General Public Services
19	2009-08-01	Allgemeine Dienste	50394	53595	34766	32984	8	2009	4144	General Public Services
20	2009-09-01	Allgemeine Dienste	50394	53595	38889	36660	9	2009	4123	General Public Services
21	2009-10-01	Allgemeine Dienste	50394	53595	42706	40577	10	2009	3817	General Public Services
22	2009-11-01	Allgemeine Dienste	50394	53595	47999	45106	11	2009	5293	General Public Services
23	2009-12-01	Allgemeine Dienste	50394	53595	53357	50394	12	2009	5358	General Public Services
24	2010-01-01	Allgemeine Dienste	53357	54154	5625	6074	1	2010	5625	General Public Services
836	2019-03-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4316	5100	1369	1477	3	2019	204	Energy, Water Mgmt, and Trade Services
837	2019-04-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4316	5100	1516	1676	4	2019	147	Energy, Water Mgmt, and Trade Services
838	2019-05-01	Energie- und Wasserwirtschaft, Gewerbe, Dienstleistungen	4316	5100	1755	1859	5	2019	239	Energy, Water Mgmt, and Trade Services
839	2008-01-01	Verkehrs- und Nachrichtenwesen	11231	12894	1068	0	1	2008	1068	Transportation and Communications
840	2008-02-01	Verkehrs- und Nachrichtenwesen	11231	12894	1459	0	2	2008	391	Transportation and Communications
841	2008-03-01	Verkehrs- und Nachrichtenwesen	11231	12894	2003	0	3	2008	544	Transportation and Communications
842	2008-04-01	Verkehrs- und Nachrichtenwesen	11231	12894	2980	0	4	2008	977	Transportation and Communications
843	2008-05-01	Verkehrs- und Nachrichtenwesen	11231	12894	3653	0	5	2008	673	Transportation and Communications
844	2008-06-01	Verkehrs- und Nachrichtenwesen	11231	12894	4508	0	6	2008	855	Transportation and Communications
845	2008-07-01	Verkehrs- und Nachrichtenwesen	11231	12894	5798	0	7	2008	1290	Transportation and Communications
846	2008-08-01	Verkehrs- und Nachrichtenwesen	11231	12894	6511	0	8	2008	713	Transportation and Communications
847	2008-09-01	Verkehrs- und Nachrichtenwesen	11231	12894	7321	0	9	2008	810	Transportation and Communications
848	2008-10-01	Verkehrs- und Nachrichtenwesen	11231	12894	8647	0	10	2008	1326	Transportation and Communications
849	2008-11-01	Verkehrs- und Nachrichtenwesen	11231	12894	9674	0	11	2008	1027	Transportation and Communications
850	2008-12-01	Verkehrs- und Nachrichtenwesen	11231	12894	11231	0	12	2008	1557	Transportation and Communications
851	2009-01-01	Verkehrs- und Nachrichtenwesen	11231	12894	1073	1068	1	2009	1073	Transportation and Communications
852	2009-02-01	Verkehrs- und Nachrichtenwesen	11231	12894	1361	1459	2	2009	288	Transportation and Communications
853	2009-03-01	Verkehrs- und Nachrichtenwesen	11231	12894	2010	2003	3	2009	649	Transportation and Communications
854	2009-04-01	Verkehrs- und Nachrichtenwesen	11231	12894	2970	2980	4	2009	960	Transportation and Communications
855	2009-05-01	Verkehrs- und Nachrichtenwesen	11231	12894	3715	3653	5	2009	745	Transportation and Communications
856	2009-06-01	Verkehrs- und Nachrichtenwesen	11231	12894	4626	4508	6	2009	911	Transportation and Communications
857	2009-07-01	Verkehrs- und Nachrichtenwesen	11231	12894	5996	5798	7	2009	1370	Transportation and Communications
858	2009-08-01	Verkehrs- und Nachrichtenwesen	11231	12894	6930	6511	8	2009	934	Transportation and Communications
859	2009-09-01	Verkehrs- und Nachrichtenwesen	11231	12894	7856	7321	9	2009	926	Transportation and Communications
860	2009-10-01	Verkehrs- und Nachrichtenwesen	11231	12894	9267	8647	10	2009	1411	Transportation and Communications
861	2009-11-01	Verkehrs- und Nachrichtenwesen	11231	12894	10413	9674	11	2009	1146	Transportation and Communications
862	2009-12-01	Verkehrs- und Nachrichtenwesen	11231	12894	12426	11231	12	2009	2013	Transportation and Communications
863	2010-01-01	Verkehrs- und Nachrichtenwesen	12426	12349	728	1073	1	2010	728	Transportation and Communications
864	2010-02-01	Verkehrs- und Nachrichtenwesen	12426	12351	1211	1361	2	2010	483	Transportation and Communications
865	2010-03-01	Verkehrs- und Nachrichtenwesen	12426	12351	1788	2010	3	2010	577	Transportation and Communications
867	2010-05-01	Verkehrs- und Nachrichtenwesen	12426	12351	3669	3715	5	2010	879	Transportation and Communications
868	2010-06-01	Verkehrs- und Nachrichtenwesen	12426	12351	4495	4626	6	2010	826	Transportation and Communications
869	2010-07-01	Verkehrs- und Nachrichtenwesen	12426	12351	5717	5996	7	2010	1222	Transportation and Communications
870	2010-08-01	Verkehrs- und Nachrichtenwesen	12426	12351	6571	6930	8	2010	854	Transportation and Communications
871	2010-09-01	Verkehrs- und Nachrichtenwesen	12426	12351	7340	7856	9	2010	769	Transportation and Communications
872	2010-10-01	Verkehrs- und Nachrichtenwesen	12426	12351	8635	9267	10	2010	1295	Transportation and Communications
873	2010-11-01	Verkehrs- und Nachrichtenwesen	12426	12351	9772	10413	11	2010	1137	Transportation and Communications
874	2010-12-01	Verkehrs- und Nachrichtenwesen	12426	12351	11735	12426	12	2010	1963	Transportation and Communications
875	2011-01-01	Verkehrs- und Nachrichtenwesen	11735	11735	1005	728	1	2011	1005	Transportation and Communications
876	2011-02-01	Verkehrs- und Nachrichtenwesen	11735	11735	1395	1211	2	2011	390	Transportation and Communications
877	2011-03-01	Verkehrs- und Nachrichtenwesen	11735	11735	1986	1788	3	2011	591	Transportation and Communications
878	2011-04-01	Verkehrs- und Nachrichtenwesen	11735	11735	2928	2790	4	2011	942	Transportation and Communications
879	2011-05-01	Verkehrs- und Nachrichtenwesen	11735	11735	3774	3669	5	2011	846	Transportation and Communications
880	2011-06-01	Verkehrs- und Nachrichtenwesen	11735	11735	4521	4495	6	2011	747	Transportation and Communications
881	2011-07-01	Verkehrs- und Nachrichtenwesen	11735	11735	5675	5717	7	2011	1154	Transportation and Communications
882	2011-08-01	Verkehrs- und Nachrichtenwesen	11735	11735	6625	6571	8	2011	950	Transportation and Communications
883	2011-09-01	Verkehrs- und Nachrichtenwesen	11735	11735	7449	7340	9	2011	824	Transportation and Communications
884	2011-10-01	Verkehrs- und Nachrichtenwesen	11735	11735	8648	8635	10	2011	1199	Transportation and Communications
885	2011-11-01	Verkehrs- und Nachrichtenwesen	11735	11735	9733	9772	11	2011	1085	Transportation and Communications
886	2011-12-01	Verkehrs- und Nachrichtenwesen	11735	11735	11645	11735	12	2011	1912	Transportation and Communications
887	2012-01-01	Verkehrs- und Nachrichtenwesen	11645	12384	749	1005	1	2012	749	Transportation and Communications
888	2012-02-01	Verkehrs- und Nachrichtenwesen	11645	12384	1167	1395	2	2012	418	Transportation and Communications
889	2012-03-01	Verkehrs- und Nachrichtenwesen	11645	12384	1756	1986	3	2012	589	Transportation and Communications
890	2012-04-01	Verkehrs- und Nachrichtenwesen	11645	12384	2763	2928	4	2012	1007	Transportation and Communications
891	2012-05-01	Verkehrs- und Nachrichtenwesen	11645	12384	3543	3774	5	2012	780	Transportation and Communications
892	2012-06-01	Verkehrs- und Nachrichtenwesen	11645	12384	4314	4521	6	2012	771	Transportation and Communications
893	2012-07-01	Verkehrs- und Nachrichtenwesen	11645	12384	5713	5675	7	2012	1399	Transportation and Communications
894	2012-08-01	Verkehrs- und Nachrichtenwesen	11645	12384	6702	6625	8	2012	989	Transportation and Communications
895	2012-09-01	Verkehrs- und Nachrichtenwesen	11645	12384	7495	7449	9	2012	793	Transportation and Communications
896	2012-10-01	Verkehrs- und Nachrichtenwesen	11645	12384	8958	8648	10	2012	1463	Transportation and Communications
897	2012-11-01	Verkehrs- und Nachrichtenwesen	11645	12384	10218	9733	11	2012	1260	Transportation and Communications
898	2012-12-01	Verkehrs- und Nachrichtenwesen	11645	12384	12110	11645	12	2012	1892	Transportation and Communications
899	2013-01-01	Verkehrs- und Nachrichtenwesen	0	16707	987	0	1	2013	987	Transportation and Communications
900	2013-02-01	Verkehrs- und Nachrichtenwesen	0	16707	1710	0	2	2013	723	Transportation and Communications
901	2013-03-01	Verkehrs- und Nachrichtenwesen	0	16707	2482	0	3	2013	772	Transportation and Communications
902	2013-04-01	Verkehrs- und Nachrichtenwesen	0	16707	3707	0	4	2013	1225	Transportation and Communications
903	2013-05-01	Verkehrs- und Nachrichtenwesen	0	16707	4691	0	5	2013	984	Transportation and Communications
904	2013-06-01	Verkehrs- und Nachrichtenwesen	0	16707	5782	0	6	2013	1091	Transportation and Communications
905	2013-07-01	Verkehrs- und Nachrichtenwesen	0	16707	7496	0	7	2013	1714	Transportation and Communications
906	2013-08-01	Verkehrs- und Nachrichtenwesen	0	16707	8784	0	8	2013	1288	Transportation and Communications
907	2013-09-01	Verkehrs- und Nachrichtenwesen	0	16707	10083	0	9	2013	1299	Transportation and Communications
908	2013-10-01	Verkehrs- und Nachrichtenwesen	0	16707	12151	0	10	2013	2068	Transportation and Communications
909	2013-11-01	Verkehrs- und Nachrichtenwesen	0	16707	13773	0	11	2013	1622	Transportation and Communications
910	2013-12-01	Verkehrs- und Nachrichtenwesen	0	16707	16406	0	12	2013	2633	Transportation and Communications
911	2014-01-01	Verkehrs- und Nachrichtenwesen	16406	0	902	987	1	2014	902	Transportation and Communications
912	2014-02-01	Verkehrs- und Nachrichtenwesen	16406	16415	1544	1710	2	2014	642	Transportation and Communications
913	2014-03-01	Verkehrs- und Nachrichtenwesen	16406	16415	2392	2482	3	2014	848	Transportation and Communications
914	2014-04-01	Verkehrs- und Nachrichtenwesen	16406	16415	3614	3707	4	2014	1222	Transportation and Communications
915	2014-05-01	Verkehrs- und Nachrichtenwesen	16406	16415	4702	4691	5	2014	1088	Transportation and Communications
916	2014-06-01	Verkehrs- und Nachrichtenwesen	16406	16421	5779	5782	6	2014	1077	Transportation and Communications
917	2014-07-01	Verkehrs- und Nachrichtenwesen	16406	16421	7511	7496	7	2014	1732	Transportation and Communications
918	2014-08-01	Verkehrs- und Nachrichtenwesen	16406	16421	8794	8784	8	2014	1283	Transportation and Communications
919	2014-09-01	Verkehrs- und Nachrichtenwesen	16406	16421	10152	10083	9	2014	1358	Transportation and Communications
920	2014-10-01	Verkehrs- und Nachrichtenwesen	16406	16421	12154	12151	10	2014	2002	Transportation and Communications
921	2014-11-01	Verkehrs- und Nachrichtenwesen	16406	16421	13642	13773	11	2014	1488	Transportation and Communications
922	2014-12-01	Verkehrs- und Nachrichtenwesen	16406	16421	15993	16406	12	2014	2351	Transportation and Communications
923	2015-01-01	Verkehrs- und Nachrichtenwesen	15993	16926	1060	902	1	2015	1060	Transportation and Communications
924	2015-02-01	Verkehrs- und Nachrichtenwesen	15993	16926	1822	1544	2	2015	762	Transportation and Communications
925	2015-03-01	Verkehrs- und Nachrichtenwesen	15993	16926	2752	2392	3	2015	930	Transportation and Communications
926	2015-04-01	Verkehrs- und Nachrichtenwesen	15993	16926	4112	3614	4	2015	1360	Transportation and Communications
927	2015-05-01	Verkehrs- und Nachrichtenwesen	15993	16926	5017	4702	5	2015	905	Transportation and Communications
928	2015-06-01	Verkehrs- und Nachrichtenwesen	15993	16926	6296	5779	6	2015	1279	Transportation and Communications
929	2015-07-01	Verkehrs- und Nachrichtenwesen	15993	16926	7949	7511	7	2015	1653	Transportation and Communications
930	2015-08-01	Verkehrs- und Nachrichtenwesen	15993	16926	9250	8794	8	2015	1301	Transportation and Communications
931	2015-09-01	Verkehrs- und Nachrichtenwesen	15993	16926	10540	10152	9	2015	1290	Transportation and Communications
932	2015-10-01	Verkehrs- und Nachrichtenwesen	15993	16926	12427	12154	10	2015	1887	Transportation and Communications
933	2015-11-01	Verkehrs- und Nachrichtenwesen	15993	16926	14080	13642	11	2015	1653	Transportation and Communications
934	2015-12-01	Verkehrs- und Nachrichtenwesen	15993	16926	16595	15993	12	2015	2515	Transportation and Communications
935	2016-01-01	Verkehrs- und Nachrichtenwesen	16595	18881	1154	1060	1	2016	1154	Transportation and Communications
936	2016-02-01	Verkehrs- und Nachrichtenwesen	16595	18881	2229	1882	2	2016	1075	Transportation and Communications
937	2016-03-01	Verkehrs- und Nachrichtenwesen	16595	18881	3207	2752	3	2016	978	Transportation and Communications
938	2016-04-01	Verkehrs- und Nachrichtenwesen	16595	18881	4470	4112	4	2016	1263	Transportation and Communications
939	2016-05-01	Verkehrs- und Nachrichtenwesen	16595	18881	5605	5017	5	2016	1135	Transportation and Communications
940	2016-06-01	Verkehrs- und Nachrichtenwesen	16595	18881	6980	6296	6	2016	1375	Transportation and Communications
941	2016-07-01	Verkehrs- und Nachrichtenwesen	16595	18881	8708	7949	7	2016	1728	Transportation and Communications
942	2016-08-01	Verkehrs- und Nachrichtenwesen	16595	18881	10237	9250	8	2016	1529	Transportation and Communications
943	2016-09-01	Verkehrs- und Nachrichtenwesen	16595	18881	11768	10540	9	2016	1531	Transportation and Communications
944	2016-10-01	Verkehrs- und Nachrichtenwesen	16595	18881	13699	12427	10	2016	1931	Transportation and Communications
945	2016-11-01	Verkehrs- und Nachrichtenwesen	16595	18881	15614	14080	11	2016	1915	Transportation and Communications
946	2016-12-01	Verkehrs- und Nachrichtenwesen	16595	18881	18313	16595	12	2016	2699	Transportation and Communications
947	2017-01-01	Verkehrs- und Nachrichtenwesen	18313	20818	1387	1154	1	2017	1387	Transportation and Communications
948	2017-02-01	Verkehrs- und Nachrichtenwesen	18313	20818	2346	2229	2	2017	959	Transportation and Communications
949	2017-03-01	Verkehrs- und Nachrichtenwesen	18313	20818	3448	3207	3	2017	1102	Transportation and Communications
950	2017-04-01	Verkehrs- und Nachrichtenwesen	18313	20818	4850	4470	4	2017	1402	Transportation and Communications
951	2017-05-01	Verkehrs- und Nachrichtenwesen	18313	20818	6096	5605	5	2017	1246	Transportation and Communications
952	2017-06-01	Verkehrs- und Nachrichtenwesen	18313	20818	7584	6980	6	2017	1488	Transportation and Communications
953	2017-07-01	Verkehrs- und Nachrichtenwesen	18313	20818	9862	8708	7	2017	2278	Transportation and Communications
954	2017-08-01	Verkehrs- und Nachrichtenwesen	18313	20818	12581	10237	8	2017	2719	Transportation and Communications
955	2017-09-01	Verkehrs- und Nachrichtenwesen	18313	20818	14277	11768	9	2017	1696	Transportation and Communications
956	2017-10-01	Verkehrs- und Nachrichtenwesen	18313	20818	16323	13699	10	2017	2046	Transportation and Communications
957	2017-11-01	Verkehrs- und Nachrichtenwesen	18313	20818	18341	15614	11	2017	2018	Transportation and Communications
958	2017-12-01	Verkehrs- und Nachrichtenwesen	18313	20818	21228	18313	12	2017	2887	Transportation and Communications
959	2018-01-01	Verkehrs- und Nachrichtenwesen	21228	0	1271	1387	1	2018	1271	Transportation and Communications
960	2018-02-01	Verkehrs- und Nachrichtenwesen	21228	0	2300	2346	2	2018	1029	Transportation and Communications
961	2018-03-01	Verkehrs- und Nachrichtenwesen	21228	0	3475	3448	3	2018	1175	Transportation and Communications
962	2018-04-01	Verkehrs- und Nachrichtenwesen	21228	0	5032	4850	4	2018	1557	Transportation and Communications
963	2018-05-01	Verkehrs- und Nachrichtenwesen	21228	0	6439	6096	5	2018	1407	Transportation and Communications
964	2018-06-01	Verkehrs- und Nachrichtenwesen	21228	21140	7961	7584	6	2018	1522	Transportation and Communications
965	2018-07-01	Verkehrs- und Nachrichtenwesen	21228	21140	10225	9862	7	2018	2264	Transportation and Communications
966	2018-08-01	Verkehrs- und Nachrichtenwesen	21228	21140	12048	12581	8	2018	1823	Transportation and Communications
967	2018-09-01	Verkehrs- und Nachrichtenwesen	21228	21140	13722	14277	9	2018	1674	Transportation and Communications
968	2018-10-01	Verkehrs- und Nachrichtenwesen	21228	21140	16080	16323	10	2018	2358	Transportation and Communications
969	2018-11-01	Verkehrs- und Nachrichtenwesen	21228	21140	17992	18341	11	2018	1912	Transportation and Communications
970	2018-12-01	Verkehrs- und Nachrichtenwesen	21228	21140	21943	21228	12	2018	3951	Transportation and Communications
971	2019-01-01	Verkehrs- und Nachrichtenwesen	21943	22134	1519	1271	1	2019	1519	Transportation and Communications
972	2019-02-01	Verkehrs- und Nachrichtenwesen	21943	22134	2521	2300	2	2019	1002	Transportation and Communications
973	2019-03-01	Verkehrs- und Nachrichtenwesen	21943	22134	3698	3475	3	2019	1177	Transportation and Communications
974	2019-04-01	Verkehrs- und Nachrichtenwesen	21943	22134	5336	5032	4	2019	1638	Transportation and Communications
975	2019-05-01	Verkehrs- und Nachrichtenwesen	21943	22134	6954	6439	5	2019	1618	Transportation and Communications
976	2008-01-01	Allgemeine Finanzwirtschaft	41374	43020	13321	0	1	2008	13321	Financial Management
977	2008-02-01	Allgemeine Finanzwirtschaft	41374	43020	14104	0	2	2008	783	Financial Management
978	2008-03-01	Allgemeine Finanzwirtschaft	41374	43020	15281	0	3	2008	1177	Financial Management
979	2008-04-01	Allgemeine Finanzwirtschaft	41374	43020	18766	0	4	2008	3485	Financial Management
980	2008-05-01	Allgemeine Finanzwirtschaft	41374	43020	19038	0	5	2008	272	Financial Management
981	2008-06-01	Allgemeine Finanzwirtschaft	41374	43000	20818	0	6	2008	1780	Financial Management
982	2008-07-01	Allgemeine Finanzwirtschaft	41374	43000	34675	0	7	2008	13857	Financial Management
983	2008-08-01	Allgemeine Finanzwirtschaft	41374	43000	35208	0	8	2008	533	Financial Management
984	2008-09-01	Allgemeine Finanzwirtschaft	41374	43000	36552	0	9	2008	1344	Financial Management
985	2008-10-01	Allgemeine Finanzwirtschaft	41374	43000	39499	0	10	2008	2947	Financial Management
986	2008-11-01	Allgemeine Finanzwirtschaft	41374	43000	40010	0	11	2008	511	Financial Management
987	2008-12-01	Allgemeine Finanzwirtschaft	41374	43000	41374	0	12	2008	1364	Financial Management
988	2009-01-01	Allgemeine Finanzwirtschaft	41374	43020	12474	13321	1	2009	12474	Financial Management
989	2009-02-01	Allgemeine Finanzwirtschaft	41374	43020	12541	14104	2	2009	67	Financial Management
990	2009-03-01	Allgemeine Finanzwirtschaft	41374	43020	13640	15281	3	2009	1099	Financial Management
991	2009-04-01	Allgemeine Finanzwirtschaft	41374	43020	17250	18766	4	2009	3610	Financial Management
992	2009-05-01	Allgemeine Finanzwirtschaft	41374	43020	17284	19038	5	2009	34	Financial Management
993	2009-06-01	Allgemeine Finanzwirtschaft	41374	43000	18967	20818	6	2009	1683	Financial Management
994	2009-07-01	Allgemeine Finanzwirtschaft	41374	43000	32414	34675	7	2009	13447	Financial Management
995	2009-08-01	Allgemeine Finanzwirtschaft	41374	43000	32679	35208	8	2009	265	Financial Management
996	2009-09-01	Allgemeine Finanzwirtschaft	41374	43000	33870	36552	9	2009	1191	Financial Management
997	2009-10-01	Allgemeine Finanzwirtschaft	41374	43000	36662	39499	10	2009	2792	Financial Management
998	2009-11-01	Allgemeine Finanzwirtschaft	41374	43000	37987	40010	11	2009	1325	Financial Management
999	2009-12-01	Allgemeine Finanzwirtschaft	41374	43000	39412	41374	12	2009	1425	Financial Management
1000	2010-01-01	Allgemeine Finanzwirtschaft	39412	39187	12527	12474	1	2010	12527	Financial Management
1001	2010-02-01	Allgemeine Finanzwirtschaft	39412	37532	12074	12541	2	2010	-453	Financial Management
1002	2010-03-01	Allgemeine Finanzwirtschaft	39412	37532	12377	13640	3	2010	303	Financial Management
1003	2010-04-01	Allgemeine Finanzwirtschaft	39412	37532	15965	17250	4	2010	3588	Financial Management
1004	2010-05-01	Allgemeine Finanzwirtschaft	39412	37532	15406	17284	5	2010	-559	Financial Management
1005	2010-06-01	Allgemeine Finanzwirtschaft	39412	37532	20192	18967	6	2010	4786	Financial Management
1008	2010-09-01	Allgemeine Finanzwirtschaft	39412	37532	30712	33870	9	2010	789	Financial Management
1009	2010-10-01	Allgemeine Finanzwirtschaft	39412	37532	33286	36662	10	2010	2574	Financial Management
1010	2010-11-01	Allgemeine Finanzwirtschaft	39412	37532	33522	37987	11	2010	236	Financial Management
1011	2010-12-01	Allgemeine Finanzwirtschaft	39412	37532	34249	39412	12	2010	727	Financial Management
1012	2011-01-01	Allgemeine Finanzwirtschaft	34249	35462	12339	12527	1	2011	12339	Financial Management
1013	2011-02-01	Allgemeine Finanzwirtschaft	34249	35462	13182	12074	2	2011	843	Financial Management
1014	2011-03-01	Allgemeine Finanzwirtschaft	34249	35462	12274	12377	3	2011	-908	Financial Management
1015	2011-04-01	Allgemeine Finanzwirtschaft	34249	35462	17121	15965	4	2011	4847	Financial Management
1016	2011-05-01	Allgemeine Finanzwirtschaft	34249	35462	16922	15406	5	2011	-199	Financial Management
1017	2011-06-01	Allgemeine Finanzwirtschaft	34249	35462	17332	20192	6	2011	410	Financial Management
1018	2011-07-01	Allgemeine Finanzwirtschaft	34249	35462	29589	29598	7	2011	12257	Financial Management
1024	2012-01-01	Allgemeine Finanzwirtschaft	33825	39811	12842	12339	1	2012	12842	Financial Management
1025	2012-02-01	Allgemeine Finanzwirtschaft	33825	39811	12073	13182	2	2012	-769	Financial Management
1026	2012-03-01	Allgemeine Finanzwirtschaft	33825	37546	12232	12274	3	2012	159	Financial Management
1027	2012-04-01	Allgemeine Finanzwirtschaft	33825	37546	16840	17121	4	2012	4608	Financial Management
1028	2012-05-01	Allgemeine Finanzwirtschaft	33825	37846	15821	16922	5	2012	-1019	Financial Management
1029	2012-06-01	Allgemeine Finanzwirtschaft	33825	37846	16304	17332	6	2012	483	Financial Management
1030	2012-07-01	Allgemeine Finanzwirtschaft	33825	37846	28666	29589	7	2012	12362	Financial Management
1031	2012-08-01	Allgemeine Finanzwirtschaft	33825	37846	28143	29791	8	2012	-523	Financial Management
1032	2012-09-01	Allgemeine Finanzwirtschaft	33825	35448	29022	30460	9	2012	879	Financial Management
1033	2012-10-01	Allgemeine Finanzwirtschaft	33825	34926	30956	32767	10	2012	1934	Financial Management
1034	2012-11-01	Allgemeine Finanzwirtschaft	33825	34926	31551	33285	11	2012	595	Financial Management
1035	2012-12-01	Allgemeine Finanzwirtschaft	33825	34926	31565	33825	12	2012	14	Financial Management
1036	2013-01-01	Allgemeine Finanzwirtschaft	0	38649	11141	0	1	2013	11141	Financial Management
1037	2013-02-01	Allgemeine Finanzwirtschaft	0	38649	12603	0	2	2013	1462	Financial Management
1038	2013-03-01	Allgemeine Finanzwirtschaft	0	38649	13290	0	3	2013	687	Financial Management
1039	2013-04-01	Allgemeine Finanzwirtschaft	0	38649	17400	0	4	2013	4110	Financial Management
1040	2013-05-01	Allgemeine Finanzwirtschaft	0	38649	17965	0	5	2013	565	Financial Management
1041	2013-06-01	Allgemeine Finanzwirtschaft	0	46649	19134	0	6	2013	1169	Financial Management
1042	2013-07-01	Allgemeine Finanzwirtschaft	0	46649	31736	0	7	2013	12602	Financial Management
1043	2013-08-01	Allgemeine Finanzwirtschaft	0	46649	32410	0	8	2013	674	Financial Management
1044	2013-09-01	Allgemeine Finanzwirtschaft	0	46649	34003	0	9	2013	1593	Financial Management
1045	2013-10-01	Allgemeine Finanzwirtschaft	0	46649	43803	0	10	2013	9800	Financial Management
1046	2013-11-01	Allgemeine Finanzwirtschaft	0	46649	44710	0	11	2013	907	Financial Management
1047	2013-12-01	Allgemeine Finanzwirtschaft	0	46649	46017	0	12	2013	1307	Financial Management
1048	2014-01-01	Allgemeine Finanzwirtschaft	46017	0	9861	11141	1	2014	9861	Financial Management
1049	2014-02-01	Allgemeine Finanzwirtschaft	46017	35798	11581	12603	2	2014	1720	Financial Management
1050	2014-03-01	Allgemeine Finanzwirtschaft	46017	35798	12080	13290	3	2014	499	Financial Management
1051	2014-04-01	Allgemeine Finanzwirtschaft	46017	35798	14586	17400	4	2014	2506	Financial Management
1052	2014-05-01	Allgemeine Finanzwirtschaft	46017	35798	15185	17965	5	2014	599	Financial Management
1053	2014-06-01	Allgemeine Finanzwirtschaft	46017	33957	15716	19134	6	2014	531	Financial Management
1054	2014-07-01	Allgemeine Finanzwirtschaft	46017	33957	27193	31736	7	2014	11477	Financial Management
1055	2014-08-01	Allgemeine Finanzwirtschaft	46017	33957	27819	32410	8	2014	626	Financial Management
1056	2014-09-01	Allgemeine Finanzwirtschaft	46017	33957	29209	34003	9	2014	1390	Financial Management
1057	2014-10-01	Allgemeine Finanzwirtschaft	46017	33957	30955	43803	10	2014	1746	Financial Management
1058	2014-11-01	Allgemeine Finanzwirtschaft	46017	33957	32086	44710	11	2014	1131	Financial Management
1059	2014-12-01	Allgemeine Finanzwirtschaft	46017	33957	33718	46017	12	2014	1632	Financial Management
1060	2015-01-01	Allgemeine Finanzwirtschaft	33718	32853	8796	9861	1	2015	8796	Financial Management
1061	2015-02-01	Allgemeine Finanzwirtschaft	33718	35691	10986	11581	2	2015	2190	Financial Management
1062	2015-03-01	Allgemeine Finanzwirtschaft	33718	35691	11193	12080	3	2015	207	Financial Management
1063	2015-04-01	Allgemeine Finanzwirtschaft	33718	35691	12442	14586	4	2015	1249	Financial Management
1064	2015-05-01	Allgemeine Finanzwirtschaft	33718	34436	13237	15185	5	2015	795	Financial Management
1065	2015-06-01	Allgemeine Finanzwirtschaft	33718	34436	13473	15716	6	2015	236	Financial Management
1066	2015-07-01	Allgemeine Finanzwirtschaft	33718	34436	23959	27193	7	2015	10486	Financial Management
1067	2015-08-01	Allgemeine Finanzwirtschaft	33718	34436	24903	27819	8	2015	944	Financial Management
1068	2015-09-01	Allgemeine Finanzwirtschaft	33718	39525	29174	29209	9	2015	4271	Financial Management
1069	2015-10-01	Allgemeine Finanzwirtschaft	33718	38858	29726	30955	10	2015	552	Financial Management
1070	2015-11-01	Allgemeine Finanzwirtschaft	33718	38858	30946	32086	11	2015	1220	Financial Management
1071	2015-12-01	Allgemeine Finanzwirtschaft	33718	38858	33225	33718	12	2015	2279	Financial Management
1072	2016-01-01	Allgemeine Finanzwirtschaft	33225	31252	8156	8796	1	2016	8156	Financial Management
1073	2016-02-01	Allgemeine Finanzwirtschaft	33225	31252	9380	10986	2	2016	1224	Financial Management
1074	2016-03-01	Allgemeine Finanzwirtschaft	33225	31252	10103	11193	3	2016	723	Financial Management
1075	2016-04-01	Allgemeine Finanzwirtschaft	33225	31252	11625	12442	4	2016	1522	Financial Management
1076	2016-05-01	Allgemeine Finanzwirtschaft	33225	31252	11094	13237	5	2016	-531	Financial Management
1077	2016-06-01	Allgemeine Finanzwirtschaft	33225	31252	11023	13473	6	2016	-71	Financial Management
1078	2016-07-01	Allgemeine Finanzwirtschaft	33225	31252	20373	23959	7	2016	9350	Financial Management
1079	2016-08-01	Allgemeine Finanzwirtschaft	33225	31252	21241	24903	8	2016	868	Financial Management
1080	2016-09-01	Allgemeine Finanzwirtschaft	33225	31252	22211	29174	9	2016	970	Financial Management
1081	2016-10-01	Allgemeine Finanzwirtschaft	33225	31252	22294	29726	10	2016	83	Financial Management
1082	2016-11-01	Allgemeine Finanzwirtschaft	33225	31252	24171	30946	11	2016	1877	Financial Management
1083	2016-12-01	Allgemeine Finanzwirtschaft	33225	31252	25185	33225	12	2016	1014	Financial Management
1084	2017-01-01	Allgemeine Finanzwirtschaft	25185	23117	7073	8156	1	2017	7073	Financial Management
1085	2017-02-01	Allgemeine Finanzwirtschaft	35232	23117	8412	9380	2	2017	1339	Financial Management
1086	2017-03-01	Allgemeine Finanzwirtschaft	35232	23117	8198	9414	3	2017	-214	Financial Management
1087	2017-04-01	Allgemeine Finanzwirtschaft	35232	23117	10289	11625	4	2017	2091	Financial Management
1088	2017-05-01	Allgemeine Finanzwirtschaft	35232	23117	11212	11783	5	2017	923	Financial Management
1089	2017-06-01	Allgemeine Finanzwirtschaft	35232	23117	11516	11712	6	2017	304	Financial Management
1090	2017-07-01	Allgemeine Finanzwirtschaft	35232	23117	20012	21062	7	2017	8496	Financial Management
1091	2017-08-01	Allgemeine Finanzwirtschaft	35232	23117	21507	21930	8	2017	1495	Financial Management
1092	2017-09-01	Allgemeine Finanzwirtschaft	35232	23117	22599	22900	9	2017	1092	Financial Management
1093	2017-10-01	Allgemeine Finanzwirtschaft	35232	23117	22917	22983	10	2017	318	Financial Management
1094	2017-11-01	Allgemeine Finanzwirtschaft	35232	23117	24380	24860	11	2017	1463	Financial Management
1095	2017-12-01	Allgemeine Finanzwirtschaft	35232	23117	30532	35232	12	2017	6152	Financial Management
1096	2018-01-01	Allgemeine Finanzwirtschaft	30532	0	6500	7073	1	2018	6500	Financial Management
1097	2018-02-01	Allgemeine Finanzwirtschaft	30532	0	8351	8412	2	2018	1851	Financial Management
1098	2018-03-01	Allgemeine Finanzwirtschaft	30532	0	8304	8198	3	2018	-47	Financial Management
1099	2018-04-01	Allgemeine Finanzwirtschaft	30532	0	9646	10289	4	2018	1342	Financial Management
1100	2018-05-01	Allgemeine Finanzwirtschaft	30532	0	10532	11212	5	2018	886	Financial Management
1101	2018-06-01	Allgemeine Finanzwirtschaft	30532	30416	10370	11516	6	2018	-162	Financial Management
1102	2018-07-01	Allgemeine Finanzwirtschaft	30532	30416	18203	20012	7	2018	7833	Financial Management
1103	2018-08-01	Allgemeine Finanzwirtschaft	30532	30416	22466	21507	8	2018	4263	Financial Management
1104	2018-09-01	Allgemeine Finanzwirtschaft	30532	30416	23499	22599	9	2018	1033	Financial Management
1105	2018-10-01	Allgemeine Finanzwirtschaft	30532	30416	23940	22917	10	2018	441	Financial Management
1106	2018-11-01	Allgemeine Finanzwirtschaft	30532	30416	25323	24380	11	2018	1383	Financial Management
1107	2018-12-01	Allgemeine Finanzwirtschaft	30532	30416	28339	30532	12	2018	3016	Financial Management
1108	2019-01-01	Allgemeine Finanzwirtschaft	28339	25062	5762	6472	1	2019	5762	Financial Management
1109	2019-02-01	Allgemeine Finanzwirtschaft	28339	25062	6680	8296	2	2019	918	Financial Management
1110	2019-03-01	Allgemeine Finanzwirtschaft	28339	25062	6562	8214	3	2019	-118	Financial Management
1111	2019-04-01	Allgemeine Finanzwirtschaft	28339	25062	7892	9536	4	2019	1330	Financial Management
1112	2019-05-01	Allgemeine Finanzwirtschaft	28339	25062	7949	10391	5	2019	57	Financial Management
\.


--
-- Data for Name: Bundessteuern; Type: TABLE DATA; Schema: public; Owner: jdw686
--

COPY public."Bundessteuern" (index, "Unnamed: 0", "Category", "Current Year Total", "Date", "Difference Method", "Month", "Monthly Total", "Percentage Method", "Prior Year Total", "Rolling Total", "Year", category_en) FROM stdin;
24	2010-01-01	Lohnsteuer	3579	2010-01-01	\N	1	3579	\N	3984	56843	2010	Wages Tax
25	2010-02-01	Lohnsteuer	7588	2010-02-01	\N	2	4009	\N	8611	56225	2010	Wages Tax
26	2010-03-01	Lohnsteuer	11465	2010-03-01	\N	3	3877	\N	12986	55727	2010	Wages Tax
27	2010-04-01	Lohnsteuer	15878	2010-04-01	\N	4	4413	\N	16126	57000	2010	Wages Tax
28	2010-05-01	Lohnsteuer	19842	2010-05-01	\N	5	3964	\N	21109	55981	2010	Wages Tax
29	2010-06-01	Lohnsteuer	24490	2010-06-01	\N	6	4648	\N	25933	55805	2010	Wages Tax
30	2010-07-01	Lohnsteuer	29297	2010-07-01	\N	7	4807	\N	31074	55472	2010	Wages Tax
31	2010-08-01	Lohnsteuer	33410	2010-08-01	\N	8	4113	\N	35367	55291	2010	Wages Tax
32	2010-09-01	Lohnsteuer	37457	2010-09-01	\N	9	4047	\N	39641	55064	2010	Wages Tax
33	2010-10-01	Lohnsteuer	41569	2010-10-01	\N	10	4112	\N	44015	54802	2010	Wages Tax
34	2010-11-01	Lohnsteuer	45702	2010-11-01	\N	11	4133	\N	48278	54672	2010	Wages Tax
35	2010-12-01	Lohnsteuer	54759	2010-12-01	\N	12	9057	\N	57248	54759	2010	Wages Tax
36	2011-01-01	Lohnsteuer	3473	2011-01-01	\N	1	3473	\N	3579	54653	2011	Wages Tax
37	2011-02-01	Lohnsteuer	7872	2011-02-01	\N	2	4399	\N	7588	55043	2011	Wages Tax
38	2011-03-01	Lohnsteuer	12146	2011-03-01	\N	3	4274	\N	11465	55440	2011	Wages Tax
39	2011-04-01	Lohnsteuer	16989	2011-04-01	\N	4	4843	\N	15878	55870	2011	Wages Tax
40	2011-05-01	Lohnsteuer	21483	2011-05-01	\N	5	4494	\N	19842	56400	2011	Wages Tax
41	2011-06-01	Lohnsteuer	26657	2011-06-01	\N	6	5174	\N	24490	56926	2011	Wages Tax
42	2011-07-01	Lohnsteuer	31945	2011-07-01	\N	7	5288	\N	29297	57407	2011	Wages Tax
43	2011-08-01	Lohnsteuer	36458	2011-08-01	\N	8	4513	\N	33410	57807	2011	Wages Tax
44	2011-09-01	Lohnsteuer	40887	2011-09-01	\N	9	4429	\N	37457	58189	2011	Wages Tax
45	2011-10-01	Lohnsteuer	45400	2011-10-01	\N	10	4513	\N	41569	58590	2011	Wages Tax
46	2011-11-01	Lohnsteuer	50046	2011-11-01	\N	11	4646	\N	45702	59103	2011	Wages Tax
47	2011-12-01	Lohnsteuer	59475	2011-12-01	\N	12	9429	\N	54759	59475	2011	Wages Tax
48	2012-01-01	Lohnsteuer	3587	2012-01-01	\N	1	3587	\N	3473	59589	2012	Wages Tax
49	2012-02-01	Lohnsteuer	8207	2012-02-01	\N	2	4620	\N	7872	59810	2012	Wages Tax
50	2012-03-01	Lohnsteuer	12743	2012-03-01	\N	3	4536	\N	12146	60072	2012	Wages Tax
51	2012-04-01	Lohnsteuer	17904	2012-04-01	\N	4	5161	\N	16989	60390	2012	Wages Tax
52	2012-05-01	Lohnsteuer	22523	2012-05-01	\N	5	4619	\N	21483	60515	2012	Wages Tax
53	2012-06-01	Lohnsteuer	28078	2012-06-01	\N	6	5555	\N	26657	60896	2012	Wages Tax
54	2012-07-01	Lohnsteuer	33808	2012-07-01	\N	7	5730	\N	31945	61338	2012	Wages Tax
55	2012-08-01	Lohnsteuer	38877	2012-08-01	\N	8	5069	\N	36458	61894	2012	Wages Tax
56	2012-09-01	Lohnsteuer	43624	2012-09-01	\N	9	4747	\N	40887	62212	2012	Wages Tax
57	2012-10-01	Lohnsteuer	48421	2012-10-01	\N	10	4797	\N	45400	62496	2012	Wages Tax
58	2012-11-01	Lohnsteuer	53202	2012-11-01	\N	11	4781	\N	50046	62631	2012	Wages Tax
59	2012-12-01	Lohnsteuer	63136	2012-12-01	\N	12	9934	\N	59475	63136	2012	Wages Tax
60	2013-01-01	Lohnsteuer	4031	2013-01-01	\N	1	4031	\N	3587	63580	2013	Wages Tax
61	2013-02-01	Lohnsteuer	9047	2013-02-01	\N	2	5016	\N	8207	63976	2013	Wages Tax
62	2013-03-01	Lohnsteuer	13852	2013-03-01	\N	3	4805	\N	12743	64245	2013	Wages Tax
63	2013-04-01	Lohnsteuer	19285	2013-04-01	\N	4	5433	\N	17904	64517	2013	Wages Tax
64	2013-05-01	Lohnsteuer	24300	2013-05-01	\N	5	5015	\N	22523	64913	2013	Wages Tax
65	2013-06-01	Lohnsteuer	30333	2013-06-01	\N	6	6033	\N	28078	65391	2013	Wages Tax
66	2013-07-01	Lohnsteuer	36202	2013-07-01	\N	7	5869	\N	33808	65530	2013	Wages Tax
67	2013-08-01	Lohnsteuer	41481	2013-08-01	\N	8	5279	\N	38877	65740	2013	Wages Tax
68	2013-09-01	Lohnsteuer	46518	2013-09-01	\N	9	5037	\N	43624	66030	2013	Wages Tax
69	2013-10-01	Lohnsteuer	51642	2013-10-01	\N	10	5124	\N	48421	66357	2013	Wages Tax
70	2013-11-01	Lohnsteuer	56754	2013-11-01	\N	11	5112	\N	53202	66688	2013	Wages Tax
71	2013-12-01	Lohnsteuer	67174	2013-12-01	\N	12	10420	\N	63136	67174	2013	Wages Tax
72	2014-01-01	Lohnsteuer	4406	2014-01-01	\N	1	4406	\N	4031	67549	2014	Wages Tax
73	2014-02-01	Lohnsteuer	9845	2014-02-01	\N	2	5439	\N	9047	67972	2014	Wages Tax
74	2014-03-01	Lohnsteuer	15008	2014-03-01	\N	3	5163	\N	13852	68330	2014	Wages Tax
75	2014-04-01	Lohnsteuer	20756	2014-04-01	\N	4	5748	\N	19285	68645	2014	Wages Tax
76	2014-05-01	Lohnsteuer	25992	2014-05-01	\N	5	5236	\N	24300	68866	2014	Wages Tax
77	2014-06-01	Lohnsteuer	32314	2014-06-01	\N	6	6322	\N	30333	69155	2014	Wages Tax
78	2014-07-01	Lohnsteuer	38600	2014-07-01	\N	7	6286	\N	36202	69572	2014	Wages Tax
79	2014-08-01	Lohnsteuer	44271	2014-08-01	\N	8	5671	\N	41481	69964	2014	Wages Tax
80	2014-09-01	Lohnsteuer	49545	2014-09-01	\N	9	5274	\N	46518	70201	2014	Wages Tax
81	2014-10-01	Lohnsteuer	54989	2014-10-01	\N	10	5444	\N	51642	70521	2014	Wages Tax
82	2014-11-01	Lohnsteuer	60503	2014-11-01	\N	11	5514	\N	56754	70923	2014	Wages Tax
83	2014-12-01	Lohnsteuer	71420	2014-12-01	\N	12	10917	\N	67174	71420	2014	Wages Tax
84	2015-01-01	Lohnsteuer	4745	2015-01-01	\N	1	4745	\N	4406	71759	2015	Wages Tax
85	2015-02-01	Lohnsteuer	10503	2015-02-01	\N	2	5758	\N	9845	72078	2015	Wages Tax
86	2015-03-01	Lohnsteuer	16016	2015-03-01	\N	3	5513	\N	15008	72428	2015	Wages Tax
87	2015-04-01	Lohnsteuer	22197	2015-04-01	\N	4	6181	\N	20756	72861	2015	Wages Tax
88	2015-05-01	Lohnsteuer	28020	2015-05-01	\N	5	5823	\N	25992	73448	2015	Wages Tax
89	2015-06-01	Lohnsteuer	34827	2015-06-01	\N	6	6807	\N	32314	73933	2015	Wages Tax
90	2015-07-01	Lohnsteuer	41515	2015-07-01	\N	7	6688	\N	38600	74335	2015	Wages Tax
91	2015-08-01	Lohnsteuer	47644	2015-08-01	\N	8	6129	\N	44271	74793	2015	Wages Tax
92	2015-09-01	Lohnsteuer	53206	2015-09-01	\N	9	5562	\N	49545	75081	2015	Wages Tax
93	2015-10-01	Lohnsteuer	58481	2015-10-01	\N	10	5275	\N	54989	74912	2015	Wages Tax
94	2015-11-01	Lohnsteuer	64589	2015-11-01	\N	11	6108	\N	60503	75506	2015	Wages Tax
95	2015-12-01	Lohnsteuer	76028	2015-12-01	\N	12	11439	\N	71420	76028	2015	Wages Tax
96	2016-01-01	Lohnsteuer	4752	2016-01-01	\N	1	4752	\N	4745	76035	2016	Wages Tax
97	2016-02-01	Lohnsteuer	10699	2016-02-01	\N	2	5947	\N	10503	76224	2016	Wages Tax
98	2016-03-01	Lohnsteuer	16393	2016-03-01	\N	3	5694	\N	16016	76405	2016	Wages Tax
99	2016-04-01	Lohnsteuer	22934	2016-04-01	\N	4	6541	\N	22197	76765	2016	Wages Tax
100	2016-05-01	Lohnsteuer	28755	2016-05-01	\N	5	5821	\N	28020	76763	2016	Wages Tax
101	2016-06-01	Lohnsteuer	35601	2016-06-01	\N	6	6846	\N	34827	76802	2016	Wages Tax
102	2016-07-01	Lohnsteuer	42485	2016-07-01	\N	7	6884	\N	41515	76998	2016	Wages Tax
103	2016-08-01	Lohnsteuer	48603	2016-08-01	\N	8	6118	\N	47644	76987	2016	Wages Tax
104	2016-09-01	Lohnsteuer	54628	2016-09-01	\N	9	6025	\N	53206	77450	2016	Wages Tax
105	2016-10-01	Lohnsteuer	60663	2016-10-01	\N	10	6035	\N	58481	78210	2016	Wages Tax
106	2016-11-01	Lohnsteuer	66641	2016-11-01	\N	11	5978	\N	64589	78080	2016	Wages Tax
107	2016-12-01	Lohnsteuer	78519	2016-12-01	\N	12	11878	\N	76028	78519	2016	Wages Tax
108	2017-01-01	Lohnsteuer	5262	2017-01-01	\N	1	5262	\N	4752	79029	2017	Wages Tax
109	2017-02-01	Lohnsteuer	11583	2017-02-01	\N	2	6321	\N	10699	79403	2017	Wages Tax
110	2017-03-01	Lohnsteuer	17577	2017-03-01	\N	3	5994	\N	16393	79703	2017	Wages Tax
111	2017-04-01	Lohnsteuer	24458	2017-04-01	\N	4	6881	\N	22934	80043	2017	Wages Tax
112	2017-05-01	Lohnsteuer	30682	2017-05-01	\N	5	6224	\N	28755	80446	2017	Wages Tax
113	2017-06-01	Lohnsteuer	38045	2017-06-01	\N	6	7363	\N	35601	80963	2017	Wages Tax
114	2017-07-01	Lohnsteuer	45238	2017-07-01	\N	7	7193	\N	42485	81272	2017	Wages Tax
115	2017-08-01	Lohnsteuer	51965	2017-08-01	\N	8	6727	\N	48603	81881	2017	Wages Tax
116	2017-09-01	Lohnsteuer	58137	2017-09-01	\N	9	6172	\N	54628	82028	2017	Wages Tax
117	2017-10-01	Lohnsteuer	64447	2017-10-01	\N	10	6310	\N	60663	82303	2017	Wages Tax
118	2017-11-01	Lohnsteuer	70874	2017-11-01	\N	11	6427	\N	66641	82752	2017	Wages Tax
119	2017-12-01	Lohnsteuer	83121	2017-12-01	\N	12	12247	\N	78519	83121	2017	Wages Tax
120	2018-01-01	Lohnsteuer	5603	2018-01-01	\N	1	5603	\N	5262	83462	2018	Wages Tax
121	2018-02-01	Lohnsteuer	12298	2018-02-01	\N	2	6695	\N	11583	83836	2018	Wages Tax
122	2018-03-01	Lohnsteuer	18669	2018-03-01	\N	3	6371	\N	17577	84213	2018	Wages Tax
123	2018-04-01	Lohnsteuer	25958	2018-04-01	\N	4	7289	\N	24458	84621	2018	Wages Tax
124	2018-05-01	Lohnsteuer	32753	2018-05-01	\N	5	6795	\N	30682	85192	2018	Wages Tax
125	2018-06-01	Lohnsteuer	40473	2018-06-01	\N	6	7720	\N	38045	85549	2018	Wages Tax
126	2018-07-01	Lohnsteuer	48230	2018-07-01	\N	7	7757	\N	45238	86113	2018	Wages Tax
127	2018-08-01	Lohnsteuer	55255	2018-08-01	\N	8	7025	\N	51965	86411	2018	Wages Tax
128	2018-09-01	Lohnsteuer	61910	2018-09-01	\N	9	6655	\N	58137	86894	2018	Wages Tax
129	2018-10-01	Lohnsteuer	68715	2018-10-01	\N	10	6805	\N	64447	87389	2018	Wages Tax
130	2018-11-01	Lohnsteuer	75641	2018-11-01	\N	11	6926	\N	70874	87888	2018	Wages Tax
131	2018-12-01	Lohnsteuer	88520	2018-12-01	\N	12	12879	\N	83121	88520	2018	Wages Tax
132	2008-01-01	Veranlagte Einkommensteuer	337	2008-01-01	\N	1	337	\N	0	\N	2008	Assessed Income Taxes
133	2008-02-01	Veranlagte Einkommensteuer	347	2008-02-01	\N	2	10	\N	0	\N	2008	Assessed Income Taxes
134	2008-03-01	Veranlagte Einkommensteuer	1567	2008-03-01	\N	3	1220	\N	0	\N	2008	Assessed Income Taxes
135	2008-04-01	Veranlagte Einkommensteuer	1997	2008-04-01	\N	4	430	\N	0	\N	2008	Assessed Income Taxes
136	2008-05-01	Veranlagte Einkommensteuer	2324	2008-05-01	\N	5	327	\N	0	\N	2008	Assessed Income Taxes
137	2008-06-01	Veranlagte Einkommensteuer	5986	2008-06-01	\N	6	3662	\N	0	\N	2008	Assessed Income Taxes
138	2008-07-01	Veranlagte Einkommensteuer	6032	2008-07-01	\N	7	46	\N	0	\N	2008	Assessed Income Taxes
139	2008-08-01	Veranlagte Einkommensteuer	5977	2008-08-01	\N	8	-55	\N	0	\N	2008	Assessed Income Taxes
140	2008-09-01	Veranlagte Einkommensteuer	9759	2008-09-01	\N	9	3782	\N	0	\N	2008	Assessed Income Taxes
141	2008-10-01	Veranlagte Einkommensteuer	9827	2008-10-01	\N	10	68	\N	0	\N	2008	Assessed Income Taxes
142	2008-11-01	Veranlagte Einkommensteuer	9678	2008-11-01	\N	11	-149	\N	0	\N	2008	Assessed Income Taxes
2853	2020-02-01	Lohnsteuer	\N	2020-02-01	95517.5036782345705	2	\N	98366.8060070583597	\N	95517.5036782345705	2020	Wages Tax
143	2008-12-01	Veranlagte Einkommensteuer	13899	2008-12-01	\N	12	4221	\N	0	13899	2008	Assessed Income Taxes
144	2009-01-01	Veranlagte Einkommensteuer	236	2009-01-01	\N	1	236	\N	337	13798	2009	Assessed Income Taxes
145	2009-02-01	Veranlagte Einkommensteuer	-373	2009-02-01	\N	2	-609	\N	347	13179	2009	Assessed Income Taxes
146	2009-03-01	Veranlagte Einkommensteuer	1262	2009-03-01	\N	3	1635	\N	1567	13594	2009	Assessed Income Taxes
147	2009-04-01	Veranlagte Einkommensteuer	1743	2009-04-01	\N	4	481	\N	1997	13645	2009	Assessed Income Taxes
148	2009-05-01	Veranlagte Einkommensteuer	1763	2009-05-01	\N	5	20	\N	2324	13338	2009	Assessed Income Taxes
149	2009-06-01	Veranlagte Einkommensteuer	5147	2009-06-01	\N	6	3384	\N	5986	13060	2009	Assessed Income Taxes
150	2009-07-01	Veranlagte Einkommensteuer	4907	2009-07-01	\N	7	-240	\N	6032	12774	2009	Assessed Income Taxes
151	2009-08-01	Veranlagte Einkommensteuer	4668	2009-08-01	\N	8	-239	\N	5977	12590	2009	Assessed Income Taxes
152	2009-09-01	Veranlagte Einkommensteuer	8008	2009-09-01	\N	9	3340	\N	9759	12148	2009	Assessed Income Taxes
153	2009-10-01	Veranlagte Einkommensteuer	7722	2009-10-01	\N	10	-286	\N	9827	11794	2009	Assessed Income Taxes
154	2009-11-01	Veranlagte Einkommensteuer	7472	2009-11-01	\N	11	-250	\N	9678	11693	2009	Assessed Income Taxes
155	2009-12-01	Veranlagte Einkommensteuer	11233	2009-12-01	\N	12	3761	\N	13899	11233	2009	Assessed Income Taxes
156	2010-01-01	Veranlagte Einkommensteuer	166	2010-01-01	\N	1	166	\N	236	11163	2010	Assessed Income Taxes
157	2010-02-01	Veranlagte Einkommensteuer	136	2010-02-01	\N	2	-30	\N	-373	11742	2010	Assessed Income Taxes
158	2010-03-01	Veranlagte Einkommensteuer	2616	2010-03-01	\N	3	2480	\N	1262	12587	2010	Assessed Income Taxes
159	2010-04-01	Veranlagte Einkommensteuer	3150	2010-04-01	\N	4	534	\N	1743	12640	2010	Assessed Income Taxes
160	2010-05-01	Veranlagte Einkommensteuer	3089	2010-05-01	\N	5	-61	\N	1763	12559	2010	Assessed Income Taxes
161	2010-06-01	Veranlagte Einkommensteuer	6730	2010-06-01	\N	6	3641	\N	5147	12816	2010	Assessed Income Taxes
162	2010-07-01	Veranlagte Einkommensteuer	6551	2010-07-01	\N	7	-179	\N	4907	12877	2010	Assessed Income Taxes
163	2010-08-01	Veranlagte Einkommensteuer	6283	2010-08-01	\N	8	-268	\N	4668	12848	2010	Assessed Income Taxes
164	2010-09-01	Veranlagte Einkommensteuer	9841	2010-09-01	\N	9	3558	\N	8008	13066	2010	Assessed Income Taxes
165	2010-10-01	Veranlagte Einkommensteuer	9650	2010-10-01	\N	10	-191	\N	7722	13161	2010	Assessed Income Taxes
166	2010-11-01	Veranlagte Einkommensteuer	9310	2010-11-01	\N	11	-340	\N	7472	13071	2010	Assessed Income Taxes
167	2010-12-01	Veranlagte Einkommensteuer	13252	2010-12-01	\N	12	3942	\N	11233	13252	2010	Assessed Income Taxes
168	2011-01-01	Veranlagte Einkommensteuer	152	2011-01-01	\N	1	152	\N	166	13238	2011	Assessed Income Taxes
169	2011-02-01	Veranlagte Einkommensteuer	-44	2011-02-01	\N	2	-196	\N	136	13072	2011	Assessed Income Taxes
170	2011-03-01	Veranlagte Einkommensteuer	2871	2011-03-01	\N	3	2915	\N	2616	13507	2011	Assessed Income Taxes
171	2011-04-01	Veranlagte Einkommensteuer	3087	2011-04-01	\N	4	216	\N	3150	13189	2011	Assessed Income Taxes
172	2011-05-01	Veranlagte Einkommensteuer	3195	2011-05-01	\N	5	108	\N	3089	13358	2011	Assessed Income Taxes
173	2011-06-01	Veranlagte Einkommensteuer	6852	2011-06-01	\N	6	3657	\N	6730	13374	2011	Assessed Income Taxes
174	2011-07-01	Veranlagte Einkommensteuer	6534	2011-07-01	\N	7	-318	\N	6551	13235	2011	Assessed Income Taxes
175	2011-08-01	Veranlagte Einkommensteuer	6233	2011-08-01	\N	8	-301	\N	6283	13202	2011	Assessed Income Taxes
176	2011-09-01	Veranlagte Einkommensteuer	9874	2011-09-01	\N	9	3641	\N	9841	13285	2011	Assessed Income Taxes
177	2011-10-01	Veranlagte Einkommensteuer	9666	2011-10-01	\N	10	-208	\N	9650	13268	2011	Assessed Income Taxes
178	2011-11-01	Veranlagte Einkommensteuer	9384	2011-11-01	\N	11	-282	\N	9310	13326	2011	Assessed Income Taxes
179	2011-12-01	Veranlagte Einkommensteuer	13599	2011-12-01	\N	12	4215	\N	13252	13599	2011	Assessed Income Taxes
180	2012-01-01	Veranlagte Einkommensteuer	216	2012-01-01	\N	1	216	\N	152	13663	2012	Assessed Income Taxes
181	2012-02-01	Veranlagte Einkommensteuer	184	2012-02-01	\N	2	-32	\N	-44	13827	2012	Assessed Income Taxes
182	2012-03-01	Veranlagte Einkommensteuer	3595	2012-03-01	\N	3	3411	\N	2871	14323	2012	Assessed Income Taxes
183	2012-04-01	Veranlagte Einkommensteuer	3898	2012-04-01	\N	4	303	\N	3087	14410	2012	Assessed Income Taxes
184	2012-05-01	Veranlagte Einkommensteuer	3954	2012-05-01	\N	5	56	\N	3195	14358	2012	Assessed Income Taxes
185	2012-06-01	Veranlagte Einkommensteuer	7848	2012-06-01	\N	6	3894	\N	6852	14595	2012	Assessed Income Taxes
186	2012-07-01	Veranlagte Einkommensteuer	7641	2012-07-01	\N	7	-207	\N	6534	14706	2012	Assessed Income Taxes
187	2012-08-01	Veranlagte Einkommensteuer	7514	2012-08-01	\N	8	-127	\N	6233	14880	2012	Assessed Income Taxes
188	2012-09-01	Veranlagte Einkommensteuer	11622	2012-09-01	\N	9	4108	\N	9874	15347	2012	Assessed Income Taxes
189	2012-10-01	Veranlagte Einkommensteuer	11540	2012-10-01	\N	10	-82	\N	9666	15473	2012	Assessed Income Taxes
190	2012-11-01	Veranlagte Einkommensteuer	11276	2012-11-01	\N	11	-264	\N	9384	15491	2012	Assessed Income Taxes
191	2012-12-01	Veranlagte Einkommensteuer	15838	2012-12-01	\N	12	4562	\N	13599	15838	2012	Assessed Income Taxes
192	2013-01-01	Veranlagte Einkommensteuer	304	2013-01-01	\N	1	304	\N	216	15926	2013	Assessed Income Taxes
193	2013-02-01	Veranlagte Einkommensteuer	268	2013-02-01	\N	2	-36	\N	184	15922	2013	Assessed Income Taxes
194	2013-03-01	Veranlagte Einkommensteuer	4567	2013-03-01	\N	3	4299	\N	3595	16810	2013	Assessed Income Taxes
195	2013-04-01	Veranlagte Einkommensteuer	4925	2013-04-01	\N	4	358	\N	3898	16865	2013	Assessed Income Taxes
196	2013-05-01	Veranlagte Einkommensteuer	5106	2013-05-01	\N	5	181	\N	3954	16990	2013	Assessed Income Taxes
197	2013-06-01	Veranlagte Einkommensteuer	9277	2013-06-01	\N	6	4171	\N	7848	17267	2013	Assessed Income Taxes
198	2013-07-01	Veranlagte Einkommensteuer	9134	2013-07-01	\N	7	-143	\N	7641	17331	2013	Assessed Income Taxes
199	2013-08-01	Veranlagte Einkommensteuer	8965	2013-08-01	\N	8	-169	\N	7514	17289	2013	Assessed Income Taxes
200	2013-09-01	Veranlagte Einkommensteuer	13449	2013-09-01	\N	9	4484	\N	11622	17665	2013	Assessed Income Taxes
201	2013-10-01	Veranlagte Einkommensteuer	13329	2013-10-01	\N	10	-120	\N	11540	17627	2013	Assessed Income Taxes
202	2013-11-01	Veranlagte Einkommensteuer	13074	2013-11-01	\N	11	-255	\N	11276	17636	2013	Assessed Income Taxes
203	2013-12-01	Veranlagte Einkommensteuer	17969	2013-12-01	\N	12	4895	\N	15838	17969	2013	Assessed Income Taxes
204	2014-01-01	Veranlagte Einkommensteuer	365	2014-01-01	\N	1	365	\N	304	18030	2014	Assessed Income Taxes
205	2014-02-01	Veranlagte Einkommensteuer	329	2014-02-01	\N	2	-36	\N	268	18030	2014	Assessed Income Taxes
206	2014-03-01	Veranlagte Einkommensteuer	5018	2014-03-01	\N	3	4689	\N	4567	18420	2014	Assessed Income Taxes
207	2014-04-01	Veranlagte Einkommensteuer	5497	2014-04-01	\N	4	479	\N	4925	18541	2014	Assessed Income Taxes
208	2014-05-01	Veranlagte Einkommensteuer	5614	2014-05-01	\N	5	117	\N	5106	18477	2014	Assessed Income Taxes
209	2014-06-01	Veranlagte Einkommensteuer	10102	2014-06-01	\N	6	4488	\N	9277	18794	2014	Assessed Income Taxes
210	2014-07-01	Veranlagte Einkommensteuer	9902	2014-07-01	\N	7	-200	\N	9134	18737	2014	Assessed Income Taxes
211	2014-08-01	Veranlagte Einkommensteuer	9728	2014-08-01	\N	8	-174	\N	8965	18732	2014	Assessed Income Taxes
212	2014-09-01	Veranlagte Einkommensteuer	14362	2014-09-01	\N	9	4634	\N	13449	18882	2014	Assessed Income Taxes
213	2014-10-01	Veranlagte Einkommensteuer	14224	2014-10-01	\N	10	-138	\N	13329	18864	2014	Assessed Income Taxes
214	2014-11-01	Veranlagte Einkommensteuer	14068	2014-11-01	\N	11	-156	\N	13074	18963	2014	Assessed Income Taxes
215	2014-12-01	Veranlagte Einkommensteuer	19385	2014-12-01	\N	12	5317	\N	17969	19385	2014	Assessed Income Taxes
216	2015-01-01	Veranlagte Einkommensteuer	368	2015-01-01	\N	1	368	\N	365	19388	2015	Assessed Income Taxes
217	2015-02-01	Veranlagte Einkommensteuer	418	2015-02-01	\N	2	50	\N	329	19474	2015	Assessed Income Taxes
218	2015-03-01	Veranlagte Einkommensteuer	5582	2015-03-01	\N	3	5164	\N	5018	19949	2015	Assessed Income Taxes
219	2015-04-01	Veranlagte Einkommensteuer	6071	2015-04-01	\N	4	489	\N	5497	19959	2015	Assessed Income Taxes
220	2015-05-01	Veranlagte Einkommensteuer	6125	2015-05-01	\N	5	54	\N	5614	19896	2015	Assessed Income Taxes
221	2015-06-01	Veranlagte Einkommensteuer	10819	2015-06-01	\N	6	4694	\N	10102	20102	2015	Assessed Income Taxes
222	2015-07-01	Veranlagte Einkommensteuer	10565	2015-07-01	\N	7	-254	\N	9902	20048	2015	Assessed Income Taxes
223	2015-08-01	Veranlagte Einkommensteuer	10386	2015-08-01	\N	8	-179	\N	9728	20043	2015	Assessed Income Taxes
224	2015-09-01	Veranlagte Einkommensteuer	15353	2015-09-01	\N	9	4967	\N	14362	20376	2015	Assessed Income Taxes
225	2015-10-01	Veranlagte Einkommensteuer	15207	2015-10-01	\N	10	-146	\N	14224	20368	2015	Assessed Income Taxes
226	2015-11-01	Veranlagte Einkommensteuer	14986	2015-11-01	\N	11	-221	\N	14068	20303	2015	Assessed Income Taxes
227	2015-12-01	Veranlagte Einkommensteuer	20647	2015-12-01	\N	12	5661	\N	19385	20647	2015	Assessed Income Taxes
228	2016-01-01	Veranlagte Einkommensteuer	436	2016-01-01	\N	1	436	\N	368	20715	2016	Assessed Income Taxes
229	2016-02-01	Veranlagte Einkommensteuer	610	2016-02-01	\N	2	174	\N	418	20839	2016	Assessed Income Taxes
230	2016-03-01	Veranlagte Einkommensteuer	6191	2016-03-01	\N	3	5581	\N	5582	21256	2016	Assessed Income Taxes
231	2016-04-01	Veranlagte Einkommensteuer	6593	2016-04-01	\N	4	402	\N	6071	21169	2016	Assessed Income Taxes
232	2016-05-01	Veranlagte Einkommensteuer	6733	2016-05-01	\N	5	140	\N	6125	21255	2016	Assessed Income Taxes
233	2016-06-01	Veranlagte Einkommensteuer	11693	2016-06-01	\N	6	4960	\N	10819	21521	2016	Assessed Income Taxes
234	2016-07-01	Veranlagte Einkommensteuer	11601	2016-07-01	\N	7	-92	\N	10565	21683	2016	Assessed Income Taxes
235	2016-08-01	Veranlagte Einkommensteuer	11360	2016-08-01	\N	8	-241	\N	10386	21621	2016	Assessed Income Taxes
236	2016-09-01	Veranlagte Einkommensteuer	16749	2016-09-01	\N	9	5389	\N	15353	22043	2016	Assessed Income Taxes
237	2016-10-01	Veranlagte Einkommensteuer	16710	2016-10-01	\N	10	-39	\N	15207	22150	2016	Assessed Income Taxes
238	2016-11-01	Veranlagte Einkommensteuer	16582	2016-11-01	\N	11	-128	\N	14986	22243	2016	Assessed Income Taxes
239	2016-12-01	Veranlagte Einkommensteuer	22879	2016-12-01	\N	12	6297	\N	20647	22879	2016	Assessed Income Taxes
240	2017-01-01	Veranlagte Einkommensteuer	414	2017-01-01	\N	1	414	\N	436	22857	2017	Assessed Income Taxes
241	2017-02-01	Veranlagte Einkommensteuer	856	2017-02-01	\N	2	442	\N	610	23125	2017	Assessed Income Taxes
242	2017-03-01	Veranlagte Einkommensteuer	7229	2017-03-01	\N	3	6373	\N	6191	23917	2017	Assessed Income Taxes
243	2017-04-01	Veranlagte Einkommensteuer	7818	2017-04-01	\N	4	589	\N	6593	24104	2017	Assessed Income Taxes
244	2017-05-01	Veranlagte Einkommensteuer	7942	2017-05-01	\N	5	124	\N	6733	24088	2017	Assessed Income Taxes
245	2017-06-01	Veranlagte Einkommensteuer	13530	2017-06-01	\N	6	5588	\N	11693	24716	2017	Assessed Income Taxes
246	2017-07-01	Veranlagte Einkommensteuer	13449	2017-07-01	\N	7	-81	\N	11601	24727	2017	Assessed Income Taxes
247	2017-08-01	Veranlagte Einkommensteuer	13198	2017-08-01	\N	8	-251	\N	11360	24717	2017	Assessed Income Taxes
248	2017-09-01	Veranlagte Einkommensteuer	18936	2017-09-01	\N	9	5738	\N	16749	25066	2017	Assessed Income Taxes
249	2017-10-01	Veranlagte Einkommensteuer	18854	2017-10-01	\N	10	-82	\N	16710	25023	2017	Assessed Income Taxes
250	2017-11-01	Veranlagte Einkommensteuer	18688	2017-11-01	\N	11	-166	\N	16582	24985	2017	Assessed Income Taxes
251	2017-12-01	Veranlagte Einkommensteuer	25256	2017-12-01	\N	12	6568	\N	22879	25256	2017	Assessed Income Taxes
252	2018-01-01	Veranlagte Einkommensteuer	416	2018-01-01	\N	1	416	\N	414	25258	2018	Assessed Income Taxes
253	2018-02-01	Veranlagte Einkommensteuer	965	2018-02-01	\N	2	549	\N	856	25365	2018	Assessed Income Taxes
254	2018-03-01	Veranlagte Einkommensteuer	7498	2018-03-01	\N	3	6533	\N	7229	25525	2018	Assessed Income Taxes
255	2018-04-01	Veranlagte Einkommensteuer	8154	2018-04-01	\N	4	656	\N	7818	25592	2018	Assessed Income Taxes
256	2018-05-01	Veranlagte Einkommensteuer	8239	2018-05-01	\N	5	85	\N	7942	25553	2018	Assessed Income Taxes
257	2018-06-01	Veranlagte Einkommensteuer	13825	2018-06-01	\N	6	5586	\N	13530	25551	2018	Assessed Income Taxes
258	2018-07-01	Veranlagte Einkommensteuer	13551	2018-07-01	\N	7	-274	\N	13449	25358	2018	Assessed Income Taxes
259	2018-08-01	Veranlagte Einkommensteuer	13357	2018-08-01	\N	8	-194	\N	13198	25415	2018	Assessed Income Taxes
260	2018-09-01	Veranlagte Einkommensteuer	19216	2018-09-01	\N	9	5859	\N	18936	25536	2018	Assessed Income Taxes
261	2018-10-01	Veranlagte Einkommensteuer	19116	2018-10-01	\N	10	-100	\N	18854	25518	2018	Assessed Income Taxes
262	2018-11-01	Veranlagte Einkommensteuer	18949	2018-11-01	\N	11	-167	\N	18688	25517	2018	Assessed Income Taxes
263	2018-12-01	Veranlagte Einkommensteuer	25678	2018-12-01	\N	12	6729	\N	25256	25678	2018	Assessed Income Taxes
264	2008-01-01	nicht veranlagte Steuer vom Ertrag	796	2008-01-01	\N	1	796	\N	0	\N	2008	Non-Assessed Taxes on Earnings
265	2008-02-01	nicht veranlagte Steuer vom Ertrag	1180	2008-02-01	\N	2	384	\N	0	\N	2008	Non-Assessed Taxes on Earnings
266	2008-03-01	nicht veranlagte Steuer vom Ertrag	1545	2008-03-01	\N	3	365	\N	0	\N	2008	Non-Assessed Taxes on Earnings
267	2008-04-01	nicht veranlagte Steuer vom Ertrag	2898	2008-04-01	\N	4	1353	\N	0	\N	2008	Non-Assessed Taxes on Earnings
268	2008-05-01	nicht veranlagte Steuer vom Ertrag	4588	2008-05-01	\N	5	1690	\N	0	\N	2008	Non-Assessed Taxes on Earnings
269	2008-06-01	nicht veranlagte Steuer vom Ertrag	5348	2008-06-01	\N	6	760	\N	0	\N	2008	Non-Assessed Taxes on Earnings
270	2008-07-01	nicht veranlagte Steuer vom Ertrag	6005	2008-07-01	\N	7	657	\N	0	\N	2008	Non-Assessed Taxes on Earnings
271	2008-08-01	nicht veranlagte Steuer vom Ertrag	6358	2008-08-01	\N	8	353	\N	0	\N	2008	Non-Assessed Taxes on Earnings
272	2008-09-01	nicht veranlagte Steuer vom Ertrag	6560	2008-09-01	\N	9	202	\N	0	\N	2008	Non-Assessed Taxes on Earnings
273	2008-10-01	nicht veranlagte Steuer vom Ertrag	6849	2008-10-01	\N	10	289	\N	0	\N	2008	Non-Assessed Taxes on Earnings
274	2008-11-01	nicht veranlagte Steuer vom Ertrag	7094	2008-11-01	\N	11	245	\N	0	\N	2008	Non-Assessed Taxes on Earnings
275	2008-12-01	nicht veranlagte Steuer vom Ertrag	8305	2008-12-01	\N	12	1211	\N	0	8305	2008	Non-Assessed Taxes on Earnings
276	2009-01-01	nicht veranlagte Steuer vom Ertrag	1040	2009-01-01	\N	1	1040	\N	796	8549	2009	Non-Assessed Taxes on Earnings
277	2009-02-01	nicht veranlagte Steuer vom Ertrag	1473	2009-02-01	\N	2	433	\N	1180	8598	2009	Non-Assessed Taxes on Earnings
278	2009-03-01	nicht veranlagte Steuer vom Ertrag	1598	2009-03-01	\N	3	125	\N	1545	8358	2009	Non-Assessed Taxes on Earnings
279	2009-04-01	nicht veranlagte Steuer vom Ertrag	2698	2009-04-01	\N	4	1100	\N	2898	8105	2009	Non-Assessed Taxes on Earnings
280	2009-05-01	nicht veranlagte Steuer vom Ertrag	4286	2009-05-01	\N	5	1588	\N	4588	8003	2009	Non-Assessed Taxes on Earnings
281	2009-06-01	nicht veranlagte Steuer vom Ertrag	4653	2009-06-01	\N	6	367	\N	5348	7610	2009	Non-Assessed Taxes on Earnings
282	2009-07-01	nicht veranlagte Steuer vom Ertrag	5139	2009-07-01	\N	7	486	\N	6005	7439	2009	Non-Assessed Taxes on Earnings
283	2009-08-01	nicht veranlagte Steuer vom Ertrag	5345	2009-08-01	\N	8	206	\N	6358	7292	2009	Non-Assessed Taxes on Earnings
284	2009-09-01	nicht veranlagte Steuer vom Ertrag	5508	2009-09-01	\N	9	163	\N	6560	7253	2009	Non-Assessed Taxes on Earnings
285	2009-10-01	nicht veranlagte Steuer vom Ertrag	5621	2009-10-01	\N	10	113	\N	6849	7077	2009	Non-Assessed Taxes on Earnings
286	2009-11-01	nicht veranlagte Steuer vom Ertrag	5736	2009-11-01	\N	11	115	\N	7094	6947	2009	Non-Assessed Taxes on Earnings
287	2009-12-01	nicht veranlagte Steuer vom Ertrag	6237	2009-12-01	\N	12	501	\N	8305	6237	2009	Non-Assessed Taxes on Earnings
288	2010-01-01	nicht veranlagte Steuer vom Ertrag	596	2010-01-01	\N	1	596	\N	1040	5793	2010	Non-Assessed Taxes on Earnings
289	2010-02-01	nicht veranlagte Steuer vom Ertrag	1107	2010-02-01	\N	2	511	\N	1473	5871	2010	Non-Assessed Taxes on Earnings
290	2010-03-01	nicht veranlagte Steuer vom Ertrag	1403	2010-03-01	\N	3	296	\N	1598	6042	2010	Non-Assessed Taxes on Earnings
291	2010-04-01	nicht veranlagte Steuer vom Ertrag	2233	2010-04-01	\N	4	830	\N	2698	5772	2010	Non-Assessed Taxes on Earnings
292	2010-05-01	nicht veranlagte Steuer vom Ertrag	3960	2010-05-01	\N	5	1727	\N	4286	5911	2010	Non-Assessed Taxes on Earnings
293	2010-06-01	nicht veranlagte Steuer vom Ertrag	4475	2010-06-01	\N	6	515	\N	4653	6059	2010	Non-Assessed Taxes on Earnings
294	2010-07-01	nicht veranlagte Steuer vom Ertrag	5095	2010-07-01	\N	7	620	\N	5139	6193	2010	Non-Assessed Taxes on Earnings
295	2010-08-01	nicht veranlagte Steuer vom Ertrag	5262	2010-08-01	\N	8	167	\N	5345	6154	2010	Non-Assessed Taxes on Earnings
296	2010-09-01	nicht veranlagte Steuer vom Ertrag	5490	2010-09-01	\N	9	228	\N	5508	6219	2010	Non-Assessed Taxes on Earnings
662	2008-03-01	Steuern vom Umsatz	23849	2008-03-01	\N	3	6938	\N	0	\N	2008	Value Added Taxes (VAT)
297	2010-10-01	nicht veranlagte Steuer vom Ertrag	5705	2010-10-01	\N	10	215	\N	5621	6321	2010	Non-Assessed Taxes on Earnings
298	2010-11-01	nicht veranlagte Steuer vom Ertrag	5869	2010-11-01	\N	11	164	\N	5736	6370	2010	Non-Assessed Taxes on Earnings
299	2010-12-01	nicht veranlagte Steuer vom Ertrag	6491	2010-12-01	\N	12	622	\N	6237	6491	2010	Non-Assessed Taxes on Earnings
300	2011-01-01	nicht veranlagte Steuer vom Ertrag	2112	2011-01-01	\N	1	2112	\N	596	8007	2011	Non-Assessed Taxes on Earnings
301	2011-02-01	nicht veranlagte Steuer vom Ertrag	2211	2011-02-01	\N	2	99	\N	1107	7595	2011	Non-Assessed Taxes on Earnings
302	2011-03-01	nicht veranlagte Steuer vom Ertrag	2546	2011-03-01	\N	3	335	\N	1403	7634	2011	Non-Assessed Taxes on Earnings
303	2011-04-01	nicht veranlagte Steuer vom Ertrag	3792	2011-04-01	\N	4	1246	\N	2233	8050	2011	Non-Assessed Taxes on Earnings
304	2011-05-01	nicht veranlagte Steuer vom Ertrag	6012	2011-05-01	\N	5	2220	\N	3960	8543	2011	Non-Assessed Taxes on Earnings
305	2011-06-01	nicht veranlagte Steuer vom Ertrag	6685	2011-06-01	\N	6	673	\N	4475	8701	2011	Non-Assessed Taxes on Earnings
306	2011-07-01	nicht veranlagte Steuer vom Ertrag	7309	2011-07-01	\N	7	624	\N	5095	8705	2011	Non-Assessed Taxes on Earnings
307	2011-08-01	nicht veranlagte Steuer vom Ertrag	7498	2011-08-01	\N	8	189	\N	5262	8727	2011	Non-Assessed Taxes on Earnings
308	2011-09-01	nicht veranlagte Steuer vom Ertrag	7852	2011-09-01	\N	9	354	\N	5490	8853	2011	Non-Assessed Taxes on Earnings
309	2011-10-01	nicht veranlagte Steuer vom Ertrag	8032	2011-10-01	\N	10	180	\N	5705	8818	2011	Non-Assessed Taxes on Earnings
310	2011-11-01	nicht veranlagte Steuer vom Ertrag	8263	2011-11-01	\N	11	231	\N	5869	8885	2011	Non-Assessed Taxes on Earnings
311	2011-12-01	nicht veranlagte Steuer vom Ertrag	9068	2011-12-01	\N	12	805	\N	6491	9068	2011	Non-Assessed Taxes on Earnings
312	2012-01-01	nicht veranlagte Steuer vom Ertrag	1358	2012-01-01	\N	1	1358	\N	2112	8314	2012	Non-Assessed Taxes on Earnings
313	2012-02-01	nicht veranlagte Steuer vom Ertrag	1599	2012-02-01	\N	2	241	\N	2211	8456	2012	Non-Assessed Taxes on Earnings
314	2012-03-01	nicht veranlagte Steuer vom Ertrag	2536	2012-03-01	\N	3	937	\N	2546	9058	2012	Non-Assessed Taxes on Earnings
315	2012-04-01	nicht veranlagte Steuer vom Ertrag	3014	2012-04-01	\N	4	478	\N	3792	8290	2012	Non-Assessed Taxes on Earnings
316	2012-05-01	nicht veranlagte Steuer vom Ertrag	3899	2012-05-01	\N	5	885	\N	6012	6955	2012	Non-Assessed Taxes on Earnings
317	2012-06-01	nicht veranlagte Steuer vom Ertrag	5729	2012-06-01	\N	6	1830	\N	6685	8112	2012	Non-Assessed Taxes on Earnings
318	2012-07-01	nicht veranlagte Steuer vom Ertrag	7241	2012-07-01	\N	7	1512	\N	7309	9000	2012	Non-Assessed Taxes on Earnings
319	2012-08-01	nicht veranlagte Steuer vom Ertrag	8196	2012-08-01	\N	8	955	\N	7498	9766	2012	Non-Assessed Taxes on Earnings
320	2012-09-01	nicht veranlagte Steuer vom Ertrag	8713	2012-09-01	\N	9	517	\N	7852	9929	2012	Non-Assessed Taxes on Earnings
321	2012-10-01	nicht veranlagte Steuer vom Ertrag	9096	2012-10-01	\N	10	383	\N	8032	10132	2012	Non-Assessed Taxes on Earnings
322	2012-11-01	nicht veranlagte Steuer vom Ertrag	9241	2012-11-01	\N	11	145	\N	8263	10046	2012	Non-Assessed Taxes on Earnings
323	2012-12-01	nicht veranlagte Steuer vom Ertrag	10028	2012-12-01	\N	12	787	\N	9068	10028	2012	Non-Assessed Taxes on Earnings
324	2013-01-01	nicht veranlagte Steuer vom Ertrag	731	2013-01-01	\N	1	731	\N	1358	9401	2013	Non-Assessed Taxes on Earnings
325	2013-02-01	nicht veranlagte Steuer vom Ertrag	1002	2013-02-01	\N	2	271	\N	1599	9431	2013	Non-Assessed Taxes on Earnings
326	2013-03-01	nicht veranlagte Steuer vom Ertrag	1506	2013-03-01	\N	3	504	\N	2536	8998	2013	Non-Assessed Taxes on Earnings
327	2013-04-01	nicht veranlagte Steuer vom Ertrag	2211	2013-04-01	\N	4	705	\N	3014	9225	2013	Non-Assessed Taxes on Earnings
328	2013-05-01	nicht veranlagte Steuer vom Ertrag	3447	2013-05-01	\N	5	1236	\N	3899	9576	2013	Non-Assessed Taxes on Earnings
329	2013-06-01	nicht veranlagte Steuer vom Ertrag	4981	2013-06-01	\N	6	1534	\N	5729	9280	2013	Non-Assessed Taxes on Earnings
330	2013-07-01	nicht veranlagte Steuer vom Ertrag	6255	2013-07-01	\N	7	1274	\N	7241	9042	2013	Non-Assessed Taxes on Earnings
331	2013-08-01	nicht veranlagte Steuer vom Ertrag	6876	2013-08-01	\N	8	621	\N	8196	8708	2013	Non-Assessed Taxes on Earnings
332	2013-09-01	nicht veranlagte Steuer vom Ertrag	7230	2013-09-01	\N	9	354	\N	8713	8545	2013	Non-Assessed Taxes on Earnings
333	2013-10-01	nicht veranlagte Steuer vom Ertrag	7581	2013-10-01	\N	10	351	\N	9096	8513	2013	Non-Assessed Taxes on Earnings
334	2013-11-01	nicht veranlagte Steuer vom Ertrag	7872	2013-11-01	\N	11	291	\N	9241	8659	2013	Non-Assessed Taxes on Earnings
335	2013-12-01	nicht veranlagte Steuer vom Ertrag	8631	2013-12-01	\N	12	759	\N	10028	8631	2013	Non-Assessed Taxes on Earnings
336	2014-01-01	nicht veranlagte Steuer vom Ertrag	691	2014-01-01	\N	1	691	\N	731	8591	2014	Non-Assessed Taxes on Earnings
337	2014-02-01	nicht veranlagte Steuer vom Ertrag	992	2014-02-01	\N	2	301	\N	1002	8621	2014	Non-Assessed Taxes on Earnings
338	2014-03-01	nicht veranlagte Steuer vom Ertrag	1503	2014-03-01	\N	3	511	\N	1506	8628	2014	Non-Assessed Taxes on Earnings
339	2014-04-01	nicht veranlagte Steuer vom Ertrag	1916	2014-04-01	\N	4	413	\N	2211	8336	2014	Non-Assessed Taxes on Earnings
340	2014-05-01	nicht veranlagte Steuer vom Ertrag	2494	2014-05-01	\N	5	578	\N	3447	7678	2014	Non-Assessed Taxes on Earnings
341	2014-06-01	nicht veranlagte Steuer vom Ertrag	4253	2014-06-01	\N	6	1759	\N	4981	7903	2014	Non-Assessed Taxes on Earnings
342	2014-07-01	nicht veranlagte Steuer vom Ertrag	5722	2014-07-01	\N	7	1469	\N	6255	8098	2014	Non-Assessed Taxes on Earnings
343	2014-08-01	nicht veranlagte Steuer vom Ertrag	6239	2014-08-01	\N	8	517	\N	6876	7994	2014	Non-Assessed Taxes on Earnings
344	2014-09-01	nicht veranlagte Steuer vom Ertrag	6765	2014-09-01	\N	9	526	\N	7230	8166	2014	Non-Assessed Taxes on Earnings
345	2014-10-01	nicht veranlagte Steuer vom Ertrag	7352	2014-10-01	\N	10	587	\N	7581	8402	2014	Non-Assessed Taxes on Earnings
346	2014-11-01	nicht veranlagte Steuer vom Ertrag	7679	2014-11-01	\N	11	327	\N	7872	8438	2014	Non-Assessed Taxes on Earnings
347	2014-12-01	nicht veranlagte Steuer vom Ertrag	8712	2014-12-01	\N	12	1033	\N	8631	8712	2014	Non-Assessed Taxes on Earnings
348	2015-01-01	nicht veranlagte Steuer vom Ertrag	782	2015-01-01	\N	1	782	\N	691	8803	2015	Non-Assessed Taxes on Earnings
349	2015-02-01	nicht veranlagte Steuer vom Ertrag	1054	2015-02-01	\N	2	272	\N	992	8774	2015	Non-Assessed Taxes on Earnings
350	2015-03-01	nicht veranlagte Steuer vom Ertrag	1464	2015-03-01	\N	3	410	\N	1503	8673	2015	Non-Assessed Taxes on Earnings
351	2015-04-01	nicht veranlagte Steuer vom Ertrag	1944	2015-04-01	\N	4	480	\N	1916	8740	2015	Non-Assessed Taxes on Earnings
352	2015-05-01	nicht veranlagte Steuer vom Ertrag	2580	2015-05-01	\N	5	636	\N	2494	8798	2015	Non-Assessed Taxes on Earnings
353	2015-06-01	nicht veranlagte Steuer vom Ertrag	3972	2015-06-01	\N	6	1392	\N	4253	8431	2015	Non-Assessed Taxes on Earnings
354	2015-07-01	nicht veranlagte Steuer vom Ertrag	6257	2015-07-01	\N	7	2285	\N	5722	9247	2015	Non-Assessed Taxes on Earnings
355	2015-08-01	nicht veranlagte Steuer vom Ertrag	6735	2015-08-01	\N	8	478	\N	6239	9208	2015	Non-Assessed Taxes on Earnings
356	2015-09-01	nicht veranlagte Steuer vom Ertrag	7073	2015-09-01	\N	9	338	\N	6765	9020	2015	Non-Assessed Taxes on Earnings
357	2015-10-01	nicht veranlagte Steuer vom Ertrag	7579	2015-10-01	\N	10	506	\N	7352	8939	2015	Non-Assessed Taxes on Earnings
358	2015-11-01	nicht veranlagte Steuer vom Ertrag	7937	2015-11-01	\N	11	358	\N	7679	8970	2015	Non-Assessed Taxes on Earnings
359	2015-12-01	nicht veranlagte Steuer vom Ertrag	8968	2015-12-01	\N	12	1031	\N	8712	8968	2015	Non-Assessed Taxes on Earnings
360	2016-01-01	nicht veranlagte Steuer vom Ertrag	538	2016-01-01	\N	1	538	\N	782	8724	2016	Non-Assessed Taxes on Earnings
361	2016-02-01	nicht veranlagte Steuer vom Ertrag	936	2016-02-01	\N	2	398	\N	1054	8850	2016	Non-Assessed Taxes on Earnings
362	2016-03-01	nicht veranlagte Steuer vom Ertrag	1487	2016-03-01	\N	3	551	\N	1464	8991	2016	Non-Assessed Taxes on Earnings
363	2016-04-01	nicht veranlagte Steuer vom Ertrag	2083	2016-04-01	\N	4	596	\N	1944	9107	2016	Non-Assessed Taxes on Earnings
364	2016-05-01	nicht veranlagte Steuer vom Ertrag	3204	2016-05-01	\N	5	1121	\N	2580	9592	2016	Non-Assessed Taxes on Earnings
365	2016-06-01	nicht veranlagte Steuer vom Ertrag	5142	2016-06-01	\N	6	1938	\N	3972	10138	2016	Non-Assessed Taxes on Earnings
366	2016-07-01	nicht veranlagte Steuer vom Ertrag	6604	2016-07-01	\N	7	1462	\N	6257	9315	2016	Non-Assessed Taxes on Earnings
367	2016-08-01	nicht veranlagte Steuer vom Ertrag	7372	2016-08-01	\N	8	768	\N	6735	9605	2016	Non-Assessed Taxes on Earnings
368	2016-09-01	nicht veranlagte Steuer vom Ertrag	7848	2016-09-01	\N	9	476	\N	7073	9743	2016	Non-Assessed Taxes on Earnings
369	2016-10-01	nicht veranlagte Steuer vom Ertrag	8247	2016-10-01	\N	10	399	\N	7579	9636	2016	Non-Assessed Taxes on Earnings
370	2016-11-01	nicht veranlagte Steuer vom Ertrag	8537	2016-11-01	\N	11	290	\N	7937	9568	2016	Non-Assessed Taxes on Earnings
371	2016-12-01	nicht veranlagte Steuer vom Ertrag	9731	2016-12-01	\N	12	1194	\N	8968	9731	2016	Non-Assessed Taxes on Earnings
372	2017-01-01	nicht veranlagte Steuer vom Ertrag	695	2017-01-01	\N	1	695	\N	538	9888	2017	Non-Assessed Taxes on Earnings
373	2017-02-01	nicht veranlagte Steuer vom Ertrag	975	2017-02-01	\N	2	280	\N	936	9770	2017	Non-Assessed Taxes on Earnings
374	2017-03-01	nicht veranlagte Steuer vom Ertrag	1818	2017-03-01	\N	3	843	\N	1487	10062	2017	Non-Assessed Taxes on Earnings
375	2017-04-01	nicht veranlagte Steuer vom Ertrag	2405	2017-04-01	\N	4	587	\N	2083	10053	2017	Non-Assessed Taxes on Earnings
376	2017-05-01	nicht veranlagte Steuer vom Ertrag	3638	2017-05-01	\N	5	1233	\N	3204	10165	2017	Non-Assessed Taxes on Earnings
377	2017-06-01	nicht veranlagte Steuer vom Ertrag	4610	2017-06-01	\N	6	972	\N	5142	9199	2017	Non-Assessed Taxes on Earnings
378	2017-07-01	nicht veranlagte Steuer vom Ertrag	6676	2017-07-01	\N	7	2066	\N	6604	9803	2017	Non-Assessed Taxes on Earnings
379	2017-08-01	nicht veranlagte Steuer vom Ertrag	8120	2017-08-01	\N	8	1444	\N	7372	10479	2017	Non-Assessed Taxes on Earnings
380	2017-09-01	nicht veranlagte Steuer vom Ertrag	8562	2017-09-01	\N	9	442	\N	7848	10445	2017	Non-Assessed Taxes on Earnings
381	2017-10-01	nicht veranlagte Steuer vom Ertrag	8921	2017-10-01	\N	10	359	\N	8247	10405	2017	Non-Assessed Taxes on Earnings
382	2017-11-01	nicht veranlagte Steuer vom Ertrag	9381	2017-11-01	\N	11	460	\N	8537	10575	2017	Non-Assessed Taxes on Earnings
383	2017-12-01	nicht veranlagte Steuer vom Ertrag	10451	2017-12-01	\N	12	1070	\N	9731	10451	2017	Non-Assessed Taxes on Earnings
384	2018-01-01	nicht veranlagte Steuer vom Ertrag	734	2018-01-01	\N	1	734	\N	695	10490	2018	Non-Assessed Taxes on Earnings
385	2018-02-01	nicht veranlagte Steuer vom Ertrag	1076	2018-02-01	\N	2	342	\N	975	10552	2018	Non-Assessed Taxes on Earnings
386	2018-03-01	nicht veranlagte Steuer vom Ertrag	1758	2018-03-01	\N	3	682	\N	1818	10391	2018	Non-Assessed Taxes on Earnings
387	2018-04-01	nicht veranlagte Steuer vom Ertrag	2535	2018-04-01	\N	4	777	\N	2405	10581	2018	Non-Assessed Taxes on Earnings
388	2018-05-01	nicht veranlagte Steuer vom Ertrag	4061	2018-05-01	\N	5	1526	\N	3638	10874	2018	Non-Assessed Taxes on Earnings
389	2018-06-01	nicht veranlagte Steuer vom Ertrag	6423	2018-06-01	\N	6	2362	\N	4610	12264	2018	Non-Assessed Taxes on Earnings
390	2018-07-01	nicht veranlagte Steuer vom Ertrag	8639	2018-07-01	\N	7	2216	\N	6676	12414	2018	Non-Assessed Taxes on Earnings
391	2018-08-01	nicht veranlagte Steuer vom Ertrag	9206	2018-08-01	\N	8	567	\N	8120	11537	2018	Non-Assessed Taxes on Earnings
392	2018-09-01	nicht veranlagte Steuer vom Ertrag	9717	2018-09-01	\N	9	511	\N	8562	11606	2018	Non-Assessed Taxes on Earnings
393	2018-10-01	nicht veranlagte Steuer vom Ertrag	10148	2018-10-01	\N	10	431	\N	8921	11678	2018	Non-Assessed Taxes on Earnings
394	2018-11-01	nicht veranlagte Steuer vom Ertrag	10586	2018-11-01	\N	11	438	\N	9381	11656	2018	Non-Assessed Taxes on Earnings
395	2018-12-01	nicht veranlagte Steuer vom Ertrag	11592	2018-12-01	\N	12	1006	\N	10451	11592	2018	Non-Assessed Taxes on Earnings
396	2008-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1621	2008-01-01	\N	1	1621	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
397	2008-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2019	2008-02-01	\N	2	398	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
398	2008-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2379	2008-03-01	\N	3	360	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
399	2008-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2794	2008-04-01	\N	4	415	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
400	2008-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3177	2008-05-01	\N	5	383	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
401	2008-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3438	2008-06-01	\N	6	261	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
402	2008-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3870	2008-07-01	\N	7	432	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
403	2008-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	4369	2008-08-01	\N	8	499	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
404	2008-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	4648	2008-09-01	\N	9	279	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
405	2008-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	5050	2008-10-01	\N	10	402	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
406	2008-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	5504	2008-11-01	\N	11	454	\N	0	\N	2008	Final Withholding Tax on Interest and Capital Gains
407	2008-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	5922	2008-12-01	\N	12	418	\N	0	5922	2008	Final Withholding Tax on Interest and Capital Gains
2854	2020-03-01	Lohnsteuer	\N	2020-03-01	96019.7987725154671	3	\N	99129.0107909024809	\N	96019.7987725154671	2020	Wages Tax
408	2009-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1724	2009-01-01	\N	1	1724	\N	1621	6025	2009	Final Withholding Tax on Interest and Capital Gains
409	2009-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2128	2009-02-01	\N	2	404	\N	2019	6031	2009	Final Withholding Tax on Interest and Capital Gains
410	2009-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2403	2009-03-01	\N	3	275	\N	2379	5946	2009	Final Withholding Tax on Interest and Capital Gains
411	2009-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2770	2009-04-01	\N	4	367	\N	2794	5898	2009	Final Withholding Tax on Interest and Capital Gains
412	2009-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3141	2009-05-01	\N	5	371	\N	3177	5886	2009	Final Withholding Tax on Interest and Capital Gains
413	2009-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3394	2009-06-01	\N	6	253	\N	3438	5878	2009	Final Withholding Tax on Interest and Capital Gains
414	2009-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3836	2009-07-01	\N	7	442	\N	3870	5888	2009	Final Withholding Tax on Interest and Capital Gains
415	2009-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	4220	2009-08-01	\N	8	384	\N	4369	5773	2009	Final Withholding Tax on Interest and Capital Gains
416	2009-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	4485	2009-09-01	\N	9	265	\N	4648	5759	2009	Final Withholding Tax on Interest and Capital Gains
417	2009-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	4798	2009-10-01	\N	10	313	\N	5050	5670	2009	Final Withholding Tax on Interest and Capital Gains
418	2009-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	5132	2009-11-01	\N	11	334	\N	5504	5550	2009	Final Withholding Tax on Interest and Capital Gains
419	2009-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	5475	2009-12-01	\N	12	343	\N	5922	5475	2009	Final Withholding Tax on Interest and Capital Gains
420	2010-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1206	2010-01-01	\N	1	1206	\N	1724	4957	2010	Final Withholding Tax on Interest and Capital Gains
421	2010-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1523	2010-02-01	\N	2	317	\N	2128	4870	2010	Final Withholding Tax on Interest and Capital Gains
422	2010-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1743	2010-03-01	\N	3	220	\N	2403	4815	2010	Final Withholding Tax on Interest and Capital Gains
423	2010-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2012	2010-04-01	\N	4	269	\N	2770	4717	2010	Final Withholding Tax on Interest and Capital Gains
424	2010-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2231	2010-05-01	\N	5	219	\N	3141	4565	2010	Final Withholding Tax on Interest and Capital Gains
425	2010-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2367	2010-06-01	\N	6	136	\N	3394	4448	2010	Final Withholding Tax on Interest and Capital Gains
426	2010-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2631	2010-07-01	\N	7	264	\N	3836	4270	2010	Final Withholding Tax on Interest and Capital Gains
427	2010-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2900	2010-08-01	\N	8	269	\N	4220	4155	2010	Final Withholding Tax on Interest and Capital Gains
428	2010-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3060	2010-09-01	\N	9	160	\N	4485	4050	2010	Final Withholding Tax on Interest and Capital Gains
429	2010-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3274	2010-10-01	\N	10	214	\N	4798	3951	2010	Final Withholding Tax on Interest and Capital Gains
430	2010-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3521	2010-11-01	\N	11	247	\N	5132	3864	2010	Final Withholding Tax on Interest and Capital Gains
431	2010-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3832	2010-12-01	\N	12	311	\N	5475	3832	2010	Final Withholding Tax on Interest and Capital Gains
432	2011-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1058	2011-01-01	\N	1	1058	\N	1206	3684	2011	Final Withholding Tax on Interest and Capital Gains
433	2011-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1318	2011-02-01	\N	2	260	\N	1523	3627	2011	Final Withholding Tax on Interest and Capital Gains
434	2011-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1548	2011-03-01	\N	3	230	\N	1743	3637	2011	Final Withholding Tax on Interest and Capital Gains
435	2011-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1819	2011-04-01	\N	4	271	\N	2012	3639	2011	Final Withholding Tax on Interest and Capital Gains
436	2011-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2047	2011-05-01	\N	5	228	\N	2231	3648	2011	Final Withholding Tax on Interest and Capital Gains
437	2011-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2203	2011-06-01	\N	6	156	\N	2367	3668	2011	Final Withholding Tax on Interest and Capital Gains
438	2011-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2474	2011-07-01	\N	7	271	\N	2631	3675	2011	Final Withholding Tax on Interest and Capital Gains
439	2011-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2756	2011-08-01	\N	8	282	\N	2900	3688	2011	Final Withholding Tax on Interest and Capital Gains
440	2011-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2858	2011-09-01	\N	9	102	\N	3060	3630	2011	Final Withholding Tax on Interest and Capital Gains
441	2011-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3057	2011-10-01	\N	10	199	\N	3274	3615	2011	Final Withholding Tax on Interest and Capital Gains
442	2011-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3307	2011-11-01	\N	11	250	\N	3521	3618	2011	Final Withholding Tax on Interest and Capital Gains
2855	2020-04-01	Lohnsteuer	\N	2020-04-01	96523.0332972874457	4	\N	99875.8707036986307	\N	96523.0332972874457	2020	Wages Tax
443	2011-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3529	2011-12-01	\N	12	222	\N	3832	3529	2011	Final Withholding Tax on Interest and Capital Gains
444	2012-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1071	2012-01-01	\N	1	1071	\N	1058	3542	2012	Final Withholding Tax on Interest and Capital Gains
445	2012-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1329	2012-02-01	\N	2	258	\N	1318	3540	2012	Final Withholding Tax on Interest and Capital Gains
446	2012-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1525	2012-03-01	\N	3	196	\N	1548	3506	2012	Final Withholding Tax on Interest and Capital Gains
447	2012-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1796	2012-04-01	\N	4	271	\N	1819	3506	2012	Final Withholding Tax on Interest and Capital Gains
663	2008-04-01	Steuern vom Umsatz	30861	2008-04-01	\N	4	7012	\N	0	\N	2008	Value Added Taxes (VAT)
448	2012-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2028	2012-05-01	\N	5	232	\N	2047	3510	2012	Final Withholding Tax on Interest and Capital Gains
449	2012-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2177	2012-06-01	\N	6	149	\N	2203	3503	2012	Final Withholding Tax on Interest and Capital Gains
450	2012-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2438	2012-07-01	\N	7	261	\N	2474	3493	2012	Final Withholding Tax on Interest and Capital Gains
451	2012-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2745	2012-08-01	\N	8	307	\N	2756	3518	2012	Final Withholding Tax on Interest and Capital Gains
452	2012-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2917	2012-09-01	\N	9	172	\N	2858	3588	2012	Final Withholding Tax on Interest and Capital Gains
453	2012-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3133	2012-10-01	\N	10	216	\N	3057	3605	2012	Final Withholding Tax on Interest and Capital Gains
454	2012-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3376	2012-11-01	\N	11	243	\N	3307	3598	2012	Final Withholding Tax on Interest and Capital Gains
455	2012-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3623	2012-12-01	\N	12	247	\N	3529	3623	2012	Final Withholding Tax on Interest and Capital Gains
456	2013-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1122	2013-01-01	\N	1	1122	\N	1071	3674	2013	Final Withholding Tax on Interest and Capital Gains
457	2013-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1392	2013-02-01	\N	2	270	\N	1329	3686	2013	Final Withholding Tax on Interest and Capital Gains
458	2013-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1574	2013-03-01	\N	3	182	\N	1525	3672	2013	Final Withholding Tax on Interest and Capital Gains
459	2013-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1827	2013-04-01	\N	4	253	\N	1796	3654	2013	Final Withholding Tax on Interest and Capital Gains
460	2013-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2027	2013-05-01	\N	5	200	\N	2028	3622	2013	Final Withholding Tax on Interest and Capital Gains
461	2013-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2288	2013-06-01	\N	6	261	\N	2177	3734	2013	Final Withholding Tax on Interest and Capital Gains
462	2013-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2564	2013-07-01	\N	7	276	\N	2438	3749	2013	Final Withholding Tax on Interest and Capital Gains
463	2013-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2871	2013-08-01	\N	8	307	\N	2745	3749	2013	Final Withholding Tax on Interest and Capital Gains
464	2013-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3038	2013-09-01	\N	9	167	\N	2917	3744	2013	Final Withholding Tax on Interest and Capital Gains
465	2013-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3256	2013-10-01	\N	10	218	\N	3133	3746	2013	Final Withholding Tax on Interest and Capital Gains
466	2013-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3515	2013-11-01	\N	11	259	\N	3376	3762	2013	Final Withholding Tax on Interest and Capital Gains
467	2013-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3812	2013-12-01	\N	12	297	\N	3623	3812	2013	Final Withholding Tax on Interest and Capital Gains
468	2014-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	987	2014-01-01	\N	1	987	\N	1122	3677	2014	Final Withholding Tax on Interest and Capital Gains
469	2014-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1256	2014-02-01	\N	2	269	\N	1392	3676	2014	Final Withholding Tax on Interest and Capital Gains
470	2014-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1519	2014-03-01	\N	3	263	\N	1574	3757	2014	Final Withholding Tax on Interest and Capital Gains
471	2014-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1747	2014-04-01	\N	4	228	\N	1827	3732	2014	Final Withholding Tax on Interest and Capital Gains
472	2014-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1956	2014-05-01	\N	5	209	\N	2027	3741	2014	Final Withholding Tax on Interest and Capital Gains
473	2014-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2112	2014-06-01	\N	6	156	\N	2288	3636	2014	Final Withholding Tax on Interest and Capital Gains
474	2014-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2377	2014-07-01	\N	7	265	\N	2564	3625	2014	Final Withholding Tax on Interest and Capital Gains
475	2014-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2653	2014-08-01	\N	8	276	\N	2871	3594	2014	Final Withholding Tax on Interest and Capital Gains
476	2014-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2792	2014-09-01	\N	9	139	\N	3038	3566	2014	Final Withholding Tax on Interest and Capital Gains
2856	2020-05-01	Lohnsteuer	\N	2020-05-01	97053.6502174318739	5	\N	100613.126220106133	\N	97053.6502174318739	2020	Wages Tax
477	2014-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2985	2014-10-01	\N	10	193	\N	3256	3541	2014	Final Withholding Tax on Interest and Capital Gains
478	2014-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3212	2014-11-01	\N	11	227	\N	3515	3509	2014	Final Withholding Tax on Interest and Capital Gains
479	2014-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3437	2014-12-01	\N	12	225	\N	3812	3437	2014	Final Withholding Tax on Interest and Capital Gains
480	2015-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	610	2015-01-01	\N	1	610	\N	987	3060	2015	Final Withholding Tax on Interest and Capital Gains
481	2015-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1085	2015-02-01	\N	2	475	\N	1256	3266	2015	Final Withholding Tax on Interest and Capital Gains
482	2015-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1368	2015-03-01	\N	3	283	\N	1519	3286	2015	Final Withholding Tax on Interest and Capital Gains
483	2015-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1794	2015-04-01	\N	4	426	\N	1747	3484	2015	Final Withholding Tax on Interest and Capital Gains
2874	2019-11-01	Veranlagte Einkommensteuer	\N	2019-11-01	26301.4878419246306	11	\N	26606.9440500142045	\N	26301.4878419246306	2019	Assessed Income Taxes
484	2015-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2125	2015-05-01	\N	5	331	\N	1956	3606	2015	Final Withholding Tax on Interest and Capital Gains
485	2015-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2353	2015-06-01	\N	6	228	\N	2112	3678	2015	Final Withholding Tax on Interest and Capital Gains
486	2015-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2647	2015-07-01	\N	7	294	\N	2377	3707	2015	Final Withholding Tax on Interest and Capital Gains
487	2015-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2872	2015-08-01	\N	8	225	\N	2653	3656	2015	Final Withholding Tax on Interest and Capital Gains
488	2015-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3022	2015-09-01	\N	9	150	\N	2792	3667	2015	Final Withholding Tax on Interest and Capital Gains
489	2015-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3143	2015-10-01	\N	10	121	\N	2985	3595	2015	Final Withholding Tax on Interest and Capital Gains
490	2015-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3298	2015-11-01	\N	11	155	\N	3212	3523	2015	Final Withholding Tax on Interest and Capital Gains
491	2015-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3634	2015-12-01	\N	12	336	\N	3437	3634	2015	Final Withholding Tax on Interest and Capital Gains
492	2016-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	558	2016-01-01	\N	1	558	\N	610	3582	2016	Final Withholding Tax on Interest and Capital Gains
493	2016-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	745	2016-02-01	\N	2	187	\N	1085	3294	2016	Final Withholding Tax on Interest and Capital Gains
494	2016-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	960	2016-03-01	\N	3	215	\N	1368	3226	2016	Final Withholding Tax on Interest and Capital Gains
495	2016-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1156	2016-04-01	\N	4	196	\N	1794	2996	2016	Final Withholding Tax on Interest and Capital Gains
496	2016-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1322	2016-05-01	\N	5	166	\N	2125	2831	2016	Final Withholding Tax on Interest and Capital Gains
497	2016-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1462	2016-06-01	\N	6	140	\N	2353	2743	2016	Final Withholding Tax on Interest and Capital Gains
498	2016-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1631	2016-07-01	\N	7	169	\N	2647	2618	2016	Final Withholding Tax on Interest and Capital Gains
499	2016-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1809	2016-08-01	\N	8	178	\N	2872	2571	2016	Final Withholding Tax on Interest and Capital Gains
500	2016-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1961	2016-09-01	\N	9	152	\N	3022	2573	2016	Final Withholding Tax on Interest and Capital Gains
501	2016-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2133	2016-10-01	\N	10	172	\N	3143	2624	2016	Final Withholding Tax on Interest and Capital Gains
502	2016-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2258	2016-11-01	\N	11	125	\N	3298	2594	2016	Final Withholding Tax on Interest and Capital Gains
503	2016-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2613	2016-12-01	\N	12	355	\N	3634	2613	2016	Final Withholding Tax on Interest and Capital Gains
504	2017-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	505	2017-01-01	\N	1	505	\N	558	2560	2017	Final Withholding Tax on Interest and Capital Gains
505	2017-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	881	2017-02-01	\N	2	376	\N	745	2749	2017	Final Withholding Tax on Interest and Capital Gains
506	2017-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1107	2017-03-01	\N	3	226	\N	960	2760	2017	Final Withholding Tax on Interest and Capital Gains
507	2017-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1401	2017-04-01	\N	4	294	\N	1156	2858	2017	Final Withholding Tax on Interest and Capital Gains
508	2017-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1627	2017-05-01	\N	5	226	\N	1322	2918	2017	Final Withholding Tax on Interest and Capital Gains
509	2017-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1832	2017-06-01	\N	6	205	\N	1462	2983	2017	Final Withholding Tax on Interest and Capital Gains
510	2017-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2036	2017-07-01	\N	7	204	\N	1631	3018	2017	Final Withholding Tax on Interest and Capital Gains
511	2017-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2227	2017-08-01	\N	8	191	\N	1809	3031	2017	Final Withholding Tax on Interest and Capital Gains
512	2017-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2400	2017-09-01	\N	9	173	\N	1961	3052	2017	Final Withholding Tax on Interest and Capital Gains
513	2017-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2604	2017-10-01	\N	10	204	\N	2133	3084	2017	Final Withholding Tax on Interest and Capital Gains
514	2017-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2825	2017-11-01	\N	11	221	\N	2258	3180	2017	Final Withholding Tax on Interest and Capital Gains
515	2017-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3227	2017-12-01	\N	12	402	\N	2613	3227	2017	Final Withholding Tax on Interest and Capital Gains
516	2018-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	557	2018-01-01	\N	1	557	\N	505	3279	2018	Final Withholding Tax on Interest and Capital Gains
517	2018-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1169	2018-02-01	\N	2	612	\N	881	3515	2018	Final Withholding Tax on Interest and Capital Gains
518	2018-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1356	2018-03-01	\N	3	187	\N	1107	3476	2018	Final Withholding Tax on Interest and Capital Gains
519	2018-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1632	2018-04-01	\N	4	276	\N	1401	3458	2018	Final Withholding Tax on Interest and Capital Gains
520	2018-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1803	2018-05-01	\N	5	171	\N	1627	3403	2018	Final Withholding Tax on Interest and Capital Gains
521	2018-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	1975	2018-06-01	\N	6	172	\N	1832	3370	2018	Final Withholding Tax on Interest and Capital Gains
522	2018-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2176	2018-07-01	\N	7	201	\N	2036	3367	2018	Final Withholding Tax on Interest and Capital Gains
523	2018-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2369	2018-08-01	\N	8	193	\N	2227	3369	2018	Final Withholding Tax on Interest and Capital Gains
524	2018-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2532	2018-09-01	\N	9	163	\N	2400	3359	2018	Final Withholding Tax on Interest and Capital Gains
525	2018-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2684	2018-10-01	\N	10	152	\N	2604	3307	2018	Final Withholding Tax on Interest and Capital Gains
526	2018-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	2849	2018-11-01	\N	11	165	\N	2825	3251	2018	Final Withholding Tax on Interest and Capital Gains
527	2018-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	3033	2018-12-01	\N	12	184	\N	3227	3033	2018	Final Withholding Tax on Interest and Capital Gains
528	2008-01-01	Körperschaftsteuer	-14	2008-01-01	\N	1	-14	\N	0	\N	2008	Corporation Tax
529	2008-02-01	Körperschaftsteuer	-156	2008-02-01	\N	2	-142	\N	0	\N	2008	Corporation Tax
530	2008-03-01	Körperschaftsteuer	2372	2008-03-01	\N	3	2528	\N	0	\N	2008	Corporation Tax
531	2008-04-01	Körperschaftsteuer	2296	2008-04-01	\N	4	-76	\N	0	\N	2008	Corporation Tax
532	2008-05-01	Körperschaftsteuer	2189	2008-05-01	\N	5	-107	\N	0	\N	2008	Corporation Tax
533	2008-06-01	Körperschaftsteuer	4783	2008-06-01	\N	6	2594	\N	0	\N	2008	Corporation Tax
534	2008-07-01	Körperschaftsteuer	4671	2008-07-01	\N	7	-112	\N	0	\N	2008	Corporation Tax
535	2008-08-01	Körperschaftsteuer	4464	2008-08-01	\N	8	-207	\N	0	\N	2008	Corporation Tax
536	2008-09-01	Körperschaftsteuer	6828	2008-09-01	\N	9	2364	\N	0	\N	2008	Corporation Tax
537	2008-10-01	Körperschaftsteuer	6112	2008-10-01	\N	10	-716	\N	0	\N	2008	Corporation Tax
538	2008-11-01	Körperschaftsteuer	5644	2008-11-01	\N	11	-468	\N	0	\N	2008	Corporation Tax
539	2008-12-01	Körperschaftsteuer	7943	2008-12-01	\N	12	2299	\N	0	7943	2008	Corporation Tax
540	2009-01-01	Körperschaftsteuer	117	2009-01-01	\N	1	117	\N	-14	8074	2009	Corporation Tax
541	2009-02-01	Körperschaftsteuer	28	2009-02-01	\N	2	-89	\N	-156	8127	2009	Corporation Tax
542	2009-03-01	Körperschaftsteuer	2199	2009-03-01	\N	3	2171	\N	2372	7770	2009	Corporation Tax
543	2009-04-01	Körperschaftsteuer	1608	2009-04-01	\N	4	-591	\N	2296	7255	2009	Corporation Tax
544	2009-05-01	Körperschaftsteuer	1173	2009-05-01	\N	5	-435	\N	2189	6927	2009	Corporation Tax
545	2009-06-01	Körperschaftsteuer	2370	2009-06-01	\N	6	1197	\N	4783	5530	2009	Corporation Tax
546	2009-07-01	Körperschaftsteuer	1961	2009-07-01	\N	7	-409	\N	4671	5233	2009	Corporation Tax
547	2009-08-01	Körperschaftsteuer	1542	2009-08-01	\N	8	-419	\N	4464	5021	2009	Corporation Tax
548	2009-09-01	Körperschaftsteuer	2666	2009-09-01	\N	9	1124	\N	6828	3781	2009	Corporation Tax
549	2009-10-01	Körperschaftsteuer	2100	2009-10-01	\N	10	-566	\N	6112	3931	2009	Corporation Tax
550	2009-11-01	Körperschaftsteuer	1524	2009-11-01	\N	11	-576	\N	5644	3823	2009	Corporation Tax
551	2009-12-01	Körperschaftsteuer	3587	2009-12-01	\N	12	2063	\N	7943	3587	2009	Corporation Tax
552	2010-01-01	Körperschaftsteuer	-200	2010-01-01	\N	1	-200	\N	117	3270	2010	Corporation Tax
553	2010-02-01	Körperschaftsteuer	-444	2010-02-01	\N	2	-244	\N	28	3115	2010	Corporation Tax
554	2010-03-01	Körperschaftsteuer	976	2010-03-01	\N	3	1420	\N	2199	2364	2010	Corporation Tax
555	2010-04-01	Körperschaftsteuer	1129	2010-04-01	\N	4	153	\N	1608	3108	2010	Corporation Tax
556	2010-05-01	Körperschaftsteuer	996	2010-05-01	\N	5	-133	\N	1173	3410	2010	Corporation Tax
557	2010-06-01	Körperschaftsteuer	2890	2010-06-01	\N	6	1894	\N	2370	4107	2010	Corporation Tax
558	2010-07-01	Körperschaftsteuer	2462	2010-07-01	\N	7	-428	\N	1961	4088	2010	Corporation Tax
559	2010-08-01	Körperschaftsteuer	2489	2010-08-01	\N	8	27	\N	1542	4534	2010	Corporation Tax
560	2010-09-01	Körperschaftsteuer	3684	2010-09-01	\N	9	1195	\N	2666	4605	2010	Corporation Tax
561	2010-10-01	Körperschaftsteuer	3157	2010-10-01	\N	10	-527	\N	2100	4644	2010	Corporation Tax
562	2010-11-01	Körperschaftsteuer	3008	2010-11-01	\N	11	-149	\N	1524	5071	2010	Corporation Tax
563	2010-12-01	Körperschaftsteuer	6021	2010-12-01	\N	12	3013	\N	3587	6021	2010	Corporation Tax
564	2011-01-01	Körperschaftsteuer	-930	2011-01-01	\N	1	-930	\N	-200	5291	2011	Corporation Tax
565	2011-02-01	Körperschaftsteuer	-878	2011-02-01	\N	2	52	\N	-444	5587	2011	Corporation Tax
566	2011-03-01	Körperschaftsteuer	1243	2011-03-01	\N	3	2121	\N	976	6288	2011	Corporation Tax
567	2011-04-01	Körperschaftsteuer	762	2011-04-01	\N	4	-481	\N	1129	5654	2011	Corporation Tax
568	2011-05-01	Körperschaftsteuer	768	2011-05-01	\N	5	6	\N	996	5793	2011	Corporation Tax
569	2011-06-01	Körperschaftsteuer	3350	2011-06-01	\N	6	2582	\N	2890	6481	2011	Corporation Tax
570	2011-07-01	Körperschaftsteuer	3244	2011-07-01	\N	7	-106	\N	2462	6803	2011	Corporation Tax
571	2011-08-01	Körperschaftsteuer	3191	2011-08-01	\N	8	-53	\N	2489	6723	2011	Corporation Tax
572	2011-09-01	Körperschaftsteuer	4864	2011-09-01	\N	9	1673	\N	3684	7201	2011	Corporation Tax
573	2011-10-01	Körperschaftsteuer	4559	2011-10-01	\N	10	-305	\N	3157	7423	2011	Corporation Tax
574	2011-11-01	Körperschaftsteuer	4665	2011-11-01	\N	11	106	\N	3008	7678	2011	Corporation Tax
575	2011-12-01	Körperschaftsteuer	7817	2011-12-01	\N	12	3152	\N	6021	7817	2011	Corporation Tax
576	2012-01-01	Körperschaftsteuer	163	2012-01-01	\N	1	163	\N	-930	8910	2012	Corporation Tax
577	2012-02-01	Körperschaftsteuer	150	2012-02-01	\N	2	-13	\N	-878	8845	2012	Corporation Tax
578	2012-03-01	Körperschaftsteuer	2735	2012-03-01	\N	3	2585	\N	1243	9309	2012	Corporation Tax
579	2012-04-01	Körperschaftsteuer	2577	2012-04-01	\N	4	-158	\N	762	9632	2012	Corporation Tax
580	2012-05-01	Körperschaftsteuer	2615	2012-05-01	\N	5	38	\N	768	9664	2012	Corporation Tax
581	2012-06-01	Körperschaftsteuer	5233	2012-06-01	\N	6	2618	\N	3350	9700	2012	Corporation Tax
582	2012-07-01	Körperschaftsteuer	5328	2012-07-01	\N	7	95	\N	3244	9901	2012	Corporation Tax
583	2012-08-01	Körperschaftsteuer	5486	2012-08-01	\N	8	158	\N	3191	10112	2012	Corporation Tax
584	2012-09-01	Körperschaftsteuer	6499	2012-09-01	\N	9	1013	\N	4864	9452	2012	Corporation Tax
585	2012-10-01	Körperschaftsteuer	5918	2012-10-01	\N	10	-581	\N	4559	9176	2012	Corporation Tax
586	2012-11-01	Körperschaftsteuer	5614	2012-11-01	\N	11	-304	\N	4665	8766	2012	Corporation Tax
587	2012-12-01	Körperschaftsteuer	8467	2012-12-01	\N	12	2853	\N	7817	8467	2012	Corporation Tax
588	2013-01-01	Körperschaftsteuer	339	2013-01-01	\N	1	339	\N	163	8643	2013	Corporation Tax
589	2013-02-01	Körperschaftsteuer	340	2013-02-01	\N	2	1	\N	150	8657	2013	Corporation Tax
590	2013-03-01	Körperschaftsteuer	3007	2013-03-01	\N	3	2667	\N	2735	8739	2013	Corporation Tax
591	2013-04-01	Körperschaftsteuer	3065	2013-04-01	\N	4	58	\N	2577	8955	2013	Corporation Tax
592	2013-05-01	Körperschaftsteuer	2876	2013-05-01	\N	5	-189	\N	2615	8728	2013	Corporation Tax
593	2013-06-01	Körperschaftsteuer	5721	2013-06-01	\N	6	2845	\N	5233	8955	2013	Corporation Tax
594	2013-07-01	Körperschaftsteuer	5692	2013-07-01	\N	7	-29	\N	5328	8831	2013	Corporation Tax
595	2013-08-01	Körperschaftsteuer	5415	2013-08-01	\N	8	-277	\N	5486	8396	2013	Corporation Tax
596	2013-09-01	Körperschaftsteuer	7375	2013-09-01	\N	9	1960	\N	6499	9343	2013	Corporation Tax
597	2013-10-01	Körperschaftsteuer	6825	2013-10-01	\N	10	-550	\N	5918	9374	2013	Corporation Tax
598	2013-11-01	Körperschaftsteuer	6650	2013-11-01	\N	11	-175	\N	5614	9503	2013	Corporation Tax
599	2013-12-01	Körperschaftsteuer	9754	2013-12-01	\N	12	3104	\N	8467	9754	2013	Corporation Tax
600	2014-01-01	Körperschaftsteuer	282	2014-01-01	\N	1	282	\N	339	9697	2014	Corporation Tax
601	2014-02-01	Körperschaftsteuer	87	2014-02-01	\N	2	-195	\N	340	9501	2014	Corporation Tax
602	2014-03-01	Körperschaftsteuer	2805	2014-03-01	\N	3	2718	\N	3007	9552	2014	Corporation Tax
603	2014-04-01	Körperschaftsteuer	2541	2014-04-01	\N	4	-264	\N	3065	9230	2014	Corporation Tax
604	2014-05-01	Körperschaftsteuer	2572	2014-05-01	\N	5	31	\N	2876	9450	2014	Corporation Tax
605	2014-06-01	Körperschaftsteuer	5339	2014-06-01	\N	6	2767	\N	5721	9372	2014	Corporation Tax
606	2014-07-01	Körperschaftsteuer	5172	2014-07-01	\N	7	-167	\N	5692	9234	2014	Corporation Tax
607	2014-08-01	Körperschaftsteuer	5318	2014-08-01	\N	8	146	\N	5415	9657	2014	Corporation Tax
608	2014-09-01	Körperschaftsteuer	7496	2014-09-01	\N	9	2178	\N	7375	9875	2014	Corporation Tax
609	2014-10-01	Körperschaftsteuer	6894	2014-10-01	\N	10	-602	\N	6825	9823	2014	Corporation Tax
610	2014-11-01	Körperschaftsteuer	6650	2014-11-01	\N	11	-244	\N	6650	9754	2014	Corporation Tax
611	2014-12-01	Körperschaftsteuer	10022	2014-12-01	\N	12	3372	\N	9754	10022	2014	Corporation Tax
612	2015-01-01	Körperschaftsteuer	193	2015-01-01	\N	1	193	\N	282	9933	2015	Corporation Tax
613	2015-02-01	Körperschaftsteuer	-210	2015-02-01	\N	2	-403	\N	87	9725	2015	Corporation Tax
614	2015-03-01	Körperschaftsteuer	2719	2015-03-01	\N	3	2929	\N	2805	9936	2015	Corporation Tax
615	2015-04-01	Körperschaftsteuer	2110	2015-04-01	\N	4	-609	\N	2541	9591	2015	Corporation Tax
616	2015-05-01	Körperschaftsteuer	2325	2015-05-01	\N	5	215	\N	2572	9775	2015	Corporation Tax
617	2015-06-01	Körperschaftsteuer	5644	2015-06-01	\N	6	3319	\N	5339	10327	2015	Corporation Tax
618	2015-07-01	Körperschaftsteuer	5574	2015-07-01	\N	7	-70	\N	5172	10424	2015	Corporation Tax
619	2015-08-01	Körperschaftsteuer	5353	2015-08-01	\N	8	-221	\N	5318	10057	2015	Corporation Tax
620	2015-09-01	Körperschaftsteuer	7871	2015-09-01	\N	9	2518	\N	7496	10397	2015	Corporation Tax
621	2015-10-01	Körperschaftsteuer	7187	2015-10-01	\N	10	-684	\N	6894	10315	2015	Corporation Tax
622	2015-11-01	Körperschaftsteuer	6785	2015-11-01	\N	11	-402	\N	6650	10157	2015	Corporation Tax
623	2015-12-01	Körperschaftsteuer	9792	2015-12-01	\N	12	3007	\N	10022	9792	2015	Corporation Tax
624	2016-01-01	Körperschaftsteuer	668	2016-01-01	\N	1	668	\N	193	10267	2016	Corporation Tax
625	2016-02-01	Körperschaftsteuer	678	2016-02-01	\N	2	10	\N	-2100	10680	2016	Corporation Tax
626	2016-03-01	Körperschaftsteuer	4217	2016-03-01	\N	3	3539	\N	2719	11290	2016	Corporation Tax
627	2016-04-01	Körperschaftsteuer	4044	2016-04-01	\N	4	-173	\N	2110	11726	2016	Corporation Tax
628	2016-05-01	Körperschaftsteuer	4615	2016-05-01	\N	5	571	\N	2325	12082	2016	Corporation Tax
629	2016-06-01	Körperschaftsteuer	7881	2016-06-01	\N	6	3266	\N	5644	12029	2016	Corporation Tax
630	2016-07-01	Körperschaftsteuer	8026	2016-07-01	\N	7	145	\N	5574	12244	2016	Corporation Tax
631	2016-08-01	Körperschaftsteuer	7961	2016-08-01	\N	8	-65	\N	5353	12400	2016	Corporation Tax
632	2016-09-01	Körperschaftsteuer	10654	2016-09-01	\N	9	2693	\N	7871	12575	2016	Corporation Tax
633	2016-10-01	Körperschaftsteuer	10202	2016-10-01	\N	10	-452	\N	7187	12807	2016	Corporation Tax
634	2016-11-01	Körperschaftsteuer	9980	2016-11-01	\N	11	-222	\N	6785	12987	2016	Corporation Tax
635	2016-12-01	Körperschaftsteuer	13721	2016-12-01	\N	12	3741	\N	9792	13721	2016	Corporation Tax
636	2017-01-01	Körperschaftsteuer	159	2017-01-01	\N	1	159	\N	668	13212	2017	Corporation Tax
637	2017-02-01	Körperschaftsteuer	342	2017-02-01	\N	2	183	\N	678	13385	2017	Corporation Tax
638	2017-03-01	Körperschaftsteuer	4255	2017-03-01	\N	3	3913	\N	4217	13759	2017	Corporation Tax
639	2017-04-01	Körperschaftsteuer	4531	2017-04-01	\N	4	276	\N	4044	14208	2017	Corporation Tax
640	2017-05-01	Körperschaftsteuer	4639	2017-05-01	\N	5	108	\N	4615	13745	2017	Corporation Tax
641	2017-06-01	Körperschaftsteuer	8191	2017-06-01	\N	6	3552	\N	7881	14031	2017	Corporation Tax
642	2017-07-01	Körperschaftsteuer	8285	2017-07-01	\N	7	94	\N	8026	13980	2017	Corporation Tax
643	2017-08-01	Körperschaftsteuer	8295	2017-08-01	\N	8	10	\N	7961	14055	2017	Corporation Tax
644	2017-09-01	Körperschaftsteuer	11208	2017-09-01	\N	9	2913	\N	10654	14275	2017	Corporation Tax
645	2017-10-01	Körperschaftsteuer	10506	2017-10-01	\N	10	-702	\N	10202	14025	2017	Corporation Tax
646	2017-11-01	Körperschaftsteuer	10318	2017-11-01	\N	11	-188	\N	9980	14059	2017	Corporation Tax
647	2017-12-01	Körperschaftsteuer	14629	2017-12-01	\N	12	4311	\N	13721	14629	2017	Corporation Tax
648	2018-01-01	Körperschaftsteuer	386	2018-01-01	\N	1	386	\N	159	14856	2018	Corporation Tax
649	2018-02-01	Körperschaftsteuer	629	2018-02-01	\N	2	243	\N	342	14916	2018	Corporation Tax
650	2018-03-01	Körperschaftsteuer	4709	2018-03-01	\N	3	4080	\N	4255	15083	2018	Corporation Tax
651	2018-04-01	Körperschaftsteuer	4916	2018-04-01	\N	4	207	\N	4531	15014	2018	Corporation Tax
652	2018-05-01	Körperschaftsteuer	5342	2018-05-01	\N	5	426	\N	4639	15332	2018	Corporation Tax
653	2018-06-01	Körperschaftsteuer	9360	2018-06-01	\N	6	4018	\N	8191	15798	2018	Corporation Tax
654	2018-07-01	Körperschaftsteuer	9107	2018-07-01	\N	7	-253	\N	8285	15451	2018	Corporation Tax
655	2018-08-01	Körperschaftsteuer	9131	2018-08-01	\N	8	24	\N	8295	15465	2018	Corporation Tax
656	2018-09-01	Körperschaftsteuer	12956	2018-09-01	\N	9	3825	\N	11208	16377	2018	Corporation Tax
657	2018-10-01	Körperschaftsteuer	12906	2018-10-01	\N	10	-50	\N	10506	17029	2018	Corporation Tax
658	2018-11-01	Körperschaftsteuer	12790	2018-11-01	\N	11	-116	\N	10318	17101	2018	Corporation Tax
659	2018-12-01	Körperschaftsteuer	16713	2018-12-01	\N	12	3923	\N	14629	16713	2018	Corporation Tax
660	2008-01-01	Steuern vom Umsatz	7601	2008-01-01	\N	1	7601	\N	0	\N	2008	Value Added Taxes (VAT)
661	2008-02-01	Steuern vom Umsatz	16911	2008-02-01	\N	2	9310	\N	0	\N	2008	Value Added Taxes (VAT)
664	2008-05-01	Steuern vom Umsatz	38971	2008-05-01	\N	5	8110	\N	0	\N	2008	Value Added Taxes (VAT)
665	2008-06-01	Steuern vom Umsatz	46783	2008-06-01	\N	6	7812	\N	0	\N	2008	Value Added Taxes (VAT)
666	2008-07-01	Steuern vom Umsatz	54591	2008-07-01	\N	7	7808	\N	0	\N	2008	Value Added Taxes (VAT)
667	2008-08-01	Steuern vom Umsatz	63250	2008-08-01	\N	8	8659	\N	0	\N	2008	Value Added Taxes (VAT)
668	2008-09-01	Steuern vom Umsatz	71053	2008-09-01	\N	9	7803	\N	0	\N	2008	Value Added Taxes (VAT)
669	2008-10-01	Steuern vom Umsatz	78734	2008-10-01	\N	10	7681	\N	0	\N	2008	Value Added Taxes (VAT)
670	2008-11-01	Steuern vom Umsatz	87671	2008-11-01	\N	11	8937	\N	0	\N	2008	Value Added Taxes (VAT)
671	2008-12-01	Steuern vom Umsatz	95806	2008-12-01	\N	12	8135	\N	0	95806	2008	Value Added Taxes (VAT)
672	2009-01-01	Steuern vom Umsatz	7560	2009-01-01	\N	1	7560	\N	7601	95765	2009	Value Added Taxes (VAT)
673	2009-02-01	Steuern vom Umsatz	16602	2009-02-01	\N	2	9042	\N	16911	95497	2009	Value Added Taxes (VAT)
674	2009-03-01	Steuern vom Umsatz	23201	2009-03-01	\N	3	6599	\N	23849	95158	2009	Value Added Taxes (VAT)
675	2009-04-01	Steuern vom Umsatz	30534	2009-04-01	\N	4	7333	\N	30861	95479	2009	Value Added Taxes (VAT)
676	2009-05-01	Steuern vom Umsatz	38710	2009-05-01	\N	5	8176	\N	38971	95545	2009	Value Added Taxes (VAT)
677	2009-06-01	Steuern vom Umsatz	46588	2009-06-01	\N	6	7878	\N	46783	95611	2009	Value Added Taxes (VAT)
678	2009-07-01	Steuern vom Umsatz	54265	2009-07-01	\N	7	7677	\N	54591	95480	2009	Value Added Taxes (VAT)
679	2009-08-01	Steuern vom Umsatz	62403	2009-08-01	\N	8	8138	\N	63250	94959	2009	Value Added Taxes (VAT)
680	2009-09-01	Steuern vom Umsatz	70519	2009-09-01	\N	9	8116	\N	71053	95272	2009	Value Added Taxes (VAT)
681	2009-10-01	Steuern vom Umsatz	78280	2009-10-01	\N	10	7761	\N	78734	95352	2009	Value Added Taxes (VAT)
682	2009-11-01	Steuern vom Umsatz	86887	2009-11-01	\N	11	8607	\N	87671	95022	2009	Value Added Taxes (VAT)
683	2009-12-01	Steuern vom Umsatz	95400	2009-12-01	\N	12	8513	\N	95806	95400	2009	Value Added Taxes (VAT)
684	2010-01-01	Steuern vom Umsatz	8003	2010-01-01	\N	1	8003	\N	7560	95843	2010	Value Added Taxes (VAT)
685	2010-02-01	Steuern vom Umsatz	16838	2010-02-01	\N	2	8835	\N	16602	95636	2010	Value Added Taxes (VAT)
686	2010-03-01	Steuern vom Umsatz	22756	2010-03-01	\N	3	5918	\N	23201	94955	2010	Value Added Taxes (VAT)
687	2010-04-01	Steuern vom Umsatz	30106	2010-04-01	\N	4	7350	\N	30534	94972	2010	Value Added Taxes (VAT)
688	2010-05-01	Steuern vom Umsatz	38759	2010-05-01	\N	5	8653	\N	38710	95449	2010	Value Added Taxes (VAT)
689	2010-06-01	Steuern vom Umsatz	46385	2010-06-01	\N	6	7626	\N	46588	95197	2010	Value Added Taxes (VAT)
690	2010-07-01	Steuern vom Umsatz	54134	2010-07-01	\N	7	7749	\N	54265	95269	2010	Value Added Taxes (VAT)
691	2010-08-01	Steuern vom Umsatz	62452	2010-08-01	\N	8	8318	\N	62403	95449	2010	Value Added Taxes (VAT)
692	2010-09-01	Steuern vom Umsatz	70333	2010-09-01	\N	9	7881	\N	70519	95214	2010	Value Added Taxes (VAT)
693	2010-10-01	Steuern vom Umsatz	78463	2010-10-01	\N	10	8130	\N	78280	95583	2010	Value Added Taxes (VAT)
694	2010-11-01	Steuern vom Umsatz	87292	2010-11-01	\N	11	8829	\N	86887	95805	2010	Value Added Taxes (VAT)
695	2010-12-01	Steuern vom Umsatz	95860	2010-12-01	\N	12	8568	\N	95400	95860	2010	Value Added Taxes (VAT)
696	2011-01-01	Steuern vom Umsatz	8355	2011-01-01	\N	1	8355	\N	8003	96212	2011	Value Added Taxes (VAT)
697	2011-02-01	Steuern vom Umsatz	18566	2011-02-01	\N	2	10211	\N	16838	97588	2011	Value Added Taxes (VAT)
698	2011-03-01	Steuern vom Umsatz	25528	2011-03-01	\N	3	6962	\N	22756	98632	2011	Value Added Taxes (VAT)
699	2011-04-01	Steuern vom Umsatz	33203	2011-04-01	\N	4	7675	\N	30106	98957	2011	Value Added Taxes (VAT)
700	2011-05-01	Steuern vom Umsatz	41987	2011-05-01	\N	5	8784	\N	38759	99088	2011	Value Added Taxes (VAT)
701	2011-06-01	Steuern vom Umsatz	50387	2011-06-01	\N	6	8400	\N	46385	99862	2011	Value Added Taxes (VAT)
702	2011-07-01	Steuern vom Umsatz	58232	2011-07-01	\N	7	7845	\N	54134	99958	2011	Value Added Taxes (VAT)
703	2011-08-01	Steuern vom Umsatz	66869	2011-08-01	\N	8	8637	\N	62452	100277	2011	Value Added Taxes (VAT)
704	2011-09-01	Steuern vom Umsatz	75289	2011-09-01	\N	9	8420	\N	70333	100816	2011	Value Added Taxes (VAT)
705	2011-10-01	Steuern vom Umsatz	83927	2011-10-01	\N	10	8638	\N	78463	101324	2011	Value Added Taxes (VAT)
706	2011-11-01	Steuern vom Umsatz	93211	2011-11-01	\N	11	9284	\N	87292	101779	2011	Value Added Taxes (VAT)
707	2011-12-01	Steuern vom Umsatz	101899	2011-12-01	\N	12	8688	\N	95860	101899	2011	Value Added Taxes (VAT)
708	2012-01-01	Steuern vom Umsatz	8411	2012-01-01	\N	1	8411	\N	8355	101955	2012	Value Added Taxes (VAT)
709	2012-02-01	Steuern vom Umsatz	19021	2012-02-01	\N	2	10610	\N	18566	102354	2012	Value Added Taxes (VAT)
1058	2008-03-01	Tabaksteuer	2547	2008-03-01	\N	3	1127	\N	0	\N	2008	Tobacco Duty
710	2012-03-01	Steuern vom Umsatz	26126	2012-03-01	\N	3	7105	\N	25528	102497	2012	Value Added Taxes (VAT)
711	2012-04-01	Steuern vom Umsatz	34197	2012-04-01	\N	4	8071	\N	33203	102893	2012	Value Added Taxes (VAT)
712	2012-05-01	Steuern vom Umsatz	43194	2012-05-01	\N	5	8997	\N	41987	103106	2012	Value Added Taxes (VAT)
713	2012-06-01	Steuern vom Umsatz	51015	2012-06-01	\N	6	7821	\N	50387	102527	2012	Value Added Taxes (VAT)
714	2012-07-01	Steuern vom Umsatz	58638	2012-07-01	\N	7	7623	\N	58232	102305	2012	Value Added Taxes (VAT)
715	2012-08-01	Steuern vom Umsatz	67540	2012-08-01	\N	8	8902	\N	66869	102570	2012	Value Added Taxes (VAT)
716	2012-09-01	Steuern vom Umsatz	76466	2012-09-01	\N	9	8926	\N	75289	103076	2012	Value Added Taxes (VAT)
717	2012-10-01	Steuern vom Umsatz	84710	2012-10-01	\N	10	8244	\N	83927	102682	2012	Value Added Taxes (VAT)
718	2012-11-01	Steuern vom Umsatz	93978	2012-11-01	\N	11	9268	\N	93211	102666	2012	Value Added Taxes (VAT)
719	2012-12-01	Steuern vom Umsatz	103165	2012-12-01	\N	12	9187	\N	101899	103165	2012	Value Added Taxes (VAT)
720	2013-01-01	Steuern vom Umsatz	8258	2013-01-01	\N	1	8258	\N	8411	103012	2013	Value Added Taxes (VAT)
721	2013-02-01	Steuern vom Umsatz	18744	2013-02-01	\N	2	10486	\N	19021	102888	2013	Value Added Taxes (VAT)
722	2013-03-01	Steuern vom Umsatz	26226	2013-03-01	\N	3	7482	\N	26126	103265	2013	Value Added Taxes (VAT)
723	2013-04-01	Steuern vom Umsatz	33696	2013-04-01	\N	4	7470	\N	34197	102664	2013	Value Added Taxes (VAT)
724	2013-05-01	Steuern vom Umsatz	42990	2013-05-01	\N	5	9294	\N	43194	102961	2013	Value Added Taxes (VAT)
725	2013-06-01	Steuern vom Umsatz	51391	2013-06-01	\N	6	8401	\N	51015	103541	2013	Value Added Taxes (VAT)
726	2013-07-01	Steuern vom Umsatz	59101	2013-07-01	\N	7	7710	\N	58638	103628	2013	Value Added Taxes (VAT)
727	2013-08-01	Steuern vom Umsatz	68341	2013-08-01	\N	8	9240	\N	67540	103966	2013	Value Added Taxes (VAT)
728	2013-09-01	Steuern vom Umsatz	77308	2013-09-01	\N	9	8967	\N	76466	104007	2013	Value Added Taxes (VAT)
729	2013-10-01	Steuern vom Umsatz	85924	2013-10-01	\N	10	8616	\N	84710	104379	2013	Value Added Taxes (VAT)
730	2013-11-01	Steuern vom Umsatz	95078	2013-11-01	\N	11	9154	\N	93978	104265	2013	Value Added Taxes (VAT)
731	2013-12-01	Steuern vom Umsatz	104283	2013-12-01	\N	12	9205	\N	103165	104283	2013	Value Added Taxes (VAT)
732	2014-01-01	Steuern vom Umsatz	8528	2014-01-01	\N	1	8528	\N	8258	104553	2014	Value Added Taxes (VAT)
733	2014-02-01	Steuern vom Umsatz	19079	2014-02-01	\N	2	10551	\N	18744	104618	2014	Value Added Taxes (VAT)
734	2014-03-01	Steuern vom Umsatz	26999	2014-03-01	\N	3	7920	\N	26226	105056	2014	Value Added Taxes (VAT)
735	2014-04-01	Steuern vom Umsatz	35134	2014-04-01	\N	4	8135	\N	33696	105721	2014	Value Added Taxes (VAT)
736	2014-05-01	Steuern vom Umsatz	44471	2014-05-01	\N	5	9337	\N	42990	105764	2014	Value Added Taxes (VAT)
737	2014-06-01	Steuern vom Umsatz	53244	2014-06-01	\N	6	8773	\N	51391	106136	2014	Value Added Taxes (VAT)
738	2014-07-01	Steuern vom Umsatz	61337	2014-07-01	\N	7	8093	\N	59101	106519	2014	Value Added Taxes (VAT)
739	2014-08-01	Steuern vom Umsatz	70587	2014-08-01	\N	8	9250	\N	68341	106529	2014	Value Added Taxes (VAT)
740	2014-09-01	Steuern vom Umsatz	79827	2014-09-01	\N	9	9240	\N	77308	106802	2014	Value Added Taxes (VAT)
741	2014-10-01	Steuern vom Umsatz	88436	2014-10-01	\N	10	8609	\N	85924	106795	2014	Value Added Taxes (VAT)
742	2014-11-01	Steuern vom Umsatz	98604	2014-11-01	\N	11	10168	\N	95078	107809	2014	Value Added Taxes (VAT)
743	2014-12-01	Steuern vom Umsatz	107796	2014-12-01	\N	12	9192	\N	104283	107796	2014	Value Added Taxes (VAT)
744	2015-01-01	Steuern vom Umsatz	8631	2015-01-01	\N	1	8631	\N	8528	107899	2015	Value Added Taxes (VAT)
745	2015-02-01	Steuern vom Umsatz	19736	2015-02-01	\N	2	11105	\N	19079	108453	2015	Value Added Taxes (VAT)
746	2015-03-01	Steuern vom Umsatz	27562	2015-03-01	\N	3	7826	\N	26999	108359	2015	Value Added Taxes (VAT)
747	2015-04-01	Steuern vom Umsatz	35844	2015-04-01	\N	4	8282	\N	35134	108506	2015	Value Added Taxes (VAT)
748	2015-05-01	Steuern vom Umsatz	45701	2015-05-01	\N	5	9857	\N	44471	109026	2015	Value Added Taxes (VAT)
749	2015-06-01	Steuern vom Umsatz	54546	2015-06-01	\N	6	8845	\N	53244	109098	2015	Value Added Taxes (VAT)
750	2015-07-01	Steuern vom Umsatz	62910	2015-07-01	\N	7	8364	\N	61337	109369	2015	Value Added Taxes (VAT)
751	2015-08-01	Steuern vom Umsatz	72889	2015-08-01	\N	8	9979	\N	70587	110098	2015	Value Added Taxes (VAT)
752	2015-09-01	Steuern vom Umsatz	81694	2015-09-01	\N	9	8805	\N	79827	109663	2015	Value Added Taxes (VAT)
753	2015-10-01	Steuern vom Umsatz	90578	2015-10-01	\N	10	8884	\N	88436	109938	2015	Value Added Taxes (VAT)
754	2015-11-01	Steuern vom Umsatz	99221	2015-11-01	\N	11	8643	\N	98604	108413	2015	Value Added Taxes (VAT)
755	2015-12-01	Steuern vom Umsatz	108894	2015-12-01	\N	12	9673	\N	107796	108894	2015	Value Added Taxes (VAT)
756	2016-01-01	Steuern vom Umsatz	9141	2016-01-01	\N	1	9141	\N	8631	109404	2016	Value Added Taxes (VAT)
757	2016-02-01	Steuern vom Umsatz	20098	2016-02-01	\N	2	10957	\N	19736	109256	2016	Value Added Taxes (VAT)
758	2016-03-01	Steuern vom Umsatz	27972	2016-03-01	\N	3	7874	\N	27562	109304	2016	Value Added Taxes (VAT)
759	2016-04-01	Steuern vom Umsatz	36467	2016-04-01	\N	4	8495	\N	35844	109517	2016	Value Added Taxes (VAT)
760	2016-05-01	Steuern vom Umsatz	45981	2016-05-01	\N	5	9514	\N	45701	109174	2016	Value Added Taxes (VAT)
761	2016-06-01	Steuern vom Umsatz	55095	2016-06-01	\N	6	9114	\N	54546	109443	2016	Value Added Taxes (VAT)
762	2016-07-01	Steuern vom Umsatz	63181	2016-07-01	\N	7	8086	\N	62910	109165	2016	Value Added Taxes (VAT)
763	2016-08-01	Steuern vom Umsatz	72932	2016-08-01	\N	8	9751	\N	72889	108937	2016	Value Added Taxes (VAT)
764	2016-09-01	Steuern vom Umsatz	82030	2016-09-01	\N	9	9098	\N	81694	109230	2016	Value Added Taxes (VAT)
765	2016-10-01	Steuern vom Umsatz	91455	2016-10-01	\N	10	9425	\N	90578	109771	2016	Value Added Taxes (VAT)
766	2016-11-01	Steuern vom Umsatz	101374	2016-11-01	\N	11	9919	\N	99221	111047	2016	Value Added Taxes (VAT)
767	2016-12-01	Steuern vom Umsatz	107329	2016-12-01	\N	12	5955	\N	109694	107329	2016	Value Added Taxes (VAT)
768	2017-01-01	Steuern vom Umsatz	9459	2017-01-01	\N	1	9459	\N	9141	107647	2017	Value Added Taxes (VAT)
769	2017-02-01	Steuern vom Umsatz	20997	2017-02-01	\N	2	11538	\N	20098	108228	2017	Value Added Taxes (VAT)
770	2017-03-01	Steuern vom Umsatz	29054	2017-03-01	\N	3	8057	\N	27972	108411	2017	Value Added Taxes (VAT)
771	2017-04-01	Steuern vom Umsatz	37821	2017-04-01	\N	4	8767	\N	36467	108683	2017	Value Added Taxes (VAT)
772	2017-05-01	Steuern vom Umsatz	47461	2017-05-01	\N	5	9640	\N	45981	108809	2017	Value Added Taxes (VAT)
773	2017-06-01	Steuern vom Umsatz	56505	2017-06-01	\N	6	9044	\N	55095	108739	2017	Value Added Taxes (VAT)
774	2017-07-01	Steuern vom Umsatz	65258	2017-07-01	\N	7	8753	\N	63181	109406	2017	Value Added Taxes (VAT)
775	2017-08-01	Steuern vom Umsatz	74872	2017-08-01	\N	8	9614	\N	72932	109269	2017	Value Added Taxes (VAT)
776	2017-09-01	Steuern vom Umsatz	84261	2017-09-01	\N	9	9389	\N	82030	109560	2017	Value Added Taxes (VAT)
777	2017-10-01	Steuern vom Umsatz	93613	2017-10-01	\N	10	9352	\N	91455	109487	2017	Value Added Taxes (VAT)
778	2017-11-01	Steuern vom Umsatz	103957	2017-11-01	\N	11	10344	\N	101374	109912	2017	Value Added Taxes (VAT)
779	2017-12-01	Steuern vom Umsatz	114005	2017-12-01	\N	12	10048	\N	106529	114005	2017	Value Added Taxes (VAT)
780	2018-01-01	Steuern vom Umsatz	9535	2018-01-01	\N	1	9535	\N	9459	114081	2018	Value Added Taxes (VAT)
781	2018-02-01	Steuern vom Umsatz	21649	2018-02-01	\N	2	12114	\N	20997	114657	2018	Value Added Taxes (VAT)
782	2018-03-01	Steuern vom Umsatz	29688	2018-03-01	\N	3	8039	\N	29054	114639	2018	Value Added Taxes (VAT)
783	2018-04-01	Steuern vom Umsatz	38218	2018-04-01	\N	4	8530	\N	37821	114402	2018	Value Added Taxes (VAT)
784	2018-05-01	Steuern vom Umsatz	48210	2018-05-01	\N	5	9992	\N	47461	114754	2018	Value Added Taxes (VAT)
785	2018-06-01	Steuern vom Umsatz	57682	2018-06-01	\N	6	9472	\N	56505	115182	2018	Value Added Taxes (VAT)
786	2018-07-01	Steuern vom Umsatz	66582	2018-07-01	\N	7	8900	\N	65258	115329	2018	Value Added Taxes (VAT)
787	2018-08-01	Steuern vom Umsatz	76928	2018-08-01	\N	8	10346	\N	74872	116061	2018	Value Added Taxes (VAT)
788	2018-09-01	Steuern vom Umsatz	86567	2018-09-01	\N	9	9639	\N	84261	116311	2018	Value Added Taxes (VAT)
789	2018-10-01	Steuern vom Umsatz	96038	2018-10-01	\N	10	9471	\N	93613	116430	2018	Value Added Taxes (VAT)
790	2018-11-01	Steuern vom Umsatz	106480	2018-11-01	\N	11	10442	\N	103957	116528	2018	Value Added Taxes (VAT)
791	2018-12-01	Steuern vom Umsatz	116513	2018-12-01	\N	12	10033	\N	114805	116513	2018	Value Added Taxes (VAT)
792	2008-01-01	Gewerbesteuerumlage	8	2008-01-01	\N	1	8	\N	0	\N	2008	Trade Tax Apportionment
793	2008-02-01	Gewerbesteuerumlage	68	2008-02-01	\N	2	60	\N	0	\N	2008	Trade Tax Apportionment
794	2008-03-01	Gewerbesteuerumlage	70	2008-03-01	\N	3	2	\N	0	\N	2008	Trade Tax Apportionment
795	2008-04-01	Gewerbesteuerumlage	191	2008-04-01	\N	4	121	\N	0	\N	2008	Trade Tax Apportionment
796	2008-05-01	Gewerbesteuerumlage	381	2008-05-01	\N	5	190	\N	0	\N	2008	Trade Tax Apportionment
797	2008-06-01	Gewerbesteuerumlage	392	2008-06-01	\N	6	11	\N	0	\N	2008	Trade Tax Apportionment
798	2008-07-01	Gewerbesteuerumlage	533	2008-07-01	\N	7	141	\N	0	\N	2008	Trade Tax Apportionment
799	2008-08-01	Gewerbesteuerumlage	738	2008-08-01	\N	8	205	\N	0	\N	2008	Trade Tax Apportionment
800	2008-09-01	Gewerbesteuerumlage	727	2008-09-01	\N	9	-11	\N	0	\N	2008	Trade Tax Apportionment
801	2008-10-01	Gewerbesteuerumlage	849	2008-10-01	\N	10	122	\N	0	\N	2008	Trade Tax Apportionment
802	2008-11-01	Gewerbesteuerumlage	1052	2008-11-01	\N	11	203	\N	0	\N	2008	Trade Tax Apportionment
803	2008-12-01	Gewerbesteuerumlage	1348	2008-12-01	\N	12	296	\N	0	1348	2008	Trade Tax Apportionment
804	2009-01-01	Gewerbesteuerumlage	-14	2009-01-01	\N	1	-14	\N	8	1326	2009	Trade Tax Apportionment
805	2009-02-01	Gewerbesteuerumlage	1	2009-02-01	\N	2	15	\N	68	1281	2009	Trade Tax Apportionment
806	2009-03-01	Gewerbesteuerumlage	3	2009-03-01	\N	3	2	\N	70	1281	2009	Trade Tax Apportionment
807	2009-04-01	Gewerbesteuerumlage	126	2009-04-01	\N	4	123	\N	191	1283	2009	Trade Tax Apportionment
808	2009-05-01	Gewerbesteuerumlage	317	2009-05-01	\N	5	191	\N	381	1284	2009	Trade Tax Apportionment
809	2009-06-01	Gewerbesteuerumlage	319	2009-06-01	\N	6	2	\N	392	1275	2009	Trade Tax Apportionment
810	2009-07-01	Gewerbesteuerumlage	434	2009-07-01	\N	7	115	\N	533	1249	2009	Trade Tax Apportionment
811	2009-08-01	Gewerbesteuerumlage	604	2009-08-01	\N	8	170	\N	738	1214	2009	Trade Tax Apportionment
812	2009-09-01	Gewerbesteuerumlage	605	2009-09-01	\N	9	1	\N	727	1226	2009	Trade Tax Apportionment
813	2009-10-01	Gewerbesteuerumlage	707	2009-10-01	\N	10	102	\N	849	1206	2009	Trade Tax Apportionment
814	2009-11-01	Gewerbesteuerumlage	835	2009-11-01	\N	11	128	\N	1052	1131	2009	Trade Tax Apportionment
815	2009-12-01	Gewerbesteuerumlage	1044	2009-12-01	\N	12	209	\N	1348	1044	2009	Trade Tax Apportionment
816	2010-01-01	Gewerbesteuerumlage	-25	2010-01-01	\N	1	-25	\N	-14	1033	2010	Trade Tax Apportionment
817	2010-02-01	Gewerbesteuerumlage	42	2010-02-01	\N	2	67	\N	1	1085	2010	Trade Tax Apportionment
818	2010-03-01	Gewerbesteuerumlage	46	2010-03-01	\N	3	4	\N	3	1087	2010	Trade Tax Apportionment
819	2010-04-01	Gewerbesteuerumlage	162	2010-04-01	\N	4	116	\N	126	1080	2010	Trade Tax Apportionment
820	2010-05-01	Gewerbesteuerumlage	334	2010-05-01	\N	5	172	\N	317	1061	2010	Trade Tax Apportionment
821	2010-06-01	Gewerbesteuerumlage	335	2010-06-01	\N	6	1	\N	319	1060	2010	Trade Tax Apportionment
822	2010-07-01	Gewerbesteuerumlage	486	2010-07-01	\N	7	151	\N	434	1096	2010	Trade Tax Apportionment
823	2010-08-01	Gewerbesteuerumlage	662	2010-08-01	\N	8	176	\N	604	1102	2010	Trade Tax Apportionment
824	2010-09-01	Gewerbesteuerumlage	679	2010-09-01	\N	9	17	\N	605	1118	2010	Trade Tax Apportionment
825	2010-10-01	Gewerbesteuerumlage	803	2010-10-01	\N	10	124	\N	707	1140	2010	Trade Tax Apportionment
1059	2008-04-01	Tabaksteuer	3657	2008-04-01	\N	4	1110	\N	0	\N	2008	Tobacco Duty
826	2010-11-01	Gewerbesteuerumlage	993	2010-11-01	\N	11	190	\N	835	1202	2010	Trade Tax Apportionment
827	2010-12-01	Gewerbesteuerumlage	1287	2010-12-01	\N	12	294	\N	1044	1287	2010	Trade Tax Apportionment
828	2011-01-01	Gewerbesteuerumlage	-40	2011-01-01	\N	1	-40	\N	-25	1272	2011	Trade Tax Apportionment
829	2011-02-01	Gewerbesteuerumlage	83	2011-02-01	\N	2	123	\N	42	1328	2011	Trade Tax Apportionment
830	2011-03-01	Gewerbesteuerumlage	86	2011-03-01	\N	3	3	\N	46	1327	2011	Trade Tax Apportionment
831	2011-04-01	Gewerbesteuerumlage	296	2011-04-01	\N	4	210	\N	162	1421	2011	Trade Tax Apportionment
832	2011-05-01	Gewerbesteuerumlage	457	2011-05-01	\N	5	161	\N	334	1410	2011	Trade Tax Apportionment
833	2011-06-01	Gewerbesteuerumlage	458	2011-06-01	\N	6	1	\N	335	1410	2011	Trade Tax Apportionment
834	2011-07-01	Gewerbesteuerumlage	677	2011-07-01	\N	7	219	\N	486	1478	2011	Trade Tax Apportionment
835	2011-08-01	Gewerbesteuerumlage	841	2011-08-01	\N	8	164	\N	662	1466	2011	Trade Tax Apportionment
836	2011-09-01	Gewerbesteuerumlage	841	2011-09-01	\N	9	0	\N	679	1449	2011	Trade Tax Apportionment
837	2011-10-01	Gewerbesteuerumlage	1041	2011-10-01	\N	10	200	\N	803	1525	2011	Trade Tax Apportionment
838	2011-11-01	Gewerbesteuerumlage	1193	2011-11-01	\N	11	152	\N	993	1487	2011	Trade Tax Apportionment
839	2011-12-01	Gewerbesteuerumlage	1520	2011-12-01	\N	12	327	\N	1287	1520	2011	Trade Tax Apportionment
840	2012-01-01	Gewerbesteuerumlage	-15	2012-01-01	\N	1	-15	\N	-40	1545	2012	Trade Tax Apportionment
841	2012-02-01	Gewerbesteuerumlage	26	2012-02-01	\N	2	41	\N	83	1463	2012	Trade Tax Apportionment
842	2012-03-01	Gewerbesteuerumlage	63	2012-03-01	\N	3	37	\N	86	1497	2012	Trade Tax Apportionment
843	2012-04-01	Gewerbesteuerumlage	267	2012-04-01	\N	4	204	\N	296	1491	2012	Trade Tax Apportionment
844	2012-05-01	Gewerbesteuerumlage	433	2012-05-01	\N	5	166	\N	457	1496	2012	Trade Tax Apportionment
845	2012-06-01	Gewerbesteuerumlage	433	2012-06-01	\N	6	0	\N	458	1495	2012	Trade Tax Apportionment
846	2012-07-01	Gewerbesteuerumlage	678	2012-07-01	\N	7	245	\N	677	1521	2012	Trade Tax Apportionment
847	2012-08-01	Gewerbesteuerumlage	844	2012-08-01	\N	8	166	\N	841	1523	2012	Trade Tax Apportionment
848	2012-09-01	Gewerbesteuerumlage	844	2012-09-01	\N	9	0	\N	841	1523	2012	Trade Tax Apportionment
849	2012-10-01	Gewerbesteuerumlage	1062	2012-10-01	\N	10	218	\N	1041	1541	2012	Trade Tax Apportionment
850	2012-11-01	Gewerbesteuerumlage	1238	2012-11-01	\N	11	176	\N	1193	1565	2012	Trade Tax Apportionment
851	2012-12-01	Gewerbesteuerumlage	1587	2012-12-01	\N	12	349	\N	1520	1587	2012	Trade Tax Apportionment
852	2013-01-01	Gewerbesteuerumlage	-5	2013-01-01	\N	1	-5	\N	-15	1597	2013	Trade Tax Apportionment
853	2013-02-01	Gewerbesteuerumlage	39	2013-02-01	\N	2	44	\N	26	1600	2013	Trade Tax Apportionment
854	2013-03-01	Gewerbesteuerumlage	39	2013-03-01	\N	3	0	\N	63	1563	2013	Trade Tax Apportionment
855	2013-04-01	Gewerbesteuerumlage	276	2013-04-01	\N	4	237	\N	267	1596	2013	Trade Tax Apportionment
856	2013-05-01	Gewerbesteuerumlage	437	2013-05-01	\N	5	161	\N	433	1591	2013	Trade Tax Apportionment
857	2013-06-01	Gewerbesteuerumlage	438	2013-06-01	\N	6	1	\N	433	1592	2013	Trade Tax Apportionment
858	2013-07-01	Gewerbesteuerumlage	683	2013-07-01	\N	7	245	\N	678	1592	2013	Trade Tax Apportionment
859	2013-08-01	Gewerbesteuerumlage	858	2013-08-01	\N	8	175	\N	844	1601	2013	Trade Tax Apportionment
860	2013-09-01	Gewerbesteuerumlage	858	2013-09-01	\N	9	0	\N	844	1601	2013	Trade Tax Apportionment
861	2013-10-01	Gewerbesteuerumlage	1083	2013-10-01	\N	10	225	\N	1062	1608	2013	Trade Tax Apportionment
862	2013-11-01	Gewerbesteuerumlage	1235	2013-11-01	\N	11	152	\N	1238	1584	2013	Trade Tax Apportionment
863	2013-12-01	Gewerbesteuerumlage	1575	2013-12-01	\N	12	340	\N	1587	1575	2013	Trade Tax Apportionment
864	2014-01-01	Gewerbesteuerumlage	-3	2014-01-01	\N	1	-3	\N	-5	1577	2014	Trade Tax Apportionment
865	2014-02-01	Gewerbesteuerumlage	40	2014-02-01	\N	2	43	\N	39	1576	2014	Trade Tax Apportionment
866	2014-03-01	Gewerbesteuerumlage	41	2014-03-01	\N	3	1	\N	39	1577	2014	Trade Tax Apportionment
867	2014-04-01	Gewerbesteuerumlage	270	2014-04-01	\N	4	229	\N	276	1569	2014	Trade Tax Apportionment
868	2014-05-01	Gewerbesteuerumlage	437	2014-05-01	\N	5	167	\N	437	1575	2014	Trade Tax Apportionment
869	2014-06-01	Gewerbesteuerumlage	439	2014-06-01	\N	6	2	\N	438	1576	2014	Trade Tax Apportionment
870	2014-07-01	Gewerbesteuerumlage	621	2014-07-01	\N	7	182	\N	683	1513	2014	Trade Tax Apportionment
871	2014-08-01	Gewerbesteuerumlage	867	2014-08-01	\N	8	246	\N	858	1584	2014	Trade Tax Apportionment
872	2014-09-01	Gewerbesteuerumlage	868	2014-09-01	\N	9	1	\N	858	1585	2014	Trade Tax Apportionment
873	2014-10-01	Gewerbesteuerumlage	1099	2014-10-01	\N	10	231	\N	1083	1591	2014	Trade Tax Apportionment
874	2014-11-01	Gewerbesteuerumlage	1257	2014-11-01	\N	11	158	\N	1235	1597	2014	Trade Tax Apportionment
875	2014-12-01	Gewerbesteuerumlage	1603	2014-12-01	\N	12	346	\N	1575	1603	2014	Trade Tax Apportionment
876	2015-01-01	Gewerbesteuerumlage	5	2015-01-01	\N	1	5	\N	-3	1611	2015	Trade Tax Apportionment
877	2015-02-01	Gewerbesteuerumlage	40	2015-02-01	\N	2	35	\N	40	1603	2015	Trade Tax Apportionment
878	2015-03-01	Gewerbesteuerumlage	41	2015-03-01	\N	3	1	\N	41	1603	2015	Trade Tax Apportionment
879	2015-04-01	Gewerbesteuerumlage	263	2015-04-01	\N	4	222	\N	270	1596	2015	Trade Tax Apportionment
880	2015-05-01	Gewerbesteuerumlage	432	2015-05-01	\N	5	169	\N	437	1598	2015	Trade Tax Apportionment
881	2015-06-01	Gewerbesteuerumlage	433	2015-06-01	\N	6	1	\N	439	1597	2015	Trade Tax Apportionment
882	2015-07-01	Gewerbesteuerumlage	685	2015-07-01	\N	7	252	\N	621	1667	2015	Trade Tax Apportionment
883	2015-08-01	Gewerbesteuerumlage	885	2015-08-01	\N	8	200	\N	867	1621	2015	Trade Tax Apportionment
884	2015-09-01	Gewerbesteuerumlage	886	2015-09-01	\N	9	1	\N	868	1621	2015	Trade Tax Apportionment
885	2015-10-01	Gewerbesteuerumlage	1123	2015-10-01	\N	10	237	\N	1099	1627	2015	Trade Tax Apportionment
886	2015-11-01	Gewerbesteuerumlage	1283	2015-11-01	\N	11	160	\N	1257	1629	2015	Trade Tax Apportionment
887	2015-12-01	Gewerbesteuerumlage	1656	2015-12-01	\N	12	373	\N	1603	1656	2015	Trade Tax Apportionment
888	2016-01-01	Gewerbesteuerumlage	5	2016-01-01	\N	1	5	\N	5	1656	2016	Trade Tax Apportionment
889	2016-02-01	Gewerbesteuerumlage	43	2016-02-01	\N	2	38	\N	40	1659	2016	Trade Tax Apportionment
890	2016-03-01	Gewerbesteuerumlage	45	2016-03-01	\N	3	2	\N	41	1660	2016	Trade Tax Apportionment
891	2016-04-01	Gewerbesteuerumlage	305	2016-04-01	\N	4	260	\N	263	1698	2016	Trade Tax Apportionment
892	2016-05-01	Gewerbesteuerumlage	483	2016-05-01	\N	5	178	\N	432	1707	2016	Trade Tax Apportionment
893	2016-06-01	Gewerbesteuerumlage	483	2016-06-01	\N	6	0	\N	433	1706	2016	Trade Tax Apportionment
894	2016-07-01	Gewerbesteuerumlage	750	2016-07-01	\N	7	267	\N	685	1721	2016	Trade Tax Apportionment
895	2016-08-01	Gewerbesteuerumlage	939	2016-08-01	\N	8	189	\N	885	1710	2016	Trade Tax Apportionment
896	2016-09-01	Gewerbesteuerumlage	939	2016-09-01	\N	9	0	\N	886	1709	2016	Trade Tax Apportionment
897	2016-10-01	Gewerbesteuerumlage	1174	2016-10-01	\N	10	235	\N	1123	1707	2016	Trade Tax Apportionment
898	2016-11-01	Gewerbesteuerumlage	1375	2016-11-01	\N	11	201	\N	1283	1748	2016	Trade Tax Apportionment
899	2016-12-01	Gewerbesteuerumlage	1755	2016-12-01	\N	12	380	\N	1656	1755	2016	Trade Tax Apportionment
900	2017-01-01	Gewerbesteuerumlage	48	2017-01-01	\N	1	48	\N	5	1798	2017	Trade Tax Apportionment
901	2017-02-01	Gewerbesteuerumlage	105	2017-02-01	\N	2	57	\N	43	1817	2017	Trade Tax Apportionment
902	2017-03-01	Gewerbesteuerumlage	107	2017-03-01	\N	3	2	\N	45	1817	2017	Trade Tax Apportionment
903	2017-04-01	Gewerbesteuerumlage	370	2017-04-01	\N	4	263	\N	305	1820	2017	Trade Tax Apportionment
904	2017-05-01	Gewerbesteuerumlage	574	2017-05-01	\N	5	204	\N	483	1846	2017	Trade Tax Apportionment
905	2017-06-01	Gewerbesteuerumlage	572	2017-06-01	\N	6	-2	\N	483	1844	2017	Trade Tax Apportionment
906	2017-07-01	Gewerbesteuerumlage	842	2017-07-01	\N	7	270	\N	750	1847	2017	Trade Tax Apportionment
907	2017-08-01	Gewerbesteuerumlage	1072	2017-08-01	\N	8	230	\N	939	1888	2017	Trade Tax Apportionment
908	2017-09-01	Gewerbesteuerumlage	1074	2017-09-01	\N	9	2	\N	939	1890	2017	Trade Tax Apportionment
909	2017-10-01	Gewerbesteuerumlage	1324	2017-10-01	\N	10	250	\N	1174	1905	2017	Trade Tax Apportionment
910	2017-11-01	Gewerbesteuerumlage	1535	2017-11-01	\N	11	211	\N	1375	1915	2017	Trade Tax Apportionment
911	2017-12-01	Gewerbesteuerumlage	1941	2017-12-01	\N	12	406	\N	1755	1941	2017	Trade Tax Apportionment
912	2018-01-01	Gewerbesteuerumlage	14	2018-01-01	\N	1	14	\N	48	1907	2018	Trade Tax Apportionment
913	2018-02-01	Gewerbesteuerumlage	70	2018-02-01	\N	2	56	\N	105	1906	2018	Trade Tax Apportionment
914	2018-03-01	Gewerbesteuerumlage	74	2018-03-01	\N	3	4	\N	107	1908	2018	Trade Tax Apportionment
915	2018-04-01	Gewerbesteuerumlage	342	2018-04-01	\N	4	268	\N	370	1913	2018	Trade Tax Apportionment
916	2018-05-01	Gewerbesteuerumlage	577	2018-05-01	\N	5	235	\N	574	1944	2018	Trade Tax Apportionment
917	2018-06-01	Gewerbesteuerumlage	578	2018-06-01	\N	6	1	\N	572	1947	2018	Trade Tax Apportionment
918	2018-07-01	Gewerbesteuerumlage	879	2018-07-01	\N	7	301	\N	842	1978	2018	Trade Tax Apportionment
919	2018-08-01	Gewerbesteuerumlage	1103	2018-08-01	\N	8	224	\N	1072	1972	2018	Trade Tax Apportionment
920	2018-09-01	Gewerbesteuerumlage	1103	2018-09-01	\N	9	0	\N	1074	1970	2018	Trade Tax Apportionment
921	2018-10-01	Gewerbesteuerumlage	1395	2018-10-01	\N	10	292	\N	1324	2012	2018	Trade Tax Apportionment
922	2018-11-01	Gewerbesteuerumlage	1509	2018-11-01	\N	11	114	\N	1535	1915	2018	Trade Tax Apportionment
923	2018-12-01	Gewerbesteuerumlage	2058	2018-12-01	\N	12	549	\N	1941	2058	2018	Trade Tax Apportionment
924	2008-01-01	Energiesteuer	373	2008-01-01	\N	1	373	\N	0	\N	2008	Energy Duty
925	2008-02-01	Energiesteuer	1627	2008-02-01	\N	2	1254	\N	0	\N	2008	Energy Duty
926	2008-03-01	Energiesteuer	4668	2008-03-01	\N	3	3041	\N	0	\N	2008	Energy Duty
927	2008-04-01	Energiesteuer	7767	2008-04-01	\N	4	3099	\N	0	\N	2008	Energy Duty
928	2008-05-01	Energiesteuer	10877	2008-05-01	\N	5	3110	\N	0	\N	2008	Energy Duty
929	2008-06-01	Energiesteuer	14238	2008-06-01	\N	6	3361	\N	0	\N	2008	Energy Duty
930	2008-07-01	Energiesteuer	17417	2008-07-01	\N	7	3179	\N	0	\N	2008	Energy Duty
931	2008-08-01	Energiesteuer	20601	2008-08-01	\N	8	3184	\N	0	\N	2008	Energy Duty
932	2008-09-01	Energiesteuer	24045	2008-09-01	\N	9	3444	\N	0	\N	2008	Energy Duty
933	2008-10-01	Energiesteuer	27217	2008-10-01	\N	10	3172	\N	0	\N	2008	Energy Duty
934	2008-11-01	Energiesteuer	30753	2008-11-01	\N	11	3536	\N	0	\N	2008	Energy Duty
935	2008-12-01	Energiesteuer	39248	2008-12-01	\N	12	8495	\N	0	39248	2008	Energy Duty
936	2009-01-01	Energiesteuer	319	2009-01-01	\N	1	319	\N	373	39194	2009	Energy Duty
937	2009-02-01	Energiesteuer	1795	2009-02-01	\N	2	1476	\N	1627	39416	2009	Energy Duty
938	2009-03-01	Energiesteuer	4777	2009-03-01	\N	3	2982	\N	4668	39357	2009	Energy Duty
939	2009-04-01	Energiesteuer	7848	2009-04-01	\N	4	3071	\N	7767	39329	2009	Energy Duty
940	2009-05-01	Energiesteuer	11194	2009-05-01	\N	5	3346	\N	10877	39565	2009	Energy Duty
941	2009-06-01	Energiesteuer	14836	2009-06-01	\N	6	3642	\N	14238	39846	2009	Energy Duty
1060	2008-05-01	Tabaksteuer	4790	2008-05-01	\N	5	1133	\N	0	\N	2008	Tobacco Duty
942	2009-07-01	Energiesteuer	18028	2009-07-01	\N	7	3192	\N	17417	39859	2009	Energy Duty
943	2009-08-01	Energiesteuer	21195	2009-08-01	\N	8	3167	\N	20601	39842	2009	Energy Duty
944	2009-09-01	Energiesteuer	24718	2009-09-01	\N	9	3523	\N	24045	39921	2009	Energy Duty
945	2009-10-01	Energiesteuer	28018	2009-10-01	\N	10	3300	\N	27217	40049	2009	Energy Duty
946	2009-11-01	Energiesteuer	31580	2009-11-01	\N	11	3562	\N	30753	40075	2009	Energy Duty
947	2009-12-01	Energiesteuer	39822	2009-12-01	\N	12	8242	\N	39248	39822	2009	Energy Duty
948	2010-01-01	Energiesteuer	272	2010-01-01	\N	1	272	\N	319	39775	2010	Energy Duty
949	2010-02-01	Energiesteuer	1666	2010-02-01	\N	2	1394	\N	1795	39693	2010	Energy Duty
950	2010-03-01	Energiesteuer	4446	2010-03-01	\N	3	2780	\N	4777	39491	2010	Energy Duty
951	2010-04-01	Energiesteuer	7212	2010-04-01	\N	4	2766	\N	7848	39186	2010	Energy Duty
952	2010-05-01	Energiesteuer	10685	2010-05-01	\N	5	3473	\N	11194	39313	2010	Energy Duty
953	2010-06-01	Energiesteuer	14041	2010-06-01	\N	6	3356	\N	14836	39027	2010	Energy Duty
954	2010-07-01	Energiesteuer	17348	2010-07-01	\N	7	3307	\N	18028	39142	2010	Energy Duty
955	2010-08-01	Energiesteuer	20707	2010-08-01	\N	8	3359	\N	21195	39334	2010	Energy Duty
956	2010-09-01	Energiesteuer	24213	2010-09-01	\N	9	3506	\N	24718	39317	2010	Energy Duty
957	2010-10-01	Energiesteuer	27662	2010-10-01	\N	10	3449	\N	28018	39466	2010	Energy Duty
2857	2020-06-01	Lohnsteuer	\N	2020-06-01	97555.5872706159425	6	\N	101411.890210877536	\N	97555.5872706159425	2020	Wages Tax
958	2010-11-01	Energiesteuer	31236	2010-11-01	\N	11	3574	\N	31580	39478	2010	Energy Duty
959	2010-12-01	Energiesteuer	39838	2010-12-01	\N	12	8602	\N	39822	39838	2010	Energy Duty
960	2011-01-01	Energiesteuer	218	2011-01-01	\N	1	218	\N	272	39784	2011	Energy Duty
961	2011-02-01	Energiesteuer	1429	2011-02-01	\N	2	1211	\N	1666	39601	2011	Energy Duty
962	2011-03-01	Energiesteuer	4457	2011-03-01	\N	3	3028	\N	4446	39849	2011	Energy Duty
963	2011-04-01	Energiesteuer	7555	2011-04-01	\N	4	3098	\N	7212	40181	2011	Energy Duty
964	2011-05-01	Energiesteuer	10972	2011-05-01	\N	5	3417	\N	10685	40125	2011	Energy Duty
965	2011-06-01	Energiesteuer	14459	2011-06-01	\N	6	3487	\N	14041	40256	2011	Energy Duty
966	2011-07-01	Energiesteuer	18027	2011-07-01	\N	7	3568	\N	17348	40517	2011	Energy Duty
967	2011-08-01	Energiesteuer	21208	2011-08-01	\N	8	3181	\N	20707	40339	2011	Energy Duty
968	2011-09-01	Energiesteuer	24517	2011-09-01	\N	9	3309	\N	24213	40142	2011	Energy Duty
969	2011-10-01	Energiesteuer	28104	2011-10-01	\N	10	3587	\N	27662	40280	2011	Energy Duty
970	2011-11-01	Energiesteuer	31627	2011-11-01	\N	11	3523	\N	31236	40229	2011	Energy Duty
971	2011-12-01	Energiesteuer	40036	2011-12-01	\N	12	8409	\N	39838	40036	2011	Energy Duty
972	2012-01-01	Energiesteuer	312	2012-01-01	\N	1	312	\N	218	40130	2012	Energy Duty
973	2012-02-01	Energiesteuer	1672	2012-02-01	\N	2	1360	\N	1429	40279	2012	Energy Duty
974	2012-03-01	Energiesteuer	4406	2012-03-01	\N	3	2734	\N	4457	39985	2012	Energy Duty
975	2012-04-01	Energiesteuer	7577	2012-04-01	\N	4	3171	\N	7555	40058	2012	Energy Duty
976	2012-05-01	Energiesteuer	10813	2012-05-01	\N	5	3236	\N	10972	39877	2012	Energy Duty
977	2012-06-01	Energiesteuer	14113	2012-06-01	\N	6	3300	\N	14459	39690	2012	Energy Duty
978	2012-07-01	Energiesteuer	17403	2012-07-01	\N	7	3290	\N	18027	39412	2012	Energy Duty
979	2012-08-01	Energiesteuer	20696	2012-08-01	\N	8	3293	\N	21208	39524	2012	Energy Duty
980	2012-09-01	Energiesteuer	24127	2012-09-01	\N	9	3431	\N	24517	39646	2012	Energy Duty
981	2012-10-01	Energiesteuer	27667	2012-10-01	\N	10	3540	\N	28104	39599	2012	Energy Duty
982	2012-11-01	Energiesteuer	30924	2012-11-01	\N	11	3257	\N	31627	39333	2012	Energy Duty
983	2012-12-01	Energiesteuer	39305	2012-12-01	\N	12	8381	\N	40036	39305	2012	Energy Duty
984	2013-01-01	Energiesteuer	452	2013-01-01	\N	1	452	\N	312	39445	2013	Energy Duty
985	2013-02-01	Energiesteuer	1718	2013-02-01	\N	2	1266	\N	1672	39351	2013	Energy Duty
986	2013-03-01	Energiesteuer	4672	2013-03-01	\N	3	2954	\N	4406	39571	2013	Energy Duty
987	2013-04-01	Energiesteuer	7480	2013-04-01	\N	4	2808	\N	7577	39208	2013	Energy Duty
988	2013-05-01	Energiesteuer	10658	2013-05-01	\N	5	3178	\N	10813	39150	2013	Energy Duty
989	2013-06-01	Energiesteuer	14144	2013-06-01	\N	6	3486	\N	14113	39336	2013	Energy Duty
990	2013-07-01	Energiesteuer	17453	2013-07-01	\N	7	3309	\N	17403	39355	2013	Energy Duty
991	2013-08-01	Energiesteuer	20708	2013-08-01	\N	8	3255	\N	20696	39317	2013	Energy Duty
992	2013-09-01	Energiesteuer	24245	2013-09-01	\N	9	3537	\N	24127	39423	2013	Energy Duty
993	2013-10-01	Energiesteuer	27668	2013-10-01	\N	10	3423	\N	27667	39306	2013	Energy Duty
994	2013-11-01	Energiesteuer	31083	2013-11-01	\N	11	3415	\N	30924	39464	2013	Energy Duty
995	2013-12-01	Energiesteuer	39364	2013-12-01	\N	12	8281	\N	39305	39364	2013	Energy Duty
996	2014-01-01	Energiesteuer	338	2014-01-01	\N	1	338	\N	452	39250	2014	Energy Duty
997	2014-02-01	Energiesteuer	1614	2014-02-01	\N	2	1276	\N	1718	39260	2014	Energy Duty
998	2014-03-01	Energiesteuer	4675	2014-03-01	\N	3	3061	\N	4672	39367	2014	Energy Duty
999	2014-04-01	Energiesteuer	7530	2014-04-01	\N	4	2855	\N	7480	39414	2014	Energy Duty
1000	2014-05-01	Energiesteuer	10827	2014-05-01	\N	5	3297	\N	10658	39533	2014	Energy Duty
1001	2014-06-01	Energiesteuer	14543	2014-06-01	\N	6	3716	\N	14144	39763	2014	Energy Duty
1002	2014-07-01	Energiesteuer	17863	2014-07-01	\N	7	3320	\N	17453	39774	2014	Energy Duty
1003	2014-08-01	Energiesteuer	21012	2014-08-01	\N	8	3149	\N	20708	39668	2014	Energy Duty
1004	2014-09-01	Energiesteuer	24572	2014-09-01	\N	9	3560	\N	24245	39691	2014	Energy Duty
1005	2014-10-01	Energiesteuer	27892	2014-10-01	\N	10	3320	\N	27668	39588	2014	Energy Duty
1006	2014-11-01	Energiesteuer	31338	2014-11-01	\N	11	3446	\N	31083	39619	2014	Energy Duty
1007	2014-12-01	Energiesteuer	39758	2014-12-01	\N	12	8420	\N	39364	39758	2014	Energy Duty
1008	2015-01-01	Energiesteuer	246	2015-01-01	\N	1	246	\N	338	39666	2015	Energy Duty
1009	2015-02-01	Energiesteuer	1685	2015-02-01	\N	2	1439	\N	1614	39829	2015	Energy Duty
1010	2015-03-01	Energiesteuer	4704	2015-03-01	\N	3	3019	\N	4675	39787	2015	Energy Duty
1011	2015-04-01	Energiesteuer	7631	2015-04-01	\N	4	2927	\N	7530	39859	2015	Energy Duty
1012	2015-05-01	Energiesteuer	10942	2015-05-01	\N	5	3311	\N	10827	39873	2015	Energy Duty
1013	2015-06-01	Energiesteuer	14215	2015-06-01	\N	6	3273	\N	14543	39430	2015	Energy Duty
1014	2015-07-01	Energiesteuer	17416	2015-07-01	\N	7	3201	\N	17863	39311	2015	Energy Duty
1015	2015-08-01	Energiesteuer	20783	2015-08-01	\N	8	3367	\N	21012	39529	2015	Energy Duty
1016	2015-09-01	Energiesteuer	24374	2015-09-01	\N	9	3591	\N	24572	39560	2015	Energy Duty
1017	2015-10-01	Energiesteuer	27715	2015-10-01	\N	10	3341	\N	27892	39581	2015	Energy Duty
1018	2015-11-01	Energiesteuer	31141	2015-11-01	\N	11	3426	\N	31338	39561	2015	Energy Duty
1019	2015-12-01	Energiesteuer	39594	2015-12-01	\N	12	8453	\N	39758	39594	2015	Energy Duty
1020	2016-01-01	Energiesteuer	241	2016-01-01	\N	1	241	\N	246	39589	2016	Energy Duty
1021	2016-02-01	Energiesteuer	1695	2016-02-01	\N	2	1454	\N	1685	39604	2016	Energy Duty
1022	2016-03-01	Energiesteuer	4620	2016-03-01	\N	3	2925	\N	4704	39510	2016	Energy Duty
1023	2016-04-01	Energiesteuer	7714	2016-04-01	\N	4	3094	\N	7631	39677	2016	Energy Duty
1024	2016-05-01	Energiesteuer	11066	2016-05-01	\N	5	3352	\N	10942	39718	2016	Energy Duty
1025	2016-06-01	Energiesteuer	14481	2016-06-01	\N	6	3415	\N	14215	39860	2016	Energy Duty
1026	2016-07-01	Energiesteuer	17846	2016-07-01	\N	7	3365	\N	17416	40024	2016	Energy Duty
1027	2016-08-01	Energiesteuer	21230	2016-08-01	\N	8	3384	\N	20783	40041	2016	Energy Duty
1028	2016-09-01	Energiesteuer	24629	2016-09-01	\N	9	3399	\N	24374	39849	2016	Energy Duty
1029	2016-10-01	Energiesteuer	28205	2016-10-01	\N	10	3576	\N	27715	40084	2016	Energy Duty
1030	2016-11-01	Energiesteuer	31706	2016-11-01	\N	11	3501	\N	31141	40159	2016	Energy Duty
1031	2016-12-01	Energiesteuer	40091	2016-12-01	\N	12	8385	\N	39594	40091	2016	Energy Duty
1032	2017-01-01	Energiesteuer	277	2017-01-01	\N	1	277	\N	241	40127	2017	Energy Duty
1033	2017-02-01	Energiesteuer	1740	2017-02-01	\N	2	1463	\N	1695	40136	2017	Energy Duty
1034	2017-03-01	Energiesteuer	4812	2017-03-01	\N	3	3072	\N	4620	40283	2017	Energy Duty
1035	2017-04-01	Energiesteuer	7806	2017-04-01	\N	4	2994	\N	7714	40183	2017	Energy Duty
1036	2017-05-01	Energiesteuer	11388	2017-05-01	\N	5	3582	\N	11066	40413	2017	Energy Duty
1037	2017-06-01	Energiesteuer	14903	2017-06-01	\N	6	3515	\N	14481	40513	2017	Energy Duty
1038	2017-07-01	Energiesteuer	18517	2017-07-01	\N	7	3614	\N	17846	40762	2017	Energy Duty
1039	2017-08-01	Energiesteuer	21973	2017-08-01	\N	8	3456	\N	21230	40834	2017	Energy Duty
1040	2017-09-01	Energiesteuer	25400	2017-09-01	\N	9	3427	\N	24629	40862	2017	Energy Duty
1041	2017-10-01	Energiesteuer	29036	2017-10-01	\N	10	3636	\N	28205	40922	2017	Energy Duty
1042	2017-11-01	Energiesteuer	32508	2017-11-01	\N	11	3472	\N	31706	40893	2017	Energy Duty
1043	2017-12-01	Energiesteuer	41022	2017-12-01	\N	12	8514	\N	40091	41022	2017	Energy Duty
1044	2018-01-01	Energiesteuer	279	2018-01-01	\N	1	279	\N	277	41024	2018	Energy Duty
1045	2018-02-01	Energiesteuer	1715	2018-02-01	\N	2	1436	\N	1740	40997	2018	Energy Duty
1046	2018-03-01	Energiesteuer	4865	2018-03-01	\N	3	3150	\N	4812	41075	2018	Energy Duty
1047	2018-04-01	Energiesteuer	8270	2018-04-01	\N	4	3405	\N	7806	41486	2018	Energy Duty
1048	2018-05-01	Energiesteuer	11414	2018-05-01	\N	5	3144	\N	11388	41048	2018	Energy Duty
1049	2018-06-01	Energiesteuer	15022	2018-06-01	\N	6	3608	\N	14903	41141	2018	Energy Duty
1050	2018-07-01	Energiesteuer	18526	2018-07-01	\N	7	3504	\N	18517	41031	2018	Energy Duty
1051	2018-08-01	Energiesteuer	21973	2018-08-01	\N	8	3447	\N	21973	41022	2018	Energy Duty
1052	2018-09-01	Energiesteuer	25445	2018-09-01	\N	9	3472	\N	25400	41067	2018	Energy Duty
1053	2018-10-01	Energiesteuer	29060	2018-10-01	\N	10	3615	\N	29036	41046	2018	Energy Duty
1054	2018-11-01	Energiesteuer	32368	2018-11-01	\N	11	3308	\N	32508	40882	2018	Energy Duty
1055	2018-12-01	Energiesteuer	40882	2018-12-01	\N	12	8514	\N	41022	40882	2018	Energy Duty
1056	2008-01-01	Tabaksteuer	223	2008-01-01	\N	1	223	\N	0	\N	2008	Tobacco Duty
1057	2008-02-01	Tabaksteuer	1420	2008-02-01	\N	2	1197	\N	0	\N	2008	Tobacco Duty
1061	2008-06-01	Tabaksteuer	5814	2008-06-01	\N	6	1024	\N	0	\N	2008	Tobacco Duty
1062	2008-07-01	Tabaksteuer	7023	2008-07-01	\N	7	1209	\N	0	\N	2008	Tobacco Duty
1063	2008-08-01	Tabaksteuer	8315	2008-08-01	\N	8	1292	\N	0	\N	2008	Tobacco Duty
1064	2008-09-01	Tabaksteuer	9463	2008-09-01	\N	9	1148	\N	0	\N	2008	Tobacco Duty
2858	2020-07-01	Lohnsteuer	\N	2020-07-01	98082.2508269024402	7	\N	102143.404643479575	\N	98082.2508269024402	2020	Wages Tax
1065	2008-10-01	Tabaksteuer	10695	2008-10-01	\N	10	1232	\N	0	\N	2008	Tobacco Duty
1066	2008-11-01	Tabaksteuer	11892	2008-11-01	\N	11	1197	\N	0	\N	2008	Tobacco Duty
1067	2008-12-01	Tabaksteuer	13574	2008-12-01	\N	12	1682	\N	0	13574	2008	Tobacco Duty
1068	2009-01-01	Tabaksteuer	237	2009-01-01	\N	1	237	\N	223	13588	2009	Tobacco Duty
1069	2009-02-01	Tabaksteuer	1319	2009-02-01	\N	2	1082	\N	1420	13473	2009	Tobacco Duty
1070	2009-03-01	Tabaksteuer	2365	2009-03-01	\N	3	1046	\N	2547	13392	2009	Tobacco Duty
1071	2009-04-01	Tabaksteuer	3562	2009-04-01	\N	4	1197	\N	3657	13479	2009	Tobacco Duty
1072	2009-05-01	Tabaksteuer	4759	2009-05-01	\N	5	1197	\N	4790	13543	2009	Tobacco Duty
1073	2009-06-01	Tabaksteuer	5925	2009-06-01	\N	6	1166	\N	5814	13685	2009	Tobacco Duty
1074	2009-07-01	Tabaksteuer	7208	2009-07-01	\N	7	1283	\N	7023	13759	2009	Tobacco Duty
1075	2009-08-01	Tabaksteuer	8351	2009-08-01	\N	8	1143	\N	8315	13610	2009	Tobacco Duty
1076	2009-09-01	Tabaksteuer	9424	2009-09-01	\N	9	1073	\N	9463	13535	2009	Tobacco Duty
1077	2009-10-01	Tabaksteuer	10651	2009-10-01	\N	10	1227	\N	10695	13530	2009	Tobacco Duty
1078	2009-11-01	Tabaksteuer	11725	2009-11-01	\N	11	1074	\N	11892	13407	2009	Tobacco Duty
1079	2009-12-01	Tabaksteuer	13366	2009-12-01	\N	12	1641	\N	13574	13366	2009	Tobacco Duty
1080	2010-01-01	Tabaksteuer	374	2010-01-01	\N	1	374	\N	237	13503	2010	Tobacco Duty
1081	2010-02-01	Tabaksteuer	1196	2010-02-01	\N	2	822	\N	1319	13243	2010	Tobacco Duty
1082	2010-03-01	Tabaksteuer	2462	2010-03-01	\N	3	1266	\N	2365	13463	2010	Tobacco Duty
1083	2010-04-01	Tabaksteuer	3596	2010-04-01	\N	4	1134	\N	3562	13400	2010	Tobacco Duty
1084	2010-05-01	Tabaksteuer	4675	2010-05-01	\N	5	1079	\N	4759	13282	2010	Tobacco Duty
1085	2010-06-01	Tabaksteuer	5789	2010-06-01	\N	6	1114	\N	5925	13230	2010	Tobacco Duty
1086	2010-07-01	Tabaksteuer	7014	2010-07-01	\N	7	1225	\N	7208	13172	2010	Tobacco Duty
1087	2010-08-01	Tabaksteuer	8222	2010-08-01	\N	8	1208	\N	8351	13237	2010	Tobacco Duty
1088	2010-09-01	Tabaksteuer	9397	2010-09-01	\N	9	1175	\N	9424	13339	2010	Tobacco Duty
1089	2010-10-01	Tabaksteuer	10595	2010-10-01	\N	10	1198	\N	10651	13310	2010	Tobacco Duty
1090	2010-11-01	Tabaksteuer	11685	2010-11-01	\N	11	1090	\N	11725	13326	2010	Tobacco Duty
1091	2010-12-01	Tabaksteuer	13492	2010-12-01	\N	12	1807	\N	13366	13492	2010	Tobacco Duty
1092	2011-01-01	Tabaksteuer	335	2011-01-01	\N	1	335	\N	374	13453	2011	Tobacco Duty
1093	2011-02-01	Tabaksteuer	1169	2011-02-01	\N	2	834	\N	1196	13465	2011	Tobacco Duty
1094	2011-03-01	Tabaksteuer	2893	2011-03-01	\N	3	1724	\N	2462	13923	2011	Tobacco Duty
1095	2011-04-01	Tabaksteuer	4062	2011-04-01	\N	4	1169	\N	3596	13958	2011	Tobacco Duty
1096	2011-05-01	Tabaksteuer	5167	2011-05-01	\N	5	1105	\N	4675	13984	2011	Tobacco Duty
1097	2011-06-01	Tabaksteuer	6193	2011-06-01	\N	6	1026	\N	5789	13896	2011	Tobacco Duty
1098	2011-07-01	Tabaksteuer	7235	2011-07-01	\N	7	1042	\N	7014	13713	2011	Tobacco Duty
1099	2011-08-01	Tabaksteuer	8430	2011-08-01	\N	8	1195	\N	8222	13700	2011	Tobacco Duty
1100	2011-09-01	Tabaksteuer	9611	2011-09-01	\N	9	1181	\N	9397	13706	2011	Tobacco Duty
1101	2011-10-01	Tabaksteuer	11015	2011-10-01	\N	10	1404	\N	10595	13912	2011	Tobacco Duty
1102	2011-11-01	Tabaksteuer	12279	2011-11-01	\N	11	1264	\N	11685	14086	2011	Tobacco Duty
1103	2011-12-01	Tabaksteuer	14414	2011-12-01	\N	12	2135	\N	13492	14414	2011	Tobacco Duty
1104	2012-01-01	Tabaksteuer	376	2012-01-01	\N	1	376	\N	335	14455	2012	Tobacco Duty
1105	2012-02-01	Tabaksteuer	1359	2012-02-01	\N	2	983	\N	1169	14604	2012	Tobacco Duty
1106	2012-03-01	Tabaksteuer	2305	2012-03-01	\N	3	946	\N	2893	13826	2012	Tobacco Duty
1107	2012-04-01	Tabaksteuer	3525	2012-04-01	\N	4	1220	\N	4062	13877	2012	Tobacco Duty
1108	2012-05-01	Tabaksteuer	4692	2012-05-01	\N	5	1167	\N	5167	13939	2012	Tobacco Duty
1109	2012-06-01	Tabaksteuer	5855	2012-06-01	\N	6	1163	\N	6193	14076	2012	Tobacco Duty
1110	2012-07-01	Tabaksteuer	7079	2012-07-01	\N	7	1224	\N	7235	14258	2012	Tobacco Duty
1111	2012-08-01	Tabaksteuer	8368	2012-08-01	\N	8	1289	\N	8430	14352	2012	Tobacco Duty
1112	2012-09-01	Tabaksteuer	9465	2012-09-01	\N	9	1097	\N	9611	14268	2012	Tobacco Duty
1113	2012-10-01	Tabaksteuer	10897	2012-10-01	\N	10	1432	\N	11015	14296	2012	Tobacco Duty
1114	2012-11-01	Tabaksteuer	12305	2012-11-01	\N	11	1408	\N	12279	14440	2012	Tobacco Duty
1115	2012-12-01	Tabaksteuer	14143	2012-12-01	\N	12	1838	\N	14414	14143	2012	Tobacco Duty
1116	2013-01-01	Tabaksteuer	482	2013-01-01	\N	1	482	\N	376	14249	2013	Tobacco Duty
1117	2013-02-01	Tabaksteuer	1301	2013-02-01	\N	2	819	\N	1359	14085	2013	Tobacco Duty
1118	2013-03-01	Tabaksteuer	2141	2013-03-01	\N	3	840	\N	2305	13979	2013	Tobacco Duty
1119	2013-04-01	Tabaksteuer	3466	2013-04-01	\N	4	1325	\N	3525	14084	2013	Tobacco Duty
1120	2013-05-01	Tabaksteuer	4655	2013-05-01	\N	5	1189	\N	4692	14106	2013	Tobacco Duty
1121	2013-06-01	Tabaksteuer	5646	2013-06-01	\N	6	991	\N	5855	13934	2013	Tobacco Duty
1122	2013-07-01	Tabaksteuer	6946	2013-07-01	\N	7	1300	\N	7079	14010	2013	Tobacco Duty
1123	2013-08-01	Tabaksteuer	8209	2013-08-01	\N	8	1263	\N	8368	13984	2013	Tobacco Duty
1124	2013-09-01	Tabaksteuer	9504	2013-09-01	\N	9	1295	\N	9465	14182	2013	Tobacco Duty
1125	2013-10-01	Tabaksteuer	10822	2013-10-01	\N	10	1318	\N	10897	14068	2013	Tobacco Duty
1126	2013-11-01	Tabaksteuer	12171	2013-11-01	\N	11	1349	\N	12305	14009	2013	Tobacco Duty
1127	2013-12-01	Tabaksteuer	13820	2013-12-01	\N	12	1649	\N	14143	13820	2013	Tobacco Duty
1128	2014-01-01	Tabaksteuer	793	2014-01-01	\N	1	793	\N	482	14131	2014	Tobacco Duty
1129	2014-02-01	Tabaksteuer	1515	2014-02-01	\N	2	722	\N	1301	14034	2014	Tobacco Duty
1130	2014-03-01	Tabaksteuer	2477	2014-03-01	\N	3	962	\N	2141	14156	2014	Tobacco Duty
1131	2014-04-01	Tabaksteuer	3733	2014-04-01	\N	4	1256	\N	3466	14087	2014	Tobacco Duty
1132	2014-05-01	Tabaksteuer	4947	2014-05-01	\N	5	1214	\N	4655	14112	2014	Tobacco Duty
1133	2014-06-01	Tabaksteuer	6186	2014-06-01	\N	6	1239	\N	5646	14360	2014	Tobacco Duty
1134	2014-07-01	Tabaksteuer	7370	2014-07-01	\N	7	1184	\N	6946	14244	2014	Tobacco Duty
1135	2014-08-01	Tabaksteuer	8669	2014-08-01	\N	8	1299	\N	8209	14280	2014	Tobacco Duty
1136	2014-09-01	Tabaksteuer	9921	2014-09-01	\N	9	1252	\N	9504	14237	2014	Tobacco Duty
1137	2014-10-01	Tabaksteuer	11262	2014-10-01	\N	10	1341	\N	10822	14260	2014	Tobacco Duty
1138	2014-11-01	Tabaksteuer	12619	2014-11-01	\N	11	1357	\N	12171	14268	2014	Tobacco Duty
1139	2014-12-01	Tabaksteuer	14612	2014-12-01	\N	12	1993	\N	13820	14612	2014	Tobacco Duty
1140	2015-01-01	Tabaksteuer	513	2015-01-01	\N	1	513	\N	793	14332	2015	Tobacco Duty
1141	2015-02-01	Tabaksteuer	1068	2015-02-01	\N	2	555	\N	1515	14165	2015	Tobacco Duty
1142	2015-03-01	Tabaksteuer	2223	2015-03-01	\N	3	1155	\N	2477	14358	2015	Tobacco Duty
1143	2015-04-01	Tabaksteuer	3550	2015-04-01	\N	4	1327	\N	3733	14429	2015	Tobacco Duty
1144	2015-05-01	Tabaksteuer	4789	2015-05-01	\N	5	1239	\N	4947	14454	2015	Tobacco Duty
1145	2015-06-01	Tabaksteuer	5906	2015-06-01	\N	6	1117	\N	6186	14332	2015	Tobacco Duty
1146	2015-07-01	Tabaksteuer	7279	2015-07-01	\N	7	1373	\N	7370	14521	2015	Tobacco Duty
1147	2015-08-01	Tabaksteuer	8686	2015-08-01	\N	8	1407	\N	8669	14629	2015	Tobacco Duty
1148	2015-09-01	Tabaksteuer	9887	2015-09-01	\N	9	1201	\N	9921	14578	2015	Tobacco Duty
1149	2015-10-01	Tabaksteuer	11255	2015-10-01	\N	10	1368	\N	11262	14605	2015	Tobacco Duty
1150	2015-11-01	Tabaksteuer	12680	2015-11-01	\N	11	1425	\N	12619	14673	2015	Tobacco Duty
1151	2015-12-01	Tabaksteuer	14921	2015-12-01	\N	12	2241	\N	14612	14921	2015	Tobacco Duty
1152	2016-01-01	Tabaksteuer	556	2016-01-01	\N	1	556	\N	513	14964	2016	Tobacco Duty
1153	2016-02-01	Tabaksteuer	1240	2016-02-01	\N	2	684	\N	1068	15093	2016	Tobacco Duty
1154	2016-03-01	Tabaksteuer	2722	2016-03-01	\N	3	1482	\N	2223	15420	2016	Tobacco Duty
1155	2016-04-01	Tabaksteuer	4321	2016-04-01	\N	4	1599	\N	3550	15692	2016	Tobacco Duty
1156	2016-05-01	Tabaksteuer	6012	2016-05-01	\N	5	1691	\N	4789	16144	2016	Tobacco Duty
1157	2016-06-01	Tabaksteuer	6861	2016-06-01	\N	6	849	\N	5906	15876	2016	Tobacco Duty
1158	2016-07-01	Tabaksteuer	7576	2016-07-01	\N	7	715	\N	7279	15218	2016	Tobacco Duty
1159	2016-08-01	Tabaksteuer	8701	2016-08-01	\N	8	1125	\N	8686	14936	2016	Tobacco Duty
1160	2016-09-01	Tabaksteuer	9871	2016-09-01	\N	9	1170	\N	9887	14905	2016	Tobacco Duty
1161	2016-10-01	Tabaksteuer	11109	2016-10-01	\N	10	1238	\N	11255	14775	2016	Tobacco Duty
1162	2016-11-01	Tabaksteuer	12264	2016-11-01	\N	11	1155	\N	12680	14505	2016	Tobacco Duty
1163	2016-12-01	Tabaksteuer	14186	2016-12-01	\N	12	1922	\N	14921	14186	2016	Tobacco Duty
1164	2017-01-01	Tabaksteuer	432	2017-01-01	\N	1	432	\N	556	14062	2017	Tobacco Duty
1165	2017-02-01	Tabaksteuer	1402	2017-02-01	\N	2	970	\N	1240	14348	2017	Tobacco Duty
1166	2017-03-01	Tabaksteuer	2637	2017-03-01	\N	3	1235	\N	2722	14101	2017	Tobacco Duty
1167	2017-04-01	Tabaksteuer	3855	2017-04-01	\N	4	1218	\N	4321	13720	2017	Tobacco Duty
1168	2017-05-01	Tabaksteuer	5001	2017-05-01	\N	5	1146	\N	6012	13175	2017	Tobacco Duty
1169	2017-06-01	Tabaksteuer	6271	2017-06-01	\N	6	1270	\N	6861	13596	2017	Tobacco Duty
1170	2017-07-01	Tabaksteuer	7478	2017-07-01	\N	7	1207	\N	7576	14088	2017	Tobacco Duty
1171	2017-08-01	Tabaksteuer	8801	2017-08-01	\N	8	1323	\N	8701	14286	2017	Tobacco Duty
1172	2017-09-01	Tabaksteuer	10138	2017-09-01	\N	9	1337	\N	9871	14453	2017	Tobacco Duty
1173	2017-10-01	Tabaksteuer	11148	2017-10-01	\N	10	1010	\N	11109	14225	2017	Tobacco Duty
1174	2017-11-01	Tabaksteuer	12525	2017-11-01	\N	11	1377	\N	12264	14447	2017	Tobacco Duty
1175	2017-12-01	Tabaksteuer	14399	2017-12-01	\N	12	1874	\N	14186	14399	2017	Tobacco Duty
1176	2018-01-01	Tabaksteuer	332	2018-01-01	\N	1	332	\N	432	14299	2018	Tobacco Duty
1177	2018-02-01	Tabaksteuer	1323	2018-02-01	\N	2	991	\N	1402	14320	2018	Tobacco Duty
1178	2018-03-01	Tabaksteuer	2425	2018-03-01	\N	3	1102	\N	2637	14187	2018	Tobacco Duty
1179	2018-04-01	Tabaksteuer	3386	2018-04-01	\N	4	961	\N	3855	13930	2018	Tobacco Duty
1180	2018-05-01	Tabaksteuer	4855	2018-05-01	\N	5	1469	\N	5001	14253	2018	Tobacco Duty
1181	2018-06-01	Tabaksteuer	5910	2018-06-01	\N	6	1055	\N	6271	14038	2018	Tobacco Duty
1182	2018-07-01	Tabaksteuer	7467	2018-07-01	\N	7	1557	\N	7478	14388	2018	Tobacco Duty
1183	2018-08-01	Tabaksteuer	8715	2018-08-01	\N	8	1248	\N	8801	14313	2018	Tobacco Duty
1184	2018-09-01	Tabaksteuer	9796	2018-09-01	\N	9	1081	\N	10138	14057	2018	Tobacco Duty
1185	2018-10-01	Tabaksteuer	11270	2018-10-01	\N	10	1474	\N	11148	14521	2018	Tobacco Duty
1186	2018-11-01	Tabaksteuer	12473	2018-11-01	\N	11	1203	\N	12525	14347	2018	Tobacco Duty
1187	2018-12-01	Tabaksteuer	14339	2018-12-01	\N	12	1866	\N	14399	14339	2018	Tobacco Duty
1188	2008-01-01	Solidaritätszuschlag	1020	2008-01-01	\N	1	1020	\N	0	\N	2008	Solidarity Surcharge
1189	2008-02-01	Solidaritätszuschlag	1758	2008-02-01	\N	2	738	\N	0	\N	2008	Solidarity Surcharge
1190	2008-03-01	Solidaritätszuschlag	3192	2008-03-01	\N	3	1434	\N	0	\N	2008	Solidarity Surcharge
1191	2008-04-01	Solidaritätszuschlag	4122	2008-04-01	\N	4	930	\N	0	\N	2008	Solidarity Surcharge
1192	2008-05-01	Solidaritätszuschlag	5098	2008-05-01	\N	5	976	\N	0	\N	2008	Solidarity Surcharge
1193	2008-06-01	Solidaritätszuschlag	6694	2008-06-01	\N	6	1596	\N	0	\N	2008	Solidarity Surcharge
1194	2008-07-01	Solidaritätszuschlag	7554	2008-07-01	\N	7	860	\N	0	\N	2008	Solidarity Surcharge
1195	2008-08-01	Solidaritätszuschlag	8311	2008-08-01	\N	8	757	\N	0	\N	2008	Solidarity Surcharge
1196	2008-09-01	Solidaritätszuschlag	9754	2008-09-01	\N	9	1443	\N	0	\N	2008	Solidarity Surcharge
1197	2008-10-01	Solidaritätszuschlag	10433	2008-10-01	\N	10	679	\N	0	\N	2008	Solidarity Surcharge
1198	2008-11-01	Solidaritätszuschlag	11112	2008-11-01	\N	11	679	\N	0	\N	2008	Solidarity Surcharge
1199	2008-12-01	Solidaritätszuschlag	13146	2008-12-01	\N	12	2034	\N	0	13146	2008	Solidarity Surcharge
1200	2009-01-01	Solidaritätszuschlag	1124	2009-01-01	\N	1	1124	\N	1020	13250	2009	Solidarity Surcharge
1201	2009-02-01	Solidaritätszuschlag	1809	2009-02-01	\N	2	685	\N	1758	13197	2009	Solidarity Surcharge
1202	2009-03-01	Solidaritätszuschlag	3191	2009-03-01	\N	3	1382	\N	3192	13145	2009	Solidarity Surcharge
1203	2009-04-01	Solidaritätszuschlag	4011	2009-04-01	\N	4	820	\N	4122	13035	2009	Solidarity Surcharge
1204	2009-05-01	Solidaritätszuschlag	4914	2009-05-01	\N	5	903	\N	5098	12962	2009	Solidarity Surcharge
1205	2009-06-01	Solidaritätszuschlag	6248	2009-06-01	\N	6	1334	\N	6694	12700	2009	Solidarity Surcharge
1206	2009-07-01	Solidaritätszuschlag	7035	2009-07-01	\N	7	787	\N	7554	12627	2009	Solidarity Surcharge
1207	2009-08-01	Solidaritätszuschlag	7643	2009-08-01	\N	8	608	\N	8311	12478	2009	Solidarity Surcharge
1208	2009-09-01	Solidaritätszuschlag	8886	2009-09-01	\N	9	1243	\N	9754	12278	2009	Solidarity Surcharge
1209	2009-10-01	Solidaritätszuschlag	9500	2009-10-01	\N	10	614	\N	10433	12213	2009	Solidarity Surcharge
1210	2009-11-01	Solidaritätszuschlag	10103	2009-11-01	\N	11	603	\N	11112	12137	2009	Solidarity Surcharge
1211	2009-12-01	Solidaritätszuschlag	11927	2009-12-01	\N	12	1824	\N	13146	11927	2009	Solidarity Surcharge
1212	2010-01-01	Solidaritätszuschlag	913	2010-01-01	\N	1	913	\N	1124	11716	2010	Solidarity Surcharge
1213	2010-02-01	Solidaritätszuschlag	1593	2010-02-01	\N	2	680	\N	1809	11711	2010	Solidarity Surcharge
1214	2010-03-01	Solidaritätszuschlag	2856	2010-03-01	\N	3	1263	\N	3191	11592	2010	Solidarity Surcharge
1215	2010-04-01	Solidaritätszuschlag	3692	2010-04-01	\N	4	836	\N	4011	11608	2010	Solidarity Surcharge
1216	2010-05-01	Solidaritätszuschlag	4562	2010-05-01	\N	5	870	\N	4914	11575	2010	Solidarity Surcharge
1217	2010-06-01	Solidaritätszuschlag	5955	2010-06-01	\N	6	1393	\N	6248	11634	2010	Solidarity Surcharge
1218	2010-07-01	Solidaritätszuschlag	6663	2010-07-01	\N	7	708	\N	7035	11555	2010	Solidarity Surcharge
1219	2010-08-01	Solidaritätszuschlag	7298	2010-08-01	\N	8	635	\N	7643	11582	2010	Solidarity Surcharge
1220	2010-09-01	Solidaritätszuschlag	8571	2010-09-01	\N	9	1273	\N	8886	11612	2010	Solidarity Surcharge
1221	2010-10-01	Solidaritätszuschlag	9169	2010-10-01	\N	10	598	\N	9500	11596	2010	Solidarity Surcharge
1222	2010-11-01	Solidaritätszuschlag	9760	2010-11-01	\N	11	591	\N	10103	11584	2010	Solidarity Surcharge
1223	2010-12-01	Solidaritätszuschlag	11713	2010-12-01	\N	12	1953	\N	11927	11713	2010	Solidarity Surcharge
1224	2011-01-01	Solidaritätszuschlag	938	2011-01-01	\N	1	938	\N	913	11738	2011	Solidarity Surcharge
1225	2011-02-01	Solidaritätszuschlag	1661	2011-02-01	\N	2	723	\N	1593	11781	2011	Solidarity Surcharge
1226	2011-03-01	Solidaritätszuschlag	3072	2011-03-01	\N	3	1411	\N	2856	11929	2011	Solidarity Surcharge
1227	2011-04-01	Solidaritätszuschlag	3864	2011-04-01	\N	4	792	\N	3692	11885	2011	Solidarity Surcharge
1228	2011-05-01	Solidaritätszuschlag	4930	2011-05-01	\N	5	1066	\N	4562	12081	2011	Solidarity Surcharge
1229	2011-06-01	Solidaritätszuschlag	6522	2011-06-01	\N	6	1592	\N	5955	12280	2011	Solidarity Surcharge
1230	2011-07-01	Solidaritätszuschlag	7329	2011-07-01	\N	7	807	\N	6663	12379	2011	Solidarity Surcharge
1231	2011-08-01	Solidaritätszuschlag	8014	2011-08-01	\N	8	685	\N	7298	12429	2011	Solidarity Surcharge
1232	2011-09-01	Solidaritätszuschlag	9401	2011-09-01	\N	9	1387	\N	8571	12543	2011	Solidarity Surcharge
1233	2011-10-01	Solidaritätszuschlag	10070	2011-10-01	\N	10	669	\N	9169	12614	2011	Solidarity Surcharge
1234	2011-11-01	Solidaritätszuschlag	10734	2011-11-01	\N	11	664	\N	9760	12687	2011	Solidarity Surcharge
1235	2011-12-01	Solidaritätszuschlag	12781	2011-12-01	\N	12	2047	\N	11713	12781	2011	Solidarity Surcharge
1236	2012-01-01	Solidaritätszuschlag	1017	2012-01-01	\N	1	1017	\N	938	12860	2012	Solidarity Surcharge
1237	2012-02-01	Solidaritätszuschlag	1774	2012-02-01	\N	2	757	\N	1661	12894	2012	Solidarity Surcharge
1238	2012-03-01	Solidaritätszuschlag	3308	2012-03-01	\N	3	1534	\N	3072	13017	2012	Solidarity Surcharge
1239	2012-04-01	Solidaritätszuschlag	4153	2012-04-01	\N	4	845	\N	3864	13070	2012	Solidarity Surcharge
1240	2012-05-01	Solidaritätszuschlag	5183	2012-05-01	\N	5	1030	\N	4930	13034	2012	Solidarity Surcharge
1241	2012-06-01	Solidaritätszuschlag	6952	2012-06-01	\N	6	1769	\N	6522	13211	2012	Solidarity Surcharge
1242	2012-07-01	Solidaritätszuschlag	7840	2012-07-01	\N	7	888	\N	7329	13292	2012	Solidarity Surcharge
1243	2012-08-01	Solidaritätszuschlag	8696	2012-08-01	\N	8	856	\N	8014	13463	2012	Solidarity Surcharge
1244	2012-09-01	Solidaritätszuschlag	10135	2012-09-01	\N	9	1439	\N	9401	13515	2012	Solidarity Surcharge
1245	2012-10-01	Solidaritätszuschlag	10851	2012-10-01	\N	10	716	\N	10070	13562	2012	Solidarity Surcharge
1246	2012-11-01	Solidaritätszuschlag	11512	2012-11-01	\N	11	661	\N	10734	13559	2012	Solidarity Surcharge
1247	2012-12-01	Solidaritätszuschlag	13624	2012-12-01	\N	12	2112	\N	12781	13624	2012	Solidarity Surcharge
1248	2013-01-01	Solidaritätszuschlag	1045	2013-01-01	\N	1	1045	\N	1017	13652	2013	Solidarity Surcharge
1249	2013-02-01	Solidaritätszuschlag	1848	2013-02-01	\N	2	803	\N	1774	13698	2013	Solidarity Surcharge
1250	2013-03-01	Solidaritätszuschlag	3473	2013-03-01	\N	3	1625	\N	3308	13789	2013	Solidarity Surcharge
1251	2013-04-01	Solidaritätszuschlag	4386	2013-04-01	\N	4	913	\N	4153	13857	2013	Solidarity Surcharge
1252	2013-05-01	Solidaritätszuschlag	5438	2013-05-01	\N	5	1052	\N	5183	13879	2013	Solidarity Surcharge
1253	2013-06-01	Solidaritätszuschlag	7316	2013-06-01	\N	6	1878	\N	6952	13988	2013	Solidarity Surcharge
1254	2013-07-01	Solidaritätszuschlag	8234	2013-07-01	\N	7	918	\N	7840	14018	2013	Solidarity Surcharge
1255	2013-08-01	Solidaritätszuschlag	9019	2013-08-01	\N	8	785	\N	8696	13947	2013	Solidarity Surcharge
1256	2013-09-01	Solidaritätszuschlag	10630	2013-09-01	\N	9	1611	\N	10135	14119	2013	Solidarity Surcharge
1257	2013-10-01	Solidaritätszuschlag	11386	2013-10-01	\N	10	756	\N	10851	14159	2013	Solidarity Surcharge
1258	2013-11-01	Solidaritätszuschlag	12134	2013-11-01	\N	11	748	\N	11512	14246	2013	Solidarity Surcharge
1259	2013-12-01	Solidaritätszuschlag	14378	2013-12-01	\N	12	2244	\N	13624	14378	2013	Solidarity Surcharge
1260	2014-01-01	Solidaritätszuschlag	1064	2014-01-01	\N	1	1064	\N	1045	14397	2014	Solidarity Surcharge
1261	2014-02-01	Solidaritätszuschlag	1910	2014-02-01	\N	2	846	\N	1848	14440	2014	Solidarity Surcharge
1262	2014-03-01	Solidaritätszuschlag	3577	2014-03-01	\N	3	1667	\N	3473	14482	2014	Solidarity Surcharge
1263	2014-04-01	Solidaritätszuschlag	4486	2014-04-01	\N	4	909	\N	4386	14478	2014	Solidarity Surcharge
1264	2014-05-01	Solidaritätszuschlag	5523	2014-05-01	\N	5	1037	\N	5438	14463	2014	Solidarity Surcharge
1265	2014-06-01	Solidaritätszuschlag	7532	2014-06-01	\N	6	2009	\N	7316	14594	2014	Solidarity Surcharge
1266	2014-07-01	Solidaritätszuschlag	8485	2014-07-01	\N	7	953	\N	8234	14629	2014	Solidarity Surcharge
1267	2014-08-01	Solidaritätszuschlag	9340	2014-08-01	\N	8	855	\N	9019	14699	2014	Solidarity Surcharge
1268	2014-09-01	Solidaritätszuschlag	11030	2014-09-01	\N	9	1690	\N	10630	14778	2014	Solidarity Surcharge
1269	2014-10-01	Solidaritätszuschlag	11857	2014-10-01	\N	10	827	\N	11386	14849	2014	Solidarity Surcharge
1270	2014-11-01	Solidaritätszuschlag	12644	2014-11-01	\N	11	787	\N	12134	14888	2014	Solidarity Surcharge
1271	2014-12-01	Solidaritätszuschlag	15047	2014-12-01	\N	12	2403	\N	14378	15047	2014	Solidarity Surcharge
1272	2015-01-01	Solidaritätszuschlag	1079	2015-01-01	\N	1	1079	\N	1064	15062	2015	Solidarity Surcharge
1273	2015-02-01	Solidaritätszuschlag	1980	2015-02-01	\N	2	901	\N	1910	15117	2015	Solidarity Surcharge
1274	2015-03-01	Solidaritätszuschlag	3783	2015-03-01	\N	3	1803	\N	3577	15253	2015	Solidarity Surcharge
1275	2015-04-01	Solidaritätszuschlag	4747	2015-04-01	\N	4	964	\N	4486	15308	2015	Solidarity Surcharge
1276	2015-05-01	Solidaritätszuschlag	5886	2015-05-01	\N	5	1139	\N	5523	15410	2015	Solidarity Surcharge
1277	2015-06-01	Solidaritätszuschlag	8061	2015-06-01	\N	6	2175	\N	7532	15576	2015	Solidarity Surcharge
1278	2015-07-01	Solidaritätszuschlag	9088	2015-07-01	\N	7	1027	\N	8485	15650	2015	Solidarity Surcharge
1279	2015-08-01	Solidaritätszuschlag	9962	2015-08-01	\N	8	874	\N	9340	15669	2015	Solidarity Surcharge
1280	2015-09-01	Solidaritätszuschlag	11775	2015-09-01	\N	9	1813	\N	11030	15792	2015	Solidarity Surcharge
1281	2015-10-01	Solidaritätszuschlag	12626	2015-10-01	\N	10	851	\N	11857	15816	2015	Solidarity Surcharge
1282	2015-11-01	Solidaritätszuschlag	13427	2015-11-01	\N	11	801	\N	12644	15830	2015	Solidarity Surcharge
1283	2015-12-01	Solidaritätszuschlag	15930	2015-12-01	\N	12	2503	\N	15047	15930	2015	Solidarity Surcharge
1284	2016-01-01	Solidaritätszuschlag	1105	2016-01-01	\N	1	1105	\N	1079	15956	2016	Solidarity Surcharge
1285	2016-02-01	Solidaritätszuschlag	2038	2016-02-01	\N	2	933	\N	1980	15988	2016	Solidarity Surcharge
1286	2016-03-01	Solidaritätszuschlag	3979	2016-03-01	\N	3	1941	\N	3783	16126	2016	Solidarity Surcharge
1287	2016-04-01	Solidaritätszuschlag	5014	2016-04-01	\N	4	1035	\N	4747	16197	2016	Solidarity Surcharge
1288	2016-05-01	Solidaritätszuschlag	6244	2016-05-01	\N	5	1230	\N	5886	16288	2016	Solidarity Surcharge
1289	2016-06-01	Solidaritätszuschlag	8449	2016-06-01	\N	6	2205	\N	8061	16318	2016	Solidarity Surcharge
1290	2016-07-01	Solidaritätszuschlag	9530	2016-07-01	\N	7	1081	\N	9088	16372	2016	Solidarity Surcharge
1291	2016-08-01	Solidaritätszuschlag	10438	2016-08-01	\N	8	908	\N	9962	16406	2016	Solidarity Surcharge
1292	2016-09-01	Solidaritätszuschlag	12387	2016-09-01	\N	9	1949	\N	11775	16542	2016	Solidarity Surcharge
1293	2016-10-01	Solidaritätszuschlag	13289	2016-10-01	\N	10	902	\N	12626	16593	2016	Solidarity Surcharge
1294	2016-11-01	Solidaritätszuschlag	14119	2016-11-01	\N	11	830	\N	13427	16622	2016	Solidarity Surcharge
1295	2016-12-01	Solidaritätszuschlag	16855	2016-12-01	\N	12	2736	\N	15930	16855	2016	Solidarity Surcharge
1296	2017-01-01	Solidaritätszuschlag	1129	2017-01-01	\N	1	1129	\N	1105	16879	2017	Solidarity Surcharge
1297	2017-02-01	Solidaritätszuschlag	2162	2017-02-01	\N	2	1033	\N	2038	16979	2017	Solidarity Surcharge
1298	2017-03-01	Solidaritätszuschlag	4324	2017-03-01	\N	3	2162	\N	3979	17200	2017	Solidarity Surcharge
1299	2017-04-01	Solidaritätszuschlag	5461	2017-04-01	\N	4	1137	\N	5014	17302	2017	Solidarity Surcharge
1300	2017-05-01	Solidaritätszuschlag	6687	2017-05-01	\N	5	1226	\N	6244	17298	2017	Solidarity Surcharge
1301	2017-06-01	Solidaritätszuschlag	9133	2017-06-01	\N	6	2446	\N	8449	17539	2017	Solidarity Surcharge
1302	2017-07-01	Solidaritätszuschlag	10266	2017-07-01	\N	7	1133	\N	9530	17591	2017	Solidarity Surcharge
1303	2017-08-01	Solidaritätszuschlag	11237	2017-08-01	\N	8	971	\N	10438	17654	2017	Solidarity Surcharge
1304	2017-09-01	Solidaritätszuschlag	13276	2017-09-01	\N	9	2039	\N	12387	17744	2017	Solidarity Surcharge
1305	2017-10-01	Solidaritätszuschlag	14194	2017-10-01	\N	10	918	\N	13289	17760	2017	Solidarity Surcharge
1306	2017-11-01	Solidaritätszuschlag	15102	2017-11-01	\N	11	908	\N	14119	17838	2017	Solidarity Surcharge
1307	2017-12-01	Solidaritätszuschlag	17953	2017-12-01	\N	12	2851	\N	16855	17953	2017	Solidarity Surcharge
1308	2018-01-01	Solidaritätszuschlag	1222	2018-01-01	\N	1	1222	\N	1129	18046	2018	Solidarity Surcharge
1309	2018-02-01	Solidaritätszuschlag	2360	2018-02-01	\N	2	1138	\N	2162	18151	2018	Solidarity Surcharge
1310	2018-03-01	Solidaritätszuschlag	4587	2018-03-01	\N	3	2227	\N	4324	18216	2018	Solidarity Surcharge
1311	2018-04-01	Solidaritätszuschlag	5785	2018-04-01	\N	4	1198	\N	5461	18277	2018	Solidarity Surcharge
1312	2018-05-01	Solidaritätszuschlag	7139	2018-05-01	\N	5	1354	\N	6687	18405	2018	Solidarity Surcharge
1313	2018-06-01	Solidaritätszuschlag	9714	2018-06-01	\N	6	2575	\N	9133	18534	2018	Solidarity Surcharge
1314	2018-07-01	Solidaritätszuschlag	10885	2018-07-01	\N	7	1171	\N	10266	18572	2018	Solidarity Surcharge
1315	2018-08-01	Solidaritätszuschlag	11923	2018-08-01	\N	8	1038	\N	11237	18639	2018	Solidarity Surcharge
1316	2018-09-01	Solidaritätszuschlag	14067	2018-09-01	\N	9	2144	\N	13276	18744	2018	Solidarity Surcharge
1317	2018-10-01	Solidaritätszuschlag	15066	2018-10-01	\N	10	999	\N	14194	18825	2018	Solidarity Surcharge
1584	2008-07-01	Kraftfahrzeugsteuer	0	2008-07-01	\N	7	\N	\N	0	\N	2008	Motor Vehicle Tax
1318	2018-11-01	Solidaritätszuschlag	16044	2018-11-01	\N	11	978	\N	15102	18895	2018	Solidarity Surcharge
1319	2018-12-01	Solidaritätszuschlag	18927	2018-12-01	\N	12	2883	\N	17953	18927	2018	Solidarity Surcharge
1320	2008-01-01	Versicherungsteuer	545	2008-01-01	\N	1	545	\N	0	\N	2008	Insurance Tax
1321	2008-02-01	Versicherungsteuer	3861	2008-02-01	\N	2	3316	\N	0	\N	2008	Insurance Tax
1322	2008-03-01	Versicherungsteuer	4540	2008-03-01	\N	3	679	\N	0	\N	2008	Insurance Tax
1323	2008-04-01	Versicherungsteuer	5147	2008-04-01	\N	4	607	\N	0	\N	2008	Insurance Tax
1324	2008-05-01	Versicherungsteuer	5895	2008-05-01	\N	5	748	\N	0	\N	2008	Insurance Tax
1325	2008-06-01	Versicherungsteuer	6490	2008-06-01	\N	6	595	\N	0	\N	2008	Insurance Tax
1326	2008-07-01	Versicherungsteuer	7043	2008-07-01	\N	7	553	\N	0	\N	2008	Insurance Tax
1327	2008-08-01	Versicherungsteuer	8072	2008-08-01	\N	8	1029	\N	0	\N	2008	Insurance Tax
1328	2008-09-01	Versicherungsteuer	8568	2008-09-01	\N	9	496	\N	0	\N	2008	Insurance Tax
1329	2008-10-01	Versicherungsteuer	9049	2008-10-01	\N	10	481	\N	0	\N	2008	Insurance Tax
1330	2008-11-01	Versicherungsteuer	9724	2008-11-01	\N	11	675	\N	0	\N	2008	Insurance Tax
1331	2008-12-01	Versicherungsteuer	10478	2008-12-01	\N	12	754	\N	0	10478	2008	Insurance Tax
1332	2009-01-01	Versicherungsteuer	543	2009-01-01	\N	1	543	\N	545	10476	2009	Insurance Tax
1333	2009-02-01	Versicherungsteuer	3858	2009-02-01	\N	2	3315	\N	3861	10475	2009	Insurance Tax
1334	2009-03-01	Versicherungsteuer	4502	2009-03-01	\N	3	644	\N	4540	10440	2009	Insurance Tax
1335	2009-04-01	Versicherungsteuer	5129	2009-04-01	\N	4	627	\N	5147	10460	2009	Insurance Tax
1336	2009-05-01	Versicherungsteuer	5907	2009-05-01	\N	5	778	\N	5895	10490	2009	Insurance Tax
1337	2009-06-01	Versicherungsteuer	6501	2009-06-01	\N	6	594	\N	6490	10489	2009	Insurance Tax
1338	2009-07-01	Versicherungsteuer	7070	2009-07-01	\N	7	569	\N	7043	10505	2009	Insurance Tax
1339	2009-08-01	Versicherungsteuer	8087	2009-08-01	\N	8	1017	\N	8072	10493	2009	Insurance Tax
1340	2009-09-01	Versicherungsteuer	8597	2009-09-01	\N	9	510	\N	8568	10507	2009	Insurance Tax
1341	2009-10-01	Versicherungsteuer	9087	2009-10-01	\N	10	490	\N	9049	10516	2009	Insurance Tax
1342	2009-11-01	Versicherungsteuer	9765	2009-11-01	\N	11	678	\N	9724	10519	2009	Insurance Tax
1343	2009-12-01	Versicherungsteuer	10548	2009-12-01	\N	12	783	\N	10478	10548	2009	Insurance Tax
1344	2010-01-01	Versicherungsteuer	550	2010-01-01	\N	1	550	\N	543	10555	2010	Insurance Tax
1345	2010-02-01	Versicherungsteuer	3752	2010-02-01	\N	2	3202	\N	3858	10442	2010	Insurance Tax
1346	2010-03-01	Versicherungsteuer	4496	2010-03-01	\N	3	744	\N	4502	10542	2010	Insurance Tax
1347	2010-04-01	Versicherungsteuer	5185	2010-04-01	\N	4	689	\N	5129	10604	2010	Insurance Tax
1348	2010-05-01	Versicherungsteuer	5950	2010-05-01	\N	5	765	\N	5907	10591	2010	Insurance Tax
1349	2010-06-01	Versicherungsteuer	6556	2010-06-01	\N	6	606	\N	6501	10603	2010	Insurance Tax
1350	2010-07-01	Versicherungsteuer	7119	2010-07-01	\N	7	563	\N	7070	10597	2010	Insurance Tax
1351	2010-08-01	Versicherungsteuer	8126	2010-08-01	\N	8	1007	\N	8087	10587	2010	Insurance Tax
1352	2010-09-01	Versicherungsteuer	8665	2010-09-01	\N	9	539	\N	8597	10616	2010	Insurance Tax
1353	2010-10-01	Versicherungsteuer	9157	2010-10-01	\N	10	492	\N	9087	10618	2010	Insurance Tax
1354	2010-11-01	Versicherungsteuer	9827	2010-11-01	\N	11	670	\N	9765	10610	2010	Insurance Tax
1355	2010-12-01	Versicherungsteuer	10284	2010-12-01	\N	12	457	\N	10548	10284	2010	Insurance Tax
1356	2011-01-01	Versicherungsteuer	527	2011-01-01	\N	1	527	\N	550	10261	2011	Insurance Tax
1357	2011-02-01	Versicherungsteuer	4283	2011-02-01	\N	2	3756	\N	3752	10815	2011	Insurance Tax
1358	2011-03-01	Versicherungsteuer	4869	2011-03-01	\N	3	586	\N	4496	10657	2011	Insurance Tax
1359	2011-04-01	Versicherungsteuer	5553	2011-04-01	\N	4	684	\N	5185	10652	2011	Insurance Tax
1360	2011-05-01	Versicherungsteuer	6344	2011-05-01	\N	5	791	\N	5950	10678	2011	Insurance Tax
1361	2011-06-01	Versicherungsteuer	6886	2011-06-01	\N	6	542	\N	6556	10614	2011	Insurance Tax
1362	2011-07-01	Versicherungsteuer	7437	2011-07-01	\N	7	551	\N	7119	10602	2011	Insurance Tax
1363	2011-08-01	Versicherungsteuer	8524	2011-08-01	\N	8	1087	\N	8126	10682	2011	Insurance Tax
1364	2011-09-01	Versicherungsteuer	9032	2011-09-01	\N	9	508	\N	8665	10651	2011	Insurance Tax
1365	2011-10-01	Versicherungsteuer	9549	2011-10-01	\N	10	517	\N	9157	10676	2011	Insurance Tax
1366	2011-11-01	Versicherungsteuer	10264	2011-11-01	\N	11	715	\N	9827	10721	2011	Insurance Tax
1367	2011-12-01	Versicherungsteuer	10755	2011-12-01	\N	12	491	\N	10284	10755	2011	Insurance Tax
1368	2012-01-01	Versicherungsteuer	540	2012-01-01	\N	1	540	\N	527	10768	2012	Insurance Tax
1369	2012-02-01	Versicherungsteuer	4557	2012-02-01	\N	2	4017	\N	4283	11029	2012	Insurance Tax
1370	2012-03-01	Versicherungsteuer	5180	2012-03-01	\N	3	623	\N	4869	11066	2012	Insurance Tax
1371	2012-04-01	Versicherungsteuer	5844	2012-04-01	\N	4	664	\N	5553	11046	2012	Insurance Tax
1372	2012-05-01	Versicherungsteuer	6643	2012-05-01	\N	5	799	\N	6344	11054	2012	Insurance Tax
1373	2012-06-01	Versicherungsteuer	7192	2012-06-01	\N	6	549	\N	6886	11061	2012	Insurance Tax
1374	2012-07-01	Versicherungsteuer	7756	2012-07-01	\N	7	564	\N	7437	11074	2012	Insurance Tax
1375	2012-08-01	Versicherungsteuer	8894	2012-08-01	\N	8	1138	\N	8524	11125	2012	Insurance Tax
1376	2012-09-01	Versicherungsteuer	9353	2012-09-01	\N	9	459	\N	9032	11076	2012	Insurance Tax
1377	2012-10-01	Versicherungsteuer	9875	2012-10-01	\N	10	522	\N	9549	11081	2012	Insurance Tax
1378	2012-11-01	Versicherungsteuer	10639	2012-11-01	\N	11	764	\N	10264	11130	2012	Insurance Tax
1379	2012-12-01	Versicherungsteuer	11138	2012-12-01	\N	12	499	\N	10755	11138	2012	Insurance Tax
1380	2013-01-01	Versicherungsteuer	566	2013-01-01	\N	1	566	\N	540	11164	2013	Insurance Tax
1381	2013-02-01	Versicherungsteuer	4793	2013-02-01	\N	2	4227	\N	4557	11374	2013	Insurance Tax
1382	2013-03-01	Versicherungsteuer	5429	2013-03-01	\N	3	636	\N	5180	11387	2013	Insurance Tax
1383	2013-04-01	Versicherungsteuer	6096	2013-04-01	\N	4	667	\N	5844	11390	2013	Insurance Tax
1384	2013-05-01	Versicherungsteuer	6925	2013-05-01	\N	5	829	\N	6643	11420	2013	Insurance Tax
1385	2013-06-01	Versicherungsteuer	7479	2013-06-01	\N	6	554	\N	7192	11425	2013	Insurance Tax
1386	2013-07-01	Versicherungsteuer	8048	2013-07-01	\N	7	569	\N	7756	11430	2013	Insurance Tax
1387	2013-08-01	Versicherungsteuer	9214	2013-08-01	\N	8	1166	\N	8894	11458	2013	Insurance Tax
1388	2013-09-01	Versicherungsteuer	9735	2013-09-01	\N	9	521	\N	9353	11520	2013	Insurance Tax
1389	2013-10-01	Versicherungsteuer	10253	2013-10-01	\N	10	518	\N	9875	11516	2013	Insurance Tax
1390	2013-11-01	Versicherungsteuer	11040	2013-11-01	\N	11	787	\N	10639	11539	2013	Insurance Tax
1391	2013-12-01	Versicherungsteuer	11553	2013-12-01	\N	12	513	\N	11138	11553	2013	Insurance Tax
1392	2014-01-01	Versicherungsteuer	601	2014-01-01	\N	1	601	\N	566	11588	2014	Insurance Tax
1393	2014-02-01	Versicherungsteuer	4485	2014-02-01	\N	2	3884	\N	4793	11245	2014	Insurance Tax
1394	2014-03-01	Versicherungsteuer	5642	2014-03-01	\N	3	1157	\N	5429	11766	2014	Insurance Tax
1395	2014-04-01	Versicherungsteuer	6312	2014-04-01	\N	4	670	\N	6096	11769	2014	Insurance Tax
1396	2014-05-01	Versicherungsteuer	7159	2014-05-01	\N	5	847	\N	6925	11787	2014	Insurance Tax
1397	2014-06-01	Versicherungsteuer	7738	2014-06-01	\N	6	579	\N	7479	11812	2014	Insurance Tax
1398	2014-07-01	Versicherungsteuer	8357	2014-07-01	\N	7	619	\N	8048	11862	2014	Insurance Tax
1399	2014-08-01	Versicherungsteuer	9601	2014-08-01	\N	8	1244	\N	9214	11940	2014	Insurance Tax
1400	2014-09-01	Versicherungsteuer	10161	2014-09-01	\N	9	560	\N	9735	11979	2014	Insurance Tax
1401	2014-10-01	Versicherungsteuer	10695	2014-10-01	\N	10	534	\N	10253	11995	2014	Insurance Tax
1402	2014-11-01	Versicherungsteuer	11522	2014-11-01	\N	11	827	\N	11040	12035	2014	Insurance Tax
1403	2014-12-01	Versicherungsteuer	12046	2014-12-01	\N	12	524	\N	11553	12046	2014	Insurance Tax
1404	2015-01-01	Versicherungsteuer	1218	2015-01-01	\N	1	1218	\N	601	12663	2015	Insurance Tax
1405	2015-02-01	Versicherungsteuer	5105	2015-02-01	\N	2	3887	\N	4485	12666	2015	Insurance Tax
1406	2015-03-01	Versicherungsteuer	5825	2015-03-01	\N	3	720	\N	5642	12229	2015	Insurance Tax
1407	2015-04-01	Versicherungsteuer	6514	2015-04-01	\N	4	689	\N	6312	12248	2015	Insurance Tax
1408	2015-05-01	Versicherungsteuer	7357	2015-05-01	\N	5	843	\N	7159	12244	2015	Insurance Tax
1409	2015-06-01	Versicherungsteuer	8012	2015-06-01	\N	6	655	\N	7738	12320	2015	Insurance Tax
1410	2015-07-01	Versicherungsteuer	8639	2015-07-01	\N	7	627	\N	8357	12328	2015	Insurance Tax
1411	2015-08-01	Versicherungsteuer	9896	2015-08-01	\N	8	1257	\N	9601	12341	2015	Insurance Tax
1412	2015-09-01	Versicherungsteuer	10448	2015-09-01	\N	9	552	\N	10161	12333	2015	Insurance Tax
1413	2015-10-01	Versicherungsteuer	11009	2015-10-01	\N	10	561	\N	10695	12360	2015	Insurance Tax
1414	2015-11-01	Versicherungsteuer	11857	2015-11-01	\N	11	848	\N	11522	12381	2015	Insurance Tax
1415	2015-12-01	Versicherungsteuer	12419	2015-12-01	\N	12	562	\N	12046	12419	2015	Insurance Tax
1416	2016-01-01	Versicherungsteuer	1213	2016-01-01	\N	1	1213	\N	1218	12414	2016	Insurance Tax
1417	2016-02-01	Versicherungsteuer	5164	2016-02-01	\N	2	3951	\N	5105	12478	2016	Insurance Tax
1418	2016-03-01	Versicherungsteuer	5946	2016-03-01	\N	3	782	\N	5825	12540	2016	Insurance Tax
1419	2016-04-01	Versicherungsteuer	6665	2016-04-01	\N	4	719	\N	6514	12570	2016	Insurance Tax
1420	2016-05-01	Versicherungsteuer	7592	2016-05-01	\N	5	927	\N	7357	12654	2016	Insurance Tax
1421	2016-06-01	Versicherungsteuer	8215	2016-06-01	\N	6	623	\N	8012	12622	2016	Insurance Tax
1422	2016-07-01	Versicherungsteuer	8869	2016-07-01	\N	7	654	\N	8639	12649	2016	Insurance Tax
1423	2016-08-01	Versicherungsteuer	10133	2016-08-01	\N	8	1264	\N	9896	12656	2016	Insurance Tax
1424	2016-09-01	Versicherungsteuer	10725	2016-09-01	\N	9	592	\N	10448	12696	2016	Insurance Tax
1425	2016-10-01	Versicherungsteuer	11303	2016-10-01	\N	10	578	\N	11009	12713	2016	Insurance Tax
1426	2016-11-01	Versicherungsteuer	12154	2016-11-01	\N	11	851	\N	11857	12716	2016	Insurance Tax
1427	2016-12-01	Versicherungsteuer	12763	2016-12-01	\N	12	609	\N	12419	12763	2016	Insurance Tax
1428	2017-01-01	Versicherungsteuer	1361	2017-01-01	\N	1	1361	\N	1213	12911	2017	Insurance Tax
1429	2017-02-01	Versicherungsteuer	5455	2017-02-01	\N	2	4094	\N	5164	13054	2017	Insurance Tax
1430	2017-03-01	Versicherungsteuer	6178	2017-03-01	\N	3	723	\N	5946	12995	2017	Insurance Tax
1431	2017-04-01	Versicherungsteuer	6928	2017-04-01	\N	4	750	\N	6665	13026	2017	Insurance Tax
1432	2017-05-01	Versicherungsteuer	7873	2017-05-01	\N	5	945	\N	7592	13044	2017	Insurance Tax
1433	2017-06-01	Versicherungsteuer	8530	2017-06-01	\N	6	657	\N	8215	13078	2017	Insurance Tax
1434	2017-07-01	Versicherungsteuer	9196	2017-07-01	\N	7	666	\N	8869	13090	2017	Insurance Tax
1435	2017-08-01	Versicherungsteuer	10496	2017-08-01	\N	8	1300	\N	10133	13126	2017	Insurance Tax
1436	2017-09-01	Versicherungsteuer	11199	2017-09-01	\N	9	703	\N	10725	13237	2017	Insurance Tax
1437	2017-10-01	Versicherungsteuer	11793	2017-10-01	\N	10	594	\N	11303	13253	2017	Insurance Tax
1438	2017-11-01	Versicherungsteuer	12611	2017-11-01	\N	11	818	\N	12154	13220	2017	Insurance Tax
1439	2017-12-01	Versicherungsteuer	13269	2017-12-01	\N	12	658	\N	12763	13269	2017	Insurance Tax
1440	2018-01-01	Versicherungsteuer	834	2018-01-01	\N	1	834	\N	1361	12742	2018	Insurance Tax
1441	2018-02-01	Versicherungsteuer	5653	2018-02-01	\N	2	4819	\N	5455	13467	2018	Insurance Tax
1442	2018-03-01	Versicherungsteuer	6388	2018-03-01	\N	3	735	\N	6178	13479	2018	Insurance Tax
1443	2018-04-01	Versicherungsteuer	7176	2018-04-01	\N	4	788	\N	6928	13517	2018	Insurance Tax
1444	2018-05-01	Versicherungsteuer	8156	2018-05-01	\N	5	980	\N	7873	13552	2018	Insurance Tax
1445	2018-06-01	Versicherungsteuer	8830	2018-06-01	\N	6	674	\N	8530	13569	2018	Insurance Tax
1446	2018-07-01	Versicherungsteuer	9606	2018-07-01	\N	7	776	\N	9196	13679	2018	Insurance Tax
1447	2018-08-01	Versicherungsteuer	10942	2018-08-01	\N	8	1336	\N	10496	13715	2018	Insurance Tax
1448	2018-09-01	Versicherungsteuer	11582	2018-09-01	\N	9	640	\N	11199	13652	2018	Insurance Tax
1449	2018-10-01	Versicherungsteuer	12213	2018-10-01	\N	10	631	\N	11793	13689	2018	Insurance Tax
1450	2018-11-01	Versicherungsteuer	13128	2018-11-01	\N	11	915	\N	12611	13786	2018	Insurance Tax
1451	2018-12-01	Versicherungsteuer	13779	2018-12-01	\N	12	651	\N	13269	13779	2018	Insurance Tax
1452	2008-01-01	Stromsteuer	543	2008-01-01	\N	1	543	\N	0	\N	2008	Electricity Duty
1453	2008-02-01	Stromsteuer	1028	2008-02-01	\N	2	485	\N	0	\N	2008	Electricity Duty
1454	2008-03-01	Stromsteuer	1547	2008-03-01	\N	3	519	\N	0	\N	2008	Electricity Duty
1455	2008-04-01	Stromsteuer	2014	2008-04-01	\N	4	467	\N	0	\N	2008	Electricity Duty
1456	2008-05-01	Stromsteuer	2509	2008-05-01	\N	5	495	\N	0	\N	2008	Electricity Duty
1457	2008-06-01	Stromsteuer	3141	2008-06-01	\N	6	632	\N	0	\N	2008	Electricity Duty
1458	2008-07-01	Stromsteuer	3602	2008-07-01	\N	7	461	\N	0	\N	2008	Electricity Duty
1459	2008-08-01	Stromsteuer	4118	2008-08-01	\N	8	516	\N	0	\N	2008	Electricity Duty
1460	2008-09-01	Stromsteuer	4605	2008-09-01	\N	9	487	\N	0	\N	2008	Electricity Duty
1461	2008-10-01	Stromsteuer	5130	2008-10-01	\N	10	525	\N	0	\N	2008	Electricity Duty
1462	2008-11-01	Stromsteuer	5709	2008-11-01	\N	11	579	\N	0	\N	2008	Electricity Duty
1463	2008-12-01	Stromsteuer	6261	2008-12-01	\N	12	552	\N	0	6261	2008	Electricity Duty
1464	2009-01-01	Stromsteuer	544	2009-01-01	\N	1	544	\N	543	6262	2009	Electricity Duty
1465	2009-02-01	Stromsteuer	1022	2009-02-01	\N	2	478	\N	1028	6255	2009	Electricity Duty
1466	2009-03-01	Stromsteuer	1560	2009-03-01	\N	3	538	\N	1547	6274	2009	Electricity Duty
1467	2009-04-01	Stromsteuer	2068	2009-04-01	\N	4	508	\N	2014	6315	2009	Electricity Duty
1468	2009-05-01	Stromsteuer	2519	2009-05-01	\N	5	451	\N	2509	6271	2009	Electricity Duty
1469	2009-06-01	Stromsteuer	3129	2009-06-01	\N	6	610	\N	3141	6249	2009	Electricity Duty
1470	2009-07-01	Stromsteuer	3648	2009-07-01	\N	7	519	\N	3602	6307	2009	Electricity Duty
1471	2009-08-01	Stromsteuer	4175	2009-08-01	\N	8	527	\N	4118	6318	2009	Electricity Duty
1472	2009-09-01	Stromsteuer	4711	2009-09-01	\N	9	536	\N	4605	6367	2009	Electricity Duty
1473	2009-10-01	Stromsteuer	5225	2009-10-01	\N	10	514	\N	5130	6356	2009	Electricity Duty
1474	2009-11-01	Stromsteuer	5758	2009-11-01	\N	11	533	\N	5709	6310	2009	Electricity Duty
1475	2009-12-01	Stromsteuer	6278	2009-12-01	\N	12	520	\N	6261	6278	2009	Electricity Duty
1476	2010-01-01	Stromsteuer	517	2010-01-01	\N	1	517	\N	544	6251	2010	Electricity Duty
1477	2010-02-01	Stromsteuer	858	2010-02-01	\N	2	341	\N	1022	6114	2010	Electricity Duty
1478	2010-03-01	Stromsteuer	1498	2010-03-01	\N	3	640	\N	1560	6216	2010	Electricity Duty
1479	2010-04-01	Stromsteuer	2007	2010-04-01	\N	4	509	\N	2068	6217	2010	Electricity Duty
1480	2010-05-01	Stromsteuer	2481	2010-05-01	\N	5	474	\N	2519	6240	2010	Electricity Duty
1481	2010-06-01	Stromsteuer	3068	2010-06-01	\N	6	587	\N	3129	6217	2010	Electricity Duty
1482	2010-07-01	Stromsteuer	3567	2010-07-01	\N	7	499	\N	3648	6197	2010	Electricity Duty
1483	2010-08-01	Stromsteuer	4074	2010-08-01	\N	8	507	\N	4175	6177	2010	Electricity Duty
1484	2010-09-01	Stromsteuer	4631	2010-09-01	\N	9	557	\N	4711	6198	2010	Electricity Duty
1485	2010-10-01	Stromsteuer	5159	2010-10-01	\N	10	528	\N	5225	6212	2010	Electricity Duty
1486	2010-11-01	Stromsteuer	5631	2010-11-01	\N	11	472	\N	5758	6151	2010	Electricity Duty
1487	2010-12-01	Stromsteuer	6171	2010-12-01	\N	12	540	\N	6278	6171	2010	Electricity Duty
1488	2011-01-01	Stromsteuer	513	2011-01-01	\N	1	513	\N	517	6167	2011	Electricity Duty
1489	2011-02-01	Stromsteuer	953	2011-02-01	\N	2	440	\N	858	6266	2011	Electricity Duty
1490	2011-03-01	Stromsteuer	1785	2011-03-01	\N	3	832	\N	1498	6458	2011	Electricity Duty
1491	2011-04-01	Stromsteuer	2437	2011-04-01	\N	4	652	\N	2007	6601	2011	Electricity Duty
1492	2011-05-01	Stromsteuer	3000	2011-05-01	\N	5	563	\N	2481	6690	2011	Electricity Duty
1493	2011-06-01	Stromsteuer	3744	2011-06-01	\N	6	744	\N	3068	6847	2011	Electricity Duty
1494	2011-07-01	Stromsteuer	4351	2011-07-01	\N	7	607	\N	3567	6955	2011	Electricity Duty
1495	2011-08-01	Stromsteuer	4932	2011-08-01	\N	8	581	\N	4074	7029	2011	Electricity Duty
1496	2011-09-01	Stromsteuer	5508	2011-09-01	\N	9	576	\N	4631	7048	2011	Electricity Duty
1497	2011-10-01	Stromsteuer	6120	2011-10-01	\N	10	612	\N	5159	7132	2011	Electricity Duty
1498	2011-11-01	Stromsteuer	6682	2011-11-01	\N	11	562	\N	5631	7222	2011	Electricity Duty
1499	2011-12-01	Stromsteuer	7247	2011-12-01	\N	12	565	\N	6171	7247	2011	Electricity Duty
1500	2012-01-01	Stromsteuer	544	2012-01-01	\N	1	544	\N	513	7278	2012	Electricity Duty
1501	2012-02-01	Stromsteuer	1148	2012-02-01	\N	2	604	\N	953	7442	2012	Electricity Duty
1502	2012-03-01	Stromsteuer	1714	2012-03-01	\N	3	566	\N	1785	7176	2012	Electricity Duty
1503	2012-04-01	Stromsteuer	2286	2012-04-01	\N	4	572	\N	2437	7096	2012	Electricity Duty
1504	2012-05-01	Stromsteuer	2837	2012-05-01	\N	5	551	\N	3000	7084	2012	Electricity Duty
1505	2012-06-01	Stromsteuer	3680	2012-06-01	\N	6	843	\N	3744	7183	2012	Electricity Duty
1506	2012-07-01	Stromsteuer	4161	2012-07-01	\N	7	481	\N	4351	7057	2012	Electricity Duty
1507	2012-08-01	Stromsteuer	4673	2012-08-01	\N	8	512	\N	4932	6988	2012	Electricity Duty
1508	2012-09-01	Stromsteuer	5247	2012-09-01	\N	9	574	\N	5508	6986	2012	Electricity Duty
1509	2012-10-01	Stromsteuer	5837	2012-10-01	\N	10	590	\N	6120	6964	2012	Electricity Duty
1510	2012-11-01	Stromsteuer	6399	2012-11-01	\N	11	562	\N	6682	6964	2012	Electricity Duty
1511	2012-12-01	Stromsteuer	6973	2012-12-01	\N	12	574	\N	7247	6973	2012	Electricity Duty
1512	2013-01-01	Stromsteuer	540	2013-01-01	\N	1	540	\N	544	6969	2013	Electricity Duty
1513	2013-02-01	Stromsteuer	1181	2013-02-01	\N	2	641	\N	1148	7006	2013	Electricity Duty
1514	2013-03-01	Stromsteuer	1797	2013-03-01	\N	3	616	\N	1714	7056	2013	Electricity Duty
1515	2013-04-01	Stromsteuer	2403	2013-04-01	\N	4	606	\N	2286	7090	2013	Electricity Duty
1516	2013-05-01	Stromsteuer	2978	2013-05-01	\N	5	575	\N	2837	7114	2013	Electricity Duty
1517	2013-06-01	Stromsteuer	3807	2013-06-01	\N	6	829	\N	3680	7100	2013	Electricity Duty
1518	2013-07-01	Stromsteuer	4319	2013-07-01	\N	7	512	\N	4161	7131	2013	Electricity Duty
1519	2013-08-01	Stromsteuer	4877	2013-08-01	\N	8	558	\N	4673	7177	2013	Electricity Duty
1520	2013-09-01	Stromsteuer	5409	2013-09-01	\N	9	532	\N	5247	7135	2013	Electricity Duty
1521	2013-10-01	Stromsteuer	5967	2013-10-01	\N	10	558	\N	5837	7103	2013	Electricity Duty
1522	2013-11-01	Stromsteuer	6582	2013-11-01	\N	11	615	\N	6399	7156	2013	Electricity Duty
1523	2013-12-01	Stromsteuer	7009	2013-12-01	\N	12	427	\N	6973	7009	2013	Electricity Duty
1524	2014-01-01	Stromsteuer	518	2014-01-01	\N	1	518	\N	540	6987	2014	Electricity Duty
1525	2014-02-01	Stromsteuer	979	2014-02-01	\N	2	461	\N	1181	6807	2014	Electricity Duty
1526	2014-03-01	Stromsteuer	1550	2014-03-01	\N	3	571	\N	1797	6762	2014	Electricity Duty
1527	2014-04-01	Stromsteuer	2061	2014-04-01	\N	4	511	\N	2403	6667	2014	Electricity Duty
1528	2014-05-01	Stromsteuer	2569	2014-05-01	\N	5	508	\N	2978	6600	2014	Electricity Duty
1529	2014-06-01	Stromsteuer	3269	2014-06-01	\N	6	700	\N	3807	6471	2014	Electricity Duty
1530	2014-07-01	Stromsteuer	3826	2014-07-01	\N	7	557	\N	4319	6516	2014	Electricity Duty
1531	2014-08-01	Stromsteuer	4422	2014-08-01	\N	8	596	\N	4877	6554	2014	Electricity Duty
1532	2014-09-01	Stromsteuer	4985	2014-09-01	\N	9	563	\N	5409	6585	2014	Electricity Duty
1533	2014-10-01	Stromsteuer	5563	2014-10-01	\N	10	578	\N	5967	6605	2014	Electricity Duty
1534	2014-11-01	Stromsteuer	6140	2014-11-01	\N	11	577	\N	6582	6567	2014	Electricity Duty
1535	2014-12-01	Stromsteuer	6638	2014-12-01	\N	12	498	\N	7009	6638	2014	Electricity Duty
1536	2015-01-01	Stromsteuer	621	2015-01-01	\N	1	621	\N	518	6741	2015	Electricity Duty
1537	2015-02-01	Stromsteuer	1164	2015-02-01	\N	2	543	\N	979	6823	2015	Electricity Duty
1538	2015-03-01	Stromsteuer	1807	2015-03-01	\N	3	643	\N	1550	6895	2015	Electricity Duty
1539	2015-04-01	Stromsteuer	2375	2015-04-01	\N	4	568	\N	2061	6952	2015	Electricity Duty
1540	2015-05-01	Stromsteuer	2870	2015-05-01	\N	5	495	\N	2569	6939	2015	Electricity Duty
1541	2015-06-01	Stromsteuer	3272	2015-06-01	\N	6	402	\N	3269	6641	2015	Electricity Duty
1542	2015-07-01	Stromsteuer	3856	2015-07-01	\N	7	584	\N	3826	6668	2015	Electricity Duty
1543	2015-08-01	Stromsteuer	4409	2015-08-01	\N	8	553	\N	4422	6625	2015	Electricity Duty
1544	2015-09-01	Stromsteuer	4914	2015-09-01	\N	9	505	\N	4985	6567	2015	Electricity Duty
1545	2015-10-01	Stromsteuer	5466	2015-10-01	\N	10	552	\N	5563	6541	2015	Electricity Duty
1546	2015-11-01	Stromsteuer	5993	2015-11-01	\N	11	527	\N	6140	6491	2015	Electricity Duty
1547	2015-12-01	Stromsteuer	6593	2015-12-01	\N	12	600	\N	6638	6593	2015	Electricity Duty
1548	2016-01-01	Stromsteuer	588	2016-01-01	\N	1	588	\N	621	6560	2016	Electricity Duty
1549	2016-02-01	Stromsteuer	1106	2016-02-01	\N	2	518	\N	1164	6535	2016	Electricity Duty
1550	2016-03-01	Stromsteuer	1685	2016-03-01	\N	3	579	\N	1807	6471	2016	Electricity Duty
1551	2016-04-01	Stromsteuer	2264	2016-04-01	\N	4	579	\N	2375	6482	2016	Electricity Duty
1552	2016-05-01	Stromsteuer	2778	2016-05-01	\N	5	514	\N	2870	6501	2016	Electricity Duty
1553	2016-06-01	Stromsteuer	3200	2016-06-01	\N	6	422	\N	3272	6521	2016	Electricity Duty
1554	2016-07-01	Stromsteuer	3746	2016-07-01	\N	7	546	\N	3856	6483	2016	Electricity Duty
1555	2016-08-01	Stromsteuer	4293	2016-08-01	\N	8	547	\N	4409	6477	2016	Electricity Duty
1556	2016-09-01	Stromsteuer	4841	2016-09-01	\N	9	548	\N	4914	6520	2016	Electricity Duty
1557	2016-10-01	Stromsteuer	5415	2016-10-01	\N	10	574	\N	5466	6542	2016	Electricity Duty
1558	2016-11-01	Stromsteuer	5946	2016-11-01	\N	11	531	\N	5993	6546	2016	Electricity Duty
1559	2016-12-01	Stromsteuer	6569	2016-12-01	\N	12	623	\N	6593	6569	2016	Electricity Duty
1560	2017-01-01	Stromsteuer	526	2017-01-01	\N	1	526	\N	588	6507	2017	Electricity Duty
1561	2017-02-01	Stromsteuer	1024	2017-02-01	\N	2	498	\N	1106	6487	2017	Electricity Duty
1562	2017-03-01	Stromsteuer	1746	2017-03-01	\N	3	722	\N	1685	6630	2017	Electricity Duty
1563	2017-04-01	Stromsteuer	2328	2017-04-01	\N	4	582	\N	2264	6633	2017	Electricity Duty
1564	2017-05-01	Stromsteuer	2843	2017-05-01	\N	5	515	\N	2778	6634	2017	Electricity Duty
1565	2017-06-01	Stromsteuer	3530	2017-06-01	\N	6	687	\N	3200	6899	2017	Electricity Duty
1566	2017-07-01	Stromsteuer	4061	2017-07-01	\N	7	531	\N	3746	6884	2017	Electricity Duty
1567	2017-08-01	Stromsteuer	4591	2017-08-01	\N	8	530	\N	4293	6867	2017	Electricity Duty
1568	2017-09-01	Stromsteuer	5158	2017-09-01	\N	9	567	\N	4841	6886	2017	Electricity Duty
1569	2017-10-01	Stromsteuer	5731	2017-10-01	\N	10	573	\N	5415	6885	2017	Electricity Duty
1570	2017-11-01	Stromsteuer	6289	2017-11-01	\N	11	558	\N	5946	6912	2017	Electricity Duty
1571	2017-12-01	Stromsteuer	6944	2017-12-01	\N	12	655	\N	6569	6944	2017	Electricity Duty
1572	2018-01-01	Stromsteuer	586	2018-01-01	\N	1	586	\N	526	7004	2018	Electricity Duty
1573	2018-02-01	Stromsteuer	1132	2018-02-01	\N	2	546	\N	1024	7052	2018	Electricity Duty
1574	2018-03-01	Stromsteuer	1725	2018-03-01	\N	3	593	\N	1746	6923	2018	Electricity Duty
1575	2018-04-01	Stromsteuer	2316	2018-04-01	\N	4	591	\N	2328	6932	2018	Electricity Duty
1576	2018-05-01	Stromsteuer	2856	2018-05-01	\N	5	540	\N	2843	6957	2018	Electricity Duty
1577	2018-06-01	Stromsteuer	3530	2018-06-01	\N	6	674	\N	3530	6944	2018	Electricity Duty
1578	2018-07-01	Stromsteuer	4062	2018-07-01	\N	7	532	\N	4061	6945	2018	Electricity Duty
1579	2018-08-01	Stromsteuer	4643	2018-08-01	\N	8	581	\N	4591	6996	2018	Electricity Duty
1580	2018-09-01	Stromsteuer	5208	2018-09-01	\N	9	565	\N	5158	6994	2018	Electricity Duty
1581	2018-10-01	Stromsteuer	5775	2018-10-01	\N	10	567	\N	5731	6988	2018	Electricity Duty
1582	2018-11-01	Stromsteuer	6337	2018-11-01	\N	11	562	\N	6289	6992	2018	Electricity Duty
1583	2018-12-01	Stromsteuer	6858	2018-12-01	\N	12	521	\N	6944	6858	2018	Electricity Duty
1585	2008-08-01	Kraftfahrzeugsteuer	0	2008-08-01	\N	8	0	\N	0	\N	2008	Motor Vehicle Tax
1586	2008-09-01	Kraftfahrzeugsteuer	0	2008-09-01	\N	9	0	\N	0	\N	2008	Motor Vehicle Tax
1587	2008-10-01	Kraftfahrzeugsteuer	0	2008-10-01	\N	10	0	\N	0	\N	2008	Motor Vehicle Tax
1588	2008-11-01	Kraftfahrzeugsteuer	0	2008-11-01	\N	11	0	\N	0	\N	2008	Motor Vehicle Tax
1589	2008-12-01	Kraftfahrzeugsteuer	0	2008-12-01	\N	12	0	\N	0	\N	2008	Motor Vehicle Tax
1590	2009-07-01	Kraftfahrzeugsteuer	612	2009-07-01	\N	7	612	\N	0	\N	2009	Motor Vehicle Tax
1591	2009-08-01	Kraftfahrzeugsteuer	1239	2009-08-01	\N	8	627	\N	0	\N	2009	Motor Vehicle Tax
1592	2009-09-01	Kraftfahrzeugsteuer	1907	2009-09-01	\N	9	668	\N	0	\N	2009	Motor Vehicle Tax
1593	2009-10-01	Kraftfahrzeugsteuer	2540	2009-10-01	\N	10	633	\N	0	\N	2009	Motor Vehicle Tax
1594	2009-11-01	Kraftfahrzeugsteuer	3133	2009-11-01	\N	11	593	\N	0	\N	2009	Motor Vehicle Tax
1595	2009-12-01	Kraftfahrzeugsteuer	3803	2009-12-01	\N	12	670	\N	0	\N	2009	Motor Vehicle Tax
1596	2010-01-01	Kraftfahrzeugsteuer	960	2010-01-01	\N	1	960	\N	0	4763	2010	Motor Vehicle Tax
1597	2010-02-01	Kraftfahrzeugsteuer	1536	2010-02-01	\N	2	576	\N	0	5339	2010	Motor Vehicle Tax
1598	2010-03-01	Kraftfahrzeugsteuer	2345	2010-03-01	\N	3	809	\N	0	6148	2010	Motor Vehicle Tax
1599	2010-04-01	Kraftfahrzeugsteuer	3149	2010-04-01	\N	4	804	\N	0	6952	2010	Motor Vehicle Tax
1600	2010-05-01	Kraftfahrzeugsteuer	3867	2010-05-01	\N	5	718	\N	0	7670	2010	Motor Vehicle Tax
1601	2010-06-01	Kraftfahrzeugsteuer	4581	2010-06-01	\N	6	714	\N	0	8384	2010	Motor Vehicle Tax
1602	2010-07-01	Kraftfahrzeugsteuer	5303	2010-07-01	\N	7	722	\N	661	8494	2010	Motor Vehicle Tax
1603	2010-08-01	Kraftfahrzeugsteuer	5951	2010-08-01	\N	8	648	\N	1239	8515	2010	Motor Vehicle Tax
1604	2010-09-01	Kraftfahrzeugsteuer	6592	2010-09-01	\N	9	641	\N	1907	8488	2010	Motor Vehicle Tax
1605	2010-10-01	Kraftfahrzeugsteuer	7196	2010-10-01	\N	10	604	\N	2540	8459	2010	Motor Vehicle Tax
1606	2010-11-01	Kraftfahrzeugsteuer	7831	2010-11-01	\N	11	635	\N	3133	8501	2010	Motor Vehicle Tax
1607	2010-12-01	Kraftfahrzeugsteuer	8488	2010-12-01	\N	12	657	\N	3803	8488	2010	Motor Vehicle Tax
1608	2011-01-01	Kraftfahrzeugsteuer	979	2011-01-01	\N	1	979	\N	960	8507	2011	Motor Vehicle Tax
1609	2011-02-01	Kraftfahrzeugsteuer	1532	2011-02-01	\N	2	553	\N	1536	8484	2011	Motor Vehicle Tax
1610	2011-03-01	Kraftfahrzeugsteuer	2349	2011-03-01	\N	3	817	\N	2345	8492	2011	Motor Vehicle Tax
1611	2011-04-01	Kraftfahrzeugsteuer	3062	2011-04-01	\N	4	713	\N	3149	8401	2011	Motor Vehicle Tax
1612	2011-05-01	Kraftfahrzeugsteuer	3857	2011-05-01	\N	5	795	\N	3867	8478	2011	Motor Vehicle Tax
1613	2011-06-01	Kraftfahrzeugsteuer	4564	2011-06-01	\N	6	707	\N	4581	8471	2011	Motor Vehicle Tax
1614	2011-07-01	Kraftfahrzeugsteuer	5227	2011-07-01	\N	7	663	\N	5303	8412	2011	Motor Vehicle Tax
1615	2011-08-01	Kraftfahrzeugsteuer	5913	2011-08-01	\N	8	686	\N	5951	8450	2011	Motor Vehicle Tax
1616	2011-09-01	Kraftfahrzeugsteuer	6570	2011-09-01	\N	9	657	\N	6592	8466	2011	Motor Vehicle Tax
1617	2011-10-01	Kraftfahrzeugsteuer	7175	2011-10-01	\N	10	605	\N	7196	8467	2011	Motor Vehicle Tax
1618	2011-11-01	Kraftfahrzeugsteuer	7810	2011-11-01	\N	11	635	\N	7831	8467	2011	Motor Vehicle Tax
1619	2011-12-01	Kraftfahrzeugsteuer	8422	2011-12-01	\N	12	612	\N	8488	8422	2011	Motor Vehicle Tax
1620	2012-01-01	Kraftfahrzeugsteuer	973	2012-01-01	\N	1	973	\N	979	8416	2012	Motor Vehicle Tax
1621	2012-02-01	Kraftfahrzeugsteuer	1569	2012-02-01	\N	2	596	\N	1532	8459	2012	Motor Vehicle Tax
1622	2012-03-01	Kraftfahrzeugsteuer	2328	2012-03-01	\N	3	759	\N	2349	8401	2012	Motor Vehicle Tax
1623	2012-04-01	Kraftfahrzeugsteuer	3099	2012-04-01	\N	4	771	\N	3062	8459	2012	Motor Vehicle Tax
1624	2012-05-01	Kraftfahrzeugsteuer	3898	2012-05-01	\N	5	799	\N	3857	8463	2012	Motor Vehicle Tax
1625	2012-06-01	Kraftfahrzeugsteuer	4585	2012-06-01	\N	6	687	\N	4564	8443	2012	Motor Vehicle Tax
1626	2012-07-01	Kraftfahrzeugsteuer	5332	2012-07-01	\N	7	747	\N	5227	8527	2012	Motor Vehicle Tax
1627	2012-08-01	Kraftfahrzeugsteuer	6002	2012-08-01	\N	8	670	\N	5913	8511	2012	Motor Vehicle Tax
1628	2012-09-01	Kraftfahrzeugsteuer	6590	2012-09-01	\N	9	588	\N	6570	8442	2012	Motor Vehicle Tax
1629	2012-10-01	Kraftfahrzeugsteuer	7265	2012-10-01	\N	10	675	\N	7175	8512	2012	Motor Vehicle Tax
1630	2012-11-01	Kraftfahrzeugsteuer	7902	2012-11-01	\N	11	637	\N	7810	8514	2012	Motor Vehicle Tax
1631	2012-12-01	Kraftfahrzeugsteuer	8443	2012-12-01	\N	12	541	\N	8422	8443	2012	Motor Vehicle Tax
1632	2013-01-01	Kraftfahrzeugsteuer	998	2013-01-01	\N	1	998	\N	973	8468	2013	Motor Vehicle Tax
1633	2013-02-01	Kraftfahrzeugsteuer	1577	2013-02-01	\N	2	579	\N	1569	8451	2013	Motor Vehicle Tax
1634	2013-03-01	Kraftfahrzeugsteuer	2304	2013-03-01	\N	3	727	\N	2328	8419	2013	Motor Vehicle Tax
1635	2013-04-01	Kraftfahrzeugsteuer	3155	2013-04-01	\N	4	851	\N	3099	8499	2013	Motor Vehicle Tax
1636	2013-05-01	Kraftfahrzeugsteuer	3925	2013-05-01	\N	5	770	\N	3898	8470	2013	Motor Vehicle Tax
1637	2013-06-01	Kraftfahrzeugsteuer	4588	2013-06-01	\N	6	663	\N	4585	8446	2013	Motor Vehicle Tax
1638	2013-07-01	Kraftfahrzeugsteuer	5363	2013-07-01	\N	7	775	\N	5332	8474	2013	Motor Vehicle Tax
1639	2013-08-01	Kraftfahrzeugsteuer	6025	2013-08-01	\N	8	662	\N	6002	8466	2013	Motor Vehicle Tax
1640	2013-09-01	Kraftfahrzeugsteuer	6641	2013-09-01	\N	9	616	\N	6590	8494	2013	Motor Vehicle Tax
1641	2013-10-01	Kraftfahrzeugsteuer	7329	2013-10-01	\N	10	688	\N	7265	8507	2013	Motor Vehicle Tax
1642	2013-11-01	Kraftfahrzeugsteuer	7923	2013-11-01	\N	11	594	\N	7902	8464	2013	Motor Vehicle Tax
1643	2013-12-01	Kraftfahrzeugsteuer	8490	2013-12-01	\N	12	567	\N	8443	8490	2013	Motor Vehicle Tax
1644	2014-01-01	Kraftfahrzeugsteuer	903	2014-01-01	\N	1	903	\N	998	8395	2014	Motor Vehicle Tax
1645	2014-02-01	Kraftfahrzeugsteuer	1325	2014-02-01	\N	2	422	\N	1577	8238	2014	Motor Vehicle Tax
1646	2014-03-01	Kraftfahrzeugsteuer	1861	2014-03-01	\N	3	536	\N	2304	8047	2014	Motor Vehicle Tax
1647	2014-04-01	Kraftfahrzeugsteuer	2647	2014-04-01	\N	4	786	\N	3155	7982	2014	Motor Vehicle Tax
1648	2014-05-01	Kraftfahrzeugsteuer	3248	2014-05-01	\N	5	601	\N	3925	7813	2014	Motor Vehicle Tax
1649	2014-06-01	Kraftfahrzeugsteuer	4378	2014-06-01	\N	6	1130	\N	4588	8280	2014	Motor Vehicle Tax
1650	2014-07-01	Kraftfahrzeugsteuer	5224	2014-07-01	\N	7	846	\N	5363	8351	2014	Motor Vehicle Tax
1651	2014-08-01	Kraftfahrzeugsteuer	5804	2014-08-01	\N	8	580	\N	6025	8269	2014	Motor Vehicle Tax
1652	2014-09-01	Kraftfahrzeugsteuer	6642	2014-09-01	\N	9	838	\N	6641	8491	2014	Motor Vehicle Tax
1653	2014-10-01	Kraftfahrzeugsteuer	7318	2014-10-01	\N	10	676	\N	7329	8479	2014	Motor Vehicle Tax
1654	2014-11-01	Kraftfahrzeugsteuer	7981	2014-11-01	\N	11	663	\N	7923	8548	2014	Motor Vehicle Tax
1655	2014-12-01	Kraftfahrzeugsteuer	8501	2014-12-01	\N	12	520	\N	8490	8501	2014	Motor Vehicle Tax
1656	2015-01-01	Kraftfahrzeugsteuer	1057	2015-01-01	\N	1	1057	\N	903	8655	2015	Motor Vehicle Tax
1657	2015-02-01	Kraftfahrzeugsteuer	1623	2015-02-01	\N	2	566	\N	1325	8799	2015	Motor Vehicle Tax
1658	2015-03-01	Kraftfahrzeugsteuer	2454	2015-03-01	\N	3	831	\N	1861	9094	2015	Motor Vehicle Tax
1659	2015-04-01	Kraftfahrzeugsteuer	3314	2015-04-01	\N	4	860	\N	2647	9168	2015	Motor Vehicle Tax
1660	2015-05-01	Kraftfahrzeugsteuer	4027	2015-05-01	\N	5	713	\N	3248	9280	2015	Motor Vehicle Tax
1661	2015-06-01	Kraftfahrzeugsteuer	4814	2015-06-01	\N	6	787	\N	4378	8937	2015	Motor Vehicle Tax
1662	2015-07-01	Kraftfahrzeugsteuer	5571	2015-07-01	\N	7	757	\N	5224	8848	2015	Motor Vehicle Tax
1663	2015-08-01	Kraftfahrzeugsteuer	6221	2015-08-01	\N	8	650	\N	5804	8918	2015	Motor Vehicle Tax
1664	2015-09-01	Kraftfahrzeugsteuer	6922	2015-09-01	\N	9	701	\N	6642	8781	2015	Motor Vehicle Tax
1665	2015-10-01	Kraftfahrzeugsteuer	7595	2015-10-01	\N	10	673	\N	7318	8778	2015	Motor Vehicle Tax
1666	2015-11-01	Kraftfahrzeugsteuer	8201	2015-11-01	\N	11	606	\N	7981	8721	2015	Motor Vehicle Tax
1667	2015-12-01	Kraftfahrzeugsteuer	8805	2015-12-01	\N	12	604	\N	8501	8805	2015	Motor Vehicle Tax
1668	2016-01-01	Kraftfahrzeugsteuer	921	2016-01-01	\N	1	921	\N	1057	8669	2016	Motor Vehicle Tax
1669	2016-02-01	Kraftfahrzeugsteuer	1622	2016-02-01	\N	2	701	\N	1623	8804	2016	Motor Vehicle Tax
1670	2016-03-01	Kraftfahrzeugsteuer	2489	2016-03-01	\N	3	867	\N	2454	8840	2016	Motor Vehicle Tax
1671	2016-04-01	Kraftfahrzeugsteuer	3306	2016-04-01	\N	4	817	\N	3314	8797	2016	Motor Vehicle Tax
1672	2016-05-01	Kraftfahrzeugsteuer	4078	2016-05-01	\N	5	772	\N	4027	8856	2016	Motor Vehicle Tax
1673	2016-06-01	Kraftfahrzeugsteuer	4855	2016-06-01	\N	6	777	\N	4814	8846	2016	Motor Vehicle Tax
1674	2016-07-01	Kraftfahrzeugsteuer	5623	2016-07-01	\N	7	768	\N	5571	8857	2016	Motor Vehicle Tax
1675	2016-08-01	Kraftfahrzeugsteuer	6333	2016-08-01	\N	8	710	\N	6221	8917	2016	Motor Vehicle Tax
1676	2016-09-01	Kraftfahrzeugsteuer	7053	2016-09-01	\N	9	720	\N	6922	8936	2016	Motor Vehicle Tax
1677	2016-10-01	Kraftfahrzeugsteuer	7672	2016-10-01	\N	10	619	\N	7595	8882	2016	Motor Vehicle Tax
1678	2016-11-01	Kraftfahrzeugsteuer	8352	2016-11-01	\N	11	680	\N	8201	8956	2016	Motor Vehicle Tax
1679	2016-12-01	Kraftfahrzeugsteuer	8952	2016-12-01	\N	12	600	\N	8805	8952	2016	Motor Vehicle Tax
1680	2017-01-01	Kraftfahrzeugsteuer	883	2017-01-01	\N	1	883	\N	921	8914	2017	Motor Vehicle Tax
1681	2017-02-01	Kraftfahrzeugsteuer	1617	2017-02-01	\N	2	734	\N	1622	8947	2017	Motor Vehicle Tax
1682	2017-03-01	Kraftfahrzeugsteuer	2536	2017-03-01	\N	3	919	\N	2489	8999	2017	Motor Vehicle Tax
1683	2017-04-01	Kraftfahrzeugsteuer	3293	2017-04-01	\N	4	757	\N	3306	8939	2017	Motor Vehicle Tax
1684	2017-05-01	Kraftfahrzeugsteuer	4067	2017-05-01	\N	5	774	\N	4078	8941	2017	Motor Vehicle Tax
1685	2017-06-01	Kraftfahrzeugsteuer	4910	2017-06-01	\N	6	843	\N	4855	9007	2017	Motor Vehicle Tax
1686	2017-07-01	Kraftfahrzeugsteuer	5628	2017-07-01	\N	7	718	\N	5623	8957	2017	Motor Vehicle Tax
1687	2017-08-01	Kraftfahrzeugsteuer	6348	2017-08-01	\N	8	720	\N	6333	8967	2017	Motor Vehicle Tax
1688	2017-09-01	Kraftfahrzeugsteuer	7042	2017-09-01	\N	9	694	\N	7053	8941	2017	Motor Vehicle Tax
1689	2017-10-01	Kraftfahrzeugsteuer	7688	2017-10-01	\N	10	646	\N	7672	8968	2017	Motor Vehicle Tax
1690	2017-11-01	Kraftfahrzeugsteuer	8383	2017-11-01	\N	11	695	\N	8352	8983	2017	Motor Vehicle Tax
1691	2017-12-01	Kraftfahrzeugsteuer	8948	2017-12-01	\N	12	565	\N	8952	8948	2017	Motor Vehicle Tax
1692	2018-01-01	Kraftfahrzeugsteuer	905	2018-01-01	\N	1	905	\N	883	8970	2018	Motor Vehicle Tax
1693	2018-02-01	Kraftfahrzeugsteuer	1644	2018-02-01	\N	2	739	\N	1617	8975	2018	Motor Vehicle Tax
1694	2018-03-01	Kraftfahrzeugsteuer	2602	2018-03-01	\N	3	958	\N	2536	9014	2018	Motor Vehicle Tax
1695	2018-04-01	Kraftfahrzeugsteuer	3344	2018-04-01	\N	4	742	\N	3293	8999	2018	Motor Vehicle Tax
1696	2018-05-01	Kraftfahrzeugsteuer	4143	2018-05-01	\N	5	799	\N	4067	9024	2018	Motor Vehicle Tax
1697	2018-06-01	Kraftfahrzeugsteuer	4963	2018-06-01	\N	6	820	\N	4910	9001	2018	Motor Vehicle Tax
1698	2018-07-01	Kraftfahrzeugsteuer	5672	2018-07-01	\N	7	709	\N	5628	8992	2018	Motor Vehicle Tax
1699	2018-08-01	Kraftfahrzeugsteuer	6437	2018-08-01	\N	8	765	\N	6348	9037	2018	Motor Vehicle Tax
1700	2018-09-01	Kraftfahrzeugsteuer	7091	2018-09-01	\N	9	654	\N	7042	8997	2018	Motor Vehicle Tax
1701	2018-10-01	Kraftfahrzeugsteuer	7766	2018-10-01	\N	10	675	\N	7688	9026	2018	Motor Vehicle Tax
1702	2018-11-01	Kraftfahrzeugsteuer	8507	2018-11-01	\N	11	741	\N	8383	9072	2018	Motor Vehicle Tax
1703	2018-12-01	Kraftfahrzeugsteuer	9047	2018-12-01	\N	12	540	\N	8948	9047	2018	Motor Vehicle Tax
1704	2008-01-01	Kaffeesteuer	93	2008-01-01	\N	1	93	\N	0	\N	2008	Coffee Duty
1705	2008-02-01	Kaffeesteuer	164	2008-02-01	\N	2	71	\N	0	\N	2008	Coffee Duty
1706	2008-03-01	Kaffeesteuer	232	2008-03-01	\N	3	68	\N	0	\N	2008	Coffee Duty
1707	2008-04-01	Kaffeesteuer	321	2008-04-01	\N	4	89	\N	0	\N	2008	Coffee Duty
1708	2008-05-01	Kaffeesteuer	406	2008-05-01	\N	5	85	\N	0	\N	2008	Coffee Duty
1709	2008-06-01	Kaffeesteuer	481	2008-06-01	\N	6	75	\N	0	\N	2008	Coffee Duty
1710	2008-07-01	Kaffeesteuer	559	2008-07-01	\N	7	78	\N	0	\N	2008	Coffee Duty
1711	2008-08-01	Kaffeesteuer	640	2008-08-01	\N	8	81	\N	0	\N	2008	Coffee Duty
1712	2008-09-01	Kaffeesteuer	721	2008-09-01	\N	9	81	\N	0	\N	2008	Coffee Duty
1713	2008-10-01	Kaffeesteuer	809	2008-10-01	\N	10	88	\N	0	\N	2008	Coffee Duty
1714	2008-11-01	Kaffeesteuer	906	2008-11-01	\N	11	97	\N	0	\N	2008	Coffee Duty
1715	2008-12-01	Kaffeesteuer	1008	2008-12-01	\N	12	102	\N	0	1008	2008	Coffee Duty
1716	2009-01-01	Kaffeesteuer	94	2009-01-01	\N	1	94	\N	93	1009	2009	Coffee Duty
1717	2009-02-01	Kaffeesteuer	158	2009-02-01	\N	2	64	\N	164	1002	2009	Coffee Duty
1718	2009-03-01	Kaffeesteuer	225	2009-03-01	\N	3	67	\N	232	1001	2009	Coffee Duty
1719	2009-04-01	Kaffeesteuer	321	2009-04-01	\N	4	96	\N	321	1008	2009	Coffee Duty
1720	2009-05-01	Kaffeesteuer	410	2009-05-01	\N	5	89	\N	406	1012	2009	Coffee Duty
1721	2009-06-01	Kaffeesteuer	488	2009-06-01	\N	6	78	\N	481	1015	2009	Coffee Duty
1722	2009-07-01	Kaffeesteuer	563	2009-07-01	\N	7	75	\N	559	1012	2009	Coffee Duty
1723	2009-08-01	Kaffeesteuer	643	2009-08-01	\N	8	80	\N	640	1011	2009	Coffee Duty
1724	2009-09-01	Kaffeesteuer	722	2009-09-01	\N	9	79	\N	721	1009	2009	Coffee Duty
1725	2009-10-01	Kaffeesteuer	807	2009-10-01	\N	10	85	\N	809	1006	2009	Coffee Duty
1726	2009-11-01	Kaffeesteuer	898	2009-11-01	\N	11	91	\N	906	1000	2009	Coffee Duty
1727	2009-12-01	Kaffeesteuer	997	2009-12-01	\N	12	99	\N	1008	997	2009	Coffee Duty
1728	2010-01-01	Kaffeesteuer	104	2010-01-01	\N	1	104	\N	94	1007	2010	Coffee Duty
1729	2010-02-01	Kaffeesteuer	168	2010-02-01	\N	2	64	\N	158	1007	2010	Coffee Duty
1730	2010-03-01	Kaffeesteuer	238	2010-03-01	\N	3	70	\N	225	1010	2010	Coffee Duty
1731	2010-04-01	Kaffeesteuer	338	2010-04-01	\N	4	100	\N	321	1014	2010	Coffee Duty
1732	2010-05-01	Kaffeesteuer	422	2010-05-01	\N	5	84	\N	410	1009	2010	Coffee Duty
1733	2010-06-01	Kaffeesteuer	500	2010-06-01	\N	6	78	\N	488	1009	2010	Coffee Duty
1734	2010-07-01	Kaffeesteuer	580	2010-07-01	\N	7	80	\N	563	1014	2010	Coffee Duty
1735	2010-08-01	Kaffeesteuer	660	2010-08-01	\N	8	80	\N	643	1014	2010	Coffee Duty
1736	2010-09-01	Kaffeesteuer	747	2010-09-01	\N	9	87	\N	722	1022	2010	Coffee Duty
1737	2010-10-01	Kaffeesteuer	831	2010-10-01	\N	10	84	\N	807	1021	2010	Coffee Duty
1738	2010-11-01	Kaffeesteuer	908	2010-11-01	\N	11	77	\N	898	1007	2010	Coffee Duty
1739	2010-12-01	Kaffeesteuer	1002	2010-12-01	\N	12	94	\N	997	1002	2010	Coffee Duty
1740	2011-01-01	Kaffeesteuer	101	2011-01-01	\N	1	101	\N	104	999	2011	Coffee Duty
1741	2011-02-01	Kaffeesteuer	178	2011-02-01	\N	2	77	\N	168	1012	2011	Coffee Duty
1742	2011-03-01	Kaffeesteuer	248	2011-03-01	\N	3	70	\N	238	1012	2011	Coffee Duty
1743	2011-04-01	Kaffeesteuer	343	2011-04-01	\N	4	95	\N	338	1007	2011	Coffee Duty
1744	2011-05-01	Kaffeesteuer	432	2011-05-01	\N	5	89	\N	422	1012	2011	Coffee Duty
1745	2011-06-01	Kaffeesteuer	521	2011-06-01	\N	6	89	\N	500	1023	2011	Coffee Duty
1746	2011-07-01	Kaffeesteuer	600	2011-07-01	\N	7	79	\N	580	1022	2011	Coffee Duty
1747	2011-08-01	Kaffeesteuer	679	2011-08-01	\N	8	79	\N	660	1021	2011	Coffee Duty
1748	2011-09-01	Kaffeesteuer	759	2011-09-01	\N	9	80	\N	747	1014	2011	Coffee Duty
1749	2011-10-01	Kaffeesteuer	844	2011-10-01	\N	10	85	\N	831	1015	2011	Coffee Duty
1750	2011-11-01	Kaffeesteuer	926	2011-11-01	\N	11	82	\N	908	1020	2011	Coffee Duty
1751	2011-12-01	Kaffeesteuer	1028	2011-12-01	\N	12	102	\N	1002	1028	2011	Coffee Duty
1752	2012-01-01	Kaffeesteuer	98	2012-01-01	\N	1	98	\N	101	1025	2012	Coffee Duty
1753	2012-02-01	Kaffeesteuer	171	2012-02-01	\N	2	73	\N	178	1021	2012	Coffee Duty
1754	2012-03-01	Kaffeesteuer	256	2012-03-01	\N	3	85	\N	248	1036	2012	Coffee Duty
1755	2012-04-01	Kaffeesteuer	357	2012-04-01	\N	4	101	\N	343	1042	2012	Coffee Duty
1756	2012-05-01	Kaffeesteuer	435	2012-05-01	\N	5	78	\N	432	1031	2012	Coffee Duty
1757	2012-06-01	Kaffeesteuer	523	2012-06-01	\N	6	88	\N	521	1030	2012	Coffee Duty
1758	2012-07-01	Kaffeesteuer	605	2012-07-01	\N	7	82	\N	600	1033	2012	Coffee Duty
1759	2012-08-01	Kaffeesteuer	685	2012-08-01	\N	8	80	\N	679	1034	2012	Coffee Duty
1760	2012-09-01	Kaffeesteuer	769	2012-09-01	\N	9	84	\N	759	1038	2012	Coffee Duty
1761	2012-10-01	Kaffeesteuer	849	2012-10-01	\N	10	80	\N	844	1033	2012	Coffee Duty
1762	2012-11-01	Kaffeesteuer	950	2012-11-01	\N	11	101	\N	926	1052	2012	Coffee Duty
1763	2012-12-01	Kaffeesteuer	1054	2012-12-01	\N	12	104	\N	1028	1054	2012	Coffee Duty
1764	2013-01-01	Kaffeesteuer	95	2013-01-01	\N	1	95	\N	98	1051	2013	Coffee Duty
1765	2013-02-01	Kaffeesteuer	164	2013-02-01	\N	2	69	\N	171	1047	2013	Coffee Duty
1766	2013-03-01	Kaffeesteuer	238	2013-03-01	\N	3	74	\N	256	1036	2013	Coffee Duty
1767	2013-04-01	Kaffeesteuer	333	2013-04-01	\N	4	95	\N	357	1030	2013	Coffee Duty
1768	2013-05-01	Kaffeesteuer	420	2013-05-01	\N	5	87	\N	435	1039	2013	Coffee Duty
1769	2013-06-01	Kaffeesteuer	500	2013-06-01	\N	6	80	\N	523	1031	2013	Coffee Duty
1770	2013-07-01	Kaffeesteuer	578	2013-07-01	\N	7	78	\N	605	1027	2013	Coffee Duty
1771	2013-08-01	Kaffeesteuer	660	2013-08-01	\N	8	82	\N	685	1029	2013	Coffee Duty
1772	2013-09-01	Kaffeesteuer	739	2013-09-01	\N	9	79	\N	769	1024	2013	Coffee Duty
1773	2013-10-01	Kaffeesteuer	829	2013-10-01	\N	10	90	\N	849	1034	2013	Coffee Duty
1774	2013-11-01	Kaffeesteuer	922	2013-11-01	\N	11	93	\N	950	1026	2013	Coffee Duty
1775	2013-12-01	Kaffeesteuer	1021	2013-12-01	\N	12	99	\N	1054	1021	2013	Coffee Duty
1776	2014-01-01	Kaffeesteuer	104	2014-01-01	\N	1	104	\N	95	1030	2014	Coffee Duty
1777	2014-02-01	Kaffeesteuer	176	2014-02-01	\N	2	72	\N	164	1033	2014	Coffee Duty
1778	2014-03-01	Kaffeesteuer	251	2014-03-01	\N	3	75	\N	238	1034	2014	Coffee Duty
1779	2014-04-01	Kaffeesteuer	339	2014-04-01	\N	4	88	\N	333	1027	2014	Coffee Duty
1780	2014-05-01	Kaffeesteuer	429	2014-05-01	\N	5	90	\N	420	1030	2014	Coffee Duty
1781	2014-06-01	Kaffeesteuer	508	2014-06-01	\N	6	79	\N	500	1029	2014	Coffee Duty
1782	2014-07-01	Kaffeesteuer	580	2014-07-01	\N	7	72	\N	578	1023	2014	Coffee Duty
1783	2014-08-01	Kaffeesteuer	658	2014-08-01	\N	8	78	\N	660	1019	2014	Coffee Duty
1784	2014-09-01	Kaffeesteuer	739	2014-09-01	\N	9	81	\N	739	1021	2014	Coffee Duty
1785	2014-10-01	Kaffeesteuer	832	2014-10-01	\N	10	93	\N	829	1024	2014	Coffee Duty
1786	2014-11-01	Kaffeesteuer	921	2014-11-01	\N	11	89	\N	922	1020	2014	Coffee Duty
1787	2014-12-01	Kaffeesteuer	1016	2014-12-01	\N	12	95	\N	1021	1016	2014	Coffee Duty
1788	2015-01-01	Kaffeesteuer	105	2015-01-01	\N	1	105	\N	104	1017	2015	Coffee Duty
1789	2015-02-01	Kaffeesteuer	179	2015-02-01	\N	2	74	\N	176	1019	2015	Coffee Duty
1790	2015-03-01	Kaffeesteuer	253	2015-03-01	\N	3	74	\N	251	1018	2015	Coffee Duty
1791	2015-04-01	Kaffeesteuer	363	2015-04-01	\N	4	110	\N	339	1040	2015	Coffee Duty
1792	2015-05-01	Kaffeesteuer	443	2015-05-01	\N	5	80	\N	429	1030	2015	Coffee Duty
1793	2015-06-01	Kaffeesteuer	523	2015-06-01	\N	6	80	\N	508	1031	2015	Coffee Duty
1794	2015-07-01	Kaffeesteuer	600	2015-07-01	\N	7	77	\N	580	1036	2015	Coffee Duty
1795	2015-08-01	Kaffeesteuer	675	2015-08-01	\N	8	75	\N	658	1033	2015	Coffee Duty
1796	2015-09-01	Kaffeesteuer	753	2015-09-01	\N	9	78	\N	739	1030	2015	Coffee Duty
1797	2015-10-01	Kaffeesteuer	845	2015-10-01	\N	10	92	\N	832	1029	2015	Coffee Duty
1798	2015-11-01	Kaffeesteuer	937	2015-11-01	\N	11	92	\N	921	1032	2015	Coffee Duty
1799	2015-12-01	Kaffeesteuer	1032	2015-12-01	\N	12	95	\N	1016	1032	2015	Coffee Duty
1800	2016-01-01	Kaffeesteuer	108	2016-01-01	\N	1	108	\N	105	1035	2016	Coffee Duty
1801	2016-02-01	Kaffeesteuer	171	2016-02-01	\N	2	63	\N	179	1024	2016	Coffee Duty
1802	2016-03-01	Kaffeesteuer	255	2016-03-01	\N	3	84	\N	253	1034	2016	Coffee Duty
1803	2016-04-01	Kaffeesteuer	349	2016-04-01	\N	4	94	\N	363	1018	2016	Coffee Duty
1804	2016-05-01	Kaffeesteuer	428	2016-05-01	\N	5	79	\N	443	1017	2016	Coffee Duty
1805	2016-06-01	Kaffeesteuer	506	2016-06-01	\N	6	78	\N	523	1015	2016	Coffee Duty
1806	2016-07-01	Kaffeesteuer	589	2016-07-01	\N	7	83	\N	600	1021	2016	Coffee Duty
1807	2016-08-01	Kaffeesteuer	675	2016-08-01	\N	8	86	\N	675	1032	2016	Coffee Duty
1808	2016-09-01	Kaffeesteuer	766	2016-09-01	\N	9	91	\N	753	1045	2016	Coffee Duty
1809	2016-10-01	Kaffeesteuer	853	2016-10-01	\N	10	87	\N	845	1040	2016	Coffee Duty
1810	2016-11-01	Kaffeesteuer	939	2016-11-01	\N	11	86	\N	937	1034	2016	Coffee Duty
1811	2016-12-01	Kaffeesteuer	1040	2016-12-01	\N	12	101	\N	1032	1040	2016	Coffee Duty
1812	2017-01-01	Kaffeesteuer	96	2017-01-01	\N	1	96	\N	108	1028	2017	Coffee Duty
1813	2017-02-01	Kaffeesteuer	170	2017-02-01	\N	2	74	\N	171	1039	2017	Coffee Duty
1814	2017-03-01	Kaffeesteuer	249	2017-03-01	\N	3	79	\N	255	1034	2017	Coffee Duty
1815	2017-04-01	Kaffeesteuer	347	2017-04-01	\N	4	98	\N	349	1038	2017	Coffee Duty
1816	2017-05-01	Kaffeesteuer	428	2017-05-01	\N	5	81	\N	428	1040	2017	Coffee Duty
1817	2017-06-01	Kaffeesteuer	518	2017-06-01	\N	6	90	\N	506	1052	2017	Coffee Duty
1818	2017-07-01	Kaffeesteuer	596	2017-07-01	\N	7	78	\N	589	1047	2017	Coffee Duty
1819	2017-08-01	Kaffeesteuer	672	2017-08-01	\N	8	76	\N	675	1037	2017	Coffee Duty
1820	2017-09-01	Kaffeesteuer	763	2017-09-01	\N	9	91	\N	766	1037	2017	Coffee Duty
1821	2017-10-01	Kaffeesteuer	855	2017-10-01	\N	10	92	\N	853	1042	2017	Coffee Duty
1822	2017-11-01	Kaffeesteuer	949	2017-11-01	\N	11	94	\N	939	1050	2017	Coffee Duty
1823	2017-12-01	Kaffeesteuer	1057	2017-12-01	\N	12	108	\N	1040	1057	2017	Coffee Duty
1824	2018-01-01	Kaffeesteuer	90	2018-01-01	\N	1	90	\N	96	1051	2018	Coffee Duty
1825	2018-02-01	Kaffeesteuer	167	2018-02-01	\N	2	77	\N	170	1054	2018	Coffee Duty
1826	2018-03-01	Kaffeesteuer	243	2018-03-01	\N	3	76	\N	249	1051	2018	Coffee Duty
1827	2018-04-01	Kaffeesteuer	341	2018-04-01	\N	4	98	\N	347	1051	2018	Coffee Duty
1828	2018-05-01	Kaffeesteuer	420	2018-05-01	\N	5	79	\N	428	1049	2018	Coffee Duty
1829	2018-06-01	Kaffeesteuer	503	2018-06-01	\N	6	83	\N	518	1042	2018	Coffee Duty
1830	2018-07-01	Kaffeesteuer	583	2018-07-01	\N	7	80	\N	596	1044	2018	Coffee Duty
1831	2018-08-01	Kaffeesteuer	665	2018-08-01	\N	8	82	\N	672	1050	2018	Coffee Duty
1832	2018-09-01	Kaffeesteuer	750	2018-09-01	\N	9	85	\N	763	1044	2018	Coffee Duty
1833	2018-10-01	Kaffeesteuer	836	2018-10-01	\N	10	86	\N	855	1038	2018	Coffee Duty
1834	2018-11-01	Kaffeesteuer	931	2018-11-01	\N	11	95	\N	949	1039	2018	Coffee Duty
1835	2018-12-01	Kaffeesteuer	1037	2018-12-01	\N	12	106	\N	1057	1037	2018	Coffee Duty
1836	2008-01-01	Alkoholsteuer	225	2008-01-01	\N	1	225	\N	0	\N	2008	Alcohol Duty
1837	2008-02-01	Alkoholsteuer	461	2008-02-01	\N	2	236	\N	0	\N	2008	Alcohol Duty
1838	2008-03-01	Alkoholsteuer	627	2008-03-01	\N	3	166	\N	0	\N	2008	Alcohol Duty
1839	2008-04-01	Alkoholsteuer	763	2008-04-01	\N	4	136	\N	0	\N	2008	Alcohol Duty
1840	2008-05-01	Alkoholsteuer	937	2008-05-01	\N	5	174	\N	0	\N	2008	Alcohol Duty
1841	2008-06-01	Alkoholsteuer	1107	2008-06-01	\N	6	170	\N	0	\N	2008	Alcohol Duty
1842	2008-07-01	Alkoholsteuer	1270	2008-07-01	\N	7	163	\N	0	\N	2008	Alcohol Duty
1843	2008-08-01	Alkoholsteuer	1424	2008-08-01	\N	8	154	\N	0	\N	2008	Alcohol Duty
1844	2008-09-01	Alkoholsteuer	1595	2008-09-01	\N	9	171	\N	0	\N	2008	Alcohol Duty
1845	2008-10-01	Alkoholsteuer	1757	2008-10-01	\N	10	162	\N	0	\N	2008	Alcohol Duty
1846	2008-11-01	Alkoholsteuer	1937	2008-11-01	\N	11	180	\N	0	\N	2008	Alcohol Duty
1847	2008-12-01	Alkoholsteuer	2129	2008-12-01	\N	12	192	\N	0	2129	2008	Alcohol Duty
1848	2009-01-01	Alkoholsteuer	200	2009-01-01	\N	1	200	\N	225	2104	2009	Alcohol Duty
1849	2009-02-01	Alkoholsteuer	455	2009-02-01	\N	2	255	\N	461	2123	2009	Alcohol Duty
1850	2009-03-01	Alkoholsteuer	594	2009-03-01	\N	3	139	\N	627	2096	2009	Alcohol Duty
1851	2009-04-01	Alkoholsteuer	734	2009-04-01	\N	4	140	\N	763	2100	2009	Alcohol Duty
1852	2009-05-01	Alkoholsteuer	910	2009-05-01	\N	5	176	\N	937	2102	2009	Alcohol Duty
1853	2009-06-01	Alkoholsteuer	1073	2009-06-01	\N	6	163	\N	1107	2095	2009	Alcohol Duty
1854	2009-07-01	Alkoholsteuer	1230	2009-07-01	\N	7	157	\N	1270	2089	2009	Alcohol Duty
1855	2009-08-01	Alkoholsteuer	1391	2009-08-01	\N	8	161	\N	1424	2096	2009	Alcohol Duty
1856	2009-09-01	Alkoholsteuer	1561	2009-09-01	\N	9	170	\N	1595	2095	2009	Alcohol Duty
1857	2009-10-01	Alkoholsteuer	1721	2009-10-01	\N	10	160	\N	1757	2093	2009	Alcohol Duty
1858	2009-11-01	Alkoholsteuer	1894	2009-11-01	\N	11	173	\N	1937	2086	2009	Alcohol Duty
1859	2009-12-01	Alkoholsteuer	2103	2009-12-01	\N	12	209	\N	2129	2103	2009	Alcohol Duty
1860	2010-01-01	Alkoholsteuer	189	2010-01-01	\N	1	189	\N	200	2092	2010	Alcohol Duty
1861	2010-02-01	Alkoholsteuer	397	2010-02-01	\N	2	208	\N	455	2045	2010	Alcohol Duty
1862	2010-03-01	Alkoholsteuer	527	2010-03-01	\N	3	130	\N	594	2036	2010	Alcohol Duty
1863	2010-04-01	Alkoholsteuer	660	2010-04-01	\N	4	133	\N	734	2029	2010	Alcohol Duty
1864	2010-05-01	Alkoholsteuer	848	2010-05-01	\N	5	188	\N	910	2041	2010	Alcohol Duty
1865	2010-06-01	Alkoholsteuer	965	2010-06-01	\N	6	117	\N	1073	1995	2010	Alcohol Duty
1866	2010-07-01	Alkoholsteuer	1130	2010-07-01	\N	7	165	\N	1230	2003	2010	Alcohol Duty
1867	2010-08-01	Alkoholsteuer	1289	2010-08-01	\N	8	159	\N	1391	2001	2010	Alcohol Duty
1868	2010-09-01	Alkoholsteuer	1455	2010-09-01	\N	9	166	\N	1561	1997	2010	Alcohol Duty
1869	2010-10-01	Alkoholsteuer	1619	2010-10-01	\N	10	164	\N	1721	2001	2010	Alcohol Duty
1870	2010-11-01	Alkoholsteuer	1794	2010-11-01	\N	11	175	\N	1894	2003	2010	Alcohol Duty
1871	2010-12-01	Alkoholsteuer	1993	2010-12-01	\N	12	199	\N	2103	1993	2010	Alcohol Duty
1872	2011-01-01	Alkoholsteuer	195	2011-01-01	\N	1	195	\N	189	1999	2011	Alcohol Duty
1873	2011-02-01	Alkoholsteuer	456	2011-02-01	\N	2	261	\N	397	2052	2011	Alcohol Duty
1874	2011-03-01	Alkoholsteuer	575	2011-03-01	\N	3	119	\N	527	2041	2011	Alcohol Duty
1875	2011-04-01	Alkoholsteuer	717	2011-04-01	\N	4	142	\N	660	2050	2011	Alcohol Duty
1876	2011-05-01	Alkoholsteuer	887	2011-05-01	\N	5	170	\N	848	2032	2011	Alcohol Duty
1877	2011-06-01	Alkoholsteuer	1057	2011-06-01	\N	6	170	\N	965	2085	2011	Alcohol Duty
1878	2011-07-01	Alkoholsteuer	1220	2011-07-01	\N	7	163	\N	1130	2083	2011	Alcohol Duty
1879	2011-08-01	Alkoholsteuer	1394	2011-08-01	\N	8	174	\N	1289	2098	2011	Alcohol Duty
1880	2011-09-01	Alkoholsteuer	1598	2011-09-01	\N	9	204	\N	1455	2136	2011	Alcohol Duty
1881	2011-10-01	Alkoholsteuer	1776	2011-10-01	\N	10	178	\N	1619	2150	2011	Alcohol Duty
1882	2011-11-01	Alkoholsteuer	1948	2011-11-01	\N	11	172	\N	1794	2147	2011	Alcohol Duty
1883	2011-12-01	Alkoholsteuer	2151	2011-12-01	\N	12	203	\N	1993	2151	2011	Alcohol Duty
1884	2012-01-01	Alkoholsteuer	203	2012-01-01	\N	1	203	\N	195	2159	2012	Alcohol Duty
1885	2012-02-01	Alkoholsteuer	449	2012-02-01	\N	2	246	\N	456	2144	2012	Alcohol Duty
1886	2012-03-01	Alkoholsteuer	577	2012-03-01	\N	3	128	\N	575	2153	2012	Alcohol Duty
1887	2012-04-01	Alkoholsteuer	726	2012-04-01	\N	4	149	\N	717	2160	2012	Alcohol Duty
1888	2012-05-01	Alkoholsteuer	903	2012-05-01	\N	5	177	\N	887	2167	2012	Alcohol Duty
1889	2012-06-01	Alkoholsteuer	1067	2012-06-01	\N	6	164	\N	1057	2161	2012	Alcohol Duty
1890	2012-07-01	Alkoholsteuer	1245	2012-07-01	\N	7	178	\N	1220	2176	2012	Alcohol Duty
1891	2012-08-01	Alkoholsteuer	1406	2012-08-01	\N	8	161	\N	1394	2163	2012	Alcohol Duty
1892	2012-09-01	Alkoholsteuer	1574	2012-09-01	\N	9	168	\N	1598	2127	2012	Alcohol Duty
1893	2012-10-01	Alkoholsteuer	1737	2012-10-01	\N	10	163	\N	1776	2112	2012	Alcohol Duty
1894	2012-11-01	Alkoholsteuer	1904	2012-11-01	\N	11	167	\N	1948	2107	2012	Alcohol Duty
1895	2012-12-01	Alkoholsteuer	2123	2012-12-01	\N	12	219	\N	2151	2123	2012	Alcohol Duty
1896	2013-01-01	Alkoholsteuer	206	2013-01-01	\N	1	206	\N	203	2126	2013	Alcohol Duty
1897	2013-02-01	Alkoholsteuer	425	2013-02-01	\N	2	219	\N	449	2099	2013	Alcohol Duty
1898	2013-03-01	Alkoholsteuer	580	2013-03-01	\N	3	155	\N	577	2126	2013	Alcohol Duty
1899	2013-04-01	Alkoholsteuer	721	2013-04-01	\N	4	141	\N	726	2118	2013	Alcohol Duty
1900	2013-05-01	Alkoholsteuer	903	2013-05-01	\N	5	182	\N	903	2123	2013	Alcohol Duty
1901	2013-06-01	Alkoholsteuer	1052	2013-06-01	\N	6	149	\N	1067	2108	2013	Alcohol Duty
1902	2013-07-01	Alkoholsteuer	1222	2013-07-01	\N	7	170	\N	1245	2100	2013	Alcohol Duty
1903	2013-08-01	Alkoholsteuer	1380	2013-08-01	\N	8	158	\N	1406	2097	2013	Alcohol Duty
1904	2013-09-01	Alkoholsteuer	1559	2013-09-01	\N	9	179	\N	1574	2108	2013	Alcohol Duty
1905	2013-10-01	Alkoholsteuer	1718	2013-10-01	\N	10	159	\N	1737	2104	2013	Alcohol Duty
1906	2013-11-01	Alkoholsteuer	1888	2013-11-01	\N	11	170	\N	1904	2107	2013	Alcohol Duty
1907	2013-12-01	Alkoholsteuer	2104	2013-12-01	\N	12	216	\N	2123	2104	2013	Alcohol Duty
1908	2014-01-01	Alkoholsteuer	197	2014-01-01	\N	1	197	\N	206	2095	2014	Alcohol Duty
1909	2014-02-01	Alkoholsteuer	421	2014-02-01	\N	2	224	\N	425	2100	2014	Alcohol Duty
1910	2014-03-01	Alkoholsteuer	556	2014-03-01	\N	3	135	\N	580	2080	2014	Alcohol Duty
1911	2014-04-01	Alkoholsteuer	699	2014-04-01	\N	4	143	\N	721	2082	2014	Alcohol Duty
1912	2014-05-01	Alkoholsteuer	858	2014-05-01	\N	5	159	\N	903	2059	2014	Alcohol Duty
1913	2014-06-01	Alkoholsteuer	1026	2014-06-01	\N	6	168	\N	1052	2078	2014	Alcohol Duty
1914	2014-07-01	Alkoholsteuer	1181	2014-07-01	\N	7	155	\N	1222	2063	2014	Alcohol Duty
1915	2014-08-01	Alkoholsteuer	1355	2014-08-01	\N	8	174	\N	1380	2079	2014	Alcohol Duty
1916	2014-09-01	Alkoholsteuer	1526	2014-09-01	\N	9	171	\N	1559	2071	2014	Alcohol Duty
1917	2014-10-01	Alkoholsteuer	1674	2014-10-01	\N	10	148	\N	1718	2060	2014	Alcohol Duty
1918	2014-11-01	Alkoholsteuer	1844	2014-11-01	\N	11	170	\N	1888	2060	2014	Alcohol Duty
1919	2014-12-01	Alkoholsteuer	2061	2014-12-01	\N	12	217	\N	2104	2061	2014	Alcohol Duty
1920	2015-01-01	Alkoholsteuer	189	2015-01-01	\N	1	189	\N	197	2053	2015	Alcohol Duty
1921	2015-02-01	Alkoholsteuer	431	2015-02-01	\N	2	242	\N	421	2071	2015	Alcohol Duty
1922	2015-03-01	Alkoholsteuer	570	2015-03-01	\N	3	139	\N	556	2075	2015	Alcohol Duty
1923	2015-04-01	Alkoholsteuer	708	2015-04-01	\N	4	138	\N	699	2070	2015	Alcohol Duty
1924	2015-05-01	Alkoholsteuer	892	2015-05-01	\N	5	184	\N	858	2095	2015	Alcohol Duty
1925	2015-06-01	Alkoholsteuer	1041	2015-06-01	\N	6	149	\N	1026	2076	2015	Alcohol Duty
1926	2015-07-01	Alkoholsteuer	1197	2015-07-01	\N	7	156	\N	1181	2077	2015	Alcohol Duty
1927	2015-08-01	Alkoholsteuer	1366	2015-08-01	\N	8	169	\N	1355	2072	2015	Alcohol Duty
1928	2015-09-01	Alkoholsteuer	1537	2015-09-01	\N	9	171	\N	1526	2072	2015	Alcohol Duty
1929	2015-10-01	Alkoholsteuer	1690	2015-10-01	\N	10	153	\N	1674	2077	2015	Alcohol Duty
1930	2015-11-01	Alkoholsteuer	1865	2015-11-01	\N	11	175	\N	1844	2082	2015	Alcohol Duty
1931	2015-12-01	Alkoholsteuer	2072	2015-12-01	\N	12	207	\N	2061	2072	2015	Alcohol Duty
1932	2016-01-01	Alkoholsteuer	195	2016-01-01	\N	1	195	\N	189	2078	2016	Alcohol Duty
1933	2016-02-01	Alkoholsteuer	434	2016-02-01	\N	2	239	\N	431	2075	2016	Alcohol Duty
1934	2016-03-01	Alkoholsteuer	566	2016-03-01	\N	3	132	\N	570	2068	2016	Alcohol Duty
1935	2016-04-01	Alkoholsteuer	708	2016-04-01	\N	4	142	\N	708	2072	2016	Alcohol Duty
1936	2016-05-01	Alkoholsteuer	886	2016-05-01	\N	5	178	\N	892	2066	2016	Alcohol Duty
1937	2016-06-01	Alkoholsteuer	1039	2016-06-01	\N	6	153	\N	1041	2070	2016	Alcohol Duty
1938	2016-07-01	Alkoholsteuer	1210	2016-07-01	\N	7	171	\N	1197	2085	2016	Alcohol Duty
1939	2016-08-01	Alkoholsteuer	1375	2016-08-01	\N	8	165	\N	1366	2081	2016	Alcohol Duty
1940	2016-09-01	Alkoholsteuer	1539	2016-09-01	\N	9	164	\N	1537	2074	2016	Alcohol Duty
1941	2016-10-01	Alkoholsteuer	1710	2016-10-01	\N	10	171	\N	1690	2092	2016	Alcohol Duty
1942	2016-11-01	Alkoholsteuer	1873	2016-11-01	\N	11	163	\N	1865	2080	2016	Alcohol Duty
1943	2016-12-01	Alkoholsteuer	2072	2016-12-01	\N	12	199	\N	2072	2072	2016	Alcohol Duty
1944	2017-01-01	Alkoholsteuer	214	2017-01-01	\N	1	214	\N	195	2091	2017	Alcohol Duty
1945	2017-02-01	Alkoholsteuer	453	2017-02-01	\N	2	239	\N	434	2091	2017	Alcohol Duty
1946	2017-03-01	Alkoholsteuer	578	2017-03-01	\N	3	125	\N	566	2084	2017	Alcohol Duty
1947	2017-04-01	Alkoholsteuer	718	2017-04-01	\N	4	140	\N	708	2082	2017	Alcohol Duty
1948	2017-05-01	Alkoholsteuer	900	2017-05-01	\N	5	182	\N	886	2086	2017	Alcohol Duty
1949	2017-06-01	Alkoholsteuer	1055	2017-06-01	\N	6	155	\N	1039	2088	2017	Alcohol Duty
1950	2017-07-01	Alkoholsteuer	1229	2017-07-01	\N	7	174	\N	1210	2091	2017	Alcohol Duty
1951	2017-08-01	Alkoholsteuer	1396	2017-08-01	\N	8	167	\N	1375	2093	2017	Alcohol Duty
1952	2017-09-01	Alkoholsteuer	1557	2017-09-01	\N	9	161	\N	1539	2090	2017	Alcohol Duty
1953	2017-10-01	Alkoholsteuer	1734	2017-10-01	\N	10	177	\N	1710	2096	2017	Alcohol Duty
1954	2017-11-01	Alkoholsteuer	1904	2017-11-01	\N	11	170	\N	1873	2103	2017	Alcohol Duty
1955	2017-12-01	Alkoholsteuer	2096	2017-12-01	\N	12	192	\N	2072	2096	2017	Alcohol Duty
1956	2018-01-01	Alkoholsteuer	221	2018-01-01	\N	1	221	\N	214	2103	2018	Alcohol Duty
1957	2018-02-01	Alkoholsteuer	449	2018-02-01	\N	2	228	\N	453	2092	2018	Alcohol Duty
1958	2018-03-01	Alkoholsteuer	592	2018-03-01	\N	3	143	\N	578	2110	2018	Alcohol Duty
1959	2018-04-01	Alkoholsteuer	725	2018-04-01	\N	4	133	\N	718	2103	2018	Alcohol Duty
1960	2018-05-01	Alkoholsteuer	916	2018-05-01	\N	5	191	\N	900	2112	2018	Alcohol Duty
1961	2018-06-01	Alkoholsteuer	1058	2018-06-01	\N	6	142	\N	1055	2099	2018	Alcohol Duty
1962	2018-07-01	Alkoholsteuer	1234	2018-07-01	\N	7	176	\N	1229	2101	2018	Alcohol Duty
1963	2018-08-01	Alkoholsteuer	1418	2018-08-01	\N	8	184	\N	1396	2118	2018	Alcohol Duty
1964	2018-09-01	Alkoholsteuer	1589	2018-09-01	\N	9	171	\N	1557	2128	2018	Alcohol Duty
1965	2018-10-01	Alkoholsteuer	1757	2018-10-01	\N	10	168	\N	1734	2119	2018	Alcohol Duty
1966	2018-11-01	Alkoholsteuer	1917	2018-11-01	\N	11	160	\N	1904	2109	2018	Alcohol Duty
1967	2018-12-01	Alkoholsteuer	2135	2018-12-01	\N	12	218	\N	2096	2135	2018	Alcohol Duty
1968	2011-05-01	Luftverkehrsteuer	267	2011-05-01	\N	5	\N	\N	0	\N	2011	Aviation Tax
1969	2011-06-01	Luftverkehrsteuer	348	2011-06-01	\N	6	81	\N	0	\N	2011	Aviation Tax
1970	2011-07-01	Luftverkehrsteuer	434	2011-07-01	\N	7	86	\N	0	\N	2011	Aviation Tax
1971	2011-08-01	Luftverkehrsteuer	530	2011-08-01	\N	8	96	\N	0	\N	2011	Aviation Tax
1972	2011-09-01	Luftverkehrsteuer	622	2011-09-01	\N	9	92	\N	0	\N	2011	Aviation Tax
1973	2011-10-01	Luftverkehrsteuer	712	2011-10-01	\N	10	90	\N	0	\N	2011	Aviation Tax
1974	2011-11-01	Luftverkehrsteuer	811	2011-11-01	\N	11	99	\N	0	\N	2011	Aviation Tax
1975	2011-12-01	Luftverkehrsteuer	905	2011-12-01	\N	12	94	\N	0	\N	2011	Aviation Tax
1976	2012-01-01	Luftverkehrsteuer	54	2012-01-01	\N	1	54	\N	0	\N	2012	Aviation Tax
1977	2012-02-01	Luftverkehrsteuer	119	2012-02-01	\N	2	65	\N	59	\N	2012	Aviation Tax
1978	2012-03-01	Luftverkehrsteuer	187	2012-03-01	\N	3	68	\N	119	\N	2012	Aviation Tax
1979	2012-04-01	Luftverkehrsteuer	265	2012-04-01	\N	4	78	\N	191	\N	2012	Aviation Tax
1980	2012-05-01	Luftverkehrsteuer	338	2012-05-01	\N	5	73	\N	267	976	2012	Aviation Tax
1981	2012-06-01	Luftverkehrsteuer	421	2012-06-01	\N	6	83	\N	348	978	2012	Aviation Tax
1982	2012-07-01	Luftverkehrsteuer	506	2012-07-01	\N	7	85	\N	434	977	2012	Aviation Tax
1983	2012-08-01	Luftverkehrsteuer	601	2012-08-01	\N	8	95	\N	530	976	2012	Aviation Tax
1984	2012-09-01	Luftverkehrsteuer	671	2012-09-01	\N	9	70	\N	622	954	2012	Aviation Tax
1985	2012-10-01	Luftverkehrsteuer	780	2012-10-01	\N	10	109	\N	712	973	2012	Aviation Tax
1986	2012-11-01	Luftverkehrsteuer	868	2012-11-01	\N	11	88	\N	811	962	2012	Aviation Tax
1987	2012-12-01	Luftverkehrsteuer	948	2012-12-01	\N	12	80	\N	905	948	2012	Aviation Tax
1988	2013-01-01	Luftverkehrsteuer	60	2013-01-01	\N	1	60	\N	54	954	2013	Aviation Tax
1989	2013-02-01	Luftverkehrsteuer	121	2013-02-01	\N	2	61	\N	119	950	2013	Aviation Tax
1990	2013-03-01	Luftverkehrsteuer	183	2013-03-01	\N	3	62	\N	187	944	2013	Aviation Tax
1991	2013-04-01	Luftverkehrsteuer	262	2013-04-01	\N	4	79	\N	265	945	2013	Aviation Tax
1992	2013-05-01	Luftverkehrsteuer	324	2013-05-01	\N	5	62	\N	338	934	2013	Aviation Tax
1993	2013-06-01	Luftverkehrsteuer	420	2013-06-01	\N	6	96	\N	421	947	2013	Aviation Tax
2859	2020-08-01	Lohnsteuer	\N	2020-08-01	98577.4869605853746	8	\N	102973.169801080716	\N	98577.4869605853746	2020	Wages Tax
1994	2013-07-01	Luftverkehrsteuer	505	2013-07-01	\N	7	85	\N	506	947	2013	Aviation Tax
1995	2013-08-01	Luftverkehrsteuer	596	2013-08-01	\N	8	91	\N	601	943	2013	Aviation Tax
1996	2013-09-01	Luftverkehrsteuer	680	2013-09-01	\N	9	84	\N	671	957	2013	Aviation Tax
1997	2013-10-01	Luftverkehrsteuer	783	2013-10-01	\N	10	103	\N	780	951	2013	Aviation Tax
1998	2013-11-01	Luftverkehrsteuer	874	2013-11-01	\N	11	91	\N	868	954	2013	Aviation Tax
1999	2013-12-01	Luftverkehrsteuer	978	2013-12-01	\N	12	104	\N	948	978	2013	Aviation Tax
2000	2014-01-01	Luftverkehrsteuer	36	2014-01-01	\N	1	36	\N	60	954	2014	Aviation Tax
2001	2014-02-01	Luftverkehrsteuer	99	2014-02-01	\N	2	63	\N	121	956	2014	Aviation Tax
2002	2014-03-01	Luftverkehrsteuer	164	2014-03-01	\N	3	65	\N	183	959	2014	Aviation Tax
2003	2014-04-01	Luftverkehrsteuer	233	2014-04-01	\N	4	69	\N	262	949	2014	Aviation Tax
2004	2014-05-01	Luftverkehrsteuer	315	2014-05-01	\N	5	82	\N	324	969	2014	Aviation Tax
2005	2014-06-01	Luftverkehrsteuer	399	2014-06-01	\N	6	84	\N	420	957	2014	Aviation Tax
2006	2014-07-01	Luftverkehrsteuer	488	2014-07-01	\N	7	89	\N	505	961	2014	Aviation Tax
2007	2014-08-01	Luftverkehrsteuer	585	2014-08-01	\N	8	97	\N	596	967	2014	Aviation Tax
2008	2014-09-01	Luftverkehrsteuer	683	2014-09-01	\N	9	98	\N	680	981	2014	Aviation Tax
2009	2014-10-01	Luftverkehrsteuer	780	2014-10-01	\N	10	97	\N	783	975	2014	Aviation Tax
2010	2014-11-01	Luftverkehrsteuer	872	2014-11-01	\N	11	92	\N	874	976	2014	Aviation Tax
2011	2014-12-01	Luftverkehrsteuer	990	2014-12-01	\N	12	118	\N	978	990	2014	Aviation Tax
2012	2015-01-01	Luftverkehrsteuer	34	2015-01-01	\N	1	34	\N	36	988	2015	Aviation Tax
2013	2015-02-01	Luftverkehrsteuer	94	2015-02-01	\N	2	60	\N	99	985	2015	Aviation Tax
2014	2015-03-01	Luftverkehrsteuer	159	2015-03-01	\N	3	65	\N	164	985	2015	Aviation Tax
2015	2015-04-01	Luftverkehrsteuer	245	2015-04-01	\N	4	86	\N	233	1002	2015	Aviation Tax
2016	2015-05-01	Luftverkehrsteuer	322	2015-05-01	\N	5	77	\N	315	997	2015	Aviation Tax
2017	2015-06-01	Luftverkehrsteuer	416	2015-06-01	\N	6	94	\N	399	1007	2015	Aviation Tax
2018	2015-07-01	Luftverkehrsteuer	504	2015-07-01	\N	7	88	\N	488	1006	2015	Aviation Tax
2019	2015-08-01	Luftverkehrsteuer	607	2015-08-01	\N	8	103	\N	585	1012	2015	Aviation Tax
2020	2015-09-01	Luftverkehrsteuer	711	2015-09-01	\N	9	104	\N	683	1018	2015	Aviation Tax
2021	2015-10-01	Luftverkehrsteuer	805	2015-10-01	\N	10	94	\N	780	1015	2015	Aviation Tax
2022	2015-11-01	Luftverkehrsteuer	906	2015-11-01	\N	11	101	\N	872	1024	2015	Aviation Tax
2023	2015-12-01	Luftverkehrsteuer	1023	2015-12-01	\N	12	117	\N	990	1023	2015	Aviation Tax
2024	2016-01-01	Luftverkehrsteuer	38	2016-01-01	\N	1	38	\N	34	1027	2016	Aviation Tax
2025	2016-02-01	Luftverkehrsteuer	107	2016-02-01	\N	2	69	\N	94	1036	2016	Aviation Tax
2026	2016-03-01	Luftverkehrsteuer	178	2016-03-01	\N	3	71	\N	159	1042	2016	Aviation Tax
2027	2016-04-01	Luftverkehrsteuer	265	2016-04-01	\N	4	87	\N	245	1043	2016	Aviation Tax
2028	2016-05-01	Luftverkehrsteuer	345	2016-05-01	\N	5	80	\N	322	1046	2016	Aviation Tax
2029	2016-06-01	Luftverkehrsteuer	436	2016-06-01	\N	6	91	\N	416	1043	2016	Aviation Tax
2030	2016-07-01	Luftverkehrsteuer	521	2016-07-01	\N	7	85	\N	504	1040	2016	Aviation Tax
2031	2016-08-01	Luftverkehrsteuer	634	2016-08-01	\N	8	113	\N	607	1050	2016	Aviation Tax
2032	2016-09-01	Luftverkehrsteuer	736	2016-09-01	\N	9	102	\N	711	1048	2016	Aviation Tax
2033	2016-10-01	Luftverkehrsteuer	842	2016-10-01	\N	10	106	\N	805	1060	2016	Aviation Tax
2034	2016-11-01	Luftverkehrsteuer	937	2016-11-01	\N	11	95	\N	906	1054	2016	Aviation Tax
2035	2016-12-01	Luftverkehrsteuer	1074	2016-12-01	\N	12	137	\N	1023	1074	2016	Aviation Tax
2036	2017-01-01	Luftverkehrsteuer	40	2017-01-01	\N	1	40	\N	38	1076	2017	Aviation Tax
2037	2017-02-01	Luftverkehrsteuer	112	2017-02-01	\N	2	72	\N	107	1079	2017	Aviation Tax
2038	2017-03-01	Luftverkehrsteuer	190	2017-03-01	\N	3	78	\N	178	1086	2017	Aviation Tax
2039	2017-04-01	Luftverkehrsteuer	278	2017-04-01	\N	4	88	\N	265	1087	2017	Aviation Tax
2040	2017-05-01	Luftverkehrsteuer	374	2017-05-01	\N	5	96	\N	345	1103	2017	Aviation Tax
2041	2017-06-01	Luftverkehrsteuer	468	2017-06-01	\N	6	94	\N	436	1106	2017	Aviation Tax
2042	2017-07-01	Luftverkehrsteuer	571	2017-07-01	\N	7	103	\N	521	1124	2017	Aviation Tax
2043	2017-08-01	Luftverkehrsteuer	675	2017-08-01	\N	8	104	\N	634	1115	2017	Aviation Tax
2044	2017-09-01	Luftverkehrsteuer	782	2017-09-01	\N	9	107	\N	736	1120	2017	Aviation Tax
2045	2017-10-01	Luftverkehrsteuer	884	2017-10-01	\N	10	102	\N	842	1116	2017	Aviation Tax
2046	2017-11-01	Luftverkehrsteuer	1000	2017-11-01	\N	11	116	\N	937	1137	2017	Aviation Tax
2047	2017-12-01	Luftverkehrsteuer	1121	2017-12-01	\N	12	121	\N	1074	1121	2017	Aviation Tax
2048	2018-01-01	Luftverkehrsteuer	35	2018-01-01	\N	1	35	\N	40	1116	2018	Aviation Tax
2049	2018-02-01	Luftverkehrsteuer	110	2018-02-01	\N	2	75	\N	112	1119	2018	Aviation Tax
2050	2018-03-01	Luftverkehrsteuer	193	2018-03-01	\N	3	83	\N	190	1124	2018	Aviation Tax
2051	2018-04-01	Luftverkehrsteuer	291	2018-04-01	\N	4	98	\N	278	1134	2018	Aviation Tax
2052	2018-05-01	Luftverkehrsteuer	382	2018-05-01	\N	5	91	\N	374	1129	2018	Aviation Tax
2053	2018-06-01	Luftverkehrsteuer	482	2018-06-01	\N	6	100	\N	468	1135	2018	Aviation Tax
2054	2018-07-01	Luftverkehrsteuer	584	2018-07-01	\N	7	102	\N	571	1134	2018	Aviation Tax
2055	2018-08-01	Luftverkehrsteuer	707	2018-08-01	\N	8	123	\N	675	1153	2018	Aviation Tax
2056	2018-09-01	Luftverkehrsteuer	818	2018-09-01	\N	9	111	\N	782	1157	2018	Aviation Tax
2057	2018-10-01	Luftverkehrsteuer	940	2018-10-01	\N	10	122	\N	884	1177	2018	Aviation Tax
2058	2018-11-01	Luftverkehrsteuer	1057	2018-11-01	\N	11	117	\N	1000	1178	2018	Aviation Tax
2059	2018-12-01	Luftverkehrsteuer	1187	2018-12-01	\N	12	130	\N	1121	1187	2018	Aviation Tax
2060	2008-01-01	Ergänzungszuweisungen an Länder	0	2008-01-01	\N	1	0	\N	0	\N	2008	Supplementary Grants to Länder
2061	2008-02-01	Ergänzungszuweisungen an Länder	0	2008-02-01	\N	2	0	\N	0	\N	2008	Supplementary Grants to Länder
2062	2008-03-01	Ergänzungszuweisungen an Länder	-3603	2008-03-01	\N	3	-3603	\N	0	\N	2008	Supplementary Grants to Länder
2063	2008-04-01	Ergänzungszuweisungen an Länder	-3603	2008-04-01	\N	4	0	\N	0	\N	2008	Supplementary Grants to Länder
2064	2008-05-01	Ergänzungszuweisungen an Länder	-3613	2008-05-01	\N	5	-10	\N	0	\N	2008	Supplementary Grants to Länder
2065	2008-06-01	Ergänzungszuweisungen an Länder	-7259	2008-06-01	\N	6	-3646	\N	0	\N	2008	Supplementary Grants to Länder
2066	2008-07-01	Ergänzungszuweisungen an Länder	-7259	2008-07-01	\N	7	0	\N	0	\N	2008	Supplementary Grants to Länder
2067	2008-08-01	Ergänzungszuweisungen an Länder	-7259	2008-08-01	\N	8	0	\N	0	\N	2008	Supplementary Grants to Länder
2068	2008-09-01	Ergänzungszuweisungen an Länder	-11093	2008-09-01	\N	9	-3834	\N	0	\N	2008	Supplementary Grants to Länder
2069	2008-10-01	Ergänzungszuweisungen an Länder	-11093	2008-10-01	\N	10	0	\N	0	\N	2008	Supplementary Grants to Länder
2070	2008-11-01	Ergänzungszuweisungen an Länder	-11093	2008-11-01	\N	11	0	\N	0	\N	2008	Supplementary Grants to Länder
2071	2008-12-01	Ergänzungszuweisungen an Länder	-14850	2008-12-01	\N	12	-3757	\N	0	-14850	2008	Supplementary Grants to Länder
2072	2009-01-01	Ergänzungszuweisungen an Länder	0	2009-01-01	\N	1	0	\N	0	-14850	2009	Supplementary Grants to Länder
2073	2009-02-01	Ergänzungszuweisungen an Länder	0	2009-02-01	\N	2	0	\N	0	-14850	2009	Supplementary Grants to Länder
2074	2009-03-01	Ergänzungszuweisungen an Länder	-3445	2009-03-01	\N	3	-3445	\N	-3603	-14692	2009	Supplementary Grants to Länder
2075	2009-04-01	Ergänzungszuweisungen an Länder	-3445	2009-04-01	\N	4	0	\N	-3603	-14692	2009	Supplementary Grants to Länder
2076	2009-05-01	Ergänzungszuweisungen an Länder	-3445	2009-05-01	\N	5	0	\N	-3613	-14682	2009	Supplementary Grants to Länder
2077	2009-06-01	Ergänzungszuweisungen an Länder	-6891	2009-06-01	\N	6	-3446	\N	-7259	-14482	2009	Supplementary Grants to Länder
2078	2009-07-01	Ergänzungszuweisungen an Länder	-6891	2009-07-01	\N	7	0	\N	-7259	-14482	2009	Supplementary Grants to Länder
2079	2009-08-01	Ergänzungszuweisungen an Länder	-6891	2009-08-01	\N	8	0	\N	-7259	-14482	2009	Supplementary Grants to Länder
2080	2009-09-01	Ergänzungszuweisungen an Länder	-10245	2009-09-01	\N	9	-3354	\N	-11093	-14002	2009	Supplementary Grants to Länder
2081	2009-10-01	Ergänzungszuweisungen an Länder	-10245	2009-10-01	\N	10	0	\N	-11093	-14002	2009	Supplementary Grants to Länder
2082	2009-11-01	Ergänzungszuweisungen an Länder	-10245	2009-11-01	\N	11	0	\N	-11093	-14002	2009	Supplementary Grants to Länder
2083	2009-12-01	Ergänzungszuweisungen an Länder	-13462	2009-12-01	\N	12	-3217	\N	-14850	-13462	2009	Supplementary Grants to Länder
2084	2010-01-01	Ergänzungszuweisungen an Länder	0	2010-01-01	\N	1	0	\N	0	-13462	2010	Supplementary Grants to Länder
2085	2010-02-01	Ergänzungszuweisungen an Länder	0	2010-02-01	\N	2	0	\N	0	-13462	2010	Supplementary Grants to Länder
2086	2010-03-01	Ergänzungszuweisungen an Länder	-3188	2010-03-01	\N	3	-3188	\N	-3445	-13205	2010	Supplementary Grants to Länder
2087	2010-04-01	Ergänzungszuweisungen an Länder	-3188	2010-04-01	\N	4	0	\N	-3445	-13205	2010	Supplementary Grants to Länder
2088	2010-05-01	Ergänzungszuweisungen an Länder	-3188	2010-05-01	\N	5	0	\N	-3445	-13205	2010	Supplementary Grants to Länder
2089	2010-06-01	Ergänzungszuweisungen an Länder	-6348	2010-06-01	\N	6	-3160	\N	-6891	-12919	2010	Supplementary Grants to Länder
2090	2010-07-01	Ergänzungszuweisungen an Länder	-6348	2010-07-01	\N	7	0	\N	-6891	-12919	2010	Supplementary Grants to Länder
2091	2010-08-01	Ergänzungszuweisungen an Länder	-6348	2010-08-01	\N	8	0	\N	-6891	-12919	2010	Supplementary Grants to Länder
2092	2010-09-01	Ergänzungszuweisungen an Länder	-9731	2010-09-01	\N	9	-3383	\N	-10245	-12948	2010	Supplementary Grants to Länder
2093	2010-10-01	Ergänzungszuweisungen an Länder	-9731	2010-10-01	\N	10	0	\N	-10245	-12948	2010	Supplementary Grants to Länder
2094	2010-11-01	Ergänzungszuweisungen an Länder	-9710	2010-11-01	\N	11	21	\N	-10245	-12927	2010	Supplementary Grants to Länder
2095	2010-12-01	Ergänzungszuweisungen an Länder	-12880	2010-12-01	\N	12	-3170	\N	-13462	-12880	2010	Supplementary Grants to Länder
2096	2011-01-01	Ergänzungszuweisungen an Länder	0	2011-01-01	\N	1	0	\N	0	-12880	2011	Supplementary Grants to Länder
2097	2011-02-01	Ergänzungszuweisungen an Länder	0	2011-02-01	\N	2	0	\N	0	-12880	2011	Supplementary Grants to Länder
2098	2011-03-01	Ergänzungszuweisungen an Länder	-2996	2011-03-01	\N	3	-2996	\N	-3188	-12688	2011	Supplementary Grants to Länder
2099	2011-04-01	Ergänzungszuweisungen an Länder	-2996	2011-04-01	\N	4	0	\N	-3188	-12688	2011	Supplementary Grants to Länder
2100	2011-05-01	Ergänzungszuweisungen an Länder	-2996	2011-05-01	\N	5	0	\N	-3188	-12688	2011	Supplementary Grants to Länder
2101	2011-06-01	Ergänzungszuweisungen an Länder	-6104	2011-06-01	\N	6	-3108	\N	-6348	-12636	2011	Supplementary Grants to Länder
2102	2011-07-01	Ergänzungszuweisungen an Länder	-6104	2011-07-01	\N	7	0	\N	-6348	-12636	2011	Supplementary Grants to Länder
2103	2011-08-01	Ergänzungszuweisungen an Länder	-6104	2011-08-01	\N	8	0	\N	-6348	-12636	2011	Supplementary Grants to Länder
2104	2011-09-01	Ergänzungszuweisungen an Länder	-9240	2011-09-01	\N	9	-3136	\N	-9731	-12389	2011	Supplementary Grants to Länder
2105	2011-10-01	Ergänzungszuweisungen an Länder	-9240	2011-10-01	\N	10	0	\N	-9731	-12389	2011	Supplementary Grants to Länder
2106	2011-11-01	Ergänzungszuweisungen an Länder	-9240	2011-11-01	\N	11	0	\N	-9710	-12410	2011	Supplementary Grants to Länder
2107	2011-12-01	Ergänzungszuweisungen an Länder	-12110	2011-12-01	\N	12	-2870	\N	-12880	-12110	2011	Supplementary Grants to Länder
2108	2012-01-01	Ergänzungszuweisungen an Länder	0	2012-01-01	\N	1	0	\N	0	-12110	2012	Supplementary Grants to Länder
2109	2012-02-01	Ergänzungszuweisungen an Länder	0	2012-02-01	\N	2	0	\N	0	-12110	2012	Supplementary Grants to Länder
2110	2012-03-01	Ergänzungszuweisungen an Länder	-2812	2012-03-01	\N	3	-2812	\N	-2996	-11926	2012	Supplementary Grants to Länder
2111	2012-04-01	Ergänzungszuweisungen an Länder	-2812	2012-04-01	\N	4	0	\N	-2996	-11926	2012	Supplementary Grants to Länder
2112	2012-05-01	Ergänzungszuweisungen an Länder	-2812	2012-05-01	\N	5	0	\N	-2996	-11926	2012	Supplementary Grants to Länder
2113	2012-06-01	Ergänzungszuweisungen an Länder	-5671	2012-06-01	\N	6	-2859	\N	-6104	-11677	2012	Supplementary Grants to Länder
2114	2012-07-01	Ergänzungszuweisungen an Länder	-5671	2012-07-01	\N	7	0	\N	-6104	-11677	2012	Supplementary Grants to Länder
2115	2012-08-01	Ergänzungszuweisungen an Länder	-5671	2012-08-01	\N	8	0	\N	-6104	-11677	2012	Supplementary Grants to Länder
2116	2012-09-01	Ergänzungszuweisungen an Länder	-8495	2012-09-01	\N	9	-2824	\N	-9240	-11365	2012	Supplementary Grants to Länder
2117	2012-10-01	Ergänzungszuweisungen an Länder	-8495	2012-10-01	\N	10	0	\N	-9240	-11365	2012	Supplementary Grants to Länder
2118	2012-11-01	Ergänzungszuweisungen an Länder	-8495	2012-11-01	\N	11	0	\N	-9240	-11365	2012	Supplementary Grants to Länder
2119	2012-12-01	Ergänzungszuweisungen an Länder	-11621	2012-12-01	\N	12	-3126	\N	-12110	-11621	2012	Supplementary Grants to Länder
2120	2013-01-01	Ergänzungszuweisungen an Länder	0	2013-01-01	\N	1	0	\N	0	-11621	2013	Supplementary Grants to Länder
2121	2013-02-01	Ergänzungszuweisungen an Länder	0	2013-02-01	\N	2	0	\N	0	-11621	2013	Supplementary Grants to Länder
2122	2013-03-01	Ergänzungszuweisungen an Länder	-2448	2013-03-01	\N	3	-2448	\N	-2812	-11257	2013	Supplementary Grants to Länder
2123	2013-04-01	Ergänzungszuweisungen an Länder	-2448	2013-04-01	\N	4	0	\N	-2812	-11257	2013	Supplementary Grants to Länder
2124	2013-05-01	Ergänzungszuweisungen an Länder	-2448	2013-05-01	\N	5	0	\N	-2812	-11257	2013	Supplementary Grants to Länder
2125	2013-06-01	Ergänzungszuweisungen an Länder	-5317	2013-06-01	\N	6	-2869	\N	-5671	-11267	2013	Supplementary Grants to Länder
2126	2013-07-01	Ergänzungszuweisungen an Länder	-5317	2013-07-01	\N	7	0	\N	-5671	-11267	2013	Supplementary Grants to Länder
2127	2013-08-01	Ergänzungszuweisungen an Länder	-5317	2013-08-01	\N	8	0	\N	-5671	-11267	2013	Supplementary Grants to Länder
2128	2013-09-01	Ergänzungszuweisungen an Länder	-8025	2013-09-01	\N	9	-2708	\N	-8495	-11151	2013	Supplementary Grants to Länder
2129	2013-10-01	Ergänzungszuweisungen an Länder	-8050	2013-10-01	\N	10	-25	\N	-8495	-11176	2013	Supplementary Grants to Länder
2130	2013-11-01	Ergänzungszuweisungen an Länder	-8050	2013-11-01	\N	11	0	\N	-8495	-11176	2013	Supplementary Grants to Länder
2131	2013-12-01	Ergänzungszuweisungen an Länder	-10792	2013-12-01	\N	12	-2742	\N	-11621	-10792	2013	Supplementary Grants to Länder
2132	2014-01-01	Ergänzungszuweisungen an Länder	0	2014-01-01	\N	1	0	\N	0	-10792	2014	Supplementary Grants to Länder
2133	2014-02-01	Ergänzungszuweisungen an Länder	0	2014-02-01	\N	2	0	\N	0	-10792	2014	Supplementary Grants to Länder
2134	2014-03-01	Ergänzungszuweisungen an Länder	-2565	2014-03-01	\N	3	-2565	\N	-2448	-10909	2014	Supplementary Grants to Länder
2135	2014-04-01	Ergänzungszuweisungen an Länder	-2565	2014-04-01	\N	4	0	\N	-2448	-10909	2014	Supplementary Grants to Länder
2136	2014-05-01	Ergänzungszuweisungen an Länder	-2565	2014-05-01	\N	5	0	\N	-2448	-10909	2014	Supplementary Grants to Länder
2137	2014-06-01	Ergänzungszuweisungen an Länder	-5296	2014-06-01	\N	6	-2731	\N	-5317	-10771	2014	Supplementary Grants to Länder
2138	2014-07-01	Ergänzungszuweisungen an Länder	-5296	2014-07-01	\N	7	0	\N	-5317	-10771	2014	Supplementary Grants to Länder
2139	2014-08-01	Ergänzungszuweisungen an Länder	-5296	2014-08-01	\N	8	0	\N	-5317	-10771	2014	Supplementary Grants to Länder
2140	2014-09-01	Ergänzungszuweisungen an Länder	-8000	2014-09-01	\N	9	-2704	\N	-8025	-10767	2014	Supplementary Grants to Länder
2141	2014-10-01	Ergänzungszuweisungen an Länder	-8000	2014-10-01	\N	10	0	\N	-8050	-10742	2014	Supplementary Grants to Länder
2142	2014-11-01	Ergänzungszuweisungen an Länder	-7988	2014-11-01	\N	11	12	\N	-8050	-10730	2014	Supplementary Grants to Länder
2143	2014-12-01	Ergänzungszuweisungen an Länder	-10681	2014-12-01	\N	12	-2693	\N	-10792	-10681	2014	Supplementary Grants to Länder
2144	2015-01-01	Ergänzungszuweisungen an Länder	0	2015-01-01	\N	1	0	\N	0	-10681	2015	Supplementary Grants to Länder
2145	2015-02-01	Ergänzungszuweisungen an Länder	0	2015-02-01	\N	2	0	\N	0	-10681	2015	Supplementary Grants to Länder
2146	2015-03-01	Ergänzungszuweisungen an Länder	-2360	2015-03-01	\N	3	-2360	\N	-2565	-10476	2015	Supplementary Grants to Länder
2147	2015-04-01	Ergänzungszuweisungen an Länder	-2360	2015-04-01	\N	4	0	\N	-2565	-10476	2015	Supplementary Grants to Länder
2148	2015-05-01	Ergänzungszuweisungen an Länder	-2360	2015-05-01	\N	5	0	\N	-2565	-10476	2015	Supplementary Grants to Länder
2149	2015-06-01	Ergänzungszuweisungen an Länder	-4920	2015-06-01	\N	6	-2560	\N	-5296	-10305	2015	Supplementary Grants to Länder
2150	2015-07-01	Ergänzungszuweisungen an Länder	-4920	2015-07-01	\N	7	0	\N	-5296	-10305	2015	Supplementary Grants to Länder
2151	2015-08-01	Ergänzungszuweisungen an Länder	-4920	2015-08-01	\N	8	0	\N	-5296	-10305	2015	Supplementary Grants to Länder
2152	2015-09-01	Ergänzungszuweisungen an Länder	-7606	2015-09-01	\N	9	-2686	\N	-8000	-10287	2015	Supplementary Grants to Länder
2153	2015-10-01	Ergänzungszuweisungen an Länder	-7606	2015-10-01	\N	10	0	\N	-8000	-10287	2015	Supplementary Grants to Länder
2154	2015-11-01	Ergänzungszuweisungen an Länder	-7606	2015-11-01	\N	11	0	\N	-7988	-10299	2015	Supplementary Grants to Länder
2155	2015-12-01	Ergänzungszuweisungen an Länder	-10041	2015-12-01	\N	12	-2435	\N	-10681	-10041	2015	Supplementary Grants to Länder
2156	2016-01-01	Ergänzungszuweisungen an Länder	0	2016-01-01	\N	1	0	\N	0	-10041	2016	Supplementary Grants to Länder
2157	2016-02-01	Ergänzungszuweisungen an Länder	0	2016-02-01	\N	2	0	\N	0	-10041	2016	Supplementary Grants to Länder
2158	2016-03-01	Ergänzungszuweisungen an Länder	-2388	2016-03-01	\N	3	-2388	\N	-2360	-10069	2016	Supplementary Grants to Länder
2159	2016-04-01	Ergänzungszuweisungen an Länder	-2388	2016-04-01	\N	4	0	\N	-2360	-10069	2016	Supplementary Grants to Länder
2160	2016-05-01	Ergänzungszuweisungen an Länder	-2388	2016-05-01	\N	5	0	\N	-2360	-10069	2016	Supplementary Grants to Länder
2161	2016-06-01	Ergänzungszuweisungen an Länder	-4803	2016-06-01	\N	6	-2415	\N	-4920	-9924	2016	Supplementary Grants to Länder
2162	2016-07-01	Ergänzungszuweisungen an Länder	-4803	2016-07-01	\N	7	0	\N	-4920	-9924	2016	Supplementary Grants to Länder
2163	2016-08-01	Ergänzungszuweisungen an Länder	-4803	2016-08-01	\N	8	0	\N	-4920	-9924	2016	Supplementary Grants to Länder
2164	2016-09-01	Ergänzungszuweisungen an Länder	-7484	2016-09-01	\N	9	-2681	\N	-7606	-9919	2016	Supplementary Grants to Länder
2165	2016-10-01	Ergänzungszuweisungen an Länder	-7484	2016-10-01	\N	10	0	\N	-7606	-9919	2016	Supplementary Grants to Länder
2166	2016-11-01	Ergänzungszuweisungen an Länder	-7484	2016-11-01	\N	11	0	\N	-7606	-9919	2016	Supplementary Grants to Länder
2167	2016-12-01	Ergänzungszuweisungen an Länder	-9845	2016-12-01	\N	12	-2361	\N	-10041	-9845	2016	Supplementary Grants to Länder
2168	2017-01-01	Ergänzungszuweisungen an Länder	0	2017-01-01	\N	1	0	\N	0	-9845	2017	Supplementary Grants to Länder
2169	2017-02-01	Ergänzungszuweisungen an Länder	0	2017-02-01	\N	2	0	\N	0	-9845	2017	Supplementary Grants to Länder
2170	2017-03-01	Ergänzungszuweisungen an Länder	-2271	2017-03-01	\N	3	-2271	\N	-2388	-9728	2017	Supplementary Grants to Länder
2171	2017-04-01	Ergänzungszuweisungen an Länder	-2271	2017-04-01	\N	4	0	\N	-2388	-9728	2017	Supplementary Grants to Länder
2172	2017-05-01	Ergänzungszuweisungen an Länder	-2271	2017-05-01	\N	5	0	\N	-2388	-9728	2017	Supplementary Grants to Länder
2173	2017-06-01	Ergänzungszuweisungen an Länder	-4761	2017-06-01	\N	6	-2490	\N	-4803	-9803	2017	Supplementary Grants to Länder
2174	2017-07-01	Ergänzungszuweisungen an Länder	-4761	2017-07-01	\N	7	0	\N	-4803	-9803	2017	Supplementary Grants to Länder
2175	2017-08-01	Ergänzungszuweisungen an Länder	-4761	2017-08-01	\N	8	0	\N	-4803	-9803	2017	Supplementary Grants to Länder
2176	2017-09-01	Ergänzungszuweisungen an Länder	-7093	2017-09-01	\N	9	-2332	\N	-7484	-9454	2017	Supplementary Grants to Länder
2177	2017-10-01	Ergänzungszuweisungen an Länder	-7093	2017-10-01	\N	10	0	\N	-7484	-9454	2017	Supplementary Grants to Länder
2178	2017-11-01	Ergänzungszuweisungen an Länder	-7093	2017-11-01	\N	11	0	\N	-7484	-9454	2017	Supplementary Grants to Länder
2179	2017-12-01	Ergänzungszuweisungen an Länder	-9229	2017-12-01	\N	12	-2136	\N	-9845	-9229	2017	Supplementary Grants to Länder
2180	2018-01-01	Ergänzungszuweisungen an Länder	0	2018-01-01	\N	1	0	\N	0	-9229	2018	Supplementary Grants to Länder
2181	2018-02-01	Ergänzungszuweisungen an Länder	-15	2018-02-01	\N	2	-15	\N	0	-9244	2018	Supplementary Grants to Länder
2182	2018-03-01	Ergänzungszuweisungen an Länder	-2026	2018-03-01	\N	3	-2011	\N	-2271	-8984	2018	Supplementary Grants to Länder
2183	2018-04-01	Ergänzungszuweisungen an Länder	-2026	2018-04-01	\N	4	0	\N	-2271	-8984	2018	Supplementary Grants to Länder
2184	2018-05-01	Ergänzungszuweisungen an Länder	-2026	2018-05-01	\N	5	0	\N	-2271	-8984	2018	Supplementary Grants to Länder
2185	2018-06-01	Ergänzungszuweisungen an Länder	-4245	2018-06-01	\N	6	-2219	\N	-4761	-8713	2018	Supplementary Grants to Länder
2186	2018-07-01	Ergänzungszuweisungen an Länder	-4245	2018-07-01	\N	7	0	\N	-4761	-8713	2018	Supplementary Grants to Länder
2187	2018-08-01	Ergänzungszuweisungen an Länder	-4245	2018-08-01	\N	8	0	\N	-4761	-8713	2018	Supplementary Grants to Länder
2188	2018-09-01	Ergänzungszuweisungen an Länder	-6652	2018-09-01	\N	9	-2407	\N	-7093	-8788	2018	Supplementary Grants to Länder
2189	2018-10-01	Ergänzungszuweisungen an Länder	-6724	2018-10-01	\N	10	-72	\N	-7093	-8860	2018	Supplementary Grants to Länder
2190	2018-11-01	Ergänzungszuweisungen an Länder	-6724	2018-11-01	\N	11	0	\N	-7093	-8860	2018	Supplementary Grants to Länder
2191	2018-12-01	Ergänzungszuweisungen an Länder	-8486	2018-12-01	\N	12	-1762	\N	-9229	-8486	2018	Supplementary Grants to Länder
2192	2008-01-01	BNE-Eigenmittel der EU	-1438	2008-01-01	\N	1	-1438	\N	0	\N	2008	EU Own Resources (GNI-Based)
2193	2008-02-01	BNE-Eigenmittel der EU	-4122	2008-02-01	\N	2	-2684	\N	0	\N	2008	EU Own Resources (GNI-Based)
2194	2008-03-01	BNE-Eigenmittel der EU	-5449	2008-03-01	\N	3	-1327	\N	0	\N	2008	EU Own Resources (GNI-Based)
2195	2008-04-01	BNE-Eigenmittel der EU	-6775	2008-04-01	\N	4	-1326	\N	0	\N	2008	EU Own Resources (GNI-Based)
2196	2008-05-01	BNE-Eigenmittel der EU	-7589	2008-05-01	\N	5	-814	\N	0	\N	2008	EU Own Resources (GNI-Based)
2197	2008-06-01	BNE-Eigenmittel der EU	-8253	2008-06-01	\N	6	-664	\N	0	\N	2008	EU Own Resources (GNI-Based)
2198	2008-07-01	BNE-Eigenmittel der EU	-8771	2008-07-01	\N	7	-518	\N	0	\N	2008	EU Own Resources (GNI-Based)
2199	2008-08-01	BNE-Eigenmittel der EU	-9547	2008-08-01	\N	8	-776	\N	0	\N	2008	EU Own Resources (GNI-Based)
2200	2008-09-01	BNE-Eigenmittel der EU	-10452	2008-09-01	\N	9	-905	\N	0	\N	2008	EU Own Resources (GNI-Based)
2201	2008-10-01	BNE-Eigenmittel der EU	-12166	2008-10-01	\N	10	-1714	\N	0	\N	2008	EU Own Resources (GNI-Based)
2202	2008-11-01	BNE-Eigenmittel der EU	-13501	2008-11-01	\N	11	-1335	\N	0	\N	2008	EU Own Resources (GNI-Based)
2203	2008-12-01	BNE-Eigenmittel der EU	-15340	2008-12-01	\N	12	-1839	\N	0	-15340	2008	EU Own Resources (GNI-Based)
2204	2009-01-01	BNE-Eigenmittel der EU	-1238	2009-01-01	\N	1	-1238	\N	-1438	-15140	2009	EU Own Resources (GNI-Based)
2205	2009-02-01	BNE-Eigenmittel der EU	-3639	2009-02-01	\N	2	-2401	\N	-4122	-14857	2009	EU Own Resources (GNI-Based)
2206	2009-03-01	BNE-Eigenmittel der EU	-4896	2009-03-01	\N	3	-1257	\N	-5449	-14787	2009	EU Own Resources (GNI-Based)
2207	2009-04-01	BNE-Eigenmittel der EU	-6152	2009-04-01	\N	4	-1256	\N	-6775	-14717	2009	EU Own Resources (GNI-Based)
2208	2009-05-01	BNE-Eigenmittel der EU	-6905	2009-05-01	\N	5	-753	\N	-7589	-14656	2009	EU Own Resources (GNI-Based)
2209	2009-06-01	BNE-Eigenmittel der EU	-6068	2009-06-01	\N	6	837	\N	-8253	-13155	2009	EU Own Resources (GNI-Based)
2210	2009-07-01	BNE-Eigenmittel der EU	-6593	2009-07-01	\N	7	-525	\N	-8771	-13162	2009	EU Own Resources (GNI-Based)
2211	2009-08-01	BNE-Eigenmittel der EU	-7775	2009-08-01	\N	8	-1182	\N	-9547	-13568	2009	EU Own Resources (GNI-Based)
2212	2009-09-01	BNE-Eigenmittel der EU	-8694	2009-09-01	\N	9	-919	\N	-10452	-13582	2009	EU Own Resources (GNI-Based)
2213	2009-10-01	BNE-Eigenmittel der EU	-11690	2009-10-01	\N	10	-2996	\N	-12166	-14864	2009	EU Own Resources (GNI-Based)
2214	2009-11-01	BNE-Eigenmittel der EU	-13171	2009-11-01	\N	11	-1481	\N	-13501	-15010	2009	EU Own Resources (GNI-Based)
2215	2009-12-01	BNE-Eigenmittel der EU	-14880	2009-12-01	\N	12	-1709	\N	-15340	-14880	2009	EU Own Resources (GNI-Based)
2216	2010-01-01	BNE-Eigenmittel der EU	-2025	2010-01-01	\N	1	-2025	\N	-1238	-15667	2010	EU Own Resources (GNI-Based)
2217	2010-02-01	BNE-Eigenmittel der EU	-5676	2010-02-01	\N	2	-3651	\N	-3639	-16917	2010	EU Own Resources (GNI-Based)
2218	2010-03-01	BNE-Eigenmittel der EU	-6475	2010-03-01	\N	3	-799	\N	-4896	-16459	2010	EU Own Resources (GNI-Based)
2219	2010-04-01	BNE-Eigenmittel der EU	-7275	2010-04-01	\N	4	-800	\N	-6152	-16003	2010	EU Own Resources (GNI-Based)
2220	2010-05-01	BNE-Eigenmittel der EU	-8553	2010-05-01	\N	5	-1278	\N	-6905	-16528	2010	EU Own Resources (GNI-Based)
2221	2010-06-01	BNE-Eigenmittel der EU	-9193	2010-06-01	\N	6	-640	\N	-6068	-18005	2010	EU Own Resources (GNI-Based)
2222	2010-07-01	BNE-Eigenmittel der EU	-10473	2010-07-01	\N	7	-1280	\N	-6593	-18760	2010	EU Own Resources (GNI-Based)
2223	2010-08-01	BNE-Eigenmittel der EU	-11765	2010-08-01	\N	8	-1292	\N	-7775	-18870	2010	EU Own Resources (GNI-Based)
2224	2010-09-01	BNE-Eigenmittel der EU	-13326	2010-09-01	\N	9	-1561	\N	-8694	-19512	2010	EU Own Resources (GNI-Based)
2225	2010-10-01	BNE-Eigenmittel der EU	-14886	2010-10-01	\N	10	-1560	\N	-11690	-18076	2010	EU Own Resources (GNI-Based)
2226	2010-11-01	BNE-Eigenmittel der EU	-16518	2010-11-01	\N	11	-1632	\N	-13171	-18227	2010	EU Own Resources (GNI-Based)
2227	2010-12-01	BNE-Eigenmittel der EU	-18153	2010-12-01	\N	12	-1635	\N	-14880	-18153	2010	EU Own Resources (GNI-Based)
2228	2011-01-01	BNE-Eigenmittel der EU	-1615	2011-01-01	\N	1	-1615	\N	-2025	-17743	2011	EU Own Resources (GNI-Based)
2229	2011-02-01	BNE-Eigenmittel der EU	-5979	2011-02-01	\N	2	-4364	\N	-5676	-18456	2011	EU Own Resources (GNI-Based)
2230	2011-03-01	BNE-Eigenmittel der EU	-6948	2011-03-01	\N	3	-969	\N	-6475	-18626	2011	EU Own Resources (GNI-Based)
2231	2011-04-01	BNE-Eigenmittel der EU	-7756	2011-04-01	\N	4	-808	\N	-7275	-18634	2011	EU Own Resources (GNI-Based)
2232	2011-05-01	BNE-Eigenmittel der EU	-8887	2011-05-01	\N	5	-1131	\N	-8553	-18487	2011	EU Own Resources (GNI-Based)
2233	2011-06-01	BNE-Eigenmittel der EU	-9856	2011-06-01	\N	6	-969	\N	-9193	-18816	2011	EU Own Resources (GNI-Based)
2234	2011-07-01	BNE-Eigenmittel der EU	-11311	2011-07-01	\N	7	-1455	\N	-10473	-18991	2011	EU Own Resources (GNI-Based)
2235	2011-08-01	BNE-Eigenmittel der EU	-12311	2011-08-01	\N	8	-1000	\N	-11765	-18699	2011	EU Own Resources (GNI-Based)
2236	2011-09-01	BNE-Eigenmittel der EU	-13850	2011-09-01	\N	9	-1539	\N	-13326	-18677	2011	EU Own Resources (GNI-Based)
2237	2011-10-01	BNE-Eigenmittel der EU	-15389	2011-10-01	\N	10	-1539	\N	-14886	-18656	2011	EU Own Resources (GNI-Based)
2238	2011-11-01	BNE-Eigenmittel der EU	-16874	2011-11-01	\N	11	-1485	\N	-16518	-18509	2011	EU Own Resources (GNI-Based)
2239	2011-12-01	BNE-Eigenmittel der EU	-18003	2011-12-01	\N	12	-1129	\N	-18153	-18003	2011	EU Own Resources (GNI-Based)
2240	2012-01-01	BNE-Eigenmittel der EU	-1462	2012-01-01	\N	1	-1462	\N	-1615	-17850	2012	EU Own Resources (GNI-Based)
2241	2012-02-01	BNE-Eigenmittel der EU	-6268	2012-02-01	\N	2	-4806	\N	-5979	-18292	2012	EU Own Resources (GNI-Based)
2242	2012-03-01	BNE-Eigenmittel der EU	-7890	2012-03-01	\N	3	-1622	\N	-6948	-18945	2012	EU Own Resources (GNI-Based)
2243	2012-04-01	BNE-Eigenmittel der EU	-9513	2012-04-01	\N	4	-1623	\N	-7756	-19760	2012	EU Own Resources (GNI-Based)
2244	2012-05-01	BNE-Eigenmittel der EU	-10973	2012-05-01	\N	5	-1460	\N	-8887	-20089	2012	EU Own Resources (GNI-Based)
2245	2012-06-01	BNE-Eigenmittel der EU	-11784	2012-06-01	\N	6	-811	\N	-9856	-19931	2012	EU Own Resources (GNI-Based)
2246	2012-07-01	BNE-Eigenmittel der EU	-12595	2012-07-01	\N	7	-811	\N	-11311	-19287	2012	EU Own Resources (GNI-Based)
2247	2012-08-01	BNE-Eigenmittel der EU	-13989	2012-08-01	\N	8	-1394	\N	-12311	-19681	2012	EU Own Resources (GNI-Based)
2248	2012-09-01	BNE-Eigenmittel der EU	-15586	2012-09-01	\N	9	-1597	\N	-13850	-19739	2012	EU Own Resources (GNI-Based)
2249	2012-10-01	BNE-Eigenmittel der EU	-16863	2012-10-01	\N	10	-1277	\N	-15389	-19477	2012	EU Own Resources (GNI-Based)
2250	2012-11-01	BNE-Eigenmittel der EU	-17821	2012-11-01	\N	11	-958	\N	-16874	-18950	2012	EU Own Resources (GNI-Based)
2251	2012-12-01	BNE-Eigenmittel der EU	-19826	2012-12-01	\N	12	-2005	\N	-18003	-19826	2012	EU Own Resources (GNI-Based)
2252	2013-01-01	BNE-Eigenmittel der EU	-3056	2013-01-01	\N	1	-3056	\N	-1462	-21420	2013	EU Own Resources (GNI-Based)
2253	2013-02-01	BNE-Eigenmittel der EU	-7517	2013-02-01	\N	2	-4461	\N	-6268	-21075	2013	EU Own Resources (GNI-Based)
2254	2013-03-01	BNE-Eigenmittel der EU	-9210	2013-03-01	\N	3	-1693	\N	-7890	-21146	2013	EU Own Resources (GNI-Based)
2255	2013-04-01	BNE-Eigenmittel der EU	-10903	2013-04-01	\N	4	-1693	\N	-9513	-21216	2013	EU Own Resources (GNI-Based)
2256	2013-05-01	BNE-Eigenmittel der EU	-12596	2013-05-01	\N	5	-1693	\N	-10973	-21449	2013	EU Own Resources (GNI-Based)
2257	2013-06-01	BNE-Eigenmittel der EU	-14289	2013-06-01	\N	6	-1693	\N	-11784	-22331	2013	EU Own Resources (GNI-Based)
2258	2013-07-01	BNE-Eigenmittel der EU	-15982	2013-07-01	\N	7	-1693	\N	-12595	-23213	2013	EU Own Resources (GNI-Based)
2259	2013-08-01	BNE-Eigenmittel der EU	-17696	2013-08-01	\N	8	-1714	\N	-13989	-23533	2013	EU Own Resources (GNI-Based)
2260	2013-09-01	BNE-Eigenmittel der EU	-19391	2013-09-01	\N	9	-1695	\N	-15586	-23631	2013	EU Own Resources (GNI-Based)
2261	2013-10-01	BNE-Eigenmittel der EU	-21424	2013-10-01	\N	10	-2033	\N	-16863	-24387	2013	EU Own Resources (GNI-Based)
2262	2013-11-01	BNE-Eigenmittel der EU	-21424	2013-11-01	\N	11	0	\N	-17821	-23429	2013	EU Own Resources (GNI-Based)
2263	2013-12-01	BNE-Eigenmittel der EU	-24787	2013-12-01	\N	12	-3363	\N	-19826	-24787	2013	EU Own Resources (GNI-Based)
2264	2014-01-01	BNE-Eigenmittel der EU	-2113	2014-01-01	\N	1	-2113	\N	-3056	-23844	2014	EU Own Resources (GNI-Based)
2265	2014-02-01	BNE-Eigenmittel der EU	-7006	2014-02-01	\N	2	-4893	\N	-7517	-24276	2014	EU Own Resources (GNI-Based)
2266	2014-03-01	BNE-Eigenmittel der EU	-8758	2014-03-01	\N	3	-1752	\N	-9210	-24335	2014	EU Own Resources (GNI-Based)
2267	2014-04-01	BNE-Eigenmittel der EU	-10509	2014-04-01	\N	4	-1751	\N	-10903	-24393	2014	EU Own Resources (GNI-Based)
2268	2014-05-01	BNE-Eigenmittel der EU	-12261	2014-05-01	\N	5	-1752	\N	-12596	-24452	2014	EU Own Resources (GNI-Based)
2269	2014-06-01	BNE-Eigenmittel der EU	-13837	2014-06-01	\N	6	-1576	\N	-14289	-24335	2014	EU Own Resources (GNI-Based)
2270	2014-07-01	BNE-Eigenmittel der EU	-15063	2014-07-01	\N	7	-1226	\N	-15982	-23868	2014	EU Own Resources (GNI-Based)
2271	2014-08-01	BNE-Eigenmittel der EU	-16114	2014-08-01	\N	8	-1051	\N	-17696	-23205	2014	EU Own Resources (GNI-Based)
2272	2014-09-01	BNE-Eigenmittel der EU	-16815	2014-09-01	\N	9	-701	\N	-19391	-22211	2014	EU Own Resources (GNI-Based)
2273	2014-10-01	BNE-Eigenmittel der EU	-19267	2014-10-01	\N	10	-2452	\N	-21424	-22630	2014	EU Own Resources (GNI-Based)
2274	2014-11-01	BNE-Eigenmittel der EU	-19267	2014-11-01	\N	11	0	\N	-21424	-22630	2014	EU Own Resources (GNI-Based)
2275	2014-12-01	BNE-Eigenmittel der EU	-22419	2014-12-01	\N	12	-3152	\N	-24787	-22419	2014	EU Own Resources (GNI-Based)
2276	2015-01-01	BNE-Eigenmittel der EU	-1876	2015-01-01	\N	1	-1876	\N	-2113	-22182	2015	EU Own Resources (GNI-Based)
2277	2015-02-01	BNE-Eigenmittel der EU	-6813	2015-02-01	\N	2	-4937	\N	-7006	-22226	2015	EU Own Resources (GNI-Based)
2278	2015-03-01	BNE-Eigenmittel der EU	-8687	2015-03-01	\N	3	-1874	\N	-8758	-22348	2015	EU Own Resources (GNI-Based)
2279	2015-04-01	BNE-Eigenmittel der EU	-10560	2015-04-01	\N	4	-1873	\N	-10509	-22470	2015	EU Own Resources (GNI-Based)
2280	2015-05-01	BNE-Eigenmittel der EU	-12434	2015-05-01	\N	5	-1874	\N	-12261	-22592	2015	EU Own Resources (GNI-Based)
2281	2015-06-01	BNE-Eigenmittel der EU	-13746	2015-06-01	\N	6	-1312	\N	-13837	-22328	2015	EU Own Resources (GNI-Based)
2282	2015-07-01	BNE-Eigenmittel der EU	-14495	2015-07-01	\N	7	-749	\N	-15063	-21851	2015	EU Own Resources (GNI-Based)
2283	2015-08-01	BNE-Eigenmittel der EU	-15776	2015-08-01	\N	8	-1281	\N	-16114	-22081	2015	EU Own Resources (GNI-Based)
2284	2015-09-01	BNE-Eigenmittel der EU	-16331	2015-09-01	\N	9	-555	\N	-16815	-21935	2015	EU Own Resources (GNI-Based)
2285	2015-10-01	BNE-Eigenmittel der EU	-17810	2015-10-01	\N	10	-1479	\N	-19267	-20962	2015	EU Own Resources (GNI-Based)
2286	2015-11-01	BNE-Eigenmittel der EU	-19361	2015-11-01	\N	11	-1551	\N	-19267	-22513	2015	EU Own Resources (GNI-Based)
2287	2015-12-01	BNE-Eigenmittel der EU	-21578	2015-12-01	\N	12	-2217	\N	-22419	-21578	2015	EU Own Resources (GNI-Based)
2288	2016-01-01	BNE-Eigenmittel der EU	-167	2016-01-01	\N	1	-167	\N	-1876	-19869	2016	EU Own Resources (GNI-Based)
2289	2016-02-01	BNE-Eigenmittel der EU	-4090	2016-02-01	\N	2	-3923	\N	-6813	-18855	2016	EU Own Resources (GNI-Based)
2290	2016-03-01	BNE-Eigenmittel der EU	-5938	2016-03-01	\N	3	-1848	\N	-8687	-18829	2016	EU Own Resources (GNI-Based)
2291	2016-04-01	BNE-Eigenmittel der EU	-6862	2016-04-01	\N	4	-924	\N	-10560	-17880	2016	EU Own Resources (GNI-Based)
2292	2016-05-01	BNE-Eigenmittel der EU	-8341	2016-05-01	\N	5	-1479	\N	-12434	-17485	2016	EU Own Resources (GNI-Based)
2293	2016-06-01	BNE-Eigenmittel der EU	-9265	2016-06-01	\N	6	-924	\N	-13746	-17097	2016	EU Own Resources (GNI-Based)
2294	2016-07-01	BNE-Eigenmittel der EU	-10929	2016-07-01	\N	7	-1664	\N	-14495	-18012	2016	EU Own Resources (GNI-Based)
2295	2016-08-01	BNE-Eigenmittel der EU	-12587	2016-08-01	\N	8	-1658	\N	-15776	-18389	2016	EU Own Resources (GNI-Based)
2296	2016-09-01	BNE-Eigenmittel der EU	-14412	2016-09-01	\N	9	-1825	\N	-16331	-19659	2016	EU Own Resources (GNI-Based)
2297	2016-10-01	BNE-Eigenmittel der EU	-18061	2016-10-01	\N	10	-3649	\N	-17810	-21829	2016	EU Own Resources (GNI-Based)
2298	2016-11-01	BNE-Eigenmittel der EU	-18061	2016-11-01	\N	11	0	\N	-19361	-20278	2016	EU Own Resources (GNI-Based)
2299	2016-12-01	BNE-Eigenmittel der EU	-19911	2016-12-01	\N	12	-1850	\N	-21578	-19911	2016	EU Own Resources (GNI-Based)
2300	2017-01-01	BNE-Eigenmittel der EU	-2991	2017-01-01	\N	1	-2991	\N	-167	-22735	2017	EU Own Resources (GNI-Based)
2301	2017-02-01	BNE-Eigenmittel der EU	-976	2017-02-01	\N	2	2015	\N	-4090	-16797	2017	EU Own Resources (GNI-Based)
2302	2017-03-01	BNE-Eigenmittel der EU	-379	2017-03-01	\N	3	597	\N	-5938	-14352	2017	EU Own Resources (GNI-Based)
2303	2017-04-01	BNE-Eigenmittel der EU	-2073	2017-04-01	\N	4	-1694	\N	-6862	-15122	2017	EU Own Resources (GNI-Based)
2304	2017-05-01	BNE-Eigenmittel der EU	-3767	2017-05-01	\N	5	-1694	\N	-8341	-15337	2017	EU Own Resources (GNI-Based)
2305	2017-06-01	BNE-Eigenmittel der EU	-5427	2017-06-01	\N	6	-1660	\N	-9265	-16073	2017	EU Own Resources (GNI-Based)
2306	2017-07-01	BNE-Eigenmittel der EU	-7121	2017-07-01	\N	7	-1694	\N	-10929	-16103	2017	EU Own Resources (GNI-Based)
2307	2017-08-01	BNE-Eigenmittel der EU	-7899	2017-08-01	\N	8	-778	\N	-12587	-15223	2017	EU Own Resources (GNI-Based)
2308	2017-09-01	BNE-Eigenmittel der EU	-9478	2017-09-01	\N	9	-1579	\N	-14412	-14977	2017	EU Own Resources (GNI-Based)
2309	2017-10-01	BNE-Eigenmittel der EU	-11058	2017-10-01	\N	10	-1580	\N	-18061	-12908	2017	EU Own Resources (GNI-Based)
2310	2017-11-01	BNE-Eigenmittel der EU	-12637	2017-11-01	\N	11	-1579	\N	-18061	-14487	2017	EU Own Resources (GNI-Based)
2311	2017-12-01	BNE-Eigenmittel der EU	-14258	2017-12-01	\N	12	-1621	\N	-19911	-14258	2017	EU Own Resources (GNI-Based)
2312	2018-01-01	BNE-Eigenmittel der EU	-167	2018-01-01	\N	1	-167	\N	-2991	-11434	2018	EU Own Resources (GNI-Based)
2313	2018-02-01	BNE-Eigenmittel der EU	-3329	2018-02-01	\N	2	-3162	\N	-976	-16611	2018	EU Own Resources (GNI-Based)
2314	2018-03-01	BNE-Eigenmittel der EU	-5197	2018-03-01	\N	3	-1868	\N	-379	-19076	2018	EU Own Resources (GNI-Based)
2315	2018-04-01	BNE-Eigenmittel der EU	-6878	2018-04-01	\N	4	-1681	\N	-2073	-19063	2018	EU Own Resources (GNI-Based)
2316	2018-05-01	BNE-Eigenmittel der EU	-8186	2018-05-01	\N	5	-1308	\N	-3767	-18677	2018	EU Own Resources (GNI-Based)
2317	2018-06-01	BNE-Eigenmittel der EU	-9347	2018-06-01	\N	6	-1161	\N	-5427	-18178	2018	EU Own Resources (GNI-Based)
2318	2018-07-01	BNE-Eigenmittel der EU	-11041	2018-07-01	\N	7	-1694	\N	-7121	-18178	2018	EU Own Resources (GNI-Based)
2319	2018-08-01	BNE-Eigenmittel der EU	-12831	2018-08-01	\N	8	-1790	\N	-7899	-19190	2018	EU Own Resources (GNI-Based)
2320	2018-09-01	BNE-Eigenmittel der EU	-14690	2018-09-01	\N	9	-1859	\N	-9478	-19470	2018	EU Own Resources (GNI-Based)
2321	2018-10-01	BNE-Eigenmittel der EU	-18417	2018-10-01	\N	10	-3727	\N	-11058	-21617	2018	EU Own Resources (GNI-Based)
2322	2018-11-01	BNE-Eigenmittel der EU	-18417	2018-11-01	\N	11	0	\N	-12637	-20038	2018	EU Own Resources (GNI-Based)
2323	2018-12-01	BNE-Eigenmittel der EU	-21147	2018-12-01	\N	12	-2730	\N	-14258	-21147	2018	EU Own Resources (GNI-Based)
2324	2008-01-01	Mehrwertsteuer-Eigenmittel der EU	-631	2008-01-01	\N	1	-631	\N	0	\N	2008	EU Own Resources (VAT-Based)
2325	2008-02-01	Mehrwertsteuer-Eigenmittel der EU	-1262	2008-02-01	\N	2	-631	\N	0	\N	2008	EU Own Resources (VAT-Based)
2326	2008-03-01	Mehrwertsteuer-Eigenmittel der EU	-1578	2008-03-01	\N	3	-316	\N	0	\N	2008	EU Own Resources (VAT-Based)
2327	2008-04-01	Mehrwertsteuer-Eigenmittel der EU	-1893	2008-04-01	\N	4	-315	\N	0	\N	2008	EU Own Resources (VAT-Based)
2328	2008-05-01	Mehrwertsteuer-Eigenmittel der EU	-2083	2008-05-01	\N	5	-190	\N	0	\N	2008	EU Own Resources (VAT-Based)
2329	2008-06-01	Mehrwertsteuer-Eigenmittel der EU	-2240	2008-06-01	\N	6	-157	\N	0	\N	2008	EU Own Resources (VAT-Based)
2330	2008-07-01	Mehrwertsteuer-Eigenmittel der EU	-2430	2008-07-01	\N	7	-190	\N	0	\N	2008	EU Own Resources (VAT-Based)
2331	2008-08-01	Mehrwertsteuer-Eigenmittel der EU	-2619	2008-08-01	\N	8	-189	\N	0	\N	2008	EU Own Resources (VAT-Based)
2332	2008-09-01	Mehrwertsteuer-Eigenmittel der EU	-2840	2008-09-01	\N	9	-221	\N	0	\N	2008	EU Own Resources (VAT-Based)
2333	2008-10-01	Mehrwertsteuer-Eigenmittel der EU	-3118	2008-10-01	\N	10	-278	\N	0	\N	2008	EU Own Resources (VAT-Based)
2334	2008-11-01	Mehrwertsteuer-Eigenmittel der EU	-3429	2008-11-01	\N	11	-311	\N	0	\N	2008	EU Own Resources (VAT-Based)
2335	2008-12-01	Mehrwertsteuer-Eigenmittel der EU	-3738	2008-12-01	\N	12	-309	\N	0	-3738	2008	EU Own Resources (VAT-Based)
2336	2009-01-01	Mehrwertsteuer-Eigenmittel der EU	-332	2009-01-01	\N	1	-332	\N	-631	-3439	2009	EU Own Resources (VAT-Based)
2337	2009-02-01	Mehrwertsteuer-Eigenmittel der EU	-1327	2009-02-01	\N	2	-995	\N	-1262	-3803	2009	EU Own Resources (VAT-Based)
2338	2009-03-01	Mehrwertsteuer-Eigenmittel der EU	-1659	2009-03-01	\N	3	-332	\N	-1578	-3819	2009	EU Own Resources (VAT-Based)
2339	2009-04-01	Mehrwertsteuer-Eigenmittel der EU	-1991	2009-04-01	\N	4	-332	\N	-1893	-3836	2009	EU Own Resources (VAT-Based)
2340	2009-05-01	Mehrwertsteuer-Eigenmittel der EU	-2190	2009-05-01	\N	5	-199	\N	-2083	-3845	2009	EU Own Resources (VAT-Based)
2341	2009-06-01	Mehrwertsteuer-Eigenmittel der EU	-1182	2009-06-01	\N	6	1008	\N	-2240	-2680	2009	EU Own Resources (VAT-Based)
2342	2009-07-01	Mehrwertsteuer-Eigenmittel der EU	-1249	2009-07-01	\N	7	-67	\N	-2430	-2557	2009	EU Own Resources (VAT-Based)
2343	2009-08-01	Mehrwertsteuer-Eigenmittel der EU	-1401	2009-08-01	\N	8	-152	\N	-2619	-2520	2009	EU Own Resources (VAT-Based)
2344	2009-09-01	Mehrwertsteuer-Eigenmittel der EU	-1519	2009-09-01	\N	9	-118	\N	-2840	-2417	2009	EU Own Resources (VAT-Based)
2345	2009-10-01	Mehrwertsteuer-Eigenmittel der EU	-1578	2009-10-01	\N	10	-59	\N	-3118	-2198	2009	EU Own Resources (VAT-Based)
2346	2009-11-01	Mehrwertsteuer-Eigenmittel der EU	-1735	2009-11-01	\N	11	-157	\N	-3429	-2044	2009	EU Own Resources (VAT-Based)
2347	2009-12-01	Mehrwertsteuer-Eigenmittel der EU	-2017	2009-12-01	\N	12	-282	\N	-3738	-2017	2009	EU Own Resources (VAT-Based)
2348	2010-01-01	Mehrwertsteuer-Eigenmittel der EU	-199	2010-01-01	\N	1	-199	\N	-332	-1884	2010	EU Own Resources (VAT-Based)
2349	2010-02-01	Mehrwertsteuer-Eigenmittel der EU	-611	2010-02-01	\N	2	-412	\N	-1327	-1301	2010	EU Own Resources (VAT-Based)
2350	2010-03-01	Mehrwertsteuer-Eigenmittel der EU	-687	2010-03-01	\N	3	-76	\N	-1659	-1045	2010	EU Own Resources (VAT-Based)
2351	2010-04-01	Mehrwertsteuer-Eigenmittel der EU	-764	2010-04-01	\N	4	-77	\N	-1991	-790	2010	EU Own Resources (VAT-Based)
2352	2010-05-01	Mehrwertsteuer-Eigenmittel der EU	-885	2010-05-01	\N	5	-121	\N	-2190	-712	2010	EU Own Resources (VAT-Based)
2353	2010-06-01	Mehrwertsteuer-Eigenmittel der EU	-947	2010-06-01	\N	6	-62	\N	-1182	-1782	2010	EU Own Resources (VAT-Based)
2354	2010-07-01	Mehrwertsteuer-Eigenmittel der EU	-1074	2010-07-01	\N	7	-127	\N	-1249	-1842	2010	EU Own Resources (VAT-Based)
2355	2010-08-01	Mehrwertsteuer-Eigenmittel der EU	-1226	2010-08-01	\N	8	-152	\N	-1401	-1842	2010	EU Own Resources (VAT-Based)
2356	2010-09-01	Mehrwertsteuer-Eigenmittel der EU	-1379	2010-09-01	\N	9	-153	\N	-1519	-1877	2010	EU Own Resources (VAT-Based)
2357	2010-10-01	Mehrwertsteuer-Eigenmittel der EU	-1532	2010-10-01	\N	10	-153	\N	-1578	-1971	2010	EU Own Resources (VAT-Based)
2358	2010-11-01	Mehrwertsteuer-Eigenmittel der EU	-1692	2010-11-01	\N	11	-160	\N	-1735	-1974	2010	EU Own Resources (VAT-Based)
2359	2010-12-01	Mehrwertsteuer-Eigenmittel der EU	-1836	2010-12-01	\N	12	-144	\N	-2017	-1836	2010	EU Own Resources (VAT-Based)
2360	2011-01-01	Mehrwertsteuer-Eigenmittel der EU	-150	2011-01-01	\N	1	-150	\N	-199	-1787	2011	EU Own Resources (VAT-Based)
2361	2011-02-01	Mehrwertsteuer-Eigenmittel der EU	-555	2011-02-01	\N	2	-405	\N	-611	-1780	2011	EU Own Resources (VAT-Based)
2362	2011-03-01	Mehrwertsteuer-Eigenmittel der EU	-646	2011-03-01	\N	3	-91	\N	-687	-1795	2011	EU Own Resources (VAT-Based)
2363	2011-04-01	Mehrwertsteuer-Eigenmittel der EU	-721	2011-04-01	\N	4	-75	\N	-764	-1793	2011	EU Own Resources (VAT-Based)
2364	2011-05-01	Mehrwertsteuer-Eigenmittel der EU	-826	2011-05-01	\N	5	-105	\N	-885	-1777	2011	EU Own Resources (VAT-Based)
2875	2019-12-01	Veranlagte Einkommensteuer	\N	2019-12-01	26408.4434001750233	12	\N	26637.1528589175941	\N	26408.4434001750233	2019	Assessed Income Taxes
2365	2011-06-01	Mehrwertsteuer-Eigenmittel der EU	-916	2011-06-01	\N	6	-90	\N	-947	-1805	2011	EU Own Resources (VAT-Based)
2366	2011-07-01	Mehrwertsteuer-Eigenmittel der EU	-1051	2011-07-01	\N	7	-135	\N	-1074	-1813	2011	EU Own Resources (VAT-Based)
2367	2011-08-01	Mehrwertsteuer-Eigenmittel der EU	-1201	2011-08-01	\N	8	-150	\N	-1226	-1811	2011	EU Own Resources (VAT-Based)
2368	2011-09-01	Mehrwertsteuer-Eigenmittel der EU	-1351	2011-09-01	\N	9	-150	\N	-1379	-1808	2011	EU Own Resources (VAT-Based)
2369	2011-10-01	Mehrwertsteuer-Eigenmittel der EU	-1501	2011-10-01	\N	10	-150	\N	-1532	-1805	2011	EU Own Resources (VAT-Based)
2370	2011-11-01	Mehrwertsteuer-Eigenmittel der EU	-1718	2011-11-01	\N	11	-217	\N	-1692	-1862	2011	EU Own Resources (VAT-Based)
2371	2011-12-01	Mehrwertsteuer-Eigenmittel der EU	-1890	2011-12-01	\N	12	-172	\N	-1836	-1890	2011	EU Own Resources (VAT-Based)
2372	2012-01-01	Mehrwertsteuer-Eigenmittel der EU	-161	2012-01-01	\N	1	-161	\N	-150	-1901	2012	EU Own Resources (VAT-Based)
2373	2012-02-01	Mehrwertsteuer-Eigenmittel der EU	-644	2012-02-01	\N	2	-483	\N	-555	-1979	2012	EU Own Resources (VAT-Based)
2374	2012-03-01	Mehrwertsteuer-Eigenmittel der EU	-805	2012-03-01	\N	3	-161	\N	-646	-2049	2012	EU Own Resources (VAT-Based)
2375	2012-04-01	Mehrwertsteuer-Eigenmittel der EU	-966	2012-04-01	\N	4	-161	\N	-721	-2135	2012	EU Own Resources (VAT-Based)
2376	2012-05-01	Mehrwertsteuer-Eigenmittel der EU	-1111	2012-05-01	\N	5	-145	\N	-826	-2175	2012	EU Own Resources (VAT-Based)
2377	2012-06-01	Mehrwertsteuer-Eigenmittel der EU	-1191	2012-06-01	\N	6	-80	\N	-916	-2165	2012	EU Own Resources (VAT-Based)
2378	2012-07-01	Mehrwertsteuer-Eigenmittel der EU	-1272	2012-07-01	\N	7	-81	\N	-1051	-2111	2012	EU Own Resources (VAT-Based)
2379	2012-08-01	Mehrwertsteuer-Eigenmittel der EU	-1432	2012-08-01	\N	8	-160	\N	-1201	-2121	2012	EU Own Resources (VAT-Based)
2380	2012-09-01	Mehrwertsteuer-Eigenmittel der EU	-1593	2012-09-01	\N	9	-161	\N	-1351	-2132	2012	EU Own Resources (VAT-Based)
2381	2012-10-01	Mehrwertsteuer-Eigenmittel der EU	-1724	2012-10-01	\N	10	-131	\N	-1501	-2113	2012	EU Own Resources (VAT-Based)
2382	2012-11-01	Mehrwertsteuer-Eigenmittel der EU	-1821	2012-11-01	\N	11	-97	\N	-1718	-1993	2012	EU Own Resources (VAT-Based)
2383	2012-12-01	Mehrwertsteuer-Eigenmittel der EU	-2027	2012-12-01	\N	12	-206	\N	-1890	-2027	2012	EU Own Resources (VAT-Based)
2384	2013-01-01	Mehrwertsteuer-Eigenmittel der EU	-222	2013-01-01	\N	1	-222	\N	-161	-2088	2013	EU Own Resources (VAT-Based)
2385	2013-02-01	Mehrwertsteuer-Eigenmittel der EU	-684	2013-02-01	\N	2	-462	\N	-644	-2067	2013	EU Own Resources (VAT-Based)
2386	2013-03-01	Mehrwertsteuer-Eigenmittel der EU	-855	2013-03-01	\N	3	-171	\N	-805	-2077	2013	EU Own Resources (VAT-Based)
2387	2013-04-01	Mehrwertsteuer-Eigenmittel der EU	-1025	2013-04-01	\N	4	-170	\N	-966	-2086	2013	EU Own Resources (VAT-Based)
2388	2013-05-01	Mehrwertsteuer-Eigenmittel der EU	-1196	2013-05-01	\N	5	-171	\N	-1111	-2112	2013	EU Own Resources (VAT-Based)
2389	2013-06-01	Mehrwertsteuer-Eigenmittel der EU	-1367	2013-06-01	\N	6	-171	\N	-1191	-2203	2013	EU Own Resources (VAT-Based)
2390	2013-07-01	Mehrwertsteuer-Eigenmittel der EU	-1538	2013-07-01	\N	7	-171	\N	-1272	-2293	2013	EU Own Resources (VAT-Based)
2391	2013-08-01	Mehrwertsteuer-Eigenmittel der EU	-1709	2013-08-01	\N	8	-171	\N	-1432	-2304	2013	EU Own Resources (VAT-Based)
2392	2013-09-01	Mehrwertsteuer-Eigenmittel der EU	-1880	2013-09-01	\N	9	-171	\N	-1593	-2314	2013	EU Own Resources (VAT-Based)
2393	2013-10-01	Mehrwertsteuer-Eigenmittel der EU	-1965	2013-10-01	\N	10	-85	\N	-1724	-2268	2013	EU Own Resources (VAT-Based)
2394	2013-11-01	Mehrwertsteuer-Eigenmittel der EU	-1965	2013-11-01	\N	11	0	\N	-1821	-2171	2013	EU Own Resources (VAT-Based)
2395	2013-12-01	Mehrwertsteuer-Eigenmittel der EU	-2083	2013-12-01	\N	12	-118	\N	-2027	-2083	2013	EU Own Resources (VAT-Based)
2396	2014-01-01	Mehrwertsteuer-Eigenmittel der EU	-404	2014-01-01	\N	1	-404	\N	-222	-2265	2014	EU Own Resources (VAT-Based)
2397	2014-02-01	Mehrwertsteuer-Eigenmittel der EU	-1347	2014-02-01	\N	2	-943	\N	-684	-2746	2014	EU Own Resources (VAT-Based)
2398	2014-03-01	Mehrwertsteuer-Eigenmittel der EU	-1684	2014-03-01	\N	3	-337	\N	-855	-2912	2014	EU Own Resources (VAT-Based)
2399	2014-04-01	Mehrwertsteuer-Eigenmittel der EU	-2021	2014-04-01	\N	4	-337	\N	-1025	-3079	2014	EU Own Resources (VAT-Based)
2400	2014-05-01	Mehrwertsteuer-Eigenmittel der EU	-2358	2014-05-01	\N	5	-337	\N	-1196	-3245	2014	EU Own Resources (VAT-Based)
2401	2014-06-01	Mehrwertsteuer-Eigenmittel der EU	-2661	2014-06-01	\N	6	-303	\N	-1367	-3377	2014	EU Own Resources (VAT-Based)
2402	2014-07-01	Mehrwertsteuer-Eigenmittel der EU	-2897	2014-07-01	\N	7	-236	\N	-1538	-3442	2014	EU Own Resources (VAT-Based)
2403	2014-08-01	Mehrwertsteuer-Eigenmittel der EU	-3099	2014-08-01	\N	8	-202	\N	-1709	-3473	2014	EU Own Resources (VAT-Based)
2404	2014-09-01	Mehrwertsteuer-Eigenmittel der EU	-3233	2014-09-01	\N	9	-134	\N	-1880	-3436	2014	EU Own Resources (VAT-Based)
2405	2014-10-01	Mehrwertsteuer-Eigenmittel der EU	-3705	2014-10-01	\N	10	-472	\N	-1965	-3823	2014	EU Own Resources (VAT-Based)
2406	2014-11-01	Mehrwertsteuer-Eigenmittel der EU	-3705	2014-11-01	\N	11	0	\N	-1965	-3823	2014	EU Own Resources (VAT-Based)
2407	2014-12-01	Mehrwertsteuer-Eigenmittel der EU	-4015	2014-12-01	\N	12	-310	\N	-2083	-4015	2014	EU Own Resources (VAT-Based)
2408	2015-01-01	Mehrwertsteuer-Eigenmittel der EU	-351	2015-01-01	\N	1	-351	\N	-404	-3962	2015	EU Own Resources (VAT-Based)
2409	2015-02-01	Mehrwertsteuer-Eigenmittel der EU	-1466	2015-02-01	\N	2	-1115	\N	-1347	-4134	2015	EU Own Resources (VAT-Based)
2410	2015-03-01	Mehrwertsteuer-Eigenmittel der EU	-1817	2015-03-01	\N	3	-351	\N	-1684	-4148	2015	EU Own Resources (VAT-Based)
2411	2015-04-01	Mehrwertsteuer-Eigenmittel der EU	-2167	2015-04-01	\N	4	-350	\N	-2021	-4161	2015	EU Own Resources (VAT-Based)
2412	2015-05-01	Mehrwertsteuer-Eigenmittel der EU	-2518	2015-05-01	\N	5	-351	\N	-2358	-4175	2015	EU Own Resources (VAT-Based)
2413	2015-06-01	Mehrwertsteuer-Eigenmittel der EU	-2763	2015-06-01	\N	6	-245	\N	-2661	-4117	2015	EU Own Resources (VAT-Based)
2414	2015-07-01	Mehrwertsteuer-Eigenmittel der EU	-2903	2015-07-01	\N	7	-140	\N	-2897	-4021	2015	EU Own Resources (VAT-Based)
2415	2015-08-01	Mehrwertsteuer-Eigenmittel der EU	-3184	2015-08-01	\N	8	-281	\N	-3099	-4100	2015	EU Own Resources (VAT-Based)
2416	2015-09-01	Mehrwertsteuer-Eigenmittel der EU	-3289	2015-09-01	\N	9	-105	\N	-3233	-4071	2015	EU Own Resources (VAT-Based)
2417	2015-10-01	Mehrwertsteuer-Eigenmittel der EU	-3570	2015-10-01	\N	10	-281	\N	-3705	-3880	2015	EU Own Resources (VAT-Based)
2418	2015-11-01	Mehrwertsteuer-Eigenmittel der EU	-3857	2015-11-01	\N	11	-287	\N	-3705	-4167	2015	EU Own Resources (VAT-Based)
2419	2015-12-01	Mehrwertsteuer-Eigenmittel der EU	-4098	2015-12-01	\N	12	-241	\N	-4015	-4098	2015	EU Own Resources (VAT-Based)
2420	2016-01-01	Mehrwertsteuer-Eigenmittel der EU	-354	2016-01-01	\N	1	-354	\N	-351	-4101	2016	EU Own Resources (VAT-Based)
2421	2016-02-01	Mehrwertsteuer-Eigenmittel der EU	-1169	2016-02-01	\N	2	-815	\N	-1466	-3801	2016	EU Own Resources (VAT-Based)
2422	2016-03-01	Mehrwertsteuer-Eigenmittel der EU	-1523	2016-03-01	\N	3	-354	\N	-1817	-3804	2016	EU Own Resources (VAT-Based)
2423	2016-04-01	Mehrwertsteuer-Eigenmittel der EU	-1700	2016-04-01	\N	4	-177	\N	-2167	-3631	2016	EU Own Resources (VAT-Based)
2424	2016-05-01	Mehrwertsteuer-Eigenmittel der EU	-1983	2016-05-01	\N	5	-283	\N	-2518	-3563	2016	EU Own Resources (VAT-Based)
2425	2016-06-01	Mehrwertsteuer-Eigenmittel der EU	-2160	2016-06-01	\N	6	-177	\N	-2763	-3495	2016	EU Own Resources (VAT-Based)
2426	2016-07-01	Mehrwertsteuer-Eigenmittel der EU	-2479	2016-07-01	\N	7	-319	\N	-2903	-3674	2016	EU Own Resources (VAT-Based)
2427	2016-08-01	Mehrwertsteuer-Eigenmittel der EU	-2833	2016-08-01	\N	8	-354	\N	-3184	-3747	2016	EU Own Resources (VAT-Based)
2428	2016-09-01	Mehrwertsteuer-Eigenmittel der EU	-3188	2016-09-01	\N	9	-355	\N	-3289	-3997	2016	EU Own Resources (VAT-Based)
2429	2016-10-01	Mehrwertsteuer-Eigenmittel der EU	-3896	2016-10-01	\N	10	-708	\N	-3570	-4424	2016	EU Own Resources (VAT-Based)
2430	2016-11-01	Mehrwertsteuer-Eigenmittel der EU	-3896	2016-11-01	\N	11	0	\N	-3857	-4137	2016	EU Own Resources (VAT-Based)
2431	2016-12-01	Mehrwertsteuer-Eigenmittel der EU	-4250	2016-12-01	\N	12	-354	\N	-4098	-4250	2016	EU Own Resources (VAT-Based)
2432	2017-01-01	Mehrwertsteuer-Eigenmittel der EU	-197	2017-01-01	\N	1	-197	\N	-354	-4093	2017	EU Own Resources (VAT-Based)
2433	2017-02-01	Mehrwertsteuer-Eigenmittel der EU	-433	2017-02-01	\N	2	-236	\N	-1169	-3514	2017	EU Own Resources (VAT-Based)
2434	2017-03-01	Mehrwertsteuer-Eigenmittel der EU	-591	2017-03-01	\N	3	-158	\N	-1523	-3318	2017	EU Own Resources (VAT-Based)
2435	2017-04-01	Mehrwertsteuer-Eigenmittel der EU	-787	2017-04-01	\N	4	-196	\N	-1700	-3337	2017	EU Own Resources (VAT-Based)
2436	2017-05-01	Mehrwertsteuer-Eigenmittel der EU	-984	2017-05-01	\N	5	-197	\N	-1983	-3251	2017	EU Own Resources (VAT-Based)
2437	2017-06-01	Mehrwertsteuer-Eigenmittel der EU	-1181	2017-06-01	\N	6	-197	\N	-2160	-3271	2017	EU Own Resources (VAT-Based)
2438	2017-07-01	Mehrwertsteuer-Eigenmittel der EU	-1378	2017-07-01	\N	7	-197	\N	-2479	-3149	2017	EU Own Resources (VAT-Based)
2439	2017-08-01	Mehrwertsteuer-Eigenmittel der EU	-1575	2017-08-01	\N	8	-197	\N	-2833	-2992	2017	EU Own Resources (VAT-Based)
2440	2017-09-01	Mehrwertsteuer-Eigenmittel der EU	-1772	2017-09-01	\N	9	-197	\N	-3188	-2834	2017	EU Own Resources (VAT-Based)
2441	2017-10-01	Mehrwertsteuer-Eigenmittel der EU	-1968	2017-10-01	\N	10	-196	\N	-3896	-2322	2017	EU Own Resources (VAT-Based)
2442	2017-11-01	Mehrwertsteuer-Eigenmittel der EU	-2165	2017-11-01	\N	11	-197	\N	-3896	-2519	2017	EU Own Resources (VAT-Based)
2443	2017-12-01	Mehrwertsteuer-Eigenmittel der EU	-2362	2017-12-01	\N	12	-197	\N	-4250	-2362	2017	EU Own Resources (VAT-Based)
2444	2018-01-01	Mehrwertsteuer-Eigenmittel der EU	-181	2018-01-01	\N	1	-181	\N	-197	-2346	2018	EU Own Resources (VAT-Based)
2445	2018-02-01	Mehrwertsteuer-Eigenmittel der EU	-522	2018-02-01	\N	2	-341	\N	-433	-2451	2018	EU Own Resources (VAT-Based)
2446	2018-03-01	Mehrwertsteuer-Eigenmittel der EU	-723	2018-03-01	\N	3	-201	\N	-591	-2494	2018	EU Own Resources (VAT-Based)
2447	2018-04-01	Mehrwertsteuer-Eigenmittel der EU	-904	2018-04-01	\N	4	-181	\N	-787	-2479	2018	EU Own Resources (VAT-Based)
2448	2018-05-01	Mehrwertsteuer-Eigenmittel der EU	-1045	2018-05-01	\N	5	-141	\N	-984	-2423	2018	EU Own Resources (VAT-Based)
2449	2018-06-01	Mehrwertsteuer-Eigenmittel der EU	-1199	2018-06-01	\N	6	-154	\N	-1181	-2380	2018	EU Own Resources (VAT-Based)
2450	2018-07-01	Mehrwertsteuer-Eigenmittel der EU	-1380	2018-07-01	\N	7	-181	\N	-1378	-2364	2018	EU Own Resources (VAT-Based)
2451	2018-08-01	Mehrwertsteuer-Eigenmittel der EU	-1581	2018-08-01	\N	8	-201	\N	-1575	-2368	2018	EU Own Resources (VAT-Based)
2452	2018-09-01	Mehrwertsteuer-Eigenmittel der EU	-1782	2018-09-01	\N	9	-201	\N	-1772	-2372	2018	EU Own Resources (VAT-Based)
2453	2018-10-01	Mehrwertsteuer-Eigenmittel der EU	-2184	2018-10-01	\N	10	-402	\N	-1968	-2578	2018	EU Own Resources (VAT-Based)
2454	2018-11-01	Mehrwertsteuer-Eigenmittel der EU	-2184	2018-11-01	\N	11	0	\N	-2165	-2381	2018	EU Own Resources (VAT-Based)
2455	2018-12-01	Mehrwertsteuer-Eigenmittel der EU	-2385	2018-12-01	\N	12	-201	\N	-2362	-2385	2018	EU Own Resources (VAT-Based)
2456	2008-01-01	Zuweisungen an Länder für ÖPNV	-556	2008-01-01	\N	1	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2457	2008-02-01	Zuweisungen an Länder für ÖPNV	-1113	2008-02-01	\N	2	-557	\N	0	\N	2008	Grants to Länder for Public Transport
2458	2008-03-01	Zuweisungen an Länder für ÖPNV	-1669	2008-03-01	\N	3	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2459	2008-04-01	Zuweisungen an Länder für ÖPNV	-2225	2008-04-01	\N	4	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2460	2008-05-01	Zuweisungen an Länder für ÖPNV	-2781	2008-05-01	\N	5	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2461	2008-06-01	Zuweisungen an Länder für ÖPNV	-3338	2008-06-01	\N	6	-557	\N	0	\N	2008	Grants to Länder for Public Transport
2462	2008-07-01	Zuweisungen an Länder für ÖPNV	-3894	2008-07-01	\N	7	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2463	2008-08-01	Zuweisungen an Länder für ÖPNV	-4450	2008-08-01	\N	8	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2464	2008-09-01	Zuweisungen an Länder für ÖPNV	-5006	2008-09-01	\N	9	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2465	2008-10-01	Zuweisungen an Länder für ÖPNV	-5563	2008-10-01	\N	10	-557	\N	0	\N	2008	Grants to Länder for Public Transport
2466	2008-11-01	Zuweisungen an Länder für ÖPNV	-6119	2008-11-01	\N	11	-556	\N	0	\N	2008	Grants to Länder for Public Transport
2467	2008-12-01	Zuweisungen an Länder für ÖPNV	-6675	2008-12-01	\N	12	-556	\N	0	-6675	2008	Grants to Länder for Public Transport
2468	2009-01-01	Zuweisungen an Länder für ÖPNV	-565	2009-01-01	\N	1	-565	\N	-556	-6684	2009	Grants to Länder for Public Transport
2469	2009-02-01	Zuweisungen an Länder für ÖPNV	-1129	2009-02-01	\N	2	-564	\N	-1113	-6691	2009	Grants to Länder for Public Transport
2470	2009-03-01	Zuweisungen an Länder für ÖPNV	-1694	2009-03-01	\N	3	-565	\N	-1669	-6700	2009	Grants to Länder for Public Transport
2471	2009-04-01	Zuweisungen an Länder für ÖPNV	-2258	2009-04-01	\N	4	-564	\N	-2225	-6708	2009	Grants to Länder for Public Transport
2472	2009-05-01	Zuweisungen an Länder für ÖPNV	-2823	2009-05-01	\N	5	-565	\N	-2781	-6717	2009	Grants to Länder for Public Transport
2473	2009-06-01	Zuweisungen an Länder für ÖPNV	-3388	2009-06-01	\N	6	-565	\N	-3338	-6725	2009	Grants to Länder for Public Transport
2474	2009-07-01	Zuweisungen an Länder für ÖPNV	-3952	2009-07-01	\N	7	-564	\N	-3894	-6733	2009	Grants to Länder for Public Transport
2475	2009-08-01	Zuweisungen an Länder für ÖPNV	-4517	2009-08-01	\N	8	-565	\N	-4450	-6742	2009	Grants to Länder for Public Transport
2476	2009-09-01	Zuweisungen an Länder für ÖPNV	-5081	2009-09-01	\N	9	-564	\N	-5006	-6750	2009	Grants to Länder for Public Transport
2477	2009-10-01	Zuweisungen an Länder für ÖPNV	-5646	2009-10-01	\N	10	-565	\N	-5563	-6758	2009	Grants to Länder for Public Transport
2478	2009-11-01	Zuweisungen an Länder für ÖPNV	-6211	2009-11-01	\N	11	-565	\N	-6119	-6767	2009	Grants to Länder for Public Transport
2479	2009-12-01	Zuweisungen an Länder für ÖPNV	-6775	2009-12-01	\N	12	-564	\N	-6675	-6775	2009	Grants to Länder for Public Transport
2480	2010-01-01	Zuweisungen an Länder für ÖPNV	-573	2010-01-01	\N	1	-573	\N	-565	-6783	2010	Grants to Länder for Public Transport
2481	2010-02-01	Zuweisungen an Länder für ÖPNV	-1146	2010-02-01	\N	2	-573	\N	-1129	-6792	2010	Grants to Länder for Public Transport
2482	2010-03-01	Zuweisungen an Länder für ÖPNV	-1719	2010-03-01	\N	3	-573	\N	-1694	-6800	2010	Grants to Länder for Public Transport
2483	2010-04-01	Zuweisungen an Länder für ÖPNV	-2292	2010-04-01	\N	4	-573	\N	-2258	-6809	2010	Grants to Länder for Public Transport
2484	2010-05-01	Zuweisungen an Länder für ÖPNV	-2865	2010-05-01	\N	5	-573	\N	-2823	-6817	2010	Grants to Länder for Public Transport
2485	2010-06-01	Zuweisungen an Länder für ÖPNV	-3438	2010-06-01	\N	6	-573	\N	-3388	-6825	2010	Grants to Länder for Public Transport
2486	2010-07-01	Zuweisungen an Länder für ÖPNV	-4011	2010-07-01	\N	7	-573	\N	-3952	-6834	2010	Grants to Länder for Public Transport
2487	2010-08-01	Zuweisungen an Länder für ÖPNV	-4585	2010-08-01	\N	8	-574	\N	-4517	-6843	2010	Grants to Länder for Public Transport
2488	2010-09-01	Zuweisungen an Länder für ÖPNV	-5158	2010-09-01	\N	9	-573	\N	-5081	-6852	2010	Grants to Länder for Public Transport
2850	2019-11-01	Lohnsteuer	\N	2019-11-01	94019.2838929242716	11	\N	96121.9993217234733	\N	94019.2838929242716	2019	Wages Tax
2489	2010-10-01	Zuweisungen an Länder für ÖPNV	-5731	2010-10-01	\N	10	-573	\N	-5646	-6860	2010	Grants to Länder for Public Transport
2490	2010-11-01	Zuweisungen an Länder für ÖPNV	-6304	2010-11-01	\N	11	-573	\N	-6211	-6868	2010	Grants to Länder for Public Transport
2491	2010-12-01	Zuweisungen an Länder für ÖPNV	-6877	2010-12-01	\N	12	-573	\N	-6775	-6877	2010	Grants to Länder for Public Transport
2492	2011-01-01	Zuweisungen an Länder für ÖPNV	-582	2011-01-01	\N	1	-582	\N	-573	-6886	2011	Grants to Länder for Public Transport
2493	2011-02-01	Zuweisungen an Länder für ÖPNV	-1163	2011-02-01	\N	2	-581	\N	-1146	-6894	2011	Grants to Länder for Public Transport
2494	2011-03-01	Zuweisungen an Länder für ÖPNV	-1745	2011-03-01	\N	3	-582	\N	-1719	-6903	2011	Grants to Länder for Public Transport
2495	2011-04-01	Zuweisungen an Länder für ÖPNV	-2327	2011-04-01	\N	4	-582	\N	-2292	-6912	2011	Grants to Länder for Public Transport
2496	2011-05-01	Zuweisungen an Länder für ÖPNV	-2908	2011-05-01	\N	5	-581	\N	-2865	-6920	2011	Grants to Länder for Public Transport
2497	2011-06-01	Zuweisungen an Länder für ÖPNV	-3490	2011-06-01	\N	6	-582	\N	-3438	-6929	2011	Grants to Länder for Public Transport
2498	2011-07-01	Zuweisungen an Länder für ÖPNV	-4072	2011-07-01	\N	7	-582	\N	-4011	-6938	2011	Grants to Länder for Public Transport
2499	2011-08-01	Zuweisungen an Länder für ÖPNV	-4653	2011-08-01	\N	8	-581	\N	-4585	-6945	2011	Grants to Länder for Public Transport
2500	2011-09-01	Zuweisungen an Länder für ÖPNV	-5235	2011-09-01	\N	9	-582	\N	-5158	-6954	2011	Grants to Länder for Public Transport
2501	2011-10-01	Zuweisungen an Länder für ÖPNV	-5817	2011-10-01	\N	10	-582	\N	-5731	-6963	2011	Grants to Länder for Public Transport
2502	2011-11-01	Zuweisungen an Länder für ÖPNV	-6398	2011-11-01	\N	11	-581	\N	-6304	-6971	2011	Grants to Länder for Public Transport
2503	2011-12-01	Zuweisungen an Länder für ÖPNV	-6980	2011-12-01	\N	12	-582	\N	-6877	-6980	2011	Grants to Länder for Public Transport
2504	2012-01-01	Zuweisungen an Länder für ÖPNV	-590	2012-01-01	\N	1	-590	\N	-582	-6988	2012	Grants to Länder for Public Transport
2505	2012-02-01	Zuweisungen an Länder für ÖPNV	-1181	2012-02-01	\N	2	-591	\N	-1163	-6998	2012	Grants to Länder for Public Transport
2506	2012-03-01	Zuweisungen an Länder für ÖPNV	-1771	2012-03-01	\N	3	-590	\N	-1745	-7006	2012	Grants to Länder for Public Transport
2507	2012-04-01	Zuweisungen an Länder für ÖPNV	-2362	2012-04-01	\N	4	-591	\N	-2327	-7015	2012	Grants to Länder for Public Transport
2508	2012-05-01	Zuweisungen an Länder für ÖPNV	-2952	2012-05-01	\N	5	-590	\N	-2908	-7024	2012	Grants to Länder for Public Transport
2509	2012-06-01	Zuweisungen an Länder für ÖPNV	-3542	2012-06-01	\N	6	-590	\N	-3490	-7032	2012	Grants to Länder for Public Transport
2510	2012-07-01	Zuweisungen an Länder für ÖPNV	-4133	2012-07-01	\N	7	-591	\N	-4072	-7041	2012	Grants to Länder for Public Transport
2511	2012-08-01	Zuweisungen an Länder für ÖPNV	-4723	2012-08-01	\N	8	-590	\N	-4653	-7050	2012	Grants to Länder for Public Transport
2512	2012-09-01	Zuweisungen an Länder für ÖPNV	-5313	2012-09-01	\N	9	-590	\N	-5235	-7058	2012	Grants to Länder for Public Transport
2513	2012-10-01	Zuweisungen an Länder für ÖPNV	-5904	2012-10-01	\N	10	-591	\N	-5817	-7067	2012	Grants to Länder for Public Transport
2514	2012-11-01	Zuweisungen an Länder für ÖPNV	-6494	2012-11-01	\N	11	-590	\N	-6398	-7076	2012	Grants to Länder for Public Transport
2515	2012-12-01	Zuweisungen an Länder für ÖPNV	-7085	2012-12-01	\N	12	-591	\N	-6980	-7085	2012	Grants to Länder for Public Transport
2516	2013-01-01	Zuweisungen an Länder für ÖPNV	-599	2013-01-01	\N	1	-599	\N	-590	-7094	2013	Grants to Länder for Public Transport
2517	2013-02-01	Zuweisungen an Länder für ÖPNV	-1198	2013-02-01	\N	2	-599	\N	-1181	-7102	2013	Grants to Länder for Public Transport
2518	2013-03-01	Zuweisungen an Länder für ÖPNV	-1798	2013-03-01	\N	3	-600	\N	-1771	-7112	2013	Grants to Länder for Public Transport
2519	2013-04-01	Zuweisungen an Länder für ÖPNV	-2397	2013-04-01	\N	4	-599	\N	-2362	-7120	2013	Grants to Länder for Public Transport
2520	2013-05-01	Zuweisungen an Länder für ÖPNV	-2996	2013-05-01	\N	5	-599	\N	-2952	-7129	2013	Grants to Länder for Public Transport
2521	2013-06-01	Zuweisungen an Länder für ÖPNV	-3595	2013-06-01	\N	6	-599	\N	-3542	-7138	2013	Grants to Länder for Public Transport
2522	2013-07-01	Zuweisungen an Länder für ÖPNV	-4195	2013-07-01	\N	7	-600	\N	-4133	-7147	2013	Grants to Länder for Public Transport
2523	2013-08-01	Zuweisungen an Länder für ÖPNV	-4794	2013-08-01	\N	8	-599	\N	-4723	-7156	2013	Grants to Länder for Public Transport
2524	2013-09-01	Zuweisungen an Länder für ÖPNV	-5393	2013-09-01	\N	9	-599	\N	-5313	-7165	2013	Grants to Länder for Public Transport
2860	2020-09-01	Lohnsteuer	\N	2020-09-01	99088.5564013518015	9	\N	103724.608514049498	\N	99088.5564013518015	2020	Wages Tax
2525	2013-10-01	Zuweisungen an Länder für ÖPNV	-5992	2013-10-01	\N	10	-599	\N	-5904	-7173	2013	Grants to Länder for Public Transport
2526	2013-11-01	Zuweisungen an Länder für ÖPNV	-6592	2013-11-01	\N	11	-600	\N	-6494	-7183	2013	Grants to Länder for Public Transport
2527	2013-12-01	Zuweisungen an Länder für ÖPNV	-7191	2013-12-01	\N	12	-599	\N	-7085	-7191	2013	Grants to Länder for Public Transport
2528	2014-01-01	Zuweisungen an Länder für ÖPNV	-608	2014-01-01	\N	1	-608	\N	-599	-7200	2014	Grants to Länder for Public Transport
2529	2014-02-01	Zuweisungen an Länder für ÖPNV	-1216	2014-02-01	\N	2	-608	\N	-1198	-7209	2014	Grants to Länder for Public Transport
2530	2014-03-01	Zuweisungen an Länder für ÖPNV	-1825	2014-03-01	\N	3	-609	\N	-1798	-7218	2014	Grants to Länder for Public Transport
2531	2014-04-01	Zuweisungen an Länder für ÖPNV	-2433	2014-04-01	\N	4	-608	\N	-2397	-7227	2014	Grants to Länder for Public Transport
2532	2014-05-01	Zuweisungen an Länder für ÖPNV	-3041	2014-05-01	\N	5	-608	\N	-2996	-7236	2014	Grants to Länder for Public Transport
2533	2014-06-01	Zuweisungen an Länder für ÖPNV	-3649	2014-06-01	\N	6	-608	\N	-3595	-7245	2014	Grants to Länder for Public Transport
2534	2014-07-01	Zuweisungen an Länder für ÖPNV	-4258	2014-07-01	\N	7	-609	\N	-4195	-7254	2014	Grants to Länder for Public Transport
2535	2014-08-01	Zuweisungen an Länder für ÖPNV	-4866	2014-08-01	\N	8	-608	\N	-4794	-7263	2014	Grants to Länder for Public Transport
2536	2014-09-01	Zuweisungen an Länder für ÖPNV	-5474	2014-09-01	\N	9	-608	\N	-5393	-7272	2014	Grants to Länder for Public Transport
2537	2014-10-01	Zuweisungen an Länder für ÖPNV	-6082	2014-10-01	\N	10	-608	\N	-5992	-7281	2014	Grants to Länder for Public Transport
2538	2014-11-01	Zuweisungen an Länder für ÖPNV	-6691	2014-11-01	\N	11	-609	\N	-6592	-7290	2014	Grants to Länder for Public Transport
2539	2014-12-01	Zuweisungen an Länder für ÖPNV	-7299	2014-12-01	\N	12	-608	\N	-7191	-7299	2014	Grants to Länder for Public Transport
2540	2015-01-01	Zuweisungen an Länder für ÖPNV	-608	2015-01-01	\N	1	-608	\N	-608	-7299	2015	Grants to Länder for Public Transport
2541	2015-02-01	Zuweisungen an Länder für ÖPNV	-1216	2015-02-01	\N	2	-608	\N	-1216	-7299	2015	Grants to Länder for Public Transport
2542	2015-03-01	Zuweisungen an Länder für ÖPNV	-1825	2015-03-01	\N	3	-609	\N	-1825	-7299	2015	Grants to Länder for Public Transport
2543	2015-04-01	Zuweisungen an Länder für ÖPNV	-2433	2015-04-01	\N	4	-608	\N	-2433	-7299	2015	Grants to Länder for Public Transport
2544	2015-05-01	Zuweisungen an Länder für ÖPNV	-3041	2015-05-01	\N	5	-608	\N	-3041	-7299	2015	Grants to Länder for Public Transport
2545	2015-06-01	Zuweisungen an Länder für ÖPNV	-3649	2015-06-01	\N	6	-608	\N	-3649	-7299	2015	Grants to Länder for Public Transport
2546	2015-07-01	Zuweisungen an Länder für ÖPNV	-4258	2015-07-01	\N	7	-609	\N	-4258	-7299	2015	Grants to Länder for Public Transport
2547	2015-08-01	Zuweisungen an Länder für ÖPNV	-4866	2015-08-01	\N	8	-608	\N	-4866	-7299	2015	Grants to Länder for Public Transport
2548	2015-09-01	Zuweisungen an Länder für ÖPNV	-5474	2015-09-01	\N	9	-608	\N	-5474	-7299	2015	Grants to Länder for Public Transport
2549	2015-10-01	Zuweisungen an Länder für ÖPNV	-6082	2015-10-01	\N	10	-608	\N	-6082	-7299	2015	Grants to Länder for Public Transport
2550	2015-11-01	Zuweisungen an Länder für ÖPNV	-6691	2015-11-01	\N	11	-609	\N	-6691	-7299	2015	Grants to Länder for Public Transport
2551	2015-12-01	Zuweisungen an Länder für ÖPNV	-7408	2015-12-01	\N	12	-717	\N	-7299	-7408	2015	Grants to Länder for Public Transport
2552	2016-01-01	Zuweisungen an Länder für ÖPNV	-617	2016-01-01	\N	1	-617	\N	-608	-7417	2016	Grants to Länder for Public Transport
2553	2016-02-01	Zuweisungen an Länder für ÖPNV	-1235	2016-02-01	\N	2	-618	\N	-1216	-7427	2016	Grants to Länder for Public Transport
2554	2016-03-01	Zuweisungen an Länder für ÖPNV	-1852	2016-03-01	\N	3	-617	\N	-1825	-7435	2016	Grants to Länder for Public Transport
2555	2016-04-01	Zuweisungen an Länder für ÖPNV	-2469	2016-04-01	\N	4	-617	\N	-2433	-7444	2016	Grants to Länder for Public Transport
2556	2016-05-01	Zuweisungen an Länder für ÖPNV	-3087	2016-05-01	\N	5	-618	\N	-3041	-7454	2016	Grants to Länder for Public Transport
2557	2016-06-01	Zuweisungen an Länder für ÖPNV	-3704	2016-06-01	\N	6	-617	\N	-3649	-7463	2016	Grants to Länder for Public Transport
2558	2016-07-01	Zuweisungen an Länder für ÖPNV	-4321	2016-07-01	\N	7	-617	\N	-4258	-7471	2016	Grants to Länder for Public Transport
2559	2016-08-01	Zuweisungen an Länder für ÖPNV	-4939	2016-08-01	\N	8	-618	\N	-4866	-7481	2016	Grants to Länder for Public Transport
2560	2016-09-01	Zuweisungen an Länder für ÖPNV	-5556	2016-09-01	\N	9	-617	\N	-5474	-7490	2016	Grants to Länder for Public Transport
2561	2016-10-01	Zuweisungen an Länder für ÖPNV	-6174	2016-10-01	\N	10	-618	\N	-6082	-7500	2016	Grants to Länder for Public Transport
2562	2016-11-01	Zuweisungen an Länder für ÖPNV	-6791	2016-11-01	\N	11	-617	\N	-6691	-7508	2016	Grants to Länder for Public Transport
2563	2016-12-01	Zuweisungen an Länder für ÖPNV	-8200	2016-12-01	\N	12	-1409	\N	-7408	-8200	2016	Grants to Länder for Public Transport
2564	2017-01-01	Zuweisungen an Länder für ÖPNV	-696	2017-01-01	\N	1	-696	\N	-617	-8279	2017	Grants to Länder for Public Transport
2565	2017-02-01	Zuweisungen an Länder für ÖPNV	-1391	2017-02-01	\N	2	-695	\N	-1235	-8356	2017	Grants to Länder for Public Transport
2566	2017-03-01	Zuweisungen an Länder für ÖPNV	-2087	2017-03-01	\N	3	-696	\N	-1852	-8435	2017	Grants to Länder for Public Transport
2567	2017-04-01	Zuweisungen an Länder für ÖPNV	-2783	2017-04-01	\N	4	-696	\N	-2469	-8514	2017	Grants to Länder for Public Transport
2568	2017-05-01	Zuweisungen an Länder für ÖPNV	-3478	2017-05-01	\N	5	-695	\N	-3087	-8591	2017	Grants to Länder for Public Transport
2569	2017-06-01	Zuweisungen an Länder für ÖPNV	-4174	2017-06-01	\N	6	-696	\N	-3704	-8670	2017	Grants to Länder for Public Transport
2570	2017-07-01	Zuweisungen an Länder für ÖPNV	-4869	2017-07-01	\N	7	-695	\N	-4321	-8748	2017	Grants to Länder for Public Transport
2571	2017-08-01	Zuweisungen an Länder für ÖPNV	-5565	2017-08-01	\N	8	-696	\N	-4939	-8826	2017	Grants to Länder for Public Transport
2572	2017-09-01	Zuweisungen an Länder für ÖPNV	-6261	2017-09-01	\N	9	-696	\N	-5556	-8905	2017	Grants to Länder for Public Transport
2573	2017-10-01	Zuweisungen an Länder für ÖPNV	-6956	2017-10-01	\N	10	-695	\N	-6174	-8982	2017	Grants to Länder for Public Transport
2574	2017-11-01	Zuweisungen an Länder für ÖPNV	-7652	2017-11-01	\N	11	-696	\N	-6791	-9061	2017	Grants to Länder for Public Transport
2575	2017-12-01	Zuweisungen an Länder für ÖPNV	-8348	2017-12-01	\N	12	-696	\N	-8200	-8348	2017	Grants to Länder for Public Transport
2576	2018-01-01	Zuweisungen an Länder für ÖPNV	-708	2018-01-01	\N	1	-708	\N	-696	-8360	2018	Grants to Länder for Public Transport
2577	2018-02-01	Zuweisungen an Länder für ÖPNV	-1416	2018-02-01	\N	2	-708	\N	-1391	-8373	2018	Grants to Länder for Public Transport
2578	2018-03-01	Zuweisungen an Länder für ÖPNV	-2124	2018-03-01	\N	3	-708	\N	-2087	-8385	2018	Grants to Länder for Public Transport
2579	2018-04-01	Zuweisungen an Länder für ÖPNV	-2833	2018-04-01	\N	4	-709	\N	-2783	-8398	2018	Grants to Länder for Public Transport
2580	2018-05-01	Zuweisungen an Länder für ÖPNV	-3541	2018-05-01	\N	5	-708	\N	-3478	-8411	2018	Grants to Länder for Public Transport
2581	2018-06-01	Zuweisungen an Länder für ÖPNV	-4249	2018-06-01	\N	6	-708	\N	-4174	-8423	2018	Grants to Länder for Public Transport
2582	2018-07-01	Zuweisungen an Länder für ÖPNV	-4957	2018-07-01	\N	7	-708	\N	-4869	-8436	2018	Grants to Länder for Public Transport
2583	2018-08-01	Zuweisungen an Länder für ÖPNV	-5665	2018-08-01	\N	8	-708	\N	-5565	-8448	2018	Grants to Länder for Public Transport
2584	2018-09-01	Zuweisungen an Länder für ÖPNV	-6373	2018-09-01	\N	9	-708	\N	-6261	-8460	2018	Grants to Länder for Public Transport
2585	2018-10-01	Zuweisungen an Länder für ÖPNV	-7082	2018-10-01	\N	10	-709	\N	-6956	-8474	2018	Grants to Länder for Public Transport
2586	2018-11-01	Zuweisungen an Länder für ÖPNV	-7790	2018-11-01	\N	11	-708	\N	-7652	-8486	2018	Grants to Länder for Public Transport
2587	2018-12-01	Zuweisungen an Länder für ÖPNV	-8498	2018-12-01	\N	12	-708	\N	-8348	-8498	2018	Grants to Länder for Public Transport
2588	2008-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008-07-01	\N	7	\N	\N	0	\N	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
2589	2008-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008-08-01	\N	8	0	\N	0	\N	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
2590	2008-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008-09-01	\N	9	0	\N	0	\N	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
2591	2008-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008-10-01	\N	10	0	\N	0	\N	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
2851	2019-12-01	Lohnsteuer	\N	2019-12-01	94514.9252012271609	12	\N	96839.1089320922038	\N	94514.9252012271609	2019	Wages Tax
2592	2008-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008-11-01	\N	11	0	\N	0	\N	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
2593	2008-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008-12-01	\N	12	0	\N	0	\N	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
2594	2009-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2009-07-01	\N	7	0	\N	0	\N	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
2595	2009-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2285	2009-08-01	\N	8	-2285	\N	0	\N	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
2596	2009-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2285	2009-09-01	\N	9	0	\N	0	\N	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
2597	2009-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2285	2009-10-01	\N	10	0	\N	0	\N	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
2598	2009-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4571	2009-11-01	\N	11	-2286	\N	0	\N	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
2599	2009-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4571	2009-12-01	\N	12	0	\N	0	\N	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
2600	2010-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2010-01-01	\N	1	0	\N	0	-4571	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2743	2010-12-01	Sonstige Einnahmen	33105	2010-12-01	\N	12	7211	\N	29907	33105	2010	Other Revenue
2601	2010-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2010-02-01	\N	2	-2248	\N	0	-6819	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2602	2010-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2010-03-01	\N	3	0	\N	0	-6819	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2603	2010-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2010-04-01	\N	4	0	\N	0	-6819	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2604	2010-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2010-05-01	\N	5	-2248	\N	0	-9067	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2605	2010-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2010-06-01	\N	6	0	\N	0	-9067	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2606	2010-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2010-07-01	\N	7	0	\N	0	-9067	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2607	2010-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2010-08-01	\N	8	-2248	\N	0	-9030	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2876	2020-01-01	Veranlagte Einkommensteuer	\N	2020-01-01	26382.0003532022674	1	\N	26581.4637572255015	\N	26382.0003532022674	2020	Assessed Income Taxes
2608	2010-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2010-09-01	\N	9	0	\N	0	-9030	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2609	2010-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2010-10-01	\N	10	0	\N	0	-9030	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2610	2010-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2010-11-01	\N	11	-2248	\N	0	-8992	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2611	2010-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2010-12-01	\N	12	0	\N	-4571	-8992	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
2612	2011-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2011-01-01	\N	1	0	\N	0	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2613	2011-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2011-02-01	\N	2	-2248	\N	-2248	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2614	2011-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2011-03-01	\N	3	0	\N	-2248	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2615	2011-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2011-04-01	\N	4	0	\N	-2248	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2616	2011-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2011-05-01	\N	5	-2248	\N	-4496	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2617	2011-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2011-06-01	\N	6	0	\N	-4496	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2618	2011-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2011-07-01	\N	7	0	\N	-4496	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2619	2011-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2011-08-01	\N	8	-2248	\N	-6744	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2620	2011-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2011-09-01	\N	9	0	\N	-6744	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2621	2011-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2011-10-01	\N	10	0	\N	-6744	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2622	2011-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2011-11-01	\N	11	-2248	\N	-8992	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2623	2011-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2011-12-01	\N	12	0	\N	-8992	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
2624	2012-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2012-01-01	\N	1	0	\N	0	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2625	2012-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2012-02-01	\N	2	-2248	\N	-2248	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2626	2012-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2012-03-01	\N	3	0	\N	-2248	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2627	2012-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2012-04-01	\N	4	0	\N	-2248	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2628	2012-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2012-05-01	\N	5	-2248	\N	-4496	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2629	2012-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2012-06-01	\N	6	0	\N	-4496	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2630	2012-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2012-07-01	\N	7	0	\N	-4496	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2631	2012-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2012-08-01	\N	8	-2248	\N	-6744	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2632	2012-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2012-09-01	\N	9	0	\N	-6744	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2633	2012-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2012-10-01	\N	10	0	\N	-6744	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2634	2012-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2012-11-01	\N	11	-2248	\N	-8992	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2635	2012-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2012-12-01	\N	12	0	\N	-8992	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
2636	2013-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2013-01-01	\N	1	0	\N	0	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2852	2020-01-01	Lohnsteuer	\N	2020-01-01	95015.5855861243908	1	\N	97611.8372898839298	\N	95015.5855861243908	2020	Wages Tax
2637	2013-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2013-02-01	\N	2	-2248	\N	-2248	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2638	2013-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2013-03-01	\N	3	0	\N	-2248	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2639	2013-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2013-04-01	\N	4	0	\N	-2248	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2640	2013-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2013-05-01	\N	5	-2248	\N	-4496	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2641	2013-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2013-06-01	\N	6	0	\N	-4496	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2642	2013-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2013-07-01	\N	7	0	\N	-4496	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2643	2013-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2013-08-01	\N	8	-2248	\N	-6744	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2644	2013-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2013-09-01	\N	9	0	\N	-6744	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2645	2013-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2013-10-01	\N	10	0	\N	-6744	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2646	2013-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2013-11-01	\N	11	-2248	\N	-8992	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2647	2013-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2013-12-01	\N	12	0	\N	-8992	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
2648	2014-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2014-01-01	\N	1	0	\N	0	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2649	2014-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2014-02-01	\N	2	-2248	\N	-2248	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2650	2014-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2014-03-01	\N	3	0	\N	-2248	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2651	2014-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2014-04-01	\N	4	0	\N	-2248	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2652	2014-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2014-05-01	\N	5	-2248	\N	-4496	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2653	2014-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2014-06-01	\N	6	0	\N	-4496	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2654	2014-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2014-07-01	\N	7	0	\N	-4496	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2655	2014-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2014-08-01	\N	8	-2248	\N	-6744	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2656	2014-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2014-09-01	\N	9	0	\N	-6744	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2657	2014-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2014-10-01	\N	10	0	\N	-6744	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2658	2014-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2014-11-01	\N	11	-2248	\N	-8992	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2659	2014-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2014-12-01	\N	12	0	\N	-8992	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
2660	2015-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2015-01-01	\N	1	0	\N	0	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2661	2015-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2015-02-01	\N	2	-2248	\N	-2248	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2662	2015-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2015-03-01	\N	3	0	\N	-2248	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2663	2015-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2015-04-01	\N	4	0	\N	-2248	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2664	2015-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2015-05-01	\N	5	-2248	\N	-4496	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2665	2015-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2015-06-01	\N	6	0	\N	-4496	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2666	2015-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2015-07-01	\N	7	0	\N	-4496	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2667	2015-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2015-08-01	\N	8	-2248	\N	-6744	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2668	2015-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2015-09-01	\N	9	0	\N	-6744	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2669	2015-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2015-10-01	\N	10	0	\N	-6744	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2861	2020-10-01	Lohnsteuer	\N	2020-10-01	99596.2820256378764	10	\N	104454.497205823776	\N	99596.2820256378764	2020	Wages Tax
2670	2015-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2015-11-01	\N	11	-2248	\N	-8992	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2671	2015-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2015-12-01	\N	12	0	\N	-8992	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
2672	2016-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2016-01-01	\N	1	0	\N	0	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2673	2016-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2016-02-01	\N	2	-2248	\N	-2248	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2674	2016-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2016-03-01	\N	3	0	\N	-2248	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2675	2016-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2016-04-01	\N	4	0	\N	-2248	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2676	2016-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2016-05-01	\N	5	-2248	\N	-4496	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2677	2016-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2016-06-01	\N	6	0	\N	-4496	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2678	2016-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2016-07-01	\N	7	0	\N	-4496	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2679	2016-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2016-08-01	\N	8	-2248	\N	-6744	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2680	2016-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2016-09-01	\N	9	0	\N	-6744	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2681	2016-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2016-10-01	\N	10	0	\N	-6744	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2682	2016-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2016-11-01	\N	11	-2248	\N	-8992	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2683	2016-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2016-12-01	\N	12	0	\N	-8992	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
2684	2017-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2017-01-01	\N	1	0	\N	0	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2685	2017-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2017-02-01	\N	2	-2248	\N	-2248	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2686	2017-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2017-03-01	\N	3	0	\N	-2248	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2687	2017-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2017-04-01	\N	4	0	\N	-2248	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2688	2017-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2017-05-01	\N	5	-2248	\N	-4496	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2689	2017-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2017-06-01	\N	6	0	\N	-4496	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2690	2017-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2017-07-01	\N	7	0	\N	-4496	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2691	2017-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2017-08-01	\N	8	-2248	\N	-6744	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2692	2017-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2017-09-01	\N	9	0	\N	-6744	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2693	2017-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2017-10-01	\N	10	0	\N	-6744	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2694	2017-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2017-11-01	\N	11	-2248	\N	-8992	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2695	2017-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2017-12-01	\N	12	0	\N	-8992	-8992	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
2696	2018-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2018-01-01	\N	1	0	\N	0	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2697	2018-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2018-02-01	\N	2	-2248	\N	-2248	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2698	2018-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2018-03-01	\N	3	0	\N	-2248	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2699	2018-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-2248	2018-04-01	\N	4	0	\N	-2248	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2700	2018-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2018-05-01	\N	5	-2248	\N	-4496	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2701	2018-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2018-06-01	\N	6	0	\N	-4496	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2702	2018-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4496	2018-07-01	\N	7	0	\N	-4496	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2703	2018-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2018-08-01	\N	8	-2248	\N	-6744	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2704	2018-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2018-09-01	\N	9	0	\N	-6744	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2705	2018-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-6744	2018-10-01	\N	10	0	\N	-6744	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2706	2018-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2018-11-01	\N	11	-2248	\N	-8992	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2707	2018-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2018-12-01	\N	12	0	\N	-8992	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
2708	2008-01-01	Sonstige Einnahmen	2119	2008-01-01	\N	1	2119	\N	0	\N	2008	Other Revenue
2709	2008-02-01	Sonstige Einnahmen	4532	2008-02-01	\N	2	2413	\N	0	\N	2008	Other Revenue
2710	2008-03-01	Sonstige Einnahmen	9246	2008-03-01	\N	3	4714	\N	0	\N	2008	Other Revenue
2711	2008-04-01	Sonstige Einnahmen	11433	2008-04-01	\N	4	2187	\N	0	\N	2008	Other Revenue
2712	2008-05-01	Sonstige Einnahmen	14519	2008-05-01	\N	5	3086	\N	0	\N	2008	Other Revenue
2713	2008-06-01	Sonstige Einnahmen	15327	2008-06-01	\N	6	808	\N	0	\N	2008	Other Revenue
2714	2008-07-01	Sonstige Einnahmen	17830	2008-07-01	\N	7	2503	\N	0	\N	2008	Other Revenue
2715	2008-08-01	Sonstige Einnahmen	20120	2008-08-01	\N	8	2290	\N	0	\N	2008	Other Revenue
2716	2008-09-01	Sonstige Einnahmen	21124	2008-09-01	\N	9	1004	\N	0	\N	2008	Other Revenue
2717	2008-10-01	Sonstige Einnahmen	23240	2008-10-01	\N	10	2116	\N	0	\N	2008	Other Revenue
2718	2008-11-01	Sonstige Einnahmen	25947	2008-11-01	\N	11	2707	\N	0	\N	2008	Other Revenue
2719	2008-12-01	Sonstige Einnahmen	31246	2008-12-01	\N	12	5299	\N	0	31246	2008	Other Revenue
2720	2009-01-01	Sonstige Einnahmen	1852	2009-01-01	\N	1	1852	\N	2119	30979	2009	Other Revenue
2721	2009-02-01	Sonstige Einnahmen	3552	2009-02-01	\N	2	1700	\N	4532	30266	2009	Other Revenue
2722	2009-03-01	Sonstige Einnahmen	11346	2009-03-01	\N	3	7794	\N	9246	33346	2009	Other Revenue
2723	2009-04-01	Sonstige Einnahmen	13667	2009-04-01	\N	4	2321	\N	11433	33480	2009	Other Revenue
2724	2009-05-01	Sonstige Einnahmen	16370	2009-05-01	\N	5	2703	\N	14519	33097	2009	Other Revenue
2725	2009-06-01	Sonstige Einnahmen	17454	2009-06-01	\N	6	1084	\N	15327	33373	2009	Other Revenue
2726	2009-07-01	Sonstige Einnahmen	19792	2009-07-01	\N	7	2338	\N	17830	33208	2009	Other Revenue
2727	2009-08-01	Sonstige Einnahmen	22323	2009-08-01	\N	8	2531	\N	20120	33449	2009	Other Revenue
2728	2009-09-01	Sonstige Einnahmen	23517	2009-09-01	\N	9	1194	\N	21124	33639	2009	Other Revenue
2729	2009-10-01	Sonstige Einnahmen	25056	2009-10-01	\N	10	1539	\N	23240	33062	2009	Other Revenue
2730	2009-11-01	Sonstige Einnahmen	27906	2009-11-01	\N	11	2850	\N	25947	33205	2009	Other Revenue
2731	2009-12-01	Sonstige Einnahmen	29907	2009-12-01	\N	12	2001	\N	31246	29907	2009	Other Revenue
2732	2010-01-01	Sonstige Einnahmen	2055	2010-01-01	\N	1	2055	\N	1852	30110	2010	Other Revenue
2733	2010-02-01	Sonstige Einnahmen	3557	2010-02-01	\N	2	1502	\N	3552	29912	2010	Other Revenue
2734	2010-03-01	Sonstige Einnahmen	8274	2010-03-01	\N	3	4717	\N	11346	26835	2010	Other Revenue
2735	2010-04-01	Sonstige Einnahmen	10030	2010-04-01	\N	4	1756	\N	13667	26270	2010	Other Revenue
2736	2010-05-01	Sonstige Einnahmen	11096	2010-05-01	\N	5	1066	\N	16370	24633	2010	Other Revenue
2737	2010-06-01	Sonstige Einnahmen	17455	2010-06-01	\N	6	6359	\N	17454	29908	2010	Other Revenue
2738	2010-07-01	Sonstige Einnahmen	19875	2010-07-01	\N	7	2420	\N	19792	29990	2010	Other Revenue
2739	2010-08-01	Sonstige Einnahmen	21201	2010-08-01	\N	8	1326	\N	22323	28785	2010	Other Revenue
2740	2010-09-01	Sonstige Einnahmen	22416	2010-09-01	\N	9	1215	\N	23517	28806	2010	Other Revenue
2741	2010-10-01	Sonstige Einnahmen	24288	2010-10-01	\N	10	1872	\N	25056	29139	2010	Other Revenue
2742	2010-11-01	Sonstige Einnahmen	25894	2010-11-01	\N	11	1606	\N	27906	27895	2010	Other Revenue
2744	2011-01-01	Sonstige Einnahmen	1552	2011-01-01	\N	1	1552	\N	2055	32602	2011	Other Revenue
2745	2011-02-01	Sonstige Einnahmen	2978	2011-02-01	\N	2	1426	\N	3557	32526	2011	Other Revenue
2746	2011-03-01	Sonstige Einnahmen	6541	2011-03-01	\N	3	3563	\N	8274	31372	2011	Other Revenue
2747	2011-04-01	Sonstige Einnahmen	8291	2011-04-01	\N	4	1750	\N	10030	31366	2011	Other Revenue
2748	2011-05-01	Sonstige Einnahmen	10457	2011-05-01	\N	5	2166	\N	11096	32466	2011	Other Revenue
2749	2011-06-01	Sonstige Einnahmen	11710	2011-06-01	\N	6	1253	\N	17455	27360	2011	Other Revenue
2750	2011-07-01	Sonstige Einnahmen	14558	2011-07-01	\N	7	2848	\N	19875	27788	2011	Other Revenue
2751	2011-08-01	Sonstige Einnahmen	16588	2011-08-01	\N	8	2030	\N	21201	28492	2011	Other Revenue
2752	2011-09-01	Sonstige Einnahmen	18012	2011-09-01	\N	9	1424	\N	22416	28701	2011	Other Revenue
2753	2011-10-01	Sonstige Einnahmen	20583	2011-10-01	\N	10	2571	\N	24288	29400	2011	Other Revenue
2754	2011-11-01	Sonstige Einnahmen	22509	2011-11-01	\N	11	1926	\N	25894	29720	2011	Other Revenue
2755	2011-12-01	Sonstige Einnahmen	30455	2011-12-01	\N	12	7946	\N	33105	30455	2011	Other Revenue
2756	2012-01-01	Sonstige Einnahmen	1573	2012-01-01	\N	1	1573	\N	1552	30476	2012	Other Revenue
2757	2012-02-01	Sonstige Einnahmen	2809	2012-02-01	\N	2	1236	\N	2978	30286	2012	Other Revenue
2758	2012-03-01	Sonstige Einnahmen	4758	2012-03-01	\N	3	1949	\N	6541	28672	2012	Other Revenue
2759	2012-04-01	Sonstige Einnahmen	7443	2012-04-01	\N	4	2685	\N	8291	29607	2012	Other Revenue
2760	2012-05-01	Sonstige Einnahmen	9115	2012-05-01	\N	5	1672	\N	10457	29113	2012	Other Revenue
2761	2012-06-01	Sonstige Einnahmen	10617	2012-06-01	\N	6	1502	\N	11710	29362	2012	Other Revenue
2762	2012-07-01	Sonstige Einnahmen	13142	2012-07-01	\N	7	2525	\N	14558	29039	2012	Other Revenue
2763	2012-08-01	Sonstige Einnahmen	15010	2012-08-01	\N	8	1868	\N	16588	28877	2012	Other Revenue
2764	2012-09-01	Sonstige Einnahmen	16517	2012-09-01	\N	9	1507	\N	18012	28960	2012	Other Revenue
2765	2012-10-01	Sonstige Einnahmen	18858	2012-10-01	\N	10	2341	\N	20583	28730	2012	Other Revenue
2766	2012-11-01	Sonstige Einnahmen	20368	2012-11-01	\N	11	1510	\N	22509	28314	2012	Other Revenue
2767	2012-12-01	Sonstige Einnahmen	27870	2012-12-01	\N	12	7502	\N	30455	27870	2012	Other Revenue
2768	2013-01-01	Sonstige Einnahmen	2289	2013-01-01	\N	1	2289	\N	1573	28586	2013	Other Revenue
2769	2013-02-01	Sonstige Einnahmen	3243	2013-02-01	\N	2	954	\N	2809	28304	2013	Other Revenue
2770	2013-03-01	Sonstige Einnahmen	5268	2013-03-01	\N	3	2025	\N	4758	28380	2013	Other Revenue
2771	2013-04-01	Sonstige Einnahmen	8536	2013-04-01	\N	4	3268	\N	7443	28963	2013	Other Revenue
2772	2013-05-01	Sonstige Einnahmen	10011	2013-05-01	\N	5	1475	\N	9115	28766	2013	Other Revenue
2773	2013-06-01	Sonstige Einnahmen	11548	2013-06-01	\N	6	1537	\N	10617	28801	2013	Other Revenue
2774	2013-07-01	Sonstige Einnahmen	14704	2013-07-01	\N	7	3156	\N	13142	29432	2013	Other Revenue
2775	2013-08-01	Sonstige Einnahmen	16190	2013-08-01	\N	8	1486	\N	15010	29050	2013	Other Revenue
2776	2013-09-01	Sonstige Einnahmen	17402	2013-09-01	\N	9	1212	\N	16517	28755	2013	Other Revenue
2777	2013-10-01	Sonstige Einnahmen	20186	2013-10-01	\N	10	2784	\N	18858	29198	2013	Other Revenue
2778	2013-11-01	Sonstige Einnahmen	21549	2013-11-01	\N	11	1363	\N	20368	29051	2013	Other Revenue
2779	2013-12-01	Sonstige Einnahmen	25645	2013-12-01	\N	12	4096	\N	27870	25645	2013	Other Revenue
2780	2014-01-01	Sonstige Einnahmen	1501	2014-01-01	\N	1	1501	\N	2289	24857	2014	Other Revenue
2781	2014-02-01	Sonstige Einnahmen	3106	2014-02-01	\N	2	1605	\N	3243	25508	2014	Other Revenue
2782	2014-03-01	Sonstige Einnahmen	6460	2014-03-01	\N	3	3354	\N	5268	26837	2014	Other Revenue
2783	2014-04-01	Sonstige Einnahmen	8607	2014-04-01	\N	4	2147	\N	8536	25716	2014	Other Revenue
2784	2014-05-01	Sonstige Einnahmen	10772	2014-05-01	\N	5	2165	\N	10011	26406	2014	Other Revenue
2785	2014-06-01	Sonstige Einnahmen	12416	2014-06-01	\N	6	1644	\N	11548	26513	2014	Other Revenue
2786	2014-07-01	Sonstige Einnahmen	15755	2014-07-01	\N	7	3339	\N	14704	26696	2014	Other Revenue
2787	2014-08-01	Sonstige Einnahmen	17264	2014-08-01	\N	8	1509	\N	16190	26719	2014	Other Revenue
2788	2014-09-01	Sonstige Einnahmen	18854	2014-09-01	\N	9	1590	\N	17402	27097	2014	Other Revenue
2789	2014-10-01	Sonstige Einnahmen	21058	2014-10-01	\N	10	2204	\N	20186	26517	2014	Other Revenue
2790	2014-11-01	Sonstige Einnahmen	22405	2014-11-01	\N	11	1347	\N	21549	26501	2014	Other Revenue
2791	2014-12-01	Sonstige Einnahmen	24373	2014-12-01	\N	12	1968	\N	25645	24373	2014	Other Revenue
2792	2015-01-01	Sonstige Einnahmen	1600	2015-01-01	\N	1	1600	\N	1501	24472	2015	Other Revenue
2793	2015-02-01	Sonstige Einnahmen	2692	2015-02-01	\N	2	1092	\N	3106	23959	2015	Other Revenue
2794	2015-03-01	Sonstige Einnahmen	7927	2015-03-01	\N	3	5235	\N	6460	25840	2015	Other Revenue
2795	2015-04-01	Sonstige Einnahmen	9685	2015-04-01	\N	4	1758	\N	8607	25451	2015	Other Revenue
2796	2015-05-01	Sonstige Einnahmen	12906	2015-05-01	\N	5	3221	\N	10772	26507	2015	Other Revenue
2797	2015-06-01	Sonstige Einnahmen	17692	2015-06-01	\N	6	4786	\N	12416	29649	2015	Other Revenue
2798	2015-07-01	Sonstige Einnahmen	20628	2015-07-01	\N	7	2936	\N	15755	29246	2015	Other Revenue
2799	2015-08-01	Sonstige Einnahmen	21817	2015-08-01	\N	8	1189	\N	17264	28926	2015	Other Revenue
2800	2015-09-01	Sonstige Einnahmen	23709	2015-09-01	\N	9	1892	\N	18854	29228	2015	Other Revenue
2801	2015-10-01	Sonstige Einnahmen	25840	2015-10-01	\N	10	2131	\N	21058	29155	2015	Other Revenue
2802	2015-11-01	Sonstige Einnahmen	26873	2015-11-01	\N	11	1033	\N	22405	28841	2015	Other Revenue
2803	2015-12-01	Sonstige Einnahmen	29349	2015-12-01	\N	12	2476	\N	24373	29349	2015	Other Revenue
2804	2016-01-01	Sonstige Einnahmen	1868	2016-01-01	\N	1	1868	\N	1600	29617	2016	Other Revenue
2805	2016-02-01	Sonstige Einnahmen	4079	2016-02-01	\N	2	2211	\N	2692	30736	2016	Other Revenue
2806	2016-03-01	Sonstige Einnahmen	8753	2016-03-01	\N	3	4674	\N	7927	30175	2016	Other Revenue
0	2008-01-01	Lohnsteuer	3728	2008-01-01	\N	1	3728	\N	0	\N	2008	Wages Tax
1	2008-02-01	Lohnsteuer	8197	2008-02-01	\N	2	4469	\N	0	\N	2008	Wages Tax
2	2008-03-01	Lohnsteuer	12562	2008-03-01	\N	3	4365	\N	0	\N	2008	Wages Tax
3	2008-04-01	Lohnsteuer	17352	2008-04-01	\N	4	4790	\N	0	\N	2008	Wages Tax
4	2008-05-01	Lohnsteuer	22211	2008-05-01	\N	5	4859	\N	0	\N	2008	Wages Tax
5	2008-06-01	Lohnsteuer	27287	2008-06-01	\N	6	5076	\N	0	\N	2008	Wages Tax
6	2008-07-01	Lohnsteuer	32641	2008-07-01	\N	7	5354	\N	0	\N	2008	Wages Tax
7	2008-08-01	Lohnsteuer	37337	2008-08-01	\N	8	4696	\N	0	\N	2008	Wages Tax
8	2008-09-01	Lohnsteuer	41802	2008-09-01	\N	9	4465	\N	0	\N	2008	Wages Tax
9	2008-10-01	Lohnsteuer	46310	2008-10-01	\N	10	4508	\N	0	\N	2008	Wages Tax
10	2008-11-01	Lohnsteuer	50926	2008-11-01	\N	11	4616	\N	0	\N	2008	Wages Tax
11	2008-12-01	Lohnsteuer	60310	2008-12-01	\N	12	9384	\N	0	60310	2008	Wages Tax
12	2009-01-01	Lohnsteuer	3984	2009-01-01	\N	1	3984	\N	3728	60566	2009	Wages Tax
13	2009-02-01	Lohnsteuer	8611	2009-02-01	\N	2	4627	\N	8197	60724	2009	Wages Tax
14	2009-03-01	Lohnsteuer	12986	2009-03-01	\N	3	4375	\N	12562	60734	2009	Wages Tax
15	2009-04-01	Lohnsteuer	16126	2009-04-01	\N	4	3140	\N	17352	59084	2009	Wages Tax
16	2009-05-01	Lohnsteuer	21109	2009-05-01	\N	5	4983	\N	22211	59208	2009	Wages Tax
17	2009-06-01	Lohnsteuer	25933	2009-06-01	\N	6	4824	\N	27287	58956	2009	Wages Tax
18	2009-07-01	Lohnsteuer	31073	2009-07-01	\N	7	5140	\N	32641	58742	2009	Wages Tax
19	2009-08-01	Lohnsteuer	35367	2009-08-01	\N	8	4294	\N	37337	58340	2009	Wages Tax
20	2009-09-01	Lohnsteuer	39641	2009-09-01	\N	9	4274	\N	41802	58149	2009	Wages Tax
21	2009-10-01	Lohnsteuer	44015	2009-10-01	\N	10	4374	\N	46310	58015	2009	Wages Tax
22	2009-11-01	Lohnsteuer	48278	2009-11-01	\N	11	4263	\N	50926	57662	2009	Wages Tax
23	2009-12-01	Lohnsteuer	57248	2009-12-01	\N	12	8970	\N	60310	57248	2009	Wages Tax
2807	2016-04-01	Sonstige Einnahmen	11423	2016-04-01	\N	4	2670	\N	9685	31087	2016	Other Revenue
2808	2016-05-01	Sonstige Einnahmen	13216	2016-05-01	\N	5	1793	\N	12906	29659	2016	Other Revenue
2809	2016-06-01	Sonstige Einnahmen	14332	2016-06-01	\N	6	1116	\N	17692	25989	2016	Other Revenue
2810	2016-07-01	Sonstige Einnahmen	17940	2016-07-01	\N	7	3608	\N	20628	26661	2016	Other Revenue
2811	2016-08-01	Sonstige Einnahmen	19829	2016-08-01	\N	8	1889	\N	21817	27361	2016	Other Revenue
2812	2016-09-01	Sonstige Einnahmen	22534	2016-09-01	\N	9	2705	\N	23709	28174	2016	Other Revenue
2813	2016-10-01	Sonstige Einnahmen	24860	2016-10-01	\N	10	2326	\N	25840	28369	2016	Other Revenue
2814	2016-11-01	Sonstige Einnahmen	26043	2016-11-01	\N	11	1183	\N	26873	28519	2016	Other Revenue
2815	2016-12-01	Sonstige Einnahmen	27839	2016-12-01	\N	12	1796	\N	29349	27839	2016	Other Revenue
2816	2017-01-01	Sonstige Einnahmen	1802	2017-01-01	\N	1	1802	\N	1868	27773	2017	Other Revenue
2817	2017-02-01	Sonstige Einnahmen	2947	2017-02-01	\N	2	1145	\N	4079	26707	2017	Other Revenue
2818	2017-03-01	Sonstige Einnahmen	4630	2017-03-01	\N	3	1683	\N	8753	23716	2017	Other Revenue
2819	2017-04-01	Sonstige Einnahmen	7042	2017-04-01	\N	4	2412	\N	11423	23458	2017	Other Revenue
2820	2017-05-01	Sonstige Einnahmen	8607	2017-05-01	\N	5	1565	\N	13216	23230	2017	Other Revenue
2821	2017-06-01	Sonstige Einnahmen	9751	2017-06-01	\N	6	1144	\N	14332	23258	2017	Other Revenue
2822	2017-07-01	Sonstige Einnahmen	13007	2017-07-01	\N	7	3256	\N	17940	22906	2017	Other Revenue
2823	2017-08-01	Sonstige Einnahmen	14352	2017-08-01	\N	8	1345	\N	19829	22362	2017	Other Revenue
2824	2017-09-01	Sonstige Einnahmen	15772	2017-09-01	\N	9	1420	\N	22534	21077	2017	Other Revenue
2825	2017-10-01	Sonstige Einnahmen	17656	2017-10-01	\N	10	1884	\N	24860	20635	2017	Other Revenue
2826	2017-11-01	Sonstige Einnahmen	18760	2017-11-01	\N	11	1104	\N	26043	20556	2017	Other Revenue
2827	2017-12-01	Sonstige Einnahmen	21025	2017-12-01	\N	12	2265	\N	27839	21025	2017	Other Revenue
2828	2018-01-01	Sonstige Einnahmen	1771	2018-01-01	\N	1	1771	\N	1802	20994	2018	Other Revenue
2829	2018-02-01	Sonstige Einnahmen	3402	2018-02-01	\N	2	1631	\N	2947	21480	2018	Other Revenue
2830	2018-03-01	Sonstige Einnahmen	6271	2018-03-01	\N	3	2869	\N	4630	22666	2018	Other Revenue
2831	2018-04-01	Sonstige Einnahmen	9111	2018-04-01	\N	4	2840	\N	7042	23094	2018	Other Revenue
2832	2018-05-01	Sonstige Einnahmen	11001	2018-05-01	\N	5	1890	\N	8607	23419	2018	Other Revenue
2833	2018-06-01	Sonstige Einnahmen	12319	2018-06-01	\N	6	1318	\N	9751	23593	2018	Other Revenue
2834	2018-07-01	Sonstige Einnahmen	14295	2018-07-01	\N	7	1976	\N	13007	22313	2018	Other Revenue
2835	2018-08-01	Sonstige Einnahmen	17409	2018-08-01	\N	8	3114	\N	14352	24082	2018	Other Revenue
2836	2018-09-01	Sonstige Einnahmen	19033	2018-09-01	\N	9	1624	\N	15772	24286	2018	Other Revenue
2837	2018-10-01	Sonstige Einnahmen	21163	2018-10-01	\N	10	2130	\N	17656	24532	2018	Other Revenue
2838	2018-11-01	Sonstige Einnahmen	22767	2018-11-01	\N	11	1604	\N	18760	25032	2018	Other Revenue
2839	2018-12-01	Sonstige Einnahmen	25200	2018-12-01	\N	12	2433	\N	21025	25200	2018	Other Revenue
2840	2019-01-01	Lohnsteuer	\N	2019-01-01	89037.3417888334807	1	\N	89150.7319867348851	\N	89037.3417888334807	2019	Wages Tax
2841	2019-02-01	Lohnsteuer	\N	2019-02-01	89536.9270802419924	2	\N	89823.8004255338601	\N	89536.9270802419924	2019	Wages Tax
2842	2019-03-01	Lohnsteuer	\N	2019-03-01	90025.9807196752517	3	\N	90522.9653434003703	\N	90025.9807196752517	2019	Wages Tax
2843	2019-04-01	Lohnsteuer	\N	2019-04-01	90518.8424957602692	4	\N	91210.8554751767952	\N	90518.8424957602692	2019	Wages Tax
2844	2019-05-01	Lohnsteuer	\N	2019-05-01	91017.5808346093982	5	\N	91873.1701435259165	\N	91017.5808346093982	2019	Wages Tax
2845	2019-06-01	Lohnsteuer	\N	2019-06-01	91533.2184417690441	6	\N	92515.7164658660913	\N	91533.2184417690441	2019	Wages Tax
2846	2019-07-01	Lohnsteuer	\N	2019-07-01	92022.2371778337692	7	\N	93234.1749844768347	\N	92022.2371778337692	2019	Wages Tax
2847	2019-08-01	Lohnsteuer	\N	2019-08-01	92549.8442429513671	8	\N	93870.7727029342204	\N	92549.8442429513671	2019	Wages Tax
2848	2019-09-01	Lohnsteuer	\N	2019-09-01	93019.9365722734801	9	\N	94651.6508271363709	\N	93019.9365722734801	2019	Wages Tax
2849	2019-10-01	Lohnsteuer	\N	2019-10-01	93514.7754227121331	10	\N	95436.2195423715602	\N	93514.7754227121331	2019	Wages Tax
2862	2020-11-01	Lohnsteuer	\N	2020-11-01	100120.094725996169	11	\N	105257.812454146566	\N	100120.094725996169	2020	Wages Tax
2863	2020-12-01	Lohnsteuer	\N	2020-12-01	100651.675346158736	12	\N	105981.381556604116	\N	100651.675346158736	2020	Wages Tax
2864	2019-01-01	Veranlagte Einkommensteuer	\N	2019-01-01	25617.3408455775207	1	\N	25608.9846978248643	\N	25608.9846978248643	2019	Assessed Income Taxes
2865	2019-02-01	Veranlagte Einkommensteuer	\N	2019-02-01	25704.383231926251	2	\N	25704.1480390541801	\N	25704.1480390541801	2019	Assessed Income Taxes
2866	2019-03-01	Veranlagte Einkommensteuer	\N	2019-03-01	26056.2622765470624	3	\N	26165.9224295656095	\N	26056.2622765470624	2019	Assessed Income Taxes
2867	2019-04-01	Veranlagte Einkommensteuer	\N	2019-04-01	26107.1605615561675	4	\N	26298.2932203600649	\N	26107.1605615561675	2019	Assessed Income Taxes
2868	2019-05-01	Veranlagte Einkommensteuer	\N	2019-05-01	26058.4037577919662	5	\N	26266.1088116799074	\N	26058.4037577919662	2019	Assessed Income Taxes
2869	2019-06-01	Veranlagte Einkommensteuer	\N	2019-06-01	26334.2986086596684	6	\N	26620.3417495988324	\N	26334.2986086596684	2019	Assessed Income Taxes
2870	2019-07-01	Veranlagte Einkommensteuer	\N	2019-07-01	26302.901585242158	7	\N	26649.576714251034	\N	26302.901585242158	2019	Assessed Income Taxes
2871	2019-08-01	Veranlagte Einkommensteuer	\N	2019-08-01	26262.7602624282918	8	\N	26589.8246054041701	\N	26262.7602624282918	2019	Assessed Income Taxes
2872	2019-09-01	Veranlagte Einkommensteuer	\N	2019-09-01	26404.1954826103356	9	\N	26719.6286637647318	\N	26404.1954826103356	2019	Assessed Income Taxes
2873	2019-10-01	Veranlagte Einkommensteuer	\N	2019-10-01	26350.8223144631702	10	\N	26645.5468101237093	\N	26350.8223144631702	2019	Assessed Income Taxes
2877	2020-02-01	Veranlagte Einkommensteuer	\N	2020-02-01	26409.4918660253425	2	\N	26537.0339713174326	\N	26409.4918660253425	2020	Assessed Income Taxes
2878	2020-03-01	Veranlagte Einkommensteuer	\N	2020-03-01	26464.7986093237851	3	\N	26463.0576611719662	\N	26463.0576611719662	2020	Assessed Income Taxes
2879	2020-04-01	Veranlagte Einkommensteuer	\N	2020-04-01	26474.7037651150349	4	\N	26530.1993937878942	\N	26474.7037651150349	2020	Assessed Income Taxes
2880	2020-05-01	Veranlagte Einkommensteuer	\N	2020-05-01	26432.6357148955176	5	\N	26417.2933604983118	\N	26417.2933604983118	2020	Assessed Income Taxes
2881	2020-06-01	Veranlagte Einkommensteuer	\N	2020-06-01	26410.1925034371816	6	\N	26330.0455807081744	\N	26330.0455807081744	2020	Assessed Income Taxes
2882	2020-07-01	Veranlagte Einkommensteuer	\N	2020-07-01	26293.0779402109874	7	\N	26067.9466797959685	\N	26067.9466797959685	2020	Assessed Income Taxes
2883	2020-08-01	Veranlagte Einkommensteuer	\N	2020-08-01	26302.2140244692564	8	\N	26072.4707555774803	\N	26072.4707555774803	2020	Assessed Income Taxes
2884	2020-09-01	Veranlagte Einkommensteuer	\N	2020-09-01	26344.3544122127751	9	\N	25900.1448471799704	\N	25900.1448471799704	2020	Assessed Income Taxes
2885	2020-10-01	Veranlagte Einkommensteuer	\N	2020-10-01	26317.7368555606554	10	\N	25794.7359845180799	\N	25794.7359845180799	2020	Assessed Income Taxes
2886	2020-11-01	Veranlagte Einkommensteuer	\N	2020-11-01	26300.4853233545837	11	\N	25751.634699870654	\N	25751.634699870654	2020	Assessed Income Taxes
2887	2020-12-01	Veranlagte Einkommensteuer	\N	2020-12-01	26365.214084535688	12	\N	25622.3572635088822	\N	25622.3572635088822	2020	Assessed Income Taxes
2888	2019-01-01	nicht veranlagte Steuer vom Ertrag	\N	2019-01-01	11610.6551108459662	1	\N	11776.4218981913164	\N	11610.6551108459662	2019	Non-Assessed Taxes on Earnings
2889	2019-02-01	nicht veranlagte Steuer vom Ertrag	\N	2019-02-01	11591.8704864247611	2	\N	11636.7984612025884	\N	11591.8704864247611	2019	Non-Assessed Taxes on Earnings
2890	2019-03-01	nicht veranlagte Steuer vom Ertrag	\N	2019-03-01	11642.5700688157976	3	\N	11980.1987239243408	\N	11642.5700688157976	2019	Non-Assessed Taxes on Earnings
2891	2019-04-01	nicht veranlagte Steuer vom Ertrag	\N	2019-04-01	11639.8263618008277	4	\N	11970.424719302795	\N	11639.8263618008277	2019	Non-Assessed Taxes on Earnings
2892	2019-05-01	nicht veranlagte Steuer vom Ertrag	\N	2019-05-01	11658.6707296294408	5	\N	12103.2948848983906	\N	11658.6707296294408	2019	Non-Assessed Taxes on Earnings
2893	2019-06-01	nicht veranlagte Steuer vom Ertrag	\N	2019-06-01	11502.6433133597384	6	\N	10958.9800398083153	\N	10958.9800398083153	2019	Non-Assessed Taxes on Earnings
2894	2019-07-01	nicht veranlagte Steuer vom Ertrag	\N	2019-07-01	11580.0552615261004	7	\N	11681.6499609453494	\N	11580.0552615261004	2019	Non-Assessed Taxes on Earnings
2895	2019-08-01	nicht veranlagte Steuer vom Ertrag	\N	2019-08-01	11695.176970911667	8	\N	12479.4031470129594	\N	11695.176970911667	2019	Non-Assessed Taxes on Earnings
2896	2019-09-01	nicht veranlagte Steuer vom Ertrag	\N	2019-09-01	11694.0619609806199	9	\N	12436.9583047120504	\N	11694.0619609806199	2019	Non-Assessed Taxes on Earnings
2897	2019-10-01	nicht veranlagte Steuer vom Ertrag	\N	2019-10-01	11689.5249772114457	10	\N	12388.7457628335542	\N	11689.5249772114457	2019	Non-Assessed Taxes on Earnings
2898	2019-11-01	nicht veranlagte Steuer vom Ertrag	\N	2019-11-01	11718.4130139423778	11	\N	12589.7026831569638	\N	11718.4130139423778	2019	Non-Assessed Taxes on Earnings
2899	2019-12-01	nicht veranlagte Steuer vom Ertrag	\N	2019-12-01	11696.9086737585967	12	\N	12443.3994304994758	\N	11696.9086737585967	2019	Non-Assessed Taxes on Earnings
2900	2020-01-01	nicht veranlagte Steuer vom Ertrag	\N	2020-01-01	11711.4545823483695	1	\N	12486.3234514599117	\N	11711.4545823483695	2020	Non-Assessed Taxes on Earnings
2901	2020-02-01	nicht veranlagte Steuer vom Ertrag	\N	2020-02-01	11718.2835985064212	2	\N	12561.0941133878841	\N	11718.2835985064212	2020	Non-Assessed Taxes on Earnings
2902	2020-03-01	nicht veranlagte Steuer vom Ertrag	\N	2020-03-01	11685.9363559656158	3	\N	12373.0127275172908	\N	11685.9363559656158	2020	Non-Assessed Taxes on Earnings
2903	2020-04-01	nicht veranlagte Steuer vom Ertrag	\N	2020-04-01	11714.0730763941974	4	\N	12598.6465014070636	\N	11714.0730763941974	2020	Non-Assessed Taxes on Earnings
2904	2020-05-01	nicht veranlagte Steuer vom Ertrag	\N	2020-05-01	11747.3047179521509	5	\N	12950.4547037520369	\N	11747.3047179521509	2020	Non-Assessed Taxes on Earnings
2905	2020-06-01	nicht veranlagte Steuer vom Ertrag	\N	2020-06-01	11968.9035482336858	6	\N	14597.5092187831106	\N	11968.9035482336858	2020	Non-Assessed Taxes on Earnings
2906	2020-07-01	nicht veranlagte Steuer vom Ertrag	\N	2020-07-01	12019.7564398144532	7	\N	14763.6149205604997	\N	12019.7564398144532	2020	Non-Assessed Taxes on Earnings
2907	2020-08-01	nicht veranlagte Steuer vom Ertrag	\N	2020-08-01	11859.506050320515	8	\N	13734.3273450463348	\N	11859.506050320515	2020	Non-Assessed Taxes on Earnings
2908	2020-09-01	nicht veranlagte Steuer vom Ertrag	\N	2020-09-01	11867.9173101636588	9	\N	13817.5194917802473	\N	11867.9173101636588	2020	Non-Assessed Taxes on Earnings
2909	2020-10-01	nicht veranlagte Steuer vom Ertrag	\N	2020-10-01	11884.5788218122343	10	\N	13901.0734444106711	\N	11884.5788218122343	2020	Non-Assessed Taxes on Earnings
2910	2020-11-01	nicht veranlagte Steuer vom Ertrag	\N	2020-11-01	11883.1552331230596	11	\N	13874.2296343433645	\N	11883.1552331230596	2020	Non-Assessed Taxes on Earnings
2911	2020-12-01	nicht veranlagte Steuer vom Ertrag	\N	2020-12-01	11868.7628593757781	12	\N	13800.9001949860958	\N	11868.7628593757781	2020	Non-Assessed Taxes on Earnings
2912	2019-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-01-01	2716.54952748572305	1	\N	2716.54952748572305	\N	2716.54952748572305	2019	Final Withholding Tax on Interest and Capital Gains
2913	2019-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-02-01	2839.73768909631917	2	\N	2839.73768909631917	\N	2839.73768909631917	2019	Final Withholding Tax on Interest and Capital Gains
2914	2019-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-03-01	2843.95466550643232	3	\N	2843.95466550643232	\N	2843.95466550643232	2019	Final Withholding Tax on Interest and Capital Gains
2915	2019-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-04-01	2924.98394168602726	4	\N	2924.98394168602726	\N	2924.98394168602726	2019	Final Withholding Tax on Interest and Capital Gains
2916	2019-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-05-01	2973.58875576280207	5	\N	2973.58875576280207	\N	2973.58875576280207	2019	Final Withholding Tax on Interest and Capital Gains
2917	2019-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-06-01	3031.24048655692695	6	\N	3031.24048655692695	\N	3031.24048655692695	2019	Final Withholding Tax on Interest and Capital Gains
2975	2020-04-01	Steuern vom Umsatz	\N	2020-04-01	120218.747934365529	4	\N	120842.802879475465	\N	120218.747934365529	2020	Value Added Taxes (VAT)
2918	2019-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-07-01	3055.13050118902265	7	\N	3055.13050118902265	\N	3055.13050118902265	2019	Final Withholding Tax on Interest and Capital Gains
2919	2019-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-08-01	3044.94160753168444	8	\N	3044.94160753168444	\N	3044.94160753168444	2019	Final Withholding Tax on Interest and Capital Gains
2920	2019-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-09-01	3051.08670497535695	9	\N	3051.08670497535695	\N	3051.08670497535695	2019	Final Withholding Tax on Interest and Capital Gains
2921	2019-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-10-01	3043.77659079205705	10	\N	3043.77659079205705	\N	3043.77659079205705	2019	Final Withholding Tax on Interest and Capital Gains
2922	2019-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-11-01	3064.90171872374276	11	\N	3064.90171872374276	\N	3064.90171872374276	2019	Final Withholding Tax on Interest and Capital Gains
2923	2019-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2019-12-01	3105.85330826121026	12	\N	3105.85330826121026	\N	3105.85330826121026	2019	Final Withholding Tax on Interest and Capital Gains
2924	2020-01-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-01-01	3097.2805871469568	1	\N	3097.2805871469568	\N	3097.2805871469568	2020	Final Withholding Tax on Interest and Capital Gains
2925	2020-02-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-02-01	3108.47311319394885	2	\N	3108.47311319394885	\N	3108.47311319394885	2020	Final Withholding Tax on Interest and Capital Gains
2926	2020-03-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-03-01	3081.78584316466504	3	\N	3081.78584316466504	\N	3081.78584316466504	2020	Final Withholding Tax on Interest and Capital Gains
2927	2020-04-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-04-01	3015.75989207912107	4	\N	3015.75989207912107	\N	3015.75989207912107	2020	Final Withholding Tax on Interest and Capital Gains
2928	2020-05-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-05-01	2950.41664260208336	5	\N	2950.41664260208336	\N	2950.41664260208336	2020	Final Withholding Tax on Interest and Capital Gains
2929	2020-06-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-06-01	2898.73013893027473	6	\N	2898.73013893027473	\N	2898.73013893027473	2020	Final Withholding Tax on Interest and Capital Gains
2930	2020-07-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-07-01	2859.66926307883114	7	\N	2859.66926307883114	\N	2859.66926307883114	2020	Final Withholding Tax on Interest and Capital Gains
2931	2020-08-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-08-01	2842.86454294573423	8	\N	2842.86454294573423	\N	2842.86454294573423	2020	Final Withholding Tax on Interest and Capital Gains
2932	2020-09-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-09-01	2835.71828940750447	9	\N	2835.71828940750447	\N	2835.71828940750447	2020	Final Withholding Tax on Interest and Capital Gains
2933	2020-10-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-10-01	2818.79848579760801	10	\N	2818.79848579760801	\N	2818.79848579760801	2020	Final Withholding Tax on Interest and Capital Gains
2934	2020-11-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-11-01	2780.32092914034047	11	\N	2780.32092914034047	\N	2780.32092914034047	2020	Final Withholding Tax on Interest and Capital Gains
2935	2020-12-01	Abgeltungsteuer auf Zins- und Veräußerungserträge	\N	2020-12-01	2749.25742279786482	12	\N	2749.25742279786482	\N	2749.25742279786482	2020	Final Withholding Tax on Interest and Capital Gains
2936	2019-01-01	Körperschaftsteuer	\N	2019-01-01	17005.5630271040536	1	\N	16670.736491247997	\N	16670.736491247997	2019	Corporation Tax
2937	2019-02-01	Körperschaftsteuer	\N	2019-02-01	17104.4662132694102	2	\N	16688.724094562931	\N	16688.724094562931	2019	Corporation Tax
2938	2019-03-01	Körperschaftsteuer	\N	2019-03-01	17172.8446129226068	3	\N	16721.1465764723798	\N	16721.1465764723798	2019	Corporation Tax
2939	2019-04-01	Körperschaftsteuer	\N	2019-04-01	17225.4659878728016	4	\N	16764.7768640449431	\N	16764.7768640449431	2019	Corporation Tax
2940	2019-05-01	Körperschaftsteuer	\N	2019-05-01	17455.4210636895514	5	\N	16722.5433832171802	\N	16722.5433832171802	2019	Corporation Tax
2941	2019-06-01	Körperschaftsteuer	\N	2019-06-01	17539.8497466547851	6	\N	16743.1760983395761	\N	16743.1760983395761	2019	Corporation Tax
2942	2019-07-01	Körperschaftsteuer	\N	2019-07-01	17689.7484340823321	7	\N	16737.7116383500506	\N	16737.7116383500506	2019	Corporation Tax
2943	2019-08-01	Körperschaftsteuer	\N	2019-08-01	17815.1694752491167	8	\N	16747.2214523314833	\N	16747.2214523314833	2019	Corporation Tax
2944	2019-09-01	Körperschaftsteuer	\N	2019-09-01	17912.4223734915904	9	\N	16764.1959350786456	\N	16764.1959350786456	2019	Corporation Tax
2945	2019-10-01	Körperschaftsteuer	\N	2019-10-01	18100.9791006972882	10	\N	16743.2685208280309	\N	16743.2685208280309	2019	Corporation Tax
2946	2019-11-01	Körperschaftsteuer	\N	2019-11-01	18234.3649995575397	11	\N	16747.736579429733	\N	16747.736579429733	2019	Corporation Tax
2947	2019-12-01	Körperschaftsteuer	\N	2019-12-01	18263.6256706390086	12	\N	16801.2710861987143	\N	16801.2710861987143	2019	Corporation Tax
2948	2020-01-01	Körperschaftsteuer	\N	2020-01-01	18359.5187168751727	1	\N	16815.9478699232823	\N	16815.9478699232823	2020	Corporation Tax
2949	2020-02-01	Körperschaftsteuer	\N	2020-02-01	18487.8537649941209	2	\N	16817.1357672648228	\N	16817.1357672648228	2020	Corporation Tax
2950	2020-03-01	Körperschaftsteuer	\N	2020-03-01	18595.4026202883251	3	\N	16825.7961569465078	\N	16825.7961569465078	2020	Corporation Tax
2951	2020-04-01	Körperschaftsteuer	\N	2020-04-01	18748.7976578885027	4	\N	16816.3305659768776	\N	16816.3305659768776	2020	Corporation Tax
2952	2020-05-01	Körperschaftsteuer	\N	2020-05-01	18827.0127270461635	5	\N	16839.9782964382248	\N	16839.9782964382248	2020	Corporation Tax
2953	2020-06-01	Körperschaftsteuer	\N	2020-06-01	18876.4768005203841	6	\N	16878.0763977897695	\N	16878.0763977897695	2020	Corporation Tax
2954	2020-07-01	Körperschaftsteuer	\N	2020-07-01	19083.8770867692001	7	\N	16848.9765101425401	\N	16848.9765101425401	2020	Corporation Tax
2955	2020-08-01	Körperschaftsteuer	\N	2020-08-01	19221.1482551685331	8	\N	16849.2327657854366	\N	16849.2327657854366	2020	Corporation Tax
2956	2020-09-01	Körperschaftsteuer	\N	2020-09-01	19183.9708146237172	9	\N	16921.4121950356421	\N	16921.4121950356421	2020	Corporation Tax
2957	2020-10-01	Körperschaftsteuer	\N	2020-10-01	19197.3018800092868	10	\N	16969.3788586949559	\N	16969.3788586949559	2020	Corporation Tax
2958	2020-11-01	Körperschaftsteuer	\N	2020-11-01	19323.3057663164545	11	\N	16973.3452073394183	\N	16973.3452073394183	2020	Corporation Tax
2959	2020-12-01	Körperschaftsteuer	\N	2020-12-01	19538.6708554235302	12	\N	16939.9150869767691	\N	16939.9150869767691	2020	Corporation Tax
2960	2019-01-01	Steuern vom Umsatz	\N	2019-01-01	116729.154401547756	1	\N	116758.60815748453	\N	116729.154401547756	2019	Value Added Taxes (VAT)
2961	2019-02-01	Steuern vom Umsatz	\N	2019-02-01	116970.33643146012	2	\N	117036.506745356193	\N	116970.33643146012	2019	Value Added Taxes (VAT)
2962	2019-03-01	Steuern vom Umsatz	\N	2019-03-01	117173.837508974742	3	\N	117267.039640621253	\N	117173.837508974742	2019	Value Added Taxes (VAT)
2963	2019-04-01	Steuern vom Umsatz	\N	2019-04-01	117383.008683954264	4	\N	117502.975657959745	\N	117383.008683954264	2019	Value Added Taxes (VAT)
2964	2019-05-01	Steuern vom Umsatz	\N	2019-05-01	117570.710181232076	5	\N	117709.019697257449	\N	117570.710181232076	2019	Value Added Taxes (VAT)
2965	2019-06-01	Steuern vom Umsatz	\N	2019-06-01	117741.632768173513	6	\N	117894.984245456959	\N	117741.632768173513	2019	Value Added Taxes (VAT)
2966	2019-07-01	Steuern vom Umsatz	\N	2019-07-01	117997.984339008006	7	\N	118198.369148971542	\N	117997.984339008006	2019	Value Added Taxes (VAT)
2967	2019-08-01	Steuern vom Umsatz	\N	2019-08-01	118150.878057286449	8	\N	118356.122773716139	\N	118150.878057286449	2019	Value Added Taxes (VAT)
2968	2019-09-01	Steuern vom Umsatz	\N	2019-09-01	118371.932295105114	9	\N	118614.804163511857	\N	118371.932295105114	2019	Value Added Taxes (VAT)
2969	2019-10-01	Steuern vom Umsatz	\N	2019-10-01	118539.2171471482	10	\N	118795.779457824116	\N	118539.2171471482	2019	Value Added Taxes (VAT)
2970	2019-11-01	Steuern vom Umsatz	\N	2019-11-01	118792.115495456092	11	\N	119105.641652994644	\N	118792.115495456092	2019	Value Added Taxes (VAT)
2971	2019-12-01	Steuern vom Umsatz	\N	2019-12-01	119459.28983089824	12	\N	119980.966367432164	\N	119459.28983089824	2019	Value Added Taxes (VAT)
2972	2020-01-01	Steuern vom Umsatz	\N	2020-01-01	119641.065655619284	1	\N	120182.415984184088	\N	119641.065655619284	2020	Value Added Taxes (VAT)
2973	2020-02-01	Steuern vom Umsatz	\N	2020-02-01	119892.425224370963	2	\N	120482.211920587331	\N	119892.425224370963	2020	Value Added Taxes (VAT)
2974	2020-03-01	Steuern vom Umsatz	\N	2020-03-01	120069.841650599919	3	\N	120681.981092601956	\N	120069.841650599919	2020	Value Added Taxes (VAT)
2976	2020-05-01	Steuern vom Umsatz	\N	2020-05-01	120445.90419016649	5	\N	121112.556588563355	\N	120445.90419016649	2020	Value Added Taxes (VAT)
2977	2020-06-01	Steuern vom Umsatz	\N	2020-06-01	120674.038298608313	6	\N	121380.73194411039	\N	120674.038298608313	2020	Value Added Taxes (VAT)
2978	2020-07-01	Steuern vom Umsatz	\N	2020-07-01	120876.154672327844	7	\N	121617.754692935268	\N	120876.154672327844	2020	Value Added Taxes (VAT)
2979	2020-08-01	Steuern vom Umsatz	\N	2020-08-01	121147.475602583145	8	\N	121947.670958310162	\N	121147.475602583145	2020	Value Added Taxes (VAT)
2980	2020-09-01	Steuern vom Umsatz	\N	2020-09-01	121353.343283556969	9	\N	122186.046954030564	\N	121353.343283556969	2020	Value Added Taxes (VAT)
2981	2020-10-01	Steuern vom Umsatz	\N	2020-10-01	121539.471787503731	10	\N	122396.285267412735	\N	121539.471787503731	2020	Value Added Taxes (VAT)
2982	2020-11-01	Steuern vom Umsatz	\N	2020-11-01	121714.046520278862	11	\N	122587.881681916158	\N	121714.046520278862	2020	Value Added Taxes (VAT)
2983	2020-12-01	Steuern vom Umsatz	\N	2020-12-01	121945.968799161405	12	\N	122889.619378430551	\N	121945.968799161405	2020	Value Added Taxes (VAT)
2984	2019-01-01	Gewerbesteuerumlage	\N	2019-01-01	2064.44152555877918	1	\N	1995.66785051751049	\N	1995.66785051751049	2019	Trade Tax Apportionment
2985	2019-02-01	Gewerbesteuerumlage	\N	2019-02-01	2072.99271242542136	2	\N	2072.39722884985486	\N	2072.39722884985486	2019	Trade Tax Apportionment
2986	2019-03-01	Gewerbesteuerumlage	\N	2019-03-01	2083.09840645826444	3	\N	2031.7937910359592	\N	2031.7937910359592	2019	Trade Tax Apportionment
2987	2019-04-01	Gewerbesteuerumlage	\N	2019-04-01	2092.95882334015641	4	\N	2067.14989720081212	\N	2067.14989720081212	2019	Trade Tax Apportionment
2988	2019-05-01	Gewerbesteuerumlage	\N	2019-05-01	2100.86622373308001	5	\N	2070.90753047218959	\N	2070.90753047218959	2019	Trade Tax Apportionment
2989	2019-06-01	Gewerbesteuerumlage	\N	2019-06-01	2111.12463635035419	6	\N	2088.80488979648999	\N	2088.80488979648999	2019	Trade Tax Apportionment
2990	2019-07-01	Gewerbesteuerumlage	\N	2019-07-01	2120.48481504318988	7	\N	2060.19836437572121	\N	2060.19836437572121	2019	Trade Tax Apportionment
2991	2019-08-01	Gewerbesteuerumlage	\N	2019-08-01	2127.45775684712589	8	\N	2113.17472165821027	\N	2113.17472165821027	2019	Trade Tax Apportionment
2992	2019-09-01	Gewerbesteuerumlage	\N	2019-09-01	2137.37720859912179	9	\N	2119.32721941514501	\N	2119.32721941514501	2019	Trade Tax Apportionment
2993	2019-10-01	Gewerbesteuerumlage	\N	2019-10-01	2146.16440246564071	10	\N	2130.50209366691706	\N	2130.50209366691706	2019	Trade Tax Apportionment
2994	2019-11-01	Gewerbesteuerumlage	\N	2019-11-01	2155.41738185212125	11	\N	2139.92834853627664	\N	2139.92834853627664	2019	Trade Tax Apportionment
2995	2019-12-01	Gewerbesteuerumlage	\N	2019-12-01	2163.15641135130272	12	\N	2149.53881432324306	\N	2149.53881432324306	2019	Trade Tax Apportionment
2996	2020-01-01	Gewerbesteuerumlage	\N	2020-01-01	2176.07447274381411	1	\N	2135.05879152159196	\N	2135.05879152159196	2020	Trade Tax Apportionment
2997	2020-02-01	Gewerbesteuerumlage	\N	2020-02-01	2186.227089832003	2	\N	2147.16198316750479	\N	2147.16198316750479	2020	Trade Tax Apportionment
2998	2020-03-01	Gewerbesteuerumlage	\N	2020-03-01	2196.13703364083085	3	\N	2152.4018074412711	\N	2152.4018074412711	2020	Trade Tax Apportionment
2999	2020-04-01	Gewerbesteuerumlage	\N	2020-04-01	2205.5539811592339	4	\N	2148.23196610972536	\N	2148.23196610972536	2020	Trade Tax Apportionment
3000	2020-05-01	Gewerbesteuerumlage	\N	2020-05-01	2212.99068043696116	5	\N	2170.92565655357384	\N	2170.92565655357384	2020	Trade Tax Apportionment
3001	2020-06-01	Gewerbesteuerumlage	\N	2020-06-01	2222.83229515611765	6	\N	2180.42477129463896	\N	2180.42477129463896	2020	Trade Tax Apportionment
3002	2020-07-01	Gewerbesteuerumlage	\N	2020-07-01	2230.26505610361119	7	\N	2187.2676195558447	\N	2187.2676195558447	2020	Trade Tax Apportionment
3003	2020-08-01	Gewerbesteuerumlage	\N	2020-08-01	2240.88615357441995	8	\N	2208.15309588318223	\N	2208.15309588318223	2020	Trade Tax Apportionment
3004	2020-09-01	Gewerbesteuerumlage	\N	2020-09-01	2251.14454641363591	9	\N	2214.63457725567832	\N	2214.63457725567832	2020	Trade Tax Apportionment
3005	2020-10-01	Gewerbesteuerumlage	\N	2020-10-01	2257.73759030275141	10	\N	2246.86517523457678	\N	2246.86517523457678	2020	Trade Tax Apportionment
3006	2020-11-01	Gewerbesteuerumlage	\N	2020-11-01	2275.62946223392282	11	\N	2182.87427242542526	\N	2182.87427242542526	2020	Trade Tax Apportionment
3007	2020-12-01	Gewerbesteuerumlage	\N	2020-12-01	2273.74040714894045	12	\N	2273.03461591064251	\N	2273.03461591064251	2020	Trade Tax Apportionment
3008	2019-01-01	Energiesteuer	\N	2019-01-01	40884.7096262363484	1	\N	40889.6167265143304	\N	40884.7096262363484	2019	Energy Duty
3009	2019-02-01	Energiesteuer	\N	2019-02-01	40884.9603709197036	2	\N	40890.5371385172475	\N	40884.9603709197036	2019	Energy Duty
3010	2019-03-01	Energiesteuer	\N	2019-03-01	40884.9835744506563	3	\N	40859.3019443919984	\N	40859.3019443919984	2019	Energy Duty
3011	2019-04-01	Energiesteuer	\N	2019-04-01	40884.9857216700548	4	\N	40901.1985803642237	\N	40884.9857216700548	2019	Energy Duty
3012	2019-05-01	Energiesteuer	\N	2019-05-01	40884.9859203704618	5	\N	40849.9839292195611	\N	40849.9839292195611	2019	Energy Duty
3013	2019-06-01	Energiesteuer	\N	2019-06-01	40884.9859387578981	6	\N	40865.3489245276724	\N	40865.3489245276724	2019	Energy Duty
3014	2019-07-01	Energiesteuer	\N	2019-07-01	40884.9859404594463	7	\N	40816.5268838235352	\N	40816.5268838235352	2019	Energy Duty
3015	2019-08-01	Energiesteuer	\N	2019-08-01	40884.9859406169053	8	\N	40794.1610968922323	\N	40794.1610968922323	2019	Energy Duty
3016	2019-09-01	Energiesteuer	\N	2019-09-01	40884.9859406314717	9	\N	40795.9616405906854	\N	40795.9616405906854	2019	Energy Duty
3017	2019-10-01	Energiesteuer	\N	2019-10-01	40884.9859406328178	10	\N	40792.748409371452	\N	40792.748409371452	2019	Energy Duty
3018	2019-11-01	Energiesteuer	\N	2019-11-01	40884.9859406329488	11	\N	40812.4448445591624	\N	40812.4448445591624	2019	Energy Duty
3019	2019-12-01	Energiesteuer	\N	2019-12-01	40884.985940632956	12	\N	40790.6287715022772	\N	40790.6287715022772	2019	Energy Duty
3020	2020-01-01	Energiesteuer	\N	2020-01-01	40884.985940632956	1	\N	40805.7505419879963	\N	40805.7505419879963	2020	Energy Duty
3021	2020-02-01	Energiesteuer	\N	2020-02-01	40884.985940632956	2	\N	40824.337684822036	\N	40824.337684822036	2020	Energy Duty
3022	2020-03-01	Energiesteuer	\N	2020-03-01	40884.985940632956	3	\N	40823.2524152178157	\N	40823.2524152178157	2020	Energy Duty
3023	2020-04-01	Energiesteuer	\N	2020-04-01	40884.985940632956	4	\N	40708.779432148709	\N	40708.779432148709	2020	Energy Duty
3024	2020-05-01	Energiesteuer	\N	2020-05-01	40884.985940632956	5	\N	40836.4581399338058	\N	40836.4581399338058	2020	Energy Duty
3025	2020-06-01	Energiesteuer	\N	2020-06-01	40884.985940632956	6	\N	40809.3087920680846	\N	40809.3087920680846	2020	Energy Duty
3026	2020-07-01	Energiesteuer	\N	2020-07-01	40884.985940632956	7	\N	40841.2414480180159	\N	40841.2414480180159	2020	Energy Duty
3027	2020-08-01	Energiesteuer	\N	2020-08-01	40884.985940632956	8	\N	40857.0532437156726	\N	40857.0532437156726	2020	Energy Duty
3028	2020-09-01	Energiesteuer	\N	2020-09-01	40884.985940632956	9	\N	40871.8209937453357	\N	40871.8209937453357	2020	Energy Duty
3029	2020-10-01	Energiesteuer	\N	2020-10-01	40884.985940632956	10	\N	40874.6833473035367	\N	40874.6833473035367	2020	Energy Duty
3030	2020-11-01	Energiesteuer	\N	2020-11-01	40884.985940632956	11	\N	40928.4028133582542	\N	40884.985940632956	2020	Energy Duty
3031	2020-12-01	Energiesteuer	\N	2020-12-01	40884.985940632956	12	\N	40943.6275173009344	\N	40884.985940632956	2020	Energy Duty
3032	2019-01-01	Tabaksteuer	\N	2019-01-01	14356.1543469894459	1	\N	14339.1748126019756	\N	14339.1748126019756	2019	Tobacco Duty
3033	2019-02-01	Tabaksteuer	\N	2019-02-01	14329.4687674246943	2	\N	14339.1733543372993	\N	14329.4687674246943	2019	Tobacco Duty
3034	2019-03-01	Tabaksteuer	\N	2019-03-01	14351.2192971539644	3	\N	14339.1745886436347	\N	14339.1745886436347	2019	Tobacco Duty
3035	2019-04-01	Tabaksteuer	\N	2019-04-01	14381.7618439907146	4	\N	14339.1765259239819	\N	14339.1765259239819	2019	Tobacco Duty
3036	2019-05-01	Tabaksteuer	\N	2019-05-01	14426.7668601774385	5	\N	14339.1793740543144	\N	14339.1793740543144	2019	Tobacco Duty
3037	2019-06-01	Tabaksteuer	\N	2019-06-01	14392.1010322792263	6	\N	14339.1770829280376	\N	14339.1770829280376	2019	Tobacco Duty
3038	2019-07-01	Tabaksteuer	\N	2019-07-01	14351.8322366509474	7	\N	14339.1744883219526	\N	14339.1744883219526	2019	Tobacco Duty
3039	2019-08-01	Tabaksteuer	\N	2019-08-01	14335.5667147564473	8	\N	14339.1734806173245	\N	14335.5667147564473	2019	Tobacco Duty
3040	2019-09-01	Tabaksteuer	\N	2019-09-01	14321.8896203656914	9	\N	14339.172642464524	\N	14321.8896203656914	2019	Tobacco Duty
3041	2019-10-01	Tabaksteuer	\N	2019-10-01	14340.5759084727488	10	\N	14339.1737735467977	\N	14339.1737735467977	2019	Tobacco Duty
3042	2019-11-01	Tabaksteuer	\N	2019-11-01	14322.3778602341081	11	\N	14339.1726545777201	\N	14322.3778602341081	2019	Tobacco Duty
3043	2019-12-01	Tabaksteuer	\N	2019-12-01	14326.3117876452561	12	\N	14339.172892799199	\N	14326.3117876452561	2019	Tobacco Duty
3044	2020-01-01	Tabaksteuer	\N	2020-01-01	14334.511221942872	1	\N	14339.1733907483886	\N	14334.511221942872	2020	Tobacco Duty
3045	2020-02-01	Tabaksteuer	\N	2020-02-01	14332.7891678803589	2	\N	14339.1732854477486	\N	14332.7891678803589	2020	Tobacco Duty
3046	2020-03-01	Tabaksteuer	\N	2020-03-01	14343.6936541655177	3	\N	14339.1739513737848	\N	14339.1739513737848	2020	Tobacco Duty
3047	2020-04-01	Tabaksteuer	\N	2020-04-01	14364.7643782646282	4	\N	14339.1752502266118	\N	14339.1752502266118	2020	Tobacco Duty
3048	2020-05-01	Tabaksteuer	\N	2020-05-01	14338.2824415992382	5	\N	14339.1735876991188	\N	14338.2824415992382	2020	Tobacco Duty
3049	2020-06-01	Tabaksteuer	\N	2020-06-01	14355.9097432646904	6	\N	14339.1746692564739	\N	14339.1746692564739	2020	Tobacco Duty
3050	2020-07-01	Tabaksteuer	\N	2020-07-01	14327.2141189424419	7	\N	14339.1728816158356	\N	14327.2141189424419	2020	Tobacco Duty
3051	2020-08-01	Tabaksteuer	\N	2020-08-01	14333.3631796177051	8	\N	14339.1732553632464	\N	14333.3631796177051	2020	Tobacco Duty
3052	2020-09-01	Tabaksteuer	\N	2020-09-01	14354.3519855038303	9	\N	14339.1745377725583	\N	14339.1745377725583	2020	Tobacco Duty
3053	2020-10-01	Tabaksteuer	\N	2020-10-01	14316.3097767885174	10	\N	14339.1721710751044	\N	14316.3097767885174	2020	Tobacco Duty
3054	2020-11-01	Tabaksteuer	\N	2020-11-01	14330.5756051159442	11	\N	14339.1730302272099	\N	14330.5756051159442	2020	Tobacco Duty
3055	2020-12-01	Tabaksteuer	\N	2020-12-01	14331.2315051107253	12	\N	14339.1730702075311	\N	14331.2315051107253	2020	Tobacco Duty
3056	2019-01-01	Solidaritätszuschlag	\N	2019-01-01	18999.9677580212956	1	\N	19097.9254945320681	\N	18999.9677580212956	2019	Solidarity Surcharge
3057	2019-02-01	Solidaritätszuschlag	\N	2019-02-01	19080.1043371665546	2	\N	19195.0334543502795	\N	19080.1043371665546	2019	Solidarity Surcharge
3058	2019-03-01	Solidaritätszuschlag	\N	2019-03-01	19171.6544341539084	3	\N	19151.0147929520026	\N	19151.0147929520026	2019	Solidarity Surcharge
3059	2019-04-01	Solidaritätszuschlag	\N	2019-04-01	19251.9796664866408	4	\N	19254.6468802034142	\N	19251.9796664866408	2019	Solidarity Surcharge
3060	2019-05-01	Solidaritätszuschlag	\N	2019-05-01	19322.3062798833198	5	\N	19388.8059292216494	\N	19322.3062798833198	2019	Solidarity Surcharge
3061	2019-06-01	Solidaritätszuschlag	\N	2019-06-01	19415.7429087454002	6	\N	19311.3611090894847	\N	19311.3611090894847	2019	Solidarity Surcharge
3062	2019-07-01	Solidaritätszuschlag	\N	2019-07-01	19491.3518113913124	7	\N	19433.5016375704799	\N	19433.5016375704799	2019	Solidarity Surcharge
3063	2019-08-01	Solidaritätszuschlag	\N	2019-08-01	19567.9983065683264	8	\N	19605.6378478903098	\N	19567.9983065683264	2019	Solidarity Surcharge
3064	2019-09-01	Solidaritätszuschlag	\N	2019-09-01	19647.1916197762184	9	\N	19644.802426240105	\N	19644.802426240105	2019	Solidarity Surcharge
3065	2019-10-01	Solidaritätszuschlag	\N	2019-10-01	19719.4047650476241	10	\N	19816.1686389079914	\N	19719.4047650476241	2019	Solidarity Surcharge
3066	2019-11-01	Solidaritätszuschlag	\N	2019-11-01	19797.4661591306794	11	\N	19939.9190867259495	\N	19797.4661591306794	2019	Solidarity Surcharge
3067	2019-12-01	Solidaritätszuschlag	\N	2019-12-01	19879.0176371819834	12	\N	19988.6955683366541	\N	19879.0176371819834	2019	Solidarity Surcharge
3068	2020-01-01	Solidaritätszuschlag	\N	2020-01-01	19958.4939301710874	1	\N	20116.505082883672	\N	19958.4939301710874	2020	Solidarity Surcharge
3069	2020-02-01	Solidaritätszuschlag	\N	2020-02-01	20039.1021422850245	2	\N	20234.5122193976204	\N	20039.1021422850245	2020	Solidarity Surcharge
3070	2020-03-01	Solidaritätszuschlag	\N	2020-03-01	20115.9372906495119	3	\N	20324.5568458934904	\N	20115.9372906495119	2020	Solidarity Surcharge
3071	2020-04-01	Solidaritätszuschlag	\N	2020-04-01	20192.3951326390488	4	\N	20465.2044199411757	\N	20192.3951326390488	2020	Solidarity Surcharge
3072	2020-05-01	Solidaritätszuschlag	\N	2020-05-01	20275.1728564089281	5	\N	20574.1165302438603	\N	20275.1728564089281	2020	Solidarity Surcharge
3073	2020-06-01	Solidaritätszuschlag	\N	2020-06-01	20358.0449067725422	6	\N	20633.6890802194102	\N	20358.0449067725422	2020	Solidarity Surcharge
3074	2020-07-01	Solidaritätszuschlag	\N	2020-07-01	20432.3332371061442	7	\N	20792.5054296095077	\N	20432.3332371061442	2020	Solidarity Surcharge
3075	2020-08-01	Solidaritätszuschlag	\N	2020-08-01	20509.3570386581014	8	\N	20914.0530867231828	\N	20509.3570386581014	2020	Solidarity Surcharge
3076	2020-09-01	Solidaritätszuschlag	\N	2020-09-01	20589.9652507720421	9	\N	20981.8389497813878	\N	20589.9652507720421	2020	Solidarity Surcharge
3077	2020-10-01	Solidaritätszuschlag	\N	2020-10-01	20668.3096246363093	10	\N	21108.2660999534928	\N	20668.3096246363093	2020	Solidarity Surcharge
3078	2020-11-01	Solidaritätszuschlag	\N	2020-11-01	20745.6164059694747	11	\N	21270.3767923184023	\N	20745.6164059694747	2020	Solidarity Surcharge
3079	2020-12-01	Solidaritätszuschlag	\N	2020-12-01	20819.3387767406603	12	\N	21319.8792806873207	\N	20819.3387767406603	2020	Solidarity Surcharge
3080	2019-01-01	Versicherungsteuer	\N	2019-01-01	13775.9336479306912	1	\N	13772.0035543304784	\N	13772.0035543304784	2019	Insurance Tax
3081	2019-02-01	Versicherungsteuer	\N	2019-02-01	13776.0050014428416	2	\N	13765.0106611866868	\N	13765.0106611866868	2019	Insurance Tax
3082	2019-03-01	Versicherungsteuer	\N	2019-03-01	13763.817468519117	3	\N	13758.0213187647896	\N	13758.0213187647896	2019	Insurance Tax
3083	2019-04-01	Versicherungsteuer	\N	2019-04-01	13755.5984349973405	4	\N	13751.0355252618629	\N	13751.0355252618629	2019	Insurance Tax
3084	2019-05-01	Versicherungsteuer	\N	2019-05-01	13746.5752836581123	5	\N	13744.0532788759028	\N	13744.0532788759028	2019	Insurance Tax
3085	2019-06-01	Versicherungsteuer	\N	2019-06-01	13738.2574664087715	6	\N	13737.0745778058244	\N	13737.0745778058244	2019	Insurance Tax
3086	2019-07-01	Versicherungsteuer	\N	2019-07-01	13728.7220056882943	7	\N	13730.0994202514485	\N	13728.7220056882943	2019	Insurance Tax
3087	2019-08-01	Versicherungsteuer	\N	2019-08-01	13720.9075174887912	8	\N	13723.1278044135124	\N	13720.9075174887912	2019	Insurance Tax
3088	2019-09-01	Versicherungsteuer	\N	2019-09-01	13718.6731191511044	9	\N	13716.1597284936743	\N	13716.1597284936743	2019	Insurance Tax
3089	2019-10-01	Versicherungsteuer	\N	2019-10-01	13709.3164311688997	10	\N	13709.1951906944978	\N	13709.1951906944978	2019	Insurance Tax
3090	2019-11-01	Versicherungsteuer	\N	2019-11-01	13696.4476008361016	11	\N	13702.2341892194599	\N	13696.4476008361016	2019	Insurance Tax
3091	2019-12-01	Versicherungsteuer	\N	2019-12-01	13689.4321438853622	12	\N	13695.2767222729544	\N	13689.4321438853622	2019	Insurance Tax
3092	2020-01-01	Versicherungsteuer	\N	2020-01-01	13640.8571607389331	1	\N	13688.3227880602808	\N	13640.8571607389331	2020	Insurance Tax
3093	2020-02-01	Versicherungsteuer	\N	2020-02-01	13682.6026925152637	2	\N	13681.3723847876554	\N	13681.3723847876554	2020	Insurance Tax
3094	2020-03-01	Versicherungsteuer	\N	2020-03-01	13672.9864431609494	3	\N	13674.4255106622022	\N	13672.9864431609494	2020	Insurance Tax
3095	2020-04-01	Versicherungsteuer	\N	2020-04-01	13665.2145324565408	4	\N	13667.4821638919548	\N	13665.2145324565408	2020	Insurance Tax
3096	2020-05-01	Versicherungsteuer	\N	2020-05-01	13656.9276610651705	5	\N	13660.5423426858597	\N	13656.9276610651705	2020	Insurance Tax
3097	2020-06-01	Versicherungsteuer	\N	2020-06-01	13647.9872875302717	6	\N	13653.6060452537695	\N	13647.9872875302717	2020	Insurance Tax
3098	2020-07-01	Versicherungsteuer	\N	2020-07-01	13645.4775158724315	7	\N	13646.6732698064479	\N	13645.4775158724315	2020	Insurance Tax
3099	2020-08-01	Versicherungsteuer	\N	2020-08-01	13637.7191807539966	8	\N	13639.7440145555684	\N	13637.7191807539966	2020	Insurance Tax
3100	2020-09-01	Versicherungsteuer	\N	2020-09-01	13622.5763855337791	9	\N	13632.8182777137081	\N	13622.5763855337791	2020	Insurance Tax
3101	2020-10-01	Versicherungsteuer	\N	2020-10-01	13614.8093601374312	10	\N	13625.8960574943558	\N	13614.8093601374312	2020	Insurance Tax
3102	2020-11-01	Versicherungsteuer	\N	2020-11-01	13611.4848939201511	11	\N	13618.9773521119041	\N	13611.4848939201511	2020	Insurance Tax
3103	2020-12-01	Versicherungsteuer	\N	2020-12-01	13600.3528399513471	12	\N	13612.0621597816607	\N	13600.3528399513471	2020	Insurance Tax
3104	2019-01-01	Stromsteuer	\N	2019-01-01	6835.11189120330164	1	\N	6791.82953192458172	\N	6791.82953192458172	2019	Electricity Duty
3105	2019-02-01	Stromsteuer	\N	2019-02-01	6824.94633092721051	2	\N	6733.33260763921226	\N	6733.33260763921226	2019	Electricity Duty
3106	2019-03-01	Stromsteuer	\N	2019-03-01	6772.25256693245137	3	\N	6700.81161467950096	\N	6700.81161467950096	2019	Electricity Duty
3107	2019-04-01	Stromsteuer	\N	2019-04-01	6766.77001120975456	4	\N	6647.17524955003137	\N	6647.17524955003137	2019	Electricity Duty
3108	2019-05-01	Stromsteuer	\N	2019-05-01	6769.76464220594607	5	\N	6595.16540097463349	\N	6595.16540097463349	2019	Electricity Duty
3109	2019-06-01	Stromsteuer	\N	2019-06-01	6719.31583521977882	6	\N	6588.60935492060162	\N	6588.60935492060162	2019	Electricity Duty
3110	2019-07-01	Stromsteuer	\N	2019-07-01	6723.36625911052033	7	\N	6533.91539253141127	\N	6533.91539253141127	2019	Electricity Duty
3111	2019-08-01	Stromsteuer	\N	2019-08-01	6734.41051279011026	8	\N	6480.97882697655768	\N	6480.97882697655768	2019	Electricity Duty
3112	2019-09-01	Stromsteuer	\N	2019-09-01	6738.76022529777492	9	\N	6433.62814996708039	\N	6433.62814996708039	2019	Electricity Duty
3113	2019-10-01	Stromsteuer	\N	2019-10-01	6745.45400314479866	10	\N	6383.14119135660167	\N	6383.14119135660167	2019	Electricity Duty
3114	2019-11-01	Stromsteuer	\N	2019-11-01	6743.38228293497832	11	\N	6337.69888868456019	\N	6337.69888868456019	2019	Electricity Duty
3115	2019-12-01	Stromsteuer	\N	2019-12-01	6731.77162810669233	12	\N	6289.39205082068474	\N	6289.39205082068474	2019	Electricity Duty
3116	2020-01-01	Stromsteuer	\N	2020-01-01	6720.60484956375876	1	\N	6248.48040933151606	\N	6248.48040933151606	2020	Electricity Duty
3117	2020-02-01	Stromsteuer	\N	2020-02-01	6716.00822317019265	2	\N	6205.46830930214855	\N	6205.46830930214855	2020	Electricity Duty
3118	2020-03-01	Stromsteuer	\N	2020-03-01	6768.45774549592625	3	\N	6140.88519767366415	\N	6140.88519767366415	2020	Electricity Duty
3119	2020-04-01	Stromsteuer	\N	2020-04-01	6771.79593872969508	4	\N	6093.12249331640851	\N	6093.12249331640851	2020	Electricity Duty
3120	2020-05-01	Stromsteuer	\N	2020-05-01	6768.06656022330935	5	\N	6047.71536020221083	\N	6047.71536020221083	2020	Electricity Duty
3121	2020-06-01	Stromsteuer	\N	2020-06-01	6776.77883694471348	6	\N	5997.44518615278685	\N	5997.44518615278685	2020	Electricity Duty
3122	2020-07-01	Stromsteuer	\N	2020-07-01	6783.60135655595786	7	\N	5951.20510298283898	\N	5951.20510298283898	2020	Electricity Duty
3123	2020-08-01	Stromsteuer	\N	2020-08-01	6771.86498106899671	8	\N	5911.02030502594152	\N	5911.02030502594152	2020	Electricity Duty
3124	2020-09-01	Stromsteuer	\N	2020-09-01	6771.29056097425018	9	\N	5863.33518712636396	\N	5863.33518712636396	2020	Electricity Duty
3125	2020-10-01	Stromsteuer	\N	2020-10-01	6774.39690386428083	10	\N	5815.93542302562764	\N	5815.93542302562764	2020	Electricity Duty
3126	2020-11-01	Stromsteuer	\N	2020-11-01	6777.76085127956048	11	\N	5770.33404119749139	\N	5770.33404119749139	2020	Electricity Duty
3127	2020-12-01	Stromsteuer	\N	2020-12-01	6818.1778512159608	12	\N	5708.04172490518067	\N	5708.04172490518067	2020	Electricity Duty
3128	2019-01-01	Kraftfahrzeugsteuer	\N	2019-01-01	9044.47212788292381	1	\N	9044.47212788292381	\N	9044.47212788292381	2019	Motor Vehicle Tax
3129	2019-02-01	Kraftfahrzeugsteuer	\N	2019-02-01	9042.20381429782356	2	\N	9042.20381429782356	\N	9042.20381429782356	2019	Motor Vehicle Tax
3130	2019-03-01	Kraftfahrzeugsteuer	\N	2019-03-01	9040.1684081213898	3	\N	9040.1684081213898	\N	9040.1684081213898	2019	Motor Vehicle Tax
3131	2019-04-01	Kraftfahrzeugsteuer	\N	2019-04-01	9038.34199473203626	4	\N	9038.34199473203626	\N	9038.34199473203626	2019	Motor Vehicle Tax
3132	2019-05-01	Kraftfahrzeugsteuer	\N	2019-05-01	9036.70311502958248	5	\N	9036.70311502958248	\N	9036.70311502958248	2019	Motor Vehicle Tax
3133	2019-06-01	Kraftfahrzeugsteuer	\N	2019-06-01	9035.2325133055856	6	\N	9035.2325133055856	\N	9035.2325133055856	2019	Motor Vehicle Tax
3134	2019-07-01	Kraftfahrzeugsteuer	\N	2019-07-01	9033.91291100202034	7	\N	9033.91291100202034	\N	9033.91291100202034	2019	Motor Vehicle Tax
3135	2019-08-01	Kraftfahrzeugsteuer	\N	2019-08-01	9032.72880370012172	8	\N	9032.72880370012172	\N	9032.72880370012172	2019	Motor Vehicle Tax
3136	2019-09-01	Kraftfahrzeugsteuer	\N	2019-09-01	9031.66627895412057	9	\N	9031.66627895412057	\N	9031.66627895412057	2019	Motor Vehicle Tax
3137	2019-10-01	Kraftfahrzeugsteuer	\N	2019-10-01	9030.71285282960525	10	\N	9030.71285282960525	\N	9030.71285282960525	2019	Motor Vehicle Tax
3138	2019-11-01	Kraftfahrzeugsteuer	\N	2019-11-01	9029.85732322586591	11	\N	9029.85732322586591	\N	9029.85732322586591	2019	Motor Vehicle Tax
3139	2019-12-01	Kraftfahrzeugsteuer	\N	2019-12-01	9029.08963825892897	12	\N	9029.08963825892897	\N	9029.08963825892897	2019	Motor Vehicle Tax
3140	2020-01-01	Kraftfahrzeugsteuer	\N	2020-01-01	9028.40077815884433	1	\N	9028.40077815884433	\N	9028.40077815884433	2020	Motor Vehicle Tax
3141	2020-02-01	Kraftfahrzeugsteuer	\N	2020-02-01	9027.78264929358193	2	\N	9027.78264929358193	\N	9027.78264929358193	2020	Motor Vehicle Tax
3142	2020-03-01	Kraftfahrzeugsteuer	\N	2020-03-01	9027.22798907443939	3	\N	9027.22798907443939	\N	9027.22798907443939	2020	Motor Vehicle Tax
3143	2020-04-01	Kraftfahrzeugsteuer	\N	2020-04-01	9026.73028062562662	4	\N	9026.73028062562662	\N	9026.73028062562662	2020	Motor Vehicle Tax
3144	2020-05-01	Kraftfahrzeugsteuer	\N	2020-05-01	9026.28367621544749	5	\N	9026.28367621544749	\N	9026.28367621544749	2020	Motor Vehicle Tax
3145	2020-06-01	Kraftfahrzeugsteuer	\N	2020-06-01	9025.8829285494794	6	\N	9025.8829285494794	\N	9025.8829285494794	2020	Motor Vehicle Tax
3146	2020-07-01	Kraftfahrzeugsteuer	\N	2020-07-01	9025.52332911849408	7	\N	9025.52332911849408	\N	9025.52332911849408	2020	Motor Vehicle Tax
3147	2020-08-01	Kraftfahrzeugsteuer	\N	2020-08-01	9025.20065287668876	8	\N	9025.20065287668876	\N	9025.20065287668876	2020	Motor Vehicle Tax
3148	2020-09-01	Kraftfahrzeugsteuer	\N	2020-09-01	9024.91110860032859	9	\N	9024.91110860032859	\N	9024.91110860032859	2020	Motor Vehicle Tax
3149	2020-10-01	Kraftfahrzeugsteuer	\N	2020-10-01	9024.65129434345545	10	\N	9024.65129434345545	\N	9024.65129434345545	2020	Motor Vehicle Tax
3150	2020-11-01	Kraftfahrzeugsteuer	\N	2020-11-01	9024.41815746739667	11	\N	9024.41815746739667	\N	9024.41815746739667	2020	Motor Vehicle Tax
3151	2020-12-01	Kraftfahrzeugsteuer	\N	2020-12-01	9024.2089587743194	12	\N	9024.2089587743194	\N	9024.2089587743194	2020	Motor Vehicle Tax
3152	2019-01-01	Kaffeesteuer	\N	2019-01-01	1037.49098244464153	1	\N	1036.2851446222237	\N	1036.2851446222237	2019	Coffee Duty
3153	2019-02-01	Kaffeesteuer	\N	2019-02-01	1037.47359253371565	2	\N	1035.71503102404972	\N	1035.71503102404972	2019	Coffee Duty
3154	2019-03-01	Kaffeesteuer	\N	2019-03-01	1037.48149703868194	3	\N	1035.26033430965072	\N	1035.26033430965072	2019	Coffee Duty
3155	2019-04-01	Kaffeesteuer	\N	2019-04-01	1037.47517343470872	4	\N	1034.89762008559001	\N	1034.89762008559001	2019	Coffee Duty
3156	2019-05-01	Kaffeesteuer	\N	2019-05-01	1037.47201163272234	5	\N	1034.60826649317028	\N	1034.60826649317028	2019	Coffee Duty
3157	2019-06-01	Kaffeesteuer	\N	2019-06-01	1037.45304082080315	6	\N	1034.37740274647399	\N	1034.37740274647399	2019	Coffee Duty
3158	2019-07-01	Kaffeesteuer	\N	2019-07-01	1037.46094532576922	7	\N	1034.19322929054169	\N	1034.19322929054169	2019	Coffee Duty
3159	2019-08-01	Kaffeesteuer	\N	2019-08-01	1037.47675433570203	8	\N	1034.04628844329409	\N	1034.04628844329409	2019	Coffee Duty
3160	2019-09-01	Kaffeesteuer	\N	2019-09-01	1037.47675433570203	9	\N	1033.92903011661542	\N	1033.92903011661542	2019	Coffee Duty
3161	2019-10-01	Kaffeesteuer	\N	2019-10-01	1037.46884983073573	10	\N	1033.83545761417736	\N	1033.83545761417736	2019	Coffee Duty
3162	2019-11-01	Kaffeesteuer	\N	2019-11-01	1037.45620262278953	11	\N	1033.76078479026023	\N	1033.76078479026023	2019	Coffee Duty
3163	2019-12-01	Kaffeesteuer	\N	2019-12-01	1037.44513631583663	12	\N	1033.70119711162715	\N	1033.70119711162715	2019	Coffee Duty
3164	2020-01-01	Kaffeesteuer	\N	2020-01-01	1037.45462172179623	1	\N	1033.65366411348555	\N	1033.65366411348555	2020	Coffee Duty
3165	2020-02-01	Kaffeesteuer	\N	2020-02-01	1037.44987901881632	2	\N	1033.6157216801621	\N	1033.6157216801621	2020	Coffee Duty
3166	2020-03-01	Kaffeesteuer	\N	2020-03-01	1037.45462172179623	3	\N	1033.58545152082729	\N	1033.58545152082729	2020	Coffee Duty
3167	2020-04-01	Kaffeesteuer	\N	2020-04-01	1037.45462172179623	4	\N	1033.56129222197342	\N	1033.56129222197342	2020	Coffee Duty
3168	2020-05-01	Kaffeesteuer	\N	2020-05-01	1037.45778352378284	5	\N	1033.54201577264212	\N	1033.54201577264212	2020	Coffee Duty
3169	2020-06-01	Kaffeesteuer	\N	2020-06-01	1037.46884983073573	6	\N	1033.52664084862818	\N	1033.52664084862818	2020	Coffee Duty
3170	2020-07-01	Kaffeesteuer	\N	2020-07-01	1037.46568802874913	7	\N	1033.51436017646188	\N	1033.51436017646188	2020	Coffee Duty
3171	2020-08-01	Kaffeesteuer	\N	2020-08-01	1037.45620262278953	8	\N	1033.50455342920282	\N	1033.50455342920282	2020	Coffee Duty
3172	2020-09-01	Kaffeesteuer	\N	2020-09-01	1037.46568802874913	9	\N	1033.49674335737791	\N	1033.49674335737791	2020	Coffee Duty
3173	2020-10-01	Kaffeesteuer	\N	2020-10-01	1037.47517343470872	10	\N	1033.49051256927919	\N	1033.49051256927919	2020	Coffee Duty
3174	2020-11-01	Kaffeesteuer	\N	2020-11-01	1037.47359253371565	11	\N	1033.48553166040961	\N	1033.48553166040961	2020	Coffee Duty
3175	2020-12-01	Kaffeesteuer	\N	2020-12-01	1037.47675433570203	12	\N	1033.48156093148964	\N	1033.48156093148964	2020	Coffee Duty
3176	2019-01-01	Alkoholsteuer	\N	2019-01-01	2148.13993079835745	1	\N	2148.13993079835745	\N	2148.13993079835745	2019	Alcohol Duty
3177	2019-02-01	Alkoholsteuer	\N	2019-02-01	2149.14994288800654	2	\N	2149.14994288800654	\N	2149.14994288800654	2019	Alcohol Duty
3178	2019-03-01	Alkoholsteuer	\N	2019-03-01	2141.97586227801094	3	\N	2141.97586227801094	\N	2141.97586227801094	2019	Alcohol Duty
3179	2019-04-01	Alkoholsteuer	\N	2019-04-01	2140.00586593745902	4	\N	2140.00586593745902	\N	2140.00586593745902	2019	Alcohol Duty
3180	2019-05-01	Alkoholsteuer	\N	2019-05-01	2144.00069465743945	5	\N	2144.00069465743945	\N	2144.00069465743945	2019	Alcohol Duty
3181	2019-06-01	Alkoholsteuer	\N	2019-06-01	2146.00158595328503	6	\N	2146.00158595328503	\N	2146.00158595328503	2019	Alcohol Duty
3182	2019-07-01	Alkoholsteuer	\N	2019-07-01	2149.00143233401104	7	\N	2149.00143233401104	\N	2149.00143233401104	2019	Alcohol Duty
3183	2019-08-01	Alkoholsteuer	\N	2019-08-01	2151.00145881105709	8	\N	2151.00145881105709	\N	2151.00145881105709	2019	Alcohol Duty
3184	2019-09-01	Alkoholsteuer	\N	2019-09-01	2148.0014542476074	9	\N	2148.0014542476074	\N	2148.0014542476074	2019	Alcohol Duty
3185	2019-10-01	Alkoholsteuer	\N	2019-10-01	2154.00145503414024	10	\N	2154.00145503414024	\N	2154.00145503414024	2019	Alcohol Duty
3186	2019-11-01	Alkoholsteuer	\N	2019-11-01	2161.00145489857732	11	\N	2161.00145489857732	\N	2161.00145489857732	2019	Alcohol Duty
3187	2019-12-01	Alkoholsteuer	\N	2019-12-01	2154.00145492194224	12	\N	2154.00145492194224	\N	2154.00145492194224	2019	Alcohol Duty
3188	2020-01-01	Alkoholsteuer	\N	2020-01-01	2161.001454917915	1	\N	2161.001454917915	\N	2161.001454917915	2020	Alcohol Duty
3189	2020-02-01	Alkoholsteuer	\N	2020-02-01	2150.00145491860849	2	\N	2150.00145491860849	\N	2150.00145491860849	2020	Alcohol Duty
3190	2020-03-01	Alkoholsteuer	\N	2020-03-01	2168.0014549184898	3	\N	2168.0014549184898	\N	2168.0014549184898	2020	Alcohol Duty
3191	2020-04-01	Alkoholsteuer	\N	2020-04-01	2161.00145491851026	4	\N	2161.00145491851026	\N	2161.00145491851026	2020	Alcohol Duty
3192	2020-05-01	Alkoholsteuer	\N	2020-05-01	2170.00145491850571	5	\N	2170.00145491850571	\N	2170.00145491850571	2020	Alcohol Duty
3193	2020-06-01	Alkoholsteuer	\N	2020-06-01	2157.00145491850662	6	\N	2157.00145491850662	\N	2157.00145491850662	2020	Alcohol Duty
3194	2020-07-01	Alkoholsteuer	\N	2020-07-01	2159.00145491850571	7	\N	2159.00145491850571	\N	2159.00145491850571	2020	Alcohol Duty
3195	2020-08-01	Alkoholsteuer	\N	2020-08-01	2176.00145491850662	8	\N	2176.00145491850662	\N	2176.00145491850662	2020	Alcohol Duty
3196	2020-09-01	Alkoholsteuer	\N	2020-09-01	2186.00145491850662	9	\N	2186.00145491850662	\N	2186.00145491850662	2020	Alcohol Duty
3197	2020-10-01	Alkoholsteuer	\N	2020-10-01	2177.00145491850571	10	\N	2177.00145491850571	\N	2177.00145491850571	2020	Alcohol Duty
3198	2020-11-01	Alkoholsteuer	\N	2020-11-01	2167.00145491850571	11	\N	2167.00145491850571	\N	2167.00145491850571	2020	Alcohol Duty
3199	2020-12-01	Alkoholsteuer	\N	2020-12-01	2193.00145491850662	12	\N	2193.00145491850662	\N	2193.00145491850662	2020	Alcohol Duty
3200	2019-01-01	Luftverkehrsteuer	\N	2019-01-01	1191.41651354698524	1	\N	1191.58090326401316	\N	1191.41651354698524	2019	Aviation Tax
3201	2019-02-01	Luftverkehrsteuer	\N	2019-02-01	1195.83302709397049	2	\N	1196.17948527673207	\N	1195.83302709397049	2019	Aviation Tax
3202	2019-03-01	Luftverkehrsteuer	\N	2019-03-01	1200.2495406409555	3	\N	1200.79581426447362	\N	1200.2495406409555	2019	Aviation Tax
3203	2019-04-01	Luftverkehrsteuer	\N	2019-04-01	1204.66605418794097	4	\N	1205.42995871685548	\N	1204.66605418794097	2019	Aviation Tax
3204	2019-05-01	Luftverkehrsteuer	\N	2019-05-01	1209.08256773492622	5	\N	1210.08198738781175	\N	1209.08256773492622	2019	Aviation Tax
3205	2019-06-01	Luftverkehrsteuer	\N	2019-06-01	1213.49908128191146	6	\N	1214.75196929661411	\N	1213.49908128191146	2019	Aviation Tax
3206	2019-07-01	Luftverkehrsteuer	\N	2019-07-01	1217.91559482889693	7	\N	1219.43997372889453	\N	1217.91559482889693	2019	Aviation Tax
3207	2019-08-01	Luftverkehrsteuer	\N	2019-08-01	1222.33210837588217	8	\N	1224.1460702376753	\N	1222.33210837588217	2019	Aviation Tax
3208	2019-09-01	Luftverkehrsteuer	\N	2019-09-01	1226.74862192286741	9	\N	1228.87032864439857	\N	1226.74862192286741	2019	Aviation Tax
3209	2019-10-01	Luftverkehrsteuer	\N	2019-10-01	1231.16513546985266	10	\N	1233.6128190399636	\N	1231.16513546985266	2019	Aviation Tax
3210	2019-11-01	Luftverkehrsteuer	\N	2019-11-01	1235.58164901683813	11	\N	1238.3736117857668	\N	1235.58164901683813	2019	Aviation Tax
3211	2019-12-01	Luftverkehrsteuer	\N	2019-12-01	1239.99816256382314	12	\N	1243.15277751474491	\N	1239.99816256382314	2019	Aviation Tax
3212	2020-01-01	Luftverkehrsteuer	\N	2020-01-01	1244.41467611080861	1	\N	1247.9503871324232	\N	1244.41467611080861	2020	Aviation Tax
3213	2020-02-01	Luftverkehrsteuer	\N	2020-02-01	1248.8311896577934	2	\N	1252.76651181796751	\N	1248.8311896577934	2020	Aviation Tax
3214	2020-03-01	Luftverkehrsteuer	\N	2020-03-01	1253.24770320477865	3	\N	1257.60122302524042	\N	1253.24770320477865	2020	Aviation Tax
3215	2020-04-01	Luftverkehrsteuer	\N	2020-04-01	1257.66421675176457	4	\N	1262.45459248386146	\N	1257.66421675176457	2020	Aviation Tax
3216	2020-05-01	Luftverkehrsteuer	\N	2020-05-01	1262.08073029874959	5	\N	1267.3266922002706	\N	1262.08073029874959	2020	Aviation Tax
3217	2020-06-01	Luftverkehrsteuer	\N	2020-06-01	1266.4972438457346	6	\N	1272.21759445879707	\N	1266.4972438457346	2020	Aviation Tax
3218	2020-07-01	Luftverkehrsteuer	\N	2020-07-01	1270.91375739271984	7	\N	1277.12737182273258	\N	1270.91375739271984	2020	Aviation Tax
3219	2020-08-01	Luftverkehrsteuer	\N	2020-08-01	1275.33027093970509	8	\N	1282.05609713540548	\N	1275.33027093970509	2020	Aviation Tax
3220	2020-09-01	Luftverkehrsteuer	\N	2020-09-01	1279.74678448669056	9	\N	1287.00384352126525	\N	1279.74678448669056	2020	Aviation Tax
3221	2020-10-01	Luftverkehrsteuer	\N	2020-10-01	1284.1632980336758	10	\N	1291.97068438696328	\N	1284.1632980336758	2020	Aviation Tax
3222	2020-11-01	Luftverkehrsteuer	\N	2020-11-01	1288.57981158066104	11	\N	1296.9566934224456	\N	1288.57981158066104	2020	Aviation Tax
3223	2020-12-01	Luftverkehrsteuer	\N	2020-12-01	1292.99632512764651	12	\N	1301.9619446020431	\N	1292.99632512764651	2020	Aviation Tax
3224	2019-01-01	Ergänzungszuweisungen an Länder	\N	2019-01-01	-8307.96398203497847	1	\N	-8112.44404187653072	\N	-8307.96398203497847	2019	Supplementary Grants to Länder
3225	2019-02-01	Ergänzungszuweisungen an Länder	\N	2019-02-01	-8053.43377262480135	2	\N	-7755.33211555244179	\N	-8053.43377262480135	2019	Supplementary Grants to Länder
3226	2019-03-01	Ergänzungszuweisungen an Länder	\N	2019-03-01	-7780.03986704033559	3	\N	-7350.8150723324361	\N	-7780.03986704033559	2019	Supplementary Grants to Länder
3227	2019-04-01	Ergänzungszuweisungen an Länder	\N	2019-04-01	-7544.58524193270296	4	\N	-7027.23025412202151	\N	-7544.58524193270296	2019	Supplementary Grants to Länder
3228	2019-05-01	Ergänzungszuweisungen an Länder	\N	2019-05-01	-7317.32655051447546	5	\N	-6717.10026232212658	\N	-7317.32655051447546	2019	Supplementary Grants to Länder
3229	2019-06-01	Ergänzungszuweisungen an Länder	\N	2019-06-01	-7121.55675374851398	6	\N	-6397.99635935999504	\N	-7121.55675374851398	2019	Supplementary Grants to Länder
3230	2019-07-01	Ergänzungszuweisungen an Länder	\N	2019-07-01	-6892.25421794058093	7	\N	-6116.35487219393417	\N	-6892.25421794058093	2019	Supplementary Grants to Länder
3231	2019-08-01	Ergänzungszuweisungen an Länder	\N	2019-08-01	-6662.07353272323235	8	\N	-5847.11131757390649	\N	-6662.07353272323235	2019	Supplementary Grants to Länder
3232	2019-09-01	Ergänzungszuweisungen an Länder	\N	2019-09-01	-6267.66740569040121	9	\N	-5531.21309825142907	\N	-6267.66740569040121	2019	Supplementary Grants to Länder
3233	2019-10-01	Ergänzungszuweisungen an Länder	\N	2019-10-01	-6037.70570720620526	10	\N	-5288.90866233696306	\N	-6037.70570720620526	2019	Supplementary Grants to Länder
3234	2019-11-01	Ergänzungszuweisungen an Länder	\N	2019-11-01	-5807.83809762200053	11	\N	-5057.6284979325319	\N	-5807.83809762200053	2019	Supplementary Grants to Länder
3235	2019-12-01	Ergänzungszuweisungen an Länder	\N	2019-12-01	-5471.78090379065452	12	\N	-4759.62785560618249	\N	-5471.78090379065452	2019	Supplementary Grants to Länder
3236	2020-01-01	Ergänzungszuweisungen an Länder	\N	2020-01-01	-5241.88983097728487	1	\N	-4550.10778208489774	\N	-5241.88983097728487	2020	Supplementary Grants to Länder
3237	2020-02-01	Ergänzungszuweisungen an Länder	\N	2020-02-01	-5019.06500344169399	2	\N	-4349.99894189182487	\N	-5019.06500344169399	2020	Supplementary Grants to Länder
3238	2020-03-01	Ergänzungszuweisungen an Länder	\N	2020-03-01	-4666.51231357705365	3	\N	-4138.31341116331987	\N	-4666.51231357705365	2020	Supplementary Grants to Länder
3239	2020-04-01	Ergänzungszuweisungen an Länder	\N	2020-04-01	-4436.61367360983877	4	\N	-3956.14376335195311	\N	-4436.61367360983877	2020	Supplementary Grants to Länder
3240	2020-05-01	Ergänzungszuweisungen an Länder	\N	2020-05-01	-4206.71611377838963	5	\N	-3781.99327148271595	\N	-4206.71611377838963	2020	Supplementary Grants to Länder
3241	2020-06-01	Ergänzungszuweisungen an Länder	\N	2020-06-01	-3848.97241084720099	6	\N	-3580.96801973016727	\N	-3848.97241084720099	2020	Supplementary Grants to Länder
3242	2020-07-01	Ergänzungszuweisungen an Länder	\N	2020-07-01	-3619.07458165907883	7	\N	-3423.33286304429976	\N	-3619.07458165907883	2020	Supplementary Grants to Länder
3243	2020-08-01	Ergänzungszuweisungen an Länder	\N	2020-08-01	-3389.17663674032474	8	\N	-3272.63684753054849	\N	-3389.17663674032474	2020	Supplementary Grants to Länder
3244	2020-09-01	Ergänzungszuweisungen an Länder	\N	2020-09-01	-3194.66037872959896	9	\N	-3118.90823754642497	\N	-3194.66037872959896	2020	Supplementary Grants to Länder
3245	2020-10-01	Ergänzungszuweisungen an Länder	\N	2020-10-01	-2998.72882933396613	10	\N	-2981.57333366757211	\N	-2998.72882933396613	2020	Supplementary Grants to Länder
3246	2020-11-01	Ergänzungszuweisungen an Länder	\N	2020-11-01	-2768.83092567520816	11	\N	-2849.20831343788586	\N	-2849.20831343788586	2020	Supplementary Grants to Länder
3247	2020-12-01	Ergänzungszuweisungen an Länder	\N	2020-12-01	-2362.49661151626424	12	\N	-2724.84729006428961	\N	-2724.84729006428961	2020	Supplementary Grants to Länder
3248	2019-01-01	BNE-Eigenmittel der EU	\N	2019-01-01	-22535.3886800231048	1	\N	-24163.4804261167337	\N	-24163.4804261167337	2019	EU Own Resources (GNI-Based)
3249	2019-02-01	BNE-Eigenmittel der EU	\N	2019-02-01	-19402.9512138688406	2	\N	-17872.0249424587018	\N	-19402.9512138688406	2019	EU Own Resources (GNI-Based)
3250	2019-03-01	BNE-Eigenmittel der EU	\N	2019-03-01	-18161.8761594358693	3	\N	-15285.0660581641987	\N	-18161.8761594358693	2019	EU Own Resources (GNI-Based)
3251	2019-04-01	BNE-Eigenmittel der EU	\N	2019-04-01	-18627.963668307144	4	\N	-16117.543625681612	\N	-18627.963668307144	2019	EU Own Resources (GNI-Based)
3252	2019-05-01	BNE-Eigenmittel der EU	\N	2019-05-01	-18799.3465978210806	5	\N	-16359.7926284414207	\N	-18799.3465978210806	2019	EU Own Resources (GNI-Based)
3253	2019-06-01	BNE-Eigenmittel der EU	\N	2019-06-01	-19066.345839906382	6	\N	-17158.1654009747945	\N	-19066.345839906382	2019	EU Own Resources (GNI-Based)
3254	2019-07-01	BNE-Eigenmittel der EU	\N	2019-07-01	-18858.5624556436269	7	\N	-17204.1306593415611	\N	-18858.5624556436269	2019	EU Own Resources (GNI-Based)
3255	2019-08-01	BNE-Eigenmittel der EU	\N	2019-08-01	-18499.1532969289401	8	\N	-16277.9348649599397	\N	-18499.1532969289401	2019	EU Own Resources (GNI-Based)
3256	2019-09-01	BNE-Eigenmittel der EU	\N	2019-09-01	-18300.0533727204129	9	\N	-16028.1127129155029	\N	-18300.0533727204129	2019	EU Own Resources (GNI-Based)
3257	2019-10-01	BNE-Eigenmittel der EU	\N	2019-10-01	-16745.0782033949181	10	\N	-13826.9306005751496	\N	-16745.0782033949181	2019	EU Own Resources (GNI-Based)
3258	2019-11-01	BNE-Eigenmittel der EU	\N	2019-11-01	-18310.9461821733166	11	\N	-15529.5738375464352	\N	-18310.9461821733166	2019	EU Own Resources (GNI-Based)
3259	2019-12-01	BNE-Eigenmittel der EU	\N	2019-12-01	-17750.8316470855389	12	\N	-15296.7102354528433	\N	-17750.8316470855389	2019	EU Own Resources (GNI-Based)
3260	2020-01-01	BNE-Eigenmittel der EU	\N	2020-01-01	-15449.7674921604248	1	\N	-12279.4090451348657	\N	-15449.7674921604248	2020	EU Own Resources (GNI-Based)
3261	2020-02-01	BNE-Eigenmittel der EU	\N	2020-02-01	-17723.1837999105192	2	\N	-17849.1559084594955	\N	-17849.1559084594955	2020	EU Own Resources (GNI-Based)
3262	2020-03-01	BNE-Eigenmittel der EU	\N	2020-03-01	-19019.9029119449988	3	\N	-20512.3912844113911	\N	-20512.3912844113911	2020	EU Own Resources (GNI-Based)
3263	2020-04-01	BNE-Eigenmittel der EU	\N	2020-04-01	-18567.9182025368427	4	\N	-20515.0766311022089	\N	-20515.0766311022089	2020	EU Own Resources (GNI-Based)
3264	2020-05-01	BNE-Eigenmittel der EU	\N	2020-05-01	-18177.6971957156129	5	\N	-20116.3416478369036	\N	-20116.3416478369036	2020	EU Own Resources (GNI-Based)
3265	2020-06-01	BNE-Eigenmittel der EU	\N	2020-06-01	-17730.7562798441431	6	\N	-19595.2300579405601	\N	-19595.2300579405601	2020	EU Own Resources (GNI-Based)
3266	2020-07-01	BNE-Eigenmittel der EU	\N	2020-07-01	-18159.8919733360926	7	\N	-19611.151655403617	\N	-19611.151655403617	2020	EU Own Resources (GNI-Based)
3267	2020-08-01	BNE-Eigenmittel der EU	\N	2020-08-01	-18874.0764920602596	8	\N	-20718.8700505275301	\N	-20718.8700505275301	2020	EU Own Resources (GNI-Based)
3268	2020-09-01	BNE-Eigenmittel der EU	\N	2020-09-01	-19618.3872423958128	9	\N	-21038.0122968959076	\N	-21038.0122968959076	2020	EU Own Resources (GNI-Based)
3269	2020-10-01	BNE-Eigenmittel der EU	\N	2020-10-01	-21776.1742598278506	10	\N	-23375.0130036773298	\N	-23375.0130036773298	2020	EU Own Resources (GNI-Based)
3270	2020-11-01	BNE-Eigenmittel der EU	\N	2020-11-01	-20210.3062810494594	11	\N	-21686.5913537507913	\N	-21686.5913537507913	2020	EU Own Resources (GNI-Based)
3271	2020-12-01	BNE-Eigenmittel der EU	\N	2020-12-01	-20627.0611623673649	12	\N	-22904.4499005975813	\N	-22904.4499005975813	2020	EU Own Resources (GNI-Based)
3272	2019-01-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-01-01	-2275.46839933149522	1	\N	-2250.83873856183482	\N	-2275.46839933149522	2019	EU Own Resources (VAT-Based)
3273	2019-02-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-02-01	-2092.38522629657837	2	\N	-1899.73160305469241	\N	-2092.38522629657837	2019	EU Own Resources (VAT-Based)
3274	2019-03-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-03-01	-1986.56056282765462	3	\N	-1759.08221049138615	\N	-1986.56056282765462	2019	EU Own Resources (VAT-Based)
3275	2019-04-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-04-01	-1935.79723010437351	4	\N	-1733.81095836477016	\N	-1935.79723010437351	2019	EU Own Resources (VAT-Based)
3276	2019-05-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-05-01	-1858.23676571797728	5	\N	-1655.92395039377834	\N	-1858.23676571797728	2019	EU Own Resources (VAT-Based)
3277	2019-06-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-06-01	-1806.37588641547677	6	\N	-1631.9817275444052	\N	-1806.37588641547677	2019	EU Own Resources (VAT-Based)
3278	2019-07-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-07-01	-1721.11461792632531	7	\N	-1539.12506339509878	\N	-1721.11461792632531	2019	EU Own Resources (VAT-Based)
3279	2019-08-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-08-01	-1628.02032506808132	8	\N	-1434.75737917402807	\N	-1628.02032506808132	2019	EU Own Resources (VAT-Based)
3280	2019-09-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-09-01	-1534.57126857170556	9	\N	-1332.22153781207453	\N	-1534.57126857170556	2019	EU Own Resources (VAT-Based)
3281	2019-10-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-10-01	-1359.30281031157301	10	\N	-1070.16118611610773	\N	-1359.30281031157301	2019	EU Own Resources (VAT-Based)
3282	2019-11-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-11-01	-1347.99335143254621	11	\N	-1139.189175987319	\N	-1347.99335143254621	2019	EU Own Resources (VAT-Based)
3283	2019-12-01	Mehrwertsteuer-Eigenmittel der EU	\N	2019-12-01	-1254.81924192378392	12	\N	-1046.93367774820013	\N	-1254.81924192378392	2019	EU Own Resources (VAT-Based)
3284	2020-01-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-01-01	-1194.2513034115575	1	\N	-1019.12010719713624	\N	-1194.2513034115575	2020	EU Own Resources (VAT-Based)
3285	2020-02-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-02-01	-1161.67261478485443	2	\N	-1040.76811269199879	\N	-1161.67261478485443	2020	EU Own Resources (VAT-Based)
3286	2020-03-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-03-01	-1114.75244571062331	3	\N	-1037.67809103220338	\N	-1114.75244571062331	2020	EU Own Resources (VAT-Based)
3287	2020-04-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-04-01	-1054.41794591428425	4	\N	-1009.45189673272762	\N	-1054.41794591428425	2020	EU Own Resources (VAT-Based)
3288	2020-05-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-05-01	-984.600155521511397	5	\N	-966.559596814451652	\N	-984.600155521511397	2020	EU Own Resources (VAT-Based)
3289	2020-06-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-06-01	-917.789308049720262	6	\N	-930.021828014132211	\N	-930.021828014132211	2020	EU Own Resources (VAT-Based)
3290	2020-07-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-07-01	-857.22329167836665	7	\N	-906.753982262450563	\N	-906.753982262450563	2020	EU Own Resources (VAT-Based)
3291	2020-08-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-08-01	-801.28315629881763	8	\N	-890.628268845894922	\N	-890.628268845894922	2020	EU Own Resources (VAT-Based)
3292	2020-09-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-09-01	-745.343006246777691	9	\N	-876.025326689942062	\N	-876.025326689942062	2020	EU Own Resources (VAT-Based)
3293	2020-10-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-10-01	-736.123946408681604	10	\N	-935.090551143996777	\N	-935.090551143996777	2020	EU Own Resources (VAT-Based)
3294	2020-11-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-11-01	-633.694009198991125	11	\N	-845.238821464737384	\N	-845.238821464737384	2020	EU Own Resources (VAT-Based)
3295	2020-12-01	Mehrwertsteuer-Eigenmittel der EU	\N	2020-12-01	-577.753864334561513	12	\N	-830.383961706024934	\N	-830.383961706024934	2020	EU Own Resources (VAT-Based)
3296	2019-01-01	Zuweisungen an Länder für ÖPNV	\N	2019-01-01	-8500.08759929339612	1	\N	-8498.88762480602236	\N	-8500.08759929339612	2019	Grants to Länder for Public Transport
3297	2019-02-01	Zuweisungen an Länder für ÖPNV	\N	2019-02-01	-8501.50239252120264	2	\N	-8498.953159358829	\N	-8501.50239252120264	2019	Grants to Länder for Public Transport
3298	2019-03-01	Zuweisungen an Länder für ÖPNV	\N	2019-03-01	-8502.4612163164511	3	\N	-8498.9579623942318	\N	-8502.4612163164511	2019	Grants to Länder for Public Transport
3299	2019-04-01	Zuweisungen an Länder für ÖPNV	\N	2019-04-01	-8503.11102368919092	4	\N	-8498.95827987095981	\N	-8503.11102368919092	2019	Grants to Länder for Public Transport
3300	2019-05-01	Zuweisungen an Länder für ÖPNV	\N	2019-05-01	-8503.55140660809593	5	\N	-8498.95826737717289	\N	-8503.55140660809593	2019	Grants to Länder for Public Transport
3301	2019-06-01	Zuweisungen an Länder für ÖPNV	\N	2019-06-01	-8503.84985984731611	6	\N	-8498.95822975467672	\N	-8503.84985984731611	2019	Grants to Länder for Public Transport
3302	2019-07-01	Zuweisungen an Länder für ÖPNV	\N	2019-07-01	-8504.05212549427415	7	\N	-8498.95819118125473	\N	-8504.05212549427415	2019	Grants to Länder for Public Transport
3303	2019-08-01	Zuweisungen an Länder für ÖPNV	\N	2019-08-01	-8504.18920355731098	8	\N	-8498.95815281951218	\N	-8504.18920355731098	2019	Grants to Länder for Public Transport
3304	2019-09-01	Zuweisungen an Länder für ÖPNV	\N	2019-09-01	-8504.28210314578791	9	\N	-8498.9581142994175	\N	-8504.28210314578791	2019	Grants to Länder for Public Transport
3305	2019-10-01	Zuweisungen an Länder für ÖPNV	\N	2019-10-01	-8504.34506240672636	10	\N	-8498.95807708688881	\N	-8504.34506240672636	2019	Grants to Länder for Public Transport
3306	2019-11-01	Zuweisungen an Länder für ÖPNV	\N	2019-11-01	-8504.38773071777723	11	\N	-8498.95803923504354	\N	-8504.38773071777723	2019	Grants to Länder for Public Transport
3307	2019-12-01	Zuweisungen an Länder für ÖPNV	\N	2019-12-01	-8504.41664758784282	12	\N	-8498.95837788143581	\N	-8504.41664758784282	2019	Grants to Länder for Public Transport
3308	2020-01-01	Zuweisungen an Länder für ÖPNV	\N	2020-01-01	-8504.43624492727031	1	\N	-8498.95837169512379	\N	-8504.43624492727031	2020	Grants to Länder for Public Transport
3309	2020-02-01	Zuweisungen an Länder für ÖPNV	\N	2020-02-01	-8504.44952629941508	2	\N	-8498.95836500290534	\N	-8504.44952629941508	2020	Grants to Länder for Public Transport
3310	2020-03-01	Zuweisungen an Länder für ÖPNV	\N	2020-03-01	-8504.45852725827899	3	\N	-8498.95835883506334	\N	-8504.45852725827899	2020	Grants to Länder for Public Transport
3311	2020-04-01	Zuweisungen an Länder für ÖPNV	\N	2020-04-01	-8504.46462732532018	4	\N	-8498.95835216279738	\N	-8504.46462732532018	2020	Grants to Länder for Public Transport
3312	2020-05-01	Zuweisungen an Länder für ÖPNV	\N	2020-05-01	-8504.46876142019573	5	\N	-8498.95834550085965	\N	-8504.46876142019573	2020	Grants to Länder for Public Transport
3313	2020-06-01	Zuweisungen an Länder für ÖPNV	\N	2020-06-01	-8504.47156315012944	6	\N	-8498.95833936088457	\N	-8504.47156315012944	2020	Grants to Länder for Public Transport
3314	2020-07-01	Zuweisungen an Länder für ÖPNV	\N	2020-07-01	-8504.47346191899305	7	\N	-8498.95833271872107	\N	-8504.47346191899305	2020	Grants to Länder for Public Transport
3315	2020-08-01	Zuweisungen an Länder für ÖPNV	\N	2020-08-01	-8504.47474873937972	8	\N	-8498.95832659694133	\N	-8504.47474873937972	2020	Grants to Länder for Public Transport
3316	2020-09-01	Zuweisungen an Länder für ÖPNV	\N	2020-09-01	-8504.4756208343133	9	\N	-8498.95832048385637	\N	-8504.4756208343133	2020	Grants to Länder for Public Transport
3317	2020-10-01	Zuweisungen an Länder für ÖPNV	\N	2020-10-01	-8504.47621186440847	10	\N	-8498.95831336204174	\N	-8504.47621186440847	2020	Grants to Länder for Public Transport
3318	2020-11-01	Zuweisungen an Länder für ÖPNV	\N	2020-11-01	-8504.4766124132002	11	\N	-8498.95830726771237	\N	-8504.4766124132002	2020	Grants to Länder for Public Transport
3319	2020-12-01	Zuweisungen an Länder für ÖPNV	\N	2020-12-01	-8504.47688387033122	12	\N	-8498.95830118200138	\N	-8504.47688387033122	2020	Grants to Länder for Public Transport
3320	2019-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-01-01	-8992	1	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3321	2019-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-02-01	-8992	2	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3322	2019-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-03-01	-8992	3	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3323	2019-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-04-01	-8992	4	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3324	2019-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-05-01	-8992	5	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3325	2019-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-06-01	-8992	6	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3326	2019-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-07-01	-8992	7	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3327	2019-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-08-01	-8992	8	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3328	2019-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-09-01	-8992	9	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3329	2019-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-10-01	-8992	10	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3330	2019-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-11-01	-8992	11	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3331	2019-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2019-12-01	-8992	12	\N	-8992	\N	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
3332	2020-01-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-01-01	-8992	1	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3333	2020-02-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-02-01	-8992	2	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3334	2020-03-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-03-01	-8992	3	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3335	2020-04-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-04-01	-8992	4	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3336	2020-05-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-05-01	-8992	5	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3337	2020-06-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-06-01	-8992	6	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3338	2020-07-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-07-01	-8992	7	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3339	2020-08-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-08-01	-8992	8	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3340	2020-09-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-09-01	-8992	9	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3341	2020-10-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-10-01	-8992	10	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3342	2020-11-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-11-01	-8992	11	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3343	2020-12-01	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	\N	2020-12-01	-8992	12	\N	-8992	\N	-8992	2020	Grants to Länder for Motor Vehicle Tax and HGV Toll
3344	2019-01-01	Sonstige Einnahmen	\N	2019-01-01	25134.8322623781205	1	\N	25161.2815666252427	\N	25134.8322623781205	2019	Other Revenue
3345	2019-02-01	Sonstige Einnahmen	\N	2019-02-01	25192.4206964880323	2	\N	25729.836810880297	\N	25192.4206964880323	2019	Other Revenue
3346	2019-03-01	Sonstige Einnahmen	\N	2019-03-01	25486.3147611816421	3	\N	26646.8036847313815	\N	25486.3147611816421	2019	Other Revenue
3347	2019-04-01	Sonstige Einnahmen	\N	2019-04-01	25444.716208532267	4	\N	26811.0334127028073	\N	25444.716208532267	2019	Other Revenue
3348	2019-05-01	Sonstige Einnahmen	\N	2019-05-01	25399.4349707309339	5	\N	26687.1048832872402	\N	25399.4349707309339	2019	Other Revenue
3349	2019-06-01	Sonstige Einnahmen	\N	2019-06-01	25322.7281529662614	6	\N	26166.0902895594882	\N	25322.7281529662614	2019	Other Revenue
3350	2019-07-01	Sonstige Einnahmen	\N	2019-07-01	25292.668680459672	7	\N	26352.8737773504217	\N	25292.668680459672	2019	Other Revenue
3351	2019-08-01	Sonstige Einnahmen	\N	2019-08-01	25286.1783929255907	8	\N	26702.9336974633006	\N	25286.1783929255907	2019	Other Revenue
3352	2019-09-01	Sonstige Einnahmen	\N	2019-09-01	25370.6504286447671	9	\N	27358.1264350875426	\N	25370.6504286447671	2019	Other Revenue
3353	2019-10-01	Sonstige Einnahmen	\N	2019-10-01	25351.6390115940376	10	\N	27571.72147794997	\N	25351.6390115940376	2019	Other Revenue
3354	2019-11-01	Sonstige Einnahmen	\N	2019-11-01	25288.067104204667	11	\N	27682.287921910407	\N	25288.067104204667	2019	Other Revenue
3355	2019-12-01	Sonstige Einnahmen	\N	2019-12-01	25157.2248147062783	12	\N	27563.6841540772111	\N	25157.2248147062783	2019	Other Revenue
3356	2020-01-01	Sonstige Einnahmen	\N	2020-01-01	25087.7606110737834	1	\N	27605.7147191934237	\N	25087.7606110737834	2020	Other Revenue
3357	2020-02-01	Sonstige Einnahmen	\N	2020-02-01	24954.8314666559636	2	\N	27045.3685878010874	\N	24954.8314666559636	2020	Other Revenue
3358	2020-03-01	Sonstige Einnahmen	\N	2020-03-01	24735.9730020258758	3	\N	26401.0835324117106	\N	24735.9730020258758	2020	Other Revenue
3359	2020-04-01	Sonstige Einnahmen	\N	2020-04-01	24610.1637155684875	4	\N	26083.2506480242519	\N	24610.1637155684875	2020	Other Revenue
3360	2020-05-01	Sonstige Einnahmen	\N	2020-05-01	24496.998314799479	5	\N	26118.0219711823811	\N	24496.998314799479	2020	Other Revenue
3361	2020-06-01	Sonstige Einnahmen	\N	2020-06-01	24402.3690959619635	6	\N	26657.2739520844807	\N	24402.3690959619635	2020	Other Revenue
3362	2020-07-01	Sonstige Einnahmen	\N	2020-07-01	24486.2273508224789	7	\N	27164.7758560147304	\N	24486.2273508224789	2020	Other Revenue
3363	2020-08-01	Sonstige Einnahmen	\N	2020-08-01	24195.8020380727576	8	\N	26050.6159047190122	\N	24195.8020380727576	2020	Other Revenue
3364	2020-09-01	Sonstige Einnahmen	\N	2020-09-01	24097.4901340832912	9	\N	25757.1735722251178	\N	24097.4901340832912	2020	Other Revenue
3365	2020-10-01	Sonstige Einnahmen	\N	2020-10-01	23994.0224708810929	10	\N	25658.5270383231291	\N	23994.0224708810929	2020	Other Revenue
3366	2020-11-01	Sonstige Einnahmen	\N	2020-11-01	23859.3747400590182	11	\N	25411.3364856667758	\N	23859.3747400590182	2020	Other Revenue
3367	2020-12-01	Sonstige Einnahmen	\N	2020-12-01	23765.4820582518987	12	\N	25642.1641627556673	\N	23765.4820582518987	2020	Other Revenue
\.


--
-- Data for Name: Revenue Budget; Type: TABLE DATA; Schema: public; Owner: jdw686
--

COPY public."Revenue Budget" (index, "Unnamed: 0", "Category", "Budget", "Year", category_en) FROM stdin;
0	0	Lohnsteuer	59925	2008	Wages Tax
1	1	Veranlagte Einkommensteuer	12687	2008	Assessed Income Taxes
2	2	nicht veranlagte Steuer vom Ertrag	7083	2008	Non-Assessed Taxes on Earnings
3	3	Abgeltungsteuer auf Zins- und Veräußerungserträge	5317	2008	Final Withholding Tax on Interest and Capital Gains
4	4	Körperschaftsteuer	8941	2008	Corporation Tax
5	5	Steuern vom Umsatz	96601	2008	Value Added Taxes (VAT)
6	6	Gewerbesteuerumlage	1151	2008	Trade Tax Apportionment
7	7	Energiesteuer	40335	2008	Energy Duty
8	8	Tabaksteuer	14050	2008	Tobacco Duty
9	9	Solidaritätszuschlag	12800	2008	Solidarity Surcharge
10	10	Versicherungsteuer	10540	2008	Insurance Tax
11	11	Stromsteuer	6600	2008	Electricity Duty
12	12	Kraftfahrzeugsteuer	0	2008	Motor Vehicle Tax
13	13	Kaffeesteuer	980	2008	Coffee Duty
14	14	Alkoholsteuer	2163	2008	Alcohol Duty
15	15	Luftverkehrsteuer	0	2008	Aviation Tax
16	16	Ergänzungszuweisungen an Länder	-14721	2008	Supplementary Grants to Länder
17	17	BNE-Eigenmittel der EU	-16240	2008	EU Own Resources (GNI-Based)
18	18	Mehrwertsteuer-Eigenmittel der EU	-4100	2008	EU Own Resources (VAT-Based)
19	19	Zuweisungen an Länder für ÖPNV	-6610	2008	Grants to Länder for Public Transport
20	20	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	0	2008	Grants to Länder for Motor Vehicle Tax and HGV Toll
21	21	Sonstige Einnahmen	33096	2008	Other Revenue
22	22	Lohnsteuer	57800	2009	Wages Tax
23	23	Veranlagte Einkommensteuer	9711	2009	Assessed Income Taxes
24	24	nicht veranlagte Steuer vom Ertrag	7270	2009	Non-Assessed Taxes on Earnings
25	25	Abgeltungsteuer auf Zins- und Veräußerungserträge	5337	2009	Final Withholding Tax on Interest and Capital Gains
26	26	Körperschaftsteuer	5455	2009	Corporation Tax
27	27	Steuern vom Umsatz	95165	2009	Value Added Taxes (VAT)
28	28	Gewerbesteuerumlage	1164	2009	Trade Tax Apportionment
29	29	Energiesteuer	37835	2009	Energy Duty
30	30	Tabaksteuer	13380	2009	Tobacco Duty
31	31	Solidaritätszuschlag	12000	2009	Solidarity Surcharge
32	32	Versicherungsteuer	10450	2009	Insurance Tax
33	33	Stromsteuer	6200	2009	Electricity Duty
34	34	Kraftfahrzeugsteuer	3719	2009	Motor Vehicle Tax
35	35	Kaffeesteuer	1000	2009	Coffee Duty
36	36	Alkoholsteuer	2133	2009	Alcohol Duty
37	37	Luftverkehrsteuer	0	2009	Aviation Tax
38	38	Ergänzungszuweisungen an Länder	-13784	2009	Supplementary Grants to Länder
39	39	BNE-Eigenmittel der EU	-16470	2009	EU Own Resources (GNI-Based)
40	40	Mehrwertsteuer-Eigenmittel der EU	-2260	2009	EU Own Resources (VAT-Based)
41	41	Zuweisungen an Länder für ÖPNV	-6775	2009	Grants to Länder for Public Transport
42	42	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-4571	2009	Grants to Länder for Motor Vehicle Tax and HGV Toll
43	43	Sonstige Einnahmen	29760	2009	Other Revenue
44	44	Lohnsteuer	53083	2010	Wages Tax
45	45	Veranlagte Einkommensteuer	10179	2010	Assessed Income Taxes
46	46	nicht veranlagte Steuer vom Ertrag	5343	2010	Non-Assessed Taxes on Earnings
47	47	Abgeltungsteuer auf Zins- und Veräußerungserträge	5060	2010	Final Withholding Tax on Interest and Capital Gains
48	48	Körperschaftsteuer	3565	2010	Corporation Tax
49	49	Steuern vom Umsatz	97274	2010	Value Added Taxes (VAT)
50	50	Gewerbesteuerumlage	1219	2010	Trade Tax Apportionment
51	51	Energiesteuer	39400	2010	Energy Duty
52	52	Tabaksteuer	13590	2010	Tobacco Duty
53	53	Solidaritätszuschlag	10950	2010	Solidarity Surcharge
54	54	Versicherungsteuer	10450	2010	Insurance Tax
55	55	Stromsteuer	6350	2010	Electricity Duty
56	56	Kraftfahrzeugsteuer	8240	2010	Motor Vehicle Tax
57	57	Kaffeesteuer	1010	2010	Coffee Duty
58	58	Alkoholsteuer	2082	2010	Alcohol Duty
59	59	Luftverkehrsteuer	0	2010	Aviation Tax
60	60	Ergänzungszuweisungen an Länder	-12694	2010	Supplementary Grants to Länder
61	61	BNE-Eigenmittel der EU	-22030	2010	EU Own Resources (GNI-Based)
62	62	Mehrwertsteuer-Eigenmittel der EU	-1930	2010	EU Own Resources (VAT-Based)
63	63	Zuweisungen an Länder für ÖPNV	-6877	2010	Grants to Länder for Public Transport
64	64	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2010	Grants to Länder for Motor Vehicle Tax and HGV Toll
65	65	Sonstige Einnahmen	27037	2010	Other Revenue
66	66	Lohnsteuer	55781	2011	Wages Tax
67	67	Veranlagte Einkommensteuer	11921	2011	Assessed Income Taxes
68	68	nicht veranlagte Steuer vom Ertrag	6895	2011	Non-Assessed Taxes on Earnings
69	69	Abgeltungsteuer auf Zins- und Veräußerungserträge	3569	2011	Final Withholding Tax on Interest and Capital Gains
70	70	Körperschaftsteuer	6625	2011	Corporation Tax
71	71	Steuern vom Umsatz	97985	2011	Value Added Taxes (VAT)
72	72	Gewerbesteuerumlage	1407	2011	Trade Tax Apportionment
73	73	Energiesteuer	39142	2011	Energy Duty
74	74	Tabaksteuer	13440	2011	Tobacco Duty
75	75	Solidaritätszuschlag	11850	2011	Solidarity Surcharge
76	76	Versicherungsteuer	10620	2011	Insurance Tax
77	77	Stromsteuer	7030	2011	Electricity Duty
78	78	Kraftfahrzeugsteuer	8445	2011	Motor Vehicle Tax
79	79	Kaffeesteuer	1030	2011	Coffee Duty
80	80	Alkoholsteuer	1963	2011	Alcohol Duty
81	81	Luftverkehrsteuer	1000	2011	Aviation Tax
82	82	Ergänzungszuweisungen an Länder	-12159	2011	Supplementary Grants to Länder
83	83	BNE-Eigenmittel der EU	-21870	2011	EU Own Resources (GNI-Based)
84	84	Mehrwertsteuer-Eigenmittel der EU	-2300	2011	EU Own Resources (VAT-Based)
85	85	Zuweisungen an Länder für ÖPNV	-6980	2011	Grants to Länder for Public Transport
86	86	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2011	Grants to Länder for Motor Vehicle Tax and HGV Toll
87	87	Sonstige Einnahmen	27860	2011	Other Revenue
88	88	Lohnsteuer	63261	2012	Wages Tax
89	89	Veranlagte Einkommensteuer	15609	2012	Assessed Income Taxes
90	90	nicht veranlagte Steuer vom Ertrag	9910	2012	Non-Assessed Taxes on Earnings
91	91	Abgeltungsteuer auf Zins- und Veräußerungserträge	3597	2012	Final Withholding Tax on Interest and Capital Gains
92	92	Körperschaftsteuer	9215	2012	Corporation Tax
93	93	Steuern vom Umsatz	103626	2012	Value Added Taxes (VAT)
94	94	Gewerbesteuerumlage	1583	2012	Trade Tax Apportionment
95	95	Energiesteuer	39900	2012	Energy Duty
96	96	Tabaksteuer	14330	2012	Tobacco Duty
97	97	Solidaritätszuschlag	13550	2012	Solidarity Surcharge
98	98	Versicherungsteuer	11100	2012	Insurance Tax
99	99	Stromsteuer	6920	2012	Electricity Duty
100	100	Kraftfahrzeugsteuer	8460	2012	Motor Vehicle Tax
101	101	Kaffeesteuer	1045	2012	Coffee Duty
102	102	Alkoholsteuer	2122	2012	Alcohol Duty
103	103	Luftverkehrsteuer	960	2012	Aviation Tax
104	104	Ergänzungszuweisungen an Länder	-11421	2012	Supplementary Grants to Länder
105	105	BNE-Eigenmittel der EU	-21490	2012	EU Own Resources (GNI-Based)
106	106	Mehrwertsteuer-Eigenmittel der EU	-2070	2012	EU Own Resources (VAT-Based)
107	107	Zuweisungen an Länder für ÖPNV	-7085	2012	Grants to Länder for Public Transport
108	108	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2012	Grants to Länder for Motor Vehicle Tax and HGV Toll
109	109	Sonstige Einnahmen	26981	2012	Other Revenue
110	110	Lohnsteuer	66768	2013	Wages Tax
111	111	Veranlagte Einkommensteuer	16852	2013	Assessed Income Taxes
112	112	nicht veranlagte Steuer vom Ertrag	7742	2013	Non-Assessed Taxes on Earnings
113	113	Abgeltungsteuer auf Zins- und Veräußerungserträge	4141	2013	Final Withholding Tax on Interest and Capital Gains
114	114	Körperschaftsteuer	10285	2013	Corporation Tax
115	115	Steuern vom Umsatz	107020	2013	Value Added Taxes (VAT)
116	116	Gewerbesteuerumlage	1606	2013	Trade Tax Apportionment
117	117	Energiesteuer	40270	2013	Energy Duty
118	118	Tabaksteuer	14450	2013	Tobacco Duty
119	119	Solidaritätszuschlag	14050	2013	Solidarity Surcharge
120	120	Versicherungsteuer	11115	2013	Insurance Tax
121	121	Stromsteuer	6400	2013	Electricity Duty
122	122	Kraftfahrzeugsteuer	8305	2013	Motor Vehicle Tax
123	123	Kaffeesteuer	1045	2013	Coffee Duty
124	124	Alkoholsteuer	2101	2013	Alcohol Duty
125	125	Luftverkehrsteuer	970	2013	Aviation Tax
126	126	Ergänzungszuweisungen an Länder	-10842	2013	Supplementary Grants to Länder
127	127	BNE-Eigenmittel der EU	-23950	2013	EU Own Resources (GNI-Based)
128	128	Mehrwertsteuer-Eigenmittel der EU	-2150	2013	EU Own Resources (VAT-Based)
129	129	Zuweisungen an Länder für ÖPNV	-7191	2013	Grants to Länder for Public Transport
130	130	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2013	Grants to Länder for Motor Vehicle Tax and HGV Toll
131	131	Sonstige Einnahmen	23979	2013	Other Revenue
132	132	Lohnsteuer	71273	2014	Wages Tax
133	133	Veranlagte Einkommensteuer	19316	2014	Assessed Income Taxes
134	134	nicht veranlagte Steuer vom Ertrag	8000	2014	Non-Assessed Taxes on Earnings
135	135	Abgeltungsteuer auf Zins- und Veräußerungserträge	3696	2014	Final Withholding Tax on Interest and Capital Gains
136	136	Körperschaftsteuer	9025	2014	Corporation Tax
137	137	Steuern vom Umsatz	107951	2014	Value Added Taxes (VAT)
138	138	Gewerbesteuerumlage	1629	2014	Trade Tax Apportionment
139	139	Energiesteuer	39450	2014	Energy Duty
140	140	Tabaksteuer	14300	2014	Tobacco Duty
141	141	Solidaritätszuschlag	14900	2014	Solidarity Surcharge
142	142	Versicherungsteuer	11950	2014	Insurance Tax
143	143	Stromsteuer	6580	2014	Electricity Duty
144	144	Kraftfahrzeugsteuer	8400	2014	Motor Vehicle Tax
145	145	Kaffeesteuer	1040	2014	Coffee Duty
146	146	Alkoholsteuer	2062	2014	Alcohol Duty
147	147	Luftverkehrsteuer	980	2014	Aviation Tax
148	148	Ergänzungszuweisungen an Länder	-10450	2014	Supplementary Grants to Länder
149	149	BNE-Eigenmittel der EU	-23480	2014	EU Own Resources (GNI-Based)
150	150	Mehrwertsteuer-Eigenmittel der EU	-4140	2014	EU Own Resources (VAT-Based)
151	151	Zuweisungen an Länder für ÖPNV	-7299	2014	Grants to Länder for Public Transport
152	152	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2014	Grants to Länder for Motor Vehicle Tax and HGV Toll
153	153	Sonstige Einnahmen	21585	2014	Other Revenue
154	154	Lohnsteuer	75714	2015	Wages Tax
155	155	Veranlagte Einkommensteuer	20634	2015	Assessed Income Taxes
156	156	nicht veranlagte Steuer vom Ertrag	8200	2015	Non-Assessed Taxes on Earnings
157	157	Abgeltungsteuer auf Zins- und Veräußerungserträge	3245	2015	Final Withholding Tax on Interest and Capital Gains
158	158	Körperschaftsteuer	10400	2015	Corporation Tax
159	159	Steuern vom Umsatz	108475	2015	Value Added Taxes (VAT)
160	160	Gewerbesteuerumlage	1667	2015	Trade Tax Apportionment
161	161	Energiesteuer	40391	2015	Energy Duty
162	162	Tabaksteuer	14190	2015	Tobacco Duty
163	163	Solidaritätszuschlag	15600	2015	Solidarity Surcharge
164	164	Versicherungsteuer	12500	2015	Insurance Tax
165	165	Stromsteuer	6900	2015	Electricity Duty
166	166	Kraftfahrzeugsteuer	8550	2015	Motor Vehicle Tax
167	167	Kaffeesteuer	1020	2015	Coffee Duty
168	168	Alkoholsteuer	2062	2015	Alcohol Duty
169	169	Luftverkehrsteuer	1010	2015	Aviation Tax
170	170	Ergänzungszuweisungen an Länder	-10040	2015	Supplementary Grants to Länder
171	171	BNE-Eigenmittel der EU	-23080	2015	EU Own Resources (GNI-Based)
172	172	Mehrwertsteuer-Eigenmittel der EU	-4310	2015	EU Own Resources (VAT-Based)
173	173	Zuweisungen an Länder für ÖPNV	-7299	2015	Grants to Länder for Public Transport
174	174	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2015	Grants to Länder for Motor Vehicle Tax and HGV Toll
175	175	Sonstige Einnahmen	26553	2015	Other Revenue
176	176	Lohnsteuer	78476	2016	Wages Tax
177	177	Veranlagte Einkommensteuer	21144	2016	Assessed Income Taxes
178	178	nicht veranlagte Steuer vom Ertrag	8508	2016	Non-Assessed Taxes on Earnings
179	179	Abgeltungsteuer auf Zins- und Veräußerungserträge	3574	2016	Final Withholding Tax on Interest and Capital Gains
180	180	Körperschaftsteuer	9495	2016	Corporation Tax
181	181	Steuern vom Umsatz	112689	2016	Value Added Taxes (VAT)
182	182	Gewerbesteuerumlage	1647	2016	Trade Tax Apportionment
183	183	Energiesteuer	40200	2016	Energy Duty
184	184	Tabaksteuer	14360	2016	Tobacco Duty
185	185	Solidaritätszuschlag	16000	2016	Solidarity Surcharge
186	186	Versicherungsteuer	12700	2016	Insurance Tax
187	187	Stromsteuer	6600	2016	Electricity Duty
188	188	Kraftfahrzeugsteuer	8800	2016	Motor Vehicle Tax
189	189	Kaffeesteuer	1030	2016	Coffee Duty
190	190	Alkoholsteuer	2057	2016	Alcohol Duty
191	191	Luftverkehrsteuer	1024	2016	Aviation Tax
192	192	Ergänzungszuweisungen an Länder	-9401	2016	Supplementary Grants to Länder
193	193	BNE-Eigenmittel der EU	-22160	2016	EU Own Resources (GNI-Based)
194	194	Mehrwertsteuer-Eigenmittel der EU	-2390	2016	EU Own Resources (VAT-Based)
195	195	Zuweisungen an Länder für ÖPNV	-8000	2016	Grants to Länder for Public Transport
196	196	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2016	Grants to Länder for Motor Vehicle Tax and HGV Toll
197	197	Sonstige Einnahmen	22432	2016	Other Revenue
198	198	Lohnsteuer	82939	2017	Wages Tax
199	199	Veranlagte Einkommensteuer	23026	2017	Assessed Income Taxes
200	200	nicht veranlagte Steuer vom Ertrag	9610	2017	Non-Assessed Taxes on Earnings
201	201	Abgeltungsteuer auf Zins- und Veräußerungserträge	2306	2017	Final Withholding Tax on Interest and Capital Gains
202	202	Körperschaftsteuer	13249	2017	Corporation Tax
203	203	Steuern vom Umsatz	114436	2017	Value Added Taxes (VAT)
204	204	Gewerbesteuerumlage	1846	2017	Trade Tax Apportionment
205	205	Energiesteuer	39796	2017	Energy Duty
206	206	Tabaksteuer	14700	2017	Tobacco Duty
207	207	Solidaritätszuschlag	17450	2017	Solidarity Surcharge
208	208	Versicherungsteuer	13050	2017	Insurance Tax
209	209	Stromsteuer	6530	2017	Electricity Duty
210	210	Kraftfahrzeugsteuer	8900	2017	Motor Vehicle Tax
211	211	Kaffeesteuer	1050	2017	Coffee Duty
212	212	Alkoholsteuer	2051	2017	Alcohol Duty
213	213	Luftverkehrsteuer	1101	2017	Aviation Tax
214	214	Ergänzungszuweisungen an Länder	-9228	2017	Supplementary Grants to Länder
215	215	BNE-Eigenmittel der EU	-21680	2017	EU Own Resources (GNI-Based)
216	216	Mehrwertsteuer-Eigenmittel der EU	-2440	2017	EU Own Resources (VAT-Based)
217	217	Zuweisungen an Länder für ÖPNV	-8144	2017	Grants to Länder for Public Transport
218	218	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8922	2017	Grants to Länder for Motor Vehicle Tax and HGV Toll
219	219	Sonstige Einnahmen	21021	2017	Other Revenue
220	220	Lohnsteuer	87741	2018	Wages Tax
221	221	Veranlagte Einkommensteuer	26173	2018	Assessed Income Taxes
222	222	nicht veranlagte Steuer vom Ertrag	10950	2018	Non-Assessed Taxes on Earnings
223	223	Abgeltungsteuer auf Zins- und Veräußerungserträge	3474	2018	Final Withholding Tax on Interest and Capital Gains
224	224	Körperschaftsteuer	16165	2018	Corporation Tax
225	225	Steuern vom Umsatz	118276	2018	Value Added Taxes (VAT)
226	226	Gewerbesteuerumlage	1971	2018	Trade Tax Apportionment
227	227	Energiesteuer	41300	2018	Energy Duty
228	228	Tabaksteuer	14160	2018	Tobacco Duty
229	229	Solidaritätszuschlag	18750	2018	Solidarity Surcharge
230	230	Versicherungsteuer	13670	2018	Insurance Tax
231	231	Stromsteuer	6930	2018	Electricity Duty
232	232	Kraftfahrzeugsteuer	9010	2018	Motor Vehicle Tax
233	233	Kaffeesteuer	1055	2018	Coffee Duty
234	234	Alkoholsteuer	2102	2018	Alcohol Duty
235	235	Luftverkehrsteuer	1175	2018	Aviation Tax
236	236	Ergänzungszuweisungen an Länder	-8545	2018	Supplementary Grants to Länder
237	237	BNE-Eigenmittel der EU	-22610	2018	EU Own Resources (GNI-Based)
238	238	Mehrwertsteuer-Eigenmittel der EU	-2510	2018	EU Own Resources (VAT-Based)
239	239	Zuweisungen an Länder für ÖPNV	-8498	2018	Grants to Länder for Public Transport
240	240	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2018	Grants to Länder for Motor Vehicle Tax and HGV Toll
241	241	Sonstige Einnahmen	20360	2018	Other Revenue
242	242	Lohnsteuer	92301	2019	Wages Tax
243	243	Veranlagte Einkommensteuer	26688	2019	Assessed Income Taxes
244	244	nicht veranlagte Steuer vom Ertrag	10870	2019	Non-Assessed Taxes on Earnings
245	245	Abgeltungsteuer auf Zins- und Veräußerungserträge	3339	2019	Final Withholding Tax on Interest and Capital Gains
246	246	Körperschaftsteuer	16865	2019	Corporation Tax
247	247	Steuern vom Umsatz	120926	2019	Value Added Taxes (VAT)
248	248	Gewerbesteuerumlage	2038	2019	Trade Tax Apportionment
249	249	Energiesteuer	41100	2019	Energy Duty
250	250	Tabaksteuer	14220	2019	Tobacco Duty
251	251	Solidaritätszuschlag	19700	2019	Solidarity Surcharge
252	252	Versicherungsteuer	14050	2019	Insurance Tax
253	253	Stromsteuer	7000	2019	Electricity Duty
254	254	Kraftfahrzeugsteuer	9080	2019	Motor Vehicle Tax
255	255	Kaffeesteuer	1045	2019	Coffee Duty
256	256	Alkoholsteuer	2122	2019	Alcohol Duty
257	257	Luftverkehrsteuer	1215	2019	Aviation Tax
258	258	Ergänzungszuweisungen an Länder	-7783	2019	Supplementary Grants to Länder
259	259	BNE-Eigenmittel der EU	-28640	2019	EU Own Resources (GNI-Based)
260	260	Mehrwertsteuer-Eigenmittel der EU	-2600	2019	EU Own Resources (VAT-Based)
261	261	Zuweisungen an Länder für ÖPNV	-8651	2019	Grants to Länder for Public Transport
262	262	Zuweisung an die Länder für Kfz-Steuer und Lkw-Maut	-8992	2019	Grants to Länder for Motor Vehicle Tax and HGV Toll
263	263	Sonstige Einnahmen	25123	2019	Other Revenue
\.


--
-- Name: ix_Ausgaben_index; Type: INDEX; Schema: public; Owner: jdw686
--

CREATE INDEX "ix_Ausgaben_index" ON public."Ausgaben" USING btree (index);


--
-- Name: ix_Bundessteuern_index; Type: INDEX; Schema: public; Owner: jdw686
--

CREATE INDEX "ix_Bundessteuern_index" ON public."Bundessteuern" USING btree (index);


--
-- Name: ix_Revenue Budget_index; Type: INDEX; Schema: public; Owner: jdw686
--

CREATE INDEX "ix_Revenue Budget_index" ON public."Revenue Budget" USING btree (index);


--
-- PostgreSQL database dump complete
--

