(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defun adicional-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun descricao-venda (nome preco forca)
  (format nil
          "~A | Preco com imposto: R$~,2F | Forca Magica: ~,2F"
          nome
          preco
          forca))

(defun processa-venda (catalogo)
  (mapcar
   (lambda (item)
     (descricao-venda
      (item-nome item)
      (adicional-imposto (item-preco item))
      (bonus-maldicao (item-forca-magica item))))
   (remove-if-not
    (lambda (item)
      (string= (item-tipo item) "Arma"))
    catalogo)))

(defun main ()
  (let ((catalogo
         (list
          (make-item
           :nome "Katana Sombria"
           :tipo "Arma"
           :preco 200.0
           :forca-magica 90)

          (make-item
           :nome "Pistola Fantasma"
           :tipo "Arma"
           :preco 150.0
           :forca-magica 70)

          (make-item
           :nome "Pocao de Cura"
           :tipo "Pocao"
           :preco 40.0
           :forca-magica 20)

          (make-item
           :nome "Amuleto Antigo"
           :tipo "Artefato"
           :preco 300.0
           :forca-magica 95)

          (make-item
           :nome "Espada Amaldicoada"
           :tipo "Arma"
           :preco 250.0
           :forca-magica 100))))

    (format t "=== Resultado das Vendas ===~%")

    (dolist (linha (processa-venda catalogo))
      (format t "~A~%" linha))))

(main)