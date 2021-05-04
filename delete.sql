
# Delete with join
DELETE f
FROM foo f
         INNER JOIN dictionary d
                    ON d.id=f.id
WHERE d.stat = 1;

# Delete with join (if database is not selected)
# !!it's not working with alias.!!
DELETE home.foo
FROM home.foo
         INNER JOIN home.dictionary
                    ON home.dictionary.id=home.foo.id
WHERE home.dictionary.stat = 1;