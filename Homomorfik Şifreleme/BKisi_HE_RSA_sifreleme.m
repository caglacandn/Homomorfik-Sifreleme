clear; clear all;

load acikAnahtar.mat


%% Şifreleme
% m = [123, 456, 789, 321]; % Şifrelenecek sayı vektörü
m = input('Şifrelemek istediğiniz sayıları girin: ');
c = zeros(size(m)); % Şifrelenmiş sayı vektörü

for i = 1:length(m)
    c(i) = mod(sym(m(i))^e, n);
end


disp(['Şifrelenmiş Sayılar (c): ' num2str(c)]);

% c(1)
% c(2)
% carpimSonucu = c(1)*c(2)