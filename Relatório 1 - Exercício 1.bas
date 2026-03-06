Print "---- CALCULO DA MEDIA PONDERADA ----"
Dim nota1 As Double, nota2 As Double, nota3 As Double
Dim peso1 As Double, peso2 As Double, peso3 As Double
Dim resultado As Double

Input nota1
Input nota2
Input nota3
Input peso1
Input peso2
Input peso3

Print "PROVA1:"; nota1 ; " PESO1:"; peso1
Print "PROVA2:"; nota2 ; " PESO2:"; peso2
Print "PROVA3:"; nota3 ; " PESO3:"; peso3

resultado = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / (peso1 + peso2 + peso3)

Print "---------------------------"
Print "MEDIA FINAL: "; resultado

If resultado >= 70 Then
    Print "STATUS: APROVADO DIRETO"
Else
    Print "STATUS: REPROVADO DIRETO"
End If
