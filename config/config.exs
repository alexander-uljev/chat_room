import Config

config :chat_room,
  room_type: :db,
  registry: Rooms

config :chat_dbroom, Chat.DbRoom.Repo,
  database: "chat_dbroom",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :chat_dbroom,
  ecto_repos: [Chat.DbRoom.Repo]

import_config "#{Mix.env()}.exs"
