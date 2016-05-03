# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.3. Формулирование абстракций с помощью процедур высших порядков](index.md#13-Формулирование-абстракций-с-помощью-процедур-высших-порядков)

### Упражнение 1.41
Определите процедуру `double`, которая принимает как аргумент процедуру с одним
аргументом и возвращает процедуру, которая применяет исходную процедуру дважды.
Например, если процедура `inc` добавляет к своему аргументу 1, то `(double inc)`
должна быть процедурой, которая добавляет 2. Скажите, какое значение возвращает

```racket
(((double (double double)) inc) 5)
```

#### Решение
Указанное выражение возвращает значение 21.

[Код](../../src/chapter01/exercise_1_41.rkt) | [Тест](../../test/chapter01/test_exercise_1_41.rkt)
--- | ---