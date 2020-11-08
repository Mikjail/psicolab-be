INSERT INTO users (username, password, tests_assigned)
values ('admin', '$2a$08$C2ScwN1rXLYTGMltPexYJeJW6sYcBjHuhgx6fuo0rzvWdSjhvozAe', ARRAY[1]);

INSERT INTO tests (name, points_conversion)
values ('Verbal Reasoning', 
'{
  "0": [1,10],
  "1" : [1,10],
  "2" : [1,10],
  "3" : [1,10], 
  "4" : [1,10],
  "5" : [1,10],
  "6" : [1,10],
  "7" : [1,10],
  "8" : [1,10],
  "9" : [1,10],
  "10" : [1,10],
  "11" : [1,10],
  "12" : [1,10],
  "13" : [1,10],
  "14" : [1,10],
  "15" : [1,10],
  "16" : [1,10],
  "17" : [1,10],
  "18" : [1,10],
  "19" : [1,10],
  "20" : [1,10],
  "21" : [1,10],
  "22" : [1,10],
  "23" : [5,15],
  "24" : [5,15],
  "25" : [5,15],
  "26" : [5,15],
  "27" : [10,20],
  "28" : [10,20],
  "29" : [15,25],
  "30" : [15,25],
  "31" : [20,30],
  "32" : [25,35],
  "33" : [25,35],
  "34" : [30,40],
  "35" : [35,45],
  "36" : [40,50],
  "37" : [45,55],
  "38" : [50,60],
  "39" : [55,65],
  "40" : [60,70],
  "41" : [70,80],
  "42" : [75,85],
  "43" : [75,85],
  "44" : [80,90],
  "45" : [85,95],
  "46" : [90,97],
  "47" : [95,99],
  "48" : [95,99],
  "49" : [95,99],
  "50" : [95,99]
  }');

INSERT INTO questions
SELECT * FROM json_populate_recordset (NULL::questions,
  '[
  {
      "id": 1,
      "points": 0,
      "description": "es a manteca como café es a",
      "test_id": 1,
      "correct_answer": 3
  },
  {
      "id": 2,
      "points": 0,
      "description": "es a masculino como mujer es a",
      "test_id": 1,
      "correct_answer": 9
  },
  {
      "id": 3,
      "points": 0,
      "description": "es a caballo como chófer es a",
      "test_id": 1,
      "correct_answer": 12
  },
  {
      "id": 4,
      "points": 0,
      "description": "es a colmillo como ciervo es a",
      "test_id": 1,
      "correct_answer": 18
  },
  {
      "id": 5,
      "points": 0,
      "description": "es a animal como corteza es a",
      "test_id": 1,
      "correct_answer": 23
  },
  {
      "id": 6,
      "points": 0,
      "description": "es a aire como canilla es a",
      "test_id": 1,
      "correct_answer": 26
  },
  {
      "id": 7,
      "points": 0,
      "description": "es a carrera como lentitud es a",
      "test_id": 1,
      "correct_answer": 35
  },
  {
      "id": 8,
      "points": 0,
      "description": "es a perro como Hereford es a",
      "test_id": 1,
      "correct_answer": 36
  },
  {
      "id": 9,
      "points": 0,
      "description": "es a corcho como caja es a",
      "test_id": 1,
      "correct_answer": 41
  },
  {
      "id": 10,
      "points": 0,
      "description": "es a segundo como día es a",
      "test_id": 1,
      "correct_answer": 49
  },
  {
      "id": 11,
      "points": 0,
      "description": "es a tierra como armada es a",
      "test_id": 1,
      "correct_answer": 54
  },
  {
      "id": 12,
      "points": 0,
      "description": "es a avión como garaje es a",
      "test_id": 1,
      "correct_answer": 58
  },
  {
      "id": 13,
      "points": 0,
      "description": "es a rosbif como cerdo es a",
      "test_id": 1,
      "correct_answer": 62
  },
  {
      "id": 14,
      "points": 0,
      "description": "es a seguir como detenerse es a",
      "test_id": 1,
      "correct_answer": 68
  },
  {
      "id": 15,
      "points": 0,
      "description": "es a integrar como separar es a",
      "test_id": 1,
      "correct_answer": 75
  },
  {
      "id": 16,
      "points": 0,
      "description": "es a pie como sombrero es a",
      "test_id": 1,
      "correct_answer": 79
  },
  {
      "id": 17,
      "points": 0,
      "description": "es a máximo como peor es a",
      "test_id": 1,
      "correct_answer": 81
  },
  {
      "id": 18,
      "points": 0,
      "description": "es a verso como escultor es a",
      "test_id": 1,
      "correct_answer": 87
  },
  {
      "id": 19,
      "points": 0,
      "description": "es a ostra como diamante es a",
      "test_id": 1,
      "correct_answer": 93
  },
  {
      "id": 20,
      "points": 0,
      "description": "es a Inglaterra como rublo es a",
      "test_id": 1,
      "correct_answer": 96
  },
  {
      "id": 21,
      "points": 0,
      "description": "es a jardín como pared es a",
      "test_id": 1,
      "correct_answer": 103
  },
  {
      "id": 22,
      "points": 0,
      "description": "es a vela como madera es a",
      "test_id": 1,
      "correct_answer": 107
  },
  {
      "id": 23,
      "points": 0,
      "description": "es a tercero como quinto es a",
      "test_id": 1,
      "correct_answer": 111
  },
  {
      "id": 24,
      "points": 0,
      "description": "es a caballería como pie es a",
      "test_id": 1,
      "correct_answer": 117
  },
  {
      "id": 25,
      "points": 0,
      "description": "es a bandera como poste es a",
      "test_id": 1,
      "correct_answer": 125
  },
  {
      "id": 26,
      "points": 0,
      "description": "es a tuerca como dedo es a",
      "test_id": 1,
      "correct_answer": 126
  },
  {
      "id": 27,
      "points": 0,
      "description": "es a pesca como escopeta es a",
      "test_id": 1,
      "correct_answer": 135
  },
  {
      "id": 28,
      "points": 0,
      "description": "es a médico como secretario es a",
      "test_id": 1,
      "correct_answer": 137
  },
  {
      "id": 29,
      "points": 0,
      "description": "es a deber como derecho es a",
      "test_id": 1,
      "correct_answer": 145
  },
  {
      "id": 30,
      "points": 0,
      "description": "es a archivo como revista es a",
      "test_id": 1,
      "correct_answer": 149
  },
  {
      "id": 31,
      "points": 0,
      "description": "es a pantera como perro es a",
      "test_id": 1,
      "correct_answer": 153
  },
  {
      "id": 32,
      "points": 0,
      "description": "es a tío como niño es a",
      "test_id": 1,
      "correct_answer": 158
  },
  {
      "id": 33,
      "points": 0,
      "description": "es a doméstico como león es a",
      "test_id": 1,
      "correct_answer": 165
  },
  {
      "id": 34,
      "points": 0,
      "description": "es a perder como triunfar es a",
      "test_id": 1,
      "correct_answer": 167
  },
  {
      "id": 35,
      "points": 0,
      "description": "es a popa como babor es a",
      "test_id": 1,
      "correct_answer": 175
  },
  {
      "id": 36,
      "points": 0,
      "description": "es a tren como peaje es a",
      "test_id": 1,
      "correct_answer": 177
  },
  {
      "id": 37,
      "points": 0,
      "description": "es a franco como cumplidor es a",
      "test_id": 1,
      "correct_answer": 181
  },
  {
      "id": 38,
      "points": 0,
      "description": "es a prohibir como confirmar es a",
      "test_id": 1,
      "correct_answer": 188
  },
  {
      "id": 39,
      "points": 0,
      "description": "es a encima como cerca es a",
      "test_id": 1,
      "correct_answer": 194
  },
  {
      "id": 40,
      "points": 0,
      "description": "es a castigar como olvidar es a",
      "test_id": 1,
      "correct_answer": 200
  },
  {
      "id": 41,
      "points": 0,
      "description": "es a tripulación como asaltante es a",
      "test_id": 1,
      "correct_answer": 204
  },
  {
      "id": 42,
      "points": 0,
      "description": "es a fusionar como separar es a",
      "test_id": 1,
      "correct_answer": 209
  },
  {
      "id": 43,
      "points": 0,
      "description": "es a ciudad como nacional es a",
      "test_id": 1,
      "correct_answer": 212
  },
  {
      "id": 44,
      "points": 0,
      "description": "es a vaca como carnero es a",
      "test_id": 1,
      "correct_answer": 216
  },
  {
      "id": 45,
      "points": 0,
      "description": "es a nacer como cosa es a",
      "test_id": 1,
      "correct_answer": 221
  },
  {
      "id": 46,
      "points": 0,
      "description": "es a tierra como nudo es a",
      "test_id": 1,
      "correct_answer": 227
  },
  {
      "id": 47,
      "points": 0,
      "description": "es a pájaro como pelar es a",
      "test_id": 1,
      "correct_answer": 234
  },
  {
      "id": 48,
      "points": 0,
      "description": "es a lector como elenco es a",
      "test_id": 1,
      "correct_answer": 236
  },
  {
      "id": 49,
      "points": 0,
      "description": "es a prisión como Louvre es a",
      "test_id": 1,
      "correct_answer": 244
  },
  {
      "id": 50,
      "points": 0,
      "description": "es a dibujo como pincel es a",
      "test_id": 1,
      "correct_answer": 250
  }
]');

