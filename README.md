# sql-tree-structure

Задача
-------
- Товары на сайт интернет-магазина сгруппированы по категориям.
- Категории организованы в древовидную структуру с уровнем вложенности до 4 включительно.
- Значимые атрибуты категории: название.
- Значимые атрибуты товара: название и цена.
- Один продукт может относиться к нескольким категориям.

1. Разработать структуру базы данных MySQL для хранения дерева категорий, списка продуктов и информации о принадлежности продуктов к категориям.
2. Заполнить таблицы тестовыми данными.
3. Написать SQL-запросы для получения следующих данных:
a. Для заданного списка товаров получить названия всех категорий, в которых представлены товары;
b. Для заданной категории получить список предложений всех товаров из этой категории и ее дочерних категорий;
c. Для заданного списка категорий получить количество предложений товаров в каждой категории;
d. Для заданного списка категорий получить общее количество уникальных предложений товара;
e. Для заданной категории получить ее полный путь в дереве (breadcrumb, «хлебные крошки»).

Решение
-------

Выбрана схема "Вложенное множество" (Nested Set), которая хорошо подходит по скорости и оптимальности запросов в контексте данной задачи.
Предоставлено изображение дерева категорий для удобства.
Оптимизация запросов производится за счет выполенния всех операций в один запрос без использвоания подзапросов.


a. Для заданного списка товаров получить названия всех категорий, в которых представлены товары;
```
SELECT DISTINCT name FROM category AS c
LEFT JOIN product_to_category AS ptc on (ptc.category_id = c.id)
WHERE ptc.product_id IN (2,9,21,32,40,51)
```

b. Для заданной категории получить список предложений всех товаров из этой категории и ее дочерних категорий;
```
SELECT DISTINCT p.* FROM category AS c
LEFT JOIN product_to_category AS ptc ON (ptc.category_id = c.id)
LEFT JOIN product AS p ON (ptc.product_id = p.id)
WHERE c.lft BETWEEN 2 AND 15
```

c. Для заданного списка категорий получить количество предложений товаров в каждой категории;
```
SELECT COUNT(product_id) AS products_in_category, category_id FROM product_to_category
WHERE category_id IN (2, 6, 10, 14, 19, 26) GROUP BY category_id
```

d. Для заданного списка категорий получить общее количество уникальных предложений товара;
```
SELECT COUNT(DISTINCT product_id) FROM `product_to_category` WHERE `category_id` in (1,6,17,16)
```

e. Для заданной категории получить ее полный путь в дереве (breadcrumb, «хлебные крошки»).
```
SELECT * FROM category WHERE lft < 5 AND rgt > 6 ORDER BY lft ASC
```
