toc.dat                                                                                             0000600 0004000 0002000 00000177555 14007246313 0014463 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       :    0                y            marche    13.1    13.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17635    marche    DATABASE     b   CREATE DATABASE marche WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE marche;
                postgres    false         �            1259    17667 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         �            1259    17665    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207         �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206         �            1259    17677    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         �            1259    17675    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209         �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208         �            1259    17659    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         �            1259    17657    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205         �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204         �            1259    17857    commandes_commande    TABLE     	  CREATE TABLE public.commandes_commande (
    id integer NOT NULL,
    prenom character varying(250) NOT NULL,
    nom character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    telephone character varying(12) NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    payement boolean NOT NULL,
    departement_id integer NOT NULL,
    quartier_id integer NOT NULL,
    utilisateur_id integer NOT NULL,
    indication character varying(250)
);
 &   DROP TABLE public.commandes_commande;
       public         heap    postgres    false         �            1259    17855    commandes_commande_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commandes_commande_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.commandes_commande_id_seq;
       public          postgres    false    225         �           0    0    commandes_commande_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.commandes_commande_id_seq OWNED BY public.commandes_commande.id;
          public          postgres    false    224         �            1259    17884    commandes_commandeitem    TABLE     �   CREATE TABLE public.commandes_commandeitem (
    id integer NOT NULL,
    prix integer NOT NULL,
    quantite integer NOT NULL,
    commande_id integer NOT NULL,
    produit_id integer NOT NULL
);
 *   DROP TABLE public.commandes_commandeitem;
       public         heap    postgres    false         �            1259    17882    commandes_commandeitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commandes_commandeitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.commandes_commandeitem_id_seq;
       public          postgres    false    231         �           0    0    commandes_commandeitem_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.commandes_commandeitem_id_seq OWNED BY public.commandes_commandeitem.id;
          public          postgres    false    230         �            1259    17868    commandes_departement    TABLE     p   CREATE TABLE public.commandes_departement (
    id integer NOT NULL,
    nom character varying(200) NOT NULL
);
 )   DROP TABLE public.commandes_departement;
       public         heap    postgres    false         �            1259    17866    commandes_departement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commandes_departement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.commandes_departement_id_seq;
       public          postgres    false    227         �           0    0    commandes_departement_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.commandes_departement_id_seq OWNED BY public.commandes_departement.id;
          public          postgres    false    226         �            1259    17876    commandes_quartier    TABLE       CREATE TABLE public.commandes_quartier (
    id integer NOT NULL,
    nom character varying(200) NOT NULL,
    prix_livraison integer NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    departement_id integer NOT NULL
);
 &   DROP TABLE public.commandes_quartier;
       public         heap    postgres    false         �            1259    17874    commandes_quartier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commandes_quartier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.commandes_quartier_id_seq;
       public          postgres    false    229         �           0    0    commandes_quartier_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.commandes_quartier_id_seq OWNED BY public.commandes_quartier.id;
          public          postgres    false    228         �            1259    17769    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false         �            1259    17767    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217         �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216         �            1259    17649    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         �            1259    17647    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203         �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202         �            1259    17638    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         �            1259    17636    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201         �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200         �            1259    17938    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         �            1259    17803    marche_categorie    TABLE     k  CREATE TABLE public.marche_categorie (
    id integer NOT NULL,
    nom character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    sup_categorie_id integer NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL
);
 $   DROP TABLE public.marche_categorie;
       public         heap    postgres    false         �            1259    17801    marche_categorie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marche_categorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marche_categorie_id_seq;
       public          postgres    false    221         �           0    0    marche_categorie_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marche_categorie_id_seq OWNED BY public.marche_categorie.id;
          public          postgres    false    220         �            1259    17929    marche_info    TABLE       CREATE TABLE public.marche_info (
    id integer NOT NULL,
    adresse character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    telephone character varying(30) NOT NULL,
    description text NOT NULL,
    for_business text NOT NULL,
    free_liv text NOT NULL
);
    DROP TABLE public.marche_info;
       public         heap    postgres    false         �            1259    17927    marche_coordonnees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marche_coordonnees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.marche_coordonnees_id_seq;
       public          postgres    false    233         �           0    0    marche_coordonnees_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.marche_coordonnees_id_seq OWNED BY public.marche_info.id;
          public          postgres    false    232         �            1259    17967    marche_homeslide    TABLE     �   CREATE TABLE public.marche_homeslide (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    lien character varying(20) NOT NULL,
    nom character varying(30) NOT NULL
);
 $   DROP TABLE public.marche_homeslide;
       public         heap    postgres    false         �            1259    17965    marche_homeslide_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marche_homeslide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marche_homeslide_id_seq;
       public          postgres    false    236         �           0    0    marche_homeslide_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marche_homeslide_id_seq OWNED BY public.marche_homeslide.id;
          public          postgres    false    235         �            1259    17813    marche_produit    TABLE     �  CREATE TABLE public.marche_produit (
    id integer NOT NULL,
    nom character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    image character varying(100) NOT NULL,
    provenance text NOT NULL,
    prix integer NOT NULL,
    unite character varying(30) NOT NULL,
    disponibilite boolean NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    categorie_id integer NOT NULL,
    stock integer
);
 "   DROP TABLE public.marche_produit;
       public         heap    postgres    false         �            1259    17811    marche_produit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marche_produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.marche_produit_id_seq;
       public          postgres    false    223         �           0    0    marche_produit_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.marche_produit_id_seq OWNED BY public.marche_produit.id;
          public          postgres    false    222         �            1259    17793    marche_supcategorie    TABLE     E  CREATE TABLE public.marche_supcategorie (
    id integer NOT NULL,
    nom character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL
);
 '   DROP TABLE public.marche_supcategorie;
       public         heap    postgres    false         �            1259    17791    marche_supcategorie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marche_supcategorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.marche_supcategorie_id_seq;
       public          postgres    false    219         �           0    0    marche_supcategorie_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.marche_supcategorie_id_seq OWNED BY public.marche_supcategorie.id;
          public          postgres    false    218         �            1259    17711 
   users_user    TABLE     6  CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    prenom character varying(150) NOT NULL,
    nom character varying(150) NOT NULL,
    telephone character varying(50) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone,
    is_cgu boolean NOT NULL,
    is_newsletter boolean NOT NULL,
    by_phone boolean NOT NULL
);
    DROP TABLE public.users_user;
       public         heap    postgres    false         �            1259    17724    users_user_groups    TABLE     �   CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false         �            1259    17722    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    213         �           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    212         �            1259    17709    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    211         �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          postgres    false    210         �            1259    17732    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false         �            1259    17730 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    215         �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    214         �           2604    17670    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207         �           2604    17680    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         �           2604    17662    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205         �           2604    17860    commandes_commande id    DEFAULT     ~   ALTER TABLE ONLY public.commandes_commande ALTER COLUMN id SET DEFAULT nextval('public.commandes_commande_id_seq'::regclass);
 D   ALTER TABLE public.commandes_commande ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225         �           2604    17887    commandes_commandeitem id    DEFAULT     �   ALTER TABLE ONLY public.commandes_commandeitem ALTER COLUMN id SET DEFAULT nextval('public.commandes_commandeitem_id_seq'::regclass);
 H   ALTER TABLE public.commandes_commandeitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231         �           2604    17871    commandes_departement id    DEFAULT     �   ALTER TABLE ONLY public.commandes_departement ALTER COLUMN id SET DEFAULT nextval('public.commandes_departement_id_seq'::regclass);
 G   ALTER TABLE public.commandes_departement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227         �           2604    17879    commandes_quartier id    DEFAULT     ~   ALTER TABLE ONLY public.commandes_quartier ALTER COLUMN id SET DEFAULT nextval('public.commandes_quartier_id_seq'::regclass);
 D   ALTER TABLE public.commandes_quartier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229         �           2604    17772    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217         �           2604    17652    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         �           2604    17641    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201         �           2604    17806    marche_categorie id    DEFAULT     z   ALTER TABLE ONLY public.marche_categorie ALTER COLUMN id SET DEFAULT nextval('public.marche_categorie_id_seq'::regclass);
 B   ALTER TABLE public.marche_categorie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221         �           2604    17970    marche_homeslide id    DEFAULT     z   ALTER TABLE ONLY public.marche_homeslide ALTER COLUMN id SET DEFAULT nextval('public.marche_homeslide_id_seq'::regclass);
 B   ALTER TABLE public.marche_homeslide ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236         �           2604    17932    marche_info id    DEFAULT     w   ALTER TABLE ONLY public.marche_info ALTER COLUMN id SET DEFAULT nextval('public.marche_coordonnees_id_seq'::regclass);
 =   ALTER TABLE public.marche_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233         �           2604    17816    marche_produit id    DEFAULT     v   ALTER TABLE ONLY public.marche_produit ALTER COLUMN id SET DEFAULT nextval('public.marche_produit_id_seq'::regclass);
 @   ALTER TABLE public.marche_produit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223         �           2604    17796    marche_supcategorie id    DEFAULT     �   ALTER TABLE ONLY public.marche_supcategorie ALTER COLUMN id SET DEFAULT nextval('public.marche_supcategorie_id_seq'::regclass);
 E   ALTER TABLE public.marche_supcategorie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219         �           2604    17714    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211         �           2604    17727    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213         �           2604    17735    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215         �          0    17667 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207       3226.dat �          0    17677    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209       3228.dat �          0    17659    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205       3224.dat �          0    17857    commandes_commande 
   TABLE DATA           �   COPY public.commandes_commande (id, prenom, nom, email, telephone, date_creation, date_maj, payement, departement_id, quartier_id, utilisateur_id, indication) FROM stdin;
    public          postgres    false    225       3244.dat �          0    17884    commandes_commandeitem 
   TABLE DATA           ]   COPY public.commandes_commandeitem (id, prix, quantite, commande_id, produit_id) FROM stdin;
    public          postgres    false    231       3250.dat �          0    17868    commandes_departement 
   TABLE DATA           8   COPY public.commandes_departement (id, nom) FROM stdin;
    public          postgres    false    227       3246.dat �          0    17876    commandes_quartier 
   TABLE DATA           n   COPY public.commandes_quartier (id, nom, prix_livraison, date_creation, date_maj, departement_id) FROM stdin;
    public          postgres    false    229       3248.dat �          0    17769    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217       3236.dat �          0    17649    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203       3222.dat �          0    17638    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201       3220.dat �          0    17938    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    234       3253.dat �          0    17803    marche_categorie 
   TABLE DATA           x   COPY public.marche_categorie (id, nom, slug, date_creation, date_maj, sup_categorie_id, image, description) FROM stdin;
    public          postgres    false    221       3240.dat �          0    17967    marche_homeslide 
   TABLE DATA           @   COPY public.marche_homeslide (id, image, lien, nom) FROM stdin;
    public          postgres    false    236       3255.dat �          0    17929    marche_info 
   TABLE DATA           i   COPY public.marche_info (id, adresse, email, telephone, description, for_business, free_liv) FROM stdin;
    public          postgres    false    233       3252.dat �          0    17813    marche_produit 
   TABLE DATA           �   COPY public.marche_produit (id, nom, slug, image, provenance, prix, unite, disponibilite, date_creation, date_maj, categorie_id, stock) FROM stdin;
    public          postgres    false    223       3242.dat �          0    17793    marche_supcategorie 
   TABLE DATA           i   COPY public.marche_supcategorie (id, nom, slug, date_creation, date_maj, image, description) FROM stdin;
    public          postgres    false    219       3238.dat �          0    17711 
   users_user 
   TABLE DATA           �   COPY public.users_user (id, password, is_superuser, email, prenom, nom, telephone, is_staff, is_active, date_joined, last_login, is_cgu, is_newsletter, by_phone) FROM stdin;
    public          postgres    false    211       3230.dat �          0    17724    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213       3232.dat �          0    17732    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215       3234.dat �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206         �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208         �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    204         �           0    0    commandes_commande_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.commandes_commande_id_seq', 1, false);
          public          postgres    false    224         �           0    0    commandes_commandeitem_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.commandes_commandeitem_id_seq', 1, false);
          public          postgres    false    230         �           0    0    commandes_departement_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.commandes_departement_id_seq', 2, true);
          public          postgres    false    226         �           0    0    commandes_quartier_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.commandes_quartier_id_seq', 3, true);
          public          postgres    false    228         �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 33, true);
          public          postgres    false    216         �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    202         �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);
          public          postgres    false    200         �           0    0    marche_categorie_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marche_categorie_id_seq', 3, true);
          public          postgres    false    220         �           0    0    marche_coordonnees_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.marche_coordonnees_id_seq', 1, true);
          public          postgres    false    232         �           0    0    marche_homeslide_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marche_homeslide_id_seq', 3, true);
          public          postgres    false    235         �           0    0    marche_produit_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.marche_produit_id_seq', 11, true);
          public          postgres    false    222         �           0    0    marche_supcategorie_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.marche_supcategorie_id_seq', 3, true);
          public          postgres    false    218         �           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public          postgres    false    212         �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);
          public          postgres    false    210         �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 56, true);
          public          postgres    false    214         �           2606    17707    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207         �           2606    17703 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209         �           2606    17682 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209         �           2606    17672    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207         �           2606    17689 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205         �           2606    17664 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205         �           2606    17865 *   commandes_commande commandes_commande_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.commandes_commande DROP CONSTRAINT commandes_commande_pkey;
       public            postgres    false    225         �           2606    17889 2   commandes_commandeitem commandes_commandeitem_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.commandes_commandeitem
    ADD CONSTRAINT commandes_commandeitem_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.commandes_commandeitem DROP CONSTRAINT commandes_commandeitem_pkey;
       public            postgres    false    231         �           2606    17873 0   commandes_departement commandes_departement_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.commandes_departement
    ADD CONSTRAINT commandes_departement_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.commandes_departement DROP CONSTRAINT commandes_departement_pkey;
       public            postgres    false    227         �           2606    17881 *   commandes_quartier commandes_quartier_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.commandes_quartier
    ADD CONSTRAINT commandes_quartier_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.commandes_quartier DROP CONSTRAINT commandes_quartier_pkey;
       public            postgres    false    229         �           2606    17778 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217         �           2606    17656 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203         �           2606    17654 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203         �           2606    17646 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201         �           2606    17945 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    234         �           2606    17808 &   marche_categorie marche_categorie_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marche_categorie
    ADD CONSTRAINT marche_categorie_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marche_categorie DROP CONSTRAINT marche_categorie_pkey;
       public            postgres    false    221         �           2606    17810 *   marche_categorie marche_categorie_slug_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.marche_categorie
    ADD CONSTRAINT marche_categorie_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.marche_categorie DROP CONSTRAINT marche_categorie_slug_key;
       public            postgres    false    221         �           2606    17937 #   marche_info marche_coordonnees_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.marche_info
    ADD CONSTRAINT marche_coordonnees_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.marche_info DROP CONSTRAINT marche_coordonnees_pkey;
       public            postgres    false    233         �           2606    17972 &   marche_homeslide marche_homeslide_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marche_homeslide
    ADD CONSTRAINT marche_homeslide_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marche_homeslide DROP CONSTRAINT marche_homeslide_pkey;
       public            postgres    false    236         �           2606    17821 "   marche_produit marche_produit_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.marche_produit
    ADD CONSTRAINT marche_produit_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.marche_produit DROP CONSTRAINT marche_produit_pkey;
       public            postgres    false    223         �           2606    17798 ,   marche_supcategorie marche_supcategorie_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.marche_supcategorie
    ADD CONSTRAINT marche_supcategorie_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.marche_supcategorie DROP CONSTRAINT marche_supcategorie_pkey;
       public            postgres    false    219         �           2606    17800 0   marche_supcategorie marche_supcategorie_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.marche_supcategorie
    ADD CONSTRAINT marche_supcategorie_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.marche_supcategorie DROP CONSTRAINT marche_supcategorie_slug_key;
       public            postgres    false    219         �           2606    17721    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public            postgres    false    211         �           2606    17729 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    213         �           2606    17750 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    213    213         �           2606    17719    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    211         �           2606    17737 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    215         �           2606    17764 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    215    215         �           1259    17708    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207         �           1259    17704 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209         �           1259    17705 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209         �           1259    17690 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205         �           1259    17908 *   commandes_commande_departement_id_9620ee2a    INDEX     s   CREATE INDEX commandes_commande_departement_id_9620ee2a ON public.commandes_commande USING btree (departement_id);
 >   DROP INDEX public.commandes_commande_departement_id_9620ee2a;
       public            postgres    false    225         �           1259    17914 '   commandes_commande_quartier_id_f27f4839    INDEX     m   CREATE INDEX commandes_commande_quartier_id_f27f4839 ON public.commandes_commande USING btree (quartier_id);
 ;   DROP INDEX public.commandes_commande_quartier_id_f27f4839;
       public            postgres    false    225         �           1259    17920 *   commandes_commande_utilisateur_id_b0836e6f    INDEX     s   CREATE INDEX commandes_commande_utilisateur_id_b0836e6f ON public.commandes_commande USING btree (utilisateur_id);
 >   DROP INDEX public.commandes_commande_utilisateur_id_b0836e6f;
       public            postgres    false    225         �           1259    17906 +   commandes_commandeitem_commande_id_d205fd3b    INDEX     u   CREATE INDEX commandes_commandeitem_commande_id_d205fd3b ON public.commandes_commandeitem USING btree (commande_id);
 ?   DROP INDEX public.commandes_commandeitem_commande_id_d205fd3b;
       public            postgres    false    231         �           1259    17907 *   commandes_commandeitem_produit_id_113fe835    INDEX     s   CREATE INDEX commandes_commandeitem_produit_id_113fe835 ON public.commandes_commandeitem USING btree (produit_id);
 >   DROP INDEX public.commandes_commandeitem_produit_id_113fe835;
       public            postgres    false    231         �           1259    17895 *   commandes_quartier_departement_id_92c1d7cf    INDEX     s   CREATE INDEX commandes_quartier_departement_id_92c1d7cf ON public.commandes_quartier USING btree (departement_id);
 >   DROP INDEX public.commandes_quartier_departement_id_92c1d7cf;
       public            postgres    false    229         �           1259    17789 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217         �           1259    17790 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217         �           1259    17947 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    234         �           1259    17946 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    234         �           1259    17830    marche_categorie_nom_50d88a96    INDEX     Y   CREATE INDEX marche_categorie_nom_50d88a96 ON public.marche_categorie USING btree (nom);
 1   DROP INDEX public.marche_categorie_nom_50d88a96;
       public            postgres    false    221         �           1259    17831 "   marche_categorie_nom_50d88a96_like    INDEX     r   CREATE INDEX marche_categorie_nom_50d88a96_like ON public.marche_categorie USING btree (nom varchar_pattern_ops);
 6   DROP INDEX public.marche_categorie_nom_50d88a96_like;
       public            postgres    false    221         �           1259    17832 #   marche_categorie_slug_337e5076_like    INDEX     t   CREATE INDEX marche_categorie_slug_337e5076_like ON public.marche_categorie USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.marche_categorie_slug_337e5076_like;
       public            postgres    false    221         �           1259    17833 *   marche_categorie_sup_categorie_id_2b41cada    INDEX     s   CREATE INDEX marche_categorie_sup_categorie_id_2b41cada ON public.marche_categorie USING btree (sup_categorie_id);
 >   DROP INDEX public.marche_categorie_sup_categorie_id_2b41cada;
       public            postgres    false    221         �           1259    17843 $   marche_produit_categorie_id_5580fff0    INDEX     g   CREATE INDEX marche_produit_categorie_id_5580fff0 ON public.marche_produit USING btree (categorie_id);
 8   DROP INDEX public.marche_produit_categorie_id_5580fff0;
       public            postgres    false    223         �           1259    17844 #   marche_produit_id_slug_6c87193b_idx    INDEX     b   CREATE INDEX marche_produit_id_slug_6c87193b_idx ON public.marche_produit USING btree (id, slug);
 7   DROP INDEX public.marche_produit_id_slug_6c87193b_idx;
       public            postgres    false    223    223         �           1259    17839    marche_produit_nom_0a7c9cb6    INDEX     U   CREATE INDEX marche_produit_nom_0a7c9cb6 ON public.marche_produit USING btree (nom);
 /   DROP INDEX public.marche_produit_nom_0a7c9cb6;
       public            postgres    false    223         �           1259    17840     marche_produit_nom_0a7c9cb6_like    INDEX     n   CREATE INDEX marche_produit_nom_0a7c9cb6_like ON public.marche_produit USING btree (nom varchar_pattern_ops);
 4   DROP INDEX public.marche_produit_nom_0a7c9cb6_like;
       public            postgres    false    223         �           1259    17841    marche_produit_slug_703d88ac    INDEX     W   CREATE INDEX marche_produit_slug_703d88ac ON public.marche_produit USING btree (slug);
 0   DROP INDEX public.marche_produit_slug_703d88ac;
       public            postgres    false    223         �           1259    17842 !   marche_produit_slug_703d88ac_like    INDEX     p   CREATE INDEX marche_produit_slug_703d88ac_like ON public.marche_produit USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.marche_produit_slug_703d88ac_like;
       public            postgres    false    223         �           1259    17822     marche_supcategorie_nom_7cbc7f32    INDEX     _   CREATE INDEX marche_supcategorie_nom_7cbc7f32 ON public.marche_supcategorie USING btree (nom);
 4   DROP INDEX public.marche_supcategorie_nom_7cbc7f32;
       public            postgres    false    219         �           1259    17823 %   marche_supcategorie_nom_7cbc7f32_like    INDEX     x   CREATE INDEX marche_supcategorie_nom_7cbc7f32_like ON public.marche_supcategorie USING btree (nom varchar_pattern_ops);
 9   DROP INDEX public.marche_supcategorie_nom_7cbc7f32_like;
       public            postgres    false    219         �           1259    17824 &   marche_supcategorie_slug_46754e5e_like    INDEX     z   CREATE INDEX marche_supcategorie_slug_46754e5e_like ON public.marche_supcategorie USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.marche_supcategorie_slug_46754e5e_like;
       public            postgres    false    219         �           1259    17738    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    211         �           1259    17752 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    213         �           1259    17751 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    213         �           1259    17766 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    215         �           1259    17765 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    215                    2606    17697 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2994    205    209                    2606    17692 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    2999                     2606    17683 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2989    205    203                    2606    17909 J   commandes_commande commandes_commande_departement_id_9620ee2a_fk_commandes    FK CONSTRAINT     �   ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_departement_id_9620ee2a_fk_commandes FOREIGN KEY (departement_id) REFERENCES public.commandes_departement(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.commandes_commande DROP CONSTRAINT commandes_commande_departement_id_9620ee2a_fk_commandes;
       public          postgres    false    227    225    3056                    2606    17915 G   commandes_commande commandes_commande_quartier_id_f27f4839_fk_commandes    FK CONSTRAINT     �   ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_quartier_id_f27f4839_fk_commandes FOREIGN KEY (quartier_id) REFERENCES public.commandes_quartier(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.commandes_commande DROP CONSTRAINT commandes_commande_quartier_id_f27f4839_fk_commandes;
       public          postgres    false    225    3059    229                    2606    17921 N   commandes_commande commandes_commande_utilisateur_id_b0836e6f_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_utilisateur_id_b0836e6f_fk_users_user_id FOREIGN KEY (utilisateur_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.commandes_commande DROP CONSTRAINT commandes_commande_utilisateur_id_b0836e6f_fk_users_user_id;
       public          postgres    false    211    3010    225                    2606    17896 M   commandes_commandeitem commandes_commandeit_commande_id_d205fd3b_fk_commandes    FK CONSTRAINT     �   ALTER TABLE ONLY public.commandes_commandeitem
    ADD CONSTRAINT commandes_commandeit_commande_id_d205fd3b_fk_commandes FOREIGN KEY (commande_id) REFERENCES public.commandes_commande(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.commandes_commandeitem DROP CONSTRAINT commandes_commandeit_commande_id_d205fd3b_fk_commandes;
       public          postgres    false    225    3052    231                    2606    17901 V   commandes_commandeitem commandes_commandeitem_produit_id_113fe835_fk_marche_produit_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.commandes_commandeitem
    ADD CONSTRAINT commandes_commandeitem_produit_id_113fe835_fk_marche_produit_id FOREIGN KEY (produit_id) REFERENCES public.marche_produit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.commandes_commandeitem DROP CONSTRAINT commandes_commandeitem_produit_id_113fe835_fk_marche_produit_id;
       public          postgres    false    3047    231    223                    2606    17890 J   commandes_quartier commandes_quartier_departement_id_92c1d7cf_fk_commandes    FK CONSTRAINT     �   ALTER TABLE ONLY public.commandes_quartier
    ADD CONSTRAINT commandes_quartier_departement_id_92c1d7cf_fk_commandes FOREIGN KEY (departement_id) REFERENCES public.commandes_departement(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.commandes_quartier DROP CONSTRAINT commandes_quartier_departement_id_92c1d7cf_fk_commandes;
       public          postgres    false    3056    227    229                    2606    17779 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2989    217    203                    2606    17784 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    217    211    3010         	           2606    17825 H   marche_categorie marche_categorie_sup_categorie_id_2b41cada_fk_marche_su    FK CONSTRAINT     �   ALTER TABLE ONLY public.marche_categorie
    ADD CONSTRAINT marche_categorie_sup_categorie_id_2b41cada_fk_marche_su FOREIGN KEY (sup_categorie_id) REFERENCES public.marche_supcategorie(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.marche_categorie DROP CONSTRAINT marche_categorie_sup_categorie_id_2b41cada_fk_marche_su;
       public          postgres    false    3030    219    221         
           2606    17834 J   marche_produit marche_produit_categorie_id_5580fff0_fk_marche_categorie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.marche_produit
    ADD CONSTRAINT marche_produit_categorie_id_5580fff0_fk_marche_categorie_id FOREIGN KEY (categorie_id) REFERENCES public.marche_categorie(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.marche_produit DROP CONSTRAINT marche_produit_categorie_id_5580fff0_fk_marche_categorie_id;
       public          postgres    false    223    3037    221                    2606    17744 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    2999    207    213                    2606    17739 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          postgres    false    3010    211    213                    2606    17758 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    215    205    2994                    2606    17753 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          postgres    false    211    3010    215                                                                                                                                                           3226.dat                                                                                            0000600 0004000 0002000 00000000005 14007246313 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3228.dat                                                                                            0000600 0004000 0002000 00000000005 14007246313 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3224.dat                                                                                            0000600 0004000 0002000 00000004522 14007246313 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add supcategories	6	add_supcategorie
22	Can change supcategories	6	change_supcategorie
23	Can delete supcategories	6	delete_supcategorie
24	Can view supcategories	6	view_supcategorie
25	Can add categorie	7	add_categorie
26	Can change categorie	7	change_categorie
27	Can delete categorie	7	delete_categorie
28	Can view categorie	7	view_categorie
29	Can add produit	8	add_produit
30	Can change produit	8	change_produit
31	Can delete produit	8	delete_produit
32	Can view produit	8	view_produit
33	Can add info	9	add_info
34	Can change info	9	change_info
35	Can delete info	9	delete_info
36	Can view info	9	view_info
37	Can add commande	10	add_commande
38	Can change commande	10	change_commande
39	Can delete commande	10	delete_commande
40	Can view commande	10	view_commande
41	Can add departement	11	add_departement
42	Can change departement	11	change_departement
43	Can delete departement	11	delete_departement
44	Can view departement	11	view_departement
45	Can add quartier	12	add_quartier
46	Can change quartier	12	change_quartier
47	Can delete quartier	12	delete_quartier
48	Can view quartier	12	view_quartier
49	Can add commande item	13	add_commandeitem
50	Can change commande item	13	change_commandeitem
51	Can delete commande item	13	delete_commandeitem
52	Can view commande item	13	view_commandeitem
53	Can add user	14	add_user
54	Can change user	14	change_user
55	Can delete user	14	delete_user
56	Can view user	14	view_user
57	Can add homeslide	15	add_homeslide
58	Can change homeslide	15	change_homeslide
59	Can delete homeslide	15	delete_homeslide
60	Can view homeslide	15	view_homeslide
\.


                                                                                                                                                                              3244.dat                                                                                            0000600 0004000 0002000 00000000005 14007246313 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3250.dat                                                                                            0000600 0004000 0002000 00000000005 14007246313 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3246.dat                                                                                            0000600 0004000 0002000 00000000025 14007246313 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dakar
2	Mbour
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3248.dat                                                                                            0000600 0004000 0002000 00000000351 14007246313 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dakar Plateau	500	2021-01-22 23:52:06.608151+01	2021-01-22 23:52:06.608151+01	1
2	Almadies	0	2021-01-22 23:52:24.794863+01	2021-01-22 23:52:24.794863+01	1
3	Saly	500	2021-01-22 23:54:00.00864+01	2021-01-22 23:54:00.00864+01	2
\.


                                                                                                                                                                                                                                                                                       3236.dat                                                                                            0000600 0004000 0002000 00000004722 14007246313 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2020-12-27 17:18:19.761244+01	4	diattaseydi92@hotmail.fr	2	[{"changed": {"fields": ["user_permissions"]}}]	14	1
2	2020-12-27 17:18:44.044274+01	4	diattaseydi92@hotmail.fr	2	[{"changed": {"fields": ["user_permissions"]}}]	14	1
3	2020-12-27 17:19:12.040129+01	4	diattaseydi92@hotmail.fr	2	[{"changed": {"fields": ["user_permissions"]}}]	14	1
4	2020-12-28 23:24:36.593234+01	1	légumes	1	[{"added": {}}]	6	1
5	2020-12-28 23:25:14.770965+01	1	légumes classiques	1	[{"added": {}}]	7	1
6	2020-12-28 23:28:02.874264+01	1	Carottes	1	[{"added": {}}]	8	1
7	2020-12-29 00:55:34.146903+01	1	Légumes	2	[{"changed": {"fields": ["nom"]}}]	6	1
8	2020-12-29 00:56:14.430927+01	1	Légumes classiques	2	[{"changed": {"fields": ["nom"]}}]	7	1
9	2021-01-06 15:40:36.780075+01	2	Patate douce	1	[{"added": {}}]	8	1
10	2021-01-06 15:46:11.957141+01	3	Tomates	1	[{"added": {}}]	8	1
11	2021-01-06 15:46:48.693037+01	4	Tomates fraîches	1	[{"added": {}}]	8	1
12	2021-01-06 15:47:29.855649+01	5	OIgnons rouges locaux	1	[{"added": {}}]	8	1
13	2021-01-06 15:48:07.220616+01	6	Citrouille	1	[{"added": {}}]	8	1
14	2021-01-06 15:48:42.779933+01	7	Manioc	1	[{"added": {}}]	8	1
15	2021-01-06 16:24:32.346427+01	2	Poissons	1	[{"added": {}}]	6	1
16	2021-01-06 16:25:42.939566+01	2	Poissons frais	1	[{"added": {}}]	7	1
17	2021-01-06 16:26:26.480713+01	8	Yiteunte	1	[{"added": {}}]	8	1
18	2021-01-09 19:24:37.733891+01	9	Thiof	1	[{"added": {}}]	8	1
19	2021-01-21 23:54:22.745137+01	1	Info object (1)	1	[{"added": {}}]	9	1
20	2021-01-21 23:57:48.122621+01	1	Info object (1)	2	[{"changed": {"fields": ["free_liv"]}}]	9	1
21	2021-01-22 23:23:55.596409+01	3	Fruits	1	[{"added": {}}]	6	1
22	2021-01-22 23:24:36.010766+01	3	Fruits exotiques	1	[{"added": {}}]	7	1
23	2021-01-22 23:27:46.591164+01	10	Orange	1	[{"added": {}}]	8	1
24	2021-01-22 23:28:16.041205+01	11	Mangues	1	[{"added": {}}]	8	1
25	2021-01-22 23:51:01.278072+01	1	Dakar	1	[{"added": {}}]	11	1
26	2021-01-22 23:52:06.621024+01	1	Dakar Plateau	1	[{"added": {}}]	12	1
27	2021-01-22 23:52:24.796857+01	2	Almadies	1	[{"added": {}}]	12	1
28	2021-01-22 23:53:35.426626+01	2	Mbour	1	[{"added": {}}]	11	1
29	2021-01-22 23:54:00.011494+01	3	Saly	1	[{"added": {}}]	12	1
30	2021-01-25 23:50:36.420183+01	1	Les légumes	2	[{"changed": {"fields": ["nom"]}}]	6	1
31	2021-01-26 23:40:07.638269+01	1	Homeslide object (1)	1	[{"added": {}}]	15	1
32	2021-01-26 23:40:46.639836+01	2	Homeslide object (2)	1	[{"added": {}}]	15	1
33	2021-02-05 00:59:48.293682+01	3	Homeslide object (3)	1	[{"added": {}}]	15	1
\.


                                              3222.dat                                                                                            0000600 0004000 0002000 00000000454 14007246313 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	marche	supcategorie
7	marche	categorie
8	marche	produit
9	marche	info
10	commandes	commande
11	commandes	departement
12	commandes	quartier
13	commandes	commandeitem
14	users	user
15	marche	homeslide
\.


                                                                                                                                                                                                                    3220.dat                                                                                            0000600 0004000 0002000 00000004401 14007246313 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2020-12-25 21:09:28.765466+01
2	contenttypes	0002_remove_content_type_name	2020-12-25 21:09:28.781192+01
3	auth	0001_initial	2020-12-25 21:09:28.82217+01
4	auth	0002_alter_permission_name_max_length	2020-12-25 21:09:28.879198+01
5	auth	0003_alter_user_email_max_length	2020-12-25 21:09:28.888096+01
6	auth	0004_alter_user_username_opts	2020-12-25 21:09:28.905929+01
7	auth	0005_alter_user_last_login_null	2020-12-25 21:09:28.921359+01
8	auth	0006_require_contenttypes_0002	2020-12-25 21:09:28.924909+01
9	auth	0007_alter_validators_add_error_messages	2020-12-25 21:09:28.93356+01
10	auth	0008_alter_user_username_max_length	2020-12-25 21:09:28.952031+01
11	auth	0009_alter_user_last_name_max_length	2020-12-25 21:09:28.958802+01
12	auth	0010_alter_group_name_max_length	2020-12-25 21:09:28.974113+01
13	auth	0011_update_proxy_permissions	2020-12-25 21:09:28.986356+01
14	users	0001_initial	2020-12-25 21:09:29.039424+01
15	admin	0001_initial	2020-12-25 21:09:29.109001+01
16	admin	0002_logentry_remove_auto_add	2020-12-25 21:09:29.138949+01
17	admin	0003_logentry_add_action_flag_choices	2020-12-25 21:09:29.15293+01
18	marche	0001_initial	2020-12-25 21:09:29.21041+01
19	marche	0002_auto_20201129_2346	2020-12-25 21:09:29.303252+01
20	marche	0003_auto_20201201_2346	2020-12-25 21:09:29.317814+01
21	marche	0004_auto_20201201_2349	2020-12-25 21:09:29.345583+01
22	marche	0005_auto_20201203_1639	2020-12-25 21:09:29.358211+01
23	commandes	0001_initial	2020-12-25 21:09:29.447508+01
24	commandes	0002_auto_20201216_2327	2020-12-25 21:09:29.531211+01
25	marche	0006_produit_stock	2020-12-25 21:09:29.540878+01
26	marche	0007_auto_20201219_1423	2020-12-25 21:09:29.549947+01
27	marche	0008_coordonnees	2020-12-25 21:09:29.579748+01
28	marche	0009_auto_20201221_1514	2020-12-25 21:09:29.611679+01
29	marche	0010_auto_20201221_1536	2020-12-25 21:09:29.640093+01
30	sessions	0001_initial	2020-12-25 21:09:29.657671+01
31	users	0002_auto_20201227_0205	2020-12-27 02:05:30.419097+01
32	users	0003_user_by_phone	2020-12-27 21:44:06.556938+01
33	users	0004_auto_20201227_2152	2020-12-27 21:53:00.028658+01
34	users	0005_auto_20201227_2153	2020-12-27 21:53:58.438845+01
35	marche	0011_homeslide	2021-01-26 23:16:48.505467+01
36	marche	0012_homeslide_nom	2021-01-26 23:37:58.211136+01
\.


                                                                                                                                                                                                                                                               3253.dat                                                                                            0000600 0004000 0002000 00000033272 14007246313 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        l0lhksdc2tm8usyiwr5rv4dvhhi64m2s	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-02-13 01:12:04.398458+01
qmrlfh6gwym01jallazzb2qki7cjt3me	Mjk2NDY0YjMwNzZjMWQ3MWIyZjg1M2RiYjk4YjVlZGRmNjMxZjlmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMTEzNzg1OWQ1OWFiMDkxNzQwMTNlMjI0Y2I1ZDEyYjVhNDU5YTliIn0=	2021-01-08 21:13:08.815733+01
zxqhluw19snv9bcv8zsohypbsrxkuigc	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-02-06 00:13:48.188385+01
ht9sektcohrwg75kkoju3juyvfp01xmo	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-01-09 13:38:31.28325+01
uaot8vnkbw7lnhuigl13mvczy5rt9jqo	ZDZhZjA3NjJkYWM2Njc0ZDRhNzVlZWYwZTEwMzVjZjUxOTMzMDI5Zjp7ImNhcnQiOnt9LCJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiI1bmMtNTViYWU3Nzc4N2FiODVjZmVhZDUifQ==	2021-01-30 21:17:59.674293+01
jntydgdhsbj0b9goj62rrafwmji4rg65	ZTZhZjkzY2E4NDYwMzY0ZWVlYjM5NzE5NjI0N2Y5MWI5MzQ2NzM5YTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGY2OWMyNzA2MDZkNjM1ZjU1ZmM0Y2VlMmI3ZWJmZTU1Yzc1MDA4MCJ9	2021-01-12 22:20:00.391391+01
nycc90khre0arbzcsi8wdg46tzm7k2s5	ZTZhZjkzY2E4NDYwMzY0ZWVlYjM5NzE5NjI0N2Y5MWI5MzQ2NzM5YTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGY2OWMyNzA2MDZkNjM1ZjU1ZmM0Y2VlMmI3ZWJmZTU1Yzc1MDA4MCJ9	2021-01-09 21:45:45.080272+01
ja1iavgax6dth2coemt94fx2mh90aou0	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-01-12 22:23:52.228964+01
dfn2i567t4a1s44p5peqtydypr9pjo4g	MmFiMmNiNTk4OTI4OWM2MzNjYWQzNGM4NDExOGM1NDdhYjQ4MDk3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjY5YzI3MDYwNmQ2MzVmNTVmYzRjZWUyYjdlYmZlNTVjNzUwMDgwIn0=	2021-01-10 17:11:42.274235+01
6tvlbum6h8e56fk91gulbkcyydzz5xga	ODhmYWEwMzNmZDRjNDZjMjAwNDYxZGQzNjQ4NmE3NGQzYTVlMDc0OTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg3MDAxNmM1ZTFhNGQwYjAzOWQyZDI3NTQ4MDA3MzcyYjY2MjMxZiJ9	2021-01-23 02:26:19.549844+01
kczy1gy72nk6hdsjlzbrzmgzwnve1s6o	MmFiMmNiNTk4OTI4OWM2MzNjYWQzNGM4NDExOGM1NDdhYjQ4MDk3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjY5YzI3MDYwNmQ2MzVmNTVmYzRjZWUyYjdlYmZlNTVjNzUwMDgwIn0=	2021-01-10 17:16:41.538415+01
low1j8yw3e4xdjljgsccoh0du1gkw7io	ZTZhZjkzY2E4NDYwMzY0ZWVlYjM5NzE5NjI0N2Y5MWI5MzQ2NzM5YTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGY2OWMyNzA2MDZkNjM1ZjU1ZmM0Y2VlMmI3ZWJmZTU1Yzc1MDA4MCJ9	2021-01-12 23:27:16.867077+01
xrc2ju96q39mby65jpny1jgtm11385qr	MmFiMmNiNTk4OTI4OWM2MzNjYWQzNGM4NDExOGM1NDdhYjQ4MDk3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjY5YzI3MDYwNmQ2MzVmNTVmYzRjZWUyYjdlYmZlNTVjNzUwMDgwIn0=	2021-01-10 17:19:39.681386+01
peztgb9p4uert73py7xrvaky8m548u32	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-01-12 23:27:33.068288+01
fw1vewpkgf7sbpd0e9aqb9fj6mrtn86p	MmFiMmNiNTk4OTI4OWM2MzNjYWQzNGM4NDExOGM1NDdhYjQ4MDk3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjY5YzI3MDYwNmQ2MzVmNTVmYzRjZWUyYjdlYmZlNTVjNzUwMDgwIn0=	2021-01-10 22:25:27.280584+01
qycnzamndrhgksqbfgnghukhma9smlm9	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-01-29 04:30:43.480814+01
qs4ji8o5mn937y4djsg3mdvpu7a4fijt	ZTZhZjkzY2E4NDYwMzY0ZWVlYjM5NzE5NjI0N2Y5MWI5MzQ2NzM5YTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGY2OWMyNzA2MDZkNjM1ZjU1ZmM0Y2VlMmI3ZWJmZTU1Yzc1MDA4MCJ9	2021-01-11 03:22:08.273512+01
be8tmaivdli8tbcah02k2ry6gqvjt6jd	ZTZhZjkzY2E4NDYwMzY0ZWVlYjM5NzE5NjI0N2Y5MWI5MzQ2NzM5YTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGY2OWMyNzA2MDZkNjM1ZjU1ZmM0Y2VlMmI3ZWJmZTU1Yzc1MDA4MCJ9	2021-01-13 03:15:53.34391+01
hv2d4b7hdspzm567hbqr1v3sbrttobz9	ZTZhZjkzY2E4NDYwMzY0ZWVlYjM5NzE5NjI0N2Y5MWI5MzQ2NzM5YTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGY2OWMyNzA2MDZkNjM1ZjU1ZmM0Y2VlMmI3ZWJmZTU1Yzc1MDA4MCJ9	2021-01-13 11:52:14.55941+01
2tawyiob9evk1eys22oqj6by6sfwok6k	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-01-29 03:06:23.231256+01
eenuy3avpiqrxlphpmchso3mio13dpkl	ZWQ1NjYxY2U5YjY1MjQyNGY3ZDUwYTJhZDg1ZDg4YjJkMzU4YTczNDp7ImNhcnQiOnt9LCJfbWVzc2FnZXMiOiJbW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl1dIn0=	2021-01-14 00:26:41.28197+01
wgftxwci1stp0zvz0bcx5msxlcmcu6jq	ZDAyNWM3NDkzNzIxZjk5NTNmZTJiOTQ5NWE4NTA4YjU1OWVjZTA2OTp7Il9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXV0ifQ==	2021-01-14 00:29:15.760027+01
hjukfdoqa98tfn760azieo7qdxy5rk1q	ZWNhYmM5NzJjNjE2MmM1NjMwNmI2ZjBlZjRmZGUyMzEwMjZkZDkxZDp7ImNhcnQiOnsiMTEiOnsicXVhbnRpdGUiOjQ1LCJwcml4Ijo1MDB9LCI5Ijp7InF1YW50aXRlIjo0NCwicHJpeCI6NTAwfSwiMyI6eyJxdWFudGl0ZSI6MjAsInByaXgiOjUwMH0sIjEiOnsicXVhbnRpdGUiOjEyLCJwcml4Ijo1MDB9LCIyIjp7InF1YW50aXRlIjozNywicHJpeCI6NTAwfSwiNCI6eyJxdWFudGl0ZSI6MTIsInByaXgiOjc1MH0sIjUiOnsicXVhbnRpdGUiOjExLCJwcml4Ijo1MDB9LCI4Ijp7InF1YW50aXRlIjoyLCJwcml4IjoyNTAwfSwiNiI6eyJxdWFudGl0ZSI6NCwicHJpeCI6IjUwMCJ9fSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijc4NzAwMTZjNWUxYTRkMGIwMzlkMmQyNzU0ODAwNzM3MmI2NjIzMWYifQ==	2021-02-19 13:59:57.17944+01
qg4opd23a4p6twlfvkj501e96xjig571	ZmQ5YmFlOGFhNTMzMGVmMmNkNzEzN2FlNGVlMmVhMTM0OWViMjYzNDp7ImNhcnQiOnsiNSI6eyJxdWFudGl0ZSI6MzksInByaXgiOjUwMH0sIjYiOnsicXVhbnRpdGUiOjEsInByaXgiOjUwMH19LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg3MDAxNmM1ZTFhNGQwYjAzOWQyZDI3NTQ4MDA3MzcyYjY2MjMxZiJ9	2021-02-05 00:07:17.021574+01
qr9td69hhin15x71l53axg2989x6gh2y	NzI1OWRjZGYwYzgzMDFkZGU5ZTNlZWE4ZGNhNDRkNWU0NjgzYmEwMzp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQzODA4NjViNDExNmEzM2Y2NGI5M2JiMzUyN2UzNzgxYjczMzIzMWYifQ==	2021-01-20 16:38:58.571877+01
kk1ov4brl09xaywvjxi3s41sj8h4zi8c	ZTg3YmQwYzk2Yjc3NDA2N2ZkMmFiZjZmOGMxMTQyNGM4MmMwMGU1OTp7ImNhcnQiOnsiMiI6eyJxdWFudGl0ZSI6NCwicHJpeCI6NTAwfX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjY5YzI3MDYwNmQ2MzVmNTVmYzRjZWUyYjdlYmZlNTVjNzUwMDgwIn0=	2021-01-21 17:28:54.626815+01
rivzqe4vmf46xr096254jtp5nsayhlpk	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-02-01 03:59:35.3056+01
pklo22mewwbvv2zj8ygagz8x53etffjm	NjE3OTFhZGI2NDM0NGNmMzA3NTU1NGFiMGU3YjQyY2NiOGM2NjgyYzp7ImNhcnQiOnt9fQ==	2021-02-01 21:00:18.588628+01
pkpofjmjm0huw28eg4v8y035dw9a1nhm	MTMzYmM4NzljMWJiNGY4YzljYTdiMmE3ZTkxODBmOTA5ZDZkZDg3MTp7ImNhcnQiOnt9LCJfbWVzc2FnZXMiOiJbW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJJbnZhbGlkIHVzZXJuYW1lIG9yIHBhc3N3b3JkLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIkludmFsaWQgdXNlcm5hbWUgb3IgcGFzc3dvcmQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlBsZWFzZSBjb3JyZWN0IHRoZSBlcnJvciBiZWxvdy5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiSW52YWxpZCB1c2VybmFtZSBvciBwYXNzd29yZC5cIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiUGxlYXNlIGNvcnJlY3QgdGhlIGVycm9yIGJlbG93LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJQbGVhc2UgY29ycmVjdCB0aGUgZXJyb3IgYmVsb3cuXCJdXSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjY5YzI3MDYwNmQ2MzVmNTVmYzRjZWUyYjdlYmZlNTVjNzUwMDgwIn0=	2021-01-14 02:39:49.194784+01
\.


                                                                                                                                                                                                                                                                                                                                      3240.dat                                                                                            0000600 0004000 0002000 00000000541 14007246313 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Légumes classiques	legumes-classiques	2020-12-28 23:25:14.768967+01	2020-12-29 00:56:14.428934+01	1		Les légumes classiques
2	Poissons frais	poissons-frais	2021-01-06 16:25:42.935422+01	2021-01-06 16:25:42.935422+01	2		Poissons ....
3	Fruits exotiques	fruits-exotiques	2021-01-22 23:24:36.007776+01	2021-01-22 23:24:36.007776+01	3		Fruits exot
\.


                                                                                                                                                               3255.dat                                                                                            0000600 0004000 0002000 00000000230 14007246313 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	homeslide/21/01/26/baykaat.jpg	legumes	maraichage
2	homeslide/21/01/26/baykaat_6KHINnV.jpg	peches	Peche
3	homeslide/21/02/05/bay.jpg	promo	Promo
\.


                                                                                                                                                                                                                                                                                                                                                                        3252.dat                                                                                            0000600 0004000 0002000 00000001425 14007246313 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dakar	samamarche@samamarche.com	+777777777	Samamarche est un site de vente spécialisé dans.....3	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur ante ante, a scelerisque turpis semper id. In dictum lorem et arcu fringilla, et volutpat purus aliquet. Donec vitae ipsum viverra, tincidunt magna a, lobortis orci. Quisque dictum, massa ut egestas placerat, magna est lacinia dui, ac efficitur tellus felis ut lacus. Aliquam eget lorem velit. Quisque at volutpat eros. Proin eleifend, neque sed euismod auctor, arcu nulla euismod nulla, eget imperdiet sapien diam eu neque. In tristique sit amet sapien sit amet tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;	Livraison gratuite aux almadies cette semaine
\.


                                                                                                                                                                                                                                           3242.dat                                                                                            0000600 0004000 0002000 00000002306 14007246313 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Carottes	carottes		Sénégal	500	le kilo	t	2020-12-28 23:28:02.866323+01	2020-12-28 23:28:02.866323+01	1	1
2	Patate douce	patate-douce		Sénégal	500	le kilo	t	2021-01-06 15:40:36.763886+01	2021-01-06 15:40:36.763886+01	1	1
3	Tomates	tomates		Senegal	500	le kilo	t	2021-01-06 15:46:11.952919+01	2021-01-06 15:46:11.952919+01	1	1
4	Tomates fraîches	tomates-fraiches		Sénégal	750	le kilo	t	2021-01-06 15:46:48.689075+01	2021-01-06 15:46:48.689075+01	1	1
5	OIgnons rouges locaux	oignons-rouges-locaux		Sénégal	500	le kilo	t	2021-01-06 15:47:29.853656+01	2021-01-06 15:47:29.853656+01	1	1
6	Citrouille	citrouille		Sénégal	500	le kilo	t	2021-01-06 15:48:07.218466+01	2021-01-06 15:48:07.218466+01	1	1
7	Manioc	manioc		Sénégal	500	le kilo	t	2021-01-06 15:48:42.777325+01	2021-01-06 15:48:42.777325+01	1	1
8	Yiteunte	yiteunte			2500		t	2021-01-06 16:26:26.477736+01	2021-01-06 16:26:26.477736+01	2	1
9	Thiof	thiof		Sénégal	500	le kilo	t	2021-01-09 19:24:37.708907+01	2021-01-09 19:24:37.708907+01	2	1
10	Orange	orange		Sénégal	500	le kilo	t	2021-01-22 23:27:46.576852+01	2021-01-22 23:27:46.576852+01	3	1
11	Mangues	mangues		Maroc	500	le kilo	t	2021-01-22 23:28:16.040209+01	2021-01-22 23:28:16.040209+01	3	1
\.


                                                                                                                                                                                                                                                                                                                          3238.dat                                                                                            0000600 0004000 0002000 00000000437 14007246313 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Poissons	poissons	2021-01-06 16:24:32.336678+01	2021-01-06 16:24:32.336678+01		Poisson de ....
3	Fruits	fruits	2021-01-22 23:23:55.586436+01	2021-01-22 23:23:55.586436+01		Fruiits...
1	Les légumes	legumes	2020-12-28 23:24:36.587905+01	2021-01-25 23:50:36.414291+01		Les légumes
\.


                                                                                                                                                                                                                                 3230.dat                                                                                            0000600 0004000 0002000 00000004133 14007246313 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	pbkdf2_sha256$150000$d8aflrjH6zmJ$+njN1POGFQoNRQo+kXnJf6g7lKyE7jkzfS+xLOjgxTE=	f	pabi@gmail.com	pabi	passe	777168363	f	t	2020-12-26 03:52:06.213986+01	2020-12-26 03:53:12.355162+01	f	t	t
3	pbkdf2_sha256$150000$6SaIqShARgPP$DoZXbSm77/gbpuN/YhNjoazGcSTO6bbW0gnnLQY7EoY=	f	diattaseydi92@gmail.coms	Seydina	Diatta	pabi	f	f	2020-12-27 17:06:23.137992+01	\N	f	t	t
11	pbkdf2_sha256$150000$Mm6eR2pH9zEI$FPdamT1zoLhMRW9ErHvaP7UIpV12VwxF8zwErdWo2nM=	f	diattaseydi92@gmail.compp	Seydina	Diatta	777	f	t	2021-01-06 16:38:20.778102+01	2021-01-06 16:38:58.334492+01	t	t	t
4	pbkdf2_sha256$150000$caAf7EzEGJSz$dIVEeCI9OlfGnDBQn0i8r3zvP9PJ0fXxWB62x/5Bv14=	f	diattaseydi92@hotmail.fr	Seydina	Diatta	777777777	f	t	2020-12-27 17:14:41.024927+01	2020-12-27 17:15:06.225258+01	f	t	t
5	pbkdf2_sha256$150000$tXoDRVJn8mTS$PYUnVkx9/jAFmfNh/lg5k2fket26512paUYqbUDJO6U=	f	diattaseydi92@gmail.comu	Seydina	Diatta	774445555	f	t	2020-12-27 17:24:41.003465+01	\N	f	t	t
6	pbkdf2_sha256$150000$lh0P6zfsUS1k$qkPh4paruF5TkBTRccqW9Z2p1X8UegHaIrT24Lhg9MI=	f	diattaseydi92@gmail.comp	Seydina	Diatta	77777777	f	t	2020-12-27 17:25:47.577208+01	\N	f	f	t
7	pbkdf2_sha256$150000$AaNqIQ0yhZ8w$UHDA4fyXbShq+kZ9qrcPlDC0H14zchAeastprN8/hVg=	f	diattaseydi92@gmail.comt	Seydina	Diatta	455	f	t	2020-12-27 17:32:22.966021+01	\N	f	t	t
8	pbkdf2_sha256$150000$2Mto04dEflA0$YuJ2wX+6K6rJg5xCAUYDCrNzzCeaacbFrdZ1uS7bA9o=	f	papa@gmail.com	Seydina	Diatta	777	f	t	2020-12-27 22:02:25.29307+01	\N	t	f	f
9	pbkdf2_sha256$150000$AfUPWvGtYK6l$O6cO2o1VocpwpIXmXszYJyxHiSrm7wgFw/7wk/J1rns=	f	seydina@gmail.com	pabi	pabi	77	f	t	2020-12-27 22:27:59.540302+01	\N	t	t	f
10	pbkdf2_sha256$150000$Q7VERTnb6Bs8$NRIRUfx5Llc7+NnHyYrz1Nna+affpxNQOsH48aBbsPE=	f	passerelle@passerelle.com	Pabi	Pabi	7777	f	t	2020-12-29 21:01:57.572036+01	\N	t	t	t
1	pbkdf2_sha256$150000$nDwjtjI8gqlS$WUj3pEgy5mA2MCv4O1uHYOsd8Oce0nz29r/Yz5gt3G4=	t	diattaseydi92@gmail.com	pabi	diatta	777168363	t	t	2020-12-25 21:12:29.659901+01	2021-01-22 23:23:14.823527+01	f	t	t
12	pbkdf2_sha256$150000$6pKW51R1QQ6N$DJiw+KS+xB/P1CGRRWAVnj2jgZhvTY92025BVJ1LJwA=	f	smail@smail.com	Seydina	Diatta	777168363	f	t	2021-01-23 00:02:58.762438+01	\N	t	t	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                     3232.dat                                                                                            0000600 0004000 0002000 00000000005 14007246313 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3234.dat                                                                                            0000600 0004000 0002000 00000000663 14007246313 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	53
2	4	17
3	4	18
4	4	19
5	4	20
6	4	54
7	4	55
8	4	56
9	4	1
10	4	2
11	4	3
12	4	4
13	4	5
14	4	6
15	4	7
16	4	8
17	4	9
18	4	10
19	4	11
20	4	12
21	4	13
22	4	14
23	4	15
24	4	16
25	4	21
26	4	22
27	4	23
28	4	24
29	4	25
30	4	26
31	4	27
32	4	28
33	4	29
34	4	30
35	4	31
36	4	32
37	4	33
38	4	34
39	4	35
40	4	36
41	4	37
42	4	38
43	4	39
44	4	40
45	4	41
46	4	42
47	4	43
48	4	44
49	4	45
50	4	46
51	4	47
52	4	48
53	4	49
54	4	50
55	4	51
56	4	52
\.


                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000140723 14007246313 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.0

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

DROP DATABASE marche;
--
-- Name: marche; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE marche WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';


ALTER DATABASE marche OWNER TO postgres;

\connect marche

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: commandes_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commandes_commande (
    id integer NOT NULL,
    prenom character varying(250) NOT NULL,
    nom character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    telephone character varying(12) NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    payement boolean NOT NULL,
    departement_id integer NOT NULL,
    quartier_id integer NOT NULL,
    utilisateur_id integer NOT NULL,
    indication character varying(250)
);


ALTER TABLE public.commandes_commande OWNER TO postgres;

--
-- Name: commandes_commande_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commandes_commande_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commandes_commande_id_seq OWNER TO postgres;

--
-- Name: commandes_commande_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commandes_commande_id_seq OWNED BY public.commandes_commande.id;


--
-- Name: commandes_commandeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commandes_commandeitem (
    id integer NOT NULL,
    prix integer NOT NULL,
    quantite integer NOT NULL,
    commande_id integer NOT NULL,
    produit_id integer NOT NULL
);


ALTER TABLE public.commandes_commandeitem OWNER TO postgres;

--
-- Name: commandes_commandeitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commandes_commandeitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commandes_commandeitem_id_seq OWNER TO postgres;

--
-- Name: commandes_commandeitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commandes_commandeitem_id_seq OWNED BY public.commandes_commandeitem.id;


--
-- Name: commandes_departement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commandes_departement (
    id integer NOT NULL,
    nom character varying(200) NOT NULL
);


ALTER TABLE public.commandes_departement OWNER TO postgres;

--
-- Name: commandes_departement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commandes_departement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commandes_departement_id_seq OWNER TO postgres;

--
-- Name: commandes_departement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commandes_departement_id_seq OWNED BY public.commandes_departement.id;


--
-- Name: commandes_quartier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commandes_quartier (
    id integer NOT NULL,
    nom character varying(200) NOT NULL,
    prix_livraison integer NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    departement_id integer NOT NULL
);


ALTER TABLE public.commandes_quartier OWNER TO postgres;

--
-- Name: commandes_quartier_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commandes_quartier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commandes_quartier_id_seq OWNER TO postgres;

--
-- Name: commandes_quartier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commandes_quartier_id_seq OWNED BY public.commandes_quartier.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: marche_categorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marche_categorie (
    id integer NOT NULL,
    nom character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    sup_categorie_id integer NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.marche_categorie OWNER TO postgres;

--
-- Name: marche_categorie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marche_categorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marche_categorie_id_seq OWNER TO postgres;

--
-- Name: marche_categorie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marche_categorie_id_seq OWNED BY public.marche_categorie.id;


--
-- Name: marche_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marche_info (
    id integer NOT NULL,
    adresse character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    telephone character varying(30) NOT NULL,
    description text NOT NULL,
    for_business text NOT NULL,
    free_liv text NOT NULL
);


ALTER TABLE public.marche_info OWNER TO postgres;

--
-- Name: marche_coordonnees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marche_coordonnees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marche_coordonnees_id_seq OWNER TO postgres;

--
-- Name: marche_coordonnees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marche_coordonnees_id_seq OWNED BY public.marche_info.id;


--
-- Name: marche_homeslide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marche_homeslide (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    lien character varying(20) NOT NULL,
    nom character varying(30) NOT NULL
);


ALTER TABLE public.marche_homeslide OWNER TO postgres;

--
-- Name: marche_homeslide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marche_homeslide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marche_homeslide_id_seq OWNER TO postgres;

--
-- Name: marche_homeslide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marche_homeslide_id_seq OWNED BY public.marche_homeslide.id;


--
-- Name: marche_produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marche_produit (
    id integer NOT NULL,
    nom character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    image character varying(100) NOT NULL,
    provenance text NOT NULL,
    prix integer NOT NULL,
    unite character varying(30) NOT NULL,
    disponibilite boolean NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    categorie_id integer NOT NULL,
    stock integer
);


ALTER TABLE public.marche_produit OWNER TO postgres;

--
-- Name: marche_produit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marche_produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marche_produit_id_seq OWNER TO postgres;

--
-- Name: marche_produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marche_produit_id_seq OWNED BY public.marche_produit.id;


--
-- Name: marche_supcategorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marche_supcategorie (
    id integer NOT NULL,
    nom character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    date_creation timestamp with time zone NOT NULL,
    date_maj timestamp with time zone NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.marche_supcategorie OWNER TO postgres;

--
-- Name: marche_supcategorie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marche_supcategorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marche_supcategorie_id_seq OWNER TO postgres;

--
-- Name: marche_supcategorie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marche_supcategorie_id_seq OWNED BY public.marche_supcategorie.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    prenom character varying(150) NOT NULL,
    nom character varying(150) NOT NULL,
    telephone character varying(50) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone,
    is_cgu boolean NOT NULL,
    is_newsletter boolean NOT NULL,
    by_phone boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: commandes_commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commande ALTER COLUMN id SET DEFAULT nextval('public.commandes_commande_id_seq'::regclass);


--
-- Name: commandes_commandeitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commandeitem ALTER COLUMN id SET DEFAULT nextval('public.commandes_commandeitem_id_seq'::regclass);


--
-- Name: commandes_departement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_departement ALTER COLUMN id SET DEFAULT nextval('public.commandes_departement_id_seq'::regclass);


--
-- Name: commandes_quartier id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_quartier ALTER COLUMN id SET DEFAULT nextval('public.commandes_quartier_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: marche_categorie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_categorie ALTER COLUMN id SET DEFAULT nextval('public.marche_categorie_id_seq'::regclass);


--
-- Name: marche_homeslide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_homeslide ALTER COLUMN id SET DEFAULT nextval('public.marche_homeslide_id_seq'::regclass);


--
-- Name: marche_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_info ALTER COLUMN id SET DEFAULT nextval('public.marche_coordonnees_id_seq'::regclass);


--
-- Name: marche_produit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_produit ALTER COLUMN id SET DEFAULT nextval('public.marche_produit_id_seq'::regclass);


--
-- Name: marche_supcategorie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_supcategorie ALTER COLUMN id SET DEFAULT nextval('public.marche_supcategorie_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3226.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3228.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3224.dat';

--
-- Data for Name: commandes_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commandes_commande (id, prenom, nom, email, telephone, date_creation, date_maj, payement, departement_id, quartier_id, utilisateur_id, indication) FROM stdin;
\.
COPY public.commandes_commande (id, prenom, nom, email, telephone, date_creation, date_maj, payement, departement_id, quartier_id, utilisateur_id, indication) FROM '$$PATH$$/3244.dat';

--
-- Data for Name: commandes_commandeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commandes_commandeitem (id, prix, quantite, commande_id, produit_id) FROM stdin;
\.
COPY public.commandes_commandeitem (id, prix, quantite, commande_id, produit_id) FROM '$$PATH$$/3250.dat';

--
-- Data for Name: commandes_departement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commandes_departement (id, nom) FROM stdin;
\.
COPY public.commandes_departement (id, nom) FROM '$$PATH$$/3246.dat';

--
-- Data for Name: commandes_quartier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commandes_quartier (id, nom, prix_livraison, date_creation, date_maj, departement_id) FROM stdin;
\.
COPY public.commandes_quartier (id, nom, prix_livraison, date_creation, date_maj, departement_id) FROM '$$PATH$$/3248.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3236.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3222.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3220.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3253.dat';

--
-- Data for Name: marche_categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marche_categorie (id, nom, slug, date_creation, date_maj, sup_categorie_id, image, description) FROM stdin;
\.
COPY public.marche_categorie (id, nom, slug, date_creation, date_maj, sup_categorie_id, image, description) FROM '$$PATH$$/3240.dat';

--
-- Data for Name: marche_homeslide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marche_homeslide (id, image, lien, nom) FROM stdin;
\.
COPY public.marche_homeslide (id, image, lien, nom) FROM '$$PATH$$/3255.dat';

--
-- Data for Name: marche_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marche_info (id, adresse, email, telephone, description, for_business, free_liv) FROM stdin;
\.
COPY public.marche_info (id, adresse, email, telephone, description, for_business, free_liv) FROM '$$PATH$$/3252.dat';

--
-- Data for Name: marche_produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marche_produit (id, nom, slug, image, provenance, prix, unite, disponibilite, date_creation, date_maj, categorie_id, stock) FROM stdin;
\.
COPY public.marche_produit (id, nom, slug, image, provenance, prix, unite, disponibilite, date_creation, date_maj, categorie_id, stock) FROM '$$PATH$$/3242.dat';

--
-- Data for Name: marche_supcategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marche_supcategorie (id, nom, slug, date_creation, date_maj, image, description) FROM stdin;
\.
COPY public.marche_supcategorie (id, nom, slug, date_creation, date_maj, image, description) FROM '$$PATH$$/3238.dat';

--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, is_superuser, email, prenom, nom, telephone, is_staff, is_active, date_joined, last_login, is_cgu, is_newsletter, by_phone) FROM stdin;
\.
COPY public.users_user (id, password, is_superuser, email, prenom, nom, telephone, is_staff, is_active, date_joined, last_login, is_cgu, is_newsletter, by_phone) FROM '$$PATH$$/3230.dat';

--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.users_user_groups (id, user_id, group_id) FROM '$$PATH$$/3232.dat';

--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.users_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3234.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: commandes_commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commandes_commande_id_seq', 1, false);


--
-- Name: commandes_commandeitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commandes_commandeitem_id_seq', 1, false);


--
-- Name: commandes_departement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commandes_departement_id_seq', 2, true);


--
-- Name: commandes_quartier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commandes_quartier_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 33, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: marche_categorie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marche_categorie_id_seq', 3, true);


--
-- Name: marche_coordonnees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marche_coordonnees_id_seq', 1, true);


--
-- Name: marche_homeslide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marche_homeslide_id_seq', 3, true);


--
-- Name: marche_produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marche_produit_id_seq', 11, true);


--
-- Name: marche_supcategorie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marche_supcategorie_id_seq', 3, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 56, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: commandes_commande commandes_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_pkey PRIMARY KEY (id);


--
-- Name: commandes_commandeitem commandes_commandeitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commandeitem
    ADD CONSTRAINT commandes_commandeitem_pkey PRIMARY KEY (id);


--
-- Name: commandes_departement commandes_departement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_departement
    ADD CONSTRAINT commandes_departement_pkey PRIMARY KEY (id);


--
-- Name: commandes_quartier commandes_quartier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_quartier
    ADD CONSTRAINT commandes_quartier_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: marche_categorie marche_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_categorie
    ADD CONSTRAINT marche_categorie_pkey PRIMARY KEY (id);


--
-- Name: marche_categorie marche_categorie_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_categorie
    ADD CONSTRAINT marche_categorie_slug_key UNIQUE (slug);


--
-- Name: marche_info marche_coordonnees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_info
    ADD CONSTRAINT marche_coordonnees_pkey PRIMARY KEY (id);


--
-- Name: marche_homeslide marche_homeslide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_homeslide
    ADD CONSTRAINT marche_homeslide_pkey PRIMARY KEY (id);


--
-- Name: marche_produit marche_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_produit
    ADD CONSTRAINT marche_produit_pkey PRIMARY KEY (id);


--
-- Name: marche_supcategorie marche_supcategorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_supcategorie
    ADD CONSTRAINT marche_supcategorie_pkey PRIMARY KEY (id);


--
-- Name: marche_supcategorie marche_supcategorie_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_supcategorie
    ADD CONSTRAINT marche_supcategorie_slug_key UNIQUE (slug);


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: commandes_commande_departement_id_9620ee2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commandes_commande_departement_id_9620ee2a ON public.commandes_commande USING btree (departement_id);


--
-- Name: commandes_commande_quartier_id_f27f4839; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commandes_commande_quartier_id_f27f4839 ON public.commandes_commande USING btree (quartier_id);


--
-- Name: commandes_commande_utilisateur_id_b0836e6f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commandes_commande_utilisateur_id_b0836e6f ON public.commandes_commande USING btree (utilisateur_id);


--
-- Name: commandes_commandeitem_commande_id_d205fd3b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commandes_commandeitem_commande_id_d205fd3b ON public.commandes_commandeitem USING btree (commande_id);


--
-- Name: commandes_commandeitem_produit_id_113fe835; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commandes_commandeitem_produit_id_113fe835 ON public.commandes_commandeitem USING btree (produit_id);


--
-- Name: commandes_quartier_departement_id_92c1d7cf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commandes_quartier_departement_id_92c1d7cf ON public.commandes_quartier USING btree (departement_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: marche_categorie_nom_50d88a96; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_categorie_nom_50d88a96 ON public.marche_categorie USING btree (nom);


--
-- Name: marche_categorie_nom_50d88a96_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_categorie_nom_50d88a96_like ON public.marche_categorie USING btree (nom varchar_pattern_ops);


--
-- Name: marche_categorie_slug_337e5076_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_categorie_slug_337e5076_like ON public.marche_categorie USING btree (slug varchar_pattern_ops);


--
-- Name: marche_categorie_sup_categorie_id_2b41cada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_categorie_sup_categorie_id_2b41cada ON public.marche_categorie USING btree (sup_categorie_id);


--
-- Name: marche_produit_categorie_id_5580fff0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_produit_categorie_id_5580fff0 ON public.marche_produit USING btree (categorie_id);


--
-- Name: marche_produit_id_slug_6c87193b_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_produit_id_slug_6c87193b_idx ON public.marche_produit USING btree (id, slug);


--
-- Name: marche_produit_nom_0a7c9cb6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_produit_nom_0a7c9cb6 ON public.marche_produit USING btree (nom);


--
-- Name: marche_produit_nom_0a7c9cb6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_produit_nom_0a7c9cb6_like ON public.marche_produit USING btree (nom varchar_pattern_ops);


--
-- Name: marche_produit_slug_703d88ac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_produit_slug_703d88ac ON public.marche_produit USING btree (slug);


--
-- Name: marche_produit_slug_703d88ac_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_produit_slug_703d88ac_like ON public.marche_produit USING btree (slug varchar_pattern_ops);


--
-- Name: marche_supcategorie_nom_7cbc7f32; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_supcategorie_nom_7cbc7f32 ON public.marche_supcategorie USING btree (nom);


--
-- Name: marche_supcategorie_nom_7cbc7f32_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_supcategorie_nom_7cbc7f32_like ON public.marche_supcategorie USING btree (nom varchar_pattern_ops);


--
-- Name: marche_supcategorie_slug_46754e5e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX marche_supcategorie_slug_46754e5e_like ON public.marche_supcategorie USING btree (slug varchar_pattern_ops);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commandes_commande commandes_commande_departement_id_9620ee2a_fk_commandes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_departement_id_9620ee2a_fk_commandes FOREIGN KEY (departement_id) REFERENCES public.commandes_departement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commandes_commande commandes_commande_quartier_id_f27f4839_fk_commandes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_quartier_id_f27f4839_fk_commandes FOREIGN KEY (quartier_id) REFERENCES public.commandes_quartier(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commandes_commande commandes_commande_utilisateur_id_b0836e6f_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commande
    ADD CONSTRAINT commandes_commande_utilisateur_id_b0836e6f_fk_users_user_id FOREIGN KEY (utilisateur_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commandes_commandeitem commandes_commandeit_commande_id_d205fd3b_fk_commandes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commandeitem
    ADD CONSTRAINT commandes_commandeit_commande_id_d205fd3b_fk_commandes FOREIGN KEY (commande_id) REFERENCES public.commandes_commande(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commandes_commandeitem commandes_commandeitem_produit_id_113fe835_fk_marche_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_commandeitem
    ADD CONSTRAINT commandes_commandeitem_produit_id_113fe835_fk_marche_produit_id FOREIGN KEY (produit_id) REFERENCES public.marche_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commandes_quartier commandes_quartier_departement_id_92c1d7cf_fk_commandes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandes_quartier
    ADD CONSTRAINT commandes_quartier_departement_id_92c1d7cf_fk_commandes FOREIGN KEY (departement_id) REFERENCES public.commandes_departement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: marche_categorie marche_categorie_sup_categorie_id_2b41cada_fk_marche_su; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_categorie
    ADD CONSTRAINT marche_categorie_sup_categorie_id_2b41cada_fk_marche_su FOREIGN KEY (sup_categorie_id) REFERENCES public.marche_supcategorie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: marche_produit marche_produit_categorie_id_5580fff0_fk_marche_categorie_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marche_produit
    ADD CONSTRAINT marche_produit_categorie_id_5580fff0_fk_marche_categorie_id FOREIGN KEY (categorie_id) REFERENCES public.marche_categorie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             