--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-18 15:05:24

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

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 24592)
-- Name: drivercosts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivercosts (
    driver_id character varying(3) NOT NULL,
    driver_cost numeric
);


ALTER TABLE public.drivercosts OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16444)
-- Name: drivermetrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivermetrics (
    drivermetric_id integer NOT NULL,
    drivermetric_name character varying(50) NOT NULL
);


ALTER TABLE public.drivermetrics OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16434)
-- Name: drivers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivers (
    driver_id character varying(3) NOT NULL,
    driver_name character varying(50) NOT NULL
);


ALTER TABLE public.drivers OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24626)
-- Name: raceobservations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raceobservations (
    race_id integer,
    driver_id character varying(3),
    drivermetric_id integer,
    value integer
);


ALTER TABLE public.raceobservations OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16439)
-- Name: races; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.races (
    race_id integer NOT NULL,
    race_name character varying(50) NOT NULL
);


ALTER TABLE public.races OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24609)
-- Name: teamcosts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teamcosts (
    team_id character varying(3) NOT NULL,
    team_cost numeric
);


ALTER TABLE public.teamcosts OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16454)
-- Name: teammetrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teammetrics (
    teammetric_id integer NOT NULL,
    teammetric_name character varying(50)
);


ALTER TABLE public.teammetrics OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24580)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_id character varying(3) NOT NULL,
    team_name character varying(50)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 4887 (class 0 OID 24592)
-- Dependencies: 220
-- Data for Name: drivercosts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivercosts (driver_id, driver_cost) FROM stdin;
LEC	21.7
MAG	8.2
PER	22.7
STR	12.5
SAI	20.1
HUL	7.7
BEA	15
SAR	6.4
PIA	19.8
NOR	23.8
OCO	8.5
TSU	8.6
ALO	16.4
BOT	6.4
ZHO	6.6
ALB	7
RIC	9
RUS	18.8
VER	29.9
GAS	7.3
HAM	18.7
\.


--
-- TOC entry 4884 (class 0 OID 16444)
-- Dependencies: 217
-- Data for Name: drivermetrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivermetrics (drivermetric_id, drivermetric_name) FROM stdin;
110	Qualifying Result
120	Sprint Result
130	Race Result
134	Driver Of The Day
121	Sprint Positions Gained/Lost
122	Sprint Overtakes Made
123	Sprint Fastest Lap
131	Race Positions Gained/Lost
132	Race Overtakes made
133	Race Fastest Lap
\.


--
-- TOC entry 4882 (class 0 OID 16434)
-- Dependencies: 215
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivers (driver_id, driver_name) FROM stdin;
VER	Max Verstappen
SAR	Logan Sargeant
RIC	Daniel Ricciardo
NOR	Lando Norris
GAS	Pierre Gasly
PER	Sergio Perez
ALO	Fernando Alonso
LEC	Charles Leclerc
STR	Lance Stroll
MAG	Kevin Magnussen
TSU	Yuki Tsunoda
ALB	Alex Albon
ZHO	Zhou Guanyu
HUL	Nico Hulkenberg
OCO	Estoban Ocon
HAM	Lewis Hamilton
SAI	Carlos Sainz
RUS	George Russell
BOT	Valtteri Bottas
PIA	Oscar Piastri
BEA	Oliver Bearman
\.


