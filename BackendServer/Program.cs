var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/api/mitarbeiter", () => {
    return new Mitarbeiter(1, "Dill Doe");
});


app.Run(); 


record Mitarbeiter(int Id, string Name);