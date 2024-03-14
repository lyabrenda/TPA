programa
{
	
	inclua biblioteca Matematica --> m 
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		inteiro opc=0
		faca 
		{
			limpa()
			escreva("\t*** Menu Principal ***\n")
			escreva("\t____________________\n")

			escreva("\t[1] Cálculos\n")
			escreva("\t[2] Par e Impar\n")
			escreva("\t[3] Comparação de números\n")
			escreva("\t[4] Tabuada\n")
			escreva("\t[5] Cálculos (com potência)\n")
			escreva("\t[6] Área do Triângulo\n")
			escreva("\t[7] Fim\n")
			escreva("\t____________________\n")

			escreva("\tDigite sua opção: ")
			leia(opc)

			escolha(opc)
			{
				caso 1:
					calculos()
					pare

				caso 2:
				     parimpar()
				     pare
				     
				caso 3:
					comparacao()
					pare
				
				caso 4:
					tabuada()
					pare

				
				caso 5:
					potencia()
					pare
					
				caso 6:
					area()
					pare
					
				caso 7:
					pare
					
				caso contrario:
				escreva("\n\t*** Opção Inválida ***\n")
				U.aguarde(2000)
			
			}
			
			}
		 enquanto(opc!=7)
		 
	}
	funcao calculos()
	{
		inteiro a , b , w , x , y , z
		cadeia resposta
		
		limpa()
		faca
		{
		limpa()
		escreva("\tDigite o primeiro número ")
		leia(a)
		escreva("\tDigite o segundo número ")
		leia(b)

		
		w=a+b
		x=a-b
		y=a*b
		z=a/b

		escreva("\n\ta soma dos números é " + w)
		escreva("\n")
		escreva("\ta subtração dos números é " + x)
		escreva("\n")
		escreva("\ta multiplicação dos números é " + y)
		escreva("\n")
		escreva("\ta divisão dos números é " + z)
		escreva("\n")

		escreva("\tDeseja Continuar?")
		leia(resposta)
		}
		enquanto (t.caixa_baixa(resposta)=="sim" ou t.caixa_baixa(resposta)=="yes")
		
	}
	funcao parimpar()
	{
		inteiro numero, valor
		cadeia resposta

		limpa()
		
		faca{
			
		limpa()

		escreva("\tDigite um número ")
		leia(numero)
		valor=numero%2

		se(valor==0)
		{
			escreva("\to número é par \n")
			
		}
		senao
		{
			escreva("\to número é ímpar \n")
			
		}
		escreva("\tDeseja Continuar?")
		leia(resposta)
		
		} enquanto(t.caixa_baixa(resposta)=="sim" ou t.caixa_baixa(resposta)=="yes")

	
	}	
	funcao comparacao()
	
	{
		inteiro a,b, maior
		cadeia resposta
		
		limpa()
		
		faca 
		{
			
		limpa()
		
		escreva("\tInforme o primeiro número ")
		leia(a)
		escreva("\tInforme o segundo número ")
		leia(b)

		se (a==b)
		{
			
		escreva ("\t\n Os números são iguais")
		}

		senao
		{
		
			maior=m.maior_numero(a, b)
			escreva("\t\nO maior número é: " + maior)
		}
		
		escreva("\t\nDeseja Continuar? ")
		leia (resposta)
	}
	enquanto (t.caixa_baixa(resposta)=="sim" ou t.caixa_baixa(resposta)=="yes")
	}
	funcao tabuada()
	
	{
		inteiro n, i
		cadeia pausa
		
		faca
		{
			
		limpa()
		escreva("\tInforme um número para ver a tabuada ")
		leia(n)
		para(i=1;i<=10;i++)
			escreva(n + " x " + i + " = " + (n*i) + "\n")
			U.aguarde(2000)
			escreva("\n")
			escreva ("Deseja ver outra tabuada? ")
		leia(pausa)
		}
		enquanto (t.caixa_baixa(pausa)=="sim")
	}
	funcao potencia()
	{

		cadeia op,continuar
		inteiro num1,num2, resposta
		
		limpa()
		faca
		{
		
		limpa()
		
		escreva("\tDeseja qual das operações?")
		escreva("\n\t| Adição ")
		escreva("\n\t| Subtração ")
		escreva("\n\t| Multiplicação ")
		escreva("\n\t| Divisão ")
		escreva("\n\t| Potenciação \n")
		escreva("---> ")
		leia (op)
		
		limpa ()
		
		escreva("\tDigite o primeiro número: ")
		leia (num1)
		escreva("\tDigite o segundo número: ")
		leia (num2)
		
		se (t.caixa_baixa(op)=="adição" ou t.caixa_baixa(op)=="adicao")
		{
			resposta=num1+num2
			escreva("\n\t" + num1 + "+" + num2 + "=" + resposta)
		
		}
		
		se (t.caixa_baixa(op)=="subtração" ou t.caixa_baixa(op)=="subtracao")
		{
			resposta=num1-num2
			escreva("\n\t" + num1 + "-" + num2 + "=" + resposta)
		} 
		
		se (t.caixa_baixa(op)=="multiplicação" ou t.caixa_baixa(op)=="multiplicacao")
		{
			resposta=num1*num2
			escreva("\n\t" + num1 + "x" + num2 + "=" + resposta)
		}
		
		se (t.caixa_baixa(op)=="divisão" ou t.caixa_baixa(op)=="divisao")
		{
			resposta=num1/num2
			escreva("\n\t" + num1 + ":" + num2 + "=" + resposta)
		}
		
		se (t.caixa_baixa(op)=="potenciação" ou t.caixa_baixa(op)=="potenciacao")
		{
			resposta=m.potencia( num1, num2)
			escreva("\n\to resultado de "+ num1 + " elevado a " + num2 + " é " + resposta)
			
		}
		
		escreva("\n")
		escreva("\tDeseja Continuar? ")
		leia(continuar)
		
		} enquanto (t.caixa_baixa(continuar)=="sim")
	}
		
	funcao area()
	{
		inteiro b , h , a
		cadeia resposta
		
		limpa()
		
		faca
		{
		limpa()
			escreva("\tEscreva a base: ")
			leia (b)
			escreva("\tEscreva a altura: ")
			leia(h)
			
			a=b*h/2
			
			escreva("\ta área do triângulo é " + a)
			escreva("\n")
			
			escreva("\tDeseja Continuar? ")
			leia (resposta)
	
		} enquanto (t.caixa_baixa(resposta)=="sim")
	}	

	
	
	
	
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4413; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */