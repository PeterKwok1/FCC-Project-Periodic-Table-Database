# FCC Project Periodic Table Database
## Notes
- Start db
    - sudo service postgresql restart
    - psql --username=freecodecamp --dbname=periodic_table
- Dump db
    - pg_dump -cC --inserts -U freecodecamp periodic_table > periodic_table.sql
- Rebuild db
    - psql -U postgres < periodic_table.sql
