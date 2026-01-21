--
-- PostgreSQL database dump
--

\restrict kGk9qvoCb3IL6b2yNLTDz4akQh4h3pcPqlOz2wgvvgZC8AuOd5BcEnWlSLze2m3

-- Dumped from database version 15.15 (Debian 15.15-0+deb12u1)
-- Dumped by pg_dump version 15.15 (Debian 15.15-0+deb12u1)

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_record_views; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.active_record_views (
    name text NOT NULL,
    class_name text NOT NULL,
    checksum text NOT NULL,
    options json DEFAULT '{}'::json NOT NULL,
    refreshed_at timestamp without time zone
);


ALTER TABLE public.active_record_views OWNER TO "feuerwehrsport-statistik";

--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    role character varying(200) DEFAULT 'user'::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    login_id integer NOT NULL
);


ALTER TABLE public.admin_users OWNER TO "feuerwehrsport-statistik";

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: api_users; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.api_users (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    email_address character varying(200),
    ip_address_hash character varying(200) NOT NULL,
    user_agent_hash character varying(200) NOT NULL,
    user_agent_meta character varying(1000),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.api_users OWNER TO "feuerwehrsport-statistik";

--
-- Name: api_users_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.api_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_users_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: api_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.api_users_id_seq OWNED BY public.api_users.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "feuerwehrsport-statistik";

--
-- Name: bla_badges; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.bla_badges (
    id integer NOT NULL,
    person_id integer NOT NULL,
    status character varying(200) NOT NULL,
    year integer NOT NULL,
    hl_time integer,
    hl_score_id integer,
    hb_time integer NOT NULL,
    hb_score_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.bla_badges OWNER TO "feuerwehrsport-statistik";

--
-- Name: bla_badges_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.bla_badges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bla_badges_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: bla_badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.bla_badges_id_seq OWNED BY public.bla_badges.id;


--
-- Name: change_logs; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.change_logs (
    id integer NOT NULL,
    admin_user_id integer,
    api_user_id integer,
    model_class character varying NOT NULL,
    content json NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    action character varying NOT NULL
);


ALTER TABLE public.change_logs OWNER TO "feuerwehrsport-statistik";

--
-- Name: change_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.change_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_logs_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: change_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.change_logs_id_seq OWNED BY public.change_logs.id;


--
-- Name: change_requests; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.change_requests (
    id integer NOT NULL,
    api_user_id integer,
    admin_user_id integer,
    content json NOT NULL,
    done_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    files_data json DEFAULT '{}'::json
);


ALTER TABLE public.change_requests OWNER TO "feuerwehrsport-statistik";

--
-- Name: change_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.change_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_requests_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: change_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.change_requests_id_seq OWNED BY public.change_requests.id;


--
-- Name: competition_files; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.competition_files (
    id integer NOT NULL,
    competition_id integer NOT NULL,
    file character varying NOT NULL,
    keys_string character varying(200),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.competition_files OWNER TO "feuerwehrsport-statistik";

--
-- Name: competition_files_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.competition_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.competition_files_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: competition_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.competition_files_id_seq OWNED BY public.competition_files.id;


--
-- Name: group_score_categories; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.group_score_categories (
    id integer NOT NULL,
    group_score_type_id integer NOT NULL,
    competition_id integer NOT NULL,
    name character varying(200) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.group_score_categories OWNER TO "feuerwehrsport-statistik";

--
-- Name: group_scores; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.group_scores (
    id integer NOT NULL,
    team_id integer NOT NULL,
    team_number integer DEFAULT 0 NOT NULL,
    gender integer NOT NULL,
    "time" integer NOT NULL,
    group_score_category_id integer NOT NULL,
    run character varying(1),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.group_scores OWNER TO "feuerwehrsport-statistik";

--
-- Name: people; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.people (
    id integer NOT NULL,
    last_name character varying(200) NOT NULL,
    first_name character varying(200) NOT NULL,
    gender integer NOT NULL,
    nation_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    hb_count integer DEFAULT 0 NOT NULL,
    hl_count integer DEFAULT 0 NOT NULL,
    la_count integer DEFAULT 0 NOT NULL,
    fs_count integer DEFAULT 0 NOT NULL,
    gs_count integer DEFAULT 0 NOT NULL,
    best_scores jsonb DEFAULT '{}'::jsonb,
    ignore_bla_untill_year integer
);


ALTER TABLE public.people OWNER TO "feuerwehrsport-statistik";

--
-- Name: scores; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.scores (
    id integer NOT NULL,
    person_id integer NOT NULL,
    competition_id integer NOT NULL,
    "time" integer NOT NULL,
    team_id integer,
    team_number integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    single_discipline_id bigint NOT NULL
);


ALTER TABLE public.scores OWNER TO "feuerwehrsport-statistik";

--
-- Name: competition_team_numbers; Type: VIEW; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE VIEW public.competition_team_numbers AS
 SELECT group_scores.team_id,
    group_scores.team_number,
    group_scores.gender,
    group_score_categories.competition_id
   FROM (public.group_scores
     JOIN public.group_score_categories ON ((group_score_categories.id = group_scores.group_score_category_id)))
  WHERE (group_scores.team_number > 0)
UNION
 SELECT scores.team_id,
    scores.team_number,
    people.gender,
    scores.competition_id
   FROM (public.scores
     JOIN public.people ON ((people.id = scores.person_id)))
  WHERE ((scores.team_number > 0) AND (scores.team_id IS NOT NULL));


ALTER TABLE public.competition_team_numbers OWNER TO "feuerwehrsport-statistik";

--
-- Name: competitions; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.competitions (
    id integer NOT NULL,
    name character varying(200),
    place_id integer NOT NULL,
    event_id integer NOT NULL,
    score_type_id integer,
    date date NOT NULL,
    published_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    hint_content text,
    hl_female integer DEFAULT 0 NOT NULL,
    hl_male integer DEFAULT 0 NOT NULL,
    hb_female integer DEFAULT 0 NOT NULL,
    hb_male integer DEFAULT 0 NOT NULL,
    gs integer DEFAULT 0 NOT NULL,
    fs_female integer DEFAULT 0 NOT NULL,
    fs_male integer DEFAULT 0 NOT NULL,
    la_female integer DEFAULT 0 NOT NULL,
    la_male integer DEFAULT 0 NOT NULL,
    teams_count integer DEFAULT 0 NOT NULL,
    people_count integer DEFAULT 0 NOT NULL,
    long_name character varying(200),
    hb_male_for_bla_badge boolean DEFAULT false NOT NULL,
    hl_male_for_bla_badge boolean DEFAULT false NOT NULL,
    hb_female_for_bla_badge boolean DEFAULT false NOT NULL,
    hl_female_for_bla_badge boolean DEFAULT false NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.competitions OWNER TO "feuerwehrsport-statistik";

--
-- Name: competitions_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.competitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.competitions_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: competitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.competitions_id_seq OWNED BY public.competitions.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.delayed_jobs (
    id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    handler text NOT NULL,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    queue character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.delayed_jobs OWNER TO "feuerwehrsport-statistik";

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delayed_jobs_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.delayed_jobs_id_seq OWNED BY public.delayed_jobs.id;


--
-- Name: entity_merges; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.entity_merges (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    target_id integer NOT NULL,
    target_type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.entity_merges OWNER TO "feuerwehrsport-statistik";

--
-- Name: entity_merges_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.entity_merges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entity_merges_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: entity_merges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.entity_merges_id_seq OWNED BY public.entity_merges.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO "feuerwehrsport-statistik";

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: federal_states; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.federal_states (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    shortcut character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.federal_states OWNER TO "feuerwehrsport-statistik";

--
-- Name: federal_states_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.federal_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.federal_states_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: federal_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.federal_states_id_seq OWNED BY public.federal_states.id;


--
-- Name: group_score_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.group_score_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_score_categories_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: group_score_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.group_score_categories_id_seq OWNED BY public.group_score_categories.id;


--
-- Name: group_score_types; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.group_score_types (
    id integer NOT NULL,
    discipline character varying NOT NULL,
    name character varying(200) NOT NULL,
    regular boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.group_score_types OWNER TO "feuerwehrsport-statistik";

--
-- Name: person_participations; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.person_participations (
    id integer NOT NULL,
    person_id integer NOT NULL,
    group_score_id integer NOT NULL,
    "position" integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.person_participations OWNER TO "feuerwehrsport-statistik";

--
-- Name: group_score_participations; Type: VIEW; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE VIEW public.group_score_participations AS
 SELECT person_participations.person_id,
    group_scores.team_id,
    group_scores.team_number,
    group_score_categories.competition_id,
    group_score_categories.group_score_type_id,
    group_score_types.discipline,
    group_scores."time",
    person_participations."position"
   FROM (((public.person_participations
     JOIN public.group_scores ON ((group_scores.id = person_participations.group_score_id)))
     JOIN public.group_score_categories ON ((group_score_categories.id = group_scores.group_score_category_id)))
     JOIN public.group_score_types ON ((group_score_types.id = group_score_categories.group_score_type_id)));


ALTER TABLE public.group_score_participations OWNER TO "feuerwehrsport-statistik";

--
-- Name: group_score_types_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.group_score_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_score_types_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: group_score_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.group_score_types_id_seq OWNED BY public.group_score_types.id;


--
-- Name: group_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.group_scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_scores_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: group_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.group_scores_id_seq OWNED BY public.group_scores.id;


--
-- Name: import_request_files; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.import_request_files (
    id integer NOT NULL,
    import_request_id integer NOT NULL,
    file character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    transfered boolean DEFAULT false NOT NULL
);


ALTER TABLE public.import_request_files OWNER TO "feuerwehrsport-statistik";

--
-- Name: import_request_files_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.import_request_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_request_files_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: import_request_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.import_request_files_id_seq OWNED BY public.import_request_files.id;


--
-- Name: import_requests; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.import_requests (
    id integer NOT NULL,
    file character varying,
    url character varying,
    date date,
    place_id integer,
    event_id integer,
    description text,
    admin_user_id integer,
    edit_user_id integer,
    edited_at timestamp without time zone,
    finished_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    import_data json
);


ALTER TABLE public.import_requests OWNER TO "feuerwehrsport-statistik";

--
-- Name: import_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.import_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_requests_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: import_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.import_requests_id_seq OWNED BY public.import_requests.id;


--
-- Name: links; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.links (
    id integer NOT NULL,
    label character varying NOT NULL,
    linkable_id integer NOT NULL,
    linkable_type character varying NOT NULL,
    url text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.links OWNER TO "feuerwehrsport-statistik";

--
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.links_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- Name: m3_assets; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.m3_assets (
    id integer NOT NULL,
    file character varying,
    name character varying(200),
    image boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.m3_assets OWNER TO "feuerwehrsport-statistik";

--
-- Name: m3_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.m3_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.m3_assets_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: m3_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.m3_assets_id_seq OWNED BY public.m3_assets.id;


--
-- Name: m3_logins; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.m3_logins (
    id integer NOT NULL,
    name character varying,
    email_address character varying NOT NULL,
    password_digest character varying,
    verified_at timestamp without time zone,
    verify_token character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    password_reset_requested_at timestamp without time zone,
    password_reset_token character varying,
    expired_at timestamp without time zone,
    changed_email_address character varying,
    changed_email_address_token character varying NOT NULL,
    changed_email_address_requested_at timestamp without time zone
);


ALTER TABLE public.m3_logins OWNER TO "feuerwehrsport-statistik";

--
-- Name: m3_logins_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.m3_logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.m3_logins_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: m3_logins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.m3_logins_id_seq OWNED BY public.m3_logins.id;


--
-- Name: nations; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.nations (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    iso character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.nations OWNER TO "feuerwehrsport-statistik";

--
-- Name: nations_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.nations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nations_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: nations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.nations_id_seq OWNED BY public.nations.id;


--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: person_participations_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.person_participations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_participations_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: person_participations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.person_participations_id_seq OWNED BY public.person_participations.id;


--
-- Name: person_spellings; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.person_spellings (
    id integer NOT NULL,
    person_id integer NOT NULL,
    last_name character varying(200) NOT NULL,
    first_name character varying(200) NOT NULL,
    gender integer NOT NULL,
    official boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.person_spellings OWNER TO "feuerwehrsport-statistik";

--
-- Name: person_spellings_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.person_spellings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_spellings_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: person_spellings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.person_spellings_id_seq OWNED BY public.person_spellings.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.places (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    latitude numeric(15,10),
    longitude numeric(15,10),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.places OWNER TO "feuerwehrsport-statistik";

--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.places_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "feuerwehrsport-statistik";

--
-- Name: single_disciplines; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.single_disciplines (
    id bigint NOT NULL,
    key character varying(2) NOT NULL,
    short_name character varying(100) NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    default_for_male boolean DEFAULT false NOT NULL,
    default_for_female boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.single_disciplines OWNER TO "feuerwehrsport-statistik";

--
-- Name: score_double_events; Type: VIEW; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE VIEW public.score_double_events AS
 SELECT double_events.person_id,
    double_events.competition_id,
    double_events.hb,
    double_events.hb_single_discipline_id,
    double_events.hl,
    double_events.hl_single_discipline_id,
    double_events."time",
    double_events.r
   FROM ( SELECT hb_scores.person_id,
            hb_scores.competition_id,
            hb_scores."time" AS hb,
            hb_scores.single_discipline_id AS hb_single_discipline_id,
            hl_scores."time" AS hl,
            hl_scores.single_discipline_id AS hl_single_discipline_id,
            (hb_scores."time" + hl_scores."time") AS "time",
            row_number() OVER (PARTITION BY hb_scores.competition_id, hb_scores.person_id ORDER BY (hb_scores."time" + hl_scores."time")) AS r
           FROM (( SELECT scores."time",
                    scores.competition_id,
                    scores.person_id,
                    scores.single_discipline_id
                   FROM (public.scores
                     JOIN public.single_disciplines sd ON ((sd.id = scores.single_discipline_id)))
                  WHERE ((scores."time" <> 99999999) AND ((sd.key)::text = 'hb'::text) AND (scores.team_number >= 0))) hb_scores
             JOIN ( SELECT scores."time",
                    scores.competition_id,
                    scores.person_id,
                    scores.single_discipline_id
                   FROM (public.scores
                     JOIN public.single_disciplines sd ON ((sd.id = scores.single_discipline_id)))
                  WHERE ((scores."time" <> 99999999) AND ((sd.key)::text = 'hl'::text) AND (scores.team_number >= 0))) hl_scores ON (((hb_scores.competition_id = hl_scores.competition_id) AND (hb_scores.person_id = hl_scores.person_id))))) double_events
  WHERE (double_events.r = 1);


ALTER TABLE public.score_double_events OWNER TO "feuerwehrsport-statistik";

--
-- Name: score_types; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.score_types (
    id integer NOT NULL,
    people integer NOT NULL,
    run integer NOT NULL,
    score integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.score_types OWNER TO "feuerwehrsport-statistik";

--
-- Name: score_types_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.score_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.score_types_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: score_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.score_types_id_seq OWNED BY public.score_types.id;


--
-- Name: scores_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scores_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.scores_id_seq OWNED BY public.scores.id;


--
-- Name: series_assessments; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.series_assessments (
    id integer NOT NULL,
    round_id integer NOT NULL,
    discipline character varying(3) NOT NULL,
    name character varying(200),
    type character varying(200) NOT NULL,
    gender integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.series_assessments OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_assessments_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.series_assessments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.series_assessments_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_assessments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.series_assessments_id_seq OWNED BY public.series_assessments.id;


--
-- Name: series_cups; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.series_cups (
    id integer NOT NULL,
    round_id integer NOT NULL,
    competition_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.series_cups OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_cups_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.series_cups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.series_cups_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_cups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.series_cups_id_seq OWNED BY public.series_cups.id;


--
-- Name: series_kinds; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.series_kinds (
    id bigint NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.series_kinds OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_kinds_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.series_kinds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.series_kinds_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_kinds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.series_kinds_id_seq OWNED BY public.series_kinds.id;


--
-- Name: series_participations; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.series_participations (
    id integer NOT NULL,
    assessment_id integer NOT NULL,
    cup_id integer NOT NULL,
    type character varying NOT NULL,
    team_id integer,
    team_number integer,
    person_id integer,
    "time" integer NOT NULL,
    points integer DEFAULT 0 NOT NULL,
    rank integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.series_participations OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_participations_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.series_participations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.series_participations_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_participations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.series_participations_id_seq OWNED BY public.series_participations.id;


--
-- Name: series_rounds; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.series_rounds (
    id integer NOT NULL,
    year integer NOT NULL,
    aggregate_type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    official boolean DEFAULT false NOT NULL,
    full_cup_count integer DEFAULT 4 NOT NULL,
    kind_id bigint
);


ALTER TABLE public.series_rounds OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_rounds_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.series_rounds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.series_rounds_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: series_rounds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.series_rounds_id_seq OWNED BY public.series_rounds.id;


--
-- Name: single_disciplines_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.single_disciplines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.single_disciplines_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: single_disciplines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.single_disciplines_id_seq OWNED BY public.single_disciplines.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    taggable_id integer NOT NULL,
    taggable_type character varying NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO "feuerwehrsport-statistik";

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: team_competitions; Type: VIEW; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE VIEW public.team_competitions AS
 SELECT group_scores.team_id,
    group_score_categories.competition_id
   FROM (public.group_scores
     JOIN public.group_score_categories ON ((group_score_categories.id = group_scores.group_score_category_id)))
UNION
 SELECT scores.team_id,
    scores.competition_id
   FROM public.scores
  WHERE (scores.team_id IS NOT NULL);


ALTER TABLE public.team_competitions OWNER TO "feuerwehrsport-statistik";

--
-- Name: team_members; Type: VIEW; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE VIEW public.team_members AS
 SELECT group_scores.team_id,
    person_participations.person_id
   FROM (public.group_scores
     JOIN public.person_participations ON ((person_participations.group_score_id = group_scores.id)))
UNION
 SELECT scores.team_id,
    scores.person_id
   FROM public.scores
  WHERE (scores.team_id IS NOT NULL);


ALTER TABLE public.team_members OWNER TO "feuerwehrsport-statistik";

--
-- Name: team_spellings; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.team_spellings (
    id integer NOT NULL,
    team_id integer NOT NULL,
    name character varying(200) NOT NULL,
    shortcut character varying(200) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.team_spellings OWNER TO "feuerwehrsport-statistik";

--
-- Name: team_spellings_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.team_spellings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_spellings_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: team_spellings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.team_spellings_id_seq OWNED BY public.team_spellings.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    shortcut character varying(200) NOT NULL,
    status integer NOT NULL,
    latitude numeric(15,10),
    longitude numeric(15,10),
    image character varying,
    state character varying(200),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    checked_at timestamp without time zone,
    members_count integer DEFAULT 0 NOT NULL,
    competitions_count integer DEFAULT 0 NOT NULL,
    best_scores jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.teams OWNER TO "feuerwehrsport-statistik";

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO "feuerwehrsport-statistik";

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: years; Type: VIEW; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE VIEW public.years AS
 SELECT date_part('year'::text, competitions.date) AS year
   FROM public.competitions
  GROUP BY (date_part('year'::text, competitions.date))
  ORDER BY (date_part('year'::text, competitions.date)) DESC;


ALTER TABLE public.years OWNER TO "feuerwehrsport-statistik";

--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: api_users id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.api_users ALTER COLUMN id SET DEFAULT nextval('public.api_users_id_seq'::regclass);


--
-- Name: bla_badges id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.bla_badges ALTER COLUMN id SET DEFAULT nextval('public.bla_badges_id_seq'::regclass);


--
-- Name: change_logs id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_logs ALTER COLUMN id SET DEFAULT nextval('public.change_logs_id_seq'::regclass);


--
-- Name: change_requests id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_requests ALTER COLUMN id SET DEFAULT nextval('public.change_requests_id_seq'::regclass);


--
-- Name: competition_files id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competition_files ALTER COLUMN id SET DEFAULT nextval('public.competition_files_id_seq'::regclass);


--
-- Name: competitions id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competitions ALTER COLUMN id SET DEFAULT nextval('public.competitions_id_seq'::regclass);


--
-- Name: delayed_jobs id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.delayed_jobs ALTER COLUMN id SET DEFAULT nextval('public.delayed_jobs_id_seq'::regclass);


--
-- Name: entity_merges id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.entity_merges ALTER COLUMN id SET DEFAULT nextval('public.entity_merges_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: federal_states id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.federal_states ALTER COLUMN id SET DEFAULT nextval('public.federal_states_id_seq'::regclass);


--
-- Name: group_score_categories id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_categories ALTER COLUMN id SET DEFAULT nextval('public.group_score_categories_id_seq'::regclass);


--
-- Name: group_score_types id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_types ALTER COLUMN id SET DEFAULT nextval('public.group_score_types_id_seq'::regclass);


--
-- Name: group_scores id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_scores ALTER COLUMN id SET DEFAULT nextval('public.group_scores_id_seq'::regclass);


--
-- Name: import_request_files id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.import_request_files ALTER COLUMN id SET DEFAULT nextval('public.import_request_files_id_seq'::regclass);


--
-- Name: import_requests id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.import_requests ALTER COLUMN id SET DEFAULT nextval('public.import_requests_id_seq'::regclass);


--
-- Name: links id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- Name: m3_assets id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.m3_assets ALTER COLUMN id SET DEFAULT nextval('public.m3_assets_id_seq'::regclass);


--
-- Name: m3_logins id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.m3_logins ALTER COLUMN id SET DEFAULT nextval('public.m3_logins_id_seq'::regclass);


--
-- Name: nations id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.nations ALTER COLUMN id SET DEFAULT nextval('public.nations_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: person_participations id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_participations ALTER COLUMN id SET DEFAULT nextval('public.person_participations_id_seq'::regclass);


--
-- Name: person_spellings id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_spellings ALTER COLUMN id SET DEFAULT nextval('public.person_spellings_id_seq'::regclass);


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);


--
-- Name: score_types id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.score_types ALTER COLUMN id SET DEFAULT nextval('public.score_types_id_seq'::regclass);


--
-- Name: scores id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores ALTER COLUMN id SET DEFAULT nextval('public.scores_id_seq'::regclass);


--
-- Name: series_assessments id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_assessments ALTER COLUMN id SET DEFAULT nextval('public.series_assessments_id_seq'::regclass);


--
-- Name: series_cups id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_cups ALTER COLUMN id SET DEFAULT nextval('public.series_cups_id_seq'::regclass);


--
-- Name: series_kinds id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_kinds ALTER COLUMN id SET DEFAULT nextval('public.series_kinds_id_seq'::regclass);


--
-- Name: series_participations id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_participations ALTER COLUMN id SET DEFAULT nextval('public.series_participations_id_seq'::regclass);


--
-- Name: series_rounds id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_rounds ALTER COLUMN id SET DEFAULT nextval('public.series_rounds_id_seq'::regclass);


--
-- Name: single_disciplines id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.single_disciplines ALTER COLUMN id SET DEFAULT nextval('public.single_disciplines_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: team_spellings id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.team_spellings ALTER COLUMN id SET DEFAULT nextval('public.team_spellings_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);
