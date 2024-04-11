--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-11 15:08:47

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
    driver_id integer NOT NULL,
    driver_code character varying(3) NOT NULL,
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
-- TOC entry 219 (class 1259 OID 16454)
-- Name: teammetrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teammetrics (
    teammetric_id integer NOT NULL,
    teammetric_name character varying(50)
);


ALTER TABLE public.teammetrics OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16449)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    team_name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 4704 (class 2606 OID 16438)
-- Name: drivers Drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT "Drivers_pkey" PRIMARY KEY (driver_id);


--
-- TOC entry 4706 (class 2606 OID 16443)
-- Name: races Races_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT "Races_pkey" PRIMARY KEY (race_id);


--
-- TOC entry 4708 (class 2606 OID 16448)
-- Name: drivermetrics metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivermetrics
    ADD CONSTRAINT metrics_pkey PRIMARY KEY (drivermetric_id);


--
-- TOC entry 4712 (class 2606 OID 16458)
-- Name: teammetrics teammetrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teammetrics
    ADD CONSTRAINT teammetrics_pkey PRIMARY KEY (teammetric_id);


--
-- TOC entry 4710 (class 2606 OID 16453)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


-- Completed on 2024-04-11 15:08:47

--
-- PostgreSQL database dump complete
--

