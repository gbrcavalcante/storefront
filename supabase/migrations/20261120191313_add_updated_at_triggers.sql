-- Atualiza automaticamente o campo updated_at.
CREATE
OR REPLACE FUNCTION public.set_updated_at() RETURNS TRIGGER LANGUAGE plpgsql AS $function$ BEGIN NEW.updated_at = NOW();RETURN NEW;END;$function$;-- Trigger para produtos.
CREATE TRIGGER set_products_updated_at BEFORE
UPDATE
    ON public.products FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();-- Trigger para estoque.
    CREATE TRIGGER set_inventory_updated_at BEFORE
UPDATE
    ON public.inventory FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();-- Trigger para pedidos.
    CREATE TRIGGER set_orders_updated_at BEFORE
UPDATE
    ON public.orders FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();-- Trigger para reservas de estoque.
    CREATE TRIGGER set_stock_reservations_updated_at BEFORE
UPDATE
    ON public.stock_reservations FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();