return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_default_notes_file = '~/orgfiles/refile.org',
        org_agenda_files = '~/orgfiles/**/*',
        org_capture_templates = {
          n = {
            description = "Note",
            template = "* %?",
            target = "~/orgfiles/notes.org",
          }
        },
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  }
}
