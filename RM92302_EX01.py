Idade = int(input("Informe sua idade:"))
Bpm = int(input("Informe seu batimento por minuto:"))
print(Bpm)
print(Idade)

if Bpm >= 120 and Bpm <= 140 and Idade <= 2:
    print("O batimento de acordo a idade 2 anos.") 
elif Bpm >= 80 and Bpm <= 120 and Idade >= 8 and Idade <= 17:
    print("O batimento de acordo a idade 8 a 17 anos.") 
elif Bpm >= 70 and Bpm <= 80 and Idade >= 18 and Idade <= 65:
    print("O batimento de acordo a idade 18 a 65 anos.")
elif Bpm >= 50 and Bpm <= 60 and Idade >= 65:
    print("O batimento de acordo a idade 65 anos para cima.")
else:
    print("Seu batimento está fora do padrão.")

