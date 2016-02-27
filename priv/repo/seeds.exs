# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Headland.Repo.insert!(%Headland.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Headland.Repo.insert!(%Headland.Artist{name: "The xx", years_active: "2005-present", bio: "The xx are an English indie pop band formed in 2005 in Wandsworth, London."})
Headland.Repo.insert!(%Headland.Artist{name: "Jungle", years_active: "2013-present", bio: "Jungle was founded by Tom McFarland and Josh Lloyd-Watson."})
Headland.Repo.insert!(%Headland.Artist{name: "Maribou State", years_active: "2011-present", bio: "Maribou State are an English electronic music duo consisting of Chris Davids and Liam Ivory."})
Headland.Repo.insert!(%Headland.Artist{name: "Duke Dumont", years_active: "2006-present", bio: "Adam George Dyment (born 27 August 1982), better known by his stage name Duke Dumont, is an English DJ and deep house producer. He is best known for the singles \"Need U (100%)\", \"I Got U\" and \"Won't Look Back\" which both reached number 1 and 2 in the UK Singles Chart respectively. He owns the record label Blasé Boys Club and has also used it as an alias for production"})
