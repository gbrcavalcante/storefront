ALTER TABLE
    public.order_items ENABLE ROW LEVEL SECURITY;CREATE POLICY "Users can read their own order items" ON public.order_items FOR
SELECT
    TO authenticated USING (
        EXISTS (
            SELECT
                1
            FROM
                public.orders
            WHERE
                orders.id = order_items.order_id
                AND orders.user_id = auth.uid()
        )
    );