defmodule BugTest do
	use GenServer
	require Logger


	def start_link(name) do
		GenServer.start_link(__MODULE__, name: name)
	end

	def init(_) do
		{ :ok, %{},0}
	end

	def handle_info(:timeout, state) do
		Logger.warn("Here: " <> Kernel.inspect(go))
		{:noreply, state, 30}
	end

	def go do
		:os.find_executable('goon')
	end
end
