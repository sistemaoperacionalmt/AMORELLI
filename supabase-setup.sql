-- Cole no SQL Editor do Supabase e clique em Run
create table if not exists loja (
  id text primary key,
  dados jsonb not null,
  atualizado_em bigint not null
);
alter table loja enable row level security;
create policy "somente usuarios logados" on loja
  for all to authenticated using (true) with check (true);
