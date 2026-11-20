CREATE INDEX idx_stock_reservations_active_expires_at ON public.stock_reservations (expires_at)
WHERE
    status = 'active';