CREATE TABLE public.stripe_events (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    stripe_event_id TEXT NOT NULL UNIQUE,
    event_type TEXT NOT NULL,
    payload JSONB NOT NULL,
    processed_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);