-- Impede mais de uma reserva ativa por item do pedido.
CREATE UNIQUE INDEX idx_stock_reservations_unique_active_item ON public.stock_reservations (order_item_id)
WHERE
    status = 'active';