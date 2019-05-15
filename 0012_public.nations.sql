

--
-- Data for Name: nations; Type: TABLE DATA; Schema: public; Owner: feuerwehrsport-statistik
--

COPY public.nations (id, name, iso, created_at, updated_at) FROM stdin;
1	Deutschland	de	2016-01-20 21:36:01.101432	2016-01-20 21:36:01.101432
2	Österreich	at	2016-01-20 21:36:01.117213	2016-01-20 21:36:01.117213
3	Ungarn	hu	2016-01-20 21:36:01.120938	2016-01-20 21:36:01.120938
4	Weißrussland	by	2016-01-20 21:36:01.123969	2016-01-20 21:36:01.123969
5	Polen	pl	2016-01-20 21:36:01.127677	2016-01-20 21:36:01.127677
6	Tschechien	cz	2016-01-20 21:36:01.13125	2016-01-20 21:36:01.13125
7	Estland	ee	2017-07-19 18:33:53.444706	2017-07-19 18:40:40.865458
8	Slowakei	sk	2017-07-19 18:38:15.441497	2017-07-19 18:41:06.214843
9	Russland	ru	2018-09-01 19:21:49.133384	2018-09-01 19:21:49.133384
\.


--
-- Name: nations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: feuerwehrsport-statistik
--

SELECT pg_catalog.setval('public.nations_id_seq', 9, true);
