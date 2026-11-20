ALTER TABLE
    public.orders ENABLE ROW LEVEL SECURITY;CREATE POLICY "Users can read their own orders" ON public.orders FOR
SELECT
    TO authenticated USING (auth.uid() = user_id);