--
-- TOC entry 4889 (class 0 OID 24626)
-- Dependencies: 222
-- Data for Name: raceobservations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raceobservations (race_id, driver_id, drivermetric_id, value) FROM stdin;
1	VER	110	10
1	VER	130	25
1	VER	131	0
1	VER	132	0
1	VER	133	10
1	VER	134	0
1	PER	110	6
1	PER	130	18
1	PER	131	3
1	PER	132	4
1	PER	133	0
1	PER	134	0
1	SAI	110	7
1	SAI	130	15
1	SAI	131	1
1	SAI	132	3
1	SAI	133	0
1	SAI	134	10
1	LEC	110	9
1	LEC	130	12
1	LEC	131	-2
1	LEC	132	3
1	LEC	133	0
1	LEC	134	0
1	RUS	110	8
1	RUS	130	10
1	RUS	131	-2
1	RUS	132	4
1	RUS	133	0
1	RUS	134	0
1	NOR	110	4
1	NOR	130	8
1	NOR	131	1
1	NOR	132	3
1	NOR	133	0
1	NOR	134	0
1	HAM	110	2
1	HAM	130	6
1	HAM	131	2
1	HAM	132	2
1	HAM	133	0
1	HAM	134	0
1	PIA	110	3
1	PIA	130	4
1	PIA	131	0
1	PIA	132	3
1	PIA	133	0
1	PIA	134	0
1	ALO	110	5
1	ALO	130	2
1	ALO	131	-3
1	ALO	132	3
1	ALO	133	0
1	ALO	134	0
1	STR	110	0
1	STR	130	1
1	STR	131	2
1	STR	132	5
1	STR	133	0
1	STR	134	0
1	ZHO	110	0
1	ZHO	130	0
1	ZHO	131	6
1	ZHO	132	5
1	ZHO	133	0
1	ZHO	134	0
1	MAG	110	0
1	MAG	130	0
1	MAG	131	3
1	MAG	132	4
1	MAG	133	0
1	MAG	134	0
1	RIC	110	0
1	RIC	130	0
1	RIC	131	1
1	RIC	132	4
1	RIC	133	0
1	RIC	134	0
1	TSU	110	0
1	TSU	130	0
1	TSU	131	-3
1	TSU	132	2
1	TSU	133	0
1	TSU	134	0
1	ALB	110	0
1	ALB	130	0
1	ALB	131	-2
1	ALB	132	2
1	ALB	133	0
1	ALB	134	0
1	HUL	110	1
1	HUL	130	0
1	HUL	131	-6
1	HUL	132	2
1	HUL	133	0
1	HUL	134	0
1	OCO	110	0
1	OCO	130	0
1	OCO	131	2
1	OCO	132	5
1	OCO	133	0
1	OCO	134	0
1	GAS	110	0
1	GAS	130	0
1	GAS	131	2
1	GAS	132	4
1	GAS	133	0
1	GAS	134	0
1	BOT	110	0
1	BOT	130	0
1	BOT	131	-3
1	BOT	132	3
1	BOT	133	0
1	BOT	134	0
1	SAR	110	0
1	SAR	130	0
1	SAR	131	-2
1	SAR	132	5
1	SAR	133	0
1	SAR	134	0
2	VER	110	10
2	VER	130	25
2	VER	131	0
2	VER	132	1
2	VER	133	0
2	VER	134	0
2	PER	110	8
2	PER	130	18
2	PER	131	1
2	PER	132	0
2	PER	133	0
2	PER	134	0
2	SAI	110	0
2	SAI	130	0
2	SAI	131	0
2	SAI	132	0
2	SAI	133	0
2	SAI	134	0
2	LEC	110	9
2	LEC	130	15
2	LEC	131	-1
2	LEC	132	4
2	LEC	133	10
2	LEC	134	0
2	RUS	110	4
2	RUS	130	8
2	RUS	131	1
2	RUS	132	2
2	RUS	133	0
2	RUS	134	0
2	NOR	110	5
2	NOR	130	4
2	NOR	131	-2
2	NOR	132	1
2	NOR	133	0
2	NOR	134	0
2	HAM	110	3
2	HAM	130	2
2	HAM	131	-1
2	HAM	132	2
2	HAM	133	0
2	HAM	134	0
2	PIA	110	6
2	PIA	130	12
2	PIA	131	1
2	PIA	132	4
2	PIA	133	0
2	PIA	134	0
2	ALO	110	7
2	ALO	130	10
2	ALO	131	-1
2	ALO	132	0
2	ALO	133	0
2	ALO	134	0
2	STR	110	1
2	STR	130	-20
2	STR	131	0
2	STR	132	2
2	STR	133	0
2	STR	134	0
2	ZHO	110	-5
2	ZHO	130	0
2	ZHO	131	2
2	ZHO	132	1
2	ZHO	133	0
2	ZHO	134	0
2	MAG	110	0
2	MAG	130	0
2	MAG	131	1
2	MAG	132	6
2	MAG	133	0
2	MAG	134	0
2	RIC	110	0
2	RIC	130	0
2	RIC	131	-2
2	RIC	132	2
2	RIC	133	0
2	RIC	134	0
2	TSU	110	2
2	TSU	130	0
2	TSU	131	-6
2	TSU	132	3
2	TSU	133	0
2	TSU	134	0
2	ALB	110	0
2	ALB	130	0
2	ALB	131	1
2	ALB	132	5
2	ALB	133	0
2	ALB	134	0
2	HUL	110	0
2	HUL	130	1
2	HUL	131	5
2	HUL	132	3
2	HUL	133	0
2	HUL	134	0
2	OCO	110	0
2	OCO	130	0
2	OCO	131	4
2	OCO	132	4
2	OCO	133	0
2	OCO	134	0
2	GAS	110	0
2	GAS	130	-20
2	GAS	131	0
2	GAS	132	0
2	GAS	133	0
2	GAS	134	0
2	BOT	110	0
2	BOT	130	0
2	BOT	131	-1
2	BOT	132	0
2	BOT	133	0
2	BOT	134	0
2	SAR	110	0
2	SAR	130	0
2	SAR	131	5
2	SAR	132	2
2	SAR	133	0
2	SAR	134	0
3	VER	110	10
3	VER	130	-20
3	VER	131	0
3	VER	132	0
3	VER	133	0
3	VER	134	0
3	PER	110	8
3	PER	130	10
3	PER	131	1
3	PER	132	3
3	PER	133	0
3	PER	134	0
3	SAI	110	9
3	SAI	130	25
3	SAI	131	1
3	SAI	132	1
3	SAI	133	0
3	SAI	134	10
3	LEC	110	6
3	LEC	130	18
3	LEC	131	2
3	LEC	132	2
3	LEC	133	10
3	LEC	134	0
3	RUS	110	4
3	RUS	130	0
3	RUS	131	-10
3	RUS	132	3
3	RUS	133	0
3	RUS	134	0
3	NOR	110	7
3	NOR	130	15
3	NOR	131	0
3	NOR	132	1
3	NOR	133	0
3	NOR	134	0
3	HAM	110	0
3	HAM	130	-20
3	HAM	131	0
3	HAM	132	1
3	HAM	133	0
3	HAM	134	0
3	PIA	110	5
3	PIA	130	12
3	PIA	131	1
3	PIA	132	3
3	PIA	133	0
3	PIA	134	0
3	ALO	110	1
3	ALO	130	4
3	ALO	131	2
3	ALO	132	2
3	ALO	133	0
3	ALO	134	0
3	STR	110	2
3	STR	130	8
3	STR	131	3
3	STR	132	3
3	STR	133	0
3	STR	134	0
3	ZHO	110	0
3	ZHO	130	0
3	ZHO	131	4
3	ZHO	132	0
3	ZHO	133	0
3	ZHO	134	0
3	MAG	110	0
3	MAG	130	1
3	MAG	131	4
3	MAG	132	3
3	MAG	133	0
3	MAG	134	0
3	RIC	110	0
3	RIC	130	0
3	RIC	131	6
3	RIC	132	2
3	RIC	133	0
3	RIC	134	0
3	TSU	110	3
3	TSU	130	6
3	TSU	131	1
3	TSU	132	1
3	TSU	133	0
3	TSU	134	0
3	ALB	110	0
3	ALB	130	0
3	ALB	131	1
3	ALB	132	3
3	ALB	133	0
3	ALB	134	0
3	HUL	110	0
3	HUL	130	2
3	HUL	131	7
3	HUL	132	2
3	HUL	133	0
3	HUL	134	0
3	OCO	110	0
3	OCO	130	0
3	OCO	131	-1
3	OCO	132	1
3	OCO	133	0
3	OCO	134	0
3	GAS	110	0
3	GAS	130	0
3	GAS	131	4
3	GAS	132	1
3	GAS	133	0
3	GAS	134	0
3	BOT	110	0
3	BOT	130	0
3	BOT	131	-1
3	BOT	132	3
3	BOT	133	0
3	BOT	134	0
3	SAR	110	0
3	SAR	130	0
3	SAR	131	0
3	SAR	132	0
3	SAR	133	0
3	SAR	134	0
4	VER	110	10
4	VER	130	25
4	VER	131	0
4	VER	132	2
4	VER	133	10
4	VER	134	0
4	PER	110	9
4	PER	130	18
4	PER	131	0
4	PER	132	6
4	PER	133	0
4	PER	134	0
4	SAI	110	7
4	SAI	130	15
4	SAI	131	1
4	SAI	132	5
4	SAI	133	0
4	SAI	134	0
4	LEC	110	3
4	LEC	130	12
4	LEC	131	4
4	LEC	132	2
4	LEC	133	0
4	LEC	134	10
4	RUS	110	2
4	RUS	130	6
4	RUS	131	2
4	RUS	132	3
4	RUS	133	0
4	RUS	134	0
4	NOR	110	8
4	NOR	130	10
4	NOR	131	-2
4	NOR	132	3
4	NOR	133	0
4	NOR	134	0
4	HAM	110	4
4	HAM	130	2
4	HAM	131	-2
4	HAM	132	1
4	HAM	133	0
4	HAM	134	0
4	PIA	110	5
4	PIA	130	4
4	PIA	131	-2
4	PIA	132	3
4	PIA	133	0
4	PIA	134	0
4	ALO	110	6
4	ALO	130	8
4	ALO	131	-1
4	ALO	132	1
4	ALO	133	0
4	ALO	134	0
4	STR	110	0
4	STR	130	0
4	STR	131	4
4	STR	132	9
4	STR	133	0
4	STR	134	0
4	ZHO	110	0
4	ZHO	130	-20
4	ZHO	131	0
4	ZHO	132	3
4	ZHO	133	0
4	ZHO	134	0
4	MAG	110	0
4	MAG	130	0
4	MAG	131	5
4	MAG	132	4
4	MAG	133	0
4	MAG	134	0
4	RIC	110	0
4	RIC	130	-20
4	RIC	131	1
4	RIC	132	0
4	RIC	133	0
4	RIC	134	0
4	TSU	110	1
4	TSU	130	1
4	TSU	131	0
4	TSU	132	8
4	TSU	133	0
4	TSU	134	0
4	ALB	110	0
4	ALB	130	-20
4	ALB	131	0
4	ALB	132	0
4	ALB	133	0
4	ALB	134	0
4	HUL	110	0
4	HUL	130	0
4	HUL	131	1
4	HUL	132	9
4	HUL	133	0
4	HUL	134	0
4	OCO	110	0
4	OCO	130	0
4	OCO	131	0
4	OCO	132	5
4	OCO	133	0
4	OCO	134	0
4	GAS	110	0
4	GAS	130	0
4	GAS	131	1
4	GAS	132	4
4	GAS	133	0
4	GAS	134	0
4	BOT	110	0
4	BOT	130	0
4	BOT	131	-1
4	BOT	132	9
4	BOT	133	0
4	BOT	134	0
4	SAR	110	0
4	SAR	130	0
4	SAR	131	2
4	SAR	132	7
4	SAR	133	0
4	SAR	134	0
\.


