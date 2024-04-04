--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: earth_facts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth_facts (
    earth_facts_id integer NOT NULL,
    population integer,
    percent_water numeric,
    countries integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.earth_facts OWNER TO freecodecamp;

--
-- Name: earth_facts_earth_facts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_facts_earth_facts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_facts_earth_facts_id_seq OWNER TO freecodecamp;

--
-- Name: earth_facts_earth_facts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_facts_earth_facts_id_seq OWNED BY public.earth_facts.earth_facts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    distance_in_lightyears numeric,
    description text,
    galaxy_types text NOT NULL
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
    name character varying(255) NOT NULL,
    distance_from_planet_in_miles numeric,
    has_water boolean DEFAULT false,
    visited_by_humans boolean DEFAULT false,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    has_life boolean DEFAULT false,
    distance_from_sun_in_miles numeric,
    population integer,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer,
    visable_from_earth boolean DEFAULT false,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: earth_facts earth_facts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_facts ALTER COLUMN earth_facts_id SET DEFAULT nextval('public.earth_facts_earth_facts_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: earth_facts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth_facts VALUES (1, NULL, NULL, 1, 'usa');
INSERT INTO public.earth_facts VALUES (2, NULL, NULL, 1, 'mexico');
INSERT INTO public.earth_facts VALUES (3, NULL, NULL, 1, 'canada');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (2, 'milky way', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (3, 'star wars', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (4, 'star trek', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (5, 'your mom', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (6, 'neddle galaxy', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (7, 'ned', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (8, 'njd', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (9, 'njh', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (10, 'nhg', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (11, 'n1g', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (12, 'n1fdsg', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (13, 'n1fsdv', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (14, 'nfxdgnhv', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (15, 'nfxdgyfcgxhnxgtdfrhv', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (16, 'nfxdgjhafVXDWTFDygtfwytdsv', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (17, '687489678964', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (18, '687', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (19, '68', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (20, '6', NULL, NULL, 'single');
INSERT INTO public.galaxy VALUES (21, '6aswdgwqYUGD', NULL, NULL, 'single');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (18, 'a', NULL, false, false, 18);
INSERT INTO public.moon VALUES (19, 'b', NULL, false, false, 19);
INSERT INTO public.moon VALUES (20, 'f', NULL, false, false, 20);
INSERT INTO public.moon VALUES (21, 'g', NULL, false, false, 21);
INSERT INTO public.moon VALUES (23, 'd', NULL, false, false, 1);
INSERT INTO public.moon VALUES (25, 's', NULL, false, false, 1);
INSERT INTO public.moon VALUES (26, 'e', NULL, false, false, 1);
INSERT INTO public.moon VALUES (27, 'q', NULL, false, false, 1);
INSERT INTO public.moon VALUES (28, 't', NULL, false, false, 1);
INSERT INTO public.moon VALUES (29, 'j', NULL, false, false, 1);
INSERT INTO public.moon VALUES (31, 'er', NULL, false, false, 1);
INSERT INTO public.moon VALUES (32, 'err', NULL, false, false, 1);
INSERT INTO public.moon VALUES (33, 'errr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (34, 'errrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (35, 'errrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (36, 'errrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (37, 'errrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (38, 'errrrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (39, 'errrrrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (40, 'errrrrrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (41, 'errrrrrrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (42, 'errrrrrrrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (43, 'errrrrrrrrrrrr', NULL, false, false, 1);
INSERT INTO public.moon VALUES (44, 'errrrrrrrrrrrrr', NULL, false, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', false, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'venus', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Earth', true, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'mars', false, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', false, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'saturn', false, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, 'uranus', false, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'neptune', false, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'pluto', false, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'eadu', false, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'endor', false, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'exegol', false, NULL, NULL, 13);
INSERT INTO public.planet VALUES (15, 'jakku', false, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'jedha', false, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'ilum', false, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'lego', false, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 'hoth', false, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'naboo', false, NULL, NULL, 20);
INSERT INTO public.planet VALUES (21, 'nur', false, NULL, NULL, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'R Fornacis', NULL, false, NULL, 1);
INSERT INTO public.star VALUES (2, 'VV Cephei', NULL, false, NULL, 2);
INSERT INTO public.star VALUES (3, 'CM Velorum', NULL, false, NULL, 3);
INSERT INTO public.star VALUES (4, 'HD 126577', NULL, false, NULL, 4);
INSERT INTO public.star VALUES (5, 'CIT 11', NULL, false, NULL, 5);
INSERT INTO public.star VALUES (6, 'Ve 4-64', NULL, false, NULL, 6);
INSERT INTO public.star VALUES (8, 'Ve 455', NULL, false, NULL, 8);
INSERT INTO public.star VALUES (9, 'Ve 454', NULL, false, NULL, 9);
INSERT INTO public.star VALUES (10, 'Ve 453', NULL, false, NULL, 10);
INSERT INTO public.star VALUES (11, 'Ve 403', NULL, false, NULL, 11);
INSERT INTO public.star VALUES (12, 'Ve 4025', NULL, false, NULL, 12);
INSERT INTO public.star VALUES (13, 'Ve 40655', NULL, false, NULL, 13);
INSERT INTO public.star VALUES (15, 'Ve 4065', NULL, false, NULL, 15);
INSERT INTO public.star VALUES (16, 'Ve 4085', NULL, false, NULL, 16);
INSERT INTO public.star VALUES (17, 'Ve 4095', NULL, false, NULL, 17);
INSERT INTO public.star VALUES (18, 'Ve 4015', NULL, false, NULL, 18);
INSERT INTO public.star VALUES (19, 'Ve 40', NULL, false, NULL, 19);
INSERT INTO public.star VALUES (20, 'Ve 0', NULL, false, NULL, 20);
INSERT INTO public.star VALUES (21, 'Ve ', NULL, false, NULL, 21);


--
-- Name: earth_facts_earth_facts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_facts_earth_facts_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 44, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 23, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 22, true);


--
-- Name: earth_facts earth_facts_earth_facts_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_facts
    ADD CONSTRAINT earth_facts_earth_facts_id_key UNIQUE (earth_facts_id);


--
-- Name: earth_facts earth_facts_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_facts
    ADD CONSTRAINT earth_facts_name_key UNIQUE (name);


--
-- Name: earth_facts earth_facts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_facts
    ADD CONSTRAINT earth_facts_pkey PRIMARY KEY (earth_facts_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

