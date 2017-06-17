# [Глава 2. Построение абстракций с помощью данных](index.md#Глава-2-Построение-абстракций-с-помощью-данных)
## [2.2 Иерархические данные и свойство замыкания](index.md#22-Иерархические-данные-и-свойство-замыкания)

### Упражнение 2.39
Закончите следующие определения `reverse` ([упражнение 2.18](exercise_2_18.md#Упражнение-218)) в терминах процедур `fold-
right` и `fold-left` из [упражнения 2.38](exercise_2_38.md#Упражнение-238).

```scheme
(define (reverse sequence)
  (fold-right (lambda (x y) 〈??〉) nil sequence))

(define (reverse sequence)
  (fold-left (lambda (x y) 〈??〉) nil sequence))
```

#### Решение
[Код](../../src/chapter02/exercise_2_39.rkt) | [Тест](../../test/chapter02/test_exercise_2_39.rkt)
--- | ---