--
-- TOC entry 4883 (class 0 OID 16439)
-- Dependencies: 216
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.races (race_id, race_name) FROM stdin;
1	Bahrain
2	Saudi Arabia
3	Australia
4	Japan
5	China
6	United States Miami
7	Italy Emilia-Romagna
8	Monaco
9	Canada
10	Spain
11	Austria
12	Great Britain
13	Hungary
14	Belgium
15	Netherlands
16	Italy Monza
17	Azerbaijan
18	Singapore
19	United States Circuit Americas
20	Mexico
21	Brazil
22	United States Las Vegas
23	Qatar
24	Abu Dhabi
\.


--
-- TOC entry 4888 (class 0 OID 24609)
-- Dependencies: 221
-- Data for Name: teamcosts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teamcosts (team_id, team_cost) FROM stdin;
FER	21.2
HAA	7.7
AST	15
MCL	24
RBR	28.4
WIL	6.4
RB	8.6
MER	19.9
ALP	7.9
KIC	6
\.


--
-- TOC entry 4885 (class 0 OID 16454)
-- Dependencies: 218
-- Data for Name: teammetrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teammetrics (teammetric_id, teammetric_name) FROM stdin;
210	Qualifying Result
220	Sprint Result
230	Race Result
\.


--
-- TOC entry 4886 (class 0 OID 24580)
-- Dependencies: 219
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (team_id, team_name) FROM stdin;
ALP	ALPINE RENAULT
AST	ASTON MARTIN ARAMCO MERCEDES
FER	FERRARI
KIC	KICK SAUBER FERRARI
MCL	MCLAREN MERCEDES
MER	MERCEDES
RB	RB HONDA RBPT
RBR	RED BULL RACING HONDA RBPT
WIL	WILLIAMS MERCEDES
HAA	HAAS FERRARI
\.


