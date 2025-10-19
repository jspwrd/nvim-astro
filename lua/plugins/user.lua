-- User plugins configuration

---@type LazySpec
return {

  -- Auto-session for saving/restoring nvim sessions
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup {
        auto_session_enabled = true,
        auto_save_enabled = true,
        auto_restore_enabled = true,
        auto_session_save_on_focus_change = true,
        -- Close toggleterm buffers before saving to prevent them from appearing in tabline
        close_filetypes_on_save = { "checkhealth", "toggleterm" },
        -- Don't save if only terminal is open
        bypass_save_filetypes = { "toggleterm" },
      }
    end,
  },

}