INSERT INTO answers
SELECT * FROM json_populate_recordset (NULL::answers,
  '[
  {
      "test_id": 1,
      "question_id": 1,
      "sequence": 1,
      "text": "pan - verter",
      "id": 1
  },
  {
      "test_id": 1,
      "question_id": 1,
      "sequence": 2,
      "text": "vaca - leche",
      "id": 2
  },
  {
      "test_id": 1,
      "question_id": 1,
      "sequence": 3,
      "text": "pan - leche",
      "id": 3
  },
  {
      "test_id": 1,
      "question_id": 1,
      "sequence": 4,
      "text": "pan - caliente",
      "id": 4
  },
  {
      "test_id": 1,
      "question_id": 1,
      "sequence": 5,
      "text": "engordar - crema",
      "id": 5
  },
  {
      "test_id": 1,
      "question_id": 2,
      "sequence": 1,
      "text": "hombre - señora",
      "id": 6
  },
  {
      "test_id": 1,
      "question_id": 2,
      "sequence": 2,
      "text": "maligno - femenino",
      "id": 7
  },
  {
      "test_id": 1,
      "question_id": 2,
      "sequence": 3,
      "text": "maligno - muchacha",
      "id": 8
  },
  {
      "test_id": 1,
      "question_id": 2,
      "sequence": 4,
      "text": "hombre - femenino",
      "id": 9
  },
  {
      "test_id": 1,
      "question_id": 2,
      "sequence": 5,
      "text": "hombre - jovencita",
      "id": 10
  },
  {
      "test_id": 1,
      "question_id": 3,
      "sequence": 1,
      "text": "crin - automóvil",
      "id": 11
  },
  {
      "test_id": 1,
      "question_id": 3,
      "sequence": 2,
      "text": "jinete - automóvil",
      "id": 12
  },
  {
      "test_id": 1,
      "question_id": 3,
      "sequence": 3,
      "text": "establo - automóvil",
      "id": 13
  },
  {
      "test_id": 1,
      "question_id": 3,
      "sequence": 4,
      "text": "crin - volante",
      "id": 14
  },
  {
      "test_id": 1,
      "question_id": 3,
      "sequence": 5,
      "text": "crin - uniforme",
      "id": 15
  },
  {
      "test_id": 1,
      "question_id": 4,
      "sequence": 1,
      "text": "elefante - cuerno",
      "id": 16
  },
  {
      "test_id": 1,
      "question_id": 4,
      "sequence": 2,
      "text": "marfil - cuerno",
      "id": 17
  },
  {
      "test_id": 1,
      "question_id": 4,
      "sequence": 3,
      "text": "elefante - cornamenta",
      "id": 18
  },
  {
      "test_id": 1,
      "question_id": 4,
      "sequence": 4,
      "text": "marfil - cornamenta",
      "id": 19
  },
  {
      "test_id": 1,
      "question_id": 4,
      "sequence": 5,
      "text": "marfil - cazar",
      "id": 20
  },
  {
      "test_id": 1,
      "question_id": 5,
      "sequence": 1,
      "text": "cáscara - árbol",
      "id": 21
  },
  {
      "test_id": 1,
      "question_id": 5,
      "sequence": 2,
      "text": "piel - uva",
      "id": 22
  },
  {
      "test_id": 1,
      "question_id": 5,
      "sequence": 3,
      "text": "piel - árbol",
      "id": 23
  },
  {
      "test_id": 1,
      "question_id": 5,
      "sequence": 4,
      "text": "hombre - protección",
      "id": 24
  },
  {
      "test_id": 1,
      "question_id": 5,
      "sequence": 5,
      "text": "cáscara- uva",
      "id": 25
  },
  {
      "test_id": 1,
      "question_id": 6,
      "sequence": 1,
      "text": "ventana - agua",
      "id": 26
  },
  {
      "test_id": 1,
      "question_id": 6,
      "sequence": 2,
      "text": "viento - pileta",
      "id": 27
  },
  {
      "test_id": 1,
      "question_id": 6,
      "sequence": 3,
      "text": "avión - pierna",
      "id": 28
  },
  {
      "test_id": 1,
      "question_id": 6,
      "sequence": 4,
      "text": "alas - pierna",
      "id": 29
  },
  {
      "test_id": 1,
      "question_id": 6,
      "sequence": 5,
      "text": "campo - casa",
      "id": 30
  },
  {
      "test_id": 1,
      "question_id": 7,
      "sequence": 1,
      "text": "profesión - trabajo",
      "id": 31
  },
  {
      "test_id": 1,
      "question_id": 7,
      "sequence": 2,
      "text": "ligero - tardío",
      "id": 32
  },
  {
      "test_id": 1,
      "question_id": 7,
      "sequence": 3,
      "text": "correr - tardío",
      "id": 33
  },
  {
      "test_id": 1,
      "question_id": 7,
      "sequence": 4,
      "text": "rápido - detención",
      "id": 34
  },
  {
      "test_id": 1,
      "question_id": 7,
      "sequence": 5,
      "text": "velocidad - paseo",
      "id": 35
  },
  {
      "test_id": 1,
      "question_id": 8,
      "sequence": 1,
      "text": "Terrier - vaca",
      "id": 36
  },
  {
      "test_id": 1,
      "question_id": 8,
      "sequence": 2,
      "text": "ladrar - vaca",
      "id": 37
  },
  {
      "test_id": 1,
      "question_id": 8,
      "sequence": 3,
      "text": "cola - vaca",
      "id": 38
  },
  {
      "test_id": 1,
      "question_id": 8,
      "sequence": 4,
      "text": "cola - Holandesa",
      "id": 39
  },
  {
      "test_id": 1,
      "question_id": 8,
      "sequence": 5,
      "text": "ladrar - Holandesa",
      "id": 40
  },
  {
      "test_id": 1,
      "question_id": 9,
      "sequence": 1,
      "text": "botella - tapa",
      "id": 41
  },
  {
      "test_id": 1,
      "question_id": 9,
      "sequence": 2,
      "text": "botella - cesto",
      "id": 42
  },
  {
      "test_id": 1,
      "question_id": 9,
      "sequence": 3,
      "text": "botella - sombrero",
      "id": 43
  },
  {
      "test_id": 1,
      "question_id": 9,
      "sequence": 4,
      "text": "botella - fósforos",
      "id": 44
  },
  {
      "test_id": 1,
      "question_id": 9,
      "sequence": 5,
      "text": "flotar - cesto",
      "id": 45
  },
  {
      "test_id": 1,
      "question_id": 10,
      "sequence": 1,
      "text": "primero - hoja",
      "id": 46
  },
  {
      "test_id": 1,
      "question_id": 10,
      "sequence": 2,
      "text": "primero - luz",
      "id": 47
  },
  {
      "test_id": 1,
      "question_id": 10,
      "sequence": 3,
      "text": "minuto - diario",
      "id": 48
  },
  {
      "test_id": 1,
      "question_id": 10,
      "sequence": 4,
      "text": "minuto - hora",
      "id": 49
  },
  {
      "test_id": 1,
      "question_id": 10,
      "sequence": 5,
      "text": "reloj - diana",
      "id": 50
  },
  {
      "test_id": 1,
      "question_id": 11,
      "sequence": 1,
      "text": "suelo - mar",
      "id": 51
  },
  {
      "test_id": 1,
      "question_id": 11,
      "sequence": 2,
      "text": "ejército - aire",
      "id": 52
  },
  {
      "test_id": 1,
      "question_id": 11,
      "sequence": 3,
      "text": "atracar - mar",
      "id": 53
  },
  {
      "test_id": 1,
      "question_id": 11,
      "sequence": 4,
      "text": "ejército - mar",
      "id": 54
  },
  {
      "test_id": 1,
      "question_id": 11,
      "sequence": 5,
      "text": "barco - mar",
      "id": 55
  },
  {
      "test_id": 1,
      "question_id": 12,
      "sequence": 1,
      "text": "turbo - casa",
      "id": 56
  },
  {
      "test_id": 1,
      "question_id": 12,
      "sequence": 2,
      "text": "turbo - depósito",
      "id": 57
  },
  {
      "test_id": 1,
      "question_id": 12,
      "sequence": 3,
      "text": "hangar - automóvil",
      "id": 58
  },
  {
      "test_id": 1,
      "question_id": 12,
      "sequence": 4,
      "text": "ala - automóvil",
      "id": 59
  },
  {
      "test_id": 1,
      "question_id": 12,
      "sequence": 5,
      "text": "ala - depósito",
      "id": 60
  },
  {
      "test_id": 1,
      "question_id": 13,
      "sequence": 1,
      "text": "novillo - chiquero",
      "id": 61
  },
  {
      "test_id": 1,
      "question_id": 13,
      "sequence": 2,
      "text": "vaca - jamón",
      "id": 62
  },
  {
      "test_id": 1,
      "question_id": 13,
      "sequence": 3,
      "text": "toro - lechón",
      "id": 63
  },
  {
      "test_id": 1,
      "question_id": 13,
      "sequence": 4,
      "text": "costilla - fiambre",
      "id": 64
  },
  {
      "test_id": 1,
      "question_id": 13,
      "sequence": 5,
      "text": "vaca - chiquero",
      "id": 65
  },
  {
      "test_id": 1,
      "question_id": 14,
      "sequence": 1,
      "text": "retroceder - contenerse",
      "id": 66
  },
  {
      "test_id": 1,
      "question_id": 14,
      "sequence": 2,
      "text": "intervenir - contenerse",
      "id": 67
  },
  {
      "test_id": 1,
      "question_id": 14,
      "sequence": 3,
      "text": "estacionarse - avanzar",
      "id": 68
  },
  {
      "test_id": 1,
      "question_id": 14,
      "sequence": 4,
      "text": "conseguir - avanzar",
      "id": 69
  },
  {
      "test_id": 1,
      "question_id": 14,
      "sequence": 5,
      "text": "intervenir - avanzar",
      "id": 70
  },
  {
      "test_id": 1,
      "question_id": 15,
      "sequence": 1,
      "text": "aceptar - unir",
      "id": 71
  },
  {
      "test_id": 1,
      "question_id": 15,
      "sequence": 2,
      "text": "calcular - discriminar",
      "id": 72
  },
  {
      "test_id": 1,
      "question_id": 15,
      "sequence": 3,
      "text": "celebrar - generar",
      "id": 73
  },
  {
      "test_id": 1,
      "question_id": 15,
      "sequence": 4,
      "text": "internalizar - operar",
      "id": 74
  },
  {
      "test_id": 1,
      "question_id": 15,
      "sequence": 5,
      "text": "mezclar - segregar",
      "id": 75
  },
  {
      "test_id": 1,
      "question_id": 16,
      "sequence": 1,
      "text": "dedo - cabeza",
      "id": 76
  },
  {
      "test_id": 1,
      "question_id": 16,
      "sequence": 2,
      "text": "tobillo - cabeza",
      "id": 77
  },
  {
      "test_id": 1,
      "question_id": 16,
      "sequence": 3,
      "text": "zapato - ala",
      "id": 78
  },
  {
      "test_id": 1,
      "question_id": 16,
      "sequence": 4,
      "text": "zapato - cabeza",
      "id": 79
  },
  {
      "test_id": 1,
      "question_id": 16,
      "sequence": 5,
      "text": "dedo - ala",
      "id": 80
  },
  {
      "test_id": 1,
      "question_id": 17,
      "sequence": 1,
      "text": "mínimo - mejor",
      "id": 81
  },
  {
      "test_id": 1,
      "question_id": 17,
      "sequence": 2,
      "text": "mucho - mejor",
      "id": 82
  },
  {
      "test_id": 1,
      "question_id": 17,
      "sequence": 3,
      "text": "mucho - malo",
      "id": 83
  },
  {
      "test_id": 1,
      "question_id": 17,
      "sequence": 4,
      "text": "más - pésimo",
      "id": 84
  },
  {
      "test_id": 1,
      "question_id": 17,
      "sequence": 5,
      "text": "abundante - pésimo",
      "id": 85
  },
  {
      "test_id": 1,
      "question_id": 18,
      "sequence": 1,
      "text": "poeta - artista",
      "id": 86
  },
  {
      "test_id": 1,
      "question_id": 18,
      "sequence": 2,
      "text": "poeta - estatua",
      "id": 87
  },
  {
      "test_id": 1,
      "question_id": 18,
      "sequence": 3,
      "text": "músico - estatua",
      "id": 88
  },
  {
      "test_id": 1,
      "question_id": 18,
      "sequence": 4,
      "text": "reverso - estatua",
      "id": 89
  },
  {
      "test_id": 1,
      "question_id": 18,
      "sequence": 5,
      "text": "reverso - artista",
      "id": 90
  },
  {
      "test_id": 1,
      "question_id": 19,
      "sequence": 1,
      "text": "almeja - gema",
      "id": 91
  },
  {
      "test_id": 1,
      "question_id": 19,
      "sequence": 2,
      "text": "sopa - gema",
      "id": 92
  },
  {
      "test_id": 1,
      "question_id": 19,
      "sequence": 3,
      "text": "perla - mina",
      "id": 93
  },
  {
      "test_id": 1,
      "question_id": 19,
      "sequence": 4,
      "text": "almeja - mina",
      "id": 94
  },
  {
      "test_id": 1,
      "question_id": 19,
      "sequence": 5,
      "text": "concha - perla",
      "id": 95
  },
  {
      "test_id": 1,
      "question_id": 20,
      "sequence": 1,
      "text": "libra - Rusia",
      "id": 96
  },
  {
      "test_id": 1,
      "question_id": 20,
      "sequence": 2,
      "text": "Londes - dinero",
      "id": 97
  },
  {
      "test_id": 1,
      "question_id": 20,
      "sequence": 3,
      "text": "Londres - México",
      "id": 98
  },
  {
      "test_id": 1,
      "question_id": 20,
      "sequence": 4,
      "text": "Londres - mandolina",
      "id": 99
  },
  {
      "test_id": 1,
      "question_id": 20,
      "sequence": 5,
      "text": "Londres - Rusia",
      "id": 100
  },
  {
      "test_id": 1,
      "question_id": 21,
      "sequence": 1,
      "text": "alambrado - techo",
      "id": 101
  },
  {
      "test_id": 1,
      "question_id": 21,
      "sequence": 2,
      "text": "alambrado - ladrillo",
      "id": 102
  },
  {
      "test_id": 1,
      "question_id": 21,
      "sequence": 3,
      "text": "cerco - habitación",
      "id": 103
  },
  {
      "test_id": 1,
      "question_id": 21,
      "sequence": 4,
      "text": "cerco - corniza",
      "id": 104
  },
  {
      "test_id": 1,
      "question_id": 21,
      "sequence": 5,
      "text": "jugar - decorar",
      "id": 105
  },
  {
      "test_id": 1,
      "question_id": 22,
      "sequence": 1,
      "text": "cera - vegetal",
      "id": 106
  },
  {
      "test_id": 1,
      "question_id": 22,
      "sequence": 2,
      "text": "cera - palo",
      "id": 107
  },
  {
      "test_id": 1,
      "question_id": 22,
      "sequence": 3,
      "text": "viento - bote",
      "id": 108
  },
  {
      "test_id": 1,
      "question_id": 22,
      "sequence": 4,
      "text": "dormir - papel",
      "id": 109
  },
  {
      "test_id": 1,
      "question_id": 22,
      "sequence": 5,
      "text": "bote - vegetal",
      "id": 110
  },
  {
      "test_id": 1,
      "question_id": 23,
      "sequence": 1,
      "text": "primero - séptimo",
      "id": 111
  },
  {
      "test_id": 1,
      "question_id": 23,
      "sequence": 2,
      "text": "primero - décimo",
      "id": 112
  },
  {
      "test_id": 1,
      "question_id": 23,
      "sequence": 3,
      "text": "segundo - cuarto",
      "id": 113
  },
  {
      "test_id": 1,
      "question_id": 23,
      "sequence": 4,
      "text": "triple - cinco",
      "id": 114
  },
  {
      "test_id": 1,
      "question_id": 23,
      "sequence": 5,
      "text": "cuarta - sexta",
      "id": 115
  },
  {
      "test_id": 1,
      "question_id": 24,
      "sequence": 1,
      "text": "caballo - caminar",
      "id": 116
  },
  {
      "test_id": 1,
      "question_id": 24,
      "sequence": 2,
      "text": "caballo - infantería",
      "id": 117
  },
  {
      "test_id": 1,
      "question_id": 24,
      "sequence": 3,
      "text": "establo - yarda",
      "id": 118
  },
  {
      "test_id": 1,
      "question_id": 24,
      "sequence": 4,
      "text": "estribo - infantería",
      "id": 119
  },
  {
      "test_id": 1,
      "question_id": 24,
      "sequence": 5,
      "text": "caballo - escudo",
      "id": 120
  },
  {
      "test_id": 1,
      "question_id": 25,
      "sequence": 1,
      "text": "saludo - madera",
      "id": 121
  },
  {
      "test_id": 1,
      "question_id": 25,
      "sequence": 2,
      "text": "saludo - alambrado",
      "id": 122
  },
  {
      "test_id": 1,
      "question_id": 25,
      "sequence": 3,
      "text": "franjas - alambrado",
      "id": 123
  },
  {
      "test_id": 1,
      "question_id": 25,
      "sequence": 4,
      "text": "franjas - luz",
      "id": 124
  },
  {
      "test_id": 1,
      "question_id": 25,
      "sequence": 5,
      "text": "mástil - farol",
      "id": 125
  },
  {
      "test_id": 1,
      "question_id": 26,
      "sequence": 1,
      "text": "tornillo - anillo",
      "id": 126
  },
  {
      "test_id": 1,
      "question_id": 26,
      "sequence": 2,
      "text": "hierro - anillo",
      "id": 127
  },
  {
      "test_id": 1,
      "question_id": 26,
      "sequence": 3,
      "text": "metal - guante",
      "id": 128
  },
  {
      "test_id": 1,
      "question_id": 26,
      "sequence": 4,
      "text": "ajustar - piel",
      "id": 129
  },
  {
      "test_id": 1,
      "question_id": 26,
      "sequence": 5,
      "text": "tornillo - señalar",
      "id": 130
  },
  {
      "test_id": 1,
      "question_id": 27,
      "sequence": 1,
      "text": "carnada - disparo",
      "id": 131
  },
  {
      "test_id": 1,
      "question_id": 27,
      "sequence": 2,
      "text": "bacalao - gatillo",
      "id": 132
  },
  {
      "test_id": 1,
      "question_id": 27,
      "sequence": 3,
      "text": "pescado - disparar",
      "id": 133
  },
  {
      "test_id": 1,
      "question_id": 27,
      "sequence": 4,
      "text": "bacalao - bala",
      "id": 134
  },
  {
      "test_id": 1,
      "question_id": 27,
      "sequence": 5,
      "text": "caña - caza",
      "id": 135
  },
  {
      "test_id": 1,
      "question_id": 28,
      "sequence": 1,
      "text": "hospital - oficina",
      "id": 136
  },
  {
      "test_id": 1,
      "question_id": 28,
      "sequence": 2,
      "text": "enfermero - ejecutivo",
      "id": 137
  },
  {
      "test_id": 1,
      "question_id": 28,
      "sequence": 3,
      "text": "curación - dactilógrafa",
      "id": 138
  },
  {
      "test_id": 1,
      "question_id": 28,
      "sequence": 4,
      "text": "medicina - oficina",
      "id": 139
  },
  {
      "test_id": 1,
      "question_id": 28,
      "sequence": 5,
      "text": "medicina - ejecutivo",
      "id": 140
  },
  {
      "test_id": 1,
      "question_id": 29,
      "sequence": 1,
      "text": "conducta - corrección",
      "id": 141
  },
  {
      "test_id": 1,
      "question_id": 29,
      "sequence": 2,
      "text": "obligación - tribunales",
      "id": 142
  },
  {
      "test_id": 1,
      "question_id": 29,
      "sequence": 3,
      "text": "trabajo - beneficio",
      "id": 143
  },
  {
      "test_id": 1,
      "question_id": 29,
      "sequence": 4,
      "text": "impuesto - poder",
      "id": 144
  },
  {
      "test_id": 1,
      "question_id": 29,
      "sequence": 5,
      "text": "obligación - facultad",
      "id": 145
  },
  {
      "test_id": 1,
      "question_id": 30,
      "sequence": 1,
      "text": "cajón - diario",
      "id": 146
  },
  {
      "test_id": 1,
      "question_id": 30,
      "sequence": 2,
      "text": "papel - diario",
      "id": 147
  },
  {
      "test_id": 1,
      "question_id": 30,
      "sequence": 3,
      "text": "papel - publicidad",
      "id": 148
  },
  {
      "test_id": 1,
      "question_id": 30,
      "sequence": 4,
      "text": "carta - estante",
      "id": 149
  },
  {
      "test_id": 1,
      "question_id": 30,
      "sequence": 5,
      "text": "carta - nota",
      "id": 150
  },
  {
      "test_id": 1,
      "question_id": 31,
      "sequence": 1,
      "text": "selva - casa",
      "id": 151
  },
  {
      "test_id": 1,
      "question_id": 31,
      "sequence": 2,
      "text": "gato - ladrido",
      "id": 152
  },
  {
      "test_id": 1,
      "question_id": 31,
      "sequence": 3,
      "text": "gato - lobo",
      "id": 153
  },
  {
      "test_id": 1,
      "question_id": 31,
      "sequence": 4,
      "text": "selva - jardín",
      "id": 154
  },
  {
      "test_id": 1,
      "question_id": 31,
      "sequence": 5,
      "text": "presa - ladrido",
      "id": 155
  },
  {
      "test_id": 1,
      "question_id": 32,
      "sequence": 1,
      "text": "tía - primo",
      "id": 156
  },
  {
      "test_id": 1,
      "question_id": 32,
      "sequence": 2,
      "text": "primo - hijo",
      "id": 157
  },
  {
      "test_id": 1,
      "question_id": 32,
      "sequence": 3,
      "text": "niña - tía",
      "id": 158
  },
  {
      "test_id": 1,
      "question_id": 32,
      "sequence": 4,
      "text": "padre - hijo",
      "id": 159
  },
  {
      "test_id": 1,
      "question_id": 32,
      "sequence": 5,
      "text": "sobrino - niña",
      "id": 160
  },
  {
      "test_id": 1,
      "question_id": 33,
      "sequence": 1,
      "text": "amansar - salvaje",
      "id": 161
  },
  {
      "test_id": 1,
      "question_id": 33,
      "sequence": 2,
      "text": "amansar - caza",
      "id": 162
  },
  {
      "test_id": 1,
      "question_id": 33,
      "sequence": 3,
      "text": "moderado - salvaje",
      "id": 163
  },
  {
      "test_id": 1,
      "question_id": 33,
      "sequence": 4,
      "text": "hogar - tigre",
      "id": 164
  },
  {
      "test_id": 1,
      "question_id": 33,
      "sequence": 5,
      "text": "perro - salvaje",
      "id": 165
  },
  {
      "test_id": 1,
      "question_id": 34,
      "sequence": 1,
      "text": "fallar - fracasar",
      "id": 166
  },
  {
      "test_id": 1,
      "question_id": 34,
      "sequence": 2,
      "text": "ganar - fracasar",
      "id": 167
  },
  {
      "test_id": 1,
      "question_id": 34,
      "sequence": 3,
      "text": "ganar - adelantar",
      "id": 168
  },
  {
      "test_id": 1,
      "question_id": 34,
      "sequence": 4,
      "text": "lograr - aprobar",
      "id": 169
  },
  {
      "test_id": 1,
      "question_id": 34,
      "sequence": 5,
      "text": "ganar - aprobar",
      "id": 170
  },
  {
      "test_id": 1,
      "question_id": 35,
      "sequence": 1,
      "text": "proa - navegación",
      "id": 171
  },
  {
      "test_id": 1,
      "question_id": 35,
      "sequence": 2,
      "text": "proa - atracar",
      "id": 172
  },
  {
      "test_id": 1,
      "question_id": 35,
      "sequence": 3,
      "text": "bandera - embarque",
      "id": 173
  },
  {
      "test_id": 1,
      "question_id": 35,
      "sequence": 4,
      "text": "casco - embarque",
      "id": 174
  },
  {
      "test_id": 1,
      "question_id": 35,
      "sequence": 5,
      "text": "proa - estribor",
      "id": 175
  },
  {
      "test_id": 1,
      "question_id": 36,
      "sequence": 1,
      "text": "vía - puente",
      "id": 176
  },
  {
      "test_id": 1,
      "question_id": 36,
      "sequence": 2,
      "text": "pasaje - puente",
      "id": 177
  },
  {
      "test_id": 1,
      "question_id": 36,
      "sequence": 3,
      "text": "motor - puente",
      "id": 178
  },
  {
      "test_id": 1,
      "question_id": 36,
      "sequence": 4,
      "text": "motor - viajar",
      "id": 179
  },
  {
      "test_id": 1,
      "question_id": 36,
      "sequence": 5,
      "text": "pasajero - puente",
      "id": 180
  },
  {
      "test_id": 1,
      "question_id": 37,
      "sequence": 1,
      "text": "sincero - responsable",
      "id": 181
  },
  {
      "test_id": 1,
      "question_id": 37,
      "sequence": 2,
      "text": "locuaz - serio",
      "id": 182
  },
  {
      "test_id": 1,
      "question_id": 37,
      "sequence": 3,
      "text": "libre - jugador",
      "id": 183
  },
  {
      "test_id": 1,
      "question_id": 37,
      "sequence": 4,
      "text": "dinero - pagador",
      "id": 184
  },
  {
      "test_id": 1,
      "question_id": 37,
      "sequence": 5,
      "text": "dinero - puntual",
      "id": 185
  },
  {
      "test_id": 1,
      "question_id": 38,
      "sequence": 1,
      "text": "privar - obtener",
      "id": 186
  },
  {
      "test_id": 1,
      "question_id": 38,
      "sequence": 2,
      "text": "vedar - denegar",
      "id": 187
  },
  {
      "test_id": 1,
      "question_id": 38,
      "sequence": 3,
      "text": "permitir - rectificar",
      "id": 188
  },
  {
      "test_id": 1,
      "question_id": 38,
      "sequence": 4,
      "text": "permitir - asentir",
      "id": 189
  },
  {
      "test_id": 1,
      "question_id": 38,
      "sequence": 5,
      "text": "excluir - comunión",
      "id": 190
  },
  {
      "test_id": 1,
      "question_id": 39,
      "sequence": 1,
      "text": "alto - casi",
      "id": 191
  },
  {
      "test_id": 1,
      "question_id": 39,
      "sequence": 2,
      "text": "alto - próximo",
      "id": 192
  },
  {
      "test_id": 1,
      "question_id": 39,
      "sequence": 3,
      "text": "debajo - próximo",
      "id": 193
  },
  {
      "test_id": 1,
      "question_id": 39,
      "sequence": 4,
      "text": "debajo - distante",
      "id": 194
  },
  {
      "test_id": 1,
      "question_id": 39,
      "sequence": 5,
      "text": "arriba - distante",
      "id": 195
  },
  {
      "test_id": 1,
      "question_id": 40,
      "sequence": 1,
      "text": "juzgar - perdonar",
      "id": 196
  },
  {
      "test_id": 1,
      "question_id": 40,
      "sequence": 2,
      "text": "encarcelar - memorizar",
      "id": 197
  },
  {
      "test_id": 1,
      "question_id": 40,
      "sequence": 3,
      "text": "juzgar - perder",
      "id": 198
  },
  {
      "test_id": 1,
      "question_id": 40,
      "sequence": 4,
      "text": "azotar - recordar",
      "id": 199
  },
  {
      "test_id": 1,
      "question_id": 40,
      "sequence": 5,
      "text": "indultar - recordar",
      "id": 200
  },
  {
      "test_id": 1,
      "question_id": 41,
      "sequence": 1,
      "text": "barco - botón",
      "id": 201
  },
  {
      "test_id": 1,
      "question_id": 41,
      "sequence": 2,
      "text": "cubierta - ladrón",
      "id": 202
  },
  {
      "test_id": 1,
      "question_id": 41,
      "sequence": 3,
      "text": "marinero - ladrón",
      "id": 203
  },
  {
      "test_id": 1,
      "question_id": 41,
      "sequence": 4,
      "text": "marinero - banda",
      "id": 204
  },
  {
      "test_id": 1,
      "question_id": 41,
      "sequence": 5,
      "text": "viaje - robo",
      "id": 205
  },
  {
      "test_id": 1,
      "question_id": 42,
      "sequence": 1,
      "text": "calentar - reparar",
      "id": 206
  },
  {
      "test_id": 1,
      "question_id": 42,
      "sequence": 2,
      "text": "denegar - suturar",
      "id": 207
  },
  {
      "test_id": 1,
      "question_id": 42,
      "sequence": 3,
      "text": "reemplazar - destituir",
      "id": 208
  },
  {
      "test_id": 1,
      "question_id": 42,
      "sequence": 4,
      "text": "unir - segregar",
      "id": 209
  },
  {
      "test_id": 1,
      "question_id": 42,
      "sequence": 5,
      "text": "confundir - dislocar",
      "id": 210
  },
  {
      "test_id": 1,
      "question_id": 43,
      "sequence": 1,
      "text": "intendente - gobierno",
      "id": 211
  },
  {
      "test_id": 1,
      "question_id": 43,
      "sequence": 2,
      "text": "municipal - país",
      "id": 212
  },
  {
      "test_id": 1,
      "question_id": 43,
      "sequence": 3,
      "text": "Córdoba - gobierno",
      "id": 213
  },
  {
      "test_id": 1,
      "question_id": 43,
      "sequence": 4,
      "text": "intendente - país",
      "id": 214
  },
  {
      "test_id": 1,
      "question_id": 43,
      "sequence": 5,
      "text": "Córdoba - internacional",
      "id": 215
  },
  {
      "test_id": 1,
      "question_id": 44,
      "sequence": 1,
      "text": "toro - oveja",
      "id": 216
  },
  {
      "test_id": 1,
      "question_id": 44,
      "sequence": 2,
      "text": "venado - corza",
      "id": 217
  },
  {
      "test_id": 1,
      "question_id": 44,
      "sequence": 3,
      "text": "antílope - venado",
      "id": 218
  },
  {
      "test_id": 1,
      "question_id": 44,
      "sequence": 4,
      "text": "rana - tero",
      "id": 219
  },
  {
      "test_id": 1,
      "question_id": 44,
      "sequence": 5,
      "text": "venado - jabalí",
      "id": 220
  },
  {
      "test_id": 1,
      "question_id": 45,
      "sequence": 1,
      "text": "animal - hacer",
      "id": 221
  },
  {
      "test_id": 1,
      "question_id": 45,
      "sequence": 2,
      "text": "vivo - objeto",
      "id": 222
  },
  {
      "test_id": 1,
      "question_id": 45,
      "sequence": 3,
      "text": "nuevo - viejo",
      "id": 223
  },
  {
      "test_id": 1,
      "question_id": 45,
      "sequence": 4,
      "text": "morir - sepultura",
      "id": 224
  },
  {
      "test_id": 1,
      "question_id": 45,
      "sequence": 5,
      "text": "bebé - juguete",
      "id": 225
  },
  {
      "test_id": 1,
      "question_id": 46,
      "sequence": 1,
      "text": "hectárea - cuerda",
      "id": 226
  },
  {
      "test_id": 1,
      "question_id": 46,
      "sequence": 2,
      "text": "km/hora - mar",
      "id": 227
  },
  {
      "test_id": 1,
      "question_id": 46,
      "sequence": 3,
      "text": "desierto - cuerda",
      "id": 228
  },
  {
      "test_id": 1,
      "question_id": 46,
      "sequence": 4,
      "text": "km/hora - metro",
      "id": 229
  },
  {
      "test_id": 1,
      "question_id": 46,
      "sequence": 5,
      "text": "granja - cuerda",
      "id": 230
  },
  {
      "test_id": 1,
      "question_id": 47,
      "sequence": 1,
      "text": "mosca - tijera",
      "id": 231
  },
  {
      "test_id": 1,
      "question_id": 47,
      "sequence": 2,
      "text": "mosca - perro",
      "id": 232
  },
  {
      "test_id": 1,
      "question_id": 47,
      "sequence": 3,
      "text": "mosca - descascarar",
      "id": 233
  },
  {
      "test_id": 1,
      "question_id": 47,
      "sequence": 4,
      "text": "desplumar - perro",
      "id": 234
  },
  {
      "test_id": 1,
      "question_id": 47,
      "sequence": 5,
      "text": "migrar - esquilar",
      "id": 235
  },
  {
      "test_id": 1,
      "question_id": 48,
      "sequence": 1,
      "text": "escritor - espectador",
      "id": 236
  },
  {
      "test_id": 1,
      "question_id": 48,
      "sequence": 2,
      "text": "escritor - obra",
      "id": 237
  },
  {
      "test_id": 1,
      "question_id": 48,
      "sequence": 3,
      "text": "manual - obra",
      "id": 238
  },
  {
      "test_id": 1,
      "question_id": 48,
      "sequence": 4,
      "text": "escritor - actor",
      "id": 239
  },
  {
      "test_id": 1,
      "question_id": 48,
      "sequence": 5,
      "text": "libro  - actor",
      "id": 240
  },
  {
      "test_id": 1,
      "question_id": 49,
      "sequence": 1,
      "text": "guardián - cita",
      "id": 241
  },
  {
      "test_id": 1,
      "question_id": 49,
      "sequence": 2,
      "text": "guardián - museo",
      "id": 242
  },
  {
      "test_id": 1,
      "question_id": 49,
      "sequence": 3,
      "text": "guardián - Francia",
      "id": 243
  },
  {
      "test_id": 1,
      "question_id": 49,
      "sequence": 4,
      "text": "Bastilla - museo",
      "id": 244
  },
  {
      "test_id": 1,
      "question_id": 49,
      "sequence": 5,
      "text": "crimen - artista",
      "id": 245
  },
  {
      "test_id": 1,
      "question_id": 50,
      "sequence": 1,
      "text": "línea - retrato",
      "id": 246
  },
  {
      "test_id": 1,
      "question_id": 50,
      "sequence": 2,
      "text": "esbozo - cerda",
      "id": 247
  },
  {
      "test_id": 1,
      "question_id": 50,
      "sequence": 3,
      "text": "trazo - pintura",
      "id": 248
  },
  {
      "test_id": 1,
      "question_id": 50,
      "sequence": 4,
      "text": "mano - ojos",
      "id": 249
  },
  {
      "test_id": 1,
      "question_id": 50,
      "sequence": 5,
      "text": "lápiz - pintura",
      "id": 250
  }
]');

ALTER TABLE questions 
ADD CONSTRAINT correct_answer_fk 
FOREIGN KEY (correct_answer) 
REFERENCES answers (id);

ALTER TABLE questions 
ADD CONSTRAINT test_id_fk 
FOREIGN KEY (test_id) 
REFERENCES tests (id);

ALTER TABLE answers 
ADD CONSTRAINT question_id_fk 
FOREIGN KEY (question_id) 
REFERENCES questions (id);

ALTER TABLE answers 
ADD CONSTRAINT test_id_fk 
FOREIGN KEY (test_id) 
REFERENCES tests (id);

ALTER TABLE results 
ADD CONSTRAINT question_id_fk 
FOREIGN KEY (question_id) 
REFERENCES questions (id);

ALTER TABLE results 
ADD CONSTRAINT answer_id_fk 
FOREIGN KEY (answer_id) 
REFERENCES answers (id);

ALTER TABLE results 
ADD CONSTRAINT user_id_fk 
FOREIGN KEY (user_id) 
REFERENCES users (id);