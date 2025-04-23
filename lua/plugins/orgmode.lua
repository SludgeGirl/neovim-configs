return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_default_notes_file = '~/orgfiles/notes.org',
        org_agenda_files = '~/orgfiles/**/*',
        org_capture_templates = {
          t = {
            description = 'Task',
            template = '* TODO %?\n  %u',
            target = "~/orgfiles/tasks.org",
          },
          n = {
            description = "Note",
            template = "* %?",
          },
        },
        mappings = {
          org = {
            org_toggle_checkbox = '<C-t>',
          }
        }
      })
    end,
    priority = 1000,
  }
}
