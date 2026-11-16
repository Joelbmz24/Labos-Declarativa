#lang racket

; Función que calcula el monto de interés generado según el depósito
(define (calcular-interes deposito)
  (cond
    [(<= deposito 0) 0]
    [(<= deposito 40000) (* deposito 0.035)]   ; 3.5% para depósitos <= $40,000
    [(<= deposito 260000) (* deposito 0.04)]   ; 4.0% para depósitos <= $260,000
    [else (* deposito 0.045)]))               ; 4.5% para depósitos > $260,000

; ==========================================
; Ejemplos de ejecución / Pruebas

(displayln (calcular-interes 25000))   ; Esperado: 875.0   (3.5%)
(displayln (calcular-interes 40000))   ; Esperado: 1400.0  (3.5% límite)
(displayln (calcular-interes 100000))  ; Esperado: 4000.0  (4.0%)
(displayln (calcular-interes 260000))  ; Esperado: 10400.0 (4.0% límite)
(displayln (calcular-interes 300000))  ; Esperado: 13500.0 (4.5%)