*Settings*
Documentation       Database Helpers

Library             DatabaseLibrary
Library             factories/Users.py

*Keywords*
Connect To Postgres

    Connect To Database     psycopg2
    ...                     tiofhiaj
    ...                     tiofhiaj
    ...                     jU4xq8PZRy3Qr4ohwZ8kHtr3zGMoohAd
    ...                     rajje.db.elephantsql.com
    ...                     5432

Reset Env

    Execute SQL String      DELETE from public.geeks;
    Execute SQL String      DELETE from public.users;

Insert User 
    [Arguments]     ${u}

    ${hashed_pass}          Get Hashed Pass     ${u}[password]

    ${q}    Set Variable   INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false); 

    Execute SQL String      ${q}
    ...                     

Users Seed 

    ${user}         Factory User Login 
    Insert User     ${user}

    ${user2}        Factory User Be Geek 
    Insert User     ${user2}