--
-- TOC entry 4718 (class 2606 OID 16443)
-- Name: races Races_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT "Races_pkey" PRIMARY KEY (race_id);


--
-- TOC entry 4726 (class 2606 OID 24598)
-- Name: drivercosts drivercosts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivercosts
    ADD CONSTRAINT drivercosts_pkey PRIMARY KEY (driver_id);


--
-- TOC entry 4716 (class 2606 OID 24577)
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (driver_id);


--
-- TOC entry 4720 (class 2606 OID 16448)
-- Name: drivermetrics metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivermetrics
    ADD CONSTRAINT metrics_pkey PRIMARY KEY (drivermetric_id);


--
-- TOC entry 4728 (class 2606 OID 24615)
-- Name: teamcosts teamcosts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamcosts
    ADD CONSTRAINT teamcosts_pkey PRIMARY KEY (team_id);


--
-- TOC entry 4722 (class 2606 OID 16458)
-- Name: teammetrics teammetrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teammetrics
    ADD CONSTRAINT teammetrics_pkey PRIMARY KEY (teammetric_id);


--
-- TOC entry 4724 (class 2606 OID 24586)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- TOC entry 4729 (class 2606 OID 24599)
-- Name: drivercosts drivercosts_driver_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivercosts
    ADD CONSTRAINT drivercosts_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.drivers(driver_id);


