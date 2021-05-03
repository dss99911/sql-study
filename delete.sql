
# Delete with join
DELETE f
FROM foo f
         INNER JOIN dictionary d
                    ON d.id=f.id
WHERE d.stat = 1
