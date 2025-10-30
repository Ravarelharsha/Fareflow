--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2025-10-30 17:51:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 24799)
-- Name: bus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus (
    busid integer NOT NULL,
    busnumber integer
);


ALTER TABLE public.bus OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24738)
-- Name: card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card (
    cardid integer NOT NULL,
    name character varying(100),
    cardnumber character varying(50),
    cvv integer,
    expireddate date,
    userid integer
);


ALTER TABLE public.card OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24780)
-- Name: helpcenter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.helpcenter (
    questionid integer NOT NULL,
    question text,
    answer text,
    createdby character varying(100),
    dateadded date
);


ALTER TABLE public.helpcenter OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24814)
-- Name: history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.history (
    historyid integer NOT NULL,
    trackid integer,
    route character varying(100),
    departingtime time without time zone,
    arrivingtime time without time zone,
    date date,
    fare double precision,
    userid integer
);


ALTER TABLE public.history OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24768)
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    notificationid integer NOT NULL,
    userid integer,
    category character varying(50),
    message text,
    dateadded date
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24723)
-- Name: passenger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.passenger (
    userid integer NOT NULL,
    fullname character varying(100),
    birthdate date,
    email character varying(100),
    phone character varying(20),
    city character varying(100),
    province character varying(100)
);


ALTER TABLE public.passenger OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24829)
-- Name: passenger_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.passenger ALTER COLUMN userid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.passenger_userid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 24804)
-- Name: route; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.route (
    routeid integer NOT NULL,
    busid integer,
    routename character varying(100),
    departuretime time without time zone,
    busnumber integer
);


ALTER TABLE public.route OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24748)
-- Name: topup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topup (
    topupid integer NOT NULL,
    userid integer,
    walletid integer,
    amount integer,
    method character varying(50),
    status boolean,
    topupdate date,
    cardid integer
);


ALTER TABLE public.topup OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24787)
-- Name: track; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.track (
    trackid integer NOT NULL,
    busnumber character varying(20),
    startingpoint character varying(100),
    destination character varying(100),
    gpspoint text,
    fareamount integer,
    starttimestamp time without time zone,
    endtimestamp time without time zone,
    routename character varying(100)
);


ALTER TABLE public.track OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24728)
-- Name: wallet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wallet (
    walletid integer NOT NULL,
    userid integer,
    balance integer
);


ALTER TABLE public.wallet OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 24799)
-- Dependencies: 224
-- Data for Name: bus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus (busid, busnumber) FROM stdin;
\.


--
-- TOC entry 4907 (class 0 OID 24738)
-- Dependencies: 219
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card (cardid, name, cardnumber, cvv, expireddate, userid) FROM stdin;
\.


--
-- TOC entry 4910 (class 0 OID 24780)
-- Dependencies: 222
-- Data for Name: helpcenter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.helpcenter (questionid, question, answer, createdby, dateadded) FROM stdin;
\.


--
-- TOC entry 4914 (class 0 OID 24814)
-- Dependencies: 226
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.history (historyid, trackid, route, departingtime, arrivingtime, date, fare, userid) FROM stdin;
\.


--
-- TOC entry 4909 (class 0 OID 24768)
-- Dependencies: 221
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification (notificationid, userid, category, message, dateadded) FROM stdin;
\.


--
-- TOC entry 4905 (class 0 OID 24723)
-- Dependencies: 217
-- Data for Name: passenger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passenger (userid, fullname, birthdate, email, phone, city, province) FROM stdin;
1	Alice John	2004-11-06	aliceJ@gmail.com	081520735	Surabaya	Jawa Timur
\.


--
-- TOC entry 4913 (class 0 OID 24804)
-- Dependencies: 225
-- Data for Name: route; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.route (routeid, busid, routename, departuretime, busnumber) FROM stdin;
\.


