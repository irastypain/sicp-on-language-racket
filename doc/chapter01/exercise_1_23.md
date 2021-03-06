# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.2. Процедуры и порождаемые ими процессы](index.md#12-Процедуры-и-порождаемые-ими-процессы)

### Упражнение 1.23
Процедура `smallest-divisor` в начале этого раздела проводит множество лишних
проверок: после того, как она проверяет, делится ли число на `2`, нет никакого
смысла проверять делимость на другие четные числа. Таким образом, вместо
последовательности `2, 3, 4, 5, 6 ...` , используемой для `test-divisor`, было
бы лучше использовать `2, 3, 5, 7, 9 ...`. Чтобы реализовать такое улучшение,
напишите процедуру `next`, которая имеет результатом `3`, если получает `2` как
аргумент, а иначе возвращает свой аргумент плюс `2`. Используйте
`(next test-divisor)` вместо `(+ test-divisor 1)` в `smallest-divisor`.
Используя процедуру `timed-prime-test` с модифицированной версией
`smallest-divisor`, запустите тест для каждого из 12 простых чисел, найденных в
упражнении 1.22. Поскольку эта модификация снижает количество шагов проверки
вдвое, Вы должны ожидать двукратного ускорения проверки. Подтверждаются ли эти
ожидания? Если нет, то каково наблюдаемое соотношение скоростей двух алгоритмов,
и как Вы объясните то, что оно отличается от 2?

#### Решение
Протестируем нашу улучшенную процедуру на числах: `10000000019`, `10000000033`,
  `10000000061`, `100000000003`, `100000000019`, `100000000057`, `1000000000039`,
`1000000000061`, `1000000000063`, `10000000000037`, `10000000000051`,
`10000000000099`.

```racket
(timed-prime-test 10000000019)
Number 10000000019 is simple. Time compute: 2.822998046875ms.

(timed-prime-test 10000000033)
Number 10000000033 is simple. Time compute: 2.40380859375ms.

(timed-prime-test 10000000061)
Number 10000000061 is simple. Time compute: 2.356201171875ms.

(timed-prime-test 100000000003)
Number 100000000003 is simple. Time compute: 8.324951171875ms.

(timed-prime-test 100000000019)
Number 100000000019 is simple. Time compute: 8.337890625ms.

(timed-prime-test 100000000057)
Number 100000000057 is simple. Time compute: 8.031005859375ms.

(timed-prime-test 1000000000039)
Number 1000000000039 is simple. Time compute: 28.925048828125ms.

(timed-prime-test 1000000000061)
Number 1000000000061 is simple. Time compute: 48.281005859375ms.

(timed-prime-test 1000000000063)
Number 1000000000063 is simple. Time compute: 30.753173828125ms.

(timed-prime-test 10000000000037)
Number 10000000000037 is simple. Time compute: 91.698974609375ms.

(timed-prime-test 10000000000051)
Number 10000000000051 is simple. Time compute: 91.365966796875ms.

(timed-prime-test 10000000000099)
Number 10000000000099 is simple. Time compute: 93.588134765625ms.
```

По результатам видно, что время проверки чисел на простоту уменьшилось
приблизительно в полтора-два раза. На малых числах это не так заметно.
Соответственно, можно сказать, что процедура работает гораздо быстрее.

[Код](../../src/chapter01/exercise_1_23.rkt) |
---|
