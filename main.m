disp("Bab 4 Soal 1");

function s = poisson(m, n)
    for bil = 1:n
        u = rand;
        i = 0;
        p = exp(-m);
        F = p;
        sw = 0;
        
        while sw == 0
            if u < F
                x(bil) = i;
                sw = 1;
            else
                p = m * p / (i + 1);
                F = F + p;
                i = i + 1;
            end
        end
    end
    
    s = x;
    return;
end

total_vehicles = 100;
poison_m = 5;

x = poisson(poison_m,total_vehicles);

cars = [];

for bil = 1:100
    cars = [cars; [bil x(bil)]]
end

disp("Nomor Urut, Waktu Kedatangan");
disp(cars);
