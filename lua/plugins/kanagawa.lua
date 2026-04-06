return {
  "thesimonho/kanagawa-paper.nvim",
  config = function()
    require("kanagawa-paper").setup({
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      }
    })

    vim.cmd("colorscheme kanagawa-paper")
  end
}
