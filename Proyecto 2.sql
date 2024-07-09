PGDMP  	            	        |            Proyecto    16.3    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24921    Proyecto    DATABASE     �   CREATE DATABASE "Proyecto" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE "Proyecto";
                postgres    false            �            1259    24922    Agente Autorizado    TABLE     �  CREATE TABLE public."Agente Autorizado" (
    rif_agente integer NOT NULL,
    nit integer,
    nombre_comercial character(100),
    razon_social character(100),
    pais_agen character(50),
    estado_agen character(50),
    ciudad_agen character(50),
    municipio_agen character(50),
    avenida_agen character(50),
    calle_agen character(50),
    edificio_agen character(50),
    email character(50),
    numero_empleados integer
);
 '   DROP TABLE public."Agente Autorizado";
       public         heap    postgres    false            �            1259    24927    Cliente    TABLE     �   CREATE TABLE public."Cliente" (
    id_persona integer NOT NULL,
    num_hijos integer,
    nivel_educacion character(50),
    telefono integer,
    numero_dep integer,
    id_empresa integer
);
    DROP TABLE public."Cliente";
       public         heap    postgres    false            �            1259    24930    Compra    TABLE     �   CREATE TABLE public."Compra" (
    id_compra integer NOT NULL,
    id_persona integer,
    id_producto integer,
    fecha_compra date,
    cantidad integer,
    total real
);
    DROP TABLE public."Compra";
       public         heap    postgres    false            �            1259    24933    Compra_id_compra_seq    SEQUENCE     �   CREATE SEQUENCE public."Compra_id_compra_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Compra_id_compra_seq";
       public          postgres    false    217            �           0    0    Compra_id_compra_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Compra_id_compra_seq" OWNED BY public."Compra".id_compra;
          public          postgres    false    218            �            1259    24934    Contacto    TABLE     �   CREATE TABLE public."Contacto" (
    fecha_atencion date NOT NULL,
    id_persona_empleado integer,
    id_persona_cliente integer,
    id_compra integer,
    estado character(50),
    descripcion character(200),
    motivo_contacto character(200)
);
    DROP TABLE public."Contacto";
       public         heap    postgres    false            �            1259    24937    Contiene    TABLE     �   CREATE TABLE public."Contiene" (
    id_subplan integer NOT NULL,
    id_plan integer NOT NULL,
    id_linea integer NOT NULL
);
    DROP TABLE public."Contiene";
       public         heap    postgres    false            �            1259    24940    Contiene_id_linea_seq    SEQUENCE     �   CREATE SEQUENCE public."Contiene_id_linea_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Contiene_id_linea_seq";
       public          postgres    false    220            �           0    0    Contiene_id_linea_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Contiene_id_linea_seq" OWNED BY public."Contiene".id_linea;
          public          postgres    false    221            �            1259    24941    Contiene_id_plan_seq    SEQUENCE     �   CREATE SEQUENCE public."Contiene_id_plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Contiene_id_plan_seq";
       public          postgres    false    220            �           0    0    Contiene_id_plan_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Contiene_id_plan_seq" OWNED BY public."Contiene".id_plan;
          public          postgres    false    222            �            1259    24942    Contiene_id_subplan_seq    SEQUENCE     �   CREATE SEQUENCE public."Contiene_id_subplan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Contiene_id_subplan_seq";
       public          postgres    false    220            �           0    0    Contiene_id_subplan_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Contiene_id_subplan_seq" OWNED BY public."Contiene".id_subplan;
          public          postgres    false    223            �            1259    24943    Distribuidor    TABLE     I  CREATE TABLE public."Distribuidor" (
    rif_distribuidor integer NOT NULL,
    nit integer,
    nombre character(50),
    telefono integer,
    pais_dis character(50),
    estado_dis character(50),
    ciudad_dis character(50),
    municipio_dis character(50),
    av_calle_dis character(100),
    edificio_dis character(50)
);
 "   DROP TABLE public."Distribuidor";
       public         heap    postgres    false            �            1259    24946    Empleado    TABLE     b   CREATE TABLE public."Empleado" (
    id_persona integer NOT NULL,
    seguridad_social integer
);
    DROP TABLE public."Empleado";
       public         heap    postgres    false            �            1259    24949    Empleado_id_persona_seq    SEQUENCE     �   CREATE SEQUENCE public."Empleado_id_persona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Empleado_id_persona_seq";
       public          postgres    false    225            �           0    0    Empleado_id_persona_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Empleado_id_persona_seq" OWNED BY public."Empleado".id_persona;
          public          postgres    false    226            �            1259    24950    Empresa    TABLE     i  CREATE TABLE public."Empresa" (
    id_empresa integer NOT NULL,
    id_persona integer,
    pais_emp character(50),
    estado_emp character(50),
    ciudad_emp character(50),
    municipio_emp character(50),
    avenida_emp character(100),
    calle_emp character(100),
    edificio_emp character(50),
    email character(50),
    numero_empleados integer
);
    DROP TABLE public."Empresa";
       public         heap    postgres    false            �            1259    24955    Equipo Telefonico    TABLE     �   CREATE TABLE public."Equipo Telefonico" (
    id_producto_equipo integer NOT NULL,
    modelo character(50),
    imagen_equipo character(50),
    descripcion character(200),
    garantia integer,
    id_fabricante integer NOT NULL
);
 '   DROP TABLE public."Equipo Telefonico";
       public         heap    postgres    false            �            1259    24958    Equipo_id_fabricante_seq    SEQUENCE     �   CREATE SEQUENCE public."Equipo_id_fabricante_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Equipo_id_fabricante_seq";
       public          postgres    false    228            �           0    0    Equipo_id_fabricante_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."Equipo_id_fabricante_seq" OWNED BY public."Equipo Telefonico".id_fabricante;
          public          postgres    false    229            �            1259    24959    Equipo_id_producto_equipo_seq    SEQUENCE     �   CREATE SEQUENCE public."Equipo_id_producto_equipo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Equipo_id_producto_equipo_seq";
       public          postgres    false    228            �           0    0    Equipo_id_producto_equipo_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public."Equipo_id_producto_equipo_seq" OWNED BY public."Equipo Telefonico".id_producto_equipo;
          public          postgres    false    230            �            1259    24960 
   Fabricante    TABLE     �  CREATE TABLE public."Fabricante" (
    id_fabricante integer NOT NULL,
    nombre_compania character(50),
    telefono integer,
    pagina_web character(50),
    email character(50),
    rif_distribuidor integer NOT NULL,
    pais_fab character(50),
    estado_fab character(50),
    ciudad_fab character(50),
    municipio_fab character(50),
    avenida_fab character(100),
    calle_fab character(100),
    edificio_fab character(50)
);
     DROP TABLE public."Fabricante";
       public         heap    postgres    false            �            1259    24965    Fabricante_id_fabricante_seq    SEQUENCE     �   CREATE SEQUENCE public."Fabricante_id_fabricante_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Fabricante_id_fabricante_seq";
       public          postgres    false    231            �           0    0    Fabricante_id_fabricante_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Fabricante_id_fabricante_seq" OWNED BY public."Fabricante".id_fabricante;
          public          postgres    false    232            �            1259    24966    Fabricante_rif_distribuidor_seq    SEQUENCE     �   CREATE SEQUENCE public."Fabricante_rif_distribuidor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Fabricante_rif_distribuidor_seq";
       public          postgres    false    231            �           0    0    Fabricante_rif_distribuidor_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Fabricante_rif_distribuidor_seq" OWNED BY public."Fabricante".rif_distribuidor;
          public          postgres    false    233            �            1259    24967    Linea Telefonica    TABLE     �   CREATE TABLE public."Linea Telefonica" (
    id_linea integer NOT NULL,
    id_persona integer,
    tecnologia character(100),
    estado_linea character(50),
    numero_linea integer
);
 &   DROP TABLE public."Linea Telefonica";
       public         heap    postgres    false            �            1259    24970    Linea Telefonica_id_linea_seq    SEQUENCE     �   CREATE SEQUENCE public."Linea Telefonica_id_linea_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Linea Telefonica_id_linea_seq";
       public          postgres    false    234            �           0    0    Linea Telefonica_id_linea_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Linea Telefonica_id_linea_seq" OWNED BY public."Linea Telefonica".id_linea;
          public          postgres    false    235            �            1259    24971    Llamada    TABLE     g   CREATE TABLE public."Llamada" (
    id_plan_llamada integer NOT NULL,
    costo_minimo_llamada real
);
    DROP TABLE public."Llamada";
       public         heap    postgres    false            �            1259    24974    Llamada_id_plan_llamada_seq    SEQUENCE     �   CREATE SEQUENCE public."Llamada_id_plan_llamada_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Llamada_id_plan_llamada_seq";
       public          postgres    false    236            �           0    0    Llamada_id_plan_llamada_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Llamada_id_plan_llamada_seq" OWNED BY public."Llamada".id_plan_llamada;
          public          postgres    false    237            �            1259    24975 
   Mensajeria    TABLE     z   CREATE TABLE public."Mensajeria" (
    id_plan_mensajeria integer NOT NULL,
    mensajes_permitidos_mensajeria integer
);
     DROP TABLE public."Mensajeria";
       public         heap    postgres    false            �            1259    24978 !   Mensajeria_id_plan_mensajeria_seq    SEQUENCE     �   CREATE SEQUENCE public."Mensajeria_id_plan_mensajeria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Mensajeria_id_plan_mensajeria_seq";
       public          postgres    false    238            �           0    0 !   Mensajeria_id_plan_mensajeria_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Mensajeria_id_plan_mensajeria_seq" OWNED BY public."Mensajeria".id_plan_mensajeria;
          public          postgres    false    239            �            1259    24979 
   Navegacion    TABLE     q   CREATE TABLE public."Navegacion" (
    id_plan_navegacion integer NOT NULL,
    velocidad_nav_navegacion real
);
     DROP TABLE public."Navegacion";
       public         heap    postgres    false            �            1259    24982 !   Navegacion_id_plan_navegacion_seq    SEQUENCE     �   CREATE SEQUENCE public."Navegacion_id_plan_navegacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Navegacion_id_plan_navegacion_seq";
       public          postgres    false    240            �           0    0 !   Navegacion_id_plan_navegacion_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Navegacion_id_plan_navegacion_seq" OWNED BY public."Navegacion".id_plan_navegacion;
          public          postgres    false    241            �            1259    24983    Persona    TABLE     
  CREATE TABLE public."Persona" (
    id_persona integer NOT NULL,
    edo_civil character(10),
    email character(10),
    pais_hab character(50),
    estado_hab character(50),
    ciudad_hab character(50),
    municipio_hab character(50),
    avenida_hab character(100),
    calle_hab character(100),
    edificio_hab character(50),
    pais_nac character(50),
    estado_nac character(50),
    ciudad_nac character(50),
    fecha_nac date,
    sexo character(10),
    apellido character(50),
    nombre character(50)
);
    DROP TABLE public."Persona";
       public         heap    postgres    false            �            1259    24988    Plan    TABLE     �   CREATE TABLE public."Plan" (
    id_producto_plan integer NOT NULL,
    nombre character(50),
    num_subplanes integer,
    es_llamada real,
    es_navegacion real,
    es_mensajeria integer
);
    DROP TABLE public."Plan";
       public         heap    postgres    false            �            1259    24991    Plan_id_producto_plan_seq    SEQUENCE     �   CREATE SEQUENCE public."Plan_id_producto_plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Plan_id_producto_plan_seq";
       public          postgres    false    243            �           0    0    Plan_id_producto_plan_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Plan_id_producto_plan_seq" OWNED BY public."Plan".id_producto_plan;
          public          postgres    false    244            �            1259    24992    Producto    TABLE     Y   CREATE TABLE public."Producto" (
    id_producto integer NOT NULL,
    precio integer
);
    DROP TABLE public."Producto";
       public         heap    postgres    false            �            1259    24995    Producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public."Producto_id_producto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Producto_id_producto_seq";
       public          postgres    false    245            �           0    0    Producto_id_producto_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Producto_id_producto_seq" OWNED BY public."Producto".id_producto;
          public          postgres    false    246            �            1259    24999    Subplan    TABLE     �   CREATE TABLE public."Subplan" (
    id_subplan integer NOT NULL,
    id_plan integer NOT NULL,
    nombre character(50),
    descripcion character(200),
    tarifa real,
    num_clientes_adscritos integer
);
    DROP TABLE public."Subplan";
       public         heap    postgres    false            �            1259    25002    Subplan_id_plan_seq    SEQUENCE     �   CREATE SEQUENCE public."Subplan_id_plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Subplan_id_plan_seq";
       public          postgres    false    247            �           0    0    Subplan_id_plan_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Subplan_id_plan_seq" OWNED BY public."Subplan".id_plan;
          public          postgres    false    248            �            1259    25003    Subplan_id_subplan_seq    SEQUENCE     �   CREATE SEQUENCE public."Subplan_id_subplan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Subplan_id_subplan_seq";
       public          postgres    false    247            �           0    0    Subplan_id_subplan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Subplan_id_subplan_seq" OWNED BY public."Subplan".id_subplan;
          public          postgres    false    249            �            1259    25004    Telefonos Agente    TABLE     b   CREATE TABLE public."Telefonos Agente" (
    telefono integer NOT NULL,
    rif_agente integer
);
 &   DROP TABLE public."Telefonos Agente";
       public         heap    postgres    false            �            1259    25007    Telefonos Empresa    TABLE     c   CREATE TABLE public."Telefonos Empresa" (
    telefono integer NOT NULL,
    id_empresa integer
);
 '   DROP TABLE public."Telefonos Empresa";
       public         heap    postgres    false            �            1259    25010    Trabaja    TABLE     �   CREATE TABLE public."Trabaja" (
    fecha_contratacion date NOT NULL,
    id_persona integer,
    rif_agente integer,
    sueldo real,
    cargo character(100),
    numero_ventas_realizadas integer
);
    DROP TABLE public."Trabaja";
       public         heap    postgres    false            �           2604    25013    Compra id_compra    DEFAULT     x   ALTER TABLE ONLY public."Compra" ALTER COLUMN id_compra SET DEFAULT nextval('public."Compra_id_compra_seq"'::regclass);
 A   ALTER TABLE public."Compra" ALTER COLUMN id_compra DROP DEFAULT;
       public          postgres    false    218    217            �           2604    25014    Contiene id_subplan    DEFAULT     ~   ALTER TABLE ONLY public."Contiene" ALTER COLUMN id_subplan SET DEFAULT nextval('public."Contiene_id_subplan_seq"'::regclass);
 D   ALTER TABLE public."Contiene" ALTER COLUMN id_subplan DROP DEFAULT;
       public          postgres    false    223    220            �           2604    25015    Contiene id_plan    DEFAULT     x   ALTER TABLE ONLY public."Contiene" ALTER COLUMN id_plan SET DEFAULT nextval('public."Contiene_id_plan_seq"'::regclass);
 A   ALTER TABLE public."Contiene" ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    222    220            �           2604    25016    Contiene id_linea    DEFAULT     z   ALTER TABLE ONLY public."Contiene" ALTER COLUMN id_linea SET DEFAULT nextval('public."Contiene_id_linea_seq"'::regclass);
 B   ALTER TABLE public."Contiene" ALTER COLUMN id_linea DROP DEFAULT;
       public          postgres    false    221    220            �           2604    25017    Empleado id_persona    DEFAULT     ~   ALTER TABLE ONLY public."Empleado" ALTER COLUMN id_persona SET DEFAULT nextval('public."Empleado_id_persona_seq"'::regclass);
 D   ALTER TABLE public."Empleado" ALTER COLUMN id_persona DROP DEFAULT;
       public          postgres    false    226    225            �           2604    25018 $   Equipo Telefonico id_producto_equipo    DEFAULT     �   ALTER TABLE ONLY public."Equipo Telefonico" ALTER COLUMN id_producto_equipo SET DEFAULT nextval('public."Equipo_id_producto_equipo_seq"'::regclass);
 U   ALTER TABLE public."Equipo Telefonico" ALTER COLUMN id_producto_equipo DROP DEFAULT;
       public          postgres    false    230    228            �           2604    25019    Equipo Telefonico id_fabricante    DEFAULT     �   ALTER TABLE ONLY public."Equipo Telefonico" ALTER COLUMN id_fabricante SET DEFAULT nextval('public."Equipo_id_fabricante_seq"'::regclass);
 P   ALTER TABLE public."Equipo Telefonico" ALTER COLUMN id_fabricante DROP DEFAULT;
       public          postgres    false    229    228            �           2604    25020    Fabricante id_fabricante    DEFAULT     �   ALTER TABLE ONLY public."Fabricante" ALTER COLUMN id_fabricante SET DEFAULT nextval('public."Fabricante_id_fabricante_seq"'::regclass);
 I   ALTER TABLE public."Fabricante" ALTER COLUMN id_fabricante DROP DEFAULT;
       public          postgres    false    232    231            �           2604    25021    Fabricante rif_distribuidor    DEFAULT     �   ALTER TABLE ONLY public."Fabricante" ALTER COLUMN rif_distribuidor SET DEFAULT nextval('public."Fabricante_rif_distribuidor_seq"'::regclass);
 L   ALTER TABLE public."Fabricante" ALTER COLUMN rif_distribuidor DROP DEFAULT;
       public          postgres    false    233    231            �           2604    25022    Linea Telefonica id_linea    DEFAULT     �   ALTER TABLE ONLY public."Linea Telefonica" ALTER COLUMN id_linea SET DEFAULT nextval('public."Linea Telefonica_id_linea_seq"'::regclass);
 J   ALTER TABLE public."Linea Telefonica" ALTER COLUMN id_linea DROP DEFAULT;
       public          postgres    false    235    234            �           2604    25023    Llamada id_plan_llamada    DEFAULT     �   ALTER TABLE ONLY public."Llamada" ALTER COLUMN id_plan_llamada SET DEFAULT nextval('public."Llamada_id_plan_llamada_seq"'::regclass);
 H   ALTER TABLE public."Llamada" ALTER COLUMN id_plan_llamada DROP DEFAULT;
       public          postgres    false    237    236            �           2604    25024    Mensajeria id_plan_mensajeria    DEFAULT     �   ALTER TABLE ONLY public."Mensajeria" ALTER COLUMN id_plan_mensajeria SET DEFAULT nextval('public."Mensajeria_id_plan_mensajeria_seq"'::regclass);
 N   ALTER TABLE public."Mensajeria" ALTER COLUMN id_plan_mensajeria DROP DEFAULT;
       public          postgres    false    239    238            �           2604    25025    Navegacion id_plan_navegacion    DEFAULT     �   ALTER TABLE ONLY public."Navegacion" ALTER COLUMN id_plan_navegacion SET DEFAULT nextval('public."Navegacion_id_plan_navegacion_seq"'::regclass);
 N   ALTER TABLE public."Navegacion" ALTER COLUMN id_plan_navegacion DROP DEFAULT;
       public          postgres    false    241    240            �           2604    25026    Plan id_producto_plan    DEFAULT     �   ALTER TABLE ONLY public."Plan" ALTER COLUMN id_producto_plan SET DEFAULT nextval('public."Plan_id_producto_plan_seq"'::regclass);
 F   ALTER TABLE public."Plan" ALTER COLUMN id_producto_plan DROP DEFAULT;
       public          postgres    false    244    243            �           2604    25027    Producto id_producto    DEFAULT     �   ALTER TABLE ONLY public."Producto" ALTER COLUMN id_producto SET DEFAULT nextval('public."Producto_id_producto_seq"'::regclass);
 E   ALTER TABLE public."Producto" ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    246    245            �           2604    25028    Subplan id_subplan    DEFAULT     |   ALTER TABLE ONLY public."Subplan" ALTER COLUMN id_subplan SET DEFAULT nextval('public."Subplan_id_subplan_seq"'::regclass);
 C   ALTER TABLE public."Subplan" ALTER COLUMN id_subplan DROP DEFAULT;
       public          postgres    false    249    247            �           2604    25029    Subplan id_plan    DEFAULT     v   ALTER TABLE ONLY public."Subplan" ALTER COLUMN id_plan SET DEFAULT nextval('public."Subplan_id_plan_seq"'::regclass);
 @   ALTER TABLE public."Subplan" ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    248    247            �          0    24922    Agente Autorizado 
   TABLE DATA           �   COPY public."Agente Autorizado" (rif_agente, nit, nombre_comercial, razon_social, pais_agen, estado_agen, ciudad_agen, municipio_agen, avenida_agen, calle_agen, edificio_agen, email, numero_empleados) FROM stdin;
    public          postgres    false    215   ��       �          0    24927    Cliente 
   TABLE DATA           m   COPY public."Cliente" (id_persona, num_hijos, nivel_educacion, telefono, numero_dep, id_empresa) FROM stdin;
    public          postgres    false    216   ��       �          0    24930    Compra 
   TABLE DATA           e   COPY public."Compra" (id_compra, id_persona, id_producto, fecha_compra, cantidad, total) FROM stdin;
    public          postgres    false    217   Է       �          0    24934    Contacto 
   TABLE DATA           �   COPY public."Contacto" (fecha_atencion, id_persona_empleado, id_persona_cliente, id_compra, estado, descripcion, motivo_contacto) FROM stdin;
    public          postgres    false    219   �       �          0    24937    Contiene 
   TABLE DATA           C   COPY public."Contiene" (id_subplan, id_plan, id_linea) FROM stdin;
    public          postgres    false    220   �       �          0    24943    Distribuidor 
   TABLE DATA           �   COPY public."Distribuidor" (rif_distribuidor, nit, nombre, telefono, pais_dis, estado_dis, ciudad_dis, municipio_dis, av_calle_dis, edificio_dis) FROM stdin;
    public          postgres    false    224   +�       �          0    24946    Empleado 
   TABLE DATA           B   COPY public."Empleado" (id_persona, seguridad_social) FROM stdin;
    public          postgres    false    225   H�       �          0    24950    Empresa 
   TABLE DATA           �   COPY public."Empresa" (id_empresa, id_persona, pais_emp, estado_emp, ciudad_emp, municipio_emp, avenida_emp, calle_emp, edificio_emp, email, numero_empleados) FROM stdin;
    public          postgres    false    227   e�       �          0    24955    Equipo Telefonico 
   TABLE DATA           ~   COPY public."Equipo Telefonico" (id_producto_equipo, modelo, imagen_equipo, descripcion, garantia, id_fabricante) FROM stdin;
    public          postgres    false    228   ��       �          0    24960 
   Fabricante 
   TABLE DATA           �   COPY public."Fabricante" (id_fabricante, nombre_compania, telefono, pagina_web, email, rif_distribuidor, pais_fab, estado_fab, ciudad_fab, municipio_fab, avenida_fab, calle_fab, edificio_fab) FROM stdin;
    public          postgres    false    231   ��       �          0    24967    Linea Telefonica 
   TABLE DATA           j   COPY public."Linea Telefonica" (id_linea, id_persona, tecnologia, estado_linea, numero_linea) FROM stdin;
    public          postgres    false    234   ��       �          0    24971    Llamada 
   TABLE DATA           J   COPY public."Llamada" (id_plan_llamada, costo_minimo_llamada) FROM stdin;
    public          postgres    false    236   ٸ       �          0    24975 
   Mensajeria 
   TABLE DATA           Z   COPY public."Mensajeria" (id_plan_mensajeria, mensajes_permitidos_mensajeria) FROM stdin;
    public          postgres    false    238   ��       �          0    24979 
   Navegacion 
   TABLE DATA           T   COPY public."Navegacion" (id_plan_navegacion, velocidad_nav_navegacion) FROM stdin;
    public          postgres    false    240   �       �          0    24983    Persona 
   TABLE DATA           �   COPY public."Persona" (id_persona, edo_civil, email, pais_hab, estado_hab, ciudad_hab, municipio_hab, avenida_hab, calle_hab, edificio_hab, pais_nac, estado_nac, ciudad_nac, fecha_nac, sexo, apellido, nombre) FROM stdin;
    public          postgres    false    242   0�       �          0    24988    Plan 
   TABLE DATA           s   COPY public."Plan" (id_producto_plan, nombre, num_subplanes, es_llamada, es_navegacion, es_mensajeria) FROM stdin;
    public          postgres    false    243   M�       �          0    24992    Producto 
   TABLE DATA           9   COPY public."Producto" (id_producto, precio) FROM stdin;
    public          postgres    false    245   j�       �          0    24999    Subplan 
   TABLE DATA           m   COPY public."Subplan" (id_subplan, id_plan, nombre, descripcion, tarifa, num_clientes_adscritos) FROM stdin;
    public          postgres    false    247   ��       �          0    25004    Telefonos Agente 
   TABLE DATA           B   COPY public."Telefonos Agente" (telefono, rif_agente) FROM stdin;
    public          postgres    false    250   ��       �          0    25007    Telefonos Empresa 
   TABLE DATA           C   COPY public."Telefonos Empresa" (telefono, id_empresa) FROM stdin;
    public          postgres    false    251   ��       �          0    25010    Trabaja 
   TABLE DATA           x   COPY public."Trabaja" (fecha_contratacion, id_persona, rif_agente, sueldo, cargo, numero_ventas_realizadas) FROM stdin;
    public          postgres    false    252   ޹       �           0    0    Compra_id_compra_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Compra_id_compra_seq"', 1, false);
          public          postgres    false    218            �           0    0    Contiene_id_linea_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Contiene_id_linea_seq"', 1, false);
          public          postgres    false    221            �           0    0    Contiene_id_plan_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Contiene_id_plan_seq"', 1, false);
          public          postgres    false    222            �           0    0    Contiene_id_subplan_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Contiene_id_subplan_seq"', 1, false);
          public          postgres    false    223            �           0    0    Empleado_id_persona_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Empleado_id_persona_seq"', 1, false);
          public          postgres    false    226            �           0    0    Equipo_id_fabricante_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Equipo_id_fabricante_seq"', 1, false);
          public          postgres    false    229            �           0    0    Equipo_id_producto_equipo_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Equipo_id_producto_equipo_seq"', 1, false);
          public          postgres    false    230            �           0    0    Fabricante_id_fabricante_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Fabricante_id_fabricante_seq"', 1, false);
          public          postgres    false    232            �           0    0    Fabricante_rif_distribuidor_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Fabricante_rif_distribuidor_seq"', 1, false);
          public          postgres    false    233            �           0    0    Linea Telefonica_id_linea_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Linea Telefonica_id_linea_seq"', 1, false);
          public          postgres    false    235            �           0    0    Llamada_id_plan_llamada_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Llamada_id_plan_llamada_seq"', 1, false);
          public          postgres    false    237            �           0    0 !   Mensajeria_id_plan_mensajeria_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Mensajeria_id_plan_mensajeria_seq"', 1, false);
          public          postgres    false    239            �           0    0 !   Navegacion_id_plan_navegacion_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Navegacion_id_plan_navegacion_seq"', 1, false);
          public          postgres    false    241            �           0    0    Plan_id_producto_plan_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Plan_id_producto_plan_seq"', 1, false);
          public          postgres    false    244            �           0    0    Producto_id_producto_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Producto_id_producto_seq"', 1, false);
          public          postgres    false    246            �           0    0    Subplan_id_plan_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Subplan_id_plan_seq"', 1, false);
          public          postgres    false    248            �           0    0    Subplan_id_subplan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Subplan_id_subplan_seq"', 1, false);
          public          postgres    false    249            �           2606    25079 +   Agente Autorizado  chk_num_empleados_agente    CHECK CONSTRAINT     �   ALTER TABLE public."Agente Autorizado"
    ADD CONSTRAINT " chk_num_empleados_agente" CHECK ((numero_empleados >= 0)) NOT VALID;
 T   ALTER TABLE public."Agente Autorizado" DROP CONSTRAINT " chk_num_empleados_agente";
       public          postgres    false    215    215            �           2606    25082 !   Linea Telefonica  chk_tecnología    CHECK CONSTRAINT     �   ALTER TABLE public."Linea Telefonica"
    ADD CONSTRAINT " chk_tecnología" CHECK ((tecnologia = ANY (ARRAY['gsm'::bpchar, 'lte'::bpchar, '5g'::bpchar]))) NOT VALID;
 J   ALTER TABLE public."Linea Telefonica" DROP CONSTRAINT " chk_tecnología";
       public          postgres    false    234    234            �           2606    25075    Persona Fecha    CHECK CONSTRAINT     g   ALTER TABLE public."Persona"
    ADD CONSTRAINT "Fecha" CHECK ((fecha_nac <= CURRENT_DATE)) NOT VALID;
 6   ALTER TABLE public."Persona" DROP CONSTRAINT "Fecha";
       public          postgres    false    242    242            �           2606    25031 &   Agente Autorizado agente_autorizado_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public."Agente Autorizado"
    ADD CONSTRAINT agente_autorizado_pk PRIMARY KEY (rif_agente);
 R   ALTER TABLE ONLY public."Agente Autorizado" DROP CONSTRAINT agente_autorizado_pk;
       public            postgres    false    215            �           2606    25076    Compra chk_cantidad    CHECK CONSTRAINT     _   ALTER TABLE public."Compra"
    ADD CONSTRAINT chk_cantidad CHECK ((cantidad >= 0)) NOT VALID;
 :   ALTER TABLE public."Compra" DROP CONSTRAINT chk_cantidad;
       public          postgres    false    217    217            �           2606    25071    Trabaja chk_cargo    CHECK CONSTRAINT     �   ALTER TABLE public."Trabaja"
    ADD CONSTRAINT chk_cargo CHECK ((cargo = ANY (ARRAY['vendedor'::bpchar, 'gerente de ventas'::bpchar, 'soporte técnico'::bpchar, 'administrador de agencia'::bpchar, 'servicio al cliente'::bpchar]))) NOT VALID;
 8   ALTER TABLE public."Trabaja" DROP CONSTRAINT chk_cargo;
       public          postgres    false    252    252            �           2606    25085    Persona chk_edo_civil    CHECK CONSTRAINT     �   ALTER TABLE public."Persona"
    ADD CONSTRAINT chk_edo_civil CHECK ((edo_civil = ANY (ARRAY['Soltero'::bpchar, 'Casado'::bpchar, 'Viudo'::bpchar, 'Divorciado'::bpchar]))) NOT VALID;
 <   ALTER TABLE public."Persona" DROP CONSTRAINT chk_edo_civil;
       public          postgres    false    242    242            �           2606    25081 !   Linea Telefonica chk_estado_linea    CHECK CONSTRAINT     �   ALTER TABLE public."Linea Telefonica"
    ADD CONSTRAINT chk_estado_linea CHECK ((estado_linea = ANY (ARRAY['Activo'::bpchar, 'Suspendido'::bpchar, 'Cancelado'::bpchar]))) NOT VALID;
 H   ALTER TABLE public."Linea Telefonica" DROP CONSTRAINT chk_estado_linea;
       public          postgres    false    234    234            �           2606    25083    Cliente chk_nivel_educacion    CHECK CONSTRAINT     �   ALTER TABLE public."Cliente"
    ADD CONSTRAINT chk_nivel_educacion CHECK ((nivel_educacion = ANY (ARRAY['Primaria'::bpchar, 'Secundaria'::bpchar, 'Bachiller'::bpchar]))) NOT VALID;
 B   ALTER TABLE public."Cliente" DROP CONSTRAINT chk_nivel_educacion;
       public          postgres    false    216    216            �           2606    25078    Empresa chk_num_empleados    CHECK CONSTRAINT     m   ALTER TABLE public."Empresa"
    ADD CONSTRAINT chk_num_empleados CHECK ((numero_empleados >= 0)) NOT VALID;
 @   ALTER TABLE public."Empresa" DROP CONSTRAINT chk_num_empleados;
       public          postgres    false    227    227            �           2606    25077    Cliente chk_num_hijos    CHECK CONSTRAINT     b   ALTER TABLE public."Cliente"
    ADD CONSTRAINT chk_num_hijos CHECK ((num_hijos >= 0)) NOT VALID;
 <   ALTER TABLE public."Cliente" DROP CONSTRAINT chk_num_hijos;
       public          postgres    false    216    216            �           2606    25080 "   Agente Autorizado chk_razon_social    CHECK CONSTRAINT     �   ALTER TABLE public."Agente Autorizado"
    ADD CONSTRAINT chk_razon_social CHECK ((razon_social = ANY (ARRAY['C.A.'::bpchar, 'S.R.L.'::bpchar, 'S.A.'::bpchar]))) NOT VALID;
 I   ALTER TABLE public."Agente Autorizado" DROP CONSTRAINT chk_razon_social;
       public          postgres    false    215    215            �           2606    25084    Persona chk_sexo    CHECK CONSTRAINT     �   ALTER TABLE public."Persona"
    ADD CONSTRAINT chk_sexo CHECK ((sexo = ANY (ARRAY['Masculino'::bpchar, 'Femenino'::bpchar]))) NOT VALID;
 7   ALTER TABLE public."Persona" DROP CONSTRAINT chk_sexo;
       public          postgres    false    242    242            �           2606    25033    Cliente cliente_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id_persona);
 >   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT cliente_pk;
       public            postgres    false    216            �           2606    25035    Compra compra_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public."Compra"
    ADD CONSTRAINT compra_pk PRIMARY KEY (id_compra);
 <   ALTER TABLE ONLY public."Compra" DROP CONSTRAINT compra_pk;
       public            postgres    false    217            �           2606    25037    Contacto contacto_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public."Contacto"
    ADD CONSTRAINT contacto_pk PRIMARY KEY (fecha_atencion);
 @   ALTER TABLE ONLY public."Contacto" DROP CONSTRAINT contacto_pk;
       public            postgres    false    219            �           2606    25039    Distribuidor distribuidor_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public."Distribuidor"
    ADD CONSTRAINT distribuidor_pk PRIMARY KEY (rif_distribuidor);
 H   ALTER TABLE ONLY public."Distribuidor" DROP CONSTRAINT distribuidor_pk;
       public            postgres    false    224            �           2606    25041    Empleado empleado_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT empleado_pk PRIMARY KEY (id_persona);
 @   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT empleado_pk;
       public            postgres    false    225            �           2606    25043    Empresa empresa_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Empresa"
    ADD CONSTRAINT empresa_pk PRIMARY KEY (id_empresa);
 >   ALTER TABLE ONLY public."Empresa" DROP CONSTRAINT empresa_pk;
       public            postgres    false    227            �           2606    25045    Equipo Telefonico equipo_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public."Equipo Telefonico"
    ADD CONSTRAINT equipo_pk PRIMARY KEY (id_producto_equipo);
 G   ALTER TABLE ONLY public."Equipo Telefonico" DROP CONSTRAINT equipo_pk;
       public            postgres    false    228            �           2606    25047    Fabricante fabricante_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public."Fabricante"
    ADD CONSTRAINT fabricante_pk PRIMARY KEY (id_fabricante);
 D   ALTER TABLE ONLY public."Fabricante" DROP CONSTRAINT fabricante_pk;
       public            postgres    false    231            �           2606    25049 $   Linea Telefonica linea_telefonica_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public."Linea Telefonica"
    ADD CONSTRAINT linea_telefonica_pk PRIMARY KEY (id_linea);
 P   ALTER TABLE ONLY public."Linea Telefonica" DROP CONSTRAINT linea_telefonica_pk;
       public            postgres    false    234            �           2606    25051    Llamada llamada_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public."Llamada"
    ADD CONSTRAINT llamada_pk PRIMARY KEY (id_plan_llamada);
 >   ALTER TABLE ONLY public."Llamada" DROP CONSTRAINT llamada_pk;
       public            postgres    false    236            �           2606    25053    Mensajeria mensajeria_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public."Mensajeria"
    ADD CONSTRAINT mensajeria_pk PRIMARY KEY (id_plan_mensajeria);
 D   ALTER TABLE ONLY public."Mensajeria" DROP CONSTRAINT mensajeria_pk;
       public            postgres    false    238            �           2606    25055    Navegacion navegacion_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public."Navegacion"
    ADD CONSTRAINT navegacion_pk PRIMARY KEY (id_plan_navegacion);
 D   ALTER TABLE ONLY public."Navegacion" DROP CONSTRAINT navegacion_pk;
       public            postgres    false    240            �           2606    25057    Persona persona_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT persona_pk PRIMARY KEY (id_persona);
 >   ALTER TABLE ONLY public."Persona" DROP CONSTRAINT persona_pk;
       public            postgres    false    242            �           2606    25059    Plan plan_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Plan"
    ADD CONSTRAINT plan_pk PRIMARY KEY (id_producto_plan);
 8   ALTER TABLE ONLY public."Plan" DROP CONSTRAINT plan_pk;
       public            postgres    false    243            �           2606    25074    Producto precio    CHECK CONSTRAINT     Y   ALTER TABLE public."Producto"
    ADD CONSTRAINT precio CHECK ((precio >= 0)) NOT VALID;
 6   ALTER TABLE public."Producto" DROP CONSTRAINT precio;
       public          postgres    false    245    245            �           2606    25061    Producto producto_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT producto_pk PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT producto_pk;
       public            postgres    false    245            �           2606    25063    Subplan subplan_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public."Subplan"
    ADD CONSTRAINT subplan_pk PRIMARY KEY (id_subplan, id_plan);
 >   ALTER TABLE ONLY public."Subplan" DROP CONSTRAINT subplan_pk;
       public            postgres    false    247    247            �           2606    25065 $   Telefonos Agente telefonos_agente_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public."Telefonos Agente"
    ADD CONSTRAINT telefonos_agente_pk PRIMARY KEY (telefono);
 P   ALTER TABLE ONLY public."Telefonos Agente" DROP CONSTRAINT telefonos_agente_pk;
       public            postgres    false    250            �           2606    25067 &   Telefonos Empresa telefonos_empresa_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public."Telefonos Empresa"
    ADD CONSTRAINT telefonos_empresa_pk PRIMARY KEY (telefono);
 R   ALTER TABLE ONLY public."Telefonos Empresa" DROP CONSTRAINT telefonos_empresa_pk;
       public            postgres    false    251            �           2606    25069    Trabaja trabaja_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public."Trabaja"
    ADD CONSTRAINT trabaja_pk PRIMARY KEY (fecha_contratacion);
 >   ALTER TABLE ONLY public."Trabaja" DROP CONSTRAINT trabaja_pk;
       public            postgres    false    252            �           2606    25087    Persona unique_email 
   CONSTRAINT     R   ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT unique_email UNIQUE (email);
 @   ALTER TABLE ONLY public."Persona" DROP CONSTRAINT unique_email;
       public            postgres    false    242            �           2606    25073    Contiene unique_linea_plan 
   CONSTRAINT     d   ALTER TABLE ONLY public."Contiene"
    ADD CONSTRAINT unique_linea_plan UNIQUE (id_linea, id_plan);
 F   ALTER TABLE ONLY public."Contiene" DROP CONSTRAINT unique_linea_plan;
       public            postgres    false    220    220            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     