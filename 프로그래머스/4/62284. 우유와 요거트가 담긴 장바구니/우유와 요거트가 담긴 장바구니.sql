SELECT cart_id
FROM cart_products
WHERE cart_id IN (SELECT cart_id FROM cart_products WHERE name IN ('Milk'))
      AND name IN ('Yogurt')
ORDER BY cart_id;