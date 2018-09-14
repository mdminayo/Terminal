--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-09-14 04:10:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 52947)
-- Name: accionista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE accionista (
    cedula character varying,
    nombres character varying,
    apellidos character varying,
    cantidadacciones bigint,
    telefono character varying,
    email character varying,
    numerofolio character varying,
    usuario character varying
);


ALTER TABLE accionista OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 52979)
-- Name: formato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE formato (
    id integer NOT NULL,
    nombre character varying,
    descripcion character varying,
    archivo character varying
);


ALTER TABLE formato OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 52977)
-- Name: formato_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE formato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE formato_id_seq OWNER TO postgres;

--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 191
-- Name: formato_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE formato_id_seq OWNED BY formato.id;


--
-- TOC entry 190 (class 1259 OID 52970)
-- Name: reunion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reunion (
    id integer NOT NULL,
    fecha date,
    hora time with time zone,
    lugar character varying,
    objetivo character varying
);


ALTER TABLE reunion OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 52968)
-- Name: reunion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reunion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reunion_id_seq OWNER TO postgres;

--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 189
-- Name: reunion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE reunion_id_seq OWNED BY reunion.id;


--
-- TOC entry 186 (class 1259 OID 52953)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    usuario character varying,
    clave character varying,
    perfil character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 52961)
-- Name: utilidadneta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE utilidadneta (
    anio character varying,
    utilidad character varying,
    numeroacta integer NOT NULL,
    archivo character varying
);


ALTER TABLE utilidadneta OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 52959)
-- Name: utilidadneta_numeroacta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE utilidadneta_numeroacta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utilidadneta_numeroacta_seq OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 187
-- Name: utilidadneta_numeroacta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE utilidadneta_numeroacta_seq OWNED BY utilidadneta.numeroacta;


--
-- TOC entry 2028 (class 2604 OID 52982)
-- Name: formato id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY formato ALTER COLUMN id SET DEFAULT nextval('formato_id_seq'::regclass);


--
-- TOC entry 2027 (class 2604 OID 52973)
-- Name: reunion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reunion ALTER COLUMN id SET DEFAULT nextval('reunion_id_seq'::regclass);


--
-- TOC entry 2026 (class 2604 OID 52964)
-- Name: utilidadneta numeroacta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY utilidadneta ALTER COLUMN numeroacta SET DEFAULT nextval('utilidadneta_numeroacta_seq'::regclass);


--
-- TOC entry 2146 (class 0 OID 52947)
-- Dependencies: 185
-- Data for Name: accionista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY accionista (cedula, nombres, apellidos, cantidadacciones, telefono, email, numerofolio, usuario) FROM stdin;
null	Danilo	Minayo	5000	null	null	1	dani1
null	sofia	solarte	2000	723	sofia@gmail.com	2	sofi
36756125	Angelica	Tutalcha	50	7298050	yudi@gmail.com	1	yuantucha
\.


--
-- TOC entry 2153 (class 0 OID 52979)
-- Dependencies: 192
-- Data for Name: formato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY formato (id, nombre, descripcion, archivo) FROM stdin;
1	Registro	sirve para iniciar	Formato1.pdf
2	formato2	prueba	Captura.jpg
\.


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 191
-- Name: formato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('formato_id_seq', 2, true);


--
-- TOC entry 2151 (class 0 OID 52970)
-- Dependencies: 190
-- Data for Name: reunion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reunion (id, fecha, hora, lugar, objetivo) FROM stdin;
1	2018-09-15	00:12:00-05	pastp	disfrutar
2	2018-09-15	23:11:00-05	Pasto	amor y amistad
\.


--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 189
-- Name: reunion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reunion_id_seq', 2, true);


--
-- TOC entry 2147 (class 0 OID 52953)
-- Dependencies: 186
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (usuario, clave, perfil) FROM stdin;
admin	123	S
danilo	123	A
dan	1234	A
dani1	1234	A
sofi	789	A
yuantucha	123	A
revisor	123	R
\.


--
-- TOC entry 2149 (class 0 OID 52961)
-- Dependencies: 188
-- Data for Name: utilidadneta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY utilidadneta (anio, utilidad, numeroacta, archivo) FROM stdin;
2018	40	1234	
\.


--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 187
-- Name: utilidadneta_numeroacta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('utilidadneta_numeroacta_seq', 1, false);


-- Completed on 2018-09-14 04:10:27

--
-- PostgreSQL database dump complete
--

