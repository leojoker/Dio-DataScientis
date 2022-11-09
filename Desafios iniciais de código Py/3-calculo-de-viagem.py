# TODO:  Calcule quantidade de litros necessária para realizar a viagem e imprima com TRÊS dígitos após o ponto decimal

valores = input().split()

tempo = int(valores[0])
velocidade = int(valores[1])

print(f'{tempo*(velocidade/12):.3f}')