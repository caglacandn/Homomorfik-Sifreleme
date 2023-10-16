clear; clear all;

load acikAnahtar.mat
load gizliAnahtar.mat

%% deneme
% A1 = 53; A2 = 59;
% n = A1 * A2;
% u_n = (A1 - 1) * (A2 - 1);
% e = 3;

% d formulünün sonucunun tam sayı çıkması için k çarpanın olması gereken
% değerinin hesaplanmasi:


%% % Şifre çözme
c = input('Şifresini çözmek istediğiniz sayıları girin: ');

m = zeros(size(c)); % Şifre çözülmüş sayı vektörü

for i = 1:length(c)
    m(i) = mod(sym(c(i))^d, n);
end

disp(['Şifresi çözülmüş Sayılar (m): ' num2str(m)]);
