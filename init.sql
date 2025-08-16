-- Create the CTF database
CREATE DATABASE IF NOT EXISTS ctfdb;

USE ctfdb;

-- Create the hashdump table
CREATE TABLE IF NOT EXISTS hashdump (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    hash VARCHAR(64) NOT NULL
);

-- Insert base64-encoded hash of the flag
-- Flag: FLAG{MYSQL_HASHDUMP_CTF}
INSERT INTO hashdump (username, hash)
VALUES ('admin', 'RkxBR3tNeXNxbEN0RiEyMDI1fQ==');

-- Create CTF player user
CREATE USER IF NOT EXISTS 'ptcuser'@'%' IDENTIFIED BY 'Mint@9876543210';

-- Grant read-only access
GRANT SELECT ON ctfdb.hashdump TO 'ptcuser'@'%';

FLUSH PRIVILEGES;
