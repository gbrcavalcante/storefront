-- Ativa a segurança em nível de linha
ALTER TABLE
    public.categories ENABLE ROW LEVEL SECURITY;-- Permite consultar categorias ativas
    CREATE POLICY "Anyone can read active categories" ON public.categories FOR
SELECT
    TO anon,
    authenticated USING (is_active = TRUE);