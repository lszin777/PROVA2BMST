use avaliacao_22c;

INSERT INTO livros (titulo, autor, ano_publicação, disponibilidade, categoria, isbn, editora, numero_paginas, idioma)
VALUES ('As Cronicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia','978-0064471190', 'HarperCollins', 768 , 'Francês');

UPDATE livros
SET disponibilidade = FALSE
WHERE ano_publicacao < 1900;

UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

DELETE FROM  livros
WHERE idioma = 'Francês' AND ano_publicação < 200;

SELECT *
FROM livros
WHERE numero_paginas > 600;

SELECT categoria, COUNT(*) AS media_paginas
FROM livros
GROUP BY categoria;

SELECT AVG(numero_paginas) AS media_paginas
FROM livros
WHERE disponibilidade = TRUE;

SELECT *
FROM livros
ORDER BY ano_publicacao DESC;

SELECT *
FROM livros
WHERE titulo LIKE '$' AND  ano_publicacao BETWEEN 1970 AND 1990;