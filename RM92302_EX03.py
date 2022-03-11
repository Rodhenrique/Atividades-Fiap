votos = []
for x in range(5):
    print("1 - PLAYSTATION")
    print("2 - XBOX")
    print("3 - NINTENDO")
    votos.append(int(input("Digite qual console vai ser escolhido:")))

print(votos)
consoles = ["PLAYSTATION","XBOX","NINTENDO"]
contagem = 0
escolhido = ""
for x in range(1,4):
    print(x)
    if  votos.count(x) > contagem:
        contagem = votos.count(x)
        escolhido = consoles[x -1]

print("O console escolhido foi {}".format(escolhido))

