// Website(en) => Webseite(de) ; Webpage(en) => Website(de)

// komponente um die kopfzeile auf beliebige unterseiten (websiten) der Webseite zu laden
const pfad = new URL("../komponenten/kopfzeile.html", document.currentScript.src);

fetch(pfad)
    .then(response => {
        if (!response.ok) {
            throw new Error("Fehler beim Laden der Kopfzeile");
        }
        return response.text();
    })
    .then(data => {
        document.getElementById("kopfzeile").innerHTML = data;
    })
    .catch(error => console.error(error));
