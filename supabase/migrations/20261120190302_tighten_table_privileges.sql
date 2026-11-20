-- Remove todos os privilégios diretos dos perfis de cliente.
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public
FROM
    anon,
    authenticated;-- Permite a leitura pública de categorias e produtos.
    GRANT
SELECT
    ON TABLE public.categories,
    public.products TO anon,
    authenticated;-- Permite que usuários autenticados leiam seus próprios pedidos e itens.
    GRANT
SELECT
    ON TABLE public.orders,
    public.order_items TO authenticated;