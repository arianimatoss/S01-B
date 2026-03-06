Dim senha As Integer, senhausuario As Integer

senha = 1234

Input "DIGITE A SENHA: ", senhausuario

While senhausuario <> senha
    Print "SENHA INCORRETA. TENTE NOVAMENTE"
    
    Input "DIGITE A SENHA NOVAMENTE: "; senhausuario
Wend

Print "ACESSO LIBERADO!"

Sleep
