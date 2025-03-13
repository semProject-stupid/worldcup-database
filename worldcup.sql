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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 470, 471, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 472, 473, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 471, 473, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 470, 472, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 471, 474, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 473, 475, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 472, 476, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 470, 477, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 473, 478, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 475, 479, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 472, 480, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 476, 481, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 471, 482, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 474, 483, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 477, 484, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 470, 485, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 486, 485, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 487, 476, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 485, 487, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 486, 476, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 487, 488, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 485, 472, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 476, 478, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 486, 470, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 476, 489, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 478, 477, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 470, 490, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 486, 491, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 487, 481, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 488, 492, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 485, 479, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 472, 493, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (470, 'France');
INSERT INTO public.teams VALUES (471, 'Croatia');
INSERT INTO public.teams VALUES (472, 'Belgium');
INSERT INTO public.teams VALUES (473, 'England');
INSERT INTO public.teams VALUES (474, 'Russia');
INSERT INTO public.teams VALUES (475, 'Sweden');
INSERT INTO public.teams VALUES (476, 'Brazil');
INSERT INTO public.teams VALUES (477, 'Uruguay');
INSERT INTO public.teams VALUES (478, 'Colombia');
INSERT INTO public.teams VALUES (479, 'Switzerland');
INSERT INTO public.teams VALUES (480, 'Japan');
INSERT INTO public.teams VALUES (481, 'Mexico');
INSERT INTO public.teams VALUES (482, 'Denmark');
INSERT INTO public.teams VALUES (483, 'Spain');
INSERT INTO public.teams VALUES (484, 'Portugal');
INSERT INTO public.teams VALUES (485, 'Argentina');
INSERT INTO public.teams VALUES (486, 'Germany');
INSERT INTO public.teams VALUES (487, 'Netherlands');
INSERT INTO public.teams VALUES (488, 'Costa Rica');
INSERT INTO public.teams VALUES (489, 'Chile');
INSERT INTO public.teams VALUES (490, 'Nigeria');
INSERT INTO public.teams VALUES (491, 'Algeria');
INSERT INTO public.teams VALUES (492, 'Greece');
INSERT INTO public.teams VALUES (493, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 493, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

