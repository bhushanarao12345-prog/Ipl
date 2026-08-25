alter table cricket_score add column if not exists ball_history jsonb not null default '[]'::jsonb;
