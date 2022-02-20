import Config

config :nostrum,
  token: "",
  ffmpeg: "ffmpeg",
  youtubedl: "youtube-dl",
  embedded: false

config :logger, :console, metadata: [:shard, :guild, :channel]

config :porcelain, :driver, Porcelain.Driver.Basic

if File.exists?("config/secret.exs"), do: import_config("secret.exs")
