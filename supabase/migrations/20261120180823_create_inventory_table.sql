CREATE TABLE public.inventory (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    product_id UUID NOT NULL UNIQUE REFERENCES public.products(id) ON DELETE RESTRICT,
    on_hand INTEGER NOT NULL DEFAULT 0,
    reserved INTEGER NOT NULL DEFAULT 0,
    CONSTRAINT inventory_on_hand_non_negative CHECK (on_hand >= 0),
    CONSTRAINT inventory_reserved_valid CHECK (
        reserved >= 0
        AND reserved <= on_hand
    ),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);