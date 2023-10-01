--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    main_composition text
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comets_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comets_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name text NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(30) NOT NULL,
    moon_name text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(30) NOT NULL,
    planet_name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comets_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Alpheratz');
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Sirrah');
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'Vega');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'Spica');
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Altair');
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Rigel');
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 'Casio');
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', 'Sars');
INSERT INTO public.galaxy VALUES (9, 'Cartwheel', 'Sosia');
INSERT INTO public.galaxy VALUES (10, 'Cartwheel', 'Wisper');
INSERT INTO public.galaxy VALUES (11, 'Sombrero', 'Jaguar');
INSERT INTO public.galaxy VALUES (12, 'Sombrero', 'Quetzal');
INSERT INTO public.galaxy VALUES (13, 'Cigar', 'Ozuma');
INSERT INTO public.galaxy VALUES (14, 'Cigar', 'Tayo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Strange');
INSERT INTO public.moon VALUES (4, 'Callisto');
INSERT INTO public.moon VALUES (5, 'Triton');
INSERT INTO public.moon VALUES (6, 'Oberon');
INSERT INTO public.moon VALUES (7, 'Europa');
INSERT INTO public.moon VALUES (8, 'Titan');
INSERT INTO public.moon VALUES (9, 'Dione');
INSERT INTO public.moon VALUES (24, 'Hercules');
INSERT INTO public.moon VALUES (25, 'Jinx');
INSERT INTO public.moon VALUES (26, 'Ying');
INSERT INTO public.moon VALUES (27, 'Yang');
INSERT INTO public.moon VALUES (28, 'Cog');
INSERT INTO public.moon VALUES (29, 'Garden');
INSERT INTO public.moon VALUES (30, 'Ionos');
INSERT INTO public.moon VALUES (31, 'Beach');
INSERT INTO public.moon VALUES (32, 'Poppo');
INSERT INTO public.moon VALUES (33, 'Blue');
INSERT INTO public.moon VALUES (34, 'Tara');
INSERT INTO public.moon VALUES (35, 'Domino');
INSERT INTO public.moon VALUES (36, 'Altlas');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Gorgon', 'Callisto');
INSERT INTO public.planet VALUES (4, 'Dune', 'Triton');
INSERT INTO public.planet VALUES (5, 'Ferah', 'Oberon');
INSERT INTO public.planet VALUES (6, 'Naiobi', 'Europa');
INSERT INTO public.planet VALUES (7, 'Jessup', 'Titan');
INSERT INTO public.planet VALUES (8, 'Nana', 'Dione');
INSERT INTO public.planet VALUES (1, 'Lost', 'Strange');
INSERT INTO public.planet VALUES (9, 'Leon', 'Hercules');
INSERT INTO public.planet VALUES (10, 'Leon', 'Jinx');
INSERT INTO public.planet VALUES (11, 'Rust', 'Ying');
INSERT INTO public.planet VALUES (12, 'Rust', 'Yang');
INSERT INTO public.planet VALUES (13, 'Piotr', 'Cog');
INSERT INTO public.planet VALUES (14, 'Piotr', 'Garden');
INSERT INTO public.planet VALUES (15, 'Talos', 'Ionos');
INSERT INTO public.planet VALUES (16, 'Dooly', 'Beach');
INSERT INTO public.planet VALUES (17, 'Flood', 'Poppo');
INSERT INTO public.planet VALUES (18, 'Tusk', 'Blue');
INSERT INTO public.planet VALUES (19, 'Bright', 'Tara');
INSERT INTO public.planet VALUES (20, 'Bright', 'Domino');
INSERT INTO public.planet VALUES (21, 'Bright', 'Altlas');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpheratz', 'Gorgon');
INSERT INTO public.star VALUES (3, 'Sirrah', 'Dune');
INSERT INTO public.star VALUES (4, 'Vega', 'Ferah');
INSERT INTO public.star VALUES (5, 'Spica', 'Naiobi');
INSERT INTO public.star VALUES (6, 'Altair', 'Jessup');
INSERT INTO public.star VALUES (7, 'Rigel', 'Nana');
INSERT INTO public.star VALUES (1, 'Alpheratz', 'Lost');
INSERT INTO public.star VALUES (8, 'Casio', 'Leon');
INSERT INTO public.star VALUES (9, 'Sars', 'Rust');
INSERT INTO public.star VALUES (10, 'Sosia', 'Piotr');
INSERT INTO public.star VALUES (11, 'Wisper', 'Talos');
INSERT INTO public.star VALUES (12, 'Jaguar', 'Dooly');
INSERT INTO public.star VALUES (13, 'Quetzal', 'Flood');
INSERT INTO public.star VALUES (14, 'Ozuma', 'Tusk');
INSERT INTO public.star VALUES (15, 'Tayo', 'Bright');


--
-- Name: comets_comets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comets_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: comets comets_comets_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_comets_id_key UNIQUE (comets_id);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_name_key UNIQUE (star_name);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_name_key UNIQUE (moon_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_fkey FOREIGN KEY (moon_name) REFERENCES public.planet(moon_name);


--
-- Name: planet planet_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.star(planet_name);


--
-- Name: star star_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.galaxy(star_name);


--
-- PostgreSQL database dump complete
--

