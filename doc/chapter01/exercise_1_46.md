# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.3. Формулирование абстракций с помощью процедур высших порядков](index.md#13-Формулирование-абстракций-с-помощью-процедур-высших-порядков)

### Упражнение 1.46
Некоторые из вычислительных методов, описанных в этой главе, являются примерами
чрезвычайно общей вычислительной стратегии, называемой _пошаговое улучшение_
(iterative improvement). Пошаговое улучшение состоит в следующем: чтобы что-то
вычислить, нужно взять какое-то начальное значение, проверить, достаточно ли оно
хорошо, чтобы служить ответом, и если нет, то улучшить это значение и продолжить
процесс с новым значением. Напишите процедуру `iterative-improve`, которая
принимает в качестве аргументов две процедуры: проверку, достаточно ли хорошо
значение, и метод улучшения значения. `Iterative-improve` должна возвращать
процедуру, которая принимает начальное значение в качестве аргумента и улучшает
его, пока оно не станет достаточно хорошим. Перепишите процедуру `sqrt` из
раздела 1.1.7 и процедуру `fixed-point` из раздела 1.3.3 в терминах
`iterative-improve`.

#### Решение
[Код](../../src/chapter01/exercise_1_46.rkt) | [Тест](../../test/chapter01/test_exercise_1_46.rkt)
--- | ---