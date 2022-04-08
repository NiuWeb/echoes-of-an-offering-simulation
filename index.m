Tests = 1e6;
Hits = 50;
values = zeros(1, Hits);
for hits = 1:Hits
    avg = 0;
    for tests = 1:Tests
        avg = avg + sim(hits);
    end
    avg = avg / Tests;
    values(hits) = avg;
end

csvwrite("data.csv", values);
plot(1:Hits, values);

title("Probabilidad de activación - eco del sacrificio - genshin");
xlabel("cantidad de golpes");
ylabel("probabilidad de activación");

xlim([1 Hits]);
ylim([0.3 0.6]);

xticks(1:1:Hits);
yticks(0:0.01:1);

grid;

set(gcf, "PaperUnits", "inches");
set(gcf, "PaperPosition", [0 0 16 9]);
print(gcf, "plot.png", "-dpng", "-r300");