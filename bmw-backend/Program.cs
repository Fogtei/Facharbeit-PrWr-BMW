var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Test-Endpunkt für den Zeitstrahl
app.MapGet("/api/meilensteine", () =>
{
    var liste = new List<Meilenstein>
    {
        new(1, 1972, "Gründung der BMW M GmbH", "Die Motorsport-Abteilung von BMW wird gegründet.", "Motorsport", "m1_preview.jpg", "models/bmw_m1.glb"),
        new(2, 1999, "Der erste BMW X5", "BMW betritt den Markt der SAVs.", "Serienfahrzeug", "x5_preview.jpg", "models/bmw_x5.glb")
    };
    
    return Results.Ok(liste);
});

app.Run();