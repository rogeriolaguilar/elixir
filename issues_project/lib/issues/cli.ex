defmodule Issues.CLI do
    @default_count 4

    def run(argv), do: parse_args(argv)

    def parse_args(argv) do

        # OptionParser returns: {["parsed values"], ["remaining arguments"],["invalid options"]}
        parse = OptionParser.parse(argv, switches: [ help: :boolean ], aliases: [ h: :help ])

        case parse do
            { [help: true], _, _ } -> :help
            { _, [ user, project, num_issues], _ } -> { user, project, String.to_integer num_issues }
            { _, [ user, project ], _ } -> { user, project, @default_count }
            _ -> :help
        end
    end

end
