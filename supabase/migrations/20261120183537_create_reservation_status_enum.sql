CREATE TYPE public.reservation_status AS ENUM (
    'active',
    'confirmed',
    'released',
    'expired'
);