--
-- TOC entry 4908 (class 0 OID 24748)
-- Dependencies: 220
-- Data for Name: topup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.topup (topupid, userid, walletid, amount, method, status, topupdate, cardid) FROM stdin;
\.


--
-- TOC entry 4911 (class 0 OID 24787)
-- Dependencies: 223
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.track (trackid, busnumber, startingpoint, destination, gpspoint, fareamount, starttimestamp, endtimestamp, routename) FROM stdin;
\.


--
-- TOC entry 4906 (class 0 OID 24728)
-- Dependencies: 218
-- Data for Name: wallet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wallet (walletid, userid, balance) FROM stdin;
\.


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 227
-- Name: passenger_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.passenger_userid_seq', 1, true);


--
-- TOC entry 4746 (class 2606 OID 24803)
-- Name: bus bus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus
    ADD CONSTRAINT bus_pkey PRIMARY KEY (busid);


--
-- TOC entry 4736 (class 2606 OID 24742)
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (cardid);


--
-- TOC entry 4742 (class 2606 OID 24786)
-- Name: helpcenter helpcenter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.helpcenter
    ADD CONSTRAINT helpcenter_pkey PRIMARY KEY (questionid);


--
-- TOC entry 4750 (class 2606 OID 24818)
-- Name: history history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (historyid);


--
-- TOC entry 4740 (class 2606 OID 24774)
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notificationid);


--
-- TOC entry 4732 (class 2606 OID 24727)
-- Name: passenger passenger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (userid);


--
-- TOC entry 4748 (class 2606 OID 24808)
-- Name: route route_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_pkey PRIMARY KEY (routeid);


--
-- TOC entry 4738 (class 2606 OID 24752)
-- Name: topup topup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topup
    ADD CONSTRAINT topup_pkey PRIMARY KEY (topupid);


--
-- TOC entry 4744 (class 2606 OID 24793)
-- Name: track track_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (trackid);


--
-- TOC entry 4734 (class 2606 OID 24732)
-- Name: wallet wallet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT wallet_pkey PRIMARY KEY (walletid);


--
-- TOC entry 4752 (class 2606 OID 24743)
-- Name: card card_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_userid_fkey FOREIGN KEY (userid) REFERENCES public.passenger(userid);


--
-- TOC entry 4758 (class 2606 OID 24819)
-- Name: history history_trackid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_trackid_fkey FOREIGN KEY (trackid) REFERENCES public.track(trackid);


--
-- TOC entry 4759 (class 2606 OID 24824)
-- Name: history history_userID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT "history_userID" FOREIGN KEY (userid) REFERENCES public.passenger(userid) NOT VALID;


--
-- TOC entry 4756 (class 2606 OID 24775)
-- Name: notification notification_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_userid_fkey FOREIGN KEY (userid) REFERENCES public.passenger(userid);


--
-- TOC entry 4757 (class 2606 OID 24809)
-- Name: route route_busid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_busid_fkey FOREIGN KEY (busid) REFERENCES public.bus(busid);


--
-- TOC entry 4753 (class 2606 OID 24763)
-- Name: topup topup_cardid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topup
    ADD CONSTRAINT topup_cardid_fkey FOREIGN KEY (cardid) REFERENCES public.card(cardid);


--
-- TOC entry 4754 (class 2606 OID 24753)
-- Name: topup topup_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topup
    ADD CONSTRAINT topup_userid_fkey FOREIGN KEY (userid) REFERENCES public.passenger(userid);


--
-- TOC entry 4755 (class 2606 OID 24758)
-- Name: topup topup_walletid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topup
    ADD CONSTRAINT topup_walletid_fkey FOREIGN KEY (walletid) REFERENCES public.wallet(walletid);


--
-- TOC entry 4751 (class 2606 OID 24733)
-- Name: wallet wallet_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT wallet_userid_fkey FOREIGN KEY (userid) REFERENCES public.passenger(userid);


-- Completed on 2025-10-30 17:51:04

--
-- PostgreSQL database dump complete
--

