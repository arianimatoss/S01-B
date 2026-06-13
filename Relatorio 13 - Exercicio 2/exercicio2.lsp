(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defun descricao-criatura (criatura)
  (format nil
          "~A | Ambiente: ~A | Periculosidade: ~A"
          (criatura-nome criatura)
          (criatura-ambiente criatura)
          (criatura-periculosidade criatura)))

(defun filtra-por-perigo (catalogo)
  (remove-if
   (lambda (c)
     (string= (criatura-periculosidade c) "Baixa"))
   catalogo))

(defun relatorio-profundidade (catalogo)
  (mapcar
   (lambda (c)
     (format nil
             "[~A]: Vive em ~A"
             (criatura-nome c)
             (criatura-ambiente c)))
   (remove-if-not
    (lambda (c)
      (string= (criatura-ambiente c) "Deep"))
    catalogo)))

(defun main ()
  (let ((catalogo
         (list
          (make-criatura
           :nome "Peeper"
           :ambiente "Safe Shallows"
           :periculosidade "Baixa"
           :vida-media 5)

          (make-criatura
           :nome "Reaper Leviathan"
           :ambiente "Crash Zone"
           :periculosidade "Alta"
           :vida-media 120)

          (make-criatura
           :nome "Ghost Leviathan"
           :ambiente "Deep"
           :periculosidade "Alta"
           :vida-media 150)

          (make-criatura
           :nome "Crabsquid"
           :ambiente "Deep"
           :periculosidade "Media"
           :vida-media 40))))

    (format t "=== Catalogo Completo ===~%")
    (dolist (c catalogo)
      (format t "~A~%"
              (descricao-criatura c)))

    (format t "~%=== Criaturas Perigosas ===~%")
    (dolist (c (filtra-por-perigo catalogo))
      (format t "~A~%"
              (descricao-criatura c)))

    (format t "~%=== Relatorio de Profundidade ===~%")
    (dolist (linha (relatorio-profundidade catalogo))
      (format t "~A~%"
              linha))))

(main)