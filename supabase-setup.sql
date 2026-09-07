-- Fresh database setup. Run this once in Supabase SQL Editor. This resets the scoreboard table completely.
drop table if exists public.cricket_score;
create table public.cricket_score (
 id integer primary key default 1 check (id=1),
 team1 text not null default 'Team 1',
 team2 text not null default 'Team 2',
 team1_runs integer not null default 0,
 team1_wickets integer not null default 0,
 team1_overs text not null default '0.0',
 team2_runs integer not null default 0,
 team2_wickets integer not null default 0,
 team2_overs text not null default '0.0',
 updated_at timestamptz not null default now()
);
insert into public.cricket_score (id) values (1);
alter table public.cricket_score enable row level security;
create policy "public read" on public.cricket_score for select using (true);
create policy "public update" on public.cricket_score for update using (true) with check (true);
