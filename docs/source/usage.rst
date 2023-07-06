Usage
=====

Installation
------------

To use Lumache, first install it using pip:

.. code-block:: console

   (.venv) $ pip install lumache

Creating recipes
----------------

To retrieve a list of random ingredients,
you can use the ``lumache.get_random_ingredients()`` function:

.. autofunction:: lumache.lumache.get_random_ingredients(kind=None)


The ``kind`` parameter should be either ``"meat"``, ``"fish"``,
or ``"veggies"``. Otherwise, :py:func:`lumache.lumache.get_random_ingredients`
will raise an exception.

.. autoexception:: lumache.lumache.InvalidKindError

>>> from lumache.lumache import get_random_ingredients
>>> get_random_ingredients()
['shells', 'gorgonzola', 'parsley']
