# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.2. Процедуры и порождаемые ими процессы](index.md#12-Процедуры-и-порождаемые-ими-процессы)

### Упражнение 1.20
Процесс, порождаемый процедурой, разумеется, зависит от того, по каким правилам
работает интерпретатор. В качестве примера рассмотрим итеративную процедуру
`gcd`, приведенную выше. Предположим, что мы вычисляем эту процедуру с помощью
нормального порядка, описанного в разделе 1.1.5. (Правило нормального порядка
вычислений для `if` описано в [упражнении 1.5](exercise_1_5.md#Упражнение-15).)
Используя подстановочную модель для нормального порядка, проиллюстрируйте
процесс, порождаемый при вычислении `(gcd 206 40)` и укажите, какие операции
вычисления остатка действительно выполняются. Сколько операций `remainder`
выполняется на самом деле при вычислении `(gcd 206 40)` в нормальном порядке?
При вычислении в аппликативном порядке?

#### Решение
Проиллюстрируем процесс вычисления НОД при нормальном порядке вычислений.

```racket
; Нормальный порядок вычислений
;===============================================================================
; 1 stage ----------------------------------------------------------------------
(gcd 206 40)

(if (= 40 0)
    206)
; +0 (0) remainder -------------------------------------------------------------

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))

;===============================================================================
; 2 stage ----------------------------------------------------------------------
(gcd 40 (remainder 206 40))

(if (= (remainder 206 40) 0)
    40)
; +1 (1) remainder -------------------------------------------------------------

(if (= 6 0)
    40
    (gcd (remainder 206 40)
         (remainder 40 (remainder 206 40))))

;===============================================================================
; 3 stage ----------------------------------------------------------------------
(gcd (remainder 206 40)
     (remainder 40 (remainder 206 40)))

(if (= (remainder 40 (remainder 206 40)) 0)
    (remainder 206 40))
; +1 (2) remainder -------------------------------------------------------------

(if (= (remainder 40 6) 0)
    (remainder 206 40))
; +1 (3) remainder -------------------------------------------------------------

(if (= 4 0)
    (remainder 206 40)
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40)
                    (remainder 40 (remainder 206 40)))))

;===============================================================================
; 4 stage ----------------------------------------------------------------------
(gcd (remainder 40 (remainder 206 40))
     (remainder (remainder 206 40)
                (remainder 40 (remainder 206 40))))

(if (= (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40))) 0)
    (remainder 40 (remainder 206 40)))
; +1 (4) remainder -------------------------------------------------------------

(if (= (remainder (remainder 206 40)
                  (remainder 40 6)) 0)
    (remainder 40 (remainder 206 40)))
; +2 (6) - remainder -----------------------------------------------------------

(if (= (remainder 6 4) 0)
    (remainder 40 (remainder 206 40)))
; +1 (7) - remainder -----------------------------------------------------------

(if (= 2 0)
    (remainder 40 (remainder 206 40))
    (gcd    (remainder (remainder 206 40)
                       (remainder 40 (remainder 206 40)))
            (remainder (remainder 40 (remainder 206 40))
                       (remainder (remainder 206 40)
                                  (remainder 40 (remainder 206 40))))))

;===============================================================================
; 5 stage ----------------------------------------------------------------------
(gcd    (remainder (remainder 206 40)
                   (remainder 40 (remainder 206 40)))
        (remainder (remainder 40 (remainder 206 40))
                   (remainder (remainder 206 40)
                              (remainder 40 (remainder 206 40)))))

(if (= (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40)))) 0)
    (remainder (remainder 206 40)
               (remainder 40 (remainder 206 40))))
; +1 (8) - remainder -----------------------------------------------------------

(if (= (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 6))) 0)
    (remainder (remainder 206 40)
               (remainder 40 (remainder 206 40))))
; +3 (11) - remainder ----------------------------------------------------------

(if (= (remainder (remainder 40 6)
                  (remainder 6 4)) 0)
    (remainder (remainder 206 40)
               (remainder 40 (remainder 206 40))))
; +2 (13) - remainder ----------------------------------------------------------

(if (= (remainder 4 2) 0)
    (remainder (remainder 206 40)
               (remainder 40 (remainder 206 40))))
; +1 (14) - remainder ----------------------------------------------------------

(if (= 0 0)
    (remainder (remainder 206 40)
               (remainder 40 (remainder 206 40))))
; +1 (15) - remainder ----------------------------------------------------------

(if (= 0 0)
    (remainder (remainder 206 40)
               (remainder 40 6)))
; +2 (17) - remainder ----------------------------------------------------------

(if (= 0 0)
    (remainder 6 4))
; +1 (18) - remainder ----------------------------------------------------------

(if (= 0 0)
    2) ; <- found GCD
;===============================================================================
```

При нормальном порядке вычислений процедура `remainder` была вызвана 18 раз.
Проиллюстрируем теперь процесс вычисления НОД при аппликативном порядке
вычислений.

```racket
; Аппликативный порядок вычислений
;===============================================================================
; 1 stage ----------------------------------------------------------------------
(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))
; +1 (1) remainder -------------------------------------------------------------

(if (= 40 0)
    206
    (gcd 40 6))

;===============================================================================
; 2 stage ----------------------------------------------------------------------
(gcd 40 6)

(if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))
; +1 (2) remainder -------------------------------------------------------------

(if (= 6 0)
    40
    (gcd 6 4))

;===============================================================================
; 3 stage ----------------------------------------------------------------------
(gcd 6 4)

(if (= 4 0)
    6
    (gcd 4 (remainder 6 4)))
; +1 (3) remainder -------------------------------------------------------------

(if (= 4 0)
    6
    (gcd 4 2))

;===============================================================================
; 4 stage ----------------------------------------------------------------------
(gcd 4 2)

(if (= 2 0)
    4
    (gcd 2 (remainder 4 2)))
; +1 (4) remainder -------------------------------------------------------------

(if (= 2 0)
    4
    (gcd 2 0))

;===============================================================================
; 5 stage ----------------------------------------------------------------------
(gcd 2 0)

(if (= 0 0)
    2) ; <- found GCD

;===============================================================================
```

В этом случае процедура `remainder` была вызвана всего 4 раза. Это говорит о том,
что аппликативный порядок вычислений гораздо более эффективен, чем нормальный
порядок вычислений.
