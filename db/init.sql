CREATE TABLE IF NOT EXISTS links (
    id          SERIAL PRIMARY KEY,
    code        VARCHAR(32)  NOT NULL UNIQUE
                CHECK (code ~ '^[A-Za-z0-9_-]{3,32}$'),
    url         TEXT         NOT NULL
                CHECK (char_length(url) <= 2048),
    clicks      INTEGER      NOT NULL DEFAULT 0 CHECK (clicks >= 0),
    created_at  TIMESTAMPTZ  NOT NULL DEFAULT now(),
    updated_at  TIMESTAMPTZ  NOT NULL DEFAULT now()
);