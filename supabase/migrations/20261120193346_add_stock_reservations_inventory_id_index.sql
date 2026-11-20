-- Otimiza consultas de reservas por registro de estoque.
CREATE INDEX idx_stock_reservations_inventory_id ON public.stock_reservations (inventory_id);