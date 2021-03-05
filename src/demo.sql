--
-- PostgreSQL database dump
--
-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: assign_to; Type: TABLE; Schema: public; Owner: rajivranjansingh
--

CREATE TABLE public.assign_to (
    initials character varying(7) NOT NULL,
    sem integer NOT NULL,
    section character(1) NOT NULL,
    room_no character varying(6) NOT NULL,
    day character varying(15) NOT NULL,
    pno integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL
);


ALTER TABLE public.assign_to OWNER TO rajivranjansingh;

--
-- Name: course; Type: TABLE; Schema: public; Owner: rajivranjansingh
--

CREATE TABLE public.course (
    c_code character varying(10) NOT NULL,
    c_name character varying(15) NOT NULL,
    credits integer NOT NULL
);


ALTER TABLE public.course OWNER TO rajivranjansingh;

--
-- Name: lecturer; Type: TABLE; Schema: public; Owner: rajivranjansingh
--

CREATE TABLE public.lecturer (
    initials character varying(7) NOT NULL,
    name character varying(30) NOT NULL,
    dept character varying(15) NOT NULL,
    c_code character varying(10) NOT NULL
);


ALTER TABLE public.lecturer OWNER TO rajivranjansingh;

--
-- Name: offers; Type: TABLE; Schema: public; Owner: rajivranjansingh
--

CREATE TABLE public.offers (
    initials character varying(7) NOT NULL,
    c_code character varying(10) NOT NULL,
    sem integer NOT NULL,
    section character(1) NOT NULL,
    room_no character varying(6) NOT NULL
);


ALTER TABLE public.offers OWNER TO rajivranjansingh;

--
-- Name: sem_class; Type: TABLE; Schema: public; Owner: rajivranjansingh
--

