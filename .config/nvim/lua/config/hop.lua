local setup
setup = require("hop").setup
local hop_setup = {
  keys = 'aoeuhtnsmkgpc',
  term_seq_bias = 0.5
}
return setup(hop_setup)
