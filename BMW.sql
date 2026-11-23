DROP DATABASE IF EXISTS BMW;
CREATE DATABASE BMW;
USE BMW;

CREATE TABLE Meilensteine(
    id INT AUTO_INCREMENT PRIMARY KEY,
    jahr INT NOT NULL,
    titel VARCHAR(55) NOT NULL,
    beschreibung TEXT NOT NULL,
    kategorie VARCHAR(55),
    bild_url VARCHAR(255),
    modell_3d_url VARCHAR(255)
);



INSERT INTO Meilensteine (jahr, titel, beschreibung, kategorie, bild_url, modell_3d_url) VALUES
(1972, 'Gründung der BMW M GmbH', 'Die Motorsport-Abteilung von BMW wird gegründet und prägt fortan die sportlichen Straßenmodelle.', 'Motorsport', 'm1_preview.jpg', 'models/bmw_m1.glb'),
(1999, 'Der erste BMW X5', 'Mit dem X5 betritt BMW den Markt der Sports Activity Vehicles (SAV) und begründet ein neues Segment.', 'Serienfahrzeug', 'x5_preview.jpg', 'models/bmw_x5.glb'),
(2013, 'Markteinführung des BMW i3', 'Das erste serienmäßige Elektrofahrzeug von BMW setzt neue Maßstäbe in Sachen Leichtbau und Nachhaltigkeit.', 'Innovation', 'i3_preview.jpg', 'models/bmw_i3.glb');
