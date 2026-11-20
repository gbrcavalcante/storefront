-- Otimiza consultas de produtos por categoria.
CREATE INDEX idx_products_category_id ON public.products (category_id);