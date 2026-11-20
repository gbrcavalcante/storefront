-- Ativa RLS na tabela products
ALTER TABLE
    public.products ENABLE ROW LEVEL SECURITY;-- Permite consultar produtos ativos
    CREATE POLICY "Anyone can read active products" ON public.products FOR
SELECT
    TO anon,
    authenticated USING (is_active = TRUE);