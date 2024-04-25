advancement revoke @p only beach_house:drank_juice
tag @p add drank_juice
give @p[tag=drank_juice] stick{CustomModelData:4,type:empty_juice_glass}
give @p stick{CustomModelData:4,type:empty_juice_glass}
schedule function beach_house:clear_glass 1