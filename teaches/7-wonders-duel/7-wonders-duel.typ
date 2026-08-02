#import "../../template/render.typ": *

#let data = toml("7-wonders-duel.toml")
#let config = config-from-inputs()

#show: sheet-for(data, config)

#render(data, config)
