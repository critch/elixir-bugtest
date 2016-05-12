defmodule BugTest.Supervisor do
	use Supervisor

	def start(:normal,_) do
		start_link
	end

	def start_link do
		Supervisor.start_link(__MODULE__, :ok)
	end

	def init(:ok) do
		children = [
			worker(BugTest, [BugTest])
		]
		supervise(children, strategy: :one_for_one)
	end
	

end
