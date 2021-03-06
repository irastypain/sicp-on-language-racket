# [Глава 1. Построение абстракций с помощью процедур](index.md#Глава-1-Построение-абстракций-с-помощью-процедур)
## [1.2. Процедуры и порождаемые ими процессы](index.md#12-Процедуры-и-порождаемые-ими-процессы)

### Упражнение 1.13
Докажите, что _Fib(n)_ есть целое число, ближайшее к _φⁿ_ / √5,
где _φ_ = (1 + √5) / 2. Указание: пусть _ψ_ = (1 − √5) / 2. С помощью
определения чисел Фибоначчи (см. раздел 1.2.2) и индукции докажите,
что _Fib(n)_ = (_φⁿ_ − _ψⁿ_) / √5.

#### Решение
Чтобы доказать, что _Fib(n)_ есть целое число, ближайшее к _φⁿ_ / √5, сначала
докажем, что _Fib(n)_ = (_φⁿ_ − _ψⁿ_) / √5, а на основании этого докажем, что
(_φⁿ_ − _ψⁿ_) / √5 есть ближайшее целое число к _φⁿ_ / √5.

1. Докажем, что _Fib(n)_ = (_φⁿ_ − _ψⁿ_) / √5, с помощью математической индукции.

  Для начала необходимо проверить базу индукции при _n_ = 0 и _n_ = 1.
  - _Fib(0)_ = (_φ⁰_ − _ψ⁰_) / √5 = (1 − 1) / √5 = 0.
  - _Fib(1)_ = (_φ¹_ − _ψ¹_) / √5 = ((1 + √5) / 2 − (1 - √5) / 2) / √5 = √5 / √5 = 1.

  На следующем шаге предположим, что _Fib(k)_ = (_φᵏ_ − _ψᵏ_) / √5 для всех _k_
  от 0 до _n_, докажем это равенство при _k_ = _n_ + 1.

  _Fib(n + 1)_ = (_φⁿ⁺¹_ − _ψⁿ⁺¹_) / √5 = (_φⁿ⁻¹_ ∙ _**φ²**_ − _ψⁿ⁻¹_ ∙ _**ψ²**_) / √5 = (1)

  На это шаге мы можем вычислить _φ²_ и _ψ²_ отдельно:

  _φ²_ = ((1 + √5) / 2)² = (1 + 2√5 + 5) / 4 = (3 + √5) / 2 = 1 + (1 + √5) / 2 = 1 + _φ_.

  _ψ²_ = ((1 - √5) / 2)² = (1 - 2√5 + 5) / 4 = (3 - √5) / 2 = 1 + (1 - √5) / 2 = 1 + _ψ_.

  Теперь мы можем продолжить вычисления, заменив _φ²_ и _ψ²_ на 1 + _φ_ и 1 + _ψ_,
  соответственно.

  (1) = (_φⁿ⁻¹_ ∙ (1 + _φ_) − _ψⁿ⁻¹_ ∙ (1 + _ψ_)) / √5 = (_φⁿ⁻¹_ + _φⁿ_ −  _ψⁿ⁻¹_ - _ψⁿ_) / √5 =
  (_φⁿ_ - _ψⁿ_) / √5 + (_φⁿ⁻¹_ −  _ψⁿ⁻¹_) / √5 = _Fib(n)_ + _Fib(n - 1)_.

  Отсюда следует, что _Fib(n)_ = (_φⁿ_ − _ψⁿ_) / √5 для любого неотрицательного
  целого числа _n_.

2. Теперь докажем, что (_φⁿ_ − _ψⁿ_) / √5 есть ближайшее целое число к _φⁿ_ / √5.

  Так как (_φⁿ_ − _ψⁿ_) / √5 является целым числом (это мы показали в предыдущем
  доказательстве), то для доказательства того, что это выражение является
  ближайшим целым числом к _φⁿ_ / √5, потребуется доказать что \|_ψⁿ_\| должно
  быть меньше 1/2 (если оно будет больше 1/2, то нам придётся рассматривать не
  _φⁿ_ / √5, а _ψⁿ_ / √5).

  Итак, сравним _ψⁿ_ / √5 и 1/2.

  - √5 > 2.
  - Так как _ψ_ = (1 - √5) / 2 < 1, то \|_ψⁿ_\| < 1.

  На основании этого можно сказать, что (_φⁿ_ − _ψⁿ_) / √5, т. е. _Fib(n)_,
  является ближайшим целым числом к _φⁿ_ / √5.

Таким образом, мы доказали, что _Fib(n)_ = (_φⁿ_ − _ψⁿ_) / √5 и _Fib(n)_ есть
ближайшее целое число к _φⁿ_ / √5.
