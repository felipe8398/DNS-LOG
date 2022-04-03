# DNS-LOG

# OBJETIVO: #

- BUSCAR LOG DE REQUISIÇÕES DNS EM SERVIDOR DNS WINDOWS 

# Como executar
.\dns.ps1 -PathLog C:\logdns\logdns.txt -String crypto

Sendo que o C:\logdns\logdns.txt é o caminho que está o log do servidor DNS e a opção -String é referente a palavra que faz parte do dominio ou voce pode buscar pelo IP do computador que fez a requisição

- Buscando por todas as requisições DNS do computador 192.168.206.1

.\dns.ps1 -PathLog C:\logdns\logdns.txt -String 192.168.206.1

- Buscando por qualquer requisição de DNS que o dominio tenha a palavra crypto

.\dns.ps1 -PathLog C:\logdns\logdns.txt -String crypto


# Observação  
Script foi testado somente no Windows Server 2012 R2 Datacenter  

Ideias e melhorias são bem vindas
