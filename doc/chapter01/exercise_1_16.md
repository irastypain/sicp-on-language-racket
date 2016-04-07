# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.2. Процедуры и порождаемые ими процессы](index.md#12-Процедуры-и-порождаемые-ими-процессы)

### Упражнение 1.16
Напишите процедуру, которая развивается в виде итеративного процесса и реализует
возведение в степень за логарифмическое число шагов, как `fast-expt`. (Указание:
используя наблюдение, что _(bⁿ²)²_ = _(b²)ⁿ²_, храните, помимо значения степени
_n_ и основания _b_, дополнительную переменную состояния _a_, и определите
переход между состояниями так, чтобы произведение _abn_ от шага к шагу не
менялось. Вначале значение _a_ берется равным 1, а ответ получается как значение
_a_ в момент окончания процесса. В общем случае метод определения инварианта
(invariant quantity), который не изменяется при переходе между шагами, является
c мощным способом размышления о построении итеративных алгоритмов.)

#### Решение

[Код](../../src/chapter01/exercise_1_16.rkt) | [Тест](../../test/chapter01/test_exercise_1_16.rkt)
--- | ---