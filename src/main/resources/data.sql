--
-- PostgreSQL database dump
--


-- Dumped from database version 17.10
-- Dumped by pg_dump version 17.10


--
-- Data for Name: autores; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (35, 1817, 1775, 'Austen, Jane');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (36, 1924, 1845, 'MacKaye, Steele, Mrs.');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (37, 1851, 1797, 'Shelley, Mary Wollstonecraft');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (38, 1616, 1547, 'Cervantes Saavedra, Miguel de');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (39, 1321, 1265, 'Dante Alighieri');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (40, 1921, 1837, 'Burroughs, John');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (41, 0, 0, 'Anonymous');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (42, 0, 0, 'O''Brien, Jack');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (43, 0, 0, 'Unknown');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (44, 1916, 1845, 'Wormser, J. A.');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (45, 1917, 1845, 'Gautier, Judith');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (46, 0, 1887, 'Wann, Harry Vincent');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (47, 1983, 1896, 'Raphaelson, Samson');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (48, 1932, 1862, 'Three Initiates');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (49, 1745, 1667, 'Swift, Jonathan');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (50, 1937, 1860, 'Barrie, J. M. (James Matthew)');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (51, -388, -450, 'Aristophanes');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (52, 2004, 1914, 'Aycock, Roger D.');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (53, 2008, 1928, 'Marlowe, Stephen');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (54, 1935, 1863, 'Herford, Oliver');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (55, 1951, 1880, 'O''Connor, Daniel');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (56, 1953, 1866, 'Sachtleben, William Lewis');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (57, 1955, 1868, 'Allen, Thomas Gaskell');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (58, 1935, 1854, 'Stevens, Thomas');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (59, 1894, 1850, 'Stevenson, Robert Louis');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (60, 1929, 1861, 'Le Feuvre, Amy');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (61, 1958, 1873, 'Grover, Eulalie Osgood');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (62, 1923, 1850, 'Loti, Pierre');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (63, 1888, 1823, 'Johonnot, James');
INSERT INTO public.autores (id, fecha_de_muerte, fecha_de_nacimiento, nombre) VALUES (64, 1962, 1885, 'Blixen, Karen');


--
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (63, ARRAY['en'], 56919, 'Pride and Prejudice');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (64, ARRAY['en'], 1463, 'Pride and Prejudice, a play founded on Jane Austen''s novel');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (65, ARRAY['fr'], 351, 'Frankenstein, ou le Prométhée moderne Volume 3 (of 3)');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (66, ARRAY['hu'], 612, 'Don Quijote de la Mancha');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (67, ARRAY['es'], 17831, 'Don Quijote');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (68, ARRAY['fi'], 163, 'Mielevä hidalgo Don Quijote Manchalainen II:2');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (69, ARRAY['es'], 2589, 'La Divina Comedia');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (70, ARRAY['en'], 514, 'Birds and Poets : with Other Papers');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (71, ARRAY['pt'], 1770, 'A Biblia Sagrada, Contendo o Velho e o Novo Testamento');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (72, ARRAY['la'], 241, 'Biblia Sacra Vulgata - Psalmi XXII');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (73, ARRAY['en'], 322, 'Into the Jaws of Death');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (74, ARRAY['en'], 242, 'Vajra-chhediká, the "Kin Kong King," or Diamond Sútra');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (75, ARRAY['nl'], 238, 'De Vurige Oven: Een verhaal uit den tijd der dragonades in Nederland');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (76, ARRAY['fr'], 239, 'Le Dragon Impérial');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (77, ARRAY['en','fr'], 956, 'French Conversation and Composition');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (78, ARRAY['en'], 299, 'Sensation Jazz: One-Step');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (79, ARRAY['en'], 187, 'The Jazz Singer');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (80, ARRAY['en'], 2145, 'The Kybalion: A Study of The Hermetic Philosophy of Ancient Egypt and Greece');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (81, ARRAY['hu'], 374, 'Gulliver utazásai');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (82, ARRAY['fi'], 147, 'Pekka Poikanen (Peter Pan)');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (83, ARRAY['en'], 811, 'The Frogs');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (84, ARRAY['en'], 161, 'The Frogs of Mars');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (85, ARRAY['en'], 181, 'It''s Raining Frogs!');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (86, ARRAY['en'], 17704, 'Peter Pan');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (87, ARRAY['en'], 1018, 'Peter Pan in Kensington Gardens');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (88, ARRAY['en'], 279, 'The Peter Pan Alphabet');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (89, ARRAY['en'], 472, 'The Story of Peter Pan, Retold from the fairy play by Sir James Barrie');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (90, ARRAY['en'], 482, 'Across Asia on a bicycle : $b the journey of two American students from Constantinople to Peking');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (91, ARRAY['en'], 468, 'Around the World on a Bicycle - Volume I: From San Francisco to Teheran');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (92, ARRAY['en'], 858, 'Travels with a donkey in the Cevennes');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (93, ARRAY['en'], 715, '"Us, and our donkey"');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (94, ARRAY['en'], 184, 'Kittens and Cats: A First Reader');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (95, ARRAY['en'], 167, 'Lives of Two Cats');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (96, ARRAY['en'], 160, 'Book of cats and dogs, and other friends, for little folks');
INSERT INTO public.libros (id, idiomas, numero_de_descargas, titulo) VALUES (97, ARRAY['da'], 122, 'Familien de Cats');


--
-- Data for Name: libro_autor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (63, 35);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (64, 35);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (64, 36);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (65, 37);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (66, 38);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (67, 38);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (68, 38);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (69, 39);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (70, 40);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (72, 41);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (73, 42);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (74, 43);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (75, 44);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (76, 45);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (77, 46);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (79, 47);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (80, 48);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (81, 49);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (82, 50);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (83, 51);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (84, 52);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (85, 53);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (86, 50);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (87, 50);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (88, 54);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (89, 50);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (89, 55);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (90, 56);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (90, 57);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (91, 58);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (92, 59);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (93, 60);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (94, 61);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (95, 62);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (96, 63);
INSERT INTO public.libro_autor (libro_id, autor_id) VALUES (97, 64);


--
-- Name: autores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--



--
-- Name: libros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--



--
-- PostgreSQL database dump complete
--

