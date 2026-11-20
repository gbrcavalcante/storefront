-- Garante que o subtotal corresponda ao preço unitário multiplicado pela quantidade.
ALTER TABLE
    public.order_items
ADD
    CONSTRAINT order_items_subtotal_consistent CHECK (subtotal_cents = unit_price_cents * quantity);