clear;clc;

% Seçilecek asal sayıların sınırları. 
% Asal sayıların büyük seçilmesi doğru sonuç için önemli
altSinir = 50; 
ustSinir = 100;

% İlk asal sayı
p = primes(ustSinir);
p = p(p >= altSinir);
A1 = p(randperm(numel(p), 1));

% İkinci asal sayıyı seçerken A1 ile aynı olmayan bir sayı seçme
remainingPrimes = p(p ~= A1);
A2 = remainingPrimes(randperm(numel(remainingPrimes), 1));

n = A1 * A2;
u_n = (A1 - 1) * (A2 - 1);


% seçeceğimiz e sayısının u_n ile ortak çarpanı olmamalı 
% ve u_n'den küçük olmalı
carpanlar = factor(u_n);
while true
    % [1, u_n-1] aralığında rastgele bir sayı seç
    e = randi([1, u_n-1]);
    
    % Seçilen rastgele sayının u_n'e hiçbir çarpanı yoksa döngüden çık
    if all(mod(e, carpanlar) ~= 0)
        break;
    end
end


k = 1;
while mod((k * u_n + 1), e) ~= 0
    k = k + 1;
end


d = (k * u_n + 1) / e;

save("acikAnahtar.mat","e","n")
save("gizliAnahtar.mat","d")