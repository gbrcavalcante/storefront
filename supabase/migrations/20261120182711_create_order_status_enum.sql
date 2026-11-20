CREATE TYPE public.order_status AS ENUM (
    'pending',
    'paid',
    'cancelled',
    'expired'
);