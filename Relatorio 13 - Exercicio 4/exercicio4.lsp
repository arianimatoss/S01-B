(defstruct local
  nome
  elemento
  dificuldade
  recompensa)

(defun bonus-elemental (local)
  (cond
    ((or (string= (local-elemento local) "Pyro")
         (string= (local-elemento local) "Electro"))
     (* (local-recompensa local) 1.20))

    ((string= (local-elemento local) "Cryo")
     (* (local-recompensa local) 1.10))

    (t
     (local-recompensa local))))

(defun vale-a-pena (local)
  (and (> (bonus-elemental local) 500)
       (<= (local-dificuldade local) 3)))

(defun rota-de-farm (catalogo)
  (mapcar
   (lambda (local)
     (format nil
             "~A - Recompensa: ~,2F"
             (local-nome local)
             (bonus-elemental local)))
   (remove-if-not #'vale-a-pena catalogo)))

(defun main ()
  (let ((catalogo
         (list

          (make-local
           :nome "Dominio do Fogo"
           :elemento "Pyro"
           :dificuldade 3
           :recompensa 500)

          (make-local
           :nome "Templo da Tempestade"
           :elemento "Electro"
           :dificuldade 2
           :recompensa 450)

          (make-local
           :nome "Vale Congelado"
           :elemento "Cryo"
           :dificuldade 3
           :recompensa 480)

          (make-local
           :nome "Lago Profundo"
           :elemento "Hydro"
           :dificuldade 4
           :recompensa 600)

          (make-local
           :nome "Ruinas do Vento"
           :elemento "Anemo"
           :dificuldade 2
           :recompensa 550))))

    (format t "=== Catalogo Completo ===~%")

    (dolist (l catalogo)
      (format t "~A | Bonus: ~,2F~%"
              (local-nome l)
              (bonus-elemental l)))

    (format t "~%=== Rota de Farm Recomendada ===~%")

    (dolist (linha (rota-de-farm catalogo))
      (format t "~A~%" linha))))

(main)