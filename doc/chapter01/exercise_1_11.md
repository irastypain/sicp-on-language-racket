# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.2. Процедуры и порождаемые ими процессы](index.md#12-Процедуры-и-порождаемые-ими-процессы)

### Упражнение 1.11
Функция _f_ определяется правилом: _f(n) = n_, если _n < 3_, и
_f(n) = f(n − 1) + f(n − 2) + f(n − 3)_, если _n ≥ 3_. Напишите процедуру,
вычисляющую _f_ с помощью рекурсивного процесса. Напишите процедуру, вычисляющую
_f_ с помощью итеративного процесса.

#### Решение
Процесс | Код | Тест
--- | --- | ---
Рекурсивный | [Просмотр](../../src/chapter01/exercise_1_11r.rkt) | [Просмотр](../../test/chapter01/test_exercise_1_11r.rkt)
Итеративный | [Просмотр](../../src/chapter01/exercise_1_11i.rkt) | [Просмотр](../../test/chapter01/test_exercise_1_11i.rkt)