var builder = WebApplication.CreateBuilder(args);

// Hier registrieren wir später die Datenbank-Verbindung für deinen Kollegen
var connectionString = "Server=localhost;Port=3306;Database=bmw_zeitstrahl_db;Uid=root;Pwd=dein_passwort;";

var app = builder.Build();

app.MapGet("/", () => "BMW Zeitstrahl Backend läuft!");

app.Run();