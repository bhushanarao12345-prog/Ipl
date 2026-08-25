-- Run this once in Supabase SQL Editor.
create table if not exists public.match_score (
  id integer primary key,
  team1 text not null default 'Team 1',
  team2 text not null default 'Team 2',
  runs integer not null default 0,
  wickets integer not null default 0,
  overs text not null default '0.0'
);

alter table public.match_score enable row level security;

drop policy if exists "Public can read score" on public.match_score;
drop policy if exists "Public can insert score" on public.match_score;
drop policy if exists "Public can update score" on public.match_score;

create policy "Public can read score"
on public.match_score for select to anon using (true);

create policy "Public can insert score"
on public.match_score for insert to anon with check (true);

create policy "Public can update score"
on public.match_score for update to anon using (true) with check (true);

insert into public.match_score (id)
values (1)
on conflict (id) do nothing;