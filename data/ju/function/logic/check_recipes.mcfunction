# ================================
# 鐵劍 (Iron Sword) - 直條 3 格
# ================================
# 中間直行 (正向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:iron_ingot", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:iron_ingot", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:stick", slot_9:"minecraft:air"}} run function ju:execute/iron_sword
# 左邊直行 (正向)
execute if data storage ju:temp {board:{slot_1:"minecraft:iron_ingot", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:iron_ingot", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:stick", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/iron_sword
# 右邊直行 (正向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:iron_ingot", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:iron_ingot", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:stick"}} run function ju:execute/iron_sword

# 中間直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:stick", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:iron_ingot", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:iron_ingot", slot_9:"minecraft:air"}} run function ju:execute/iron_sword
# 左邊直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:stick", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:iron_ingot", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:iron_ingot", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/iron_sword
# 右邊直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:stick", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:iron_ingot", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:iron_ingot"}} run function ju:execute/iron_sword

# ================================
# 鑽石劍 (Diamond Sword) - 直條 3 格
# ================================
# 中間直行 (正向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:diamond", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:diamond", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:stick", slot_9:"minecraft:air"}} run function ju:execute/diamond_sword
# 左邊直行 (正向)
execute if data storage ju:temp {board:{slot_1:"minecraft:diamond", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:diamond", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:stick", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/diamond_sword
# 右邊直行 (正向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:diamond", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:diamond", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:stick"}} run function ju:execute/diamond_sword

# 中間直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:stick", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:diamond", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:diamond", slot_9:"minecraft:air"}} run function ju:execute/diamond_sword
# 左邊直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:stick", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:diamond", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:diamond", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/diamond_sword
# 右邊直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:stick", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:diamond", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:diamond"}} run function ju:execute/diamond_sword

# ================================
# 煤炭方塊 (Coal Block) - 填滿 9 格
# ================================
execute if data storage ju:temp {board:{slot_1:"minecraft:coal", slot_2:"minecraft:coal", slot_3:"minecraft:coal", slot_4:"minecraft:coal", slot_5:"minecraft:coal", slot_6:"minecraft:coal", slot_7:"minecraft:coal", slot_8:"minecraft:coal", slot_9:"minecraft:coal"}} run function ju:execute/coal_block

# ================================
# 烈焰彈 (Fire Charge) - 十字形
# ================================
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:fire_charge", slot_3:"minecraft:air", slot_4:"minecraft:fire_charge", slot_5:"minecraft:fire_charge", slot_6:"minecraft:fire_charge", slot_7:"minecraft:air", slot_8:"minecraft:fire_charge", slot_9:"minecraft:air"}} run function ju:execute/fire_charge

# ================================
# 金十字 (Gold Cross) - 十字形
# ================================
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:gold_ingot", slot_3:"minecraft:air", slot_4:"minecraft:gold_ingot", slot_5:"minecraft:gold_ingot", slot_6:"minecraft:gold_ingot", slot_7:"minecraft:air", slot_8:"minecraft:gold_ingot", slot_9:"minecraft:air"} } run function ju:execute/gold_cross

# ================================
# 盾牌 (Shield) - 滿版特殊形狀
# ================================
# 正向 (鐵錠在上)
execute if data storage ju:temp {board:{slot_1:"minecraft:oak_planks", slot_2:"minecraft:iron_ingot", slot_3:"minecraft:oak_planks", slot_4:"minecraft:oak_planks", slot_5:"minecraft:oak_planks", slot_6:"minecraft:oak_planks", slot_7:"minecraft:air", slot_8:"minecraft:oak_planks", slot_9:"minecraft:air"}} run function ju:execute/shield
# 反向 (鐵錠在下)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:oak_planks", slot_3:"minecraft:air", slot_4:"minecraft:oak_planks", slot_5:"minecraft:oak_planks", slot_6:"minecraft:oak_planks", slot_7:"minecraft:oak_planks", slot_8:"minecraft:iron_ingot", slot_9:"minecraft:oak_planks"}} run function ju:execute/shield

# ================================
# 火把 (Torch) - 直條 2 格
# ================================
# 中間直行 (上半部 / 下半部)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:coal_block", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:stick", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:coal_block", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:stick", slot_9:"minecraft:air"}} run function ju:execute/torch
# 左邊直行 (上半部 / 下半部)
execute if data storage ju:temp {board:{slot_1:"minecraft:coal_block", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:stick", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:coal_block", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:stick", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
# 右邊直行 (上半部 / 下半部)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:coal_block", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:stick", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:coal_block", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:stick"}} run function ju:execute/torch

# 中間直行 (反向：木棍在上，煤炭方塊在下)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:stick", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:coal_block", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:stick", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:coal_block", slot_9:"minecraft:air"}} run function ju:execute/torch
# 左邊直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:stick", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:coal_block", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:stick", slot_5:"minecraft:air", slot_6:"minecraft:air", slot_7:"minecraft:coal_block", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
# 右邊直行 (反向)
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:stick", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:coal_block", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:air"}} run function ju:execute/torch
execute if data storage ju:temp {board:{slot_1:"minecraft:air", slot_2:"minecraft:air", slot_3:"minecraft:air", slot_4:"minecraft:air", slot_5:"minecraft:air", slot_6:"minecraft:stick", slot_7:"minecraft:air", slot_8:"minecraft:air", slot_9:"minecraft:coal_block"}} run function ju:execute/torch

# 移除暫存數據，避免空間殘留
data remove storage ju:temp board