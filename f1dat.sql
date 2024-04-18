--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-18 12:30:46

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
-- TOC entry 4877 (class 0 OID 24592)
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
-- TOC entry 4874 (class 0 OID 16444)
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
-- TOC entry 4872 (class 0 OID 16434)
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
-- TOC entry 4873 (class 0 OID 16439)
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
-- TOC entry 4878 (class 0 OID 24609)
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
-- TOC entry 4875 (class 0 OID 16454)
-- Dependencies: 218
-- Data for Name: teammetrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teammetrics (teammetric_id, teammetric_name) FROM stdin;
210	Qualifying Result
220	Sprint Result
230	Race Result
\.


--
-- TOC entry 4876 (class 0 OID 24580)
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
-- TOC entry 4714 (class 2606 OID 16443)
-- Name: races Races_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT "Races_pkey" PRIMARY KEY (race_id);


--
-- TOC entry 4722 (class 2606 OID 24598)
-- Name: drivercosts drivercosts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivercosts
    ADD CONSTRAINT drivercosts_pkey PRIMARY KEY (driver_id);


--
-- TOC entry 4712 (class 2606 OID 24577)
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (driver_id);


--
-- TOC entry 4716 (class 2606 OID 16448)
-- Name: drivermetrics metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivermetrics
    ADD CONSTRAINT metrics_pkey PRIMARY KEY (drivermetric_id);


--
-- TOC entry 4724 (class 2606 OID 24615)
-- Name: teamcosts teamcosts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamcosts
    ADD CONSTRAINT teamcosts_pkey PRIMARY KEY (team_id);


--
-- TOC entry 4718 (class 2606 OID 16458)
-- Name: teammetrics teammetrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teammetrics
    ADD CONSTRAINT teammetrics_pkey PRIMARY KEY (teammetric_id);


--
-- TOC entry 4720 (class 2606 OID 24586)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- TOC entry 4725 (class 2606 OID 24599)
-- Name: drivercosts drivercosts_driver_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivercosts
    ADD CONSTRAINT drivercosts_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.drivers(driver_id);


--
-- TOC entry 4726 (class 2606 OID 24604)
-- Name: drivercosts fk_driver; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivercosts
    ADD CONSTRAINT fk_driver FOREIGN KEY (driver_id) REFERENCES public.drivers(driver_id) ON DELETE CASCADE;


--
-- TOC entry 4727 (class 2606 OID 24621)
-- Name: teamcosts fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamcosts
    ADD CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES public.teams(team_id) ON DELETE CASCADE;


--
-- TOC entry 4728 (class 2606 OID 24616)
-- Name: teamcosts teamcosts_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamcosts
    ADD CONSTRAINT teamcosts_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


-- Completed on 2024-04-18 12:30:46

--
-- PostgreSQL database dump complete
--

