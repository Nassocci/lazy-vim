-- splash screen

return {
  "goolord/alpha-nvim", --referency existing plugin that lazy vim is already using
  opts = function(_, opts) --the opts function allows us to take the existing options that where definded elsewhere and
    --tweak them for our purposes
    local logo = [[
	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

	                   [ @nassocci ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true }) --we are taking the section header value from the options
    --and setting to a banner that says NEOVIM with my twitter handle underneath
  end,
}
