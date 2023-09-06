# Matsnet

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Database

Start the dev database using

```bash
  docker-compose up
```

Run psql to connect to the dev database

```bash
  docker run -it --rm postgres psql postgres://postgres:postgres@localhost/matsnet_dev
```

## Troubleshooting

### There are pending migrations

Remove build folder:

```bash
  rm -rf _build
```
