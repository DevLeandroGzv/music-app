PGDMP  &        
            }            fluttermusicapp    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16452    fluttermusicapp    DATABASE     �   CREATE DATABASE fluttermusicapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE fluttermusicapp;
                postgres    false            �            1259    16453    users    TABLE     �   CREATE TABLE public.users (
    id text NOT NULL,
    name character varying(100),
    email character varying(100),
    password bytea
);
    DROP TABLE public.users;
       public         heap    postgres    false            �          0    16453    users 
   TABLE DATA           :   COPY public.users (id, name, email, password) FROM stdin;
    public          postgres    false    215   `       P           2606    16459    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �      x���Kn1DמS�4���w9�6�
d��|��h� Bh~M�ԫ��t�-iKI|i��"�(�j�jO������~�q~m?//���t:�"a2±0��l�W⢤���j�.Św'+�Zռpx|�TT�{�gmҍ���3I�mK�&�z��Ie�4mp�>6%���A�.��|}�j��up��2���aKYHE\��7��%PL�9�f�g��Xi�
v�̂�SXvh�B�	X&��ÚCWS�}���Ƹ3��ug�^������'��z?���C(�e�07GZ��k����Y*ʆ��
�	!�M�oC&p�	a6���Va673+��<����;��6R߳&�.�ʨ��C�=�b�"��f�WΪ0ݡ]iA�pE����C��"�"�'�B���D�a���V̌��G���V��%I�HUWIZy0!5[�_T���z�a�0ȇk��r	�<Mfz�B؀ڰr�'�	L	D"���B�1 2��ǔ��w�����r�o�x�     