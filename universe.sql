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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_panet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_panet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_panet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_panet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_panet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_panet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', 120000, 100000, 13.51, 'Gas and Dust', false, true);
INSERT INTO public.galaxy VALUES (2, 2, 'Andromeda', 140000, 125000, 10.00, 'Gas and Dust', false, true);
INSERT INTO public.galaxy VALUES (3, 3, 'Triangulum', 60000, 50000, 5.00, 'Gas and Dust', false, false);
INSERT INTO public.galaxy VALUES (4, 4, 'Whirlpool', 110000, 90000, 8.50, 'Gas and Dust', false, true);
INSERT INTO public.galaxy VALUES (5, 5, 'Pinwheel', 100000, 85000, 7.00, 'Gas and Dust', false, false);
INSERT INTO public.galaxy VALUES (6, 6, 'Sombrero', 80000, 70000, 9.00, 'Gas and Dust', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 37900, 21990, 4.51, 'Rock', false, true);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 1548, 575, 4.50, 'Rock', false, false);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 987, 147, 4.50, 'Rock', false, false);
INSERT INTO public.moon VALUES (4, 5, 'Io', 43200, 2532, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (5, 5, 'Europa', 30900, 1550, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 8700, 5262, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 7320, 2410, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (8, 6, 'Titan', 8300, 4280, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (9, 6, 'Enceladus', 5040, 230, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (10, 6, 'Tethys', 3460, 716, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (11, 7, 'Oberon', 3000, 760, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (12, 7, 'Titania', 3800, 850, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (13, 8, 'Triton', 3500, 800, 4.50, 'Rock', false, true);
INSERT INTO public.moon VALUES (14, 9, 'Moon1', 1500, 500, 3.50, 'Ice', false, true);
INSERT INTO public.moon VALUES (15, 9, 'Moon2', 1000, 300, 3.50, 'Ice', false, true);
INSERT INTO public.moon VALUES (16, 10, 'Moon3', 2000, 700, 3.00, 'Ice', false, true);
INSERT INTO public.moon VALUES (17, 10, 'Moon4', 2500, 800, 3.00, 'Ice', false, true);
INSERT INTO public.moon VALUES (18, 11, 'Moon5', 3000, 1000, 2.50, 'Ice', false, true);
INSERT INTO public.moon VALUES (19, 12, 'Moon6', 3500, 1200, 2.50, 'Ice', false, true);
INSERT INTO public.moon VALUES (20, 12, 'Moon7', 1000, 500, 2.00, 'Ice', false, false);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'Milky Way', 'A barred spiral galaxy containing our Solar System');
INSERT INTO public.more_info VALUES (2, 2, 'Andromeda', 'The nearest major galaxy to the Milky Way');
INSERT INTO public.more_info VALUES (3, 3, 'Sol', 'The Sun, the star at the center of our Solar System');
INSERT INTO public.more_info VALUES (4, 4, 'Earth', 'The only known planet to support life');
INSERT INTO public.more_info VALUES (5, 5, 'Europa', 'One of Jupiter’s moons with a possible subsurface ocean');
INSERT INTO public.more_info VALUES (6, 6, 'Titan', 'The largest moon of Saturn and a candidate for extraterrestrial life');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'Earth', 510072, 1083206, 4.54, 'Rock', true, true);
INSERT INTO public.planet VALUES (2, 1, 2, 'Mars', 144798, 163116, 4.60, 'Rock', false, true);
INSERT INTO public.planet VALUES (3, 1, 3, 'Venus', 460234, 928416, 4.58, 'Rock', false, false);
INSERT INTO public.planet VALUES (4, 1, 4, 'Mercury', 74800, 60828, 4.59, 'Rock', false, false);
INSERT INTO public.planet VALUES (5, 2, 5, 'Jupiter', 61419000, 1431280, 4.56, 'Gas', false, true);
INSERT INTO public.planet VALUES (6, 2, 6, 'Saturn', 42700000, 827130, 4.56, 'Gas', false, true);
INSERT INTO public.planet VALUES (7, 3, 7, 'Uranus', 8083000, 68330, 4.50, 'Gas', false, true);
INSERT INTO public.planet VALUES (8, 3, 8, 'Neptune', 7618000, 62220, 4.50, 'Gas', false, true);
INSERT INTO public.planet VALUES (9, 4, 9, 'Kepler-22b', 120000, 800, 6.00, 'Rock', true, true);
INSERT INTO public.planet VALUES (10, 5, 10, 'Proxima b', 80000, 500, 5.00, 'Rock', true, true);
INSERT INTO public.planet VALUES (11, 6, 11, 'Gliese 581g', 70000, 300, 4.00, 'Rock', true, true);
INSERT INTO public.planet VALUES (12, 6, 12, 'Trappist-1e', 60000, 250, 3.00, 'Rock', true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'Sol', 432000, 1412000, 4.57, 'Hydrogen and Helium', false, false);
INSERT INTO public.star VALUES (2, 1, 2, 'Alpha Centauri', 380000, 1283000, 5.50, 'Hydrogen and Helium', false, false);
INSERT INTO public.star VALUES (3, 2, 3, 'Betelgeuse', 700000, 1230000, 10.00, 'Hydrogen and Helium', false, false);
INSERT INTO public.star VALUES (4, 2, 4, 'Rigel', 590000, 1200000, 8.00, 'Hydrogen and Helium', false, false);
INSERT INTO public.star VALUES (5, 3, 5, 'Sirius', 450000, 1330000, 6.00, 'Hydrogen and Helium', false, false);
INSERT INTO public.star VALUES (6, 3, 6, 'Vega', 480000, 1350000, 7.00, 'Hydrogen and Helium', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 6, true);


--
-- Name: planet_panet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_panet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

