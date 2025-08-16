# MySQL CTF Challenge

## Overview

This Capture the Flag (CTF) challenge is built around a vulnerable MySQL
setup. Participants must connect to the database, explore its schema,
and retrieve a hidden flag.

## Setup

-   MySQL 8.0 container with database `ctfdb`.
-   Table `hashdump` contains a Base64-encoded flag.
-   User `ptcuser` with read-only access.

## Credentials

-   Username: `ptcuser`
-   Password: `Mint@9876543210`
-   Host: `<CTF_Server_IP>`

## Player Instructions

1.  Connect to MySQL:

    ``` bash
    mysql -u ptcuser -p -h <CTF_Server_IP>
    ```

2.  Switch to the CTF database:

    ``` sql
    USE ctfdb;
    ```

3.  Query the table:

    ``` sql
    SELECT * FROM hashdump;
    ```

4.  Decode the Base64 value in the `hash` column to reveal the flag.

## Notes

-   Participants only have SELECT permissions.
-   Focus is on database enumeration and data extraction.
-   Ensure the MySQL container is running before starting the challenge.
