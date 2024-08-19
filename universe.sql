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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    importance integer,
    life_forms integer,
    description text NOT NULL,
    description_ext text NOT NULL
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
    name character varying(30),
    importance integer,
    life_forms integer,
    planet_id integer,
    description text NOT NULL,
    description_ext text NOT NULL
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
    name character varying(30),
    importance integer,
    life_forms integer,
    radius numeric(6,2),
    greek_name text,
    has_life boolean,
    has_water boolean,
    star_id integer,
    description text NOT NULL,
    description_ext text NOT NULL
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
    name character varying(30),
    importance integer,
    life_forms integer,
    galaxy_id integer,
    description text NOT NULL,
    description_ext text NOT NULL
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
-- Name: telescope; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.telescope (
    name character varying(30),
    telescope_id integer NOT NULL,
    telescope_desc text NOT NULL,
    description_ext text NOT NULL
);


ALTER TABLE public.telescope OWNER TO freecodecamp;

--
-- Name: telescopes_telescope_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.telescopes_telescope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telescopes_telescope_id_seq OWNER TO freecodecamp;

--
-- Name: telescopes_telescope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.telescopes_telescope_id_seq OWNED BY public.telescope.telescope_id;


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
-- Name: telescope telescope_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope ALTER COLUMN telescope_id SET DEFAULT nextval('public.telescopes_telescope_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, 'desc', 'desc_ext');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, 'desc', 'desc_ext');
INSERT INTO public.galaxy VALUES (3, 'Weird Galaxy', NULL, NULL, 'desc', 'desc_ext');
INSERT INTO public.galaxy VALUES (4, 'Weird Galaxy 2', NULL, NULL, 'desc', 'desc_ext');
INSERT INTO public.galaxy VALUES (5, 'Weird Galaxy 3', NULL, NULL, 'desc', 'desc_ext');
INSERT INTO public.galaxy VALUES (6, 'Weird Galaxy 4', NULL, NULL, 'desc', 'desc_ext');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Weird Moon', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (2, 'Weird Moon 2', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (3, 'Weird Moon 3', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (4, 'Weird Moon 4', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (5, 'Weird Moon 5', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (6, 'Weird Moon 6', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (7, 'Weird Moon 7', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (8, 'Weird Moon 8', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (9, 'Weird Moon 9', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (10, 'Weird Moon 10', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (11, 'Weird Moon 11', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (12, 'Weird Moon 12', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (13, 'Weird Moon 13', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (14, 'Weird Moon 14', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (15, 'Weird Moon 15', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (16, 'Weird Moon 16', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (17, 'Weird Moon 17', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (18, 'Weird Moon 18', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (19, 'Weird Moon 19', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (20, 'Weird Moon 20', NULL, NULL, 13, 'desc', 'desc_ext');
INSERT INTO public.moon VALUES (21, 'Weird Moon 21', NULL, NULL, 13, 'desc', 'desc_ext');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Weird Planet', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (5, 'Weird Planet 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (6, 'Weird Planet 3', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (7, 'Weird Planet 4', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (8, 'Weird Planet 5', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (9, 'Weird Planet 6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (10, 'Weird Planet 7', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (11, 'Weird Planet 8', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (12, 'Weird Planet 9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (13, 'Earth', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (14, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.planet VALUES (15, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'desc', 'desc_ext');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, 1, 'desc', 'desc_ext');
INSERT INTO public.star VALUES (2, 'Andromeda Sun', NULL, NULL, 2, 'desc', 'desc_ext');
INSERT INTO public.star VALUES (3, 'Weird Galaxy Sun', NULL, NULL, 3, 'desc', 'desc_ext');
INSERT INTO public.star VALUES (4, 'Weird Galaxy Sun 2', NULL, NULL, 4, 'desc', 'desc_ext');
INSERT INTO public.star VALUES (5, 'Weird Galaxy Sun 3', NULL, NULL, 5, 'desc', 'desc_ext');
INSERT INTO public.star VALUES (6, 'Weird Galaxy Sun 4', NULL, NULL, 6, 'desc', 'desc_ext');


--
-- Data for Name: telescope; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.telescope VALUES ('Hoob', 1, 'desc', 'desc_ext');
INSERT INTO public.telescope VALUES ('Baab', 2, 'desc', 'desc_ext');
INSERT INTO public.telescope VALUES ('Daag', 3, 'desc', 'desc_ext');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: telescopes_telescope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.telescopes_telescope_id_seq', 3, true);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: telescope telescopes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescopes_pkey PRIMARY KEY (telescope_id);


--
-- Name: telescope telescopes_telescope_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescopes_telescope_id_key UNIQUE (telescope_id);


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

