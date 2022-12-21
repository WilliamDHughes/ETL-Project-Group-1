PGDMP     +                    z            wines_db    15.1    15.1 +    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16618    wines_db    DATABASE     �   CREATE DATABASE wines_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE wines_db;
                postgres    false            �            1259    16719    Brand    TABLE     �   CREATE TABLE public."Brand" (
    brand_id integer NOT NULL,
    brand_name character varying(50) NOT NULL,
    last_updated timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL
);
    DROP TABLE public."Brand";
       public         heap    postgres    false            �            1259    16718    Brand_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Brand_brand_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Brand_brand_id_seq";
       public          postgres    false    217            /           0    0    Brand_brand_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Brand_brand_id_seq" OWNED BY public."Brand".brand_id;
          public          postgres    false    216            �            1259    16743    Country    TABLE     �   CREATE TABLE public."Country" (
    country_id integer NOT NULL,
    country character varying(20) NOT NULL,
    last_updated timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL
);
    DROP TABLE public."Country";
       public         heap    postgres    false            �            1259    16742    Country_country_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Country_country_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Country_country_id_seq";
       public          postgres    false    223            0           0    0    Country_country_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Country_country_id_seq" OWNED BY public."Country".country_id;
          public          postgres    false    222            �            1259    16735    Region    TABLE     �   CREATE TABLE public."Region" (
    region_id integer NOT NULL,
    region character varying(60) NOT NULL,
    last_updated timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL
);
    DROP TABLE public."Region";
       public         heap    postgres    false            �            1259    16734    Region_region_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Region_region_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Region_region_id_seq";
       public          postgres    false    221            1           0    0    Region_region_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Region_region_id_seq" OWNED BY public."Region".region_id;
          public          postgres    false    220            �            1259    16727    Vintage    TABLE     �   CREATE TABLE public."Vintage" (
    vintage_id integer NOT NULL,
    vintage_name character varying(80) NOT NULL,
    last_updated timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL
);
    DROP TABLE public."Vintage";
       public         heap    postgres    false            �            1259    16726    Vintage_vintage_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Vintage_vintage_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Vintage_vintage_id_seq";
       public          postgres    false    219            2           0    0    Vintage_vintage_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Vintage_vintage_id_seq" OWNED BY public."Vintage".vintage_id;
          public          postgres    false    218            �            1259    16711    Wines    TABLE     �  CREATE TABLE public."Wines" (
    wine_id integer NOT NULL,
    brand_id integer NOT NULL,
    vintage_id integer NOT NULL,
    rating double precision NOT NULL,
    num_ratings integer NOT NULL,
    price double precision NOT NULL,
    region_id integer NOT NULL,
    country_id integer NOT NULL,
    year integer NOT NULL,
    last_updated timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL
);
    DROP TABLE public."Wines";
       public         heap    postgres    false            �            1259    16710    Wines_wine_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Wines_wine_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Wines_wine_id_seq";
       public          postgres    false    215            3           0    0    Wines_wine_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Wines_wine_id_seq" OWNED BY public."Wines".wine_id;
          public          postgres    false    214            {           2604    16722    Brand brand_id    DEFAULT     t   ALTER TABLE ONLY public."Brand" ALTER COLUMN brand_id SET DEFAULT nextval('public."Brand_brand_id_seq"'::regclass);
 ?   ALTER TABLE public."Brand" ALTER COLUMN brand_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16746    Country country_id    DEFAULT     |   ALTER TABLE ONLY public."Country" ALTER COLUMN country_id SET DEFAULT nextval('public."Country_country_id_seq"'::regclass);
 C   ALTER TABLE public."Country" ALTER COLUMN country_id DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    16738    Region region_id    DEFAULT     x   ALTER TABLE ONLY public."Region" ALTER COLUMN region_id SET DEFAULT nextval('public."Region_region_id_seq"'::regclass);
 A   ALTER TABLE public."Region" ALTER COLUMN region_id DROP DEFAULT;
       public          postgres    false    221    220    221            }           2604    16730    Vintage vintage_id    DEFAULT     |   ALTER TABLE ONLY public."Vintage" ALTER COLUMN vintage_id SET DEFAULT nextval('public."Vintage_vintage_id_seq"'::regclass);
 C   ALTER TABLE public."Vintage" ALTER COLUMN vintage_id DROP DEFAULT;
       public          postgres    false    219    218    219            y           2604    16714    Wines wine_id    DEFAULT     r   ALTER TABLE ONLY public."Wines" ALTER COLUMN wine_id SET DEFAULT nextval('public."Wines_wine_id_seq"'::regclass);
 >   ALTER TABLE public."Wines" ALTER COLUMN wine_id DROP DEFAULT;
       public          postgres    false    214    215    215            "          0    16719    Brand 
   TABLE DATA           E   COPY public."Brand" (brand_id, brand_name, last_updated) FROM stdin;
    public          postgres    false    217   ~1       (          0    16743    Country 
   TABLE DATA           F   COPY public."Country" (country_id, country, last_updated) FROM stdin;
    public          postgres    false    223   I       &          0    16735    Region 
   TABLE DATA           C   COPY public."Region" (region_id, region, last_updated) FROM stdin;
    public          postgres    false    221   �I       $          0    16727    Vintage 
   TABLE DATA           K   COPY public."Vintage" (vintage_id, vintage_name, last_updated) FROM stdin;
    public          postgres    false    219   Q                  0    16711    Wines 
   TABLE DATA           �   COPY public."Wines" (wine_id, brand_id, vintage_id, rating, num_ratings, price, region_id, country_id, year, last_updated) FROM stdin;
    public          postgres    false    215   �p       4           0    0    Brand_brand_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Brand_brand_id_seq"', 553, true);
          public          postgres    false    216            5           0    0    Country_country_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Country_country_id_seq"', 9, true);
          public          postgres    false    222            6           0    0    Region_region_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Region_region_id_seq"', 172, true);
          public          postgres    false    220            7           0    0    Vintage_vintage_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Vintage_vintage_id_seq"', 639, true);
          public          postgres    false    218            8           0    0    Wines_wine_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Wines_wine_id_seq"', 1065, true);
          public          postgres    false    214            �           2606    16725    Brand pk_Brand 
   CONSTRAINT     V   ALTER TABLE ONLY public."Brand"
    ADD CONSTRAINT "pk_Brand" PRIMARY KEY (brand_id);
 <   ALTER TABLE ONLY public."Brand" DROP CONSTRAINT "pk_Brand";
       public            postgres    false    217            �           2606    16749    Country pk_Country 
   CONSTRAINT     \   ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "pk_Country" PRIMARY KEY (country_id);
 @   ALTER TABLE ONLY public."Country" DROP CONSTRAINT "pk_Country";
       public            postgres    false    223            �           2606    16741    Region pk_Region 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Region"
    ADD CONSTRAINT "pk_Region" PRIMARY KEY (region_id);
 >   ALTER TABLE ONLY public."Region" DROP CONSTRAINT "pk_Region";
       public            postgres    false    221            �           2606    16733    Vintage pk_Vintage 
   CONSTRAINT     \   ALTER TABLE ONLY public."Vintage"
    ADD CONSTRAINT "pk_Vintage" PRIMARY KEY (vintage_id);
 @   ALTER TABLE ONLY public."Vintage" DROP CONSTRAINT "pk_Vintage";
       public            postgres    false    219            �           2606    16717    Wines pk_Wines 
   CONSTRAINT     U   ALTER TABLE ONLY public."Wines"
    ADD CONSTRAINT "pk_Wines" PRIMARY KEY (wine_id);
 <   ALTER TABLE ONLY public."Wines" DROP CONSTRAINT "pk_Wines";
       public            postgres    false    215            �           2606    16750    Wines fk_Wines_brand_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wines"
    ADD CONSTRAINT "fk_Wines_brand_id" FOREIGN KEY (brand_id) REFERENCES public."Brand"(brand_id);
 E   ALTER TABLE ONLY public."Wines" DROP CONSTRAINT "fk_Wines_brand_id";
       public          postgres    false    3206    217    215            �           2606    16765    Wines fk_Wines_country_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wines"
    ADD CONSTRAINT "fk_Wines_country_id" FOREIGN KEY (country_id) REFERENCES public."Country"(country_id);
 G   ALTER TABLE ONLY public."Wines" DROP CONSTRAINT "fk_Wines_country_id";
       public          postgres    false    223    215    3212            �           2606    16760    Wines fk_Wines_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wines"
    ADD CONSTRAINT "fk_Wines_region_id" FOREIGN KEY (region_id) REFERENCES public."Region"(region_id);
 F   ALTER TABLE ONLY public."Wines" DROP CONSTRAINT "fk_Wines_region_id";
       public          postgres    false    3210    221    215            �           2606    16755    Wines fk_Wines_vintage_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wines"
    ADD CONSTRAINT "fk_Wines_vintage_id" FOREIGN KEY (vintage_id) REFERENCES public."Vintage"(vintage_id);
 G   ALTER TABLE ONLY public."Wines" DROP CONSTRAINT "fk_Wines_vintage_id";
       public          postgres    false    215    219    3208            "      x��\Mo�Hr=��
�Vc�� 3��7I-�G-��R�;�%�JU�ŬI��.�|��ص/�0�`,���������ui� +���^Dd&�`b�넌��O侌���CV�!K��D��N�[��a��(��5�<:�z��u��il;�~�,���h&n�7�Qc��9�\�ԳGc��GX�Yi?aQ�o�ε�P)��}��z���XV�?t����ᤒX=`�ӖL��nl�E��IS��g?*���fe���::�MRq���*:�s۬v��$g�o�ctd�FV��k��X�B5z��t��JJqn��������w�X��fb��v��g�D\�m�uww��Ħzk��޲�J]���s�J$ܩ�~�x��8{��ٖ`dX��sX+>�Ŋ�|����L~�%��4&:m��G�{ �s��Xa��~fZ��U">a}��UI��ֶ�N��#n�ppo�2�b�T���[��8�JŅm�G�x�L�s0��U��t.>��z��滪��սu��U�J���}�>�v���U�i'؏�3]?"n�K���<�b����kD��z�:��R)������a����E�D��,m��4�~��=��@��ġ7z3>�>�d�U;�,�R$0�k]����(����άl%�f�Qn]8ݲk�b
=�n/:7z�J"Fzk��_͆�L�O3ۛ,&B
bW�Ae�����O	)�͚W_Fϼvz�(�e�;�䕖��x~��
�����l|���@;���7����믎���(��")�$"4��%�lLE��AMc��u������UX��Z���<�����I͹^�9R�n�a��K��3P՜����[}��(�g����q{��e�D�{�x�7+)�uxDaȲ�J����
�@_Ϣk��+����?�"���|i!>"��)�@~�+�!6?���f��Lٟ-cq=[u��c��=�[��1���(�8��'�Ս��GW��lx�[BC�0s��>9>�G,B�9�8n��[}YR���k � `(+�� �{ �p�����0��mi^�U"�\;����J�k�^���j>�_SA7ni�9��fʇ�
8a�w�� ��=��B��{7��hh@0�������k�؂���n�ߒF����;�5��$���w�W+q2�<�Sq���2@�c���#��|6�r(m�q�ч [�qI�����>�Ƕ3��q;+��� �� I�@��LzYS���� 2x�czxV?/��1ѡ�Y�5--��I&��$���tZ��$)�P�P9�{���T�T#Xnx��X�i���"��}���H`2�� 2x1�Y�4h8�D/-/�� ��R��@%י�,���f�"R̈́�BY �����K�H ��xgl��	yY�f�/����3�;m��;�.�W ?H%�e����f���{t.�J�:�(�w��^<% ��ĕ!��l
�p�\x1��F�������,�O�T$T�8j\M@,x��(�����*��8�3� �LR@9��v-)'��R��=�0��T{j�7�T���Y@��$)��;�c�'I����&xA����������I
>L��[*���|hǢV��T�ѕ�~�����4$�h��j�*��������ed�8E�v�EgTl�v�_��Wu��`�I |hy~H�Y@���Pݵ��y��*Db�de�X��<Mr�R`S��{������y���8��<d�y6������i�?��*��B��I�zX�R|�Mc���nL���LI^���|�熻�܅�]��w����{`(�t���&Y 
jB���%�)�A{'�{=ݰ"���<�M�i��(b}���R��@�M ����!����9R�n`�Lĭiwh��֏!%n��@
*S�*���H�4����&@��\��N���㭰,��D/�M��bR���`�W&�fK
yz��B:�2*"V��Xo�H�XoB��t�>:l\�W+����V���|��Ze����Q�U>V�?G'~�W�>U!.���|.l����������Ĺ��/�D�.�)L�В~p��nf�eL5�aMLt�	�k��e�w�~ё���!#�����CF��e~�pWg�.tW�@�;��\�|�`	�t�d\��0SMU�Gޕe\m�&:�<�LK&��"�����I2N������H�V4�C��o��Te�S�7�d��{^g&.'�Y�W�u�_~�=@&����e�f�W!dR�w��SVH��V�9��n-b���N�N)�xk�e�� ���˝|�)>IIE�Gć]F:d&��q)sq৫�CJd�ϼ��D�kĜ�EVIu��w��Dw��00@%U<V��@��r�RJ�R�z�-�n첋J���׼H*~z����@�W-�u�R\���ş��XR�c UIU�3P8��HU�1`���^�*�6����O��{G�H�;�t� 6���Z�w"T/���*� s�̥p7E���h��3*�A�4A�� �6�ܘn�7�RUZ@?~��x9NC�O���dZ=�x�o -��Yʱ���rn���d	���M`�If�W�-,!3%~lV]��,�A ��x�hi�ԝ�9�U�s[�!�� �~��R�jLh{���>x��cP�fI`;���乺�'nǭɥ����R:�t*s%nu�v�d���;M�ɜ���WҴ����y!nf��U?�(���e*q:���,:�]=�
@�q�v��L�#��a�ة�,)Z �ǈ
)�(X��epVŹ@�. �\��F�,2*���,�3z�C`�HU�s`�� �5�C`q�8q���Dd�p��Xu�P#4|�Q�r��n����>��xy >?PE% �nZ��_;ҖOe�u���6AD^���	���;r���j]��ʯ����闁��ɲǀ@��XB�[��/3�
���/S�y`�6��k��b~%7�fM�0�=:�L,W����*�H#��8XR�Ђ��*'��z��o^.�E�܅v� ������{�^i�;zm%.�d�7�����,�=�Ե��5�*N���G���_��P1��u���c��<}v*�0B��:0�����Dg�{ ��� I��|��sro��?/L���ă�v:�I��8n�����4 Y�����O��|XTI��`,�y�VAAN��S�'=��o�$[���/n9R�s/�^)�$���u���#��J�d4`���ϟku�� ������= v�文X��vj�C��ö*���[�����[�[�HA8��1�->��eX����)��k���o�j?�SY���=�b'%�sP����R��Kn��fz�h�Ⲓ��ۚ�YU�%E�>���>��� ��׿����8v*Xј���߻䑭��8�|�R�#��]t�x`�T��ܯ݄�B�t�Λ��)	���/]D%�P\Q��n:%�b��>U*��՛'��S�O�eg�j�X��ռ"U�K���	�Pj<���sc;"D�������1�*�p[�`&6����B��4TJu���� �����ɖ�Ӟ�N4�VZO���?��*�hx��ӭ����m�۩�K�*݂�z�ԁ��Jᦔj��>��<�L�B��$:�pTZ�y�@v����.��z����g�	�8"�SH�t� 3�D��P{�@6��K褩ʈ!N��e��	���zJǰ������-5^�z���];�&q�9�u��sM��Wq���'vjt͋S�����Y~:]�I�m Lf[z��=��2���mK�S=|���D�~c�mg��r�8��w?LC�-W�G���$GR5Òl�ֿ|N����i�|�P�[���ݢ�Q��w��_�{��NC�Z���	��T9��X�8e�5���b���@v��⧡�i����c�<sS4W��A�&��9�*@2a�.���]m:��� c`[��m@	�?�K�(���^Ә�Kr���@	M`���y0�߯R��Zof_*�������JwS��n̈(�t:��t;�}�yG_��h�HA���@%H�[>ym(���kY ��g-�m��ש��Ƣ)h��;; r  ��bq��.�*O�ذ%]��l� ���U%�Q&�+��:i�������(��S4Ԩ�m���o��M�
zt�üP���{=���_���H�|<�Jq��R��^�?A�+�+'�c�0��x��t��݂4FNܻl�	�7�4��Ta���;�C�4����t���	Xg⸙�P�O������µ] i\�SO������?!W�㣣n�J��|�>�Oi2B�~����<3�VD KA:�uJ%!���x��& �� �E?�`�1M�.����w�N:��i�<{�l�>:@N%�~����4)��=�O�iR�3fB7��I���aN5��w�X\�Cn�S��Ae�;�ѸL�xp*�8�C;<�K��\���fT"
X�L�!�������2������8x*�q�.-���@T�ϫFb,�5n~g�)�$���G#柪�����'(��\6��_ُ^+�0�@��<E������^�&硈���Ѩ��3�)�*Ew��")��������x/D�Ȯ�b����Q��>f�����6�߀�����g~�� ��D���5�x�4�r/�S* �Gc���R��DWX��hi�h(ej���=�8M���~��A�]�����n����"
 �e��\�4��Р��L��4-!�@�H�2�7��QC�u���3Y�z��(\�N��Ttѕ���4���[�^hX�Y����׿�m���D�|Y#������jGT�	c�>�r���.�	�M�4��:��� ���
�D�n��
���2��;=Y�
;4=�p�
�J��`�|��i�w>�%�|�x�!WC}'굱�*ͥ8�~OJ��U]@(gnX�'�9���7	�����j�g�D����r��r�n@)md���0���o�؛a2Pm:��a� �+�����Cފ�-5���f��d�:-�oJ!xj�T��#,�F��1��������i �[���R �)��5�l;X^�@�ä�V-�t6R� ��g*��ρk��ߖ�)��*�ގe����D�6��O��T�ݲy(B�t�o����뾁�B�4,0ˤ��@G}��𑖹�uM��������j�4D�fO�uc��tF�
r��]*2�U�Bu`UB���\��`%���6� ��z�k��h}i��2� a?�F�xb~G*ʢ��)��,��R��&V�'��ށ
@�
TƘ���raMZ��_��r�{�����v�ۼ��t�/H�ǦY?V\ ZY�lM��_�:;VO�D�	�[��[��M���S[�6<_�������׆dq�z]ݿ��-�����B����ph��x=+FC��P|%=����y��̳�I�5<wk�a�c�l,+-tK%_~���} ����mu8Z�F�]v,�ȶ�Na���l�إ�e�W�O��Rz0���?(�%�W�o��ܺa
�Zm[��D��e���SC���.}�d0�s�:xC*�������~xV�I��z��?��I�&2���<��d:����Ӑd�e�\�ָL���=���[gM�ܝ�R�=��0���S@W���������P�#�4�hXr����x(PY�T�xie������)T੼.b���L���b��VI�Ԧ�?��b�H|����dN��m������!��Qɉ�~�w,�f�ۆJ���`��*�?�#
�t���!)q/:t��Lc�]i@ɛ';��e^�߷#�cAt6^/�:!�4j2*;?��_Y�n�N�����L��R�O�����b3�A7��t�2��<R���y��¬|P5��>����,C�P��-5�Z�������WR��?��e	�G]��vﱱ͋ӝĈ=�M�C7g[զ�a�����W����w�}���5�      (   �   x�}�A
�0@���s��d���NŝPܹ4�@%�.���`���Wɚ8)kZ�<Q�!�a=��o}�b�� �g���\��� ���,�����3�� �uN�Y�r���<��\̱�_\�\�Y��ι�[L�      &   j  x��YMs�6=ÿ7��E𛹍FZyIVI�]��C�X$0�����d�����0l��We�E*U5�f�{�_C���-�o�0�=I�4]�t�&�5?$�I��eeUW�Rr?���+���\���v�d��Ix.�����7��H� �[#UO��S�**����=]!"�Q��4pKo��jr��9]�\�G6��Ma�i�aq,!�A|�&"S�ȍ6�2�� ��q(=�f�ML�,#��jz�׃�hdN^��ax�
]�k�:�J�c�(O�_s#cP�*�j2|�(KMV|��%9ؐ+�I�	��Z}2SϵtōF�UN�9W;�M5;�2��iN�DG_C���AD�#-�31�NKr+&>8��o�Ph���uT���d����]U��È^9i髵���e	9w
�	N�EB��	�+���I�/�^�o`>~b�T�����(	ο�!\�� ���5���8��/� ��̷T�k Ye�r�rѩ�O����G1M"&������gā�,�J[`|DtF�%��O�����24� 6p$�ND�5/�����^���ȝ\��g[��Z�d���j��O�q�ɉ]W���"K����^]�(��،\ ���Z�"Pm�z?�-Z���X�k3
Q�ZX���m�}�u�`���593N�״��S����4z�!ˑ��ɑ9[=�v�c6�J\�o��@��%��ɓ�����@�T�䵶-�5�̠D�=�Ó�ҕ`i�#�>�%L�V�I�M�Ѓ9�.�JMހ�x�<�Ql4��,�N�v9!W�=L��ۣ/����OL	����b��� �p!40'���W(�����.�����UI.�Y��֊ވ�O}�Ə�K�U[������|���/m����H5-~t�(��6�٢a�_j ���o��Ӌ/�t����Y�Sn��gT� |(:��|�޻��B��ڐk	�~��7��J�Ox`W=^��A�N�|B�ڤ0ea��1��ddu�s֓��h0-��7('_S|%�40��E�ϗ��>Gϕ^ʼH������h�|��r�`V�^��I��5y)�('�{ �$��qme�ȭ��8�;*5d낇�rz�.��u�8�j'@�V�6�,ɿP50-XRxX���%�e<�����V�++���f�Dk�x`�V��ƒ��:��t9��a,��?��10���jzfJ~ncă�l�.>2˽z�4�O���@p���0*�ǕO�+A��UrXXg�zaPF3V�Z=xG*�3����a59�X	��H�r#�����s�{ಌ}�L<���@LF�%�Hsr��t�p�tF�r�Ғ��FP3�V����S һg,wC�n��Q��|82��~��Ľ[tnq��e�k^0��(�	�=�R�'��6���_� �נj#ǝ"�2/i->�Y��i����e0(�|�T�b������4��n��+�j�3�L?�-=Y���j�.�������@)'���G�,�,O������O��g�n�Х�^�	�'�MW�N�^�.Fy�ϭ�c��<�*�>n�oPa���-��ǌ��F�a3�/w`D���e�������iU�����x,@i]�D��o� ���q���Ͽ�۠��o�i�v��P/�A1b:^)��@T��ٚ�i���|�v���_�hK� tm ��|��
+꣑_��O(n3�� <��N�ז�vP|��e���U����ÿ9����Xoc��69W|ALt���?�"䫄�i�����3އ�&7NNvq�K�A��W�,��z��L	SX+��o��Vl|�g�̣��R��+ ��W��?�x�����ٳg�,ii�      $      x��]Kw�8�^�~f�N/����w�_q�vܖ���3�B$$�I'ʮ��/�g3U}N/z�7�gV��as/H�r� $�:��@���>�{^r���)�rU��NX�(�,��xޱ�{u��9������$t���)+?P/�9�'���\��`=��3>��y\D.X�ɂ޳"[з��k�f=��I-�%/�%=�	|l�5�+I�\)�+�����L3Rr�+Qѷ\�de�:��qMC������m�n߉�>�b�L�%��q��{�>�e+F߲<�뾏ȥb�<��^����:��Ί��|F��j��;ٛ~ܘ��Պ�g��&䆫�B )y�L�bNGP��a����γ[(&\2�8���d�f�o���8����0��+%��Ӽ��r^V�������}�FH�L) �����Fd�̸:���b�j�Zq��鱦B\���簼q|BNs�>�\�9_-d���;QȊ�Ja~������F ���Q�;dT|Q ���(�w����8�%w�,S��;Y�eK�#�r�e�i>�����;3 AY���G|P[�-e%<>�G��I�/`(w��	1��U�}X�3��}%�� �2`��1_TO�~��\G%���FO~J^�u�
٬��?¢W@��Z�=��# �F ��j8x���=*��dS�4�*��+�j��J���!����F� ��O:&�0��G^VRY/��d �.k���P�^sY���B�FA�'^���n~^�97���Y��K��r՗�C�\�J(6��q���x�m�~<�F�E��2~����D��L<��i���1�*e��͇���rQO���S�H�r���CԎ�"�<ȏE	�*�#�e�R��\{N��͚^�G��-�3 y�wT?S����2��5Ȩ;�\
�ʎ��e� \fQ���L�n���)z���4o#vv*�a&a�'�{`NO+4E�8����d'6a 詪?ӭ8�z�q����qH�}%�z"��n��7����1�:��������E�V�^��l��{���U�$V�=�O��g"{G�
@�d�J��f�����L��J�N���{�Q(&�U:SS�n���`�^1�{��N�������Z�����BQb��� �Q�S�IJ�<� 8��;��ه��9P��y��6���=e�wb�R�r1��Z�~<���� ��,�3/�Kr��˫�+�������/�TsI����0t㐐�^�%�1��E?�ə\�V~q� )R!�a�ŧ�'&��_6�ї [�'k��I)�V���� ������ɇ��'''��J���.\��Ϋd鑗�#����]����Ăe5����9C��8�e)�@��-���:�S�0�4����u"r	���,��}�-&?�2E�%�y,�b?�%���I��ʊ��6s��9�MWp@���u[�Tow�GF+�*f����B5�━���j	o�gF�r����9=���uC�}�0����iIC�w=��Ӎ�M��$h�8a9����I�`]�S�Ѣ�F�� ������aG�����a3�������a ���d�_n�C� �!�50�����F�e���^L�"�.sݲ�����{�L�0�@�,���S��!��듷'}�h8�ԥ��|�Ld�c��kK<�����T�v����s��0���փ�e��D��5�w�W>��V��X>Px~M��]��EFo��<;��LqЂf8pXE��^vpٹ`�ӓa�x`�<��]|>�����v?U��f^��ȇ�G=�(���dn��������m�w��uS� e�G����h,����(�n���ż:�A0+6�C� ��\�YG����d���pRB�����Ra�̈K�!������H��_��<4�~�[��ɳ������a0�=�|�'xK�C��@�I�_�y�A��Ѡ�L�	ݽȖ�axW'���R��c��0�yF@Fb6�E rX����AVa��YD�L�Y^���5t
1�QL^��3�8@oEI����Ln���
�J�����3�>��g'�/��%���ދ��Σѕ<�n��T�#��krc��+�	���q``�;L�2���K�J����о�ޏ���v���5�\��dӜ?�R:���� 嵚�����9��&n���,k5��j�ʨ�4��dt�p~s5靈`�
50y+y�8��`�{@~R��\a
�ps5���W@U�q19��e��w=��	)���N�S�8.uZ���˽���	Gd�{�����d&x��<���y�6ͳ��^ `+XU+n��iHt�N��-:҈� �I;����x�i�m�w<iB��)S�p���`l
�"��<���9v����eܧ�)��i�ئ���E1+��d�}����4�	�[��E�ߜ�`�C��+�9J��Q.�il9���'z�6?)^��zB.ː���Rr1�C��O���l:5��=��B�V�о�Ǟ��"�H������ďO�nN4�ȕBl$���>R��z?8�K8E/���<%��:�g�0Pk��D�0�l�e��>lk>y��������C.�G��J��y`��A�T,5ʺ1ϫ�d����Rm�A]g�dR)^��3�?
�y9S'�u�4:G</$g�,���0����ܨb=/>le�q�l�1/��@�1��|�n�x(</�w��|>X0�F��	�N��|��)��"f�R�=�� ������~����Emfaȿvvlz�A�3f��y�e��}�����A1�:GP��d��h�bJ0�ȃ��)>�K�5��y�m6��
V�Zѯ�2{V�h�d��lU�O��� ���V���_�N��gv�	2f�u�?�J�3�r��eOY��7D$t�p���Cz}�,&w0S�_�/�|�8���X!�}j��!1�C@+ڶ�(�yo@b,u-ͱ/�0`6a��H�J�Mc{�O�s:ʗ�넠u��cV�`���"g�zk�P��S{����EL��+T�F7#�$v�S]���9����?��9�^�����s����CG��d���a�� �-��I!
��cS��b�8U
�5Xay.?���(&�k����u���L��\�� �XQf(��^�|�-���1��Yi^���nxϳZ�w�p��Y��a��}/��{�`.}^��Ŷ��2��KV���8"��9���d�mTt�Vl^�k�V������	�oX�Q�`��a�6x0КL��Q���V�H�mT�'4_}P}�� �����f�I��R��v#�}�
�5��"�R��<�BxG$�:FM�P��$�M�.K�7�KRV�ܜ:�*�3��C���h�oʣn5/u�9�竤@g�yX����=���tOW߬��_G�|�D�X������0&�,�j�0�^D�����<6�&��J��-��*� p��WM2������K.�_�~\5҅M�\O��;X���R��|�)Xy)f��톌� �A�䲳��w�CD�5Y}M޲l���#9�Hoo�落�T�q���໘1���\���-!xX� ��3�䶽_#���G^�e�q-�9��9|l����aQ|���,$:MNǣt�2�3�a�ŀ���Sb�Ʊ��Vx����.�BT�k�ݔL
����f���r�/F?��FY#^�j@]�GnD�)0�*�o��ȫޓ��D�_y�b,8F31���uzfe6
}� e�M������,���3��$:M��\I��QGgB'|�<�w7/�^4`>P��E����J#���E���qY ��2z|�!w��6/��k���1�rZTx�X��6?-���a��|��I��.u��{=���1{oy��|�+F�4gx�Ia��gO6	������F��s��)X܆�d����Iߏ�et�y��qh�)+-5+>��6sY#e9�JDE7�:ɲ�ErX\�6����K������C`f��h]�c���X!�k�c��;�2؅y-�<�;�g�S�&��o���w� �  �)7be?Ʉ+�Au�f\X�%�@�h��)�)qni,�ܘ��1Pc��u����V1OL�UN/$ʹj'	�H�᤻-:]�����%�$}���P"/��A�ĵ�Sea��#c���\9�٬���S�:�O�.��6 v���wl.�&��T #����@����V����BІ���Zln���C�B}\�\�䇑6p�y��b.�-�@h����C�l̼ll^v4W<��VL�-�~��3��
i�G��x����NGF��s���
_�<� �c"��_��
?�H�ˎ�>�>~U�w^�F��6��l֤Q 6Y�����s�l��E����F�X6�	sAr=�P�{Da������4��y����&���6y�2���F�X���LZ�V��	v���������.��K�m���9c��� ���>y{��yH�5��� ��K�!<�PpAH�.B�/�M�,c0"
P6R�'�ţ(�2�C�~�`����m���)~��ҭ�*��v"N���*u��+'.�0�]�%���Ŭֽ�����] Cҡ.y���P'm�&��]^P��E'[ 	�k���Q#I����D>�Dx	h������$���n���.d��v9��S�Z�u����O~�A�7n�Qm�\���$,�M]�iܖ�r&s��W��H�ea9��G����5�U�F�4c�4 �:�x��j��K�#=�m~7����h�v���8:(AH��EY#պ�U�Xy�wJ��y'�\-���:~���w@�@o��l�>�F���{�V7o��%��2�W1�í����{V4�ڲ�D`ٲ��EE!�e��7pBⱑ1p�2k� ����~+pBb3}'��Xv|��Y",<���tIRi$�����B��u�D��I��B�K.�9nm�*��"��}^XJ�:p�"˚�?z�!��x�p�Z�hTVFc2pݖ�~m~Z-x_�����+-m޴E��g���05g�2���ɓ(��.��Rx|��k�C{���1� ����З���m-������[�S`w��=�V��m2���D�tQ��[�3R��������L`�݋$��{��<��;�QQ�$�q4�veu^/;@� ;�h+l�yj�x |��uδGs#P<L�揼m���D��3��L���4��xYY�la��s�F�%�B��v��}���%�R�c`)T�[��.��wv��h��F�k�_��x>Z$=��ww��;i����>��-i�-��O��_��7��"�}]<�0��h�7�M��GD�����sO�k�3���䣰?��e
�����Xw�|��>��	��!�[���/��c�=<Q䨕�)�L����fh�-�mc>v�l����3Tg|�۽�`$@;[�y1t!6-��/{&�2>��r���qY���s�s?@g�S�e�����yV���`�j�r���얦��U	��F�"Vl�0�� %c1���6�w�@�)�v��,}�e�l]���M������.wz�5&L�O�n�W�����U6�c�Cǖ�,٦�͙Ǉ�*h�"b�P ���~�N+�҈�o��ϖ�X]���e��V3\�����C'�)lp���QѷQ�8�62�b��\H�#%)ͼ�[L,7�hg���j�&�x�s�xQ�5?[�Kl���H�����"�]!�?֖�!V�Y�����J�/?p Z�}6ώ���h��v��#]Bo���L#�$3�V�]�{E<���7����cg�z�yy2�<�6:����m�����>ٓ���]����g��1�����7(��*1,%3��h�+qܦ-hȀ���qBnޚG�x����J�8���
P����F��n_���3���qSt�w�������{�%Hr�kU�:7�d6�[�I�eu	�N&�He�R���/e�>�=��ܘ�$[Z��(��xBZ@?Rs�)����868�x�ā��p�J�o�����Y}|�V��fU�K����%���Mc�G%���-��ѹcV[>��s@�A�b&?�V�L0����,ٿ)V�m��y$�]�|n)�RD]�yf���zl�PsP{�G�1Hӯ"�x_e%b`� RΘ�T�O[2�J��1�氛g�e������p�:@#L0������m {TOA�-U��ё�&Nt�X�v(/�� t��w�%�kV+�A4�����A����0��{74(`
/��]��Z���-h����rd�4��I�6��]8%V�b�@�B��W1�䳰Pj�`��-�iV@b������bޱ@��cZi1�%�ĞiӁOC�ސ�Q��[L���t�%�ʭ�9܀`'	�)<a�>���1�lՖ-ڬT<�e�˼PӐ��~?��Ng�R���3A_w[�l9S���NX�����)y��G�]m�&4�5��v�>0^��"�>[��P7#.���d>R��Jp���h���q��B�Qe�#R��EkNE����~,�b��/�^� ̏���!��@6:j���Ez�a�5O�r� �e���eytcK���J�r���=Y�G���u��,'}��kh��6:��V�q�Y%��Z������+�G`p(��I��1yh	��@�L-_�ҭ�g�B�;0�N{ޝ>��0pv�Ğ��
tGs�,��W��������m���J����z�.A��O0���{�`��V@6~ۊ��~���1�o�.��z$mfH�([��D�|���ŚqR�+�1��s>m�A���<7�����3~�'t�]�}r��YaᆖH��6%�3A�����
��䋜�]�v��h�8��!-��g]�Fa�:���
p��\����HiI��v����!=��\�!:P⮞c��E�s��_���_��Ɉ��t'ff�T�?� �+0ƀA�?�>1��Y�{a�=��L�#���1�ݹ�ըP���K9��?���8������j]u�m�ѧ`�5�6\�α����@"a6�6Ҟ�}�j��#`1���Q�)+MD�~��@����U�	s�֌2Rծ{��@��7���<�x86�d]o	[��{�,�n|#]�<+�}���{J��+���.�G}�2���
GG��3�= �z�%B�i[��J�'g���
���$�Fo~�V�_��?�����4L�}g�"��?gS���}"�a����]@G��M�����3�N�*��:��g���q���{$���!�O���$�F�А=�$t�ohh�[�:�|���)��}3����~����	��c�a�i���D��e��3���c�#:�)����VRr�(H#rX�<e����4��e�{�ՠP7֪i5ul�@s�&�䘖��ıl�l,),a�6�s�� �MP`+��i��q�zQ�X�"��v-o��Y�s�x�q��\�b>ի{���.��_;�5"' 躤�#v�oݙ�)!���n� �#�xh��J��
8l�];�4Н%g/r�6�v�2������SF�B�$|G?,��I��H�.bF/t�@�3�h^=�I��c�j|"���3L��t0	d	ж��\�ly�l�ۂ	K�<r��(�9����;vrq��&O����0D��c*�<u��M�(Ѷ㧝���   *s������2���k�ڮ�ť�+��6%����ϣ��0�7�m]vG�}I�j��;T�հ�����������7�����,�r�
K��q6뛡�������}M��)�x/`Ck#�<]��kPw?Bcf ��/rԐ`F��*��Ua�a�ㅘR�0���l䇺fHyZB5� �v�P�|��&�`��3,�uj�a^�%k��x�VYfx������	~��X5��1܁��/&�l�v�ME��PLM�	�9.>Vm�B'y�Ǉ#�7|)� �1uYD�L�%a����Z�ځ�Jd]����u�������j             x��]i�4+���o��J�j-��u4��D�I�Tݪj]'�S���?�?-R����G�B�'�����x�_����W�J�Z��O$Y���I�K�>i�o���Ȣ��Y���q��O&]r,'��;�V�¤ˎ�ʧ���҉��]������K�ѵO+r�2�����?���xyE>�-�m��6���'v�����c�i,��yz�/�Kƚة����;k�|b��D�=5��o,��b��(�����6ո����,�#�[ʊm%����]G�@6?RS7�����S��t^��3����~�j$-$���=�+�3�u�x<&,8)}ۧ�^ȥ�eK��`�U��(��8�&}ǵF�d�F�@-�6����E�L����\�;v�/}�����*Ycؒ�� �f�#:^���oZb�Sm�kK<��"�S����i�U@:�'�����������$7�'<K�×�!��;�g�c��p�i��.j:H��B+6�7�v�{��k�.R��ŇRV�f<p�oE�5ϝ���򤬎S���ƃ�yL�Cx��>�4I�cÐC{��2n��LIM�a�'K
��{\UV3h��P�4���掗gق�b�qƹ��^o�@;�hJ�y��O'nj�45Ƹ'2bt��3�\wlx�;�߫\����i�F�L�A���0p"it����:-�4LI^���Մ-햧0,3u���Mc���6�!;t�N3e��@)�g��g3���c}4¡�+>��0e�u%jf����7���0v/�<bqR+v|+i�eU6[F*�.��C@չ� �N��M>�D�V>�lؕ�'�\➿�Ӻ	%� ��C	|3q
���e��-C��X=��5��^�aJ�틉�����JeXH�"���f���,,�j�[_��J_�U˧��z���\��M�8{��m|-n&fTS�eh� <���N�c�/+���9����_���0"��EH���>�:�vu�z�*^���I����Z�e��y��̐�?����څ�)A��-/~��K��>^,\ix�}�6����[pN��d�<��x��ڷ���)ܤ�<��4RQ�˳���"Ӎ6z��Vཕr;�q%��m�<eZ�y�V?�w;KMc6y�!��2���ۆ��O��D�����f��[ʷ#�� ����g�c��ȴ���h`Y�p_��a�6\+��/�g�T�����VÖ�|�G��
��*�M&��6<��&�I�<�
�?�'�҇Pt[/aȱq�U�9h�Œأ�W��T5�b��'�X??�pE��������	׸Qrliy��i���S��*y��p��� ���3&�P��W��WB����T��D"�$Bjp�����̔���й��a<�9��v�>�D��z%�}����Mu%L��rY{a��!G�J��'L�z��R��*x�ޏo��r�	Y2D�1������4���=;�'���K�.��B��� 27q^Q��f<��+�hT�=,8����=�5��֫n̜&�k����a#+�"}������ �!8�6|	"Cg7/Ds0'����#%��q���{ )�ӕ?�}p����=��_��'{Q��pX�m1���H�]`U%
;�����J�Ӡ~���I[Z�kC/t��:�7w�3
z���:Cx��O:x� ]94K��Y�r�/�A�ڀ5���(6@����!P����&)1dɋ�p�;�*9������:م��A_]��ں�!IS�x���a�uؔ8�7��9|H�G������O�߄��u)�"@W�\�X�<�4�>r�#r2��������L�˙3/��/{ѐ��W
h���iC����$�\i�⹐��޹��I&�\��EL����r��J��7�����C}f��$0��;������zS�k�Hp��h�D.�r8�,�g�� e��|Ň_0"�d*zr.9 �m�;x+>z~ł;y����;�����^qP� h,��8�E9�"���\øgR�=��{�+S(���H)����]"t_2�)�C����^��گd;r�O��~�at- �8���X2�I�	|\��0,�f�}]�<�
/*�a1���}�)c��:�Xo�#�Fp��=��w�<����6��Y�2Y$���H^�/mb �������y���\�&Ioƍ̠����δD�����y��JT��k���]O1��_���Ñ[u��I��J"�aV���h�K�m���a?���!�$�+�̓nî0�n����aٸ,�������S������.-3܃�EzX���.F��|# ��WN��
�QKI�\�5p���V	㉐JiKR�a����u�ev1��:���9�C֐��e��#|Eu;�� �i�!��#��oE��z�@_��AC��5�
�Ё��ȁ6���u���lޝ�{@ja���y��␂QC�Q����X7rb&>��
�3�ӓJ3j_�5�vX�?����<�^�ש���hr�9�L�u�L�|��y��v9��U��!�����؊�x���Cb��|���B��\����ksQ���>�˙z�>fQ��U��\+7;5��:�8o�?��:19V�ގ�% SS����[x��d�����|1�E��y�P�3*�M,]e:�O1ӟ�����F�*0V��	��=�lw�ǆ�����"N7�1N�I�u��d�=�����LW��ԙ�
�D಍;'�5���Y:"���[����\� ���E���W3��\2�||�&��e#e�?��إNڼ>�����"�B�x+^ ޓ�!W�`?��C��f��&������C����������b���D�S�I���@/�̄^�Z}�H��Ea��g崪X��uZ�Jz�J����q�I��t=&с�Rk�	�Mm��R��2`��[ξ��Ƅ"��%h8��b��az�}�?��* �G��Q��rk4#$2!"���W^�a�H{1H���_�R�+�_���� �Q���l���Y^�dvdB�>�0�`[���xځ��&5�dܙ�t ��0� O�%�W�C����x�o�N��Ƀ2�۬�NZ�圇�4��wfF
�|T�s����F�Oħ>��9-{K ���T��ԝu�k��:�*(!�}�iuq_axɚbu���W���AK�f�=a��fR�&��Cƃ`�Q�E��s'�"�HhՇ	����~��I]'@K�8�m�ê.��A ��ޤ)�O~�������Æ��j��沺��h4x
�6'm#�L������R�
�A�E�%r�I�����b0�"�ť]�E�3� ���>(� Rw���8��~��-�w�>��羸��"XXߨ��v ��ƨ���;�[��I$ 4���Y ԇ��$�0[���hg��kZ��2��N�l׋8���c|��e�� ��WA�G�[���) }�'U�MSs-���p��t� GaHn^�geY�I:��aK5'���$�u�!E�EY�H.�����~ ~fWb�:S����>B=O�>B��쮉�v�QX�U������>1�����ߘ̉�fv�0��m��� �dWV�����յ�,�ܪ-���� >YQ� ���GX54�'��a�=T���C7q���\�v�)��ɡ��e�rl�hʱ�����]s��\No����(he���ۗ���q�?aӷ��H��e�pV^[���Ç��ͨ�O//�pn�N��Vg�XW��)
��Wnd��b��5i��f	(��8���,]��	�J�ǈ�� ���&�<^�!�/w�+��\�xE#���]�]�� ���ݐ��L�H�i���9Q��,$��R)��-`����j^u�Ĉ#��e&`�8�K���]�����O��M���:��?L��bq�d�4n�9/:�M�i�G�A�j�ZW�kj�gO����`!x!����>/>�#���L�{��_�Я;oF]���}�Ж��:>W��d�    �N���W¡�K�0���#����u�Dy,$��얊�-��L��CN.��Ġ���m�5d��\4(�s��Q��]�����	�����\��$� �5��3��i%� �<Y_T5�2��9.�i�(����R�`���۳Z��j$_��)��ˡ�av�����'�C��Z��9��9�1ԇ��q蔟]a^k�k��a�D5��̯ ^f�ڽbZԌiצ��<���K_���ʒUd�������!�T��"+�~�9��'C�������sSpD��ٞ��ZIQ�yWa��-�0)�Q�z�$��;1*gw���k�*0���*���.��N�u$�U�9Sd�nF}g�W����H�����da$1�d��̅#�6�:i��]���"F}��㴬Jצ�ՠsb7��[a�����k���Y7SG���%2�Pg��PTݤr�;��BVҗ�.�?��C�X�D>����~.���ۚ$0�F_R�w� A�C�|/���dB� �_w��a���)&�0��͚���S���Z�R�ᜄ�
�_�]�QhQ��W6�|�����uz����h�=w�E(������Z�O�*:g`a�	K�V.�F*���K֫���;�#=�8�i��r#�db��S�f�5U21��:(���x����n�̅�N;�a��P�?��nX蓓����o�~}��]3[U ����ڧ6CB�Ypc(����{M�ϣ�d�hd����D�8�	��5���F��r�$��]�&���3�۫wڞG ���h@	e���8ʌ���%q�[#=Q�� ��:�������u�/&9H�����8��}j[��j5f�.�"p!�]���*V��m;K�����T�
s�Ȯz*�:�_��	�A�R4�CE��� ͈2�Ǟ���[bR_+:sX9Q^G�0R��t�����Ih���N3<܄^qR�����}gV8��N7�ʑI���9.Z����\�#G�ԟ�mJ��s�2�E�I��fc��5%u���v���&ƏSS�NfI�o�@��U�.*��C,�#pf��|~6�uM�|C�t��'��6�.��\��٬�=�ȡ]1����`�=��4k!�^z�x��� -��B��V���<)Y�4���jF�>��"�8�O٦�K[�M$�n��O�)�ѝ��a5�;V������93�\���5�|�l��]5��j7w���Xڤ��XJ�V�i����vj�a�Y��w�M���,�ֹ*]る� �hco��\D�`�zū�{�Ǌ*�{��=��z`5�hgx�Ocؓ'ְ;o�\�l�z"�1���t@��j�tnɎ՚�2*�˹3_���PQ�(��w}]o��N�sXnjO��v�v��\�����;����U��P��^g�O�_����@Ƙ�]�Q���$�ΚY�΃ի�O��XK`D���ī5����q�V��^v�P]I`9k]w�m��)2�t8�ʊ�Xc�˨�nz�<�W��~ ���qi��O�Ja{�mP9�e��%e�� �+K;K����_�K��3q�x7G�r�8��A.&L��Z���ft!ǶU� ���m��FU��.��˂΃\Qx�b���~��}������~�Ӛ���}�9�߰v�>����6܁���̤x�fσv�,�h�4��"5y��������6��b�-Z�m$,j;��1V�e��k��!|<Ex��5T�+��6�O�f=gw����]�%���%�e����@2���Z��W����.xg]�g�T�`��G�o��Og���t&D��ҘH�Hi՘{�����:��"�[&䪙g���3�M.>s��؏H�M������pj�Y����ф�=-� d���ZQ�=��Ge����.p��0����~� ��(r3���r�@�
M�< 8���)��0n�/w�_��Kt�\Y�3��ׂ�.Ox��� 0y{/���a��*ZJ�'�`/������5,������yܱ���=9���f��:�U4Oϝ��ysJ��N�)�O=$-Ea���~=�[�F��jm�S�rWe�M�FKqև��K鲯�����8�RHp4��̚ꜹU=���`v�1+��Tp]��-��fLwH��W�r�}�<��Ԥq`��MB�n]2$;8�~��2���"����X#���ͅ�Le����B ����*��?��ui]A��2�ģq__�2�Hቶ��KW�i�vZ���"��\�6��gL�a�][k\}b1�]����y��dK��2p1
� ��Zf@s؇ߧJv�F{�:j9�b�G��F�Y3���?�՛ɤqo��$�j�vm��1�w���A�Y�V�K�Ԡl�ٴޕ)�$}��Ԣ^�������Z;��z�K�^`a#"�eB�'�h���M�0I�;�Ö�ԟ�"028�p�}0���3�[��W���*�'Q���B��KU���p i�E�K�S ���i[��$u:,���$��;M"��(�����<������F��b���6����+ʼ���&�.��p�#s:�����5�c�R
Q���#��E�0Yň��5[V�+T�R/�uЫ�� =UxT���n���R �_?���.إˈq\�l�qX�H�#\��	�^��E���ܢX�\C%	����$���}�<]J�C̒�5�w	�A4��ߐ�)P�M[�E�^LgQ��"�tG���iG�J}��F03%���eBss�{I�(���r��`Xu+�+ �s�:�o��Ў��T0��q����E��9��M��t�;�X��Pꊧ����C���3B@3�-�3(�UX���LL3%���M���0Wi��1{�Ʀ�F��_ِ
���)]�<����x}}z���2B�s�{}+���F���"�s��s�t�S����y�{] w~�v�}����O��j�:�}�;C�p�>�|@A�~�Y�ɼ&{����Ȑ��m�G��B�H�?�������onW��Lg�GnKײ�`)c��v_�l)ۘ�6�����_	a�,7��|�7���y�ѓl�� MX0V�н�W'��>����Xd����KÜGZd��o���:u��@�=�n�_|:� �Y�M)�,3�������Ib�T�L1��-���Λv��/�a�@B���1�'Mz�8�JX$Y�ƌ�JX�l��������hy�����iMc�VW��s�{�d���|A����rB���J�'88�5��*gI�A�8%g�#�ɦ��_ �8He6L�m�`8v���]��%>x1��彼&B�u�����=��o܍�+Q�d};�h[W��������ݏ-x�(}$�y/���E�`��$M_@C�t��.�ۃ�\����c��}��-,պ$��j���|��냖jc�� պm���Y�_fP�&���/t���ң�5�W]��l����d�	7D�����0:��¼� ! >w�r�d���*i�]��pVв(۲��Hg�q�������E�#��+�h�A�M��B�hP��4�͞ot%��y";�*}u������ϐ8��yq
��Mp�,^Y����+3�@-/˳�]�o�W߲m�����ȯ�߾�r5�.f���	�͡/
���5�d1�	|}�{�=π $k#��$�&�/]�����H���Z���������SVwۀ�ͳ|Q�1s�{���@��:B�����9�=N��n�x�?������d%��^�9E[yU��ϒ<?��@܈�$kGɡ��r>���d)m"$֞��71<���?�~���e_�q�M��mP�H��n-�l*`?o?yL�+cB<������x9�Yp�%����I���r�7/%� �̱Y�1L7~��x��uO6�:0J�<��z,�
k�� �(/�d/j��N��?DD�>'P����6�I�Ƕ?y0�B��vc�(�<�.-5�s뼯u�.G�����6G�u�Rpe3�&����C?
��3�$��Y�*ګ6\�sl>�y���?����Ӻ{�p��	�/8m�ʚ�\�����ݕջ�щ�    ��~B�ΚSn�1s����U��jv�:��z8��V�����.�)�7&t~� �%�9-ſ�v ��R�7��	�So��pnB�(u���P����2�1�
�M�o/!���6�����Kɖ�<�(Vd�j���x �n�����D��r�9��t���A�z����.7U?!8��"qq��"�L�lna/n���~����n{ro\�`��u0��aՈ>�Y���fgF�������\���P�EPǡ:�y� �f�A8jƦ*/x���ټz�`�`I��
C��W8nc�	�I.<�Ե����!�>�q��t���@ٺ��j��O ������q����_;����#*���DvlO�K����A�H���BGQ���j���b3�&b?����4��-�q��Yc�{��	"O��y!�i<9��.� Ϯ�W�H~�x[D/�!�Ε���Ä@������j��n!@�ֿ�������_@(T�lA�V��K����ڈa�&ȟ�+��k*:��f�GW��}���|�*�W&�~�\h*�{��P�K��Y��ݴx����Қk�l��Brq����e�7�
���nm@K��v�"P��>�v�j��sr���S��Tm#Z=ʇO%!r��h�f��;|~[�w���/?w��/���XS�� ���5���;&lze�۟,>���j	N؄�=��vG�v�8��`����G �k9)���خ$��h�Ek:���
��g<5G���=B��'7@r@������$��{u�tW�5��tx�����d����֝��C��([�JT3����C��`�úWj�0U:�~ �$n�Kg�r��
8N���DU\z�
ȓfW����3�A�W~	l֔���kX�k�u�'��9�E��진k_�\s����]��ӝ��z���`W)���	+��^���&s�t�:�ɁgC��^����WX����_*_��7[��Ć����"lbhTl,_��k�l>w~�y]Z�"���X�L7=��M��#�lj)���X(�u|D~ǄLyw����o#�(�mߞ��>���:��x���kS��}i�qF����OE����b�A��l˼iR������3RZ���yN�А���;�}�G�d.Σ]~k�VtM��'ƕl�>�Gj]$9������@�"O��Oz�����ml/���ɽ*���~� H��qW�|�*Cv���9����}�}E%�z�pș��{��=�0�4^��9�t�~��m����S���W�9�E�䪚�yF��gϭ����w�.����s>[׍7c=9<+67�U�X����}{Il$���%�g�5c]A��nWn=Y<E�l��Ł�W�4I����g�d0�z�yY�Q�|�L�5`�ʄ���X�@=|@֔����W�}QP&���0��P�O�[l�=� 6fLƺ?�-�%N�Ű�L�**��O^#a%7����t-<�p�K�A�������a0`��y��E��bl��6����P�7�?'$��?r��EK�(��\�h,��
� �2����4[V�py`W��&�mM5]9QU�嬮�W��e"س�x�Eήk����������`�}��s�K�0`��9��2EƎ�ڛ�`��H����{�}W��z=��O`Zy���ډg�;0�Y�19Ґ+.�{��؈˳�GP��\�:'�\s>�m���X�5�<;�E����"�EX_&�,���Z�k�ڐ�<�}����80\5�>=�������nrL����WU�I5S�U��Ia�vMr�]L��@�'h��K�ҲU��܂�����*�uQע��ڲ˕\TqQ`�9�����o�E��������q�EΒf���T��N�_�������ѣXqȀ����k&n"'�RW��,�I������ �2�Z7�<���u����]�Hi�C�r�}��y�S6P��|�3[�r�h�f�^��� ���_\X�O�t�M�u��[��{8軂�6���� ��k�d����� �I5&�$l�*4l|�������P٦�bxF�dY7�gXl��7j�̛���޳ȝ3�>�_MJ��۶��r���C_��{��MW�xŚ�|��"O���X��{vF�kn������e��`B Mc�O�]̣���B�{�|*�0Xêh�8Q�rg�؅�v�A,�L&z��\�-�6,;6*�ǔ������˦�K?��&���י����6��EC.y���U?��s~ut0Nò	=�- tC-� z6����~�F����Lق�t�H��A�	��<!����mG�u�?���n��uY��!�t���A�vu�<������J���Q�hU�Ft@������/�����xFs�K�f	3�q'�Eǂ,�%����p�U&݂b�bA�Am9�٣[ZPLT,d�BԹÃ$���h��d=�!/I��QAM���&$M��E|�
*��O����5}f�g�n����x�w��r�1"k7ڞ`Ej����`M,b&�����UB�b���ej��{��E��˜]q��3�8���:��dd�����gg�xX���ГVɊ����џ���*X$��:j�����C��)iv]���k���-i�u��_�V!��fO����,o�� Hi���(QoI+�%=����7{a43^��42.!�y{]�x�(��ʕk��Z��~2�i;)[/�A�#^� n�㷊/ɧ!A?;�3�-K����� gK��F�����ǗӒn�N�!��\c)���ْ��r�'G���\o ���	�{qO4�3�� 忬��� *�$�\���Up�x�.� B7�b%�� -�����߿������] ����ɋ�� !���O V�+����a'y���y��c �-�q?;�"ݴ��^����4���K�h��
6�~�@��;�B!l"�:a�b`�$��u�h��wjL�ϕ���-̰�޺Gh�dfj�a��
P_qצqF����a6W�82���	$�������'�,pp,��/�g�_]�F{��ڊ�Ɖ��jﱿD��8<{�6�>�(���
CJb�?\��DcWrsé�����8?�|˚~�>�h����<�P���;���]x�<VU̢$����E"w�
~ å�_N{}/�����I_9��gK��u;�D�'*�?z\0�J�z���uv��/NC�ON�����d��΁�,Ņh��)3�][x���@0��Cy������gQĥ�ܞ�K|'و�h����)P�e:��o��Y�c��߳w���FϽ�9��Y�a�7���j
�b�����-�#��D&�6�Ә�n������^I �hvj\f�Y,�UM����Yc��\�QG3aq�4C/�/<0��A��]��t|�#3��D%An|c�%��HTؤ�BM�r�^�#�"s�e�� �X 2L�h�T�ay����wA�aV"�A(0Uo����E��&�P^oa��E^G��� �Ԁ Fm7��+m�p{k5O�jy?�-�tH�;�?0��%Bx��}1��t�n���@|�� �������m�E�l��:�&�d���ܼ�u���$"F�Xwu{闦Lg�	�}������g�rS`���@�3�W�**>�H������f�������O�0� :L�R����_��hs-��O쐵�[6y����+w�xbb��]"��yOeGgI}��C��:�3d�I������A��Mup��W�# $���� �E��� =��M�i8A�c"wd�.����ME�մ�����u@�h�ם5)�ٕ㋋�����3�"�>�q�W������;;=�$������
^�
Zd�i�w�Q�&���g?�΁j�W��Ii\�;���V�J�`b���Σ;�!���0\xj��Ww&���M�J'�vFbzz������i[�?�����٠��`ց�/u�H��R0�~7���U����8��6����2쬦�f   ߇W����%�;�l����'CR��܃L&�r�o̦ˍ�M6��
�ߗv��m��5[ǰg�ș~Ib�����������i�D��#s������R�;R.�-�Y{�{��g-Ԗ:�P�������YK�FlsRҫ�f�����G�#��|r��l��3��z�ί�`��h����;Ӣ��|�#bk����G{����:wa@Ǔg?��!P_��q�t���m�6�.����n�Q�Ai��ь�}�}� �l��B��Kt$\��@��L�U;'�����e���Ƭ-$I���=ڥ����j|�j����ߑ��ߙ&6���
�]�p�9�̬�x���XZU��X����ز"���YG�絁�ZO�}g��,�e�L��5����dΓ��ek*�6�oN���D�=� n�5GyK�W���ف}#�b��2��]Ns:���t��|�u��b��G$sxfQɷ�o�
�$�A�y�񏭳�5,�K�<?=���:�ƥ!P�YS�Y��4����c]-�=��7�����);�
�.��p�u��Ca��\D���P9}e��i�qb8>3*f}5, |���n�/�
2+$ګ��~�����.�Nw�EH���]��j��𞄼�_��v�<N%���zGf�p�J��5Y���ϗ��ee�p����^��|O��!���=�"`0�g�v�f��T:0� 7~f���O�tG�V�Qg�^FWg�}���۱h5�PB�T���@�Jf����1˗{����Ppn����~ 1)U� ��^w��̑�*}&�4�;�R��,��A�Un���O�/K�����W�^i���bn�Tk�����u��=�>�i�e�󆭙�U��M?Ή��~-ֳ�f���B�������h��s0��]�e�s(G@�ѧ��9�{=��F�"B�|�"
�%K����Ծ��`�lLo��P���f~	����o�-��m�T�K�+���ػ��$�2g��l��N�?$0aLl��<\�.�$�"%8�`��0g1�]�� �X�T�iN��pACe�<�OK����9��2Ǟ�6{B:�(�0�2�����8�Ն}�G=��1�;Mu�����*��t�b#ȡC�&�^≑�I�MT-�6p��E�Hپ���N�%4�#׊W@�%�6F��݌_���D1[� ���Q}��&���hہ4�9B^�ęL�<�!E�4}˂p��kGf�@�YB~~��3�O��T�y~�<N�I�j#cҬ��\�'"챟�._*�ld8�I2qI��G��2>� ��VA�_��p(E�+�;�3Fw�^�5�	��&���A��� ��FN�x���T�b3�����rX��}.1<�`#E}�90	?oN/��t��q�b���	h%h���VW�&+:���4	�ę�g�X�.}�ʼxg&oa3L��Y?1���;�X'5g�� �/T����n`���]�,��?�����J��gw��Ȇ?P�ί��`x�21�y�e�ϤT�*�8 ��U�����ev��}��Ru������������~w����D5�|��6�^A&ii�a�Yd�������跂�p�D�A,LeNV�f�	�^b Vf�̍-�n����H�B���aS�ڲ��׎h��,V��М�P}֤h�A�"�&3~x�68�zA��cS
�0�p�`	��t��_��?xň��)V���޺{O7�A��(�o?�Q=�.�Mi�̯��q�v�-if���.L������AHr8     