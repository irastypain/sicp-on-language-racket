# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.3. Формулирование абстракций с помощью процедур высших порядков](index.md#13-Формулирование-абстракций-с-помощью-процедур-высших-порядков)

### Упражнение 1.42
Пусть _f_ и _g_ — две одноаргументные функции. По определению, _композиция_
(composition) _f_ и _g_ есть функция _x_ ⟼ _f_ (_g_(_x_)). Определите процедуру
`compose`, которая реализует композицию. Например, если `inc` — процедура,
добавляющая к своему аргументу 1,

```racket
((compose square inc) 6)
49
```

#### Решение
[Код](../../src/chapter01/exercise_1_42.rkt) | [Тест](../../test/chapter01/test_exercise_1_42.rkt)
--- | ---
