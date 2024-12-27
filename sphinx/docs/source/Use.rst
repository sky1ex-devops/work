Создание рецептов
----------------

..  Чтобы получить список случайных ингредиентов,
.. вы можете использовать функцию ``lumache.get_random_ingredients()``:

 or ``"veggies"``. Otherwise, :py:func:`lumache.get_random_ingredients`
will raise an exception.

.. autoexception:: lumache.InvalidKindError

.. py:function:: lumache.get_random_ingredients(kind=None)

 Возвращает список случайных ингредиентов в виде строк.

 :param kind: Необязательный параметр «kids» ингредиентов.
 :type kind: список [str] или None
 :return: список ингредиентов.
 :rtype: список [str]

