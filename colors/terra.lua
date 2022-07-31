for k in pairs(package.loaded) do
    if k:match(".*terra.*") then
        package.loaded[k] = nil
    end
end

require("terra").setup()
require("terra").colorscheme()