--
-- TOC entry 4730 (class 2606 OID 24604)
-- Name: drivercosts fk_driver; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivercosts
    ADD CONSTRAINT fk_driver FOREIGN KEY (driver_id) REFERENCES public.drivers(driver_id) ON DELETE CASCADE;


--
-- TOC entry 4733 (class 2606 OID 24649)
-- Name: raceobservations fk_driver; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raceobservations
    ADD CONSTRAINT fk_driver FOREIGN KEY (driver_id) REFERENCES public.drivers(driver_id);


--
-- TOC entry 4734 (class 2606 OID 24654)
-- Name: raceobservations fk_drivermetric; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raceobservations
    ADD CONSTRAINT fk_drivermetric FOREIGN KEY (drivermetric_id) REFERENCES public.drivermetrics(drivermetric_id);


--
-- TOC entry 4735 (class 2606 OID 24644)
-- Name: raceobservations fk_race; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raceobservations
    ADD CONSTRAINT fk_race FOREIGN KEY (race_id) REFERENCES public.races(race_id);


--
-- TOC entry 4731 (class 2606 OID 24621)
-- Name: teamcosts fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamcosts
    ADD CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES public.teams(team_id) ON DELETE CASCADE;


--
-- TOC entry 4736 (class 2606 OID 24634)
-- Name: raceobservations raceobservations_driver_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raceobservations
    ADD CONSTRAINT raceobservations_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.drivers(driver_id);


--
-- TOC entry 4737 (class 2606 OID 24639)
-- Name: raceobservations raceobservations_drivermetric_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raceobservations
    ADD CONSTRAINT raceobservations_drivermetric_id_fkey FOREIGN KEY (drivermetric_id) REFERENCES public.drivermetrics(drivermetric_id);


--
-- TOC entry 4738 (class 2606 OID 24629)
-- Name: raceobservations raceobservations_race_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raceobservations
    ADD CONSTRAINT raceobservations_race_id_fkey FOREIGN KEY (race_id) REFERENCES public.races(race_id);


--
-- TOC entry 4732 (class 2606 OID 24616)
-- Name: teamcosts teamcosts_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamcosts
    ADD CONSTRAINT teamcosts_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


-- Completed on 2024-04-18 15:05:24

--
-- PostgreSQL database dump complete
--

