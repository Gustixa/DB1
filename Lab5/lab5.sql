PGDMP     0                    {            lab5    15.1    15.1                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    57358    lab5    DATABASE     {   CREATE DATABASE lab5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Guatemala.1252';
    DROP DATABASE lab5;
                postgres    false            ?            1259    57404    actor    TABLE     ?   CREATE TABLE public.actor (
    pelicula character varying(20),
    nombre character varying(20),
    estado_civil character varying(12),
    lugar_nacimiento character varying(20),
    fecha_nacimiento date,
    sueldo_pelicula integer
);
    DROP TABLE public.actor;
       public         heap    postgres    false            ?            1259    57359    anuncio    TABLE     ?   CREATE TABLE public.anuncio (
    periodico_o_revista character varying(30),
    autor_firma character varying(30),
    fecha_publicacion date,
    nombre_pelicula character varying(30) NOT NULL
);
    DROP TABLE public.anuncio;
       public         heap    postgres    false            ?            1259    57372    cita_entrevista    TABLE     ?   CREATE TABLE public.cita_entrevista (
    direccion character varying(30),
    nombre_participante character varying(30),
    telefono character varying(10) NOT NULL
);
 #   DROP TABLE public.cita_entrevista;
       public         heap    postgres    false            ?            1259    57401    material_entrevista    TABLE     K  CREATE TABLE public.material_entrevista (
    nombre character varying(30),
    categoria character varying(10),
    pelicula character varying(30),
    aportacion_economica integer,
    argumento character varying(50),
    papel_actor character varying(40),
    tipo_papel character varying(20),
    premios_recibidos smallint
);
 '   DROP TABLE public.material_entrevista;
       public         heap    postgres    false            ?            1259    57390    participacion    TABLE     ?   CREATE TABLE public.participacion (
    id integer NOT NULL,
    nombre_actor character varying(30),
    pelicula character varying(30)
);
 !   DROP TABLE public.participacion;
       public         heap    postgres    false            ?            1259    57389    participacion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.participacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.participacion_id_seq;
       public          postgres    false    217            $           0    0    participacion_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.participacion_id_seq OWNED BY public.participacion.id;
          public          postgres    false    216            ?            1259    57396    pelicula    TABLE     ?   CREATE TABLE public.pelicula (
    titulo character varying(30) NOT NULL,
    nacionalidad character varying(30),
    director character varying(30),
    nombre_actor_principal character varying(50)
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            ?            1259    57407    premio    TABLE       CREATE TABLE public.premio (
    director character varying(30),
    tipo_premio character varying(12),
    nombre_certamen character varying(20),
    ciudad_celebrarcion character varying(20),
    pelicula_premiada character varying(30) NOT NULL,
    cantidad_premios smallint
);
    DROP TABLE public.premio;
       public         heap    postgres    false            }           2604    57393    participacion id    DEFAULT     t   ALTER TABLE ONLY public.participacion ALTER COLUMN id SET DEFAULT nextval('public.participacion_id_seq'::regclass);
 ?   ALTER TABLE public.participacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                      0    57404    actor 
   TABLE DATA           t   COPY public.actor (pelicula, nombre, estado_civil, lugar_nacimiento, fecha_nacimiento, sueldo_pelicula) FROM stdin;
    public          postgres    false    220   ]                 0    57359    anuncio 
   TABLE DATA           g   COPY public.anuncio (periodico_o_revista, autor_firma, fecha_publicacion, nombre_pelicula) FROM stdin;
    public          postgres    false    214                     0    57372    cita_entrevista 
   TABLE DATA           S   COPY public.cita_entrevista (direccion, nombre_participante, telefono) FROM stdin;
    public          postgres    false    215   ?                  0    57401    material_entrevista 
   TABLE DATA           ?   COPY public.material_entrevista (nombre, categoria, pelicula, aportacion_economica, argumento, papel_actor, tipo_papel, premios_recibidos) FROM stdin;
    public          postgres    false    219   !                 0    57390    participacion 
   TABLE DATA           C   COPY public.participacion (id, nombre_actor, pelicula) FROM stdin;
    public          postgres    false    217   ?!                 0    57396    pelicula 
   TABLE DATA           Z   COPY public.pelicula (titulo, nacionalidad, director, nombre_actor_principal) FROM stdin;
    public          postgres    false    218   ?!                 0    57407    premio 
   TABLE DATA           ?   COPY public.premio (director, tipo_premio, nombre_certamen, ciudad_celebrarcion, pelicula_premiada, cantidad_premios) FROM stdin;
    public          postgres    false    221   ?"       %           0    0    participacion_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.participacion_id_seq', 1, false);
          public          postgres    false    216                       2606    57363    anuncio anuncio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.anuncio
    ADD CONSTRAINT anuncio_pkey PRIMARY KEY (nombre_pelicula);
 >   ALTER TABLE ONLY public.anuncio DROP CONSTRAINT anuncio_pkey;
       public            postgres    false    214            ?           2606    57376 $   cita_entrevista cita_entrevista_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.cita_entrevista
    ADD CONSTRAINT cita_entrevista_pkey PRIMARY KEY (telefono);
 N   ALTER TABLE ONLY public.cita_entrevista DROP CONSTRAINT cita_entrevista_pkey;
       public            postgres    false    215            ?           2606    57395     participacion participacion_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.participacion
    ADD CONSTRAINT participacion_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.participacion DROP CONSTRAINT participacion_pkey;
       public            postgres    false    217            ?           2606    57400    pelicula pelicula_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (titulo);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    218            ?           2606    57411    premio premio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.premio
    ADD CONSTRAINT premio_pkey PRIMARY KEY (pelicula_premiada);
 <   ALTER TABLE ONLY public.premio DROP CONSTRAINT premio_pkey;
       public            postgres    false    221               ?   x?}?1?0??+???Hq?@?IDGs,?;?v??? ?l????&ϗ@?????;???L??MLy?x`?Jk?6?6J??j?x&	???k?1yblirD?6?6???=%??^N.$\˃=nC???/?46?X?????')>?         ?   x?5?K
?@@??)??iQ??PD?n?N?;)?T<????|?%?Q7C??ÞdMl?*??a3??r?@!??8????3l??:laǣP????\??????i???H?R?/??????]??()^??N?-@         a   x????KT0??NM?+UJM,K-?4537?\U Y3N猢?????<?ĜTN#cS3]c#S???)?W~q??{jYbQ"?????????W? s??         ?   x?]?1n?1?99?O?*?????H??<C-???0p????ɲ???C;}2.\R3??"zrd??ۄ???^@??4?e?:???]?????|??\4?<.??a???/p?,??^4???VO!?Gh?B?i?4?Mε??ˮw?2????&Pڢ??g~??4	t???4????????1??P^?            x?????? ? ?         ?   x?e?K
?@?3??H$ٺy&?H??{&z|#Y?,???x?@³???????94?Lg^`fv:???GK??jL?Ȗ>?f?kd?ϫZ}?@ߒ??j?q?x?2?$O[??c?3ݐsr?paH?????{c?M'C?         ?   x?M?A
?@EיS??\[?PP?n??6??4)???;t????w?[~?4??R;??H'ʙ%??!??l??䒲-;y?:?ԍ???Es??????j??}?J2?v???9?e(???,p?E????M??O9?     