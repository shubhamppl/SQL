SELECT CASE
    WHEN G.grade > 7 THEN S.name
    ELSE NULL
    end AS names,
    G.grade,
    S.marks
FROM   students S
    JOIN grades G
    ON S.marks BETWEEN G.min_mark AND G.max_mark
ORDER  BY G.grade DESC,
    names ASC,
    S.marks ASC;



Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68