CREATE TABLE public.sem_class (
    sem integer NOT NULL,
    section character(1) NOT NULL,
    room_no character varying(6) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.sem_class OWNER TO rajivranjansingh;

--
-- Name: timetable; Type: TABLE; Schema: public; Owner: rajivranjansingh
--

CREATE TABLE public.timetable (
    day character varying(15) NOT NULL,
    pno integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL
);


ALTER TABLE public.timetable OWNER TO rajivranjansingh;

--
-- Data for Name: assign_to; Type: TABLE DATA; Schema: public; Owner: rajivranjansingh
--

COPY public.assign_to (initials, sem, section, room_no, day, pno, start_time, end_time) FROM stdin;
GM	4	A	B-102	Monday	1	08:15:00	09:15:00
DS	4	A	B-102	Monday	2	09:15:00	10:15:00
PRS	4	A	B-102	Monday	3	10:45:00	11:45:00
SKN	4	A	B-102	Monday	4	11:45:00	12:45:00
COP	4	A	B-102	Monday	5	13:30:00	14:30:00
GM	4	A	B-102	Tuesday	1	08:15:00	09:15:00
DS	4	A	B-102	Tuesday	2	09:15:00	10:15:00
COP	4	A	B-102	Tuesday	3	10:45:00	11:45:00
PRS	4	A	B-102	Tuesday	4	11:45:00	12:45:00
VRB	4	B	B-112	Monday	1	08:15:00	09:15:00
PK	4	B	B-112	Monday	2	09:15:00	10:15:00
NSK	4	B	B-112	Monday	3	10:45:00	11:45:00
NSK	4	B	B-112	Monday	4	11:45:00	12:45:00
Dr.NKS	4	B	B-112	Monday	5	13:30:00	14:30:00
RHB	4	B	B-112	Tuesday	1	08:15:00	09:15:00
RHB	4	B	B-112	Tuesday	2	09:15:00	10:15:00
VRB	4	B	B-112	Tuesday	3	10:45:00	11:45:00
Dr.NKS	4	B	B-112	Tuesday	4	11:45:00	12:45:00
NSK	4	B	B-112	Wednesday	1	08:15:00	09:15:00
NSK	4	B	B-112	Wednesday	2	09:15:00	10:15:00
PK	4	B	B-112	Wednesday	3	10:45:00	11:45:00
PK	4	B	B-112	Wednesday	4	11:45:00	12:45:00
Dr.NKS	4	B	B-112	Thursday	1	08:15:00	09:15:00
Dr.NKS	4	B	B-112	Thursday	2	09:15:00	10:15:00
RHB	4	B	B-112	Thursday	3	10:45:00	11:45:00
VRB	4	B	B-112	Thursday	4	11:45:00	12:45:00
Dr.NKS	4	B	B-112	Friday	1	08:15:00	09:15:00
VRB	4	B	B-112	Friday	2	09:15:00	10:15:00
PK	4	B	B-112	Friday	3	10:45:00	11:45:00
RHB	4	B	B-112	Friday	4	11:45:00	12:45:00
PRS	4	C	B-111	Monday	1	08:15:00	09:15:00
Dr.UD	4	C	B-111	Monday	2	09:15:00	10:15:00
RR	4	C	B-111	Monday	3	10:45:00	11:45:00
RBA	4	C	B-111	Monday	4	11:45:00	12:45:00
CB	4	C	B-111	Monday	5	13:30:00	14:30:00
CB	4	C	B-111	Monday	6	14:30:00	15:30:00
SKN	4	A	B-102	Wednesday	1	08:15:00	09:15:00
GM	4	A	B-102	Wednesday	2	09:15:00	10:15:00
DS	4	A	B-102	Wednesday	3	10:45:00	11:45:00
COP	4	A	B-102	Wednesday	4	11:45:00	12:45:00
PRS	4	A	B-102	Thursday	1	08:15:00	09:15:00
PRS	4	A	B-102	Thursday	2	09:15:00	10:15:00
SKN	4	A	B-102	Thursday	3	10:45:00	11:45:00
DS	4	A	B-102	Thursday	4	11:45:00	12:45:00
GM	4	A	B-102	Thursday	5	13:30:00	14:30:00
COP	4	A	B-102	Thursday	6	14:30:00	15:30:00
COP	4	A	B-102	Friday	3	10:45:00	11:45:00
COP	4	A	B-102	Friday	4	11:45:00	12:45:00
CB	4	C	B-111	Tuesday	3	10:45:00	11:45:00
RBA	4	C	B-111	Tuesday	4	11:45:00	12:45:00
RR	4	C	B-111	Tuesday	5	13:30:00	14:30:00
Dr.UD	4	C	B-111	Wednesday	1	08:15:00	09:15:00
Dr.UD	4	C	B-111	Wednesday	2	09:15:00	10:15:00
CB	4	C	B-111	Wednesday	3	10:45:00	11:45:00
PRS	4	C	B-111	Wednesday	4	11:45:00	12:45:00
RBA	4	C	B-111	Thursday	1	08:15:00	09:15:00
RR	4	C	B-111	Thursday	2	09:15:00	10:15:00
PRS	4	C	B-111	Thursday	3	10:45:00	11:45:00
Dr.UD	4	C	B-111	Thursday	4	11:45:00	12:45:00
RR	4	C	B-111	Friday	1	08:15:00	09:15:00
PRS	4	C	B-111	Friday	2	09:15:00	10:15:00
RBA	4	C	B-111	Friday	3	10:45:00	11:45:00
Dr.UD	4	C	B-111	Friday	4	11:45:00	12:45:00
DSJ	4	D	B-G12	Monday	1	08:15:00	09:15:00
PP	4	D	B-G12	Monday	2	09:15:00	10:15:00
KP	4	D	B-G12	Monday	5	13:30:00	14:30:00
RR	4	D	B-G12	Monday	6	14:30:00	15:30:00
PP	4	D	B-G12	Tuesday	1	08:15:00	09:15:00
KP	4	D	B-G12	Tuesday	2	09:15:00	10:15:00
RR	4	D	B-G12	Tuesday	3	10:45:00	11:45:00
DSJ	4	D	B-G12	Tuesday	4	11:45:00	12:45:00
Dr.UD	4	D	B-G12	Tuesday	5	13:30:00	14:30:00
Dr.UD	4	D	B-G12	Tuesday	6	14:30:00	15:30:00
PP	4	D	B-G12	Wednesday	1	08:15:00	09:15:00
DSJ	4	D	B-G12	Wednesday	2	09:15:00	10:15:00
KP	4	D	B-G12	Wednesday	3	10:45:00	11:45:00
Dr.UD	4	D	B-G12	Wednesday	4	11:45:00	12:45:00
RR	4	D	B-G12	Thursday	1	08:15:00	09:15:00
Dr.UD	4	D	B-G12	Thursday	2	09:15:00	10:15:00
PP	4	D	B-G12	Thursday	3	10:45:00	11:45:00
DSJ	4	D	B-G12	Thursday	4	11:45:00	12:45:00
Dr.UD	4	D	B-G12	Thursday	5	13:30:00	14:30:00
KP	4	D	B-G12	Friday	1	08:15:00	09:15:00
RR	4	D	B-G12	Friday	2	09:15:00	10:15:00
PB	4	E	B-G11	Monday	1	08:15:00	09:15:00
SVI	4	E	B-G11	Monday	2	09:15:00	10:15:00
ND	4	E	B-G11	Monday	3	10:45:00	11:45:00
ND	4	E	B-G11	Monday	4	11:45:00	12:45:00
Dr.JR	4	E	B-G11	Tuesday	1	08:15:00	09:15:00
Dr.SSS	4	E	B-G11	Tuesday	2	09:15:00	10:15:00
PB	4	E	B-G11	Tuesday	3	10:45:00	11:45:00
ND	4	E	B-G11	Tuesday	4	11:45:00	12:45:00
SVI	4	E	B-G11	Tuesday	5	13:30:00	14:30:00
Dr.JR	4	E	B-G11	Tuesday	6	14:30:00	15:30:00
SVI	4	E	B-G11	Wednesday	1	08:15:00	09:15:00
Dr.JR	4	E	B-G11	Wednesday	2	09:15:00	10:15:00
Dr.SSS	4	E	B-G11	Wednesday	3	10:45:00	11:45:00
PB	4	E	B-G11	Wednesday	4	11:45:00	12:45:00
PB	4	E	B-G11	Thursday	1	08:15:00	09:15:00
Dr.SSS	4	E	B-G11	Thursday	2	09:15:00	10:15:00
SVI	4	E	B-G11	Thursday	5	13:30:00	14:30:00
ND	4	E	B-G11	Friday	1	08:15:00	09:15:00
ND	4	E	B-G11	Friday	2	09:15:00	10:15:00
Dr.SSS	4	E	B-G11	Friday	3	10:45:00	11:45:00
Dr.JR	4	E	B-G11	Friday	4	11:45:00	12:45:00
Dr.NKS	4	F	B-G02	Monday	1	08:15:00	09:15:00
GM	4	F	B-G02	Monday	2	09:15:00	10:15:00
DS	4	F	B-G02	Monday	3	10:45:00	11:45:00
DSJ	4	F	B-G02	Monday	4	11:45:00	12:45:00
DS	4	F	B-G02	Tuesday	1	08:15:00	09:15:00
DSJ	4	F	B-G02	Tuesday	2	09:15:00	10:15:00
Dr.NKS	4	F	B-G02	Tuesday	3	10:45:00	11:45:00
GM	4	F	B-G02	Tuesday	4	11:45:00	12:45:00
RBA	4	F	B-G02	Tuesday	5	13:30:00	14:30:00
GM	4	F	B-G02	Wednesday	1	08:15:00	09:15:00
Dr.NKS	4	F	B-G02	Wednesday	2	09:15:00	10:15:00
RBA	4	F	B-G02	Wednesday	3	10:45:00	11:45:00
DS	4	F	B-G02	Wednesday	4	11:45:00	12:45:00
DS	4	F	B-G02	Thursday	1	08:15:00	09:15:00
GM	4	F	B-G02	Thursday	2	09:15:00	10:15:00
DSJ	4	F	B-G02	Thursday	3	10:45:00	11:45:00
RBA	4	F	B-G02	Thursday	4	11:45:00	12:45:00
RBA	4	F	B-G02	Friday	1	08:15:00	09:15:00
DSJ	4	F	B-G02	Friday	2	09:15:00	10:15:00
Dr.NKS	4	F	B-G02	Friday	3	10:45:00	11:45:00
Dr.NKS	4	F	B-G02	Friday	4	11:45:00	12:45:00
CBH	4	G	B-G07	Monday	1	08:15:00	09:15:00
SKN	4	G	B-G07	Monday	2	09:15:00	10:15:00
VRB	4	G	B-G07	Monday	3	10:45:00	11:45:00
SVI	4	G	B-G07	Monday	4	11:45:00	12:45:00
CBH	4	G	B-G07	Monday	5	13:30:00	14:30:00
SKN	4	G	B-G07	Tuesday	1	08:15:00	09:15:00
SKN	4	G	B-G07	Tuesday	2	09:15:00	10:15:00
SVI	4	G	B-G07	Tuesday	3	10:45:00	11:45:00
VRB	4	G	B-G07	Tuesday	4	11:45:00	12:45:00
CBH	4	G	B-G07	Wednesday	1	08:15:00	09:15:00
VRB	4	G	B-G07	Wednesday	2	09:15:00	10:15:00
VRB	4	G	B-G07	Thursday	1	08:15:00	09:15:00
SVI	4	G	B-G07	Thursday	2	09:15:00	10:15:00
SK	4	G	B-G07	Thursday	3	10:45:00	11:45:00
SK	4	G	B-G07	Thursday	4	11:45:00	12:45:00
SKN	4	G	B-G07	Thursday	5	13:30:00	14:30:00
CBH	4	G	B-G07	Thursday	6	14:30:00	15:30:00
SVI	4	G	B-G07	Friday	1	08:15:00	09:15:00
CBH	4	G	B-G07	Friday	2	09:15:00	10:15:00
SK	4	G	B-G07	Friday	3	10:45:00	11:45:00
SK	4	G	B-G07	Friday	4	11:45:00	12:45:00
RJ	4	H	B-G06	Monday	1	08:15:00	09:15:00
VJ	4	H	B-G06	Monday	2	09:15:00	10:15:00
Dr.JR	4	H	B-G06	Monday	3	10:45:00	11:45:00
Dr.NKS	4	H	B-G06	Monday	4	11:45:00	12:45:00
SK	4	H	B-G06	Tuesday	1	08:15:00	09:15:00
SK	4	H	B-G06	Tuesday	2	09:15:00	10:15:00
RJ	4	H	B-G06	Tuesday	3	10:45:00	11:45:00
VJ	4	H	B-G06	Tuesday	4	11:45:00	12:45:00
Dr.JR	4	H	B-G06	Tuesday	5	13:30:00	14:30:00
Dr.NKS	4	H	B-G06	Tuesday	6	14:30:00	15:30:00
Dr.JR	4	H	B-G06	Wednesday	1	08:15:00	09:15:00
RJ	4	H	B-G06	Wednesday	2	09:15:00	10:15:00
Dr.NKS	4	H	B-G06	Wednesday	3	10:45:00	11:45:00
Dr.NKS	4	H	B-G06	Wednesday	4	11:45:00	12:45:00
SK	4	H	B-G06	Thursday	1	08:15:00	09:15:00
SK	4	H	B-G06	Thursday	2	09:15:00	10:15:00
VJ	4	H	B-G06	Thursday	3	10:45:00	11:45:00
RJ	4	H	B-G06	Thursday	4	11:45:00	12:45:00
Dr.NKS	4	H	B-G06	Thursday	5	13:30:00	14:30:00
VJ	4	H	B-G06	Friday	3	10:45:00	11:45:00
Dr.JR	4	H	B-G06	Friday	4	11:45:00	12:45:00
\.


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: rajivranjansingh
--

COPY public.course (c_code, c_name, credits) FROM stdin;
18CS52	CNS	4
18CS34	CO	4
18CS53	DBMS	4
18CS55	PYT	4
18CS54	ATC	4
18CSL58	DBMS Lab	2
18CSL57	CNS Lab	2
\.


--
-- Data for Name: lecturer; Type: TABLE DATA; Schema: public; Owner: rajivranjansingh
--

COPY public.lecturer (initials, name, dept, c_code) FROM stdin;
COP	Prakash C O	CSE	18CS52
DS	Dinesh Singh	CSE	18CS34
SKN	Mrs. Sowmya  K.N.	CSE	18CSL58
GM	Mrs.Punitha M	CSE	18CS55
PRS	Sudha Mam	CSE	18CS54
Dr.NKS	Nagegowda K S	CSE	18CS52
NSK	N S Kumar	CSE	18CS34
RHB	Ramesh H Bhat	CSE	18CS53
VRB	V R Badriprasad	CSE	18CS55
PK	Preet Kanwal	CSE	18CS54
Dr.UD	Uma D	CSE	18CS52
CB	Channabankapur	CSE	18CS34
RBA	Raghu B A	CSE	18CS53
RR	Roopa Ravish	CSE	18CS55
PP	Preeti P	CSE	18CS34
KP	Kiran P	CSE	18CS53
DSJ	Divya S J	CSE	18CS55
ND	Nypunya D	CSE	18CS52
Dr.SSS	Shylaja S S	CSE	18CS34
PB	Priya Badrinath	CSE	18CS53
Dr.JR	Jayashree R	CSE	18CS55
SVI	Sangeetha V I	CSE	18CS54
CBH	Chandravva B Hebbi	CSE	18CS52
SK	Shruthi Kaivalya	CSE	18CS34
VJ	Vinay Joshi	CSE	18CS53
RJ	Jyoti R	CSE	18CS54
\.


--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: rajivranjansingh
--

COPY public.offers (initials, c_code, sem, section, room_no) FROM stdin;
COP	18CS52	4	A	B-102
DS	18CS34	4	A	B-102
SKN	18CS53	4	A	B-102
GM	18CS55	4	A	B-102
PRS	18CS54	4	A	B-102
Dr.NKS	18CS52	4	B	B-112
NSK	18CS34	4	B	B-112
RHB	18CS53	4	B	B-112
VRB	18CS55	4	B	B-112
PK	18CS54	4	B	B-112
Dr.UD	18CS52	4	C	B-111
CB	18CS34	4	C	B-111
RBA	18CS53	4	C	B-111
RR	18CS55	4	C	B-111
PRS	18CS54	4	C	B-111
Dr.UD	18CS52	4	D	B-G12
PP	18CS34	4	D	B-G12
KP	18CS53	4	D	B-G12
RR	18CS55	4	D	B-G12
DSJ	18CS54	4	D	B-G12
ND	18CS52	4	E	B-G11
Dr.SSS	18CS34	4	E	B-G11
PB	18CS53	4	E	B-G11
Dr.JR	18CS55	4	E	B-G11
SVI	18CS54	4	E	B-G11
Dr.NKS	18CS52	4	F	B-G02
DS	18CS34	4	F	B-G02
RBA	18CS53	4	F	B-G02
GM	18CS55	4	F	B-G02
DSJ	18CS54	4	F	B-G02
CBH	18CS52	4	G	B-G07
SK	18CS34	4	G	B-G07
SKN	18CS53	4	G	B-G07
VRB	18CS55	4	G	B-G07
SVI	18CS54	4	G	B-G07
Dr.NKS	18CS52	4	H	B-G06
SK	18CS34	4	H	B-G06
VJ	18CS53	4	H	B-G06
Dr.JR	18CS55	4	H	B-G06
RJ	18CS54	4	H	B-G06
\.


--
-- Data for Name: sem_class; Type: TABLE DATA; Schema: public; Owner: rajivranjansingh
--

COPY public.sem_class (sem, section, room_no, year) FROM stdin;
4	A	B-102	2020
4	B	B-112	2020
4	C	B-111	2020
4	D	B-G12	2020
4	E	B-G11	2020
4	F	B-G02	2020
4	G	B-G07	2020
4	H	B-G06	2020
\.


--
-- Data for Name: timetable; Type: TABLE DATA; Schema: public; Owner: rajivranjansingh
--

COPY public.timetable (day, pno, start_time, end_time) FROM stdin;
Monday	1	08:15:00	09:15:00
Monday	2	09:15:00	10:15:00
Monday	3	10:45:00	11:45:00
Monday	4	11:45:00	12:45:00
Monday	5	13:30:00	14:30:00
Monday	6	14:30:00	15:30:00
Tuesday	1	08:15:00	09:15:00
Tuesday	2	09:15:00	10:15:00
Tuesday	3	10:45:00	11:45:00
Tuesday	4	11:45:00	12:45:00
Tuesday	5	13:30:00	14:30:00
Tuesday	6	14:30:00	15:30:00
Wednesday	1	08:15:00	09:15:00
Wednesday	2	09:15:00	10:15:00
Wednesday	3	10:45:00	11:45:00
Wednesday	4	11:45:00	12:45:00
Wednesday	5	13:30:00	14:30:00
Wednesday	6	14:30:00	15:30:00
Thursday	1	08:15:00	09:15:00
Thursday	2	09:15:00	10:15:00
Thursday	3	10:45:00	11:45:00
Thursday	4	11:45:00	12:45:00
Thursday	5	13:30:00	14:30:00
Thursday	6	14:30:00	15:30:00
Friday	1	08:15:00	09:15:00
Friday	2	09:15:00	10:15:00
Friday	3	10:45:00	11:45:00
Friday	4	11:45:00	12:45:00
Friday	5	13:30:00	14:30:00
Friday	6	14:30:00	15:30:00
\.


--
-- Name: assign_to assign_to_pkey; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_pkey PRIMARY KEY (initials, sem, section, room_no, day, pno, start_time, end_time);


--
-- Name: course course_c_name_key; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_c_name_key UNIQUE (c_name);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (c_code);


--
-- Name: lecturer lecturer_pkey; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (initials);


--
-- Name: offers offers_pkey; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (initials, c_code, sem, section, room_no);


--
-- Name: sem_class sem_class_pkey; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.sem_class
    ADD CONSTRAINT sem_class_pkey PRIMARY KEY (sem, section, room_no);


--
-- Name: timetable timetable_pkey; Type: CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (day, pno, start_time, end_time);


--
-- Name: assign_to assign_to_day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_day_fkey FOREIGN KEY (day, pno, start_time, end_time) REFERENCES public.timetable(day, pno, start_time, end_time);


--
-- Name: assign_to assign_to_initials_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_initials_fkey FOREIGN KEY (initials) REFERENCES public.lecturer(initials);


--
-- Name: assign_to assign_to_sem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.assign_to
    ADD CONSTRAINT assign_to_sem_fkey FOREIGN KEY (sem, section, room_no) REFERENCES public.sem_class(sem, section, room_no);


--
-- Name: lecturer lecturer_c_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_c_code_fkey FOREIGN KEY (c_code) REFERENCES public.course(c_code);


--
-- Name: offers offers_c_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_c_code_fkey FOREIGN KEY (c_code) REFERENCES public.course(c_code);


--
-- Name: offers offers_initials_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_initials_fkey FOREIGN KEY (initials) REFERENCES public.lecturer(initials);


--
-- Name: offers offers_sem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rajivranjansingh
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_sem_fkey FOREIGN KEY (sem, section, room_no) REFERENCES public.sem_class(sem, section, room_no);


--
-- rajivranjansinghQL database dump complete
--

