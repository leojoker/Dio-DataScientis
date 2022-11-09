alfabeto = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
            'W','X','Y','Z']
entrada = input().upper()

for i, letra in enumerate(alfabeto):
    if entrada == letra:
        print(i+1)