var builder = WebApplication.CreateBuilder(args);


builder.Services.AddEndpointsApiExplorer();

var app = builder.Build();


app.MapGet("/test", () => "Test successful");

app.Run();
