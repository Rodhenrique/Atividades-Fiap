
Valor = float(input("Informe o valor do pacote:"))
Viajante = int(input("Informe quantidade de viajantes:"))
print("1 - Econômica")
print("2 - Executiva")
print("3 - Primeira classe")
pacote = int(input("Informe a categoria do assentos:"))

if pacote == 1:
    if Viajante == 2:
        desconto = (3*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
    elif Viajante == 3:
        desconto = (4*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
    elif Viajante >= 4:
        desconto = (5*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
elif pacote == 2:
    if Viajante == 2:
        desconto = (5*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
    elif Viajante == 3:
        desconto = (7*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
    elif Viajante >= 4:
        desconto = (8*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
elif pacote == 3: 
    if Viajante == 2:
        desconto = (10*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
    elif Viajante == 3:
        desconto = (15*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
    elif Viajante >= 4:
        desconto = (20*Valor) / 100
        liquido = (Valor - desconto)
        print("Valor bruto da viagem: R${}, desconto do pacote R${} ; Valor liquido da viagem R${}; média por pessoa R${}".format(Valor,desconto,liquido,(liquido / Viajante)))
