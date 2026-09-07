-- Run this once in Supabase SQL Editor.
alter table cricket_score add column if not exists team1_runs integer not null default 0;
alter table cricket_score add column if not exists team1_wickets integer not null default 0;
alter table cricket_score add column if not exists team1_overs text not null default '0.0';
alter table cricket_score add column if not exists team2_runs integer not null default 0;
alter table cricket_score add column if not exists team2_wickets integer not null default 0;
alter table cricket_score add column if not exists team2_overs text not null default '0.0';
alter table cricket_score add column if not exists ball_history jsonb not null default '[]'::jsonb;