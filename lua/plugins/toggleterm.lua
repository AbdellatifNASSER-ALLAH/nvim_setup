return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup{
			size = 20,
			open_mapping = [[<C-\>]], -- default toggle
			direction = "float",      -- make it floating
			float_opts = {
				border = "curved",      -- curved | single | double | shadow
			},
		}
		local function run()
			vim.cmd("write")

			local file = vim.fn.expand("%")
			local file_no_ext = vim.fn.expand("%<")
			local ft = vim.bo.filetype

			local has_make = vim.fn.filereadable("Makefile") == 1
			or vim.fn.filereadable("makefile") == 1

			if has_make then
				vim.cmd("TermExec cmd='make'")
				return
			end

			if ft == "cpp" then
				vim.cmd("TermExec cmd='c++ " .. file .. " -std=c++98 -O2 -o " .. file_no_ext .. " && ./" .. file_no_ext .. "'")
			elseif ft == "c" then
				vim.cmd("TermExec cmd='gcc " .. file .. " -o " .. file_no_ext .. " && ./" .. file_no_ext .. "'")
			elseif ft == "python" then
				vim.cmd("TermExec cmd='python3 " .. file .. "'")
			else
				print("No run command for " .. ft)
			end
		end

		vim.keymap.set("n", "<leader>r", run, { desc = "Run file/project" })
	